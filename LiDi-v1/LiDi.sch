EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr User 7913 13100
encoding utf-8
Sheet 1 1
Title "LiDi (Light-Intuitive-Digital-Interface) for uBitx"
Date ""
Rev ""
Comp ""
Comment1 "Authors: Dhiru (VU3CER), VU2ASH, VU2SFJ, Gordon Gibby, Kevin Loughin, VU2KYZ"
Comment2 "27-December-2020"
Comment3 "v0.95 - Checked with ~50 FT8 QSOs on air (on a single day)"
Comment4 ""
$EndDescr
Text Notes 1850 5810 0    79   ~ 0
[RX path] Audio flows in right to left (R2L) direction
Text Notes 1900 7430 0    79   ~ 0
[TX path] Audio flows in left to right (L2R) direction.
Text Notes 1520 4290 0    79   ~ 0
Notes:\n\n1. RX and TX audio interfacing is done via 3.5mm AUX audio cables. Stereo \n   jacks + Stereo AUX cables are fine to use.\n\n2. CAT control is done via a separate USB cable for uBitx.\n\n3. NOTE: Use PC and Radio controls to adjust audio levels.\n\n4. Use Bourns LM-NP-1001-B1L audio transformers for reproducible results. Be\n   careful about 'bottom view pinout' vs 'top view pinout'. Note: Both the windings\n   (4-1 and 5-8) are identical.\n\n5. We recommend building this circuit in a progressive manner on a breadboard first.\n\n6. For debugging and quick TX testing purposes, Sound Card Output can be shorted \n   with Radio Mic Input. 50 DX QRP QSOs in a single day (including US!) were also \n   made this way ;)\n\n7. We should probably block the Sound Card Mic's bias voltage too.\n\n8. For fine line-level control, RV1 can be a *single-turn* 20k preset (RM-065). Note: \n   use two pins only. Note: Make this pot external for best usability.\n\n9. Note: The Sleeve ("S") is connected to Ground on both sides. With XFMR designs, \n   the two GNDs are NOT connected together and are separate.\n\n10. This digital interface works great with "Quantum USB Sound Card QHM 623"\n    and similar reasonably priced clones.
$Comp
L LiDi-rescue:AudioJack2-Connector PCMIC1
U 1 1 5FD127BA
P 2210 5140
F 0 "PCMIC1" H 2350 4950 50  0000 R CNN
F 1 "PC_MIC" H 2320 5390 50  0000 R CNN
F 2 "footprints:Custom_PinHeader_1x02_P2.54mm_Vertical" H 2210 5140 50  0001 C CNN
F 3 "~" H 2210 5140 50  0001 C CNN
	1    2210 5140
	1    0    0    1   
$EndComp
Wire Wire Line
	2700 5290 2700 5190
Wire Wire Line
	3500 5090 3500 4990
Wire Wire Line
	3500 5190 3500 5340
Wire Wire Line
	4280 5090 4380 5090
Wire Wire Line
	3500 5340 4280 5340
Wire Wire Line
	4250 4990 4280 4990
Wire Wire Line
	4280 4990 4280 5090
$Comp
L LiDi-rescue:C-Device C1
U 1 1 5FCBC700
P 4100 4990
F 0 "C1" V 3950 4990 50  0000 C CNN
F 1 "100nF" V 4050 5140 40  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4138 4840 50  0001 C CNN
F 3 "https://www.tme.com/Document/a66861814e7fc49e77a9cc8f6455d6db/C052K104K5X5CA.pdf" H 4100 4990 50  0001 C CNN
	1    4100 4990
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 6570 2450 6570
Wire Wire Line
	2450 6450 2450 6570
Wire Wire Line
	3500 4990 3610 4990
Wire Wire Line
	3910 4990 3950 4990
