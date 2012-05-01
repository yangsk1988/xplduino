EESchema Schematic File Version 2  date 19/04/2012 10:46:38
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
LIBS:g5la-1-12vdc
LIBS:8_relays_i2c-cache
EELAYER 25  0
EELAYER END
$Descr A3 16535 11700
encoding utf-8
Sheet 1 1
Title ""
Date "19 apr 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L +5V #PWR?
U 1 1 4F8FD0CA
P 13650 1550
F 0 "#PWR?" H 13650 1640 20  0001 C CNN
F 1 "+5V" H 13650 1640 30  0000 C CNN
	1    13650 1550
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR?
U 1 1 4F8FD0C4
P 13300 1550
F 0 "#PWR?" H 13300 1500 20  0001 C CNN
F 1 "+12V" H 13300 1650 30  0000 C CNN
	1    13300 1550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4F8FD0BD
P 13300 2550
F 0 "#PWR?" H 13300 2550 30  0001 C CNN
F 1 "GND" H 13300 2480 30  0001 C CNN
	1    13300 2550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4F8FD0B0
P 13650 2550
F 0 "#PWR?" H 13650 2550 30  0001 C CNN
F 1 "GND" H 13650 2480 30  0001 C CNN
	1    13650 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	13650 2100 13650 2050
Wire Wire Line
	13650 2500 13650 2550
$Comp
L LED D205
U 1 1 4F8FD0A7
P 13650 2300
F 0 "D205" H 13650 2400 50  0000 C CNN
F 1 "LED" H 13650 2200 50  0000 C CNN
	1    13650 2300
	0    1    1    0   
$EndComp
$Comp
L R R205
U 1 1 4F8FD0A6
P 13650 1800
F 0 "R205" V 13730 1800 50  0000 C CNN
F 1 "R" V 13650 1800 50  0000 C CNN
	1    13650 1800
	1    0    0    -1  
$EndComp
$Comp
L R R212
U 1 1 4F8FD09A
P 13300 1800
F 0 "R212" V 13380 1800 50  0000 C CNN
F 1 "R" V 13300 1800 50  0000 C CNN
	1    13300 1800
	1    0    0    -1  
$EndComp
$Comp
L LED D212
U 1 1 4F8FD099
P 13300 2300
F 0 "D212" H 13300 2400 50  0000 C CNN
F 1 "LED" H 13300 2200 50  0000 C CNN
	1    13300 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	13300 2500 13300 2550
Wire Wire Line
	13300 2100 13300 2050
$Comp
L +5V #PWR01
U 1 1 4F8F223A
P 13300 900
F 0 "#PWR01" H 13300 990 20  0001 C CNN
F 1 "+5V" H 13300 990 30  0000 C CNN
	1    13300 900 
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR02
U 1 1 4F8F2230
P 13000 900
F 0 "#PWR02" H 13000 900 30  0001 C CNN
F 1 "GND" H 13000 830 30  0001 C CNN
	1    13000 900 
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR03
U 1 1 4F8F2228
P 12700 900
F 0 "#PWR03" H 12700 850 20  0001 C CNN
F 1 "+12V" H 12700 1000 30  0000 C CNN
	1    12700 900 
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG04
U 1 1 4F8F2221
P 12700 900
F 0 "#FLG04" H 12700 995 30  0001 C CNN
F 1 "PWR_FLAG" H 12700 1080 30  0000 C CNN
	1    12700 900 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG05
U 1 1 4F8F221F
P 13000 900
F 0 "#FLG05" H 13000 995 30  0001 C CNN
F 1 "PWR_FLAG" H 13000 1080 30  0000 C CNN
	1    13000 900 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG06
U 1 1 4F8F221D
P 13300 900
F 0 "#FLG06" H 13300 995 30  0001 C CNN
F 1 "PWR_FLAG" H 13300 1080 30  0000 C CNN
	1    13300 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	14350 1250 13950 1250
$Comp
L CONN_2 P109
U 1 1 4F8F1F11
P 14700 1150
F 0 "P109" V 14650 1150 40  0000 C CNN
F 1 "CONN_2" V 14750 1150 40  0000 C CNN
	1    14700 1150
	1    0    0    -1  
$EndComp
Text Label 5350 1750 0    60   ~ 0
CMD7
Text Label 5350 1650 0    60   ~ 0
CMD6
Text Label 5350 1550 0    60   ~ 0
CMD5
Text Label 5350 1450 0    60   ~ 0
CMD4
Text Label 5350 1350 0    60   ~ 0
CMD3
Text Label 5350 1250 0    60   ~ 0
CMD2
Text Label 5350 1150 0    60   ~ 0
CMD1
Text Label 5350 1050 0    60   ~ 0
CMD0
Wire Wire Line
	10200 10000 9550 10000
Wire Wire Line
	14000 4000 14000 4100
Wire Wire Line
	14000 4100 14100 4100
Wire Wire Line
	14100 4100 14100 3950
Wire Wire Line
	14100 3950 14200 3950
Wire Wire Line
	14200 3850 13900 3850
Wire Wire Line
	13900 3850 13900 4050
Wire Wire Line
	7900 10350 8200 10350
Wire Wire Line
	7900 7750 8200 7750
Wire Wire Line
	7900 5150 8200 5150
Wire Wire Line
	7900 2550 8200 2550
Wire Wire Line
	7100 2350 6950 2350
Wire Wire Line
	7100 4950 6750 4950
Wire Wire Line
	7100 6250 6650 6250
Wire Wire Line
	7100 8850 6450 8850
Wire Wire Line
	12950 4050 12950 3850
Wire Wire Line
	12950 3850 13250 3850
Wire Wire Line
	3950 2000 3950 1950
Wire Wire Line
	3950 1950 4050 1950
Wire Wire Line
	4050 1550 2950 1550
Wire Wire Line
	2950 1550 2950 1200
Wire Wire Line
	4050 1350 3650 1350
Wire Wire Line
	3650 1350 3650 1200
Wire Wire Line
	3400 1200 3400 1750
Connection ~ 3400 2250
Wire Wire Line
	3750 2250 2750 2250
Wire Wire Line
	2750 2250 2750 2200
Wire Wire Line
	5350 1650 6450 1650
Wire Wire Line
	6450 1650 6450 8850
Wire Wire Line
	5350 1450 6650 1450
Wire Wire Line
	6650 1450 6650 6250
Wire Wire Line
	6850 1250 6850 3650
Wire Wire Line
	6850 1250 5350 1250
Wire Wire Line
	7100 1050 5350 1050
Wire Wire Line
	9000 1450 9000 1500
Wire Wire Line
	7900 1750 7900 1800
Wire Wire Line
	14200 1050 14350 1050
Wire Wire Line
	9800 900  9800 800 
Connection ~ 9800 900 
Wire Wire Line
	10200 1200 10100 1200
Wire Wire Line
	10000 1300 10100 1300
Wire Wire Line
	11550 950  11475 950 
