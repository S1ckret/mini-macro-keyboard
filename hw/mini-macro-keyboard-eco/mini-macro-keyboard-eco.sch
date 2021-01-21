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
L mini-macro-keyboard-eco-rescue:GND-power #PWR0101
U 1 1 5FF988F7
P 3550 3500
F 0 "#PWR0101" H 3550 3250 50  0001 C CNN
F 1 "GND" H 3555 3327 50  0000 C CNN
F 2 "" H 3550 3500 50  0001 C CNN
F 3 "" H 3550 3500 50  0001 C CNN
	1    3550 3500
	1    0    0    -1  
$EndComp
$Comp
L mini-macro-keyboard-eco-rescue:C_Small-Device C5
U 1 1 5FF9BD70
P 3300 1200
F 0 "C5" H 3400 1250 50  0000 L CNN
F 1 "100n" H 3350 1150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3300 1200 50  0001 C CNN
F 3 "~" H 3300 1200 50  0001 C CNN
	1    3300 1200
	1    0    0    -1  
$EndComp
$Comp
L mini-macro-keyboard-eco-rescue:C_Small-Device C6
U 1 1 5FF9D075
P 3600 1200
F 0 "C6" H 3700 1250 50  0000 L CNN
F 1 "100n" H 3650 1150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3600 1200 50  0001 C CNN
F 3 "~" H 3600 1200 50  0001 C CNN
	1    3600 1200
	1    0    0    -1  
$EndComp
$Comp
L mini-macro-keyboard-eco-rescue:C_Small-Device C4
U 1 1 5FF9DDD1
P 1500 1500
F 0 "C4" H 1600 1550 50  0000 L CNN
F 1 "100n" H 1550 1450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1500 1500 50  0001 C CNN
F 3 "~" H 1500 1500 50  0001 C CNN
	1    1500 1500
	1    0    0    -1  
$EndComp
$Comp
L mini-macro-keyboard-eco-rescue:C_Small-Device C7
U 1 1 5FF9E127
P 3950 1200
F 0 "C7" H 4050 1250 50  0000 L CNN
F 1 "4.7u" H 4000 1150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3950 1200 50  0001 C CNN
F 3 "~" H 3950 1200 50  0001 C CNN
	1    3950 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1000 3300 1100
Wire Wire Line
	3300 1100 3600 1100
Connection ~ 3300 1100
Connection ~ 3600 1100
Wire Wire Line
	3300 1300 3600 1300
Connection ~ 3600 1300
$Comp
L mini-macro-keyboard-eco-rescue:GND-power #PWR0102
U 1 1 5FF9F1E9
P 3300 1450
F 0 "#PWR0102" H 3300 1200 50  0001 C CNN
F 1 "GND" H 3305 1277 50  0000 C CNN
F 2 "" H 3300 1450 50  0001 C CNN
F 3 "" H 3300 1450 50  0001 C CNN
	1    3300 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1300 3300 1450
Connection ~ 3300 1300
$Comp
L mini-macro-keyboard-eco-rescue:+3.3V-power #PWR0103
U 1 1 5FF9FB12
P 3300 1000
F 0 "#PWR0103" H 3300 850 50  0001 C CNN
F 1 "+3.3V" H 3315 1173 50  0000 C CNN
F 2 "" H 3300 1000 50  0001 C CNN
F 3 "" H 3300 1000 50  0001 C CNN
	1    3300 1000
	1    0    0    -1  
$EndComp
Text GLabel 3050 2400 0    50   Input ~ 0
BOOT0
Text GLabel 3050 2200 0    50   Input ~ 0
NRST
Wire Wire Line
	1500 1200 1500 1250
$Comp
L mini-macro-keyboard-eco-rescue:GND-power #PWR0106
U 1 1 5FFEBFB1
P 1500 1850
F 0 "#PWR0106" H 1500 1600 50  0001 C CNN
F 1 "GND" H 1505 1677 50  0000 C CNN
F 2 "" H 1500 1850 50  0001 C CNN
F 3 "" H 1500 1850 50  0001 C CNN
	1    1500 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1400 1500 1250
Connection ~ 1500 1250
Text GLabel 1650 1250 2    50   Input ~ 0
NRST
Wire Wire Line
	1500 1250 1650 1250