$Comp
L LM-NP-1001-B1L:LM-NP-1001-B1L-Mod T1RX1
U 1 1 5F6241D8
P 2700 5090
F 0 "T1RX1" H 3100 5340 50  0000 C CNN
F 1 "Audio_XMFR" H 3110 5250 50  0000 C CNN
F 2 "footprints:LMNP1001B1L" H 3350 5190 50  0001 L CNN
F 3 "https://www.bourns.com/pdfs/LMNPLP.pdf" H 3350 5090 50  0001 L CNN
F 4 "BOURNS - LM-NP-1001-B1L - TRANSFORMER, LINE-MATCHING 1:1, 2.8H" H 3350 4990 50  0001 L CNN "Description"
F 5 "12" H 3350 4890 50  0001 L CNN "Height"
F 6 "Bourns" H 3350 4790 50  0001 L CNN "Manufacturer_Name"
F 7 "LM-NP-1001-B1L" H 3350 4690 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "LM-NP-1001-B1L" H 3350 4590 50  0001 L CNN "Arrow Part Number"
F 9 "https://www.arrow.com/en/products/lm-np-1001-b1l/bourns" H 3350 4490 50  0001 L CNN "Arrow Price/Stock"
F 10 "652-LM-NP-1001-B1L" H 3350 4390 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.co.uk/ProductDetail/Bourns/LM-NP-1001-B1L?qs=ulUe94RKhgtJXLP5iCDxaA%3D%3D" H 3350 4290 50  0001 L CNN "Mouser Price/Stock"
	1    2700 5090
	1    0    0    -1  
$EndComp
Text Notes 1900 9300 0    79   ~ 0
[Quick TX path] Audio flows in left to right (L2R) direction
$Comp
L LiDi-rescue:C_Small-Device CD1
U 1 1 5FCF89F9
P 2560 5190
F 0 "CD1" H 2490 5450 50  0000 L CNN
F 1 "1nF" H 2490 5360 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2560 5190 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/murata-electronics-north-america/RCER71H103K0K1H03B/4277785" H 2560 5190 50  0001 C CNN
	1    2560 5190
	1    0    0    -1  
$EndComp
Wire Wire Line
	2410 5090 2560 5090
Connection ~ 2560 5090
Wire Wire Line
	2560 5090 2700 5090
Connection ~ 2560 5290
Wire Wire Line
	2560 5290 2700 5290
Wire Wire Line
	3850 6460 3850 6570
Wire Wire Line
	2590 6500 2590 6450
Wire Wire Line
	2590 6700 2590 6770
Connection ~ 2590 6770
Wire Wire Line
	2450 6450 2590 6450
$Comp
L LM-NP-1001-B1L:LM-NP-1001-B1L-Mod T2TX1
U 1 1 5FD6C31D
P 3050 6570
F 0 "T2TX1" H 3450 6820 50  0000 C CNN
F 1 "Audio_XMFR" H 3470 6740 50  0000 C CNN
F 2 "footprints:LMNP1001B1L" H 3700 6670 50  0001 L CNN
F 3 "https://www.bourns.com/pdfs/LMNPLP.pdf" H 3700 6570 50  0001 L CNN
F 4 "BOURNS - LM-NP-1001-B1L - TRANSFORMER, LINE-MATCHING 1:1, 2.8H" H 3700 6470 50  0001 L CNN "Description"
F 5 "12" H 3700 6370 50  0001 L CNN "Height"
F 6 "Bourns" H 3700 6270 50  0001 L CNN "Manufacturer_Name"
F 7 "LM-NP-1001-B1L" H 3700 6170 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "LM-NP-1001-B1L" H 3700 6070 50  0001 L CNN "Arrow Part Number"
F 9 "https://www.arrow.com/en/products/lm-np-1001-b1l/bourns" H 3700 5970 50  0001 L CNN "Arrow Price/Stock"
F 10 "652-LM-NP-1001-B1L" H 3700 5870 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.co.uk/ProductDetail/Bourns/LM-NP-1001-B1L?qs=ulUe94RKhgtJXLP5iCDxaA%3D%3D" H 3700 5770 50  0001 L CNN "Mouser Price/Stock"
	1    3050 6570
	1    0    0    -1  
