EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:Tetris_Upperdeck-cache
EELAYER 25 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_02X08 P2
U 1 1 5AAD04C1
P 1050 1750
F 0 "P2" H 1050 2200 50  0000 C CNN
F 1 "CONN_02X08" V 1050 1750 50  0000 C CNN
F 2 "Connect:IDC_Header_Straight_16pins" H 1050 550 50  0001 C CNN
F 3 "" H 1050 550 50  0000 C CNN
	1    1050 1750
	0    1    1    0   
$EndComp
Text GLabel 1400 1500 1    60   Input ~ 0
GND
Text GLabel 1300 1500 1    60   Input ~ 0
3,3V
Text GLabel 1200 1500 1    60   Input ~ 0
SHIFT_SIEBENSEG
Text GLabel 1100 1500 1    60   Input ~ 0
NOT_ENABLE
Text GLabel 1000 1500 1    60   Input ~ 0
TOUCH_UP
Text GLabel 900  1500 1    60   Input ~ 0
TOUCH_DOWN
Text GLabel 800  1500 1    60   Input ~ 0
TOUCH_START
Text GLabel 1400 2000 3    60   Input ~ 0
5V
Text GLabel 1300 2000 3    60   Input ~ 0
PIN_SIEBENSEG
Text GLabel 1200 2000 3    60   Input ~ 0
LATCH_SIEBENSEG
Text GLabel 1100 2000 3    60   Input ~ 0
NOT_RESET_ALL
Text GLabel 1000 2000 3    60   Input ~ 0
TOUCH_LEFT
Text GLabel 900  2000 3    60   Input ~ 0
TOUCH_RIGHT
Text GLabel 800  2000 3    60   Input ~ 0
TOUCH_RESET
$Comp
L 74HC595 U1
U 1 1 5AAD06FE
P 3300 1300
F 0 "U1" H 3450 1900 50  0000 C CNN
F 1 "74HC595" H 3300 700 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 3300 1300 50  0001 C CNN
F 3 "" H 3300 1300 50  0000 C CNN
	1    3300 1300
	1    0    0    -1  
$EndComp
$Comp
L 74HC595 U5
U 1 1 5AAD0765
P 5650 1350
F 0 "U5" H 5800 1950 50  0000 C CNN
F 1 "74HC595" H 5650 750 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 5650 1350 50  0001 C CNN
F 3 "" H 5650 1350 50  0000 C CNN
	1    5650 1350
	1    0    0    -1  
$EndComp
$Comp
L 74HC595 U9
U 1 1 5AAD07D2
P 7700 1300
F 0 "U9" H 7850 1900 50  0000 C CNN
F 1 "74HC595" H 7700 700 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 7700 1300 50  0001 C CNN
F 3 "" H 7700 1300 50  0000 C CNN
	1    7700 1300
	1    0    0    -1  
$EndComp
$Comp
L 74HC595 U2
U 1 1 5AAD08FF
P 3350 2750
F 0 "U2" H 3500 3350 50  0000 C CNN
F 1 "74HC595" H 3350 2150 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 3350 2750 50  0001 C CNN
F 3 "" H 3350 2750 50  0000 C CNN
	1    3350 2750
	1    0    0    -1  
$EndComp
$Comp
L 74HC595 U3
U 1 1 5AAD095B
P 3350 4400
F 0 "U3" H 3500 5000 50  0000 C CNN
F 1 "74HC595" H 3350 3800 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 3350 4400 50  0001 C CNN
F 3 "" H 3350 4400 50  0000 C CNN
	1    3350 4400
	1    0    0    -1  
$EndComp
$Comp
L 74HC595 U4
U 1 1 5AAD09CA
P 3400 5850
F 0 "U4" H 3550 6450 50  0000 C CNN
F 1 "74HC595" H 3400 5250 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 3400 5850 50  0001 C CNN
F 3 "" H 3400 5850 50  0000 C CNN
	1    3400 5850
	1    0    0    -1  
$EndComp
$Comp
L 74HC595 U6
U 1 1 5AAD0A58
P 5650 2800
F 0 "U6" H 5800 3400 50  0000 C CNN
F 1 "74HC595" H 5650 2200 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 5650 2800 50  0001 C CNN
F 3 "" H 5650 2800 50  0000 C CNN
	1    5650 2800
	1    0    0    -1  
$EndComp
$Comp
L 74HC595 U7
U 1 1 5AAD0ADB
P 5650 4400
F 0 "U7" H 5800 5000 50  0000 C CNN
F 1 "74HC595" H 5650 3800 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 5650 4400 50  0001 C CNN
F 3 "" H 5650 4400 50  0000 C CNN
	1    5650 4400
	1    0    0    -1  
$EndComp
$Comp
L 74HC595 U8
U 1 1 5AAD0B39
P 5650 5900
F 0 "U8" H 5800 6500 50  0000 C CNN
F 1 "74HC595" H 5650 5300 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 5650 5900 50  0001 C CNN
F 3 "" H 5650 5900 50  0000 C CNN
	1    5650 5900
	1    0    0    -1  
