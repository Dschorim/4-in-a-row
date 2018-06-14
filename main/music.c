#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include <driver/gpio.h>

#include "driver/ledc.h"
#include "pitches.c"
#include "static.c"

#define STANDARD_BPM 120
unsigned int BPM = STANDARD_BPM;


unsigned int melody[94][3] = {	{NOTE_DS4, 4, 1},
								{NOTE_DS4, 8, 0},
								{NOTE_DS4, 16, 0},
								{PAUSE, 16, 0},
								{NOTE_E4, 4, 0},
								{NOTE_B3, 8, 0},
								{NOTE_GS3, 16, 0},
								{NOTE_DS4, 16, 0},
								{NOTE_DS4, 4, 1},
								{NOTE_DS4, 8, 0},
								{NOTE_DS4, 16, 0},
								{PAUSE, 16, 0},
								{NOTE_E4, 4, 0},
								{NOTE_B3, 8, 0},
								{NOTE_GS3, 16, 0},
								{NOTE_DS4, 16, 0},
								{NOTE_DS4, 4, 1},
								{NOTE_DS4, 8, 0},
								{NOTE_DS4, 16, 0},
								{PAUSE, 16, 0},
								{NOTE_E4, 4, 0},
								{NOTE_B3, 8, 0},
								{NOTE_GS3, 16, 0},
								{NOTE_DS4, 16, 0},
								{NOTE_DS4, 4, 1},
								{NOTE_DS4, 8, 0},
								{NOTE_DS4, 16, 0},
								{PAUSE, 16, 0},
								{NOTE_E4, 8, 0},
								{NOTE_DS4, 8, 0},
								{NOTE_B3, 8, 0},
								{NOTE_GS3, 8, 0},
								{NOTE_FS4, 4, 1},
								{NOTE_FS4, 8, 0},
								{NOTE_FS4, 8, 0},
								{NOTE_GS4, 4, 0},
								{NOTE_DS4, 8, 0},
								{NOTE_B3, 16, 0},
								{NOTE_FS4, 16, 0},
								{NOTE_FS4, 4, 1},
								{NOTE_FS4, 8, 0},
								{NOTE_FS4, 8, 0},
								{NOTE_GS4, 4, 0},
								{NOTE_DS4, 8, 0},
								{NOTE_GS4, 4, 0},
								{NOTE_B3, 16, 0},
								{NOTE_FS4, 16, 0},
								{NOTE_FS4, 4, 1},
								{NOTE_FS4, 8, 0},
								{NOTE_FS4, 8, 0},
								{NOTE_GS4, 4, 0},
								{NOTE_DS4, 8, 0},
								{NOTE_B3, 16, 0},
								{NOTE_FS4, 16, 0},
								{NOTE_FS4, 4, 1},
								{NOTE_FS4, 8, 0},
								{NOTE_FS4, 8, 0},
								{NOTE_DS4, 8, 0},
								{NOTE_D4, 8, 0},
								{NOTE_DS4, 8, 0},
								{NOTE_B3, 16, 0},
								{NOTE_GS3, 16, 0},
								{NOTE_DS4, 4, 1},
								{NOTE_DS4, 8, 0},
								{NOTE_DS4, 16, 0},
								{PAUSE, 16, 0},
								{NOTE_E4, 4, 0},
								{NOTE_B3, 8, 0},
								{NOTE_GS3, 16, 0},
								{NOTE_DS4, 16, 0},
								{NOTE_DS4, 4, 1},
								{NOTE_DS4, 8, 0},
								{NOTE_DS4, 16, 0},
								{PAUSE, 16, 0},
								{NOTE_E4, 4, 0},
								{NOTE_B3, 8, 0},
								{NOTE_GS3, 16, 0},
								{NOTE_DS4, 16, 0},
								{NOTE_DS4, 4, 1},
								{NOTE_DS4, 8, 0},
								{NOTE_DS4, 16, 0},
								{PAUSE, 16, 0},
								{NOTE_E4, 4, 0},
								{NOTE_B3, 8, 0},
								{NOTE_GS3, 16, 0},
								{NOTE_DS4, 16, 0},
								{NOTE_DS4, 4, 1},
								{NOTE_DS4, 8, 0},
								{NOTE_DS4, 16, 0},
								{PAUSE, 16, 0},
								{NOTE_E4, 8, 0},
								{NOTE_DS4, 8, 0},
								{NOTE_B3, 8, 0},
								{NOTE_GS3, 8, 0}};