$EndComp
Connection ~ 2590 6450
Wire Wire Line
	3020 6450 3020 6570
Wire Wire Line
	3020 6570 3050 6570
Wire Wire Line
	3020 6670 3020 6770
Wire Wire Line
	3020 6670 3050 6670
Wire Wire Line
	2590 6770 3020 6770
Wire Wire Line
	2590 6450 2720 6450
$Comp
L LiDi-rescue:AudioJack2-Connector RMIC1
U 1 1 5FD6C342
P 4580 6560
F 0 "RMIC1" H 4710 6380 50  0000 R CNN
F 1 "RMIC (12v)" H 4720 6820 50  0000 R CNN
F 2 "footprints:Custom_PinHeader_1x02_P2.54mm_Vertical" H 4580 6560 50  0001 C CNN
F 3 "~" H 4580 6560 50  0001 C CNN
	1    4580 6560
	-1   0    0    1   
$EndComp
$Comp
L LiDi-rescue:C_Small-Device CD4
U 1 1 5FD73FBE
P 4230 6590
F 0 "CD4" H 4160 6800 50  0000 L CNN
F 1 "1nF" H 4160 6350 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4230 6590 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/murata-electronics-north-america/RCER71H103K0K1H03B/4277785" H 4230 6590 50  0001 C CNN
	1    4230 6590
	1    0    0    -1  
$EndComp
$Comp
L LiDi-rescue:CP-Device C3
U 1 1 5FCDF25F
P 4000 6460
F 0 "C3" V 3850 6460 50  0000 C CNN
F 1 "1uF" V 4140 6460 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 4038 6310 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/nichicon/UMF1V010MDD1TP/4312489" H 4000 6460 50  0001 C CNN
	1    4000 6460
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 6460 4230 6460
Wire Wire Line
	4230 6460 4230 6490
Wire Wire Line
	4230 6760 4380 6760
Wire Wire Line
	4230 6760 4230 6690
Wire Wire Line
	4230 6760 3850 6760
Wire Wire Line
	3850 6670 3850 6760
Connection ~ 4230 6760
Wire Wire Line
	4230 6460 4380 6460
Wire Wire Line
	4380 6460 4380 6560
Connection ~ 4230 6460
$Comp
L LiDi-rescue:CP-Device C2
U 1 1 5FD1B0DA
P 2870 6450
F 0 "C2" V 2720 6450 50  0000 C CNN
F 1 "1uF" V 3010 6450 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2908 6300 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/nichicon/UMF1V010MDD1TP/4312489" H 2870 6450 50  0001 C CNN
	1    2870 6450
	0    -1   1    0   
$EndComp
$Comp
L LiDi-rescue:C_Small-Device CD3
U 1 1 5FD4DB7A
P 2590 6600
F 0 "CD3" H 2510 6840 50  0000 L CNN
F 1 "1nF" H 2510 6360 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2590 6600 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/murata-electronics-north-america/RCER71H103K0K1H03B/4277785" H 2590 6600 50  0001 C CNN
	1    2590 6600
	1    0    0    -1  
$EndComp
$Comp
L LiDi-rescue:R_Variable-Device RV1
U 1 1 5FE6BF12
P 3760 4990
F 0 "RV1" V 3860 4960 50  0000 C CNN
F 1 "10k" V 3640 5000 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-063_Horizontal" V 3690 4990 50  0001 C CNN
F 3 "~" H 3760 4990 50  0001 C CNN
	1    3760 4990
	0    1    -1   0   
$EndComp
Text Notes 1910 10920 0    79   ~ 0
[Quick RX path] Audio flows in right to left (R2L) direction
Wire Wire Line
	2410 5090 2410 5140
