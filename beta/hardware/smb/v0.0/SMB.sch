EESchema Schematic File Version 2  date 02/05/2012 01:38:42
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
LIBS:special
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
LIBS:hr911105_rj45
LIBS:Small_connectors
LIBS:SMB-cache
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 2
Title ""
Date "1 may 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 3X2PIN J?
U 1 1 4FA07329
P 10050 2850
F 0 "J?" H 10075 2725 60  0000 C CNN
F 1 "3X2PIN" V 10225 2850 60  0000 C CNN
	1    10050 2850
	1    0    0    -1  
$EndComp
Wire Notes Line
	10950 3500 10950 6150
Wire Notes Line
	9300 3500 10950 3500
Wire Notes Line
	9300 3500 9300 6150
Wire Wire Line
	6650 3350 6600 3350
Connection ~ 10500 4400
Wire Wire Line
	10500 4450 10500 4300
Wire Wire Line
	10500 4400 9850 4400
Wire Wire Line
	9850 4400 9850 3950
Wire Wire Line
	9850 3950 9800 3950
Connection ~ 10300 3800
Wire Wire Line
	10500 3800 9800 3800
Wire Wire Line
	9850 3800 9850 3750
Wire Wire Line
	7150 1700 7150 1750
Wire Wire Line
	7250 2300 6600 2300
Wire Wire Line
	6650 3800 6600 3800
Wire Wire Line
	6650 2600 6600 2600
Wire Wire Line
	6650 2400 6600 2400
Wire Wire Line
	10400 5450 10400 5050
Connection ~ 10600 5100
Wire Wire Line
	10600 5100 10550 5100
Wire Wire Line
	10550 5100 10550 5050
Wire Wire Line
	10350 5050 10350 5100
Wire Wire Line
	9950 5600 9950 5700
Wire Wire Line
	9950 5700 9550 5700
Wire Wire Line
	9850 5950 9850 6050
Wire Wire Line
	9650 5650 9650 5750
Wire Wire Line
	7800 4650 7800 4700
Wire Wire Line
	6600 4100 7350 4100
Wire Wire Line
	8800 2700 8750 2700
Connection ~ 4650 4300
Wire Wire Line
	4700 4300 4650 4300
Wire Wire Line
	4650 4400 4700 4400
Wire Wire Line
	7500 3400 7500 2800
Wire Wire Line
	7500 2800 6600 2800
Connection ~ 4600 2400
Wire Wire Line
	4700 2400 4300 2400
Wire Wire Line
	4300 2400 4300 2550
Connection ~ 4600 2200
Wire Wire Line
	4600 2400 4600 1900
Connection ~ 7500 3350
Wire Wire Line
	7500 3800 7500 3850
Wire Wire Line
	8200 3350 8150 3350
Wire Wire Line
	3800 2950 3800 3050
Wire Wire Line
	4000 3200 4000 3300
Wire Wire Line
	8200 3800 8200 3850
Wire Wire Line
	7500 3350 7550 3350
Connection ~ 8200 3350
Connection ~ 4600 2100
Wire Wire Line
	3800 2550 3800 2100
Wire Wire Line
	3800 2100 4700 2100
Wire Wire Line
	4000 2800 4000 2200
Wire Wire Line
	4000 2200 4700 2200
Wire Wire Line
	4300 2950 4300 3050
Wire Wire Line
	8200 2700 8200 3400
Wire Wire Line
	4700 4200 4650 4200
Wire Wire Line
	4650 4200 4650 4450
Connection ~ 4650 4400
Wire Wire Line
	8250 2700 6600 2700
Connection ~ 8200 2700
Wire Notes Line
	8350 3000 7350 3000
Wire Notes Line
	8350 3000 8350 3950
Wire Notes Line
	8350 3950 7350 3950
Wire Notes Line
	7350 3950 7350 3000
Wire Wire Line
	7750 4100 7800 4100
Wire Wire Line
	7800 4100 7800 4150
Wire Wire Line
	6650 3550 6600 3550
Wire Wire Line
	9650 5150 9650 5050
Connection ~ 9650 5700
Wire Wire Line
	9950 5050 9950 5200
Wire Wire Line
	10000 5050 10000 5100
Wire Wire Line
	10000 5100 10350 5100
Wire Wire Line
	10600 5050 10600 5150
Wire Wire Line
	10500 5050 10500 5250
Wire Wire Line
	10500 5250 10850 5250
Wire Wire Line
	10850 5250 10850 5150
Wire Wire Line
	10450 5050 10450 5300
Wire Wire Line
	6650 2500 6600 2500
Wire Wire Line
	6650 3700 6600 3700
Wire Wire Line
	6650 4000 6600 4000
Wire Wire Line
	7150 2250 7150 2300
Connection ~ 7150 2300
Wire Notes Line
	9300 4700 10950 4700
Wire Notes Line
	9300 6150 10950 6150
Connection ~ 9850 3800
Wire Wire Line
	9800 3900 9900 3900
Wire Wire Line
	9900 3900 9900 4300
Wire Wire Line
	9900 4300 10300 4300
Wire Wire Line
	9800 3850 10050 3850