Wire Wire Line
	11475 950  11475 900 
Wire Wire Line
	11475 900  11325 900 
Wire Wire Line
	13950 1250 13950 1300
Wire Wire Line
	11325 1050 11550 1050
Wire Wire Line
	11325 1200 11475 1200
Wire Wire Line
	11475 1200 11475 1150
Wire Wire Line
	11475 1150 11550 1150
Wire Wire Line
	9550 900  10200 900 
Connection ~ 10000 900 
Wire Wire Line
	10100 1200 10100 1900
Connection ~ 10100 1300
Wire Wire Line
	7900 850  7900 800 
Wire Wire Line
	9000 1050 9000 950 
Wire Wire Line
	9000 950  9300 950 
Wire Wire Line
	5350 1150 6950 1150
Wire Wire Line
	6950 1150 6950 2350
Wire Wire Line
	5350 1350 6750 1350
Wire Wire Line
	6750 1350 6750 4950
Wire Wire Line
	5350 1550 6550 1550
Wire Wire Line
	6550 1550 6550 7550
Wire Wire Line
	6350 1750 6350 10150
Connection ~ 3050 2250
Wire Wire Line
	3750 1200 3750 1750
Wire Wire Line
	3050 1200 3050 1750
Wire Wire Line
	3300 1200 3300 1450
Wire Wire Line
	3300 1450 4050 1450
Wire Wire Line
	4050 1700 3950 1700
Wire Wire Line
	6350 1750 5350 1750
Wire Wire Line
	13250 3950 13150 3950
Wire Wire Line
	13150 3950 13150 4100
Wire Wire Line
	13150 4100 13050 4100
Wire Wire Line
	13050 4100 13050 4000
Wire Wire Line
	9550 1450 9550 1400
Connection ~ 9550 1900
Wire Wire Line
	9550 1850 9550 1900
Wire Wire Line
	10100 1900 9300 1900
Wire Wire Line
	9300 1900 9300 950 
Wire Wire Line
	9300 3200 9300 2250
Wire Wire Line
	9300 3200 10100 3200
Wire Wire Line
	10100 3200 10100 2500
Wire Wire Line
	9550 3150 9550 3200
Connection ~ 9550 3200
Wire Wire Line
	10200 2200 9550 2200
Wire Wire Line
	9550 2750 9550 2700
Wire Wire Line
	9300 2250 9000 2250
Wire Wire Line
	9000 2250 9000 2350
Wire Wire Line
	7900 2150 7900 2100
Connection ~ 10100 2600
Connection ~ 10000 2200
Wire Wire Line
	10100 2200 10100 2200
Wire Wire Line
	11550 2450 11475 2450
Wire Wire Line
	11475 2450 11475 2500
Wire Wire Line
	11475 2500 11325 2500
Wire Wire Line
	11325 2350 11550 2350
Wire Wire Line
	11325 2200 11475 2200
Wire Wire Line
	11475 2200 11475 2250
Wire Wire Line
	11475 2250 11550 2250
Wire Wire Line
	10000 2600 10100 2600
Wire Wire Line
	10100 2500 10200 2500
Connection ~ 9800 2200
Wire Wire Line
	9800 2200 9800 2100
Wire Wire Line
	7900 3050 7900 3100
Wire Wire Line
	9000 2750 9000 2800
Wire Wire Line
	9000 5350 9000 5400
Wire Wire Line
	7900 5650 7900 5700
Wire Wire Line
	9800 4800 9800 4700
Connection ~ 9800 4800
Wire Wire Line
	10200 5100 10100 5100
Wire Wire Line
	10000 5200 10100 5200
Wire Wire Line
	11550 4850 11475 4850
Wire Wire Line
	11475 4850 11475 4800
Wire Wire Line
	11475 4800 11325 4800
Wire Wire Line
	11325 4950 11550 4950
Wire Wire Line
	11325 5100 11475 5100
Wire Wire Line
	11475 5100 11475 5050
Wire Wire Line
	11475 5050 11550 5050
Wire Wire Line
	9550 4800 10200 4800
Connection ~ 10000 4800
Wire Wire Line
	10100 5100 10100 5800
Connection ~ 10100 5200
Wire Wire Line
	7900 4750 7900 4700
Wire Wire Line
	9000 4950 9000 4850
Wire Wire Line
	9000 4850 9300 4850
Wire Wire Line
	9550 5350 9550 5300
Connection ~ 9550 5800
Wire Wire Line
	9550 5750 9550 5800
Wire Wire Line
	10100 5800 9300 5800
Wire Wire Line
	9300 5800 9300 4850
Wire Wire Line
	9300 4500 9300 3550
Wire Wire Line
	9300 4500 10100 4500
Wire Wire Line
	10100 4500 10100 3800
Wire Wire Line
	9550 4450 9550 4500
Connection ~ 9550 4500
Wire Wire Line
	10200 3500 9550 3500
Wire Wire Line
	9550 4050 9550 4000
Wire Wire Line
	9300 3550 9000 3550
Wire Wire Line
	9000 3550 9000 3650
Wire Wire Line
	7900 3450 7900 3400
Connection ~ 10100 3900
Connection ~ 10000 3500
Wire Wire Line
	10100 3500 10100 3500
Wire Wire Line
	11550 3750 11475 3750
Wire Wire Line
	11475 3750 11475 3800
Wire Wire Line
	11475 3800 11325 3800
Wire Wire Line
	11325 3650 11550 3650
Wire Wire Line
	11325 3500 11475 3500
Wire Wire Line
	11475 3500 11475 3550
Wire Wire Line
	11475 3550 11550 3550
Wire Wire Line
	10000 3900 10100 3900
Wire Wire Line
	10100 3800 10200 3800
Connection ~ 9800 3500
Wire Wire Line
	9800 3500 9800 3400
Wire Wire Line
	7900 4350 7900 4400
Wire Wire Line
	9000 4050 9000 4100
Wire Wire Line
	9000 9250 9000 9300
Wire Wire Line
	7900 9550 7900 9600
Wire Wire Line
	9800 8700 9800 8600
Connection ~ 9800 8700
Wire Wire Line
	10200 9000 10100 9000
Wire Wire Line
	10000 9100 10100 9100
Wire Wire Line
	11550 8750 11475 8750
Wire Wire Line
	11475 8750 11475 8700
Wire Wire Line
	11475 8700 11325 8700
Wire Wire Line
	11325 8850 11550 8850
Wire Wire Line
	11325 9000 11475 9000
Wire Wire Line
	11475 9000 11475 8950
Wire Wire Line
	11475 8950 11550 8950
Wire Wire Line
	9550 8700 10200 8700
Connection ~ 10000 8700
Wire Wire Line
	10100 9000 10100 9700
Connection ~ 10100 9100
Wire Wire Line
	7900 8650 7900 8600
Wire Wire Line
	9000 8850 9000 8750
Wire Wire Line
	9000 8750 9300 8750
Wire Wire Line
	9550 9250 9550 9200