void pwm_timer_setup(char tim_num, int freq)
{
	ledc_timer_config_t timer_config;
	timer_config.duty_resolution = LEDC_TIMER_15_BIT;
	timer_config.freq_hz = freq;
	timer_config.speed_mode = LEDC_HIGH_SPEED_MODE;

	switch(tim_num)
	{
		case 0: timer_config.timer_num = LEDC_TIMER_0;
			break;
		case 1: timer_config.timer_num = LEDC_TIMER_1;
			break;
		case 2: timer_config.timer_num = LEDC_TIMER_2;
			break;
		case 3: timer_config.timer_num = LEDC_TIMER_3;
	}

	ledc_timer_config(&timer_config);
}

void pwm_channel_setup(char channel, int duty, char gpio_num, char tim_num)
{
	ledc_channel_config_t channel_config;
	switch(channel)
	{
		case 0: channel_config.channel = LEDC_CHANNEL_0;
			break;
		case 1: channel_config.channel = LEDC_CHANNEL_1;
			break;
		case 2: channel_config.channel = LEDC_CHANNEL_2;
			break;
		case 3: channel_config.channel = LEDC_CHANNEL_3;
			break;
		case 4: channel_config.channel = LEDC_CHANNEL_4;
			break;
		case 5: channel_config.channel = LEDC_CHANNEL_5;
			break;
		case 6: channel_config.channel = LEDC_CHANNEL_6;
			break;
		case 7: channel_config.channel = LEDC_CHANNEL_7;
	}

	channel_config.duty = duty;
	channel_config.gpio_num = gpio_num;
	channel_config.intr_type = LEDC_INTR_DISABLE;
	channel_config.speed_mode = LEDC_HIGH_SPEED_MODE;

	switch(tim_num)
			{
				case 0: channel_config.timer_sel = LEDC_TIMER_0;
					break;
				case 1: channel_config.timer_sel = LEDC_TIMER_1;
					break;
				case 2: channel_config.timer_sel = LEDC_TIMER_2;
					break;
				case 3: channel_config.timer_sel = LEDC_TIMER_3;
			}

	ledc_channel_config(&channel_config);
}

void set_duty(int duty, int channel)
{
	ledc_set_duty(LEDC_HIGH_SPEED_MODE, channel, duty);
	ledc_update_duty(LEDC_HIGH_SPEED_MODE, channel);
}

void play_tone(char timer_num, unsigned int fqz, unsigned int length, char special)	//special==0 => nothing; special==1 => no space; special==2 => big space
{
	if(fqz == 0) set_duty(0,0);
	else ledc_set_freq(LEDC_HIGH_SPEED_MODE, 0,fqz);
	switch(special)
	{
	case 0:
		vTaskDelay(((3600*60)/(length*BPM)) / portTICK_RATE_MS);
		set_duty(0,0);
		vTaskDelay(((400*60)/(length*BPM)) / portTICK_RATE_MS);
		set_duty(16383, 0);
		break;
	case 1:
		vTaskDelay(((4000*60)/(length*BPM)) / portTICK_RATE_MS);
		set_duty(16383, 0);
		break;
	case 2:
		vTaskDelay(((1800*60)/(length*BPM)) / portTICK_RATE_MS);
		set_duty(0,0);
		vTaskDelay(((2200*60)/(length*BPM)) / portTICK_RATE_MS);
		set_duty(16383, 0);
		break;
	}
}

void music_play()
{
	//pwm_timer_setup(0, 440);
	pwm_timer_setup(0, 2441);
	pwm_channel_setup(0, 16383, PIN_MUSIC_L, 0);

	while(1)
	{
		for(int i=0;i<94;i++)
		{
			play_tone(0, melody[i][0], melody[i][1], melody[i][2]);
		}

		//BPM+=5;
		/*play_tone(0, 262);
		play_tone(0, 294);
		play_tone(0, 330);
		play_tone(0, 349);
		pwm_timer_setup(0, 392);
		vTaskDelay(1000 / portTICK_RATE_MS);*/
	}
}