$EndComp
$Comp
L 74HC595 U10
U 1 1 5AAD0B9A
P 7750 2800
F 0 "U10" H 7900 3400 50  0000 C CNN
F 1 "74HC595" H 7750 2200 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 7750 2800 50  0001 C CNN
F 3 "" H 7750 2800 50  0000 C CNN
	1    7750 2800
	1    0    0    -1  
$EndComp
$Comp
L 74HC595 U11
U 1 1 5AAD0C06
P 7750 4400
F 0 "U11" H 7900 5000 50  0000 C CNN
F 1 "74HC595" H 7750 3800 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 7750 4400 50  0001 C CNN
F 3 "" H 7750 4400 50  0000 C CNN
	1    7750 4400
	1    0    0    -1  
$EndComp
$Comp
L 74HC595 U12
U 1 1 5AAD0C73
P 7750 5900
F 0 "U12" H 7900 6500 50  0000 C CNN
F 1 "74HC595" H 7750 5300 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 7750 5900 50  0001 C CNN
F 3 "" H 7750 5900 50  0000 C CNN
	1    7750 5900
	1    0    0    -1  
$EndComp
Text GLabel 1550 550  0    60   Input ~ 0
3,3V
Text GLabel 1750 550  2    60   Input ~ 0
VCC
$Comp
L CONN_01X06 P1
U 1 1 5AAD123E
P 800 3700
F 0 "P1" H 800 4050 50  0000 C CNN
F 1 "CONN_01X06" V 900 3700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 800 3700 50  0001 C CNN
F 3 "" H 800 3700 50  0000 C CNN
	1    800  3700
	-1   0    0    1   
$EndComp
Text GLabel 1000 3950 2    60   Input ~ 0
TOUCH_UP
Text GLabel 1000 3850 2    60   Input ~ 0
TOUCH_LEFT
Text GLabel 1000 3750 2    60   Input ~ 0
TOUCH_DOWN
Text GLabel 1000 3650 2    60   Input ~ 0
TOUCH_RIGHT
Text GLabel 1000 3550 2    60   Input ~ 0
TOUCH_START
Text GLabel 1000 3450 2    60   Input ~ 0
TOUCH_RESET
Wire Wire Line
	1550 550  1750 550 
Wire Wire Line
	4000 1750 4200 1750
Wire Wire Line
	4200 1750 4200 2000
Wire Wire Line
	4200 2000 2450 2000
Wire Wire Line
	2450 2000 2450 2300
Wire Wire Line
	2450 2300 2650 2300
Wire Wire Line
	4050 3200 4250 3200
Wire Wire Line
	4250 3200 4250 3550
Wire Wire Line
	4250 3550 2450 3550
Wire Wire Line
	2450 3550 2450 3950
Wire Wire Line
	2450 3950 2650 3950
Wire Wire Line
	4050 4850 4450 4850
Wire Wire Line
	4450 4850 4450 5150
Wire Wire Line
	4450 5150 2500 5150
Wire Wire Line
	2500 5150 2500 5400
Wire Wire Line
	2500 5400 2700 5400
Wire Wire Line
	4100 6300 4500 6300
Wire Wire Line
	4500 6300 4500 900 
Wire Wire Line
	4500 900  4950 900 
Wire Wire Line
	6350 1800 6600 1800
Wire Wire Line
	6600 1800 6600 2100
Wire Wire Line
	6600 2100 4850 2100
Wire Wire Line
	4850 2100 4850 2350
Wire Wire Line
	4850 2350 4950 2350
Wire Wire Line
	6350 3250 6450 3250
Wire Wire Line
	6450 3250 6450 3550
Wire Wire Line
	6450 3550 4800 3550
Wire Wire Line
	4800 3550 4800 3950
Wire Wire Line
	4800 3950 4950 3950
Wire Wire Line
	6350 4850 6500 4850
Wire Wire Line
	6500 4850 6500 5150
Wire Wire Line
	6500 5150 4850 5150
Wire Wire Line
	4850 5150 4850 5450
Wire Wire Line
	4850 5450 4950 5450
Wire Wire Line
	6350 6350 6650 6350
Wire Wire Line
	6650 6350 6650 900 
Wire Wire Line
	6650 900  7000 900 
Wire Wire Line
	7000 900  7000 850 
Wire Wire Line
	8400 1750 8500 1750
Wire Wire Line
	8500 1750 8500 2050
Wire Wire Line
	8500 2050 6900 2050
Wire Wire Line
	6900 2050 6900 2350
Wire Wire Line
	6900 2350 7050 2350
Wire Wire Line
	8450 3250 8500 3250
Wire Wire Line
	8500 3250 8500 3650
Wire Wire Line
	8500 3650 6950 3650