Text GLabel 3050 3000 0    50   Input ~ 0
OSC_IN
Text GLabel 4350 3200 2    50   Input ~ 0
SWDIO
Text GLabel 4350 3300 2    50   Input ~ 0
SWCLK
Text GLabel 4350 3100 2    50   Input ~ 0
USB_D+
Text GLabel 4350 3000 2    50   Input ~ 0
USB_D-
Text GLabel 4350 2500 2    50   Input ~ 0
LED_3
Text GLabel 4350 2300 2    50   Input ~ 0
LED_2
Text GLabel 4350 2200 2    50   Input ~ 0
LED_1
Text GLabel 4350 2700 2    50   Input ~ 0
SW_1
Text GLabel 4350 2800 2    50   Input ~ 0
SW_2
Text GLabel 4350 2900 2    50   Input ~ 0
SW_3
Text GLabel 3050 3100 0    50   Input ~ 0
OSC_OUT
$Comp
L mini-macro-keyboard-eco-rescue:C_Small-Device C9
U 1 1 6000E4D6
P 1200 4750
F 0 "C9" H 950 4700 50  0000 L CNN
F 1 "12p" H 950 4800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1200 4750 50  0001 C CNN
F 3 "~" H 1200 4750 50  0001 C CNN
	1    1200 4750
	-1   0    0    1   
$EndComp
$Comp
L mini-macro-keyboard-eco-rescue:R_Small-Device R4
U 1 1 5FFE7355
P 1500 1100
F 0 "R4" V 1600 1100 50  0000 C CNN
F 1 "10k" V 1400 1100 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1500 1100 50  0001 C CNN
F 3 "~" H 1500 1100 50  0001 C CNN
	1    1500 1100
	1    0    0    -1  
$EndComp
$Comp
L mini-macro-keyboard-eco-rescue:R_Small-Device R7
U 1 1 60011E97
P 1750 4150
F 0 "R7" H 1900 4200 50  0000 C CNN
F 1 "47" H 1900 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1750 4150 50  0001 C CNN
F 3 "~" H 1750 4150 50  0001 C CNN
	1    1750 4150
	1    0    0    -1  
$EndComp
Text GLabel 1950 3900 2    50   Input ~ 0
OSC_IN
Text GLabel 1950 4000 2    50   Input ~ 0
OSC_OUT
$Comp
L mini-macro-keyboard-eco-rescue:USB_B_Micro-Connector J0
U 1 1 6001BB49
P 1000 6600
F 0 "J0" H 1057 7067 50  0000 C CNN
F 1 "USB" H 1057 6976 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Molex-105017-0001" H 1150 6550 50  0001 C CNN
F 3 "~" H 1150 6550 50  0001 C CNN
	1    1000 6600
	1    0    0    -1  
$EndComp
$Comp
L mini-macro-keyboard-eco-rescue:GND-power #PWR0107
U 1 1 60020BF2
P 1000 7050
F 0 "#PWR0107" H 1000 6800 50  0001 C CNN
F 1 "GND" H 1005 6877 50  0000 C CNN
F 2 "" H 1000 7050 50  0001 C CNN
F 3 "" H 1000 7050 50  0001 C CNN
	1    1000 7050
	1    0    0    -1  
$EndComp
NoConn ~ 900  7000
Wire Wire Line
	1300 6800 1300 7000
Wire Wire Line
	1300 7000 1000 7000
Connection ~ 1000 7000
Wire Wire Line
	1000 7000 1000 7050
$Comp
L mini-macro-keyboard-eco-rescue:+5V-power #PWR0108
U 1 1 60024143
P 1450 6300
F 0 "#PWR0108" H 1450 6150 50  0001 C CNN
F 1 "+5V" H 1465 6473 50  0000 C CNN
F 2 "" H 1450 6300 50  0001 C CNN
F 3 "" H 1450 6300 50  0001 C CNN
	1    1450 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 6300 1450 6400
Wire Wire Line
	1450 6400 1300 6400
$Comp
L mini-macro-keyboard-eco-rescue:USBLC6-2SC6-Power_Protection U1
U 1 1 60025D65
P 3650 6550
F 0 "U1" H 3900 6900 50  0000 C CNN
F 1 "USBLC6-2SC6" H 3950 6200 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 3650 6050 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/usblc6-2.pdf" H 3850 6900 50  0001 C CNN
	1    3650 6550
	1    0    0    -1  
$EndComp
Text GLabel 1300 6600 2    50   Input ~ 0
USB_CONN_D+
Text GLabel 1300 6700 2    50   Input ~ 0
USB_CONN_D-
Text GLabel 3250 6650 0    50   Input ~ 0
USB_CONN_D+
$Comp
L mini-macro-keyboard-eco-rescue:+5V-power #PWR0109
U 1 1 6002EBC6
P 3650 6150
F 0 "#PWR0109" H 3650 6000 50  0001 C CNN
F 1 "+5V" H 3665 6323 50  0000 C CNN
F 2 "" H 3650 6150 50  0001 C CNN
F 3 "" H 3650 6150 50  0001 C CNN
	1    3650 6150
	1    0    0    -1  
