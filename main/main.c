#include <stdlib.h>
#include <stdio.h>
#include <freertos/FreeRTOS.h>
#include <driver/timer.h>
#include <esp_event.h>
#include <esp_event_loop.h>
#include <esp_log.h>
#include <esp_system.h>
#include <freertos/task.h>
#include <sdkconfig.h>

#include "matrix.c"
#include "siebensegment.c"
#include "music.c"

//CPU 1 for Matrix Output; CPU 0 for everything else

char pin_output[14] = {PIN_MATRIX_BIG_COLOR, SHIFT_MATRIX_BIG_COLOR, PIN_MATRIX_BIG_GND, SHIFT_MATRIX_BIG_GND,
	LATCH_MATRIX_BIG, PIN_MATRIX_SMALL, SHIFT_MATRIX_SMALL, LATCH_MATRIX_SMALL, PIN_SIEBENSEG,
	SHIFT_SIEBENSEG, LATCH_SIEBENSEG, NOT_ENABLE, PIN_MUSIC_L, PIN_MUSIC_R};
char pin_input[6] = {TOUCH_RESET, TOUCH_START, TOUCH_LEFT, TOUCH_UP, TOUCH_DOWN, TOUCH_RIGHT};


unsigned char touched[6] = {0,0,0,0,0,0};
unsigned char x_Coord_active = 0;
char time_start = 0;

void timer()
{
	while(1)
	{
		vTaskDelay(100/portTICK_RATE_MS);
		set_score(get_score()+1);
	}
	vTaskDelete( NULL );
}

void gpio_setup(void)
{
	//because 35 just can be input
	gpio_set_direction(35, GPIO_MODE_INPUT);	//former NOT_RESET_ALL
	gpio_pullup_en(35);

	for(int i=0;i<14;i++)
	{
		gpio_pad_select_gpio(pin_output[i]);
		gpio_set_direction(pin_output[i], GPIO_MODE_OUTPUT);
		gpio_set_level(pin_output[i],0);
	}
	for (int i=0;i<6;i++)
	{
		gpio_pad_select_gpio(pin_input[i]);
		gpio_set_direction(pin_input[i], GPIO_MODE_INPUT);
		gpio_pulldown_en(pin_input[i]);
	}
}

int max(int a, int b)
{
	if(a>b) return a;
	return b;
}

int min(int a, int b)
{
	if(a<b) return a;
	return b;
}

void settle_Part(char active_color, int y_Coord, int x_Coord)
{
	y_Coord++;
	while(memory[y_Coord][x_Coord] == 0)
	{
		memory[y_Coord-1][x_Coord] = 0;
		if(active_color == 1) memory[y_Coord][x_Coord] = setRed(memory[y_Coord][x_Coord], 1);
		if(active_color == 2) memory[y_Coord][x_Coord] = setGreen(memory[y_Coord][x_Coord], 1);
		y_Coord++;
		if(gpio_get_level(TOUCH_RESET)) esp_restart();

		vTaskDelay(100/portTICK_RATE_MS);
	}
}

void settle_all_Parts()
{
	for(int i=0;i<9;i++)
	{
		for(int y=18;y>9;y--) for(int x=0;x<10;x++)
		{
			if(memory[y][x] && !memory[y+1][x])
			{
				memory[y+1][x] = memory[y][x];
				memory[y][x] = 0;
			}
		}
		vTaskDelay(100/portTICK_RATE_MS);
	}
}