Wire Wire Line
	6950 3650 6950 3950
Wire Wire Line
	6950 3950 7050 3950
Wire Wire Line
	8450 4850 8650 4850
Wire Wire Line
	8650 4850 8650 5150
Wire Wire Line
	8650 5150 6900 5150
Wire Wire Line
	6900 5150 6900 5450
Wire Wire Line
	6900 5450 7050 5450
$Comp
L 7SEGMENTS AFF1
U 1 1 5AAD2B22
P 4400 7300
F 0 "AFF1" H 4400 7850 50  0000 C CNN
F 1 "7SEGMENTS" H 4400 6850 50  0000 C CNN
F 2 "Displays_7-Segment:7SegmentLED_LTS6760_LTS6780" H 4400 7300 50  0001 C CNN
F 3 "" H 4400 7300 50  0000 C CNN
	1    4400 7300
	1    0    0    -1  
$EndComp
$Comp
L 7SEGMENTS AFF2
U 1 1 5AAD3C96
P 6300 7250
F 0 "AFF2" H 6300 7800 50  0000 C CNN
F 1 "7SEGMENTS" H 6300 6800 50  0000 C CNN
F 2 "Displays_7-Segment:7SegmentLED_LTS6760_LTS6780" H 6300 7250 50  0001 C CNN
F 3 "" H 6300 7250 50  0000 C CNN
	1    6300 7250
	1    0    0    -1  
$EndComp
$Comp
L 7SEGMENTS AFF3
U 1 1 5AAD3D34
P 2850 8550
F 0 "AFF3" H 2850 9100 50  0000 C CNN
F 1 "7SEGMENTS" H 2850 8100 50  0000 C CNN
F 2 "Displays_7-Segment:7SegmentLED_LTS6760_LTS6780" H 2850 8550 50  0001 C CNN
F 3 "" H 2850 8550 50  0000 C CNN
	1    2850 8550
	1    0    0    -1  
$EndComp
$Comp
L 7SEGMENTS AFF4
U 1 1 5AAD3E2B
P 4400 8500
F 0 "AFF4" H 4400 9050 50  0000 C CNN
F 1 "7SEGMENTS" H 4400 8050 50  0000 C CNN
F 2 "Displays_7-Segment:7SegmentLED_LTS6760_LTS6780" H 4400 8500 50  0001 C CNN
F 3 "" H 4400 8500 50  0000 C CNN
	1    4400 8500
	1    0    0    -1  
$EndComp
$Comp
L 7SEGMENTS AFF5
U 1 1 5AAD3E9B
P 6300 8550
F 0 "AFF5" H 6300 9100 50  0000 C CNN
F 1 "7SEGMENTS" H 6300 8100 50  0000 C CNN
F 2 "Displays_7-Segment:7SegmentLED_LTS6760_LTS6780" H 6300 8550 50  0001 C CNN
F 3 "" H 6300 8550 50  0000 C CNN
	1    6300 8550
	1    0    0    -1  
$EndComp
$Comp
L 7SEGMENTS AFF6
U 1 1 5AAD3F16
P 8150 8500
F 0 "AFF6" H 8150 9050 50  0000 C CNN
F 1 "7SEGMENTS" H 8150 8050 50  0000 C CNN
F 2 "Displays_7-Segment:7SegmentLED_LTS6760_LTS6780" H 8150 8500 50  0001 C CNN
F 3 "" H 8150 8500 50  0000 C CNN
	1    8150 8500
	1    0    0    -1  
$EndComp
$Comp
L 7SEGMENTS AFF8
U 1 1 5AAD4722
P 2850 9850
F 0 "AFF8" H 2850 10400 50  0000 C CNN
F 1 "7SEGMENTS" H 2850 9400 50  0000 C CNN
F 2 "Displays_7-Segment:7SegmentLED_LTS6760_LTS6780" H 2850 9850 50  0001 C CNN
F 3 "" H 2850 9850 50  0000 C CNN
	1    2850 9850
	1    0    0    -1  
$EndComp
$Comp
L 7SEGMENTS AFF9
U 1 1 5AAD47B9
P 4400 9800
F 0 "AFF9" H 4400 10350 50  0000 C CNN
F 1 "7SEGMENTS" H 4400 9350 50  0000 C CNN
F 2 "Displays_7-Segment:7SegmentLED_LTS6760_LTS6780" H 4400 9800 50  0001 C CNN
F 3 "" H 4400 9800 50  0000 C CNN
	1    4400 9800
	1    0    0    -1  
$EndComp
$Comp
L 7SEGMENTS AFF10
U 1 1 5AAD483D
P 6250 9750
F 0 "AFF10" H 6250 10300 50  0000 C CNN
F 1 "7SEGMENTS" H 6250 9300 50  0000 C CNN
F 2 "Displays_7-Segment:7SegmentLED_LTS6760_LTS6780" H 6250 9750 50  0001 C CNN
F 3 "" H 6250 9750 50  0000 C CNN
	1    6250 9750
	1    0    0    -1  