$EndComp
$Comp
L mini-macro-keyboard-eco-rescue:GND-power #PWR0110
U 1 1 6002F1AC
P 3650 6950
F 0 "#PWR0110" H 3650 6700 50  0001 C CNN
F 1 "GND" H 3655 6777 50  0000 C CNN
F 2 "" H 3650 6950 50  0001 C CNN
F 3 "" H 3650 6950 50  0001 C CNN
	1    3650 6950
	1    0    0    -1  
$EndComp
Text GLabel 3250 6450 0    50   Input ~ 0
USB_D+
Text GLabel 4050 6650 2    50   Input ~ 0
USB_CONN_D-
Text GLabel 4050 6450 2    50   Input ~ 0
USB_D-
Text GLabel 7650 900  0    50   Input ~ 0
LED_1
$Comp
L mini-macro-keyboard-eco-rescue:LED_Small-Device D1
U 1 1 600962B3
P 7900 900
F 0 "D1" H 7900 800 50  0000 C CNN
F 1 "BLUE" H 7900 1050 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 7900 900 50  0001 C CNN
F 3 "~" V 7900 900 50  0001 C CNN
	1    7900 900 
	-1   0    0    1   
$EndComp
$Comp
L mini-macro-keyboard-eco-rescue:R_Small-Device R11
U 1 1 6009B719
P 8250 900
F 0 "R11" V 8350 900 50  0000 C CNN
F 1 "330" V 8150 900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8250 900 50  0001 C CNN
F 3 "~" H 8250 900 50  0001 C CNN
	1    8250 900 
	0    -1   -1   0   
$EndComp
$Comp
L mini-macro-keyboard-eco-rescue:GND-power #PWR0118
U 1 1 6009BEEE
P 8500 900
F 0 "#PWR0118" H 8500 650 50  0001 C CNN
F 1 "GND" H 8505 727 50  0000 C CNN
F 2 "" H 8500 900 50  0001 C CNN
F 3 "" H 8500 900 50  0001 C CNN
	1    8500 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 900  8350 900 
Wire Wire Line
	8150 900  8000 900 
Wire Wire Line
	7650 900  7800 900 
$Comp
L mini-macro-keyboard-eco-rescue:LED_Small-Device D2
U 1 1 600AA3DB
P 7900 1250
F 0 "D2" H 7900 1150 50  0000 C CNN
F 1 "BLUE" H 7900 1400 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 7900 1250 50  0001 C CNN
F 3 "~" V 7900 1250 50  0001 C CNN
	1    7900 1250
	-1   0    0    1   
$EndComp
$Comp
L mini-macro-keyboard-eco-rescue:R_Small-Device R12
U 1 1 600AA3E1
P 8250 1250
F 0 "R12" V 8350 1250 50  0000 C CNN
F 1 "330" V 8150 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8250 1250 50  0001 C CNN
F 3 "~" H 8250 1250 50  0001 C CNN
	1    8250 1250
	0    -1   -1   0   
$EndComp
$Comp
L mini-macro-keyboard-eco-rescue:GND-power #PWR0119
U 1 1 600AA3E7
P 8500 1250
F 0 "#PWR0119" H 8500 1000 50  0001 C CNN
F 1 "GND" H 8505 1077 50  0000 C CNN
F 2 "" H 8500 1250 50  0001 C CNN
F 3 "" H 8500 1250 50  0001 C CNN
	1    8500 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 1250 8350 1250
Wire Wire Line
	8150 1250 8000 1250
Wire Wire Line
	7650 1250 7800 1250
$Comp
L mini-macro-keyboard-eco-rescue:LED_Small-Device D3
U 1 1 600AC5B3
P 7900 1600
F 0 "D3" H 7900 1500 50  0000 C CNN
F 1 "BLUE" H 7900 1750 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 7900 1600 50  0001 C CNN
F 3 "~" V 7900 1600 50  0001 C CNN
	1    7900 1600
	-1   0    0    1   
$EndComp
$Comp
L mini-macro-keyboard-eco-rescue:R_Small-Device R13
U 1 1 600AC5B9
P 8250 1600
F 0 "R13" V 8350 1600 50  0000 C CNN
F 1 "330" V 8150 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8250 1600 50  0001 C CNN
F 3 "~" H 8250 1600 50  0001 C CNN
	1    8250 1600
	0    -1   -1   0   
