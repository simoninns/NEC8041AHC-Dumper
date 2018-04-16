EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:d8041ahc
LIBS:74xgxx
LIBS:ac-dc
LIBS:actel
LIBS:allegro
LIBS:Altera
LIBS:analog_devices
LIBS:battery_management
LIBS:bbd
LIBS:bosch
LIBS:brooktre
LIBS:cmos_ieee
LIBS:dc-dc
LIBS:diode
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic
LIBS:graphic_symbols
LIBS:hc11
LIBS:infineon
LIBS:intersil
LIBS:ir
LIBS:Lattice
LIBS:leds
LIBS:LEM
LIBS:logic_programmable
LIBS:logo
LIBS:maxim
LIBS:mechanical
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic24mcu
LIBS:microchip_pic32mcu
LIBS:modules
LIBS:motor_drivers
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:Oscillators
LIBS:Power_Management
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:rfcom
LIBS:RFSolutions
LIBS:sensors
LIBS:silabs
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:transf
LIBS:triac_thyristor
LIBS:ttl_ieee
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:zetex
LIBS:Zilog
LIBS:NEC8041AHC dumper-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "D8041AHC ROM Dumper"
Date "2018-04-14"
Rev "1.0"
Comp "https://www.domesday86.com"
Comment1 "(c)2018 Simon Inns"
Comment2 "License: Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L +5V #PWR6
U 1 1 5AD1DCFB
P 7350 1550
F 0 "#PWR6" H 7350 1400 50  0001 C CNN
F 1 "+5V" H 7350 1690 50  0000 C CNN
F 2 "" H 7350 1550 50  0001 C CNN
F 3 "" H 7350 1550 50  0001 C CNN
	1    7350 1550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR7
U 1 1 5AD1DD11
P 7350 5850
F 0 "#PWR7" H 7350 5600 50  0001 C CNN
F 1 "GND" H 7350 5700 50  0000 C CNN
F 2 "" H 7350 5850 50  0001 C CNN
F 3 "" H 7350 5850 50  0001 C CNN
	1    7350 5850
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5AD1DD27
P 6350 1950
F 0 "R1" V 6430 1950 50  0000 C CNN
F 1 "10K" V 6350 1950 50  0000 C CNN
F 2 "" V 6280 1950 50  0001 C CNN
F 3 "" H 6350 1950 50  0001 C CNN
	1    6350 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2350 6600 2350
Wire Wire Line
	6350 2100 6350 2350
Wire Wire Line
	7350 1550 7350 2000
Wire Wire Line
	6350 1800 6350 1700
Wire Wire Line
	5400 1700 8250 1700
Connection ~ 7350 1700
Wire Wire Line
	6600 4550 6100 4550
Wire Wire Line
	8100 4550 9750 4550
Wire Wire Line
	8100 4650 8850 4650
Wire Wire Line
	7350 5100 8400 5100
Wire Wire Line
	7350 5000 7350 5850
Connection ~ 7350 5100
Wire Wire Line
	8100 2350 8250 2350
Connection ~ 8250 2350
NoConn ~ 8100 4050
NoConn ~ 8100 3950
$Comp
L Crystal Y1
U 1 1 5AD1E18D
P 9300 5000
F 0 "Y1" H 9300 5150 50  0000 C CNN
F 1 "4MHz Crystal" H 9300 4850 50  0000 C CNN
F 2 "" H 9300 5000 50  0001 C CNN
F 3 "" H 9300 5000 50  0001 C CNN
	1    9300 5000
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5AD1E1CE
P 9750 5350
F 0 "C2" H 9775 5450 50  0000 L CNN
F 1 "22pF" H 9775 5250 50  0000 L CNN
F 2 "" H 9788 5200 50  0001 C CNN
F 3 "" H 9750 5350 50  0001 C CNN
	1    9750 5350
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5AD1E218
P 8850 5350
F 0 "C1" H 8875 5450 50  0000 L CNN
F 1 "22pF" H 8875 5250 50  0000 L CNN
F 2 "" H 8888 5200 50  0001 C CNN
F 3 "" H 8850 5350 50  0001 C CNN
	1    8850 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 4650 8850 5200
