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
L MCU_ST_STM32F1:STM32F103C8Tx U?
U 1 1 5FF8C27E
P 2600 4850
F 0 "U?" H 3000 6300 50  0000 C CNN
F 1 "STM32F103C8T6" H 3100 3400 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 2000 3450 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00161566.pdf" H 2600 4850 50  0001 C CNN
	1    2600 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF988F7
P 2400 6450
F 0 "#PWR?" H 2400 6200 50  0001 C CNN
F 1 "GND" H 2405 6277 50  0000 C CNN
F 2 "" H 2400 6450 50  0001 C CNN
F 3 "" H 2400 6450 50  0001 C CNN
	1    2400 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 6350 2400 6450
Wire Wire Line
	2400 6350 2500 6350
Connection ~ 2400 6350
Connection ~ 2500 6350
Wire Wire Line
	2500 6350 2600 6350
Connection ~ 2600 6350
Wire Wire Line
	2600 6350 2700 6350
Text GLabel 2400 3250 1    50   Input ~ 0
VCC3V3
Text GLabel 3400 3500 1    50   Input ~ 0
VCC3V3
Wire Wire Line
	2400 3350 2500 3350
Connection ~ 2500 3350
Wire Wire Line
	2500 3350 2600 3350
Connection ~ 2600 3350
Wire Wire Line
	2600 3350 2700 3350
Connection ~ 2700 3350
Wire Wire Line
	2700 3350 2800 3350
Wire Wire Line
	2400 3250 2400 3350
Connection ~ 2400 3350
$Comp
L Device:C_Small C?
U 1 1 5FF9BD70
P 3400 3700
F 0 "C?" H 3500 3750 50  0000 L CNN
F 1 "100n" H 3450 3650 50  0000 L CNN
F 2 "" H 3400 3700 50  0001 C CNN
F 3 "~" H 3400 3700 50  0001 C CNN
	1    3400 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FF9D075
P 3700 3700
F 0 "C?" H 3800 3750 50  0000 L CNN
F 1 "100n" H 3750 3650 50  0000 L CNN
F 2 "" H 3700 3700 50  0001 C CNN
F 3 "~" H 3700 3700 50  0001 C CNN
	1    3700 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FF9D4C1
P 4000 3700
F 0 "C?" H 4100 3750 50  0000 L CNN
F 1 "100n" H 4050 3650 50  0000 L CNN
F 2 "" H 4000 3700 50  0001 C CNN
F 3 "~" H 4000 3700 50  0001 C CNN
	1    4000 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FF9DB11
P 4300 3700
F 0 "C?" H 4400 3750 50  0000 L CNN
F 1 "100n" H 4350 3650 50  0000 L CNN
F 2 "" H 4300 3700 50  0001 C CNN
F 3 "~" H 4300 3700 50  0001 C CNN
	1    4300 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FF9DDD1
P 4600 3700
F 0 "C?" H 4700 3750 50  0000 L CNN
F 1 "100n" H 4650 3650 50  0000 L CNN
F 2 "" H 4600 3700 50  0001 C CNN
F 3 "~" H 4600 3700 50  0001 C CNN
	1    4600 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FF9E127
P 4900 3700
F 0 "C?" H 5000 3750 50  0000 L CNN
F 1 "4.7u" H 4950 3650 50  0000 L CNN
F 2 "" H 4900 3700 50  0001 C CNN
F 3 "~" H 4900 3700 50  0001 C CNN
	1    4900 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3500 3400 3600
Wire Wire Line
	3400 3600 3700 3600
Connection ~ 3400 3600
Connection ~ 3700 3600
Wire Wire Line
	3700 3600 4000 3600
Connection ~ 4000 3600
Wire Wire Line
	4000 3600 4300 3600
Connection ~ 4300 3600
Wire Wire Line
	4300 3600 4600 3600
Connection ~ 4600 3600
Wire Wire Line
	4600 3600 4900 3600
Wire Wire Line
	3400 3800 3700 3800
Connection ~ 3700 3800
Wire Wire Line
	3700 3800 4000 3800
Connection ~ 4000 3800
Wire Wire Line
	4000 3800 4300 3800
Connection ~ 4300 3800
Wire Wire Line
	4300 3800 4600 3800
Connection ~ 4600 3800
Wire Wire Line
	4600 3800 4900 3800
$Comp
L power:GND #PWR?
U 1 1 5FF9F1E9
P 3400 3950
F 0 "#PWR?" H 3400 3700 50  0001 C CNN
F 1 "GND" H 3405 3777 50  0000 C CNN
F 2 "" H 3400 3950 50  0001 C CNN
F 3 "" H 3400 3950 50  0001 C CNN
	1    3400 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3800 3400 3950
Connection ~ 3400 3800
$EndSCHEMATC
