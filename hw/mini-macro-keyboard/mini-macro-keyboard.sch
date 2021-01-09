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
P 1700 7450
F 0 "#PWR?" H 1700 7200 50  0001 C CNN
F 1 "GND" H 1705 7277 50  0000 C CNN
F 2 "" H 1700 7450 50  0001 C CNN
F 3 "" H 1700 7450 50  0001 C CNN
	1    1700 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 7350 1700 7450
Text GLabel 1700 4250 1    50   Input ~ 0
VCC3V3
Text GLabel 1150 1100 0    50   Input ~ 0
VCC3V3
Wire Wire Line
	1700 4250 1700 4350
$Comp
L Device:C_Small C?
U 1 1 5FF9BD70
P 1300 1200
F 0 "C?" H 1400 1250 50  0000 L CNN
F 1 "100n" H 1350 1150 50  0000 L CNN
F 2 "" H 1300 1200 50  0001 C CNN
F 3 "~" H 1300 1200 50  0001 C CNN
	1    1300 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FF9D075
P 1600 1200
F 0 "C?" H 1700 1250 50  0000 L CNN
F 1 "100n" H 1650 1150 50  0000 L CNN
F 2 "" H 1600 1200 50  0001 C CNN
F 3 "~" H 1600 1200 50  0001 C CNN
	1    1600 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FF9D4C1
P 1900 1200
F 0 "C?" H 2000 1250 50  0000 L CNN
F 1 "100n" H 1950 1150 50  0000 L CNN
F 2 "" H 1900 1200 50  0001 C CNN
F 3 "~" H 1900 1200 50  0001 C CNN
	1    1900 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FF9DB11
P 2200 1200
F 0 "C?" H 2300 1250 50  0000 L CNN
F 1 "100n" H 2250 1150 50  0000 L CNN
F 2 "" H 2200 1200 50  0001 C CNN
F 3 "~" H 2200 1200 50  0001 C CNN
	1    2200 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FF9DDD1
P 3700 1750
F 0 "C?" H 3800 1800 50  0000 L CNN
F 1 "100n" H 3750 1700 50  0000 L CNN
F 2 "" H 3700 1750 50  0001 C CNN
F 3 "~" H 3700 1750 50  0001 C CNN
	1    3700 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FF9E127
P 2500 1200
F 0 "C?" H 2600 1250 50  0000 L CNN
F 1 "4.7u" H 2550 1150 50  0000 L CNN
F 2 "" H 2500 1200 50  0001 C CNN
F 3 "~" H 2500 1200 50  0001 C CNN
	1    2500 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1000 1300 1100
Wire Wire Line
	1300 1100 1600 1100
Connection ~ 1300 1100
Connection ~ 1600 1100
Wire Wire Line
	1600 1100 1900 1100
Connection ~ 1900 1100
Wire Wire Line
	1900 1100 2200 1100
Connection ~ 2200 1100
Wire Wire Line
	2200 1100 2500 1100
Wire Wire Line
	1300 1300 1600 1300
Connection ~ 1600 1300
Wire Wire Line
	1600 1300 1900 1300
Connection ~ 1900 1300
Wire Wire Line
	1900 1300 2200 1300
Connection ~ 2200 1300
Wire Wire Line
	2200 1300 2500 1300
$Comp
L power:GND #PWR?
U 1 1 5FF9F1E9
P 1300 1450
F 0 "#PWR?" H 1300 1200 50  0001 C CNN
F 1 "GND" H 1305 1277 50  0000 C CNN
F 2 "" H 1300 1450 50  0001 C CNN
F 3 "" H 1300 1450 50  0001 C CNN
	1    1300 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1300 1300 1450
Connection ~ 1300 1300
$Comp
L power:+3.3V #PWR?
U 1 1 5FF9FB12
P 1300 1000
F 0 "#PWR?" H 1300 850 50  0001 C CNN
F 1 "+3.3V" H 1315 1173 50  0000 C CNN
F 2 "" H 1300 1000 50  0001 C CNN
F 3 "" H 1300 1000 50  0001 C CNN
	1    1300 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1100 1300 1100
$Comp
L Switch:SW_SPDT SW?
U 1 1 5FFCFED1
P 1900 2250
F 0 "SW?" H 1900 2450 50  0000 C CNN
F 1 "SW_SPDT" H 1900 2050 50  0000 C CNN
F 2 "" H 1900 2250 50  0001 C CNN
F 3 "~" H 1900 2250 50  0001 C CNN
	1    1900 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FFD59D1