Connection ~ 9550 9700
Wire Wire Line
	9550 9650 9550 9700
Wire Wire Line
	10100 9700 9300 9700
Wire Wire Line
	9300 9700 9300 8750
Wire Wire Line
	9300 11000 9300 10050
Wire Wire Line
	9300 11000 10100 11000
Wire Wire Line
	10100 11000 10100 10300
Wire Wire Line
	9550 10950 9550 11000
Connection ~ 9550 11000
Wire Wire Line
	9550 10550 9550 10500
Wire Wire Line
	9300 10050 9000 10050
Wire Wire Line
	9000 10050 9000 10150
Wire Wire Line
	7900 9950 7900 9900
Connection ~ 10100 10400
Connection ~ 10000 10000
Wire Wire Line
	10100 10000 10100 10000
Wire Wire Line
	11550 10250 11475 10250
Wire Wire Line
	11475 10250 11475 10300
Wire Wire Line
	11475 10300 11325 10300
Wire Wire Line
	11325 10150 11550 10150
Wire Wire Line
	11325 10000 11475 10000
Wire Wire Line
	11475 10000 11475 10050
Wire Wire Line
	11475 10050 11550 10050
Wire Wire Line
	10000 10400 10100 10400
Wire Wire Line
	10100 10300 10200 10300
Connection ~ 9800 10000
Wire Wire Line
	9800 10000 9800 9900
Wire Wire Line
	7900 10850 7900 10900
Wire Wire Line
	9000 10550 9000 10600
Wire Wire Line
	9000 7950 9000 8000
Wire Wire Line
	7900 8250 7900 8300
Wire Wire Line
	9800 7400 9800 7300
Connection ~ 9800 7400
Wire Wire Line
	10200 7700 10100 7700
Wire Wire Line
	10000 7800 10100 7800
Wire Wire Line
	11550 7450 11475 7450
Wire Wire Line
	11475 7450 11475 7400
Wire Wire Line
	11475 7400 11325 7400
Wire Wire Line
	11325 7550 11550 7550
Wire Wire Line
	11325 7700 11475 7700
Wire Wire Line
	11475 7700 11475 7650
Wire Wire Line
	11475 7650 11550 7650
Wire Wire Line
	9550 7400 10200 7400
Connection ~ 10000 7400
Wire Wire Line
	10100 7700 10100 8400
Connection ~ 10100 7800
Wire Wire Line
	7900 7350 7900 7300
Wire Wire Line
	9000 7550 9000 7450
Wire Wire Line
	9000 7450 9300 7450
Wire Wire Line
	9550 7950 9550 7900
Connection ~ 9550 8400
Wire Wire Line
	9550 8350 9550 8400
Wire Wire Line
	10100 8400 9300 8400
Wire Wire Line
	9300 8400 9300 7450
Wire Wire Line
	9300 7100 9300 6150
Wire Wire Line
	9300 7100 10100 7100
Wire Wire Line
	10100 7100 10100 6400
Wire Wire Line
	9550 7050 9550 7100
Connection ~ 9550 7100
Wire Wire Line
	10200 6100 9550 6100
Wire Wire Line
	9550 6650 9550 6600
Wire Wire Line
	9300 6150 9000 6150
Wire Wire Line
	9000 6150 9000 6250
Wire Wire Line
	7900 6050 7900 6000
Connection ~ 10100 6500
Connection ~ 10000 6100
Wire Wire Line
	10100 6100 10100 6100
Wire Wire Line
	11550 6350 11475 6350
Wire Wire Line
	11475 6350 11475 6400
Wire Wire Line
	11475 6400 11325 6400
Wire Wire Line
	11325 6250 11550 6250
Wire Wire Line
	11325 6100 11475 6100
Wire Wire Line
	11475 6100 11475 6150
Wire Wire Line
	11475 6150 11550 6150
Wire Wire Line
	10000 6500 10100 6500
Wire Wire Line
	10100 6400 10200 6400
Connection ~ 9800 6100
Wire Wire Line
	9800 6100 9800 6000
Wire Wire Line
	7900 6950 7900 7000
Wire Wire Line
	9000 6650 9000 6700
Wire Wire Line
	6350 10150 7100 10150
Wire Wire Line
	6550 7550 7100 7550
Wire Wire Line
	6850 3650 7100 3650
Wire Wire Line
	7900 1250 8200 1250
Wire Wire Line
	7900 3850 8200 3850
Wire Wire Line
	7900 6450 8200 6450
Wire Wire Line
	7900 9050 8200 9050
$Comp
L CONN_6 P112
U 1 1 4F8DC785
P 14550 3700
F 0 "P112" V 14500 3700 60  0000 C CNN
F 1 "CONN_6" V 14600 3700 60  0000 C CNN
	1    14550 3700
	1    0    0    1   
$EndComp
Text Label 14200 3750 2    60   ~ 0
SCL
Text Label 14200 3650 2    60   ~ 0
SDA
$Comp
L +5V #PWR07
U 1 1 4F8DC784
P 14000 4000
F 0 "#PWR07" H 14000 4090 20  0001 C CNN
F 1 "+5V" H 14000 4090 30  0000 C CNN
	1    14000 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 4F8DC783
P 13900 4050
F 0 "#PWR08" H 13900 4050 30  0001 C CNN
F 1 "GND" H 13900 3980 30  0001 C CNN
	1    13900 4050
	1    0    0    -1  
$EndComp
Text Label 14200 3550 2    60   ~ 0
/INT
Text Label 14200 3450 2    60   ~ 0
spare
Text Label 13250 3450 2    60   ~ 0
spare
Text Label 8200 10350 2    60   ~ 0
OUT7
Text Label 8200 9050 2    60   ~ 0
OUT6
Text Label 8200 7750 2    60   ~ 0
OUT5
Text Label 8200 6450 2    60   ~ 0
OUT4
Text Label 8200 5150 2    60   ~ 0
OUT3
Text Label 8200 3850 2    60   ~ 0
OUT2
Text Label 8200 2550 2    60   ~ 0
OUT1
Text Label 8200 1250 2    60   ~ 0
OUT0
Text Label 13250 3550 2    60   ~ 0
/INT
$Comp
L G5LA-1-12VDC K105
U 1 1 4F8DB9F8
P 10700 6250
F 0 "K105" H 10400 6250 60  0000 C CNN
F 1 "G5LA-1-12VDC" H 10750 5950 60  0000 C CNN
	1    10700 6250
	1    0    0    -1  
$EndComp
$Comp
L CONN_3 P105
U 1 1 4F8DB9F7
P 11900 6250
F 0 "P105" V 11850 6250 50  0000 C CNN
F 1 "CONN_3" V 11950 6250 40  0000 C CNN
	1    11900 6250
	1    0    0    -1  