Wire Wire Line
	9750 4550 9750 5200
Wire Wire Line
	9450 5000 9750 5000
Connection ~ 9750 5000
Wire Wire Line
	9150 5000 8850 5000
Connection ~ 8850 5000
Wire Wire Line
	8850 5500 8850 5650
Wire Wire Line
	7350 5650 9750 5650
Wire Wire Line
	9750 5650 9750 5500
Connection ~ 7350 5650
Connection ~ 8850 5650
NoConn ~ 8100 3650
Text GLabel 6100 2350 0    60   Input ~ 0
~RESET
Text GLabel 6100 4550 0    60   Input ~ 0
TEST0
$Comp
L Arduino_Leonardo A1
U 1 1 5AD1E5A8
P 3600 3350
F 0 "A1" H 3400 4400 50  0000 R CNN
F 1 "Arduino_Leonardo" H 3400 4300 50  0000 R CNN
F 2 "Modules:Arduino_UNO_R3" H 3750 2300 50  0001 L CNN
F 3 "" H 3400 4400 50  0001 C CNN
	1    3600 3350
	1    0    0    -1  
$EndComp
NoConn ~ 6600 2550
NoConn ~ 6600 2650
NoConn ~ 6600 2750
NoConn ~ 6600 2850
NoConn ~ 6600 2950
NoConn ~ 6600 3050
NoConn ~ 6600 3150
NoConn ~ 6600 3250
NoConn ~ 6600 3750
NoConn ~ 6600 3850
NoConn ~ 6600 3950
NoConn ~ 6600 4050
NoConn ~ 6600 4150
$Comp
L D8041AHC U1
U 1 1 5AD1DBD4
P 7350 3450
F 0 "U1" H 6850 4750 60  0000 C CNN
F 1 "D8041AHC" H 7650 4750 60  0000 C CNN
F 2 "" H 7800 2500 60  0001 C CNN
F 3 "" H 7800 2500 60  0001 C CNN
	1    7350 3450
	1    0    0    -1  
$EndComp
Text GLabel 8450 2750 2    60   Input ~ 0
D0
Text GLabel 8650 2850 2    60   Input ~ 0
D1
Text GLabel 8450 2950 2    60   Input ~ 0
D2
Text GLabel 8650 3050 2    60   Input ~ 0
D3
Text GLabel 8450 3150 2    60   Input ~ 0
D4
Text GLabel 8650 3250 2    60   Input ~ 0
D5
Text GLabel 8450 3350 2    60   Input ~ 0
D6
Text GLabel 8650 3450 2    60   Input ~ 0
D7
Text GLabel 6350 3450 0    60   Input ~ 0
AD0
Text GLabel 6100 3550 0    60   Input ~ 0
AD1
Wire Wire Line
	6350 3450 6600 3450
Wire Wire Line
	6100 3550 6600 3550
Wire Wire Line
	8100 2750 8450 2750
Wire Wire Line
	8650 2850 8100 2850
Wire Wire Line
	8100 2950 8450 2950
Wire Wire Line
	8650 3050 8100 3050
Wire Wire Line
	8100 3150 8450 3150
Wire Wire Line
	8650 3250 8100 3250
Wire Wire Line
	8100 3350 8450 3350
Wire Wire Line
	8100 3450 8650 3450
Connection ~ 6350 2350
Text GLabel 2850 2950 0    60   Input ~ 0
D0
Text GLabel 2650 3050 0    60   Input ~ 0
D1
Text GLabel 2850 3150 0    60   Input ~ 0
D2
Text GLabel 2650 3250 0    60   Input ~ 0
D3
Text GLabel 2850 3350 0    60   Input ~ 0
D4
Text GLabel 2650 3450 0    60   Input ~ 0
D5
Text GLabel 2850 3550 0    60   Input ~ 0
D6
Text GLabel 2650 3650 0    60   Input ~ 0
D7
Text GLabel 2900 3750 0    60   Input ~ 0
AD0
Text GLabel 2650 3850 0    60   Input ~ 0
AD1
Text GLabel 4350 3350 2    60   Input ~ 0
TEST0
Wire Wire Line
	2850 2950 3100 2950