Wire Wire Line
	10050 3850 10050 4050
Wire Wire Line
	10300 4300 10300 4450
Wire Wire Line
	6650 3450 6600 3450
Text GLabel 6650 3450 2    25   BiDi ~ 0
SCL
Text GLabel 6650 3350 2    25   BiDi ~ 0
SDA
Text GLabel 10300 4450 3    25   BiDi ~ 0
SCL
Text GLabel 10500 4450 3    25   BiDi ~ 0
SDA
$Comp
L GND #PWR?
U 1 1 4FA06DB4
P 10050 4050
F 0 "#PWR?" H 10050 4050 30  0001 C CNN
F 1 "GND" H 10050 3980 30  0001 C CNN
	1    10050 4050
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4FA06D7A
P 10500 4050
F 0 "R?" V 10580 4050 50  0000 C CNN
F 1 "R" V 10500 4050 50  0000 C CNN
	1    10500 4050
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4FA06D51
P 10300 4050
F 0 "R?" V 10380 4050 50  0000 C CNN
F 1 "R" V 10300 4050 50  0000 C CNN
	1    10300 4050
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 4FA06D12
P 9850 3750
F 0 "#PWR?" H 9850 3710 30  0001 C CNN
F 1 "+3.3V" H 9850 3860 30  0000 C CNN
	1    9850 3750
	1    0    0    -1  
$EndComp
$Comp
L 4PIN J?
U 1 1 4FA06CC5
P 9800 3850
F 0 "J?" H 10000 3850 60  0000 C CNN
F 1 "I2C" H 9825 3775 60  0000 C CNN
	1    9800 3850
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 4FA065E2
P 7150 1700
F 0 "#PWR?" H 7150 1660 30  0001 C CNN
F 1 "+3.3V" H 7150 1810 30  0000 C CNN
	1    7150 1700
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4FA065D3
P 7150 2000
F 0 "R?" V 7230 2000 50  0000 C CNN
F 1 "10k" V 7150 2000 50  0000 C CNN
F 2 "SM0603" H 7150 2000 60  0001 C CNN
	1    7150 2000
	1    0    0    -1  
$EndComp
$Sheet
S 600  600  1200 700 
U 4F9D6DA9
F0 "Ethernet" 60
F1 "ethernet.sch" 60
$EndSheet
Text GLabel 6650 2600 2    25   Output ~ 0
SPI_CLK
Text GLabel 6650 2500 2    25   Input ~ 0
SPI_MISO
Text GLabel 6650 2400 2    25   Output ~ 0
SPI_MOSI
Text GLabel 7250 2300 2    25   Output ~ 0
ETH_CS
Text GLabel 6650 4000 2    25   Input ~ 0
ETH_INT
Text Notes 8700 2550 2    25   ~ 0
Remove this to use Xtal
Text GLabel 6650 3800 2    25   Output ~ 0
TX
Text GLabel 6650 3700 2    25   Input ~ 0
RX
Text GLabel 10450 5300 3    25   Output ~ 0
RX
Text GLabel 10400 5450 3    25   Input ~ 0
TX
$Comp
L +3.3V #PWR?
U 1 1 4FA02610
P 10850 5150
F 0 "#PWR?" H 10850 5110 30  0001 C CNN
F 1 "+3.3V" H 10850 5260 30  0000 C CNN
	1    10850 5150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4FA025EE
P 10600 5150
F 0 "#PWR?" H 10600 5150 30  0001 C CNN
F 1 "GND" H 10600 5080 30  0001 C CNN
	1    10600 5150
	1    0    0    -1  
$EndComp
$Comp
L 6PIN J?
U 1 1 4FA02579
P 10450 5050
F 0 "J?" H 10400 5150 60  0000 C CNN
F 1 "SERIAL_REV" H 10550 5250 60  0000 C CNN
	1    10450 5050
	1    0    0    -1  
$EndComp
$Comp
L 2PIN J?
U 1 1 4FA01D97
P 9950 5050
F 0 "J?" H 10100 5050 60  0000 C CNN
F 1 "RTS_RESET" H 10025 5150 60  0000 C CNN
	1    9950 5050
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 4FA01B9D
P 9950 5400
F 0 "C?" H 10000 5500 50  0000 L CNN
F 1 "0.1uF" H 10000 5300 50  0000 L CNN
	1    9950 5400
	1    0    0    -1  
$EndComp
Text GLabel 9550 5700 0    25   Output ~ 0
/RESET
$Comp
L +3.3V #PWR?
U 1 1 4FA01B1B
P 9650 5050
F 0 "#PWR?" H 9650 5010 30  0001 C CNN
F 1 "+3.3V" H 9650 5160 30  0000 C CNN
	1    9650 5050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4FA01B14
P 9850 6050
F 0 "#PWR?" H 9850 6050 30  0001 C CNN
F 1 "GND" H 9850 5980 30  0001 C CNN
	1    9850 6050
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH_SMALL SW?
U 1 1 4FA01B08
P 9750 5850
F 0 "SW?" H 9900 5850 30  0000 C CNN
F 1 "reset_sw" H 9650 5850 30  0000 C CNN
	1    9750 5850
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4FA01AF2
P 9650 5400
F 0 "R?" V 9730 5400 50  0000 C CNN
F 1 "10k" V 9650 5400 50  0000 C CNN
	1    9650 5400
	1    0    0    -1  