$EndComp
$Comp
L DIODE D113
U 1 1 4F8DB9F6
P 10000 6300
F 0 "D113" H 10000 6400 40  0000 C CNN
F 1 "DIODE" H 10000 6200 40  0000 C CNN
	1    10000 6300
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR09
U 1 1 4F8DB9F5
P 9800 6000
F 0 "#PWR09" H 9800 5950 20  0001 C CNN
F 1 "+12V" H 9800 6100 30  0000 C CNN
	1    9800 6000
	1    0    0    -1  
$EndComp
$Comp
L R R132
U 1 1 4F8DB9F4
P 9550 6350
F 0 "R132" V 9630 6350 50  0000 C CNN
F 1 "R" V 9550 6350 50  0000 C CNN
	1    9550 6350
	1    0    0    -1  
$EndComp
$Comp
L NPN Q113
U 1 1 4F8DB9F3
P 8900 6450
F 0 "Q113" H 8900 6300 50  0000 R CNN
F 1 "DSS20201L NPN" V 8900 7250 50  0000 R CNN
	1    8900 6450
	1    0    0    -1  
$EndComp
$Comp
L R R124
U 1 1 4F8DB9F2
P 8450 6450
F 0 "R124" V 8530 6450 50  0000 C CNN
F 1 "R" V 8450 6450 50  0000 C CNN
	1    8450 6450
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR010
U 1 1 4F8DB9F1
P 9000 6700
F 0 "#PWR010" H 9000 6700 30  0001 C CNN
F 1 "GND" H 9000 6630 30  0001 C CNN
	1    9000 6700
	1    0    0    -1  
$EndComp
$Comp
L PNP Q105
U 1 1 4F8DB9F0
P 7800 6250
F 0 "Q105" H 7800 6100 60  0000 R CNN
F 1 "PNP" H 7800 6400 60  0000 R CNN
	1    7800 6250
	1    0    0    1   
$EndComp
$Comp
L R R116
U 1 1 4F8DB9EF
P 7900 6700
F 0 "R116" V 7980 6700 50  0000 C CNN
F 1 "R" V 7900 6700 50  0000 C CNN
	1    7900 6700
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR011
U 1 1 4F8DB9EE
P 7900 6000
F 0 "#PWR011" H 7900 6090 20  0001 C CNN
F 1 "+5V" H 7900 6090 30  0000 C CNN
	1    7900 6000
	1    0    0    -1  
$EndComp
$Comp
L R R108
U 1 1 4F8DB9ED
P 7350 6250
F 0 "R108" V 7430 6250 50  0000 C CNN
F 1 "R" V 7350 6250 50  0000 C CNN
	1    7350 6250
	0    -1   -1   0   
$EndComp
$Comp
L LED D105
U 1 1 4F8DB9EC
P 9550 6850
F 0 "D105" H 9550 6950 50  0000 C CNN
F 1 "LED" H 9550 6750 50  0000 C CNN
	1    9550 6850
	0    1    1    0   
$EndComp
$Comp
L GND #PWR012
U 1 1 4F8DB9EB
P 7900 7000
F 0 "#PWR012" H 7900 7000 30  0001 C CNN
F 1 "GND" H 7900 6930 30  0001 C CNN
	1    7900 7000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 4F8DB9EA
P 7900 8300
F 0 "#PWR013" H 7900 8300 30  0001 C CNN
F 1 "GND" H 7900 8230 30  0001 C CNN
	1    7900 8300
	1    0    0    -1  
$EndComp
$Comp
L LED D106
U 1 1 4F8DB9E9
P 9550 8150
F 0 "D106" H 9550 8250 50  0000 C CNN
F 1 "LED" H 9550 8050 50  0000 C CNN
	1    9550 8150
	0    1    1    0   
$EndComp
$Comp
L R R109
U 1 1 4F8DB9E8
P 7350 7550
F 0 "R109" V 7430 7550 50  0000 C CNN
F 1 "R" V 7350 7550 50  0000 C CNN
	1    7350 7550
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR014
U 1 1 4F8DB9E7
P 7900 7300
F 0 "#PWR014" H 7900 7390 20  0001 C CNN
F 1 "+5V" H 7900 7390 30  0000 C CNN
	1    7900 7300
	1    0    0    -1  
$EndComp
$Comp
L R R117
U 1 1 4F8DB9E6
P 7900 8000
F 0 "R117" V 7980 8000 50  0000 C CNN
F 1 "R" V 7900 8000 50  0000 C CNN
	1    7900 8000
	-1   0    0    1   
$EndComp
$Comp
L PNP Q106
U 1 1 4F8DB9E5
P 7800 7550
F 0 "Q106" H 7800 7400 60  0000 R CNN
F 1 "PNP" H 7800 7700 60  0000 R CNN
	1    7800 7550
	1    0    0    1   
$EndComp
$Comp
L GND #PWR015
U 1 1 4F8DB9E4
P 9000 8000
F 0 "#PWR015" H 9000 8000 30  0001 C CNN
F 1 "GND" H 9000 7930 30  0001 C CNN
	1    9000 8000
	1    0    0    -1  
$EndComp
$Comp
L R R125
U 1 1 4F8DB9E3
P 8450 7750
F 0 "R125" V 8530 7750 50  0000 C CNN
F 1 "R" V 8450 7750 50  0000 C CNN
	1    8450 7750
	0    -1   -1   0   
$EndComp
$Comp
L NPN Q114
U 1 1 4F8DB9E2
P 8900 7750
F 0 "Q114" H 8900 7600 50  0000 R CNN
F 1 "DSS20201L NPN" V 8900 8550 50  0000 R CNN
	1    8900 7750
	1    0    0    -1  
$EndComp
$Comp
L R R133
U 1 1 4F8DB9E1
P 9550 7650
F 0 "R133" V 9630 7650 50  0000 C CNN
F 1 "R" V 9550 7650 50  0000 C CNN
	1    9550 7650
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR016
U 1 1 4F8DB9E0
P 9800 7300
F 0 "#PWR016" H 9800 7250 20  0001 C CNN
F 1 "+12V" H 9800 7400 30  0000 C CNN
	1    9800 7300
	1    0    0    -1  
$EndComp
$Comp
L DIODE D114
U 1 1 4F8DB9DF
P 10000 7600
F 0 "D114" H 10000 7700 40  0000 C CNN
F 1 "DIODE" H 10000 7500 40  0000 C CNN
	1    10000 7600
	0    -1   -1   0   
$EndComp
$Comp
L CONN_3 P106
U 1 1 4F8DB9DE
P 11900 7550
F 0 "P106" V 11850 7550 50  0000 C CNN
F 1 "CONN_3" V 11950 7550 40  0000 C CNN
	1    11900 7550
	1    0    0    -1  
$EndComp
$Comp
L G5LA-1-12VDC K106
U 1 1 4F8DB9DD
P 10700 7550
F 0 "K106" H 10400 7550 60  0000 C CNN
F 1 "G5LA-1-12VDC" H 10750 7250 60  0000 C CNN
	1    10700 7550
	1    0    0    -1  
