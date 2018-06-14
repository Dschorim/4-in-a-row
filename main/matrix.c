#include "memorymap.c"
#include <driver/gpio.h>
#include <freertos/FreeRTOS.h>
#include <freertos/task.h>
#include "static.c"

unsigned int vertical_index=19;
unsigned char vertical_index_small = 3;

void output_matrix()
{
	while(1)
	{
		//Main Matrix
		for(int i=0;i<=19;i++)
		{
			if(vertical_index==i)
				{
				//printf("0");
				gpio_set_level(PIN_MATRIX_BIG_GND,0);
				}
			else
				{
				//printf("1");
				gpio_set_level(PIN_MATRIX_BIG_GND,1);
				}
			gpio_set_level(SHIFT_MATRIX_BIG_GND,1);
			gpio_set_level(SHIFT_MATRIX_BIG_GND,0);
		}
		gpio_set_level(LATCH_MATRIX_BIG,0);
		gpio_set_level(LATCH_MATRIX_BIG,1);
		//printf("\n");

		if(vertical_index == 0) vertical_index=19;
		else vertical_index--;

		for(int i=9;i>=0;i--)
		{
			gpio_set_level(PIN_MATRIX_BIG_COLOR,getBlue(memory[vertical_index][i]));
			//gpio_set_level(0,1);
			gpio_set_level(SHIFT_MATRIX_BIG_COLOR,1);
			gpio_set_level(SHIFT_MATRIX_BIG_COLOR,0);
			gpio_set_level(PIN_MATRIX_BIG_COLOR,getGreen(memory[vertical_index][i]));
			//gpio_set_level(0,1);
			gpio_set_level(SHIFT_MATRIX_BIG_COLOR,1);
			gpio_set_level(SHIFT_MATRIX_BIG_COLOR,0);
			gpio_set_level(PIN_MATRIX_BIG_COLOR,getRed(memory[vertical_index][i]));
			//gpio_set_level(0,1);
			gpio_set_level(SHIFT_MATRIX_BIG_COLOR,1);
			gpio_set_level(SHIFT_MATRIX_BIG_COLOR,0);
		}
		gpio_set_level(LATCH_MATRIX_BIG,1);
		gpio_set_level(LATCH_MATRIX_BIG,0);

		//vTaskDelay(500/portTICK_RATE_MS);
		//////////////////////////////////////////////////////////////////////////////////
		//Small Matrix

		for(int i=0;i<=3;i++)
		{
			if(vertical_index_small==i)
			{
				//printf("0\n");
				gpio_set_level(PIN_MATRIX_SMALL,0);
			}
			else
			{
				//printf("1\n");
				gpio_set_level(PIN_MATRIX_SMALL,1);
			}
			gpio_set_level(SHIFT_MATRIX_SMALL,1);
			gpio_set_level(SHIFT_MATRIX_SMALL,0);
		}
		//printf("\n");

		for(int i=3;i>=0;i--)
		{
			gpio_set_level(PIN_MATRIX_SMALL,getBlue(small_matrix[vertical_index_small][i]));
			//gpio_set_level(0,1);
			gpio_set_level(SHIFT_MATRIX_SMALL,1);
			gpio_set_level(SHIFT_MATRIX_SMALL,0);
			gpio_set_level(PIN_MATRIX_SMALL,getGreen(small_matrix[vertical_index_small][i]));
			//gpio_set_level(0,1);
			gpio_set_level(SHIFT_MATRIX_SMALL,1);
			gpio_set_level(SHIFT_MATRIX_SMALL,0);
			gpio_set_level(PIN_MATRIX_SMALL,getRed(small_matrix[vertical_index_small][i]));
			//gpio_set_level(0,1);
			gpio_set_level(SHIFT_MATRIX_SMALL,1);
			gpio_set_level(SHIFT_MATRIX_SMALL,0);
		}
		gpio_set_level(LATCH_MATRIX_SMALL,1);
		gpio_set_level(LATCH_MATRIX_SMALL,0);

		if(vertical_index_small == 0) vertical_index_small=3;
		else vertical_index_small--;
	}
	vTaskDelete( NULL );
}
