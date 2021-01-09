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
Text GLabel 1800 4250 1    50   Input ~ 0
VCC3V3
Text GLabel 1150 1100 0    50   Input ~ 0
VCC3V3
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
P 3750 1300
F 0 "C?" H 3850 1350 50  0000 L CNN
F 1 "100n" H 3800 1250 50  0000 L CNN
F 2 "" H 3750 1300 50  0001 C CNN
F 3 "~" H 3750 1300 50  0001 C CNN
	1    3750 1300
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
Connection ~ 2000 4350
Wire Wire Line
	2000 4350 2100 4350
Wire Wire Line
	1900 4350 2000 4350
Connection ~ 1900 4350
Wire Wire Line
	1800 4350 1900 4350
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
Text GLabel 3750 750  0    50   Input ~ 0
VCC3V3
Wire Wire Line
	3750 800  3750 750 
$Comp
L Switch:SW_SPST SW?
U 1 1 5FFE8976
P 3300 1300
F 0 "SW?" V 3400 1250 50  0000 R CNN
F 1 "SW_SPST" V 3200 1250 50  0000 R CNN
F 2 "" H 3300 1300 50  0001 C CNN
F 3 "~" H 3300 1300 50  0001 C CNN
	1    3300 1300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3750 1000 3750 1050
Wire Wire Line
	3750 1050 3300 1050
Wire Wire Line
	3300 1050 3300 1100
$Comp
L power:GND #PWR?
U 1 1 5FFEBFB1
P 3750 1650
F 0 "#PWR?" H 3750 1400 50  0001 C CNN
F 1 "GND" H 3755 1477 50  0000 C CNN
F 2 "" H 3750 1650 50  0001 C CNN
F 3 "" H 3750 1650 50  0001 C CNN
	1    3750 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1500 3300 1550
Wire Wire Line
	3300 1550 3750 1550
Wire Wire Line
	3750 1550 3750 1650
Wire Wire Line
	3750 1550 3750 1400
Connection ~ 3750 1550
Wire Wire Line
	3750 1200 3750 1050
Connection ~ 3750 1050
Text GLabel 3900 1050 2    50   Input ~ 0
NRST
Wire Wire Line
	3750 1050 3900 1050
Text GLabel 1200 4950 0    50   Input ~ 0
OSC_IN
Text GLabel 2500 6950 2    50   Input ~ 0
SWDIO
Text GLabel 2500 7050 2    50   Input ~ 0
SWCLK
Text GLabel 1200 5950 0    50   Input ~ 0
SWO
Text GLabel 2500 6850 2    50   Input ~ 0
USB_D+
Text GLabel 2500 6750 2    50   Input ~ 0
USB_D-
Text GLabel 1200 6650 0    50   Input ~ 0
LED_3
Text GLabel 2500 6150 2    50   Input ~ 0
LED_2
Text GLabel 2500 5650 2    50   Input ~ 0
LED_1
Text GLabel 1200 5450 0    50   Input ~ 0
SW_1
Text GLabel 2500 6050 2    50   Input ~ 0
SW_2
Text GLabel 1200 5750 0    50   Input ~ 0
SW_3
NoConn ~ 2500 5750
NoConn ~ 2500 5850
NoConn ~ 2500 5950
NoConn ~ 2500 6250
NoConn ~ 2500 6350
NoConn ~ 2500 6450
NoConn ~ 2500 6550
NoConn ~ 2500 6650
NoConn ~ 2500 7150
NoConn ~ 1200 7150
NoConn ~ 1200 7050
NoConn ~ 1200 6950
NoConn ~ 1200 6850
NoConn ~ 1200 6750
NoConn ~ 1200 6550
NoConn ~ 1200 6450
NoConn ~ 1200 6350
NoConn ~ 1200 6250
NoConn ~ 1200 6150
NoConn ~ 1200 6050
NoConn ~ 1200 5850
NoConn ~ 1200 5650
NoConn ~ 1200 5350
NoConn ~ 1200 5250
Text GLabel 1200 5050 0    50   Input ~ 0
OSC_OUT
$Comp
L Device:Crystal_Small Y?
U 1 1 6000CA22
P 1400 3200
F 0 "Y?" V 1354 3288 50  0000 L CNN
F 1 "8MHz" V 1445 3288 50  0000 L CNN
F 2 "" H 1400 3200 50  0001 C CNN
F 3 "~" H 1400 3200 50  0001 C CNN
	1    1400 3200
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6000E4D6
P 1100 3000
F 0 "C?" V 1000 2950 50  0000 L CNN
F 1 "20p" V 1200 2950 50  0000 L CNN
F 2 "" H 1100 3000 50  0001 C CNN
F 3 "~" H 1100 3000 50  0001 C CNN
	1    1100 3000
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6000EB9A
P 1100 3400
F 0 "C?" V 1000 3350 50  0000 L CNN
F 1 "20p" V 1200 3350 50  0000 L CNN
F 2 "" H 1100 3400 50  0001 C CNN
F 3 "~" H 1100 3400 50  0001 C CNN
	1    1100 3400
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5FFE7355
P 3750 900
F 0 "R?" V 3850 900 50  0000 C CNN
F 1 "10k" V 3650 900 50  0000 C CNN
F 2 "" H 3750 900 50  0001 C CNN
F 3 "~" H 3750 900 50  0001 C CNN
	1    3750 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60011E97