Wire Wire Line
	2410 5240 2410 5290
Wire Wire Line
	2410 5290 2560 5290
Wire Wire Line
	4380 5190 4280 5190
Wire Wire Line
	4280 5190 4280 5340
Wire Wire Line
	2400 6670 2450 6670
Wire Wire Line
	2450 6670 2450 6770
Wire Wire Line
	2450 6770 2590 6770
$Comp
L LiDi-rescue:AudioJack2-Connector PCSPK1
U 1 1 5FD6C349
P 2200 6570
F 0 "PCSPK1" H 2330 6380 50  0000 R CNN
F 1 "PC_SPK" H 2330 6820 50  0000 R CNN
F 2 "footprints:Custom_PinHeader_1x02_P2.54mm_Vertical" H 2200 6570 50  0001 C CNN
F 3 "~" H 2200 6570 50  0001 C CNN
	1    2200 6570
	1    0    0    1   
$EndComp
Wire Wire Line
	4380 6660 4380 6760
$Comp
L LiDi-rescue:C_Small-Device #CD2
U 1 1 5FE85F3A
P 3290 10060
F 0 "#CD2" H 3210 10290 50  0000 L CNN
F 1 "1nF" H 3210 9820 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 3290 10060 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/murata-electronics-north-america/RCER71H103K0K1H03B/4277785" H 3290 10060 50  0001 C CNN
	1    3290 10060
	1    0    0    -1  
$EndComp
Wire Wire Line
	2520 10230 2700 10230
$Comp
L LiDi-rescue:AudioJack3-Connector #J1
U 1 1 5FE85F33
P 2320 10130
F 0 "#J1" H 2310 9820 50  0000 R CNN
F 1 "Sound Card Input (MIC)" H 2870 10430 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 2320 10130 50  0001 C CNN
F 3 "~" H 2320 10130 50  0001 C CNN
	1    2320 10130
	1    0    0    1   
$EndComp
Connection ~ 2700 10230
Wire Wire Line
	2700 10230 3290 10230
Connection ~ 2700 9910
Wire Wire Line
	2700 9910 2860 9910
Connection ~ 3290 10230
Wire Wire Line
	3290 10230 3470 10230
Wire Wire Line
	2700 10160 2700 10230
Wire Wire Line
	2700 9960 2700 9910
$Comp
L LiDi-rescue:C_Small-Device #CD1
U 1 1 5FE85F25
P 2700 10060
F 0 "#CD1" H 2600 10290 50  0000 L CNN
F 1 "1nF" H 2620 9820 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 2700 10060 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/murata-electronics-north-america/RCER71H103K0K1H03B/4277785" H 2700 10060 50  0001 C CNN
	1    2700 10060
	1    0    0    -1  
$EndComp
Wire Wire Line
	3290 10160 3290 10230
Wire Wire Line
	2570 9910 2700 9910
Wire Wire Line
	3470 9910 3470 10030
Wire Wire Line
	3290 9910 3470 9910
Connection ~ 3290 9910
Wire Wire Line
	3290 9960 3290 9910
Wire Wire Line
	3160 9910 3290 9910
$Comp
L LiDi-rescue:CP-Device #C1
U 1 1 5FE85F18
P 3010 9910
F 0 "#C1" V 2860 9910 50  0000 C CNN
F 1 "10uF" V 3150 9910 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 3048 9760 50  0001 C CNN
F 3 "~" H 3010 9910 50  0001 C CNN
	1    3010 9910
	0    -1   1    0   
$EndComp
NoConn ~ 3470 10130
Wire Wire Line
	2570 9910 2570 10030
Wire Wire Line
	2520 10030 2570 10030
NoConn ~ 2520 10130
$Comp
L LiDi-rescue:AudioJack3-Connector #J2
U 1 1 5FE85F0E
P 3670 10130
F 0 "#J2" H 3390 10063 50  0000 R CNN
F 1 "Radio Speaker Output" H 3930 10380 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 3670 10130 50  0001 C CNN
F 3 "~" H 3670 10130 50  0001 C CNN
	1    3670 10130
	-1   0    0    1   