$EndComp
$Comp
L G5LA-1-12VDC K108
U 1 1 4F8DB9DC
P 10700 10150
F 0 "K108" H 10400 10150 60  0000 C CNN
F 1 "G5LA-1-12VDC" H 10750 9850 60  0000 C CNN
	1    10700 10150
	1    0    0    -1  
$EndComp
$Comp
L CONN_3 P108
U 1 1 4F8DB9DB
P 11900 10150
F 0 "P108" V 11850 10150 50  0000 C CNN
F 1 "CONN_3" V 11950 10150 40  0000 C CNN
	1    11900 10150
	1    0    0    -1  
$EndComp
$Comp
L DIODE D116
U 1 1 4F8DB9DA
P 10000 10200
F 0 "D116" H 10000 10300 40  0000 C CNN
F 1 "DIODE" H 10000 10100 40  0000 C CNN
	1    10000 10200
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR017
U 1 1 4F8DB9D9
P 9800 9900
F 0 "#PWR017" H 9800 9850 20  0001 C CNN
F 1 "+12V" H 9800 10000 30  0000 C CNN
	1    9800 9900
	1    0    0    -1  
$EndComp
$Comp
L R R135
U 1 1 4F8DB9D8
P 9550 10250
F 0 "R135" V 9630 10250 50  0000 C CNN
F 1 "R" V 9550 10250 50  0000 C CNN
	1    9550 10250
	1    0    0    -1  
$EndComp
$Comp
L NPN Q116
U 1 1 4F8DB9D7
P 8900 10350
F 0 "Q116" H 8900 10200 50  0000 R CNN
F 1 "DSS20201L NPN" V 8900 11150 50  0000 R CNN
	1    8900 10350
	1    0    0    -1  
$EndComp
$Comp
L R R127
U 1 1 4F8DB9D6
P 8450 10350
F 0 "R127" V 8530 10350 50  0000 C CNN
F 1 "R" V 8450 10350 50  0000 C CNN
	1    8450 10350
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR018
U 1 1 4F8DB9D5
P 9000 10600
F 0 "#PWR018" H 9000 10600 30  0001 C CNN
F 1 "GND" H 9000 10530 30  0001 C CNN
	1    9000 10600
	1    0    0    -1  
$EndComp
$Comp
L PNP Q108
U 1 1 4F8DB9D4
P 7800 10150
F 0 "Q108" H 7800 10000 60  0000 R CNN
F 1 "PNP" H 7800 10300 60  0000 R CNN
	1    7800 10150
	1    0    0    1   
$EndComp
$Comp
L R R119
U 1 1 4F8DB9D3
P 7900 10600
F 0 "R119" V 7980 10600 50  0000 C CNN
F 1 "R" V 7900 10600 50  0000 C CNN
	1    7900 10600
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR019
U 1 1 4F8DB9D2
P 7900 9900
F 0 "#PWR019" H 7900 9990 20  0001 C CNN
F 1 "+5V" H 7900 9990 30  0000 C CNN
	1    7900 9900
	1    0    0    -1  
$EndComp
$Comp
L R R111
U 1 1 4F8DB9D1
P 7350 10150
F 0 "R111" V 7430 10150 50  0000 C CNN
F 1 "R" V 7350 10150 50  0000 C CNN
	1    7350 10150
	0    -1   -1   0   
$EndComp
$Comp
L LED D108
U 1 1 4F8DB9D0
P 9550 10750
F 0 "D108" H 9550 10850 50  0000 C CNN
F 1 "LED" H 9550 10650 50  0000 C CNN
	1    9550 10750
	0    1    1    0   
$EndComp
$Comp
L GND #PWR020
U 1 1 4F8DB9CF
P 7900 10900
F 0 "#PWR020" H 7900 10900 30  0001 C CNN
F 1 "GND" H 7900 10830 30  0001 C CNN
	1    7900 10900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 4F8DB9CE
P 7900 9600
F 0 "#PWR021" H 7900 9600 30  0001 C CNN
F 1 "GND" H 7900 9530 30  0001 C CNN
	1    7900 9600
	1    0    0    -1  
$EndComp
$Comp
L LED D107
U 1 1 4F8DB9CD
P 9550 9450
F 0 "D107" H 9550 9550 50  0000 C CNN
F 1 "LED" H 9550 9350 50  0000 C CNN
	1    9550 9450
	0    1    1    0   
$EndComp
$Comp
L R R110
U 1 1 4F8DB9CC
P 7350 8850
F 0 "R110" V 7430 8850 50  0000 C CNN
F 1 "R" V 7350 8850 50  0000 C CNN
	1    7350 8850
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR022
U 1 1 4F8DB9CB
P 7900 8600
F 0 "#PWR022" H 7900 8690 20  0001 C CNN
F 1 "+5V" H 7900 8690 30  0000 C CNN
	1    7900 8600
	1    0    0    -1  
$EndComp
$Comp
L R R118
U 1 1 4F8DB9CA
P 7900 9300
F 0 "R118" V 7980 9300 50  0000 C CNN
F 1 "R" V 7900 9300 50  0000 C CNN
	1    7900 9300
	-1   0    0    1   
$EndComp
$Comp
L PNP Q107
U 1 1 4F8DB9C9
P 7800 8850
F 0 "Q107" H 7800 8700 60  0000 R CNN
F 1 "PNP" H 7800 9000 60  0000 R CNN
	1    7800 8850
	1    0    0    1   
$EndComp
$Comp
L GND #PWR023
U 1 1 4F8DB9C8
P 9000 9300
F 0 "#PWR023" H 9000 9300 30  0001 C CNN
F 1 "GND" H 9000 9230 30  0001 C CNN
	1    9000 9300
	1    0    0    -1  
$EndComp
$Comp
L R R126
U 1 1 4F8DB9C7
P 8450 9050
F 0 "R126" V 8530 9050 50  0000 C CNN
F 1 "R" V 8450 9050 50  0000 C CNN
	1    8450 9050
	0    -1   -1   0   
$EndComp
$Comp
L NPN Q115
U 1 1 4F8DB9C6
P 8900 9050
F 0 "Q115" H 8900 8900 50  0000 R CNN
F 1 "DSS20201L NPN" V 8900 9850 50  0000 R CNN
	1    8900 9050
	1    0    0    -1  
$EndComp
$Comp
L R R134
U 1 1 4F8DB9C5
P 9550 8950
F 0 "R134" V 9630 8950 50  0000 C CNN
F 1 "R" V 9550 8950 50  0000 C CNN
	1    9550 8950
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR024
U 1 1 4F8DB9C4
P 9800 8600
F 0 "#PWR024" H 9800 8550 20  0001 C CNN
F 1 "+12V" H 9800 8700 30  0000 C CNN
	1    9800 8600
	1    0    0    -1  
$EndComp
$Comp
L DIODE D115
U 1 1 4F8DB9C3
P 10000 8900
F 0 "D115" H 10000 9000 40  0000 C CNN
F 1 "DIODE" H 10000 8800 40  0000 C CNN
	1    10000 8900
	0    -1   -1   0   
