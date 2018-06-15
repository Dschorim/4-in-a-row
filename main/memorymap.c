/*	Bit2	Bit1	Bit0
 *	red		green	blue
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