$EndComp
$Comp
L LiDi-rescue:C_Small-Device #CD6
U 1 1 5FD0B7D5
P 3280 8440
F 0 "#CD6" H 3200 8670 50  0000 L CNN
F 1 "1nF" H 3200 8200 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 3280 8440 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/murata-electronics-north-america/RCER71H103K0K1H03B/4277785" H 3280 8440 50  0001 C CNN
	1    3280 8440
	1    0    0    -1  
$EndComp
Wire Wire Line
	2510 8610 2690 8610
$Comp
L LiDi-rescue:AudioJack3-Connector #J5
U 1 1 5FCF95B4
P 2310 8510
F 0 "#J5" H 2300 8220 50  0000 R CNN
F 1 "Sound Card Output" H 2670 8780 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 2310 8510 50  0001 C CNN
F 3 "~" H 2310 8510 50  0001 C CNN
	1    2310 8510
	1    0    0    1   
$EndComp
Connection ~ 2690 8610
Wire Wire Line
	2690 8610 3280 8610
Connection ~ 2690 8290
Wire Wire Line
	2690 8290 2850 8290
Connection ~ 3280 8610
Wire Wire Line
	3280 8610 3460 8610
Wire Wire Line
	2690 8540 2690 8610
Wire Wire Line
	2690 8340 2690 8290
$Comp
L LiDi-rescue:C_Small-Device #CD5
U 1 1 5FD2D22B
P 2690 8440
F 0 "#CD5" H 2590 8670 50  0000 L CNN
F 1 "1nF" H 2610 8200 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 2690 8440 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/murata-electronics-north-america/RCER71H103K0K1H03B/4277785" H 2690 8440 50  0001 C CNN
	1    2690 8440
	1    0    0    -1  
$EndComp
Wire Wire Line
	3280 8540 3280 8610
Wire Wire Line
	2560 8290 2690 8290
Wire Wire Line
	3460 8290 3460 8410
Wire Wire Line
	3280 8290 3460 8290
Connection ~ 3280 8290
Wire Wire Line
	3280 8340 3280 8290
Wire Wire Line
	3150 8290 3280 8290
$Comp
L LiDi-rescue:CP-Device #C5
U 1 1 5FCF95E4
P 3000 8290
F 0 "#C5" V 2850 8290 50  0000 C CNN
F 1 "10uF" V 3140 8290 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 3038 8140 50  0001 C CNN
F 3 "~" H 3000 8290 50  0001 C CNN
	1    3000 8290
	0    1    1    0   
$EndComp
NoConn ~ 3460 8510
Wire Wire Line
	2560 8290 2560 8410
Wire Wire Line
	2510 8410 2560 8410
NoConn ~ 2510 8510
$Comp
L LiDi-rescue:AudioJack3-Connector #J6
U 1 1 5FCF95BA
P 3660 8510
F 0 "#J6" H 3720 8740 50  0000 R CNN
F 1 "Radio Speaker Input (MIC)" H 3850 8150 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 3660 8510 50  0001 C CNN
F 3 "~" H 3660 8510 50  0001 C CNN
	1    3660 8510
	-1   0    0    1   
$EndComp
$Comp
L LiDi-rescue:AudioJack2-Connector RSPK1
U 1 1 5FCBF2C7
P 4580 5090
F 0 "RSPK1" H 4690 4910 50  0000 R CNN
F 1 "RSPK" H 4700 5320 50  0000 R CNN
F 2 "footprints:Custom_PinHeader_1x02_P2.54mm_Vertical" H 4580 5090 50  0001 C CNN
F 3 "~" H 4580 5090 50  0001 C CNN
	1    4580 5090
	-1   0    0    1   
$EndComp
$EndSCHEMATC