$EndComp
$Comp
L CONN_3 P107
U 1 1 4F8DB9C2
P 11900 8850
F 0 "P107" V 11850 8850 50  0000 C CNN
F 1 "CONN_3" V 11950 8850 40  0000 C CNN
	1    11900 8850
	1    0    0    -1  
$EndComp
$Comp
L G5LA-1-12VDC K107
U 1 1 4F8DB9C1
P 10700 8850
F 0 "K107" H 10400 8850 60  0000 C CNN
F 1 "G5LA-1-12VDC" H 10750 8550 60  0000 C CNN
	1    10700 8850
	1    0    0    -1  
$EndComp
$Comp
L G5LA-1-12VDC K103
U 1 1 4F8DB9B2
P 10700 3650
F 0 "K103" H 10400 3650 60  0000 C CNN
F 1 "G5LA-1-12VDC" H 10750 3350 60  0000 C CNN
	1    10700 3650
	1    0    0    -1  
$EndComp
$Comp
L CONN_3 P103
U 1 1 4F8DB9B1
P 11900 3650
F 0 "P103" V 11850 3650 50  0000 C CNN
F 1 "CONN_3" V 11950 3650 40  0000 C CNN
	1    11900 3650
	1    0    0    -1  
$EndComp
$Comp
L DIODE D111
U 1 1 4F8DB9B0
P 10000 3700
F 0 "D111" H 10000 3800 40  0000 C CNN
F 1 "DIODE" H 10000 3600 40  0000 C CNN
	1    10000 3700
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR025
U 1 1 4F8DB9AF
P 9800 3400
F 0 "#PWR025" H 9800 3350 20  0001 C CNN
F 1 "+12V" H 9800 3500 30  0000 C CNN
	1    9800 3400
	1    0    0    -1  
$EndComp
$Comp
L R R130
U 1 1 4F8DB9AE
P 9550 3750
F 0 "R130" V 9630 3750 50  0000 C CNN
F 1 "R" V 9550 3750 50  0000 C CNN
	1    9550 3750
	1    0    0    -1  
$EndComp
$Comp
L NPN Q111
U 1 1 4F8DB9AD
P 8900 3850
F 0 "Q111" H 8900 3700 50  0000 R CNN
F 1 "DSS20201L NPN" V 8900 4650 50  0000 R CNN
	1    8900 3850
	1    0    0    -1  
$EndComp
$Comp
L R R122
U 1 1 4F8DB9AC
P 8450 3850
F 0 "R122" V 8530 3850 50  0000 C CNN
F 1 "R" V 8450 3850 50  0000 C CNN
	1    8450 3850
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR026
U 1 1 4F8DB9AB
P 9000 4100
F 0 "#PWR026" H 9000 4100 30  0001 C CNN
F 1 "GND" H 9000 4030 30  0001 C CNN
	1    9000 4100
	1    0    0    -1  
$EndComp
$Comp
L PNP Q103
U 1 1 4F8DB9AA
P 7800 3650
F 0 "Q103" H 7800 3500 60  0000 R CNN
F 1 "PNP" H 7800 3800 60  0000 R CNN
	1    7800 3650
	1    0    0    1   
$EndComp
$Comp
L R R114
U 1 1 4F8DB9A9
P 7900 4100
F 0 "R114" V 7980 4100 50  0000 C CNN
F 1 "R" V 7900 4100 50  0000 C CNN
	1    7900 4100
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR027
U 1 1 4F8DB9A8
P 7900 3400
F 0 "#PWR027" H 7900 3490 20  0001 C CNN
F 1 "+5V" H 7900 3490 30  0000 C CNN
	1    7900 3400
	1    0    0    -1  
$EndComp
$Comp
L R R106
U 1 1 4F8DB9A7
P 7350 3650
F 0 "R106" V 7430 3650 50  0000 C CNN
F 1 "R" V 7350 3650 50  0000 C CNN
	1    7350 3650
	0    -1   -1   0   
$EndComp
$Comp
L LED D103
U 1 1 4F8DB9A6
P 9550 4250
F 0 "D103" H 9550 4350 50  0000 C CNN
F 1 "LED" H 9550 4150 50  0000 C CNN
	1    9550 4250
	0    1    1    0   
$EndComp
$Comp
L GND #PWR028
U 1 1 4F8DB9A5
P 7900 4400
F 0 "#PWR028" H 7900 4400 30  0001 C CNN
F 1 "GND" H 7900 4330 30  0001 C CNN
	1    7900 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR029
U 1 1 4F8DB9A4
P 7900 5700
F 0 "#PWR029" H 7900 5700 30  0001 C CNN
F 1 "GND" H 7900 5630 30  0001 C CNN
	1    7900 5700
	1    0    0    -1  
$EndComp
$Comp
L LED D104
U 1 1 4F8DB9A3
P 9550 5550
F 0 "D104" H 9550 5650 50  0000 C CNN
F 1 "LED" H 9550 5450 50  0000 C CNN
	1    9550 5550
	0    1    1    0   
$EndComp
$Comp
L R R107
U 1 1 4F8DB9A2
P 7350 4950
F 0 "R107" V 7430 4950 50  0000 C CNN
F 1 "R" V 7350 4950 50  0000 C CNN
	1    7350 4950
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR030
U 1 1 4F8DB9A1
P 7900 4700
F 0 "#PWR030" H 7900 4790 20  0001 C CNN
F 1 "+5V" H 7900 4790 30  0000 C CNN
	1    7900 4700
	1    0    0    -1  
$EndComp
$Comp
L R R115
U 1 1 4F8DB9A0
P 7900 5400
F 0 "R115" V 7980 5400 50  0000 C CNN
F 1 "R" V 7900 5400 50  0000 C CNN
	1    7900 5400
	-1   0    0    1   
$EndComp
$Comp
L PNP Q104
U 1 1 4F8DB99F
P 7800 4950
F 0 "Q104" H 7800 4800 60  0000 R CNN
F 1 "PNP" H 7800 5100 60  0000 R CNN
	1    7800 4950
	1    0    0    1   
$EndComp
$Comp
L GND #PWR031
U 1 1 4F8DB99E
P 9000 5400
F 0 "#PWR031" H 9000 5400 30  0001 C CNN
F 1 "GND" H 9000 5330 30  0001 C CNN
	1    9000 5400
	1    0    0    -1  
$EndComp
$Comp
L R R123
U 1 1 4F8DB99D
P 8450 5150
F 0 "R123" V 8530 5150 50  0000 C CNN
F 1 "R" V 8450 5150 50  0000 C CNN
	1    8450 5150
	0    -1   -1   0   
$EndComp
$Comp
L NPN Q112
U 1 1 4F8DB99C
P 8900 5150
F 0 "Q112" H 8900 5000 50  0000 R CNN
F 1 "DSS20201L NPN" V 8900 5950 50  0000 R CNN
	1    8900 5150
	1    0    0    -1  
