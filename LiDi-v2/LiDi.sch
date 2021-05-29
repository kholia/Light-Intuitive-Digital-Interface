EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr User 7913 10100
encoding utf-8
Sheet 1 1
Title "LiDi (Light-Intuitive-Digital-Interface) v2 for uBitx"
Date ""
Rev ""
Comp ""
Comment1 "Authors: Dhiru (VU3CER), Kevin Loughin, Gordon Gibby"
Comment2 "05-January-2021"
Comment3 "v1.0 - Checked with 50 FT8 QSOs on air (on a single day)"
Comment4 ""
$EndDescr
Text Notes 1940 7780 0    79   ~ 0
[Quick TX path] Audio flows in left to right (L2R) direction
Text Notes 1920 5890 0    79   ~ 0
[Quick RX path] Audio flows in right to left (R2L) direction
Wire Wire Line
	2480 5460 2660 5460
$Comp
L LiDi-rescue:AudioJack2-Connector PCMIC1
U 1 1 5FE85F33
P 2280 5240
F 0 "PCMIC1" H 2380 5040 50  0000 R CNN
F 1 "PC_MIC" H 2370 5500 50  0000 R CNN
F 2 "footprints:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 2280 5240 50  0001 C CNN
F 3 "~" H 2280 5240 50  0001 C CNN
	1    2280 5240
	1    0    0    1   
$EndComp
Wire Wire Line
	2660 5390 2660 5460
Wire Wire Line
	2660 5190 2660 5140
$Comp
L LiDi-rescue:C_Small-Device CD1
U 1 1 5FE85F25
P 2660 5290
F 0 "CD1" H 2580 5530 50  0000 L CNN
F 1 "1nF" H 2700 5190 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2660 5290 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/murata-electronics-north-america/RCER71H103K0K1H03B/4277785" H 2660 5290 50  0001 C CNN
	1    2660 5290
	1    0    0    -1  
$EndComp
$Comp
L LiDi-rescue:C_Small-Device CD4
U 1 1 5FD0B7D5
P 3320 6920
F 0 "CD4" H 3250 7170 50  0000 L CNN
F 1 "1nF" H 3170 6830 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 3320 6920 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/murata-electronics-north-america/RCER71H103K0K1H03B/4277785" H 3320 6920 50  0001 C CNN
	1    3320 6920
	1    0    0    -1  
$EndComp
Connection ~ 2730 7090
Wire Wire Line
	2730 7090 3320 7090
Connection ~ 2730 6770
Wire Wire Line
	2730 6770 2890 6770
Connection ~ 3320 7090
Wire Wire Line
	3320 7090 3500 7090
Wire Wire Line
	2730 7020 2730 7090
Wire Wire Line
	2730 6820 2730 6770
$Comp
L LiDi-rescue:C_Small-Device CD3
U 1 1 5FD2D22B
P 2730 6920
F 0 "CD3" H 2650 7180 50  0000 L CNN
F 1 "1nF" H 2770 6810 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2730 6920 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/murata-electronics-north-america/RCER71H103K0K1H03B/4277785" H 2730 6920 50  0001 C CNN
	1    2730 6920
	1    0    0    -1  
$EndComp
Wire Wire Line
	3320 7020 3320 7090
Wire Wire Line
	3500 6770 3500 6890
Wire Wire Line
	3320 6770 3500 6770
Connection ~ 3320 6770
Wire Wire Line
	3320 6820 3320 6770
Wire Wire Line
	3190 6770 3320 6770
$Comp
L LiDi-rescue:CP-Device C2
U 1 1 5FCF95E4
P 3040 6770
F 0 "C2" V 2890 6770 50  0000 C CNN
F 1 "10uF" V 3180 6770 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 3078 6620 50  0001 C CNN
F 3 "https://www.vishay.com/docs/28309/038rsu.pdf" H 3040 6770 50  0001 C CNN
	1    3040 6770
	0    1    1    0   
$EndComp
Wire Wire Line
	3390 5140 3520 5140
Wire Wire Line
	3520 5190 3520 5140
Connection ~ 3520 5140
Wire Wire Line
	3520 5140 3700 5140
Wire Wire Line
	3520 5390 3520 5460
Wire Wire Line
	3520 5460 3700 5460
Connection ~ 3520 5460
$Comp
L LiDi-rescue:C_Small-Device CD2
U 1 1 5FE85F3A
P 3520 5290
F 0 "CD2" H 3450 5530 50  0000 L CNN
F 1 "1nF" H 3360 5190 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 3520 5290 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/murata-electronics-north-america/RCER71H103K0K1H03B/4277785" H 3520 5290 50  0001 C CNN
	1    3520 5290
	1    0    0    -1  