$EndComp
$Comp
L mini-macro-keyboard-eco-rescue:GND-power #PWR0120
U 1 1 600AC5BF
P 8500 1600
F 0 "#PWR0120" H 8500 1350 50  0001 C CNN
F 1 "GND" H 8505 1427 50  0000 C CNN
F 2 "" H 8500 1600 50  0001 C CNN
F 3 "" H 8500 1600 50  0001 C CNN
	1    8500 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 1600 8350 1600
Wire Wire Line
	8150 1600 8000 1600
Wire Wire Line
	7650 1600 7800 1600
Text GLabel 7650 1250 0    50   Input ~ 0
LED_2
Text GLabel 7650 1600 0    50   Input ~ 0
LED_3
$Comp
L mini-macro-keyboard-eco-rescue:+3.3V-power #PWR0121
U 1 1 600B8F7A
P 9700 1050
F 0 "#PWR0121" H 9700 900 50  0001 C CNN
F 1 "+3.3V" H 9715 1223 50  0000 C CNN
F 2 "" H 9700 1050 50  0001 C CNN
F 3 "" H 9700 1050 50  0001 C CNN
	1    9700 1050
	1    0    0    -1  
$EndComp
Text GLabel 10300 1150 0    50   Input ~ 0
SWDIO
Text GLabel 10300 1250 0    50   Input ~ 0
SWCLK
$Comp
L mini-macro-keyboard-eco-rescue:C_Small-Device C0
U 1 1 600C2115
P 9700 1200
F 0 "C0" H 9800 1250 50  0000 L CNN
F 1 "100n" H 9750 1150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9700 1200 50  0001 C CNN
F 3 "~" H 9700 1200 50  0001 C CNN
	1    9700 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 1450 9700 1350
$Comp
L mini-macro-keyboard-eco-rescue:GND-power #PWR0122
U 1 1 600C968A
P 9700 1450
F 0 "#PWR0122" H 9700 1200 50  0001 C CNN
F 1 "GND" H 9705 1277 50  0000 C CNN
F 2 "" H 9700 1450 50  0001 C CNN
F 3 "" H 9700 1450 50  0001 C CNN
	1    9700 1450
	1    0    0    -1  
$EndComp
$Comp
L mini-macro-keyboard-eco-rescue:SW_Push-Switch SW4
U 1 1 5FFA57A7
P 1250 1500
F 0 "SW4" V 1400 1700 50  0000 R CNN
F 1 "RESET" V 1100 1850 50  0000 R CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 1250 1700 50  0001 C CNN
F 3 "~" H 1250 1700 50  0001 C CNN
	1    1250 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1500 1600 1500 1750
Wire Wire Line
	1500 1250 1250 1250
Wire Wire Line
	1250 1250 1250 1300
Wire Wire Line
	1250 1700 1250 1750
Wire Wire Line
	1250 1750 1500 1750
Connection ~ 1500 1750
Wire Wire Line
	1500 1750 1500 1850
$Comp
L mini-macro-keyboard-eco-rescue:+3.3V-power #PWR0123
U 1 1 5FFB05C0
P 1500 1000
F 0 "#PWR0123" H 1500 850 50  0001 C CNN
F 1 "+3.3V" H 1515 1173 50  0000 C CNN
F 2 "" H 1500 1000 50  0001 C CNN
F 3 "" H 1500 1000 50  0001 C CNN
	1    1500 1000
	1    0    0    -1  
$EndComp
Wire Notes Line
	2500 2500 500  2500
Wire Notes Line
	2500 500  2500 5500
Wire Notes Line
	500  5500 5000 5500
$Comp
L mini-macro-keyboard-eco-rescue:+3.3V-power #PWR0124
U 1 1 60078817
P 3550 1900
F 0 "#PWR0124" H 3550 1750 50  0001 C CNN
F 1 "+3.3V" H 3565 2073 50  0000 C CNN
F 2 "" H 3550 1900 50  0001 C CNN
F 3 "" H 3550 1900 50  0001 C CNN
	1    3550 1900
	1    0    0    -1  
$EndComp
Wire Notes Line
	5000 500  5000 7800
Text GLabel 5900 2750 2    50   Input ~ 0
SW_1
$Comp
L mini-macro-keyboard-eco-rescue:GND-power #PWR0126
U 1 1 5FFBA643
P 5800 3350
F 0 "#PWR0126" H 5800 3100 50  0001 C CNN
F 1 "GND" H 5805 3177 50  0000 C CNN
F 2 "" H 5800 3350 50  0001 C CNN
F 3 "" H 5800 3350 50  0001 C CNN
	1    5800 3350
	1    0    0    -1  