void turn_table()
{
	char temp1[10][10] = {	{0,0,0,0,0,0,0,0,0,0},
							{0,0,0,0,0,0,0,0,0,0},
							{0,0,0,0,0,0,0,0,0,0},
							{0,0,0,0,0,0,0,0,0,0},
							{0,0,0,0,0,0,0,0,0,0},
							{0,0,0,0,0,0,0,0,0,0},
							{0,0,0,0,0,0,0,0,0,0},
							{0,0,0,0,0,0,0,0,0,0},
							{0,0,0,0,0,0,0,0,0,0},
							{0,0,0,0,0,0,0,0,0,0}};
	char temp2[10][10] = {	{0,0,0,0,0,0,0,0,0,0},
							{0,0,0,0,0,0,0,0,0,0},
							{0,0,0,0,0,0,0,0,0,0},
							{0,0,0,0,0,0,0,0,0,0},
							{0,0,0,0,0,0,0,0,0,0},
							{0,0,0,0,0,0,0,0,0,0},
							{0,0,0,0,0,0,0,0,0,0},
							{0,0,0,0,0,0,0,0,0,0},
							{0,0,0,0,0,0,0,0,0,0},
							{0,0,0,0,0,0,0,0,0,0}};
	for(int i=0;i<10;i++) for(int j=0;j<10;j++) temp1[i][j] = memory[i+10][j];		//save memory to temp1
	for(int y=0;y<10;y++) for(int x=0;x<10;x++) temp2[y][x] = temp1[x][9-y];		//turn temp1 to temp2
	for(int i=0;i<10;i++) for(int j=0;j<10;j++) memory[i+10][j] = temp2[i][j];		//save temp2 to memory

	//for(int i=18;i>=10;i--) for(int j=0;j<10;j++) if(memory[i][j]) settle_Part(getRed(memory[i][j])+2*getGreen(memory[i][j]), i, j);
	settle_all_Parts();
}

char check_win_horizontal()
{
	for(int i=19;i>9;i--) for(int j=0;j<=6;j++)	//NOT for(int i=19;i>9;i++) for(int j=0;j<=6;j++) !!!!!!!!!!
	{
		char test_color = memory[i][j];
		if(test_color && memory[i][j+1] == test_color && memory[i][j+2] == test_color && memory[i][j+3] == test_color) return test_color;
	}
	return 0;
}

char check_win_vertical()
{
	for(int i=0;i<10;i++)for(int j=10;j<17;j++)
	{
		char test_color = memory[j][i];
		if(test_color && memory[j+1][i] == test_color && memory[j+2][i] == test_color && memory[j+3][i] == test_color) return test_color;
	}
	return 0;
}

char check_win_diagonal()
{
	for(int i=0;i<13;i++)
	{
		for(int j=0;j<-abs(i-6)+7;j++)
		{
			char test_color = memory[max(0,6-i)+10+j][max(0,i-6)+j];
			if(test_color && memory[max(0,6-i)+11+j][max(0,i-5)+j] == test_color && memory[max(0,6-i)+12+j][max(0,i-4)+j] == test_color && memory[max(0,6-i)+13+j][max(0,i-3)+j] == test_color) return test_color;
			test_color = memory[max(0,6-i)+10+j][9-max(0,i-6)-j];
			if(test_color && memory[max(0,6-i)+11+j][8-max(0,i-6)-j] == test_color && memory[max(0,6-i)+12+j][7-max(0,i-6)-j] == test_color && memory[max(0,6-i)+13+j][6-max(0,i-6)-j] == test_color) return test_color;
		}
	}

	return 0;
}

char check_win()
{
	char horizontal = check_win_horizontal();
	printf("horizontal: %d\n", horizontal);
	if(horizontal) return horizontal;
	char vertical = check_win_vertical();
	printf("vertical: %d\n", vertical);
	if(vertical) return vertical;
	char diagonal = check_win_diagonal();
	printf("diagonal: %d\n", diagonal);
	if(diagonal) return diagonal;
	return 0;
}

