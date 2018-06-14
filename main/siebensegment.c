#include <math.h>
#include <driver/gpio.h>
#include <freertos/FreeRTOS.h>
#include <freertos/task.h>
#include "static.c"

/*		 0
 * 		5 1
 * 		 6
 * 		4 2
 * 		 3
 * 		   7
 */
char siebensegmentcode[10] = {0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};

char siebenseg_level_coded[2] = {0,0};
char siebenseg_level_decoded = 0;

char siebenseg_row_coded[4] = {0,0,0,0};
int siebenseg_row_decoded = 0;

char siebenseg_score_coded[6] = {0,0,0,0,0,0};
long siebenseg_score_decoded = 0;


char code_single(char code)
{
	return siebensegmentcode[(int) code];
}

void code_multi(char number_index)
{
	for(int i=0;i<number_index;i++)
	{
		switch(number_index)
		{
		case 2:
			siebenseg_level_coded[i] = code_single((siebenseg_level_decoded-siebenseg_level_decoded%(int)pow(10,i))/(int)pow(10,i)%10);
			break;
		case 4:
			siebenseg_row_coded[i] = code_single((siebenseg_row_decoded-siebenseg_row_decoded%(int)pow(10,i))/(int)pow(10,i)%10);
			break;
		case 6:
			siebenseg_score_coded[i] = code_single((siebenseg_score_decoded-siebenseg_score_decoded%(int)pow(10,i))/(int)pow(10,i)%10);
			break;
		}
	}
}

void update_anzeige()
{
	for(int i=2;i<=6;i+=2) code_multi(i);

	for(int j=1;j>=0;j--) for(int i=7;i>=0;i--)
	{
		gpio_set_level(PIN_SIEBENSEG,((int)siebenseg_level_coded[j]&((int)pow(2,i)))/((int)pow(2,i)));
		gpio_set_level(SHIFT_SIEBENSEG, 1);
		gpio_set_level(SHIFT_SIEBENSEG, 0);
	}
	for(int j=3;j>=0;j--) for(int i=7;i>=0;i--)
	{
		gpio_set_level(PIN_SIEBENSEG,((int)siebenseg_row_coded[j]&((int)pow(2,i)))/((int)pow(2,i)));
		gpio_set_level(SHIFT_SIEBENSEG, 1);
		gpio_set_level(SHIFT_SIEBENSEG, 0);
	}
	for(int j=5;j>=0;j--) for(int i=7;i>=0;i--)
	{
		gpio_set_level(PIN_SIEBENSEG,((int)siebenseg_score_coded[j]&((int)pow(2,i)))/((int)pow(2,i)));
		gpio_set_level(SHIFT_SIEBENSEG, 1);
		gpio_set_level(SHIFT_SIEBENSEG, 0);
	}
	gpio_set_level(LATCH_SIEBENSEG, 1);
	gpio_set_level(LATCH_SIEBENSEG, 0);
}

char get_level()
{
	return siebenseg_level_decoded;
}

void set_level(char level)
{
	siebenseg_level_decoded = level;
	update_anzeige();
}

int get_rows()
{
	return siebenseg_row_decoded;
}

void set_rows(int rows)
{
	siebenseg_row_decoded = rows;
	update_anzeige();
}

long get_score()
{
	return siebenseg_score_decoded;
}

void set_score(long score)
{
	siebenseg_score_decoded = score;
	update_anzeige();
}