P 2150 2350
F 0 "#PWR?" H 2150 2100 50  0001 C CNN
F 1 "GND" H 2155 2177 50  0000 C CNN
F 2 "" H 2150 2350 50  0001 C CNN
F 3 "" H 2150 2350 50  0001 C CNN
	1    2150 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FFD7490
P 2150 2150
F 0 "#PWR?" H 2150 2000 50  0001 C CNN
F 1 "+3.3V" H 2165 2323 50  0000 C CNN
F 2 "" H 2150 2150 50  0001 C CNN
F 3 "" H 2150 2150 50  0001 C CNN
	1    2150 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5FFD7E6E
P 1600 2250
F 0 "R?" V 1700 2250 50  0000 C CNN
F 1 "10k" V 1500 2250 50  0000 C CNN
F 2 "" H 1600 2250 50  0001 C CNN
F 3 "~" H 1600 2250 50  0001 C CNN
	1    1600 2250
	0    -1   -1   0   
$EndComp
Connection ~ 1700 4350
Connection ~ 2000 4350
Wire Wire Line
	2000 4350 2100 4350
Wire Wire Line
	1900 4350 2000 4350
Connection ~ 1900 4350
Connection ~ 1800 4350
Wire Wire Line
	1800 4350 1900 4350
Wire Wire Line
	1700 4350 1800 4350
Wire Wire Line
	1900 7350 2000 7350
Connection ~ 1900 7350
Connection ~ 1800 7350
Connection ~ 1700 7350
Wire Wire Line
	1800 7350 1900 7350
Wire Wire Line
	1700 7350 1800 7350
$Comp
L MCU_ST_STM32F1:STM32F103C8Tx U?
U 1 1 5FF8C27E
P 1900 5850
F 0 "U?" H 2300 7300 50  0000 C CNN
F 1 "STM32F103C8T6" H 2400 4400 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 1300 4450 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00161566.pdf" H 1900 5850 50  0001 C CNN
	1    1900 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 2150 2150 2150
Wire Wire Line
	2100 2350 2150 2350
Text GLabel 1200 4750 0    50   Input ~ 0
BOOT0
Text GLabel 1500 2250 0    50   Input ~ 0
BOOT0
Text GLabel 1200 4550 0    50   Input ~ 0
NRST
Text GLabel 3700 1200 1    50   Input ~ 0
VCC3V3
$Comp
L Device:R_Small R?
U 1 1 5FFE7355
P 3700 1350
F 0 "R?" V 3800 1350 50  0000 C CNN
F 1 "10k" V 3600 1350 50  0000 C CNN
F 2 "" H 3700 1350 50  0001 C CNN
F 3 "~" H 3700 1350 50  0001 C CNN
	1    3700 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1250 3700 1200
$Comp
L Switch:SW_SPST SW?
U 1 1 5FFE8976
P 3250 1750
F 0 "SW?" V 3350 1700 50  0000 R CNN
F 1 "SW_SPST" V 3150 1700 50  0000 R CNN
F 2 "" H 3250 1750 50  0001 C CNN
F 3 "~" H 3250 1750 50  0001 C CNN
	1    3250 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3700 1450 3700 1500
Wire Wire Line
	3700 1500 3250 1500
Wire Wire Line
	3250 1500 3250 1550
$Comp
L power:GND #PWR?
U 1 1 5FFEBFB1
P 3700 2100
F 0 "#PWR?" H 3700 1850 50  0001 C CNN
F 1 "GND" H 3705 1927 50  0000 C CNN
F 2 "" H 3700 2100 50  0001 C CNN
F 3 "" H 3700 2100 50  0001 C CNN
	1    3700 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1950 3250 2000
Wire Wire Line
	3250 2000 3700 2000
Wire Wire Line
	3700 2000 3700 2100
Wire Wire Line
	3700 2000 3700 1850
Connection ~ 3700 2000
Wire Wire Line
	3700 1650 3700 1500
Connection ~ 3700 1500
Text GLabel 3850 1500 2    50   Input ~ 0
NRST
Wire Wire Line
	3700 1500 3850 1500
$EndSCHEMATC