P 1750 3200
F 0 "R?" H 1850 3250 50  0000 C CNN
F 1 "1M" H 1850 3150 50  0000 C CNN
F 2 "" H 1750 3200 50  0001 C CNN
F 3 "~" H 1750 3200 50  0001 C CNN
	1    1750 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 3000 950  3000
Wire Wire Line
	950  3000 950  3400
Wire Wire Line
	950  3400 1000 3400
Wire Wire Line
	1200 3000 1400 3000
Wire Wire Line
	1400 3000 1400 3100
Wire Wire Line
	1400 3300 1400 3400
Wire Wire Line
	1400 3400 1200 3400
Connection ~ 1400 3000
Connection ~ 1400 3400
Text GLabel 2000 3000 2    50   Input ~ 0
OSC_IN
Text GLabel 2000 3400 2    50   Input ~ 0
OSC_OUT
Wire Wire Line
	1400 3400 1750 3400
Wire Wire Line
	1400 3000 1750 3000
Wire Wire Line
	1750 3100 1750 3000
Connection ~ 1750 3000
Wire Wire Line
	1750 3000 2000 3000
Wire Wire Line
	1750 3300 1750 3400
Connection ~ 1750 3400
Wire Wire Line
	1750 3400 2000 3400
Wire Wire Line
	1800 4250 1800 4350
Connection ~ 1800 4350
NoConn ~ 1700 4350
$Comp
L Connector:USB_B_Micro J?
U 1 1 6001BB49
P 5000 1200
F 0 "J?" H 5057 1667 50  0000 C CNN
F 1 "USB_B_Micro" H 5057 1576 50  0000 C CNN
F 2 "" H 5150 1150 50  0001 C CNN
F 3 "~" H 5150 1150 50  0001 C CNN
	1    5000 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60020BF2
P 5000 1650
F 0 "#PWR?" H 5000 1400 50  0001 C CNN
F 1 "GND" H 5005 1477 50  0000 C CNN
F 2 "" H 5000 1650 50  0001 C CNN
F 3 "" H 5000 1650 50  0001 C CNN
	1    5000 1650
	1    0    0    -1  
$EndComp
NoConn ~ 4900 1600
Wire Wire Line
	5300 1400 5300 1600
Wire Wire Line
	5300 1600 5000 1600
Connection ~ 5000 1600
Wire Wire Line
	5000 1600 5000 1650
$Comp
L power:+5V #PWR?
U 1 1 60024143
P 5450 900
F 0 "#PWR?" H 5450 750 50  0001 C CNN
F 1 "+5V" H 5465 1073 50  0000 C CNN
F 2 "" H 5450 900 50  0001 C CNN
F 3 "" H 5450 900 50  0001 C CNN
	1    5450 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 900  5450 1000
Wire Wire Line
	5450 1000 5300 1000
$Comp
L Power_Protection:USBLC6-2SC6 U?
U 1 1 60025D65
P 7950 1250
F 0 "U?" H 8200 1600 50  0000 C CNN
F 1 "USBLC6-2SC6" H 8250 900 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 7950 750 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/usblc6-2.pdf" H 8150 1600 50  0001 C CNN
	1    7950 1250
	1    0    0    -1  