$EndComp
Text GLabel 8300 2800 2    50   Input ~ 0
SW_3
$Comp
L mini-macro-keyboard-eco-rescue:GND-power #PWR0128
U 1 1 5FFC23D8
P 8200 3400
F 0 "#PWR0128" H 8200 3150 50  0001 C CNN
F 1 "GND" H 8205 3227 50  0000 C CNN
F 2 "" H 8200 3400 50  0001 C CNN
F 3 "" H 8200 3400 50  0001 C CNN
	1    8200 3400
	1    0    0    -1  
$EndComp
Text GLabel 7100 2750 2    50   Input ~ 0
SW_2
$Comp
L mini-macro-keyboard-eco-rescue:GND-power #PWR0130
U 1 1 5FFBFAF2
P 7000 3400
F 0 "#PWR0130" H 7000 3150 50  0001 C CNN
F 1 "GND" H 7005 3227 50  0000 C CNN
F 2 "" H 7000 3400 50  0001 C CNN
F 3 "" H 7000 3400 50  0001 C CNN
	1    7000 3400
	1    0    0    -1  
$EndComp
Text Notes 550  2650 0    50   ~ 0
Boot switch
Text Notes 550  3700 0    50   ~ 0
Oscillator 16 MHz
Text Notes 550  5700 0    50   ~ 0
USB 2.0 FS
Text Notes 5100 650  0    50   ~ 0
Low dropout regulator (100 mA max)\n
Text Notes 2600 650  0    50   ~ 0
STM32 Microcontroller\n
Text Notes 550  650  0    50   ~ 0
Reset push button
Text Notes 7100 650  0    50   ~ 0
LEDs\n
Text Notes 5100 2200 0    50   ~ 0
Mechanical key switches
Text Notes 9100 650  0    50   ~ 0
Debug  SWD connector
$Comp
L mini-macro-keyboard-eco-rescue:XC6206PxxxMR-Regulator_Linear U2
U 1 1 601060D2
P 5850 1200
F 0 "U2" H 5850 1442 50  0000 C CNN
F 1 "XC6206P322MR" H 5850 1351 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5850 1425 50  0001 C CIN
F 3 "https://www.torexsemi.com/file/xc6206/XC6206.pdf" H 5850 1200 50  0001 C CNN
	1    5850 1200
	1    0    0    -1  
$EndComp
$Comp
L mini-macro-keyboard-eco-rescue:GND-power #PWR03
U 1 1 60114811
P 5850 1500
F 0 "#PWR03" H 5850 1250 50  0001 C CNN
F 1 "GND" H 5855 1327 50  0000 C CNN
F 2 "" H 5850 1500 50  0001 C CNN
F 3 "" H 5850 1500 50  0001 C CNN
	1    5850 1500
	1    0    0    -1  
$EndComp
$Comp
L mini-macro-keyboard-eco-rescue:C_Small-Device C10
U 1 1 60114EAE
P 5400 1400
F 0 "C10" H 5450 1500 50  0000 L CNN
F 1 "1u" H 5500 1300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5400 1400 50  0001 C CNN
F 3 "~" H 5400 1400 50  0001 C CNN
	1    5400 1400
	1    0    0    -1  
$EndComp
$Comp
L mini-macro-keyboard-eco-rescue:C_Small-Device C11
U 1 1 6011562F
P 6300 1400
F 0 "C11" H 6350 1500 50  0000 L CNN
F 1 "1u" H 6400 1300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6300 1400 50  0001 C CNN
F 3 "~" H 6300 1400 50  0001 C CNN
	1    6300 1400
	1    0    0    -1  
$EndComp
$Comp
L mini-macro-keyboard-eco-rescue:+3.3V-power #PWR04
U 1 1 601161B2
P 6300 1150
F 0 "#PWR04" H 6300 1000 50  0001 C CNN
F 1 "+3.3V" H 6315 1323 50  0000 C CNN
F 2 "" H 6300 1150 50  0001 C CNN
F 3 "" H 6300 1150 50  0001 C CNN
	1    6300 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 1200 5400 1200
Wire Wire Line
	5400 1200 5400 1150
Wire Wire Line
	5400 1200 5400 1300
Connection ~ 5400 1200
$Comp
L mini-macro-keyboard-eco-rescue:GND-power #PWR02
U 1 1 6011D9DE
P 5400 1500
F 0 "#PWR02" H 5400 1250 50  0001 C CNN
F 1 "GND" H 5405 1327 50  0000 C CNN
F 2 "" H 5400 1500 50  0001 C CNN
F 3 "" H 5400 1500 50  0001 C CNN
	1    5400 1500
	1    0    0    -1  