Wire Wire Line
	2650 3050 3100 3050
Wire Wire Line
	2850 3150 3100 3150
Wire Wire Line
	2650 3250 3100 3250
Wire Wire Line
	2850 3350 3100 3350
Wire Wire Line
	2650 3450 3100 3450
Wire Wire Line
	2850 3550 3100 3550
Wire Wire Line
	2650 3650 3100 3650
Wire Wire Line
	2900 3750 3100 3750
Wire Wire Line
	2650 3850 3100 3850
Wire Wire Line
	4350 3350 4100 3350
Text GLabel 4700 3450 2    60   Input ~ 0
~RESET
Wire Wire Line
	4700 3450 4100 3450
NoConn ~ 4100 2750
NoConn ~ 4100 2950
NoConn ~ 4100 3150
NoConn ~ 4100 3550
NoConn ~ 4100 3650
NoConn ~ 4100 3750
NoConn ~ 4100 3850
NoConn ~ 4100 4050
NoConn ~ 4100 4150
$Comp
L +5V #PWR3
U 1 1 5AD1F29E
P 3800 2200
F 0 "#PWR3" H 3800 2050 50  0001 C CNN
F 1 "+5V" H 3800 2340 50  0000 C CNN
F 2 "" H 3800 2200 50  0001 C CNN
F 3 "" H 3800 2200 50  0001 C CNN
	1    3800 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR2
U 1 1 5AD1F2BB
P 3600 4650
F 0 "#PWR2" H 3600 4400 50  0001 C CNN
F 1 "GND" H 3600 4500 50  0000 C CNN
F 2 "" H 3600 4650 50  0001 C CNN
F 3 "" H 3600 4650 50  0001 C CNN
	1    3600 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4450 3500 4550
Wire Wire Line
	3500 4550 3700 4550
Wire Wire Line
	3700 4550 3700 4450
Wire Wire Line
	3600 4450 3600 4650
Connection ~ 3600 4550
Wire Wire Line
	3800 2350 3800 2200
NoConn ~ 3700 2350
NoConn ~ 3500 2350
$Comp
L Conn_01x02 J1
U 1 1 5AD1F40B
P 2300 2850
F 0 "J1" H 2300 2950 50  0000 C CNN
F 1 "Serial" H 2300 2650 50  0000 C CNN
F 2 "" H 2300 2850 50  0001 C CNN
F 3 "" H 2300 2850 50  0001 C CNN
	1    2300 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	2500 2750 3100 2750
Wire Wire Line
	2500 2850 3100 2850
$Comp
L VPP #PWR8
U 1 1 5AD1F6B5
P 8900 2150
F 0 "#PWR8" H 8900 2000 50  0001 C CNN
F 1 "VPP" H 8900 2300 50  0000 C CNN
F 2 "" H 8900 2150 50  0001 C CNN
F 3 "" H 8900 2150 50  0001 C CNN
	1    8900 2150
	1    0    0    -1  
$EndComp
$Comp
L LM350_TO220 U2
U 1 1 5AD1F745
P 3200 6000
F 0 "U2" H 3050 6125 50  0000 C CNN
F 1 "LM350_TO220" H 3200 6125 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" H 3200 6250 50  0001 C CIN
F 3 "" H 3200 6000 50  0001 C CNN
	1    3200 6000
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5AD1F792
P 3800 6250
F 0 "R2" V 3880 6250 50  0000 C CNN
F 1 "180R" V 3800 6250 50  0000 C CNN
F 2 "" V 3730 6250 50  0001 C CNN
F 3 "" H 3800 6250 50  0001 C CNN
	1    3800 6250
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5AD1F7FB
P 3800 6750
F 0 "R3" V 3880 6750 50  0000 C CNN
F 1 "820R" V 3800 6750 50  0000 C CNN
F 2 "" V 3730 6750 50  0001 C CNN
F 3 "" H 3800 6750 50  0001 C CNN
	1    3800 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 6000 4250 6000