$EndComp
Text GLabel 5300 1200 2    50   Input ~ 0
USB_CONN_D+
Text GLabel 5300 1300 2    50   Input ~ 0
USB_CONN_D-
Text GLabel 7550 1350 0    50   Input ~ 0
USB_CONN_D+
$Comp
L power:+5V #PWR?
U 1 1 6002EBC6
P 7950 850
F 0 "#PWR?" H 7950 700 50  0001 C CNN
F 1 "+5V" H 7965 1023 50  0000 C CNN
F 2 "" H 7950 850 50  0001 C CNN
F 3 "" H 7950 850 50  0001 C CNN
	1    7950 850 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6002F1AC
P 7950 1650
F 0 "#PWR?" H 7950 1400 50  0001 C CNN
F 1 "GND" H 7955 1477 50  0000 C CNN
F 2 "" H 7950 1650 50  0001 C CNN
F 3 "" H 7950 1650 50  0001 C CNN
	1    7950 1650
	1    0    0    -1  
$EndComp
Text GLabel 6700 1150 0    50   Input ~ 0
USB_D+
Text GLabel 8350 1350 2    50   Input ~ 0
USB_CONN_D-
Text GLabel 8550 1150 2    50   Input ~ 0
USB_D-
$Comp
L mini-macro-keyboard:MP2359DJ-LF-Z U?
U 1 1 6003F08A
P 4000 3000
F 0 "U?" H 4000 3375 50  0000 C CNN
F 1 "MP2359DJ-LF-Z" H 4000 3284 50  0000 C CNN
F 2 "" H 4000 3000 50  0001 C CNN
F 3 "" H 4000 3000 50  0001 C CNN
	1    4000 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6003FF31
P 3500 2850
F 0 "#PWR?" H 3500 2700 50  0001 C CNN
F 1 "+5V" H 3515 3023 50  0000 C CNN
F 2 "" H 3500 2850 50  0001 C CNN
F 3 "" H 3500 2850 50  0001 C CNN
	1    3500 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60040921
P 3500 3050
F 0 "#PWR?" H 3500 2800 50  0001 C CNN
F 1 "GND" H 3505 2877 50  0000 C CNN
F 2 "" H 3500 3050 50  0001 C CNN
F 3 "" H 3500 3050 50  0001 C CNN
	1    3500 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 600410FF
P 3500 2950
F 0 "C?" H 3350 3050 50  0000 L CNN
F 1 "10u" H 3300 2850 50  0000 L CNN
F 2 "" H 3500 2950 50  0001 C CNN
F 3 "~" H 3500 2950 50  0001 C CNN
	1    3500 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2850 3700 3050
Wire Wire Line
	3700 2850 3500 2850
Connection ~ 3700 2850
Connection ~ 3500 2850
$Comp
L Device:D_Schottky_Small D?
U 1 1 600485AC
P 4850 3100
F 0 "D?" V 4804 3170 50  0000 L CNN
F 1 "B5819W" V 4895 3170 50  0000 L CNN
F 2 "" V 4850 3100 50  0001 C CNN
F 3 "~" V 4850 3100 50  0001 C CNN
	1    4850 3100
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 600491AA
P 4500 2850
F 0 "C?" V 4400 2900 50  0000 L CNN
F 1 "10n" V 4400 2750 50  0000 L CNN
F 2 "" H 4500 2850 50  0001 C CNN
F 3 "~" H 4500 2850 50  0001 C CNN
	1    4500 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 2850 4400 2850
$Comp
L Device:L_Small L?
U 1 1 6004E9B3
P 5200 2950
F 0 "L?" V 5300 2950 50  0000 C CNN
F 1 "10u" V 5150 2950 50  0000 C CNN
F 2 "" H 5200 2950 50  0001 C CNN
F 3 "~" H 5200 2950 50  0001 C CNN
	1    5200 2950
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 600536F1
P 5550 3100
F 0 "C?" H 5650 3150 50  0000 L CNN
F 1 "22n" H 5650 3050 50  0000 L CNN
F 2 "" H 5550 3100 50  0001 C CNN
F 3 "~" H 5550 3100 50  0001 C CNN
	1    5550 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 60055E76