$EndComp
$Comp
L 7SEGMENTS AFF11
U 1 1 5AAD48CC
P 8200 9700
F 0 "AFF11" H 8200 10250 50  0000 C CNN
F 1 "7SEGMENTS" H 8200 9250 50  0000 C CNN
F 2 "Displays_7-Segment:7SegmentLED_LTS6760_LTS6780" H 8200 9700 50  0001 C CNN
F 3 "" H 8200 9700 50  0000 C CNN
	1    8200 9700
	1    0    0    -1  
$EndComp
$Comp
L 7SEGMENTS AFF7
U 1 1 5AAD4950
P 1200 9900
F 0 "AFF7" H 1200 10450 50  0000 C CNN
F 1 "7SEGMENTS" H 1200 9450 50  0000 C CNN
F 2 "Displays_7-Segment:7SegmentLED_LTS6760_LTS6780" H 1200 9900 50  0001 C CNN
F 3 "" H 1200 9900 50  0000 C CNN
	1    1200 9900
	1    0    0    -1  
$EndComp
$Comp
L 7SEGMENTS AFF12
U 1 1 5AAD49ED
P 10050 9600
F 0 "AFF12" H 10050 10150 50  0000 C CNN
F 1 "7SEGMENTS" H 10050 9150 50  0000 C CNN
F 2 "Displays_7-Segment:7SegmentLED_LTS6760_LTS6780" H 10050 9600 50  0001 C CNN
F 3 "" H 10050 9600 50  0000 C CNN
	1    10050 9600
	1    0    0    -1  
$EndComp
Text GLabel 5000 8050 2    60   Input ~ 0
GND
Text GLabel 5000 8150 2    60   Input ~ 0
GND
Text GLabel 5000 6850 2    60   Input ~ 0
GND
Text GLabel 5000 6950 2    60   Input ~ 0
GND
Text GLabel 6900 6800 2    60   Input ~ 0
GND
Text GLabel 6900 6900 2    60   Input ~ 0
GND
Text GLabel 6900 8100 2    60   Input ~ 0
GND
Text GLabel 6900 8200 2    60   Input ~ 0
GND
Text GLabel 3450 8100 2    60   Input ~ 0
GND
Text GLabel 3450 8200 2    60   Input ~ 0
GND
Text GLabel 1800 9450 2    60   Input ~ 0
GND
Text GLabel 1800 9550 2    60   Input ~ 0
GND
Text GLabel 3450 9400 2    60   Input ~ 0
GND
Text GLabel 3450 9500 2    60   Input ~ 0
GND
Text GLabel 5000 9350 2    60   Input ~ 0
GND
Text GLabel 5000 9450 2    60   Input ~ 0
GND
Text GLabel 6850 9300 2    60   Input ~ 0
GND
Text GLabel 6850 9400 2    60   Input ~ 0
GND
Text GLabel 8750 8050 2    60   Input ~ 0
GND
Text GLabel 8750 8150 2    60   Input ~ 0
GND
Text GLabel 8800 9250 2    60   Input ~ 0
GND
Text GLabel 8800 9350 2    60   Input ~ 0
GND
Text GLabel 10650 9150 2    60   Input ~ 0
GND
Text GLabel 10650 9250 2    60   Input ~ 0
GND
Text GLabel 10650 9850 2    60   Input ~ 0
SCORE_0_H
Text GLabel 9450 9200 0    60   Input ~ 0
SCORE_0_A
Text GLabel 9450 9300 0    60   Input ~ 0
SCORE_0_B
Text GLabel 9450 9400 0    60   Input ~ 0
SCORE_0_C
Text GLabel 9450 9500 0    60   Input ~ 0
SCORE_0_D
Text GLabel 9450 9600 0    60   Input ~ 0
SCORE_0_E
Text GLabel 9450 9700 0    60   Input ~ 0
SCORE_0_F
Text GLabel 9450 9800 0    60   Input ~ 0
SCORE_0_G
Text GLabel 4000 850  2    60   Input ~ 0
SCORE_0_A
Text GLabel 4000 950  2    60   Input ~ 0
SCORE_0_B
Text GLabel 4000 1050 2    60   Input ~ 0
SCORE_0_C
Text GLabel 4000 1150 2    60   Input ~ 0
SCORE_0_D
Text GLabel 4000 1250 2    60   Input ~ 0
SCORE_0_E
Text GLabel 4000 1350 2    60   Input ~ 0
SCORE_0_F
Text GLabel 4000 1450 2    60   Input ~ 0
SCORE_0_G
Text GLabel 4000 1550 2    60   Input ~ 0
SCORE_0_H
Text GLabel 2600 850  0    60   Input ~ 0
PIN_SIEBENSEG
Text GLabel 2600 1050 0    60   Input ~ 0
SHIFT_SIEBENSEG
Text GLabel 2600 1150 0    60   Input ~ 0
NOT_RESET_ALL
Text GLabel 2600 1350 0    60   Input ~ 0
LATCH_SIEBENSEG
Text GLabel 2600 1450 0    60   Input ~ 0
NOT_ENABLE
Text GLabel 2650 4150 0    60   Input ~ 0
SHIFT_SIEBENSEG
Text GLabel 2650 4250 0    60   Input ~ 0
NOT_RESET_ALL
Text GLabel 2650 4450 0    60   Input ~ 0
LATCH_SIEBENSEG
Text GLabel 2650 4550 0    60   Input ~ 0
NOT_ENABLE
Text GLabel 2700 5600 0    60   Input ~ 0
SHIFT_SIEBENSEG
Text GLabel 2700 5700 0    60   Input ~ 0
NOT_RESET_ALL
Text GLabel 2700 5900 0    60   Input ~ 0
LATCH_SIEBENSEG
Text GLabel 2700 6000 0    60   Input ~ 0
NOT_ENABLE
Text GLabel 4950 1100 0    60   Input ~ 0
SHIFT_SIEBENSEG
Text GLabel 4950 1200 0    60   Input ~ 0
NOT_RESET_ALL
Text GLabel 4950 1400 0    60   Input ~ 0
LATCH_SIEBENSEG
Text GLabel 4950 1500 0    60   Input ~ 0
NOT_ENABLE
Text GLabel 4950 2550 0    60   Input ~ 0
SHIFT_SIEBENSEG
Text GLabel 4950 2650 0    60   Input ~ 0
NOT_RESET_ALL
Text GLabel 4950 2850 0    60   Input ~ 0
LATCH_SIEBENSEG
Text GLabel 4950 2950 0    60   Input ~ 0
NOT_ENABLE
Text GLabel 4950 5650 0    60   Input ~ 0
SHIFT_SIEBENSEG
Text GLabel 4950 5750 0    60   Input ~ 0
NOT_RESET_ALL
Text GLabel 4950 5950 0    60   Input ~ 0
LATCH_SIEBENSEG
Text GLabel 4950 6050 0    60   Input ~ 0
NOT_ENABLE
Wire Wire Line
	6950 5150 6950 5450
