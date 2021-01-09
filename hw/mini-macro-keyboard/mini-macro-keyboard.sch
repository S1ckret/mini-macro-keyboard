EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "mini-macro-keyboard"
Date "2021-01-08"
Rev "v1.0"
Comp "The S1ckret Labs"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR?
U 1 1 5FF988F7
P 2200 5200
F 0 "#PWR?" H 2200 4950 50  0001 C CNN
F 1 "GND" H 2205 5027 50  0000 C CNN
F 2 "" H 2200 5200 50  0001 C CNN
F 3 "" H 2200 5200 50  0001 C CNN
	1    2200 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 5100 2200 5200
Text GLabel 2200 2000 1    50   Input ~ 0
VCC3V3
Text GLabel 950  900  0    50   Input ~ 0
VCC3V3
Wire Wire Line
	2200 2000 2200 2100
$Comp
L Device:C_Small C?
U 1 1 5FF9BD70
P 1100 1000
F 0 "C?" H 1200 1050 50  0000 L CNN
F 1 "100n" H 1150 950 50  0000 L CNN
F 2 "" H 1100 1000 50  0001 C CNN
F 3 "~" H 1100 1000 50  0001 C CNN
	1    1100 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FF9D075
P 1400 1000
F 0 "C?" H 1500 1050 50  0000 L CNN
F 1 "100n" H 1450 950 50  0000 L CNN
F 2 "" H 1400 1000 50  0001 C CNN
F 3 "~" H 1400 1000 50  0001 C CNN
	1    1400 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FF9D4C1
P 1700 1000
F 0 "C?" H 1800 1050 50  0000 L CNN
F 1 "100n" H 1750 950 50  0000 L CNN
F 2 "" H 1700 1000 50  0001 C CNN
F 3 "~" H 1700 1000 50  0001 C CNN
	1    1700 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FF9DB11
P 2000 1000
F 0 "C?" H 2100 1050 50  0000 L CNN
F 1 "100n" H 2050 950 50  0000 L CNN
F 2 "" H 2000 1000 50  0001 C CNN
F 3 "~" H 2000 1000 50  0001 C CNN
	1    2000 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FF9DDD1
P 2300 1000
F 0 "C?" H 2400 1050 50  0000 L CNN
F 1 "100n" H 2350 950 50  0000 L CNN
F 2 "" H 2300 1000 50  0001 C CNN
F 3 "~" H 2300 1000 50  0001 C CNN
	1    2300 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FF9E127
P 2600 1000
F 0 "C?" H 2700 1050 50  0000 L CNN
F 1 "4.7u" H 2650 950 50  0000 L CNN
F 2 "" H 2600 1000 50  0001 C CNN
F 3 "~" H 2600 1000 50  0001 C CNN
	1    2600 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 800  1100 900 
Wire Wire Line
	1100 900  1400 900 
Connection ~ 1100 900 
Connection ~ 1400 900 
Wire Wire Line
	1400 900  1700 900 
Connection ~ 1700 900 
Wire Wire Line
	1700 900  2000 900 
Connection ~ 2000 900 
Wire Wire Line
	2000 900  2300 900 
Connection ~ 2300 900 
Wire Wire Line
	2300 900  2600 900 
Wire Wire Line
	1100 1100 1400 1100
Connection ~ 1400 1100
Wire Wire Line
	1400 1100 1700 1100
Connection ~ 1700 1100
Wire Wire Line
	1700 1100 2000 1100
Connection ~ 2000 1100
Wire Wire Line
	2000 1100 2300 1100
Connection ~ 2300 1100
Wire Wire Line
	2300 1100 2600 1100
$Comp
L power:GND #PWR?
U 1 1 5FF9F1E9
P 1100 1250
F 0 "#PWR?" H 1100 1000 50  0001 C CNN
F 1 "GND" H 1105 1077 50  0000 C CNN
F 2 "" H 1100 1250 50  0001 C CNN
F 3 "" H 1100 1250 50  0001 C CNN
	1    1100 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1100 1100 1250
Connection ~ 1100 1100
$Comp
L power:+3.3V #PWR?
U 1 1 5FF9FB12
P 1100 800
F 0 "#PWR?" H 1100 650 50  0001 C CNN
F 1 "+3.3V" H 1115 973 50  0000 C CNN
F 2 "" H 1100 800 50  0001 C CNN
F 3 "" H 1100 800 50  0001 C CNN
	1    1100 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  900  1100 900 
$Comp
L Switch:SW_SPDT SW?
U 1 1 5FFCFED1
P 3800 1000
F 0 "SW?" H 3800 1200 50  0000 C CNN
F 1 "SW_SPDT" H 3800 800 50  0000 C CNN
F 2 "" H 3800 1000 50  0001 C CNN
F 3 "~" H 3800 1000 50  0001 C CNN
	1    3800 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FFD59D1
P 4050 1100
F 0 "#PWR?" H 4050 850 50  0001 C CNN
F 1 "GND" H 4055 927 50  0000 C CNN
F 2 "" H 4050 1100 50  0001 C CNN
F 3 "" H 4050 1100 50  0001 C CNN
	1    4050 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FFD7490
P 4050 900
F 0 "#PWR?" H 4050 750 50  0001 C CNN
F 1 "+3.3V" H 4065 1073 50  0000 C CNN
F 2 "" H 4050 900 50  0001 C CNN
F 3 "" H 4050 900 50  0001 C CNN
	1    4050 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5FFD7E6E
P 3500 1000
F 0 "R?" V 3600 1000 50  0000 C CNN
F 1 "10k" V 3400 1000 50  0000 C CNN
F 2 "" H 3500 1000 50  0001 C CNN
F 3 "~" H 3500 1000 50  0001 C CNN
	1    3500 1000
	0    -1   -1   0   
$EndComp
Connection ~ 2200 2100
Connection ~ 2500 2100
Wire Wire Line
	2500 2100 2600 2100
Wire Wire Line
	2400 2100 2500 2100
Connection ~ 2400 2100
Connection ~ 2300 2100
Wire Wire Line
	2300 2100 2400 2100
Wire Wire Line
	2200 2100 2300 2100
Wire Wire Line
	2400 5100 2500 5100
Connection ~ 2400 5100
Connection ~ 2300 5100
Connection ~ 2200 5100
Wire Wire Line
	2300 5100 2400 5100
Wire Wire Line
	2200 5100 2300 5100
$Comp
L MCU_ST_STM32F1:STM32F103C8Tx U?
U 1 1 5FF8C27E
P 2400 3600
F 0 "U?" H 2800 5050 50  0000 C CNN
F 1 "STM32F103C8T6" H 2900 2150 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 1800 2200 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00161566.pdf" H 2400 3600 50  0001 C CNN
	1    2400 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 900  4050 900 
Wire Wire Line
	4000 1100 4050 1100
Text GLabel 1700 2500 0    50   Input ~ 0
BOOT0
Text GLabel 3400 1000 0    50   Input ~ 0
BOOT0
$EndSCHEMATC