P 5550 2950
F 0 "#PWR?" H 5550 2800 50  0001 C CNN
F 1 "+3.3V" H 5565 3123 50  0000 C CNN
F 2 "" H 5550 2950 50  0001 C CNN
F 3 "" H 5550 2950 50  0001 C CNN
	1    5550 2950
	1    0    0    -1  
$EndComp
Connection ~ 4850 2950
Wire Wire Line
	4850 2950 5100 2950
Connection ~ 5550 2950
Wire Wire Line
	5300 2950 5550 2950
$Comp
L Device:R_Small R?
U 1 1 600629FA
P 5900 3050
F 0 "R?" H 6050 3100 50  0000 C CNN
F 1 "47k" H 6050 3000 50  0000 C CNN
F 2 "" H 5900 3050 50  0001 C CNN
F 3 "~" H 5900 3050 50  0001 C CNN
	1    5900 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60063979
P 5900 3350
F 0 "R?" H 6050 3400 50  0000 C CNN
F 1 "15k" H 6050 3300 50  0000 C CNN
F 2 "" H 5900 3350 50  0001 C CNN
F 3 "~" H 5900 3350 50  0001 C CNN
	1    5900 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60063B85
P 5900 3550
F 0 "R?" H 6050 3600 50  0000 C CNN
F 1 "270" H 6050 3500 50  0000 C CNN
F 2 "" H 5900 3550 50  0001 C CNN
F 3 "~" H 5900 3550 50  0001 C CNN
	1    5900 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 600659EC
P 5550 3200
F 0 "#PWR?" H 5550 2950 50  0001 C CNN
F 1 "GND" H 5555 3027 50  0000 C CNN
F 2 "" H 5550 3200 50  0001 C CNN
F 3 "" H 5550 3200 50  0001 C CNN
	1    5550 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2950 4850 3000
$Comp
L power:GND #PWR?
U 1 1 6006E9D4
P 4850 3200
F 0 "#PWR?" H 4850 2950 50  0001 C CNN
F 1 "GND" H 4855 3027 50  0000 C CNN
F 2 "" H 4850 3200 50  0001 C CNN
F 3 "" H 4850 3200 50  0001 C CNN
	1    4850 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2950 5550 3000
$Comp
L power:GND #PWR?
U 1 1 6007A36C
P 5900 3650
F 0 "#PWR?" H 5900 3400 50  0001 C CNN
F 1 "GND" H 5905 3477 50  0000 C CNN
F 2 "" H 5900 3650 50  0001 C CNN
F 3 "" H 5900 3650 50  0001 C CNN
	1    5900 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2950 5550 2950
Text GLabel 4300 3050 2    50   Input ~ 0
BUCK_FB
Text GLabel 6150 3200 2    50   Input ~ 0
BUCK_FB
Wire Wire Line
	5900 3150 5900 3200
Wire Wire Line
	6150 3200 5900 3200
Connection ~ 5900 3200
Wire Wire Line
	5900 3200 5900 3250
Wire Wire Line
	4300 2950 4650 2950
Wire Wire Line
	4600 2850 4650 2850
Wire Wire Line
	4650 2850 4650 2950
Connection ~ 4650 2950
Wire Wire Line
	4650 2950 4850 2950
$Comp
L Device:R_Small R?
U 1 1 60089BCA
P 7250 1150
F 0 "R?" V 7350 1150 50  0000 C CNN
F 1 "20" V 7150 1150 50  0000 C CNN
F 2 "" H 7250 1150 50  0001 C CNN
F 3 "~" H 7250 1150 50  0001 C CNN
	1    7250 1150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7350 1150 7550 1150
Wire Wire Line
	7150 1150 6850 1150
$Comp
L Device:R_Small R?
U 1 1 6008FD4C
P 6850 1350
F 0 "R?" H 6750 1450 50  0000 C CNN
F 1 "1k5" H 6750 1250 50  0000 C CNN
F 2 "" H 6850 1350 50  0001 C CNN
F 3 "~" H 6850 1350 50  0001 C CNN
	1    6850 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1150 6850 1250
Connection ~ 6850 1150
Wire Wire Line
	6850 1150 6700 1150
$Comp
L power:GND #PWR?
U 1 1 60092073
P 6850 1650
F 0 "#PWR?" H 6850 1400 50  0001 C CNN
F 1 "GND" H 6855 1477 50  0000 C CNN
F 2 "" H 6850 1650 50  0001 C CNN
F 3 "" H 6850 1650 50  0001 C CNN
	1    6850 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1650 6850 1450