$EndComp
$Comp
L mini-macro-keyboard-eco-rescue:GND-power #PWR05
U 1 1 6011EC41
P 6300 1500
F 0 "#PWR05" H 6300 1250 50  0001 C CNN
F 1 "GND" H 6305 1327 50  0000 C CNN
F 2 "" H 6300 1500 50  0001 C CNN
F 3 "" H 6300 1500 50  0001 C CNN
	1    6300 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 1200 6300 1200
Wire Wire Line
	6300 1150 6300 1200
Connection ~ 6300 1200
Wire Wire Line
	6300 1200 6300 1300
$Comp
L mini-macro-keyboard-eco-rescue:+5V-power #PWR01
U 1 1 6012467F
P 5400 1150
F 0 "#PWR01" H 5400 1000 50  0001 C CNN
F 1 "+5V" H 5415 1323 50  0000 C CNN
F 2 "" H 5400 1150 50  0001 C CNN
F 3 "" H 5400 1150 50  0001 C CNN
	1    5400 1150
	1    0    0    -1  
$EndComp
$Comp
L mini-macro-keyboard-eco-rescue:STM32F070F6Px-MCU_ST_STM32F0 U3
U 1 1 5FFB40A7
P 3750 2700
F 0 "U3" H 4100 3400 50  0000 C CNN
F 1 "STM32F070F6P6" H 4000 1900 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 3150 2000 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00141386.pdf" H 3750 2700 50  0001 C CNN
	1    3750 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1900 3550 2000
Wire Wire Line
	3550 2000 3650 2000
Connection ~ 3550 2000
NoConn ~ 4350 2400
Text GLabel 4350 2600 2    50   Input ~ 0
SW_BACKLIGHT
Text GLabel 3050 3300 0    50   Input ~ 0
SW_LAYOUT
Wire Wire Line
	3600 1100 3950 1100
Wire Wire Line
	3600 1300 3950 1300
Wire Wire Line
	9700 1050 9700 1100
Connection ~ 9700 1050
Wire Wire Line
	9700 1350 9700 1300
Connection ~ 9700 1350
Wire Wire Line
	9700 1050 10300 1050
Wire Wire Line
	9700 1350 10300 1350
Text Notes 2800 7700 0    50   ~ 0
Note: STM32F070F6P6 has internal D+ pull up resistor\n
$Comp
L mini-macro-keyboard-eco-rescue:Crystal_GND24_Small-Device Y1
U 1 1 5FFE3AEF
P 1500 4500
F 0 "Y1" H 1450 4850 50  0000 L CNN
F 1 "16 MHz" H 1350 4750 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_3225-4Pin_3.2x2.5mm" H 1500 4500 50  0001 C CNN
F 3 "~" H 1500 4500 50  0001 C CNN
	1    1500 4500
	1    0    0    -1  
$EndComp
$Comp
L mini-macro-keyboard-eco-rescue:GND-power #PWR0111
U 1 1 5FFE5909
P 1500 4950
F 0 "#PWR0111" H 1500 4700 50  0001 C CNN
F 1 "GND" H 1505 4777 50  0000 C CNN
F 2 "" H 1500 4950 50  0001 C CNN
F 3 "" H 1500 4950 50  0001 C CNN
	1    1500 4950
	1    0    0    -1  
$EndComp
$Comp
L mini-macro-keyboard-eco-rescue:C_Small-Device C8
U 1 1 5FFE79A1
P 1750 4750
F 0 "C8" H 1550 4700 50  0000 L CNN
F 1 "12p" H 1500 4800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1750 4750 50  0001 C CNN
F 3 "~" H 1750 4750 50  0001 C CNN
	1    1750 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	1600 4500 1750 4500
Wire Wire Line
	1750 4500 1750 4650
Wire Wire Line
	1750 4850 1750 4950
Wire Wire Line
	1750 4950 1500 4950
Connection ~ 1500 4950
Wire Wire Line
	1500 4600 1500 4650
Wire Wire Line
	1200 4850 1200 4950
Wire Wire Line
	1200 4950 1500 4950
Wire Wire Line
	1400 4500 1200 4500
Wire Wire Line
	1200 4500 1200 4650
Wire Wire Line
	1500 4400 1500 4300
Wire Wire Line
	1500 4300 1650 4300
Wire Wire Line
	1650 4300 1650 4650
Wire Wire Line
	1650 4650 1500 4650
Connection ~ 1500 4650
Wire Wire Line
	1500 4650 1500 4950