$EndComp
Text GLabel 6650 3550 2    25   Input ~ 0
/RESET
$Comp
L GND #PWR?
U 1 1 4FA01A42
P 7800 4700
F 0 "#PWR?" H 7800 4700 30  0001 C CNN
F 1 "GND" H 7800 4630 30  0001 C CNN
	1    7800 4700
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4FA01A39
P 7800 4400
F 0 "R?" V 7880 4400 50  0000 C CNN
F 1 "R" V 7800 4400 50  0000 C CNN
	1    7800 4400
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 4FA019FA
P 7550 4100
F 0 "D?" H 7550 4200 50  0000 C CNN
F 1 "LED" H 7550 4000 50  0000 C CNN
	1    7550 4100
	1    0    0    -1  
$EndComp
Text Notes 8150 3100 2    60   ~ 0
Not Mounted
Text GLabel 8800 2700 2    25   Input ~ 0
MAIN_CLK
$Comp
L R R?
U 1 1 4FA018C0
P 8500 2700
F 0 "R?" V 8580 2700 50  0000 C CNN
F 1 "0" V 8500 2700 50  0000 C CNN
F 2 "SM0603" H 8500 2700 60  0001 C CNN
	1    8500 2700
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 4FA016E5
P 4650 4450
F 0 "#PWR?" H 4650 4450 30  0001 C CNN
F 1 "GND" H 4650 4380 30  0001 C CNN
	1    4650 4450
	1    0    0    -1  
$EndComp
NoConn ~ 4700 2700
$Comp
L GND #PWR?
U 1 1 4FA0165A
P 4300 3050
F 0 "#PWR?" H 4300 3050 30  0001 C CNN
F 1 "GND" H 4300 2980 30  0001 C CNN
	1    4300 3050
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 4FA0164B
P 4300 2750
F 0 "C?" H 4350 2850 50  0000 L CNN
F 1 "0.1uF" H 4350 2650 50  0000 L CNN
	1    4300 2750
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA168-A IC?
U 1 1 4FA015F9
P 5600 3200
F 0 "IC?" H 4900 4450 50  0000 L BNN
F 1 "ATMEGA168-A" H 5850 1800 50  0000 L BNN
F 2 "TQFP32" H 5050 1850 50  0000 C CNN
	1    5600 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4FA01409
P 8200 3850
F 0 "#PWR?" H 8200 3850 30  0001 C CNN
F 1 "GND" H 8200 3780 30  0001 C CNN
	1    8200 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4FA01406
P 7500 3850
F 0 "#PWR?" H 7500 3850 30  0001 C CNN
F 1 "GND" H 7500 3780 30  0001 C CNN
	1    7500 3850
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 4FA013EC
P 8200 3600
F 0 "C?" H 8250 3700 50  0000 L CNN
F 1 "18pF" H 8000 3500 50  0000 L CNN
F 2 "SM0603" H 8200 3600 60  0001 C CNN
	1    8200 3600
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 4FA013E5
P 7500 3600
F 0 "C?" H 7550 3700 50  0000 L CNN
F 1 "18pF" H 7550 3500 50  0000 L CNN
F 2 "SM0603" H 7500 3600 60  0001 C CNN
	1    7500 3600
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL X?
U 1 1 4FA013C3
P 7850 3350
F 0 "X?" H 7850 3500 60  0000 C CNN
F 1 "16MHz" H 7850 3200 60  0000 C CNN
	1    7850 3350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 4FA012A3
P 3800 3050
F 0 "#PWR01" H 3800 3050 30  0001 C CNN
F 1 "GND" H 3800 2980 30  0001 C CNN
	1    3800 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 4FA0129F
P 4000 3300
F 0 "#PWR02" H 4000 3300 30  0001 C CNN
F 1 "GND" H 4000 3230 30  0001 C CNN
	1    4000 3300
	1    0    0    -1  
$EndComp
$Comp
L C C102
U 1 1 4FA0127E
P 4000 3000
F 0 "C102" V 4100 2750 50  0000 L CNN
F 1 "0.1uF" V 3950 2750 50  0000 L CNN
F 2 "SM0603" H 4000 3000 60  0001 C CNN
	1    4000 3000
	1    0    0    -1  
$EndComp
$Comp
L C C101
U 1 1 4FA01278
P 3800 2750
F 0 "C101" V 3700 2500 50  0000 L CNN
F 1 "0.1uF" V 3700 2800 50  0000 L CNN
F 2 "SM0603" H 3800 2750 60  0001 C CNN
	1    3800 2750
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR03
U 1 1 4FA01245
P 4600 1900
F 0 "#PWR03" H 4600 1860 30  0001 C CNN
F 1 "+3.3V" H 4600 2010 30  0000 C CNN
	1    4600 1900
	1    0    0    -1  
$EndComp
$EndSCHEMATC