void gameplay()
{
	char active_color = 1;
	while(1)
	{
		for(int i=0;i<4;i++) for(int j=0;j<4;j++)
		{
			small_matrix[j][i] = 0;
			if(active_color == 1) small_matrix[j][i] = setRed(small_matrix[j][i],1);
			if(active_color == 2) small_matrix[j][i] = setGreen(small_matrix[j][i],1);
		}
		for(int i=0;i<10;i++) memory[9][i] = 0;
		x_Coord_active = 0;
		if(active_color == 1) memory[9][x_Coord_active] = setRed(memory[9][x_Coord_active], 1);
		if(active_color == 2) memory[9][x_Coord_active] = setGreen(memory[9][x_Coord_active], 1);
		char exit_loop = 0;	//0=nothing; 1=down; 2=up
		while(!exit_loop)
		{
			for(int i=0;i<6;i++)
			{
				char test = gpio_get_level(pin_input[i]);
				if(touched[i] != test)
				{
					touched[i] = test;
					if(i==0 && touched[i] == 1) esp_restart();
					if(i==4 && touched[i] == 1 && memory[10][x_Coord_active]==0) exit_loop = 1;	//down
					if(i==3 && touched[i] == 1)	exit_loop = 2; //up
					if(i==2 && touched[i] == 1 && x_Coord_active > 0)	//left
					{
						if(!time_start)
						{
							xTaskCreatePinnedToCore(&timer, "timer", 2048, NULL, 5, NULL, 0);
							time_start = 1;
						}
						memory[9][x_Coord_active] = setRed(memory[9][x_Coord_active], 0);
						memory[9][x_Coord_active] = setGreen(memory[9][x_Coord_active], 0);
						x_Coord_active--;
						if(active_color == 1) memory[9][x_Coord_active] = setRed(memory[9][x_Coord_active], 1);
						if(active_color == 2) memory[9][x_Coord_active] = setGreen(memory[9][x_Coord_active], 1);
					}
					if(i==5 && touched[i] == 1 && x_Coord_active < 9)	//right
					{
						if(!time_start)
						{
							xTaskCreatePinnedToCore(&timer, "timer", 2048, NULL, 5, NULL, 0);
							time_start = 1;
						}
						memory[9][x_Coord_active] = setRed(memory[9][x_Coord_active], 0);
						memory[9][x_Coord_active] = setGreen(memory[9][x_Coord_active], 0);
						x_Coord_active++;
						if(active_color == 1) memory[9][x_Coord_active] = setRed(memory[9][x_Coord_active], 1);
						if(active_color == 2) memory[9][x_Coord_active] = setGreen(memory[9][x_Coord_active], 1);
					}
				}
			}
		}
		if(exit_loop == 1) settle_Part(active_color, 9, x_Coord_active);
		else if(exit_loop == 2) turn_table();
		set_rows(get_rows()+1);		//increase number of moves
		char win = check_win();
		if(win)
		{
			while(!gpio_get_level(TOUCH_RESET) && !gpio_get_level(TOUCH_START))
			{
				for(int c=0;c<2;c++)
				{
					for(int i=0;i<4;i++) for(int j=0;j<4;j++) small_matrix[i][j] = win*c;
					for(int i=0;i<50;i++)
					{
						vTaskDelay(10/portTICK_RATE_MS);
						if(gpio_get_level(TOUCH_RESET) || gpio_get_level(TOUCH_START)) break;
					}
					if(gpio_get_level(TOUCH_RESET) || gpio_get_level(TOUCH_START)) break;
				}
			}
			if(gpio_get_level(TOUCH_RESET)) esp_restart();
			for(int y=0;y<20;y++) for(int x=0;x<10;x++) memory[y][x] = 0;
			set_rows(0);	//clean number of moves
			set_score(0);	//clean playtime
			set_level(get_level()+1);		//count number of games up
		}
		if(active_color == 1) active_color = 2;
		else active_color = 1;
	}
	vTaskDelete( NULL );
}

void app_main(void)
{
	gpio_setup();
	update_anzeige();

	xTaskCreatePinnedToCore(&output_matrix, "output_matrix", 2048, NULL, 5, NULL, 1);
	xTaskCreatePinnedToCore(&music_play, "music_play", 2048, NULL, 5, NULL, 0);
	xTaskCreatePinnedToCore(&gameplay, "gameplay", 2048, NULL, 5, NULL, 0);

	while(1) vTaskDelay(1000/portTICK_RATE_MS);
}