$EndComp
$Comp
L R R131
U 1 1 4F8DB99B
P 9550 5050
F 0 "R131" V 9630 5050 50  0000 C CNN
F 1 "R" V 9550 5050 50  0000 C CNN
	1    9550 5050
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR032
U 1 1 4F8DB99A
P 9800 4700
F 0 "#PWR032" H 9800 4650 20  0001 C CNN
F 1 "+12V" H 9800 4800 30  0000 C CNN
	1    9800 4700
	1    0    0    -1  
$EndComp
$Comp
L DIODE D112
U 1 1 4F8DB999
P 10000 5000
F 0 "D112" H 10000 5100 40  0000 C CNN
F 1 "DIODE" H 10000 4900 40  0000 C CNN
	1    10000 5000
	0    -1   -1   0   
$EndComp
$Comp
L CONN_3 P104
U 1 1 4F8DB998
P 11900 4950
F 0 "P104" V 11850 4950 50  0000 C CNN
F 1 "CONN_3" V 11950 4950 40  0000 C CNN
	1    11900 4950
	1    0    0    -1  
$EndComp
$Comp
L G5LA-1-12VDC K104
U 1 1 4F8DB997
P 10700 4950
F 0 "K104" H 10400 4950 60  0000 C CNN
F 1 "G5LA-1-12VDC" H 10750 4650 60  0000 C CNN
	1    10700 4950
	1    0    0    -1  
$EndComp
$Comp
L G5LA-1-12VDC K102
U 1 1 4F8DB993
P 10700 2350
F 0 "K102" H 10400 2350 60  0000 C CNN
F 1 "G5LA-1-12VDC" H 10750 2050 60  0000 C CNN
	1    10700 2350
	1    0    0    -1  
$EndComp
$Comp
L CONN_3 P102
U 1 1 4F8DB992
P 11900 2350
F 0 "P102" V 11850 2350 50  0000 C CNN
F 1 "CONN_3" V 11950 2350 40  0000 C CNN
	1    11900 2350
	1    0    0    -1  
$EndComp
$Comp
L DIODE D110
U 1 1 4F8DB991
P 10000 2400
F 0 "D110" H 10000 2500 40  0000 C CNN
F 1 "DIODE" H 10000 2300 40  0000 C CNN
	1    10000 2400
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR033
U 1 1 4F8DB990
P 9800 2100
F 0 "#PWR033" H 9800 2050 20  0001 C CNN
F 1 "+12V" H 9800 2200 30  0000 C CNN
	1    9800 2100
	1    0    0    -1  
$EndComp
$Comp
L R R129
U 1 1 4F8DB98F
P 9550 2450
F 0 "R129" V 9630 2450 50  0000 C CNN
F 1 "R" V 9550 2450 50  0000 C CNN
	1    9550 2450
	1    0    0    -1  
$EndComp
$Comp
L NPN Q110
U 1 1 4F8DB98E
P 8900 2550
F 0 "Q110" H 8900 2400 50  0000 R CNN
F 1 "DSS20201L NPN" V 8900 3350 50  0000 R CNN
	1    8900 2550
	1    0    0    -1  
$EndComp
$Comp
L R R121
U 1 1 4F8DB98D
P 8450 2550
F 0 "R121" V 8530 2550 50  0000 C CNN
F 1 "R" V 8450 2550 50  0000 C CNN
	1    8450 2550
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR034
U 1 1 4F8DB98C
P 9000 2800
F 0 "#PWR034" H 9000 2800 30  0001 C CNN
F 1 "GND" H 9000 2730 30  0001 C CNN
	1    9000 2800
	1    0    0    -1  
$EndComp
$Comp
L PNP Q102
U 1 1 4F8DB98B
P 7800 2350
F 0 "Q102" H 7800 2200 60  0000 R CNN
F 1 "PNP" H 7800 2500 60  0000 R CNN
	1    7800 2350
	1    0    0    1   
$EndComp
$Comp
L R R113
U 1 1 4F8DB98A
P 7900 2800
F 0 "R113" V 7980 2800 50  0000 C CNN
F 1 "R" V 7900 2800 50  0000 C CNN
	1    7900 2800
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR035
U 1 1 4F8DB989
P 7900 2100
F 0 "#PWR035" H 7900 2190 20  0001 C CNN
F 1 "+5V" H 7900 2190 30  0000 C CNN
	1    7900 2100
	1    0    0    -1  
$EndComp
$Comp
L R R105
U 1 1 4F8DB988
P 7350 2350
F 0 "R105" V 7430 2350 50  0000 C CNN
F 1 "R" V 7350 2350 50  0000 C CNN
	1    7350 2350
	0    -1   -1   0   
$EndComp
$Comp
L LED D102
U 1 1 4F8DB987
P 9550 2950
F 0 "D102" H 9550 3050 50  0000 C CNN
F 1 "LED" H 9550 2850 50  0000 C CNN
	1    9550 2950
	0    1    1    0   
$EndComp
$Comp
L GND #PWR036
U 1 1 4F8DB986
P 7900 3100
F 0 "#PWR036" H 7900 3100 30  0001 C CNN
F 1 "GND" H 7900 3030 30  0001 C CNN
	1    7900 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR037
U 1 1 4F8DB21E
P 7900 1800
F 0 "#PWR037" H 7900 1800 30  0001 C CNN
F 1 "GND" H 7900 1730 30  0001 C CNN
	1    7900 1800
	1    0    0    -1  
$EndComp
$Comp
L LED D101
U 1 1 4F780532
P 9550 1650
F 0 "D101" H 9550 1750 50  0000 C CNN
F 1 "LED" H 9550 1550 50  0000 C CNN
	1    9550 1650
	0    1    1    0   
$EndComp
$Comp
L GND #PWR038
U 1 1 4F8DB74C
P 12950 4050
F 0 "#PWR038" H 12950 4050 30  0001 C CNN
F 1 "GND" H 12950 3980 30  0001 C CNN
	1    12950 4050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR039
U 1 1 4F8DB748
P 13050 4000
F 0 "#PWR039" H 13050 4090 20  0001 C CNN
F 1 "+5V" H 13050 4090 30  0000 C CNN
	1    13050 4000
	1    0    0    -1  
$EndComp
Text Label 13250 3650 2    60   ~ 0
SDA
Text Label 13250 3750 2    60   ~ 0
SCL
$Comp
L CONN_6 P110
U 1 1 4F8DB709
P 13600 3700
F 0 "P110" V 13550 3700 60  0000 C CNN
F 1 "CONN_6" V 13650 3700 60  0000 C CNN
	1    13600 3700
	1    0    0    1   
$EndComp
Text Label 4050 1150 2    60   ~ 0
SDA
Text Label 4050 1050 2    60   ~ 0
SCL
$Comp
L GND #PWR040
U 1 1 4F8DB6C7
P 3950 2000
F 0 "#PWR040" H 3950 2000 30  0001 C CNN
F 1 "GND" H 3950 1930 30  0001 C CNN
	1    3950 2000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR041