Wire Wire Line
	3800 5700 3800 6100
Wire Wire Line
	3800 6400 3800 6600
Wire Wire Line
	3200 6300 3200 6500
Wire Wire Line
	3200 6500 3800 6500
Connection ~ 3800 6500
$Comp
L VPP #PWR4
U 1 1 5AD1F97D
P 3800 5700
F 0 "#PWR4" H 3800 5550 50  0001 C CNN
F 1 "VPP" H 3800 5850 50  0000 C CNN
F 2 "" H 3800 5700 50  0001 C CNN
F 3 "" H 3800 5700 50  0001 C CNN
	1    3800 5700
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR1
U 1 1 5AD1F99E
P 2800 5750
F 0 "#PWR1" H 2800 5600 50  0001 C CNN
F 1 "+12V" H 2800 5890 50  0000 C CNN
F 2 "" H 2800 5750 50  0001 C CNN
F 3 "" H 2800 5750 50  0001 C CNN
	1    2800 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 5750 2800 6300
Wire Wire Line
	2800 6000 2900 6000
Connection ~ 3800 6000
$Comp
L GND #PWR5
U 1 1 5AD1FA97
P 3800 7000
F 0 "#PWR5" H 3800 6750 50  0001 C CNN
F 1 "GND" H 3800 6850 50  0000 C CNN
F 2 "" H 3800 7000 50  0001 C CNN
F 3 "" H 3800 7000 50  0001 C CNN
	1    3800 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 6900 3800 7000
$Comp
L C C3
U 1 1 5AD1FB9E
P 2800 6450
F 0 "C3" H 2825 6550 50  0000 L CNN
F 1 "100nF" H 2825 6350 50  0000 L CNN
F 2 "" H 2838 6300 50  0001 C CNN
F 3 "" H 2800 6450 50  0001 C CNN
	1    2800 6450
	1    0    0    -1  
$EndComp
Connection ~ 2800 6000
Wire Wire Line
	2800 6600 2800 6950
Wire Wire Line
	2800 6950 4250 6950
Connection ~ 3800 6950
$Comp
L CP C4
U 1 1 5AD1FCFF
P 4250 6450
F 0 "C4" H 4275 6550 50  0000 L CNN
F 1 "1uF" H 4275 6350 50  0000 L CNN
F 2 "" H 4288 6300 50  0001 C CNN
F 3 "" H 4250 6450 50  0001 C CNN
	1    4250 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 6000 4250 6300
Wire Wire Line
	4250 6950 4250 6600
Text Notes 4050 5850 0    60   ~ 0
Vpp = 6.944V
NoConn ~ 6600 4350
NoConn ~ 3100 4050
$Comp
L R R?
U 1 1 5AD241C7
P 8550 2550
F 0 "R?" V 8630 2550 50  0000 C CNN
F 1 "10K" V 8550 2550 50  0000 C CNN
F 2 "" V 8480 2550 50  0001 C CNN
F 3 "" H 8550 2550 50  0001 C CNN
	1    8550 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 2550 8400 2550
Wire Wire Line
	8700 2550 8900 2550
Wire Wire Line
	8900 2550 8900 2150
Wire Wire Line
	8250 1700 8250 4350
Wire Wire Line
	8250 4250 8100 4250
Text Notes 8950 2550 0    60   ~ 0
Connected to GND in VP410
NoConn ~ 6600 3650
NoConn ~ 3100 3950
Wire Wire Line
	8100 3850 8400 3850
Wire Wire Line
	8400 3850 8400 5100
Wire Wire Line
	8250 4350 8100 4350
Connection ~ 8250 4250
Wire Wire Line
	6600 4650 5400 4650
Wire Wire Line
	5400 4650 5400 1700
Connection ~ 6350 1700
Text Notes 8500 1650 0    60   ~ 0
Note: EA must be at 5V for init and then raise to 9V\nfor reading... need to add hardware to control the\nsignal level from the AVR
$EndSCHEMATC