Text GLabel 7050 5650 0    60   Input ~ 0
SHIFT_SIEBENSEG
Text GLabel 7050 5750 0    60   Input ~ 0
NOT_RESET_ALL
Text GLabel 7050 5950 0    60   Input ~ 0
LATCH_SIEBENSEG
Text GLabel 7050 6050 0    60   Input ~ 0
NOT_ENABLE
Text GLabel 7050 4150 0    60   Input ~ 0
SHIFT_SIEBENSEG
Text GLabel 7050 4250 0    60   Input ~ 0
NOT_RESET_ALL
Text GLabel 7050 4450 0    60   Input ~ 0
LATCH_SIEBENSEG
Text GLabel 7050 4550 0    60   Input ~ 0
NOT_ENABLE
Text GLabel 7050 2550 0    60   Input ~ 0
SHIFT_SIEBENSEG
Text GLabel 7050 2650 0    60   Input ~ 0
NOT_RESET_ALL
Text GLabel 7050 2850 0    60   Input ~ 0
LATCH_SIEBENSEG
Text GLabel 7050 2950 0    60   Input ~ 0
NOT_ENABLE
Text GLabel 7000 1050 0    60   Input ~ 0
SHIFT_SIEBENSEG
Text GLabel 7000 1150 0    60   Input ~ 0
NOT_RESET_ALL
Text GLabel 7000 1350 0    60   Input ~ 0
LATCH_SIEBENSEG
Text GLabel 7000 1450 0    60   Input ~ 0
NOT_ENABLE
Text GLabel 8800 9950 2    60   Input ~ 0
SCORE_1_H
Text GLabel 7600 9300 0    60   Input ~ 0
SCORE_1_A
Text GLabel 7600 9400 0    60   Input ~ 0
SCORE_1_B
Text GLabel 7600 9500 0    60   Input ~ 0
SCORE_1_C
Text GLabel 7600 9600 0    60   Input ~ 0
SCORE_1_D
Text GLabel 7600 9700 0    60   Input ~ 0
SCORE_1_E
Text GLabel 7600 9800 0    60   Input ~ 0
SCORE_1_F
Text GLabel 7600 9900 0    60   Input ~ 0
SCORE_1_G
Text GLabel 6850 10000 2    60   Input ~ 0
LEVEL_2_H
Text GLabel 5650 9350 0    60   Input ~ 0
SCORE_2_A
Text GLabel 5650 9450 0    60   Input ~ 0
SCORE2_B
Text GLabel 5650 9550 0    60   Input ~ 0
SCORE_2_C
Text GLabel 5650 9650 0    60   Input ~ 0
SCORE_2_D
Text GLabel 5650 9750 0    60   Input ~ 0
SCORE_2_E
Text GLabel 5650 9850 0    60   Input ~ 0
SCORE_2_F
Text GLabel 5650 9950 0    60   Input ~ 0
SCORE_2_G
Text GLabel 5000 10050 2    60   Input ~ 0
SCORE_3_H
Text GLabel 3800 9400 0    60   Input ~ 0
SCORE_3_A
Text GLabel 3800 9500 0    60   Input ~ 0
SCORE_3_B
Text GLabel 3800 9600 0    60   Input ~ 0
SCORE_3_C
Text GLabel 3800 9700 0    60   Input ~ 0
SCORE_3_D
Text GLabel 3800 9800 0    60   Input ~ 0
SCORE_3_E
Text GLabel 3800 9900 0    60   Input ~ 0
SCORE_3_F
Text GLabel 3800 10000 0    60   Input ~ 0
SCORE_3_G
Text GLabel 3450 10100 2    60   Input ~ 0
SCORE_4_H
Text GLabel 2250 9450 0    60   Input ~ 0
SCORE_4_A
Text GLabel 2250 9550 0    60   Input ~ 0
SCORE_4_B
Text GLabel 2250 9650 0    60   Input ~ 0
SCORE_4_C
Text GLabel 2250 9750 0    60   Input ~ 0
SCORE_4_D
Text GLabel 2250 9850 0    60   Input ~ 0
SCORE_4_E
Text GLabel 2250 9950 0    60   Input ~ 0
SCORE_4_F
Text GLabel 2250 10050 0    60   Input ~ 0
SCORE_4_G
Text GLabel 1800 10150 2    60   Input ~ 0
SCORE_5_H
Text GLabel 600  9500 0    60   Input ~ 0
SCORE_5_A
Text GLabel 600  9600 0    60   Input ~ 0
SCORE_5_B
Text GLabel 600  9700 0    60   Input ~ 0
SCORE_5_C
Text GLabel 600  9800 0    60   Input ~ 0
SCORE_5_D
Text GLabel 600  9900 0    60   Input ~ 0
SCORE_5_E
Text GLabel 600  10000 0    60   Input ~ 0
SCORE_5_F
Text GLabel 600  10100 0    60   Input ~ 0
SCORE_5_G
Text GLabel 4050 2300 2    60   Input ~ 0
SCORE_1_A
Text GLabel 4050 2400 2    60   Input ~ 0
SCORE_1_B
Text GLabel 4050 2500 2    60   Input ~ 0
SCORE_1_C
Text GLabel 4050 2600 2    60   Input ~ 0
SCORE_1_D
Text GLabel 4050 2700 2    60   Input ~ 0
SCORE_1_E
Text GLabel 4050 2800 2    60   Input ~ 0
SCORE_1_F
Text GLabel 4050 2900 2    60   Input ~ 0
SCORE_1_G
Text GLabel 4050 3000 2    60   Input ~ 0
SCORE_1_H
Text GLabel 2650 2500 0    60   Input ~ 0
SHIFT_SIEBENSEG
Text GLabel 2650 2600 0    60   Input ~ 0
NOT_RESET_ALL
Text GLabel 2650 2800 0    60   Input ~ 0
LATCH_SIEBENSEG
Text GLabel 2650 2900 0    60   Input ~ 0
NOT_ENABLE
Text GLabel 4950 4150 0    60   Input ~ 0
SHIFT_SIEBENSEG
Text GLabel 4950 4250 0    60   Input ~ 0
NOT_RESET_ALL
Text GLabel 4950 4450 0    60   Input ~ 0
LATCH_SIEBENSEG
Text GLabel 4950 4550 0    60   Input ~ 0
NOT_ENABLE
Text GLabel 4050 3950 2    60   Input ~ 0
SCORE_2_A
Text GLabel 4050 4050 2    60   Input ~ 0
SCORE_2_B
Text GLabel 4050 4150 2    60   Input ~ 0
SCORE_2_C
Text GLabel 4050 4250 2    60   Input ~ 0
SCORE_2_D
Text GLabel 4050 4350 2    60   Input ~ 0
SCORE_2_E
Text GLabel 4050 4450 2    60   Input ~ 0
SCORE_2_F
Text GLabel 4050 4550 2    60   Input ~ 0
SCORE_2_G
Text GLabel 4050 4650 2    60   Input ~ 0
SCORE_2_H
Text GLabel 4100 5400 2    60   Input ~ 0
SCORE_3_A
Text GLabel 4100 5500 2    60   Input ~ 0
SCORE_3_B
Text GLabel 4100 5600 2    60   Input ~ 0
SCORE_3_C
Text GLabel 4100 5700 2    60   Input ~ 0
SCORE_3_D
Text GLabel 4100 5800 2    60   Input ~ 0
SCORE_3_E
Text GLabel 4100 5900 2    60   Input ~ 0
SCORE_3_F
Text GLabel 4100 6000 2    60   Input ~ 0
SCORE_3_G
Text GLabel 4100 6100 2    60   Input ~ 0
SCORE_3_H
Text GLabel 6350 900  2    60   Input ~ 0
SCORE_4_A
Text GLabel 6350 1000 2    60   Input ~ 0
SCORE_4_B
Text GLabel 6350 1100 2    60   Input ~ 0
SCORE_4_C
Text GLabel 6350 1200 2    60   Input ~ 0
SCORE_4_D
Text GLabel 6350 1300 2    60   Input ~ 0
SCORE_4_E
Text GLabel 6350 1400 2    60   Input ~ 0
SCORE_4_F
Text GLabel 6350 1500 2    60   Input ~ 0
SCORE_4_G
Text GLabel 6350 1600 2    60   Input ~ 0
SCORE_4_H
Text GLabel 6350 2350 2    60   Input ~ 0
SCORE_5_A
Text GLabel 6350 2450 2    60   Input ~ 0
SCORE_5_B
Text GLabel 6350 2550 2    60   Input ~ 0
SCORE_5_C
Text GLabel 6350 2650 2    60   Input ~ 0
SCORE_5_D
Text GLabel 6350 2750 2    60   Input ~ 0
SCORE_5_E
Text GLabel 6350 2850 2    60   Input ~ 0
SCORE_5_F
Text GLabel 6350 2950 2    60   Input ~ 0
SCORE_5_G
Text GLabel 6350 3050 2    60   Input ~ 0
SCORE_5_H
Text GLabel 8750 8750 2    60   Input ~ 0
ROW_0_H
Text GLabel 7550 8100 0    60   Input ~ 0
ROW_0_A
Text GLabel 7550 8200 0    60   Input ~ 0
ROW_0_B
Text GLabel 7550 8300 0    60   Input ~ 0
ROW_0_C
Text GLabel 7550 8400 0    60   Input ~ 0
ROW_0_D
Text GLabel 7550 8500 0    60   Input ~ 0
ROW_0_E
Text GLabel 7550 8600 0    60   Input ~ 0
ROW_0_F
Text GLabel 7550 8700 0    60   Input ~ 0
ROW_0_G
Text GLabel 6900 8800 2    60   Input ~ 0
ROW_1_H
Text GLabel 5700 8150 0    60   Input ~ 0
ROW_1_A
Text GLabel 5700 8250 0    60   Input ~ 0
ROW_1_B
Text GLabel 5700 8350 0    60   Input ~ 0
ROW_1_C
Text GLabel 5700 8450 0    60   Input ~ 0
ROW_1_D
Text GLabel 5700 8550 0    60   Input ~ 0
ROW_1_E
Text GLabel 5700 8650 0    60   Input ~ 0
ROW_1_F
Text GLabel 5700 8750 0    60   Input ~ 0
ROW_1_G
Text GLabel 5000 8750 2    60   Input ~ 0
ROW_2_H
Text GLabel 3800 8100 0    60   Input ~ 0
ROW_2_A
Text GLabel 3800 8200 0    60   Input ~ 0
ROW_2_B
Text GLabel 3800 8300 0    60   Input ~ 0
ROW_2_C
Text GLabel 3800 8400 0    60   Input ~ 0
ROW_2_D
Text GLabel 3800 8500 0    60   Input ~ 0
ROW_2_E
Text GLabel 3800 8600 0    60   Input ~ 0
ROW_2_F
Text GLabel 3800 8700 0    60   Input ~ 0
ROW_2_G
Text GLabel 3450 8800 2    60   Input ~ 0
ROW_3_H
Text GLabel 2250 8150 0    60   Input ~ 0
ROW_3_A
Text GLabel 2250 8250 0    60   Input ~ 0
ROW_3_B
Text GLabel 2250 8350 0    60   Input ~ 0
ROW_3_C
Text GLabel 2250 8450 0    60   Input ~ 0
ROW_3_D
Text GLabel 2250 8550 0    60   Input ~ 0
ROW_3_E
Text GLabel 2250 8650 0    60   Input ~ 0
ROW_3_F
Text GLabel 2250 8750 0    60   Input ~ 0
ROW_3_G
Text GLabel 6350 3950 2    60   Input ~ 0
ROW_0_A
Text GLabel 6350 4050 2    60   Input ~ 0
ROW_0_B
Text GLabel 6350 4150 2    60   Input ~ 0
ROW_0_C
Text GLabel 6350 4250 2    60   Input ~ 0
ROW_0_D
Text GLabel 6350 4350 2    60   Input ~ 0
ROW_0_E
Text GLabel 6350 4450 2    60   Input ~ 0
ROW_0_F
Text GLabel 6350 4550 2    60   Input ~ 0
ROW_0_G
Text GLabel 6350 4650 2    60   Input ~ 0
ROW_0_H
Text GLabel 6350 5450 2    60   Input ~ 0
ROW_1_A
Text GLabel 6350 5550 2    60   Input ~ 0
ROW_1_B
Text GLabel 6350 5650 2    60   Input ~ 0
ROW_1_C
Text GLabel 6350 5750 2    60   Input ~ 0
ROW_1_D
Text GLabel 6350 5850 2    60   Input ~ 0
ROW_1_E
Text GLabel 6350 5950 2    60   Input ~ 0
ROW_1_F
Text GLabel 6350 6050 2    60   Input ~ 0
ROW_1_G
Text GLabel 6350 6150 2    60   Input ~ 0
ROW_1_H
Text GLabel 8400 850  2    60   Input ~ 0
ROW_2_A
Text GLabel 8400 950  2    60   Input ~ 0
ROW_2_B
Text GLabel 8400 1050 2    60   Input ~ 0
ROW_2_C
Text GLabel 8400 1150 2    60   Input ~ 0
ROW_2_D
Text GLabel 8400 1250 2    60   Input ~ 0
ROW_2_E
Text GLabel 8400 1350 2    60   Input ~ 0
ROW_2_F
Text GLabel 8400 1450 2    60   Input ~ 0
ROW_2_G
Text GLabel 8400 1550 2    60   Input ~ 0
ROW_2_H
Text GLabel 8450 2350 2    60   Input ~ 0
ROW_3_A
Text GLabel 8450 2450 2    60   Input ~ 0
ROW_3_B
Text GLabel 8450 2550 2    60   Input ~ 0
ROW_3_C
Text GLabel 8450 2650 2    60   Input ~ 0
ROW_3_D
Text GLabel 8450 2750 2    60   Input ~ 0
ROW_3_E
Text GLabel 8450 2850 2    60   Input ~ 0
ROW_3_F
Text GLabel 8450 2950 2    60   Input ~ 0
ROW_3_G
Text GLabel 8450 3050 2    60   Input ~ 0
ROW_3_H
Text GLabel 8450 3950 2    60   Input ~ 0
LEVEL_0_A
Text GLabel 8450 4050 2    60   Input ~ 0
LEVEL_0_B
Text GLabel 8450 4150 2    60   Input ~ 0
LEVEL_0_C
Text GLabel 8450 4250 2    60   Input ~ 0
LEVEL_0_D
Text GLabel 8450 4350 2    60   Input ~ 0
LEVEL_0_E
Text GLabel 8450 4450 2    60   Input ~ 0
LEVEL_0_F
Text GLabel 8450 4550 2    60   Input ~ 0
LEVEL_0_G
Text GLabel 8450 4650 2    60   Input ~ 0
LEVEL_0_H
Text GLabel 6900 7500 2    60   Input ~ 0
LEVEL_0_H
Text GLabel 5700 6850 0    60   Input ~ 0
LEVEL_0_A
Text GLabel 5700 6950 0    60   Input ~ 0
LEVEL_0_B
Text GLabel 5700 7050 0    60   Input ~ 0
LEVEL_0_C
Text GLabel 5700 7150 0    60   Input ~ 0
LEVEL_0_D
Text GLabel 5700 7250 0    60   Input ~ 0
LEVEL_0_E
Text GLabel 5700 7350 0    60   Input ~ 0
LEVEL_0_F
Text GLabel 5700 7450 0    60   Input ~ 0
LEVEL_0_G
Text GLabel 3800 6900 0    60   Input ~ 0
LEVEL_1_A
Text GLabel 3800 7000 0    60   Input ~ 0
LEVEL_1_B
Text GLabel 3800 7100 0    60   Input ~ 0
LEVEL_1_C
Text GLabel 3800 7200 0    60   Input ~ 0
LEVEL_1_D
Text GLabel 3800 7300 0    60   Input ~ 0
LEVEL_1_E
Text GLabel 3800 7400 0    60   Input ~ 0
LEVEL_1_F
Text GLabel 3800 7500 0    60   Input ~ 0
LEVEL_1_G
Text GLabel 5000 7550 2    60   Input ~ 0
LEVEL_1_H
Text GLabel 8450 5450 2    60   Input ~ 0
LEVEL_1_A
Text GLabel 8450 5550 2    60   Input ~ 0
LEVEL_1_B
Text GLabel 8450 5650 2    60   Input ~ 0
LEVEL_1_C
Text GLabel 8450 5750 2    60   Input ~ 0
LEVEL_1_D
Text GLabel 8450 5850 2    60   Input ~ 0
LEVEL_1_E
Text GLabel 8450 5950 2    60   Input ~ 0
LEVEL_1_F
Text GLabel 8450 6050 2    60   Input ~ 0
LEVEL_1_G
Text GLabel 8450 6150 2    60   Input ~ 0
LEVEL_1_H
$EndSCHEMATC