Wire Wire Line
	1750 4250 1750 4500
Connection ~ 1750 4500
Connection ~ 1200 4500
Wire Wire Line
	1950 4000 1750 4000
Wire Wire Line
	1750 4000 1750 4050
Wire Notes Line
	7000 500  7000 2000
Wire Notes Line
	5000 2000 11200 2000
Wire Notes Line
	11200 4000 5000 4000
Text GLabel 9850 3400 0    50   Input ~ 0
SW_BACKLIGHT
Wire Wire Line
	10450 3500 10500 3500
Wire Wire Line
	10450 3300 10500 3300
$Comp
L mini-macro-keyboard-eco-rescue:R_Small-Device R6
U 1 1 6000BFF1
P 9950 3400
F 0 "R6" V 10050 3400 50  0000 C CNN
F 1 "10k" V 9850 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 9950 3400 50  0001 C CNN
F 3 "~" H 9950 3400 50  0001 C CNN
	1    9950 3400
	0    -1   -1   0   
$EndComp
$Comp
L mini-macro-keyboard-eco-rescue:+3.3V-power #PWR0112
U 1 1 6000BFEB
P 10500 3300
F 0 "#PWR0112" H 10500 3150 50  0001 C CNN
F 1 "+3.3V" H 10515 3473 50  0000 C CNN
F 2 "" H 10500 3300 50  0001 C CNN
F 3 "" H 10500 3300 50  0001 C CNN
	1    10500 3300
	1    0    0    -1  
$EndComp
$Comp
L mini-macro-keyboard-eco-rescue:GND-power #PWR0113
U 1 1 6000BFE5
P 10500 3500
F 0 "#PWR0113" H 10500 3250 50  0001 C CNN
F 1 "GND" H 10505 3327 50  0000 C CNN
F 2 "" H 10500 3500 50  0001 C CNN
F 3 "" H 10500 3500 50  0001 C CNN
	1    10500 3500
	1    0    0    -1  
$EndComp
Wire Notes Line
	9000 500  9000 4000
$Comp
L mini-macro-keyboard-eco-rescue:GND-power #PWR0114
U 1 1 60009328
P 10500 2750
F 0 "#PWR0114" H 10500 2500 50  0001 C CNN
F 1 "GND" H 10505 2577 50  0000 C CNN
F 2 "" H 10500 2750 50  0001 C CNN
F 3 "" H 10500 2750 50  0001 C CNN
	1    10500 2750
	1    0    0    -1  
$EndComp
$Comp
L mini-macro-keyboard-eco-rescue:+3.3V-power #PWR0115
U 1 1 6000932E
P 10500 2550
F 0 "#PWR0115" H 10500 2400 50  0001 C CNN
F 1 "+3.3V" H 10515 2723 50  0000 C CNN
F 2 "" H 10500 2550 50  0001 C CNN
F 3 "" H 10500 2550 50  0001 C CNN
	1    10500 2550
	1    0    0    -1  
$EndComp
$Comp
L mini-macro-keyboard-eco-rescue:R_Small-Device R5
U 1 1 60009334
P 9950 2650
F 0 "R5" V 10050 2650 50  0000 C CNN
F 1 "10k" V 9850 2650 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 9950 2650 50  0001 C CNN
F 3 "~" H 9950 2650 50  0001 C CNN
	1    9950 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10450 2550 10500 2550
Wire Wire Line
	10450 2750 10500 2750
Text GLabel 9850 2650 0    50   Input ~ 0
SW_LAYOUT
Text Notes 9100 2200 0    50   ~ 0
Switches
Text GLabel 1100 3000 0    50   Input ~ 0
BOOT0
Wire Wire Line
	1700 3100 1750 3100
Wire Wire Line
	1700 2900 1750 2900
$Comp
L mini-macro-keyboard-eco-rescue:R_Small-Device R0
U 1 1 5FFD7E6E
P 1200 3000
F 0 "R0" V 1300 3000 50  0000 C CNN
F 1 "10k" V 1100 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1200 3000 50  0001 C CNN
F 3 "~" H 1200 3000 50  0001 C CNN
	1    1200 3000
	0    -1   -1   0   
$EndComp
$Comp
L mini-macro-keyboard-eco-rescue:+3.3V-power #PWR0105
U 1 1 5FFD7490
P 1750 2900
F 0 "#PWR0105" H 1750 2750 50  0001 C CNN
F 1 "+3.3V" H 1765 3073 50  0000 C CNN
F 2 "" H 1750 2900 50  0001 C CNN
F 3 "" H 1750 2900 50  0001 C CNN
	1    1750 2900
	1    0    0    -1  