$EndComp
Wire Wire Line
	2660 5460 3520 5460
Connection ~ 2660 5460
$Comp
L LiDi-rescue:R_Variable-Device RV1
U 1 1 5FF49ECB
P 2940 5140
F 0 "RV1" V 3060 5110 50  0000 C CNN
F 1 "10K" V 2820 5170 50  0000 C CNN
F 2 "footprints:12_C_Disc_D5.1mm_W3.2mm_P5.00mm" V 2870 5140 50  0001 C CNN
F 3 "~" H 2940 5140 50  0001 C CNN
	1    2940 5140
	0    1    -1   0   
$EndComp
Wire Wire Line
	2790 5140 2660 5140
Connection ~ 2660 5140
Text Notes 1420 4630 0    79   ~ 0
Notes:\n\n1. RX and TX audio interfacing is done via 3.5mm AUX audio cables. Stereo \n   jacks + Stereo AUX cables (TRS) are fine to use.\n\n2. CAT control is done via a separate USB cable for uBitx. NOTE: Use PC and \n   Radio controls to adjust audio levels.\n\n3. I have an isolated "Bourns LM-NP-1001-B1L audio transformers" powered design \n   too but it is not needed.\n\n4. We recommend building this circuit in a progressive manner on a breadboard first.\n   It works fine when built on a Zero PCB (perfboard).\n\n5. For debugging and quick TX testing purposes, Sound Card Output can be shorted \n   with Radio Mic Input. 50 DX QRP QSOs in a single day (including US) were also \n   made this way ;)\n\n6. For fine line-level control, RV1 can be a *single-turn* 20k preset (RM-065). Note: \n   use two pins only. Note: Make this pot external for best usability.\n\n7. Note: The Sleeve ("S") is connected to Ground on both sides.\n\n8. This digital interface works great with "Quantum USB Sound Card QHM 623"\n   and similar reasonably priced clones.\n\n9. This simplified design (v2) has been tested in LTspice, on air personally,  and \n   on air by multiple folks.\n\n
$Comp
L LiDi-rescue:AudioJack2-Connector PCSPK1
U 1 1 5FF47BF9
P 2350 6890
F 0 "PCSPK1" H 2510 6700 50  0000 R CNN
F 1 "PC_SPK" H 2500 7150 50  0000 R CNN
F 2 "footprints:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 2350 6890 50  0001 C CNN
F 3 "~" H 2350 6890 50  0001 C CNN
	1    2350 6890
	1    0    0    1   
$EndComp
Wire Wire Line
	2480 5240 2480 5140
Wire Wire Line
	2480 5140 2660 5140
Wire Wire Line
	2480 5340 2480 5460
Wire Wire Line
	3700 5240 3700 5140
Wire Wire Line
	3700 5340 3700 5460
$Comp
L LiDi-rescue:AudioJack2-Connector RMIC1
U 1 1 5FF56ACB
P 3700 6890
F 0 "RMIC1" H 3830 6710 50  0000 R CNN
F 1 "RMIC (12v)" H 3860 7170 50  0000 R CNN
F 2 "footprints:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 3700 6890 50  0001 C CNN
F 3 "~" H 3700 6890 50  0001 C CNN
	1    3700 6890
	-1   0    0    1   
$EndComp
Wire Wire Line
	2550 6990 2550 7090
Wire Wire Line
	2550 7090 2730 7090
Wire Wire Line
	2550 6890 2550 6770
Wire Wire Line
	2550 6770 2730 6770
Wire Wire Line
	3500 6990 3500 7090
$Comp
L LiDi-rescue:CP-Device C1
U 1 1 5FE85F18
P 3240 5140
F 0 "C1" V 3090 5140 50  0000 C CNN
F 1 "10uF" V 3380 5140 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 3278 4990 50  0001 C CNN
F 3 "https://www.vishay.com/docs/28309/038rsu.pdf" H 3240 5140 50  0001 C CNN
	1    3240 5140
	0    -1   1    0   
$EndComp
$Comp
L LiDi-rescue:AudioJack2-Connector RSPK1
U 1 1 5FF47602
P 3900 5240
F 0 "RSPK1" H 4030 5060 50  0000 R CNN
F 1 "RSPK" H 3990 5500 50  0000 R CNN
F 2 "footprints:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 3900 5240 50  0001 C CNN
F 3 "~" H 3900 5240 50  0001 C CNN
	1    3900 5240
	-1   0    0    1   
$EndComp
$EndSCHEMATC