$Comp
L Device:R_Small R?
U 1 1 60094CF8
P 8450 1150
F 0 "R?" V 8550 1150 50  0000 C CNN
F 1 "20" V 8350 1150 50  0000 C CNN
F 2 "" H 8450 1150 50  0001 C CNN
F 3 "~" H 8450 1150 50  0001 C CNN
	1    8450 1150
	0    -1   -1   0   
$EndComp
Text GLabel 3700 4450 0    50   Input ~ 0
LED_1
$Comp
L Device:LED_Small D?
U 1 1 600962B3
P 3950 4450
F 0 "D?" H 3950 4350 50  0000 C CNN
F 1 "BLUE" H 3950 4600 50  0000 C CNN
F 2 "" V 3950 4450 50  0001 C CNN
F 3 "~" V 3950 4450 50  0001 C CNN
	1    3950 4450
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6009B719
P 4300 4450
F 0 "R?" V 4400 4450 50  0000 C CNN
F 1 "330" V 4200 4450 50  0000 C CNN
F 2 "" H 4300 4450 50  0001 C CNN
F 3 "~" H 4300 4450 50  0001 C CNN
	1    4300 4450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6009BEEE
P 4550 4450
F 0 "#PWR?" H 4550 4200 50  0001 C CNN
F 1 "GND" H 4555 4277 50  0000 C CNN
F 2 "" H 4550 4450 50  0001 C CNN
F 3 "" H 4550 4450 50  0001 C CNN
	1    4550 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4450 4400 4450
Wire Wire Line
	4200 4450 4050 4450
Wire Wire Line
	3700 4450 3850 4450
$Comp
L Device:LED_Small D?
U 1 1 600AA3DB
P 3950 4800
F 0 "D?" H 3950 4700 50  0000 C CNN
F 1 "BLUE" H 3950 4950 50  0000 C CNN
F 2 "" V 3950 4800 50  0001 C CNN
F 3 "~" V 3950 4800 50  0001 C CNN
	1    3950 4800
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 600AA3E1
P 4300 4800
F 0 "R?" V 4400 4800 50  0000 C CNN
F 1 "330" V 4200 4800 50  0000 C CNN
F 2 "" H 4300 4800 50  0001 C CNN
F 3 "~" H 4300 4800 50  0001 C CNN
	1    4300 4800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 600AA3E7
P 4550 4800
F 0 "#PWR?" H 4550 4550 50  0001 C CNN
F 1 "GND" H 4555 4627 50  0000 C CNN
F 2 "" H 4550 4800 50  0001 C CNN
F 3 "" H 4550 4800 50  0001 C CNN
	1    4550 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4800 4400 4800
Wire Wire Line
	4200 4800 4050 4800
Wire Wire Line
	3700 4800 3850 4800
$Comp
L Device:LED_Small D?
U 1 1 600AC5B3
P 3950 5150
F 0 "D?" H 3950 5050 50  0000 C CNN
F 1 "BLUE" H 3950 5300 50  0000 C CNN
F 2 "" V 3950 5150 50  0001 C CNN
F 3 "~" V 3950 5150 50  0001 C CNN
	1    3950 5150
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 600AC5B9
P 4300 5150
F 0 "R?" V 4400 5150 50  0000 C CNN
F 1 "330" V 4200 5150 50  0000 C CNN
F 2 "" H 4300 5150 50  0001 C CNN
F 3 "~" H 4300 5150 50  0001 C CNN
	1    4300 5150
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 600AC5BF
P 4550 5150
F 0 "#PWR?" H 4550 4900 50  0001 C CNN
F 1 "GND" H 4555 4977 50  0000 C CNN
F 2 "" H 4550 5150 50  0001 C CNN
F 3 "" H 4550 5150 50  0001 C CNN
	1    4550 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 5150 4400 5150
Wire Wire Line
	4200 5150 4050 5150
Wire Wire Line
	3700 5150 3850 5150
Text GLabel 3700 4800 0    50   Input ~ 0
LED_2
Text GLabel 3700 5150 0    50   Input ~ 0
LED_3
$EndSCHEMATC
