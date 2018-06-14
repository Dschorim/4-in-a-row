/*	Bit15	Bit14	Bit13	Bit12	Bit11	Bit10	Bit9	Bit8	Bit7	Bit6	Bit5	Bit4	Bit3	Bit2	Bit1	Bit0
 * 													Part2	Part1	Part0	Or1		Or0		main	moving	red		green	blue
 *
 * 	Bit24 - Bit10: 15Bit
 * 	Bit25 - Bit31: free
 */

/*Parts:
 * Turning (Main) Block: 2	(1)
 * Regular Block 1	(0)
 *
 *No:	0		1		2		3		4		5		6
 * 		2111	21		  2		2 		2		 2		211
 * 				11		111		111		11		11		 1
 * 										 1		1
 *
 * 		red		green	blue	rg		rb		gb		rgb
 */

/*Orientation (Or) :
 * No: Start 0; Rotation Counterclockwise
 */
#include <stdlib.h>
#include <stdio.h>

unsigned int partID = 1;

//{y;x}
unsigned long small_matrix[4][4] =
								{	{0,0,0,0},
									{0,0,0,0},
									{0,0,0,0},
									{0,0,0,0}
								};

unsigned long memory[20][10] =
							{	{0,0,0,0,0,0,0,0,0,0},
								{0,0,0,0,0,0,0,0,0,0},
								{0,0,0,0,0,0,0,0,0,0},
								{0,0,0,0,0,0,0,0,0,0},
								{0,0,0,0,0,0,0,0,0,0},
								{0,0,0,0,0,0,0,0,0,0},
								{0,0,0,0,0,0,0,0,0,0},
								{0,0,0,0,0,0,0,0,0,0},
								{0,0,0,0,0,0,0,0,0,0},
								{0,0,0,0,0,0,0,0,0,0},
								{0,0,0,0,0,0,0,0,0,0},
								{0,0,0,0,0,0,0,0,0,0},
								{0,0,0,0,0,0,0,0,0,0},
								{0,0,0,0,0,0,0,0,0,0},
								{0,0,0,0,0,0,0,0,0,0},
								{0,0,0,0,0,0,0,0,0,0},
								{0,0,0,0,0,0,0,0,0,0},
								{0,0,0,0,0,0,0,0,0,0},
								{0,0,0,0,0,0,0,0,0,0},
								{0,0,0,0,0,0,0,0,0,0}
							};

unsigned char getRed(unsigned long part)
{
	return (part>>2)&1;
}

unsigned char getGreen(unsigned long part)
{
	return (part>>1)&1;
}

unsigned char getBlue(unsigned long part)
{
	return part&1;
}
//////////////////////////////////////////////////////////////
unsigned long setRed(unsigned long part, unsigned long red)
{
	part&=~(1<<2);
	return part|((red&1)<<2);
}

unsigned long setGreen(unsigned long part, unsigned long green)
{
	part&=~(1<<1);
	return part|((green&1)<<1);
}

unsigned long setBlue(unsigned long part, unsigned long blue)
{
	part&=~(1);
	return part|(blue&1);
}

/////////////////////////////////////////////////////////////////////

void clean_small_matrix()
{
	for(int i=0;i<4;i++) for(int j=0;j<4;j++) small_matrix[i][j] = 0;
}