$EndComp
$Comp
L mini-macro-keyboard-eco-rescue:GND-power #PWR0104
U 1 1 5FFD59D1
P 1750 3100
F 0 "#PWR0104" H 1750 2850 50  0001 C CNN
F 1 "GND" H 1755 2927 50  0000 C CNN
F 2 "" H 1750 3100 50  0001 C CNN
F 3 "" H 1750 3100 50  0001 C CNN
	1    1750 3100
	1    0    0    -1  
$EndComp
$Comp
L mini-macro-keyboard-eco-rescue:SW_SPDT-Switch SW0
U 1 1 5FFCFED1
P 1500 3000
F 0 "SW0" H 1500 3200 50  0000 C CNN
F 1 "BOOT" H 1500 2800 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPDT_PCM12" H 1500 3000 50  0001 C CNN
F 3 "~" H 1500 3000 50  0001 C CNN
	1    1500 3000
	1    0    0    -1  
$EndComp
Wire Notes Line
	2500 3500 500  3500
Wire Wire Line
	1950 3900 1200 3900
Wire Wire Line
	1200 3900 1200 4500
$Comp
L mini-macro-keyboard-eco-rescue:SW_SPDT-Switch SW6
U 1 1 6000BFDF
P 10250 3400
F 0 "SW6" H 10250 3600 50  0000 C CNN
F 1 "BACKLIGHT" H 10250 3200 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPDT_PCM12" H 10250 3400 50  0001 C CNN
F 3 "~" H 10250 3400 50  0001 C CNN
	1    10250 3400
	1    0    0    -1  
$EndComp
$Comp
L mini-macro-keyboard-eco-rescue:Conn_01x04_Male-Connector J1
U 1 1 5FFC7CBC
P 10500 1150
F 0 "J1" H 10472 1124 50  0000 R CNN
F 1 "DEBUG_SWD" H 10472 1033 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Horizontal" H 10500 1150 50  0001 C CNN
F 3 "~" H 10500 1150 50  0001 C CNN
	1    10500 1150
	-1   0    0    -1  
$EndComp
$Comp
L mini-macro-keyboard-eco-rescue:SW_Push-Switch SW3
U 1 1 5FFC23E7
P 8200 3100
F 0 "SW3" V 8350 3300 50  0000 R CNN
F 1 "SW_Cherry_MX_1.00u_PCB" H 8700 3400 50  0000 R CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 8200 3300 50  0001 C CNN
F 3 "~" H 8200 3300 50  0001 C CNN
	1    8200 3100
	0    -1   -1   0   
$EndComp
$Comp
L mini-macro-keyboard-eco-rescue:SW_SPDT-Switch SW5
U 1 1 60009322
P 10250 2650
F 0 "SW5" H 10250 2850 50  0000 C CNN
F 1 "LAYOUT" H 10250 2450 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPDT_PCM12" H 10250 2650 50  0001 C CNN
F 3 "~" H 10250 2650 50  0001 C CNN
	1    10250 2650
	1    0    0    -1  
$EndComp
$Comp
L mini-macro-keyboard-eco-rescue:SW_Push-Switch SW2
U 1 1 5FFBFB01
P 7000 3050
F 0 "SW2" V 7150 3250 50  0000 R CNN
F 1 "SW_Cherry_MX_1.00u_PCB" H 7500 3350 50  0000 R CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 7000 3250 50  0001 C CNN
F 3 "~" H 7000 3250 50  0001 C CNN
	1    7000 3050
	0    -1   -1   0   
$EndComp
$Comp
L mini-macro-keyboard-eco-rescue:SW_Push-Switch SW1
U 1 1 5FFBA653
P 5800 3050
F 0 "SW1" V 5950 3250 50  0000 R CNN
F 1 "SW_Cherry_MX_1.00u_PCB" H 6300 3350 50  0000 R CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 5800 3250 50  0001 C CNN
F 3 "~" H 5800 3250 50  0001 C CNN
	1    5800 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5800 3350 5800 3250
Wire Wire Line
	5900 2750 5800 2750
Wire Wire Line
	5800 2750 5800 2850
Wire Wire Line
	7100 2750 7000 2750
Wire Wire Line
	7000 2750 7000 2850
Wire Wire Line
	7000 3400 7000 3250
Wire Wire Line
	8300 2800 8200 2800
Wire Wire Line
	8200 2800 8200 2900
Wire Wire Line
	8200 3300 8200 3400
Text Notes 7000 3900 0    50   ~ 0
Note: Each pin will have internal pull-up resistor
$EndSCHEMATC
