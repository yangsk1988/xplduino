EESchema Schematic File Version 2  date 17/06/2012 23:05:58
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
LIBS:74hc08
LIBS:lm1117imp-3
LIBS:SMB-cache
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 2 3
Title ""
Date "17 jun 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 9300 800  0    60   ~ 0
3.3V Rail
Wire Notes Line
	11200 500  8400 500 
Wire Notes Line
	11200 500  11200 2150
Wire Notes Line
	11200 2150 8400 2150
Wire Notes Line
	8400 2150 8400 500 
Wire Wire Line
	8800 1700 8800 1800
Connection ~ 9100 1250
Wire Wire Line
	8800 1250 9200 1250
Connection ~ 10400 1300
Wire Wire Line
	10400 1200 10400 1350
Wire Wire Line
	10400 1750 10400 1850
Connection ~ 9950 1300
Wire Wire Line
	9500 1450 9500 1550
Wire Wire Line
	9800 1200 9950 1200
Wire Wire Line
	9950 1200 9950 1350
Wire Wire Line
	10400 1300 9800 1300
Wire Wire Line
	9950 1750 9950 1850
Wire Wire Line
	9100 1250 9100 1300
Wire Wire Line
	9100 1700 9100 1800
Wire Wire Line
	8800 1150 8800 1300
Connection ~ 8800 1250
$Comp
L +5V #PWR201
U 1 1 4FDE4355
P 8800 1150
F 0 "#PWR201" H 8800 1240 20  0001 C CNN
F 1 "+5V" H 8800 1240 30  0000 C CNN
	1    8800 1150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR202
U 1 1 4FDE4338
P 8800 1800
F 0 "#PWR202" H 8800 1800 30  0001 C CNN
F 1 "GND" H 8800 1730 30  0001 C CNN
	1    8800 1800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR203
U 1 1 4FDE4335
P 9100 1800
F 0 "#PWR203" H 9100 1800 30  0001 C CNN
F 1 "GND" H 9100 1730 30  0001 C CNN
	1    9100 1800
	1    0    0    -1  
$EndComp
$Comp
L C C211
U 1 1 4FDE432E
P 8800 1500
F 0 "C211" H 8850 1600 50  0000 L CNN
F 1 "10nF" V 8900 1250 50  0000 L CNN
	1    8800 1500
	1    0    0    -1  
$EndComp
$Comp
L C C212
U 1 1 4FDE4326
P 9100 1500
F 0 "C212" H 9150 1600 50  0000 L CNN
F 1 "100nF" V 9200 1200 50  0000 L CNN
	1    9100 1500
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR206
U 1 1 4FDE431B
P 10400 1200
F 0 "#PWR206" H 10400 1160 30  0001 C CNN
F 1 "+3.3V" H 10400 1310 30  0000 C CNN
	1    10400 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR207
U 1 1 4FDE4301
P 10400 1850
F 0 "#PWR207" H 10400 1850 30  0001 C CNN
F 1 "GND" H 10400 1780 30  0001 C CNN
	1    10400 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR205
U 1 1 4FDE42FD
P 9950 1850
F 0 "#PWR205" H 9950 1850 30  0001 C CNN
F 1 "GND" H 9950 1780 30  0001 C CNN
	1    9950 1850
	1    0    0    -1  
$EndComp
$Comp
L C C214
U 1 1 4FDE42E8
P 10400 1550
F 0 "C214" H 10450 1650 50  0000 L CNN
F 1 "100nF" V 10500 1250 50  0000 L CNN
	1    10400 1550
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C213
U 1 1 4FDE42D6
P 9950 1550
F 0 "C213" H 10000 1650 50  0000 L CNN
F 1 "10uF" V 10050 1250 50  0000 L CNN
	1    9950 1550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR204
U 1 1 4FDE42B3
P 9500 1550
F 0 "#PWR204" H 9500 1550 30  0001 C CNN
F 1 "GND" H 9500 1480 30  0001 C CNN
	1    9500 1550
	1    0    0    -1  
$EndComp
$Comp
L LM1117IMP-3.3 U202
U 1 1 4FDE429F
P 9500 1250
F 0 "U202" H 9950 1350 60  0000 C CNN
F 1 "LM1117IMP-3.3" H 9500 1450 60  0000 C CNN
	1    9500 1250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