U 1 1 4F8DB6C2
P 3950 1700
F 0 "#PWR041" H 3950 1790 20  0001 C CNN
F 1 "+5V" H 3950 1790 30  0000 C CNN
	1    3950 1700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR042
U 1 1 4F8DB5CB
P 2750 2200
F 0 "#PWR042" H 2750 2290 20  0001 C CNN
F 1 "+5V" H 2750 2290 30  0000 C CNN
	1    2750 2200
	1    0    0    -1  
$EndComp
$Comp
L R R103
U 1 1 4F8DB5C5
P 3750 2000
F 0 "R103" V 3830 2000 50  0000 C CNN
F 1 "R" V 3750 2000 50  0000 C CNN
	1    3750 2000
	-1   0    0    1   
$EndComp
$Comp
L R R102
U 1 1 4F8DB5C0
P 3400 2000
F 0 "R102" V 3480 2000 50  0000 C CNN
F 1 "R" V 3400 2000 50  0000 C CNN
	1    3400 2000
	-1   0    0    1   
$EndComp
$Comp
L R R101
U 1 1 4F8DB5BC
P 3050 2000
F 0 "R101" V 3130 2000 50  0000 C CNN
F 1 "R" V 3050 2000 50  0000 C CNN
	1    3050 2000
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR043
U 1 1 4F8DB5B5
P 3550 1200
F 0 "#PWR043" H 3550 1200 30  0001 C CNN
F 1 "GND" H 3550 1130 30  0001 C CNN
	1    3550 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR044
U 1 1 4F8DB5B1
P 3200 1200
F 0 "#PWR044" H 3200 1200 30  0001 C CNN
F 1 "GND" H 3200 1130 30  0001 C CNN
	1    3200 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR045
U 1 1 4F8DB5AE
P 2850 1200
F 0 "#PWR045" H 2850 1200 30  0001 C CNN
F 1 "GND" H 2850 1130 30  0001 C CNN
	1    2850 1200
	1    0    0    -1  
$EndComp
$Comp
L CONN_3 KU1A0
U 1 1 4F8DB597
P 3650 850
F 0 "KU1A0" V 3600 850 50  0000 C CNN
F 1 "CONN_3" V 3700 850 40  0000 C CNN
	1    3650 850 
	0    -1   -1   0   
$EndComp
$Comp
L CONN_3 KU1A1
U 1 1 4F8DB595
P 3300 850
F 0 "KU1A1" V 3250 850 50  0000 C CNN
F 1 "CONN_3" V 3350 850 40  0000 C CNN
	1    3300 850 
	0    -1   -1   0   
$EndComp
$Comp
L CONN_3 KU1A2
U 1 1 4F8DB586
P 2950 850
F 0 "KU1A2" V 2900 850 50  0000 C CNN
F 1 "CONN_3" V 3000 850 40  0000 C CNN
	1    2950 850 
	0    -1   -1   0   
$EndComp
$Comp
L PCF8574 U101
U 1 1 4F8DB4B7
P 4700 1500
F 0 "U101" H 4970 2200 60  0000 C CNN
F 1 "PCF8574" H 5090 802 60  0000 C CNN
	1    4700 1500
	1    0    0    -1  
$EndComp
$Comp
L R R104
U 1 1 4F8DB28F
P 7350 1050
F 0 "R104" V 7430 1050 50  0000 C CNN
F 1 "R" V 7350 1050 50  0000 C CNN
	1    7350 1050
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR046
U 1 1 4F8DB23E
P 7900 800
F 0 "#PWR046" H 7900 890 20  0001 C CNN
F 1 "+5V" H 7900 890 30  0000 C CNN
	1    7900 800 
	1    0    0    -1  
$EndComp
$Comp
L R R112
U 1 1 4F8DB213
P 7900 1500
F 0 "R112" V 7980 1500 50  0000 C CNN
F 1 "R" V 7900 1500 50  0000 C CNN
	1    7900 1500
	-1   0    0    1   
$EndComp
$Comp
L PNP Q101
U 1 1 4F8DB1AD
P 7800 1050
F 0 "Q101" H 7800 900 60  0000 R CNN
F 1 "PNP" H 7800 1200 60  0000 R CNN
	1    7800 1050
	1    0    0    1   
$EndComp
$Comp
L GND #PWR047
U 1 1 4F63A4E0
P 9000 1500
F 0 "#PWR047" H 9000 1500 30  0001 C CNN
F 1 "GND" H 9000 1430 30  0001 C CNN
	1    9000 1500
	1    0    0    -1  
$EndComp
$Comp
L R R120
U 1 1 4F63A4D0
P 8450 1250
F 0 "R120" V 8530 1250 50  0000 C CNN
F 1 "R" V 8450 1250 50  0000 C CNN
	1    8450 1250
	0    -1   -1   0   
$EndComp
$Comp
L NPN Q109
U 1 1 4F63A4AA
P 8900 1250
F 0 "Q109" H 8900 1100 50  0000 R CNN
F 1 "DSS20201L NPN" V 8900 2050 50  0000 R CNN
	1    8900 1250
	1    0    0    -1  
$EndComp
$Comp
L R R128
U 1 1 4F780536
P 9550 1150
F 0 "R128" V 9630 1150 50  0000 C CNN
F 1 "R" V 9550 1150 50  0000 C CNN
	1    9550 1150
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR048
U 1 1 4F63A241
P 9800 800
F 0 "#PWR048" H 9800 750 20  0001 C CNN
F 1 "+12V" H 9800 900 30  0000 C CNN
	1    9800 800 
	1    0    0    -1  
$EndComp
$Comp
L DIODE D109
U 1 1 4F612094
P 10000 1100
F 0 "D109" H 10000 1200 40  0000 C CNN
F 1 "DIODE" H 10000 1000 40  0000 C CNN
	1    10000 1100
	0    -1   -1   0   
$EndComp
$Comp
L CONN_3 P101
U 1 1 4F6118A3
P 11900 1050
F 0 "P101" V 11850 1050 50  0000 C CNN
F 1 "CONN_3" V 11950 1050 40  0000 C CNN
	1    11900 1050
	1    0    0    -1  
$EndComp
$Comp
L G5LA-1-12VDC K101
U 1 1 4F6116EC
P 10700 1050
F 0 "K101" H 10400 1050 60  0000 C CNN
F 1 "G5LA-1-12VDC" H 10750 750 60  0000 C CNN
	1    10700 1050
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR049
U 1 1 4F455CF3
P 14200 1050
F 0 "#PWR049" H 14200 1000 20  0001 C CNN
F 1 "+12V" H 14200 1150 30  0000 C CNN
	1    14200 1050
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR050
U 1 1 4F455CDC
P 13950 1300
F 0 "#PWR050" H 13950 1300 30  0001 C CNN
F 1 "GND" H 13950 1230 30  0001 C CNN
	1    13950 1300
	1    0    0    -1  
$EndComp
$EndSCHEMATC
