.include "macros.inc"

.section .data, "wa"

.global sndSintab
sndSintab:
	.2byte    0,    6,   12,   18,   25,   31,   37,   43,   50,   56,   62,   69,   75,   81,   87,   94
	.2byte  100,  106,  113,  119,  125,  131,  138,  144,  150,  157,  163,  169,  175,  182,  188,  194
	.2byte  200,  207,  213,  219,  226,  232,  238,  244,  251,  257,  263,  269,  276,  282,  288,  295
	.2byte  301,  307,  313,  320,  326,  332,  338,  345,  351,  357,  363,  370,  376,  382,  388,  395
	.2byte  401,  407,  413,  420,  426,  432,  438,  445,  451,  457,  463,  470,  476,  482,  488,  495
	.2byte  501,  507,  513,  520,  526,  532,  538,  545,  551,  557,  563,  569,  576,  582,  588,  594
	.2byte  601,  607,  613,  619,  625,  632,  638,  644,  650,  656,  663,  669,  675,  681,  687,  694
	.2byte  700,  706,  712,  718,  725,  731,  737,  743,  749,  755,  762,  768,  774,  780,  786,  792
	.2byte  799,  805,  811,  817,  823,  829,  836,  842,  848,  854,  860,  866,  872,  879,  885,  891
	.2byte  897,  903,  909,  915,  921,  928,  934,  940,  946,  952,  958,  964,  970,  976,  983,  989
	.2byte  995, 1001, 1007, 1013, 1019, 1025, 1031, 1037, 1043, 1050, 1056, 1062, 1068, 1074, 1080, 1086
	.2byte 1092, 1098, 1104, 1110, 1116, 1122, 1128, 1134, 1140, 1146, 1152, 1158, 1164, 1170, 1176, 1182
	.2byte 1189, 1195, 1201, 1207, 1213, 1219, 1225, 1231, 1237, 1243, 1248, 1254, 1260, 1266, 1272, 1278
	.2byte 1284, 1290, 1296, 1302, 1308, 1314, 1320, 1326, 1332, 1338, 1344, 1350, 1356, 1362, 1368, 1373
	.2byte 1379, 1385, 1391, 1397, 1403, 1409, 1415, 1421, 1427, 1433, 1438, 1444, 1450, 1456, 1462, 1468
	.2byte 1474, 1479, 1485, 1491, 1497, 1503, 1509, 1515, 1520, 1526, 1532, 1538, 1544, 1550, 1555, 1561
	.2byte 1567, 1573, 1579, 1584, 1590, 1596, 1602, 1608, 1613, 1619, 1625, 1631, 1636, 1642, 1648, 1654
	.2byte 1659, 1665, 1671, 1677, 1682, 1688, 1694, 1699, 1705, 1711, 1717, 1722, 1728, 1734, 1739, 1745
	.2byte 1751, 1756, 1762, 1768, 1773, 1779, 1785, 1790, 1796, 1802, 1807, 1813, 1819, 1824, 1830, 1835
	.2byte 1841, 1847, 1852, 1858, 1864, 1869, 1875, 1880, 1886, 1891, 1897, 1903, 1908, 1914, 1919, 1925
	.2byte 1930, 1936, 1941, 1947, 1952, 1958, 1964, 1969, 1975, 1980, 1986, 1991, 1997, 2002, 2007, 2013
	.2byte 2018, 2024, 2029, 2035, 2040, 2046, 2051, 2057, 2062, 2067, 2073, 2078, 2084, 2089, 2094, 2100
	.2byte 2105, 2111, 2116, 2121, 2127, 2132, 2138, 2143, 2148, 2154, 2159, 2164, 2170, 2175, 2180, 2186
	.2byte 2191, 2196, 2201, 2207, 2212, 2217, 2223, 2228, 2233, 2238, 2244, 2249, 2254, 2259, 2265, 2270
	.2byte 2275, 2280, 2286, 2291, 2296, 2301, 2306, 2312, 2317, 2322, 2327, 2332, 2337, 2343, 2348, 2353
	.2byte 2358, 2363, 2368, 2373, 2379, 2384, 2389, 2394, 2399, 2404, 2409, 2414, 2419, 2424, 2429, 2434
	.2byte 2439, 2445, 2450, 2455, 2460, 2465, 2470, 2475, 2480, 2485, 2490, 2495, 2500, 2505, 2510, 2515
	.2byte 2519, 2524, 2529, 2534, 2539, 2544, 2549, 2554, 2559, 2564, 2569, 2574, 2578, 2583, 2588, 2593
	.2byte 2598, 2603, 2608, 2613, 2617, 2622, 2627, 2632, 2637, 2641, 2646, 2651, 2656, 2661, 2665, 2670
	.2byte 2675, 2680, 2684, 2689, 2694, 2699, 2703, 2708, 2713, 2717, 2722, 2727, 2732, 2736, 2741, 2746
	.2byte 2750, 2755, 2760, 2764, 2769, 2773, 2778, 2783, 2787, 2792, 2796, 2801, 2806, 2810, 2815, 2819
	.2byte 2824, 2828, 2833, 2837, 2842, 2847, 2851, 2856, 2860, 2865, 2869, 2874, 2878, 2882, 2887, 2891
	.2byte 2896, 2900, 2905, 2909, 2914, 2918, 2922, 2927, 2931, 2936, 2940, 2944, 2949, 2953, 2957, 2962
	.2byte 2966, 2970, 2975, 2979, 2983, 2988, 2992, 2996, 3000, 3005, 3009, 3013, 3018, 3022, 3026, 3030
	.2byte 3034, 3039, 3043, 3047, 3051, 3055, 3060, 3064, 3068, 3072, 3076, 3080, 3085, 3089, 3093, 3097
	.2byte 3101, 3105, 3109, 3113, 3117, 3121, 3126, 3130, 3134, 3138, 3142, 3146, 3150, 3154, 3158, 3162
	.2byte 3166, 3170, 3174, 3178, 3182, 3186, 3190, 3193, 3197, 3201, 3205, 3209, 3213, 3217, 3221, 3225
	.2byte 3229, 3232, 3236, 3240, 3244, 3248, 3252, 3255, 3259, 3263, 3267, 3271, 3274, 3278, 3282, 3286
	.2byte 3289, 3293, 3297, 3301, 3304, 3308, 3312, 3315, 3319, 3323, 3326, 3330, 3334, 3337, 3341, 3345
	.2byte 3348, 3352, 3356, 3359, 3363, 3366, 3370, 3373, 3377, 3381, 3384, 3388, 3391, 3395, 3398, 3402
	.2byte 3405, 3409, 3412, 3416, 3419, 3423, 3426, 3429, 3433, 3436, 3440, 3443, 3447, 3450, 3453, 3457
	.2byte 3460, 3463, 3467, 3470, 3473, 3477, 3480, 3483, 3487, 3490, 3493, 3497, 3500, 3503, 3506, 3510
	.2byte 3513, 3516, 3519, 3522, 3526, 3529, 3532, 3535, 3538, 3541, 3545, 3548, 3551, 3554, 3557, 3560
	.2byte 3563, 3566, 3570, 3573, 3576, 3579, 3582, 3585, 3588, 3591, 3594, 3597, 3600, 3603, 3606, 3609
	.2byte 3612, 3615, 3618, 3621, 3624, 3627, 3629, 3632, 3635, 3638, 3641, 3644, 3647, 3650, 3652, 3655
	.2byte 3658, 3661, 3664, 3667, 3669, 3672, 3675, 3678, 3680, 3683, 3686, 3689, 3691, 3694, 3697, 3700
	.2byte 3702, 3705, 3708, 3710, 3713, 3716, 3718, 3721, 3723, 3726, 3729, 3731, 3734, 3736, 3739, 3742
	.2byte 3744, 3747, 3749, 3752, 3754, 3757, 3759, 3762, 3764, 3767, 3769, 3772, 3774, 3776, 3779, 3781
	.2byte 3784, 3786, 3789, 3791, 3793, 3796, 3798, 3800, 3803, 3805, 3807, 3810, 3812, 3814, 3816, 3819
	.2byte 3821, 3823, 3826, 3828, 3830, 3832, 3834, 3837, 3839, 3841, 3843, 3845, 3848, 3850, 3852, 3854
	.2byte 3856, 3858, 3860, 3862, 3864, 3867, 3869, 3871, 3873, 3875, 3877, 3879, 3881, 3883, 3885, 3887
	.2byte 3889, 3891, 3893, 3895, 3897, 3899, 3900, 3902, 3904, 3906, 3908, 3910, 3912, 3914, 3915, 3917
	.2byte 3919, 3921, 3923, 3925, 3926, 3928, 3930, 3932, 3933, 3935, 3937, 3939, 3940, 3942, 3944, 3945
	.2byte 3947, 3949, 3950, 3952, 3954, 3955, 3957, 3959, 3960, 3962, 3963, 3965, 3967, 3968, 3970, 3971
	.2byte 3973, 3974, 3976, 3977, 3979, 3980, 3982, 3983, 3985, 3986, 3988, 3989, 3990, 3992, 3993, 3995
	.2byte 3996, 3997, 3999, 4000, 4001, 4003, 4004, 4005, 4007, 4008, 4009, 4011, 4012, 4013, 4014, 4016
	.2byte 4017, 4018, 4019, 4020, 4022, 4023, 4024, 4025, 4026, 4027, 4029, 4030, 4031, 4032, 4033, 4034
	.2byte 4035, 4036, 4037, 4038, 4039, 4040, 4041, 4042, 4043, 4044, 4045, 4046, 4047, 4048, 4049, 4050
	.2byte 4051, 4052, 4053, 4054, 4055, 4056, 4057, 4057, 4058, 4059, 4060, 4061, 4062, 4062, 4063, 4064
	.2byte 4065, 4065, 4066, 4067, 4068, 4068, 4069, 4070, 4071, 4071, 4072, 4073, 4073, 4074, 4075, 4075
	.2byte 4076, 4076, 4077, 4078, 4078, 4079, 4079, 4080, 4080, 4081, 4081, 4082, 4082, 4083, 4083, 4084
	.2byte 4084, 4085, 4085, 4086, 4086, 4087, 4087, 4087, 4088, 4088, 4089, 4089, 4089, 4090, 4090, 4090
	.2byte 4091, 4091, 4091, 4091, 4092, 4092, 4092, 4092, 4093, 4093, 4093, 4093, 4094, 4094, 4094, 4094
	.2byte 4094, 4094, 4095, 4095, 4095, 4095, 4095, 4095, 4095, 4095, 4095, 4095, 4095, 4095, 4095, 4095
.skip 8
	
.section .sdata, "wa"
.global last_rnd
last_rnd:
	.4byte 1
	.skip 4
	
.section .text, "ax" 

.global sndRand
sndRand:
/* 803B2DA0 003AFD00  3C 60 A8 35 */	lis r3, 0xA8351D63@ha
/* 803B2DA4 003AFD04  80 8D A0 10 */	lwz r4, last_rnd@sda21(r13)
/* 803B2DA8 003AFD08  38 03 1D 63 */	addi r0, r3, 0xA8351D63@l
/* 803B2DAC 003AFD0C  7C 04 01 D6 */	mullw r0, r4, r0
/* 803B2DB0 003AFD10  90 0D A0 10 */	stw r0, last_rnd@sda21(r13)
/* 803B2DB4 003AFD14  54 03 D4 3E */	rlwinm r3, r0, 0x1a, 0x10, 0x1f
/* 803B2DB8 003AFD18  4E 80 00 20 */	blr 

.global sndSin
sndSin:
/* 803B2DBC 003AFD1C  54 60 05 3E */	clrlwi r0, r3, 0x14
/* 803B2DC0 003AFD20  28 00 04 00 */	cmplwi r0, 0x400
/* 803B2DC4 003AFD24  40 80 00 18 */	bge lbl_803B2DDC
/* 803B2DC8 003AFD28  3C 60 80 3F */	lis r3, sndSintab@ha
/* 803B2DCC 003AFD2C  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 803B2DD0 003AFD30  38 63 42 78 */	addi r3, r3, sndSintab@l
/* 803B2DD4 003AFD34  7C 63 02 AE */	lhax r3, r3, r0
/* 803B2DD8 003AFD38  4E 80 00 20 */	blr 
lbl_803B2DDC:
/* 803B2DDC 003AFD3C  28 00 08 00 */	cmplwi r0, 0x800
/* 803B2DE0 003AFD40  40 80 00 20 */	bge lbl_803B2E00
/* 803B2DE4 003AFD44  54 00 05 BE */	clrlwi r0, r0, 0x16
/* 803B2DE8 003AFD48  3C 60 80 3F */	lis r3, sndSintab@ha
/* 803B2DEC 003AFD4C  20 00 03 FF */	subfic r0, r0, 0x3ff
/* 803B2DF0 003AFD50  54 00 08 3C */	slwi r0, r0, 1
/* 803B2DF4 003AFD54  38 63 42 78 */	addi r3, r3, sndSintab@l
/* 803B2DF8 003AFD58  7C 63 02 AE */	lhax r3, r3, r0
/* 803B2DFC 003AFD5C  4E 80 00 20 */	blr 
lbl_803B2E00:
/* 803B2E00 003AFD60  28 00 0C 00 */	cmplwi r0, 0xc00
/* 803B2E04 003AFD64  40 80 00 20 */	bge lbl_803B2E24
/* 803B2E08 003AFD68  3C 60 80 3F */	lis r3, sndSintab@ha
/* 803B2E0C 003AFD6C  54 00 0D 7C */	rlwinm r0, r0, 1, 0x15, 0x1e
/* 803B2E10 003AFD70  38 63 42 78 */	addi r3, r3, sndSintab@l
/* 803B2E14 003AFD74  7C 03 02 AE */	lhax r0, r3, r0
/* 803B2E18 003AFD78  7C 00 00 D0 */	neg r0, r0
/* 803B2E1C 003AFD7C  7C 03 07 34 */	extsh r3, r0
/* 803B2E20 003AFD80  4E 80 00 20 */	blr 
lbl_803B2E24:
/* 803B2E24 003AFD84  54 00 05 BE */	clrlwi r0, r0, 0x16
/* 803B2E28 003AFD88  3C 60 80 3F */	lis r3, sndSintab@ha
/* 803B2E2C 003AFD8C  20 00 03 FF */	subfic r0, r0, 0x3ff
/* 803B2E30 003AFD90  54 00 08 3C */	slwi r0, r0, 1
/* 803B2E34 003AFD94  38 63 42 78 */	addi r3, r3, sndSintab@l
/* 803B2E38 003AFD98  7C 03 02 AE */	lhax r0, r3, r0
/* 803B2E3C 003AFD9C  7C 00 00 D0 */	neg r0, r0
/* 803B2E40 003AFDA0  7C 03 07 34 */	extsh r3, r0
/* 803B2E44 003AFDA4  4E 80 00 20 */	blr 

.global sndBSearch
sndBSearch:
/* 803B2E48 003AFDA8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803B2E4C 003AFDAC  7C 08 02 A6 */	mflr r0
/* 803B2E50 003AFDB0  90 01 00 34 */	stw r0, 0x34(r1)
/* 803B2E54 003AFDB4  39 61 00 30 */	addi r11, r1, 0x30
/* 803B2E58 003AFDB8  4B FD 6C 19 */	bl _savegpr_24
/* 803B2E5C 003AFDBC  2C 05 00 00 */	cmpwi r5, 0
/* 803B2E60 003AFDC0  7C 78 1B 78 */	mr r24, r3
/* 803B2E64 003AFDC4  7C 99 23 78 */	mr r25, r4
/* 803B2E68 003AFDC8  7C DA 33 78 */	mr r26, r6
/* 803B2E6C 003AFDCC  7C FB 3B 78 */	mr r27, r7
/* 803B2E70 003AFDD0  41 82 00 60 */	beq lbl_803B2ED0
/* 803B2E74 003AFDD4  3B E0 00 01 */	li r31, 1
/* 803B2E78 003AFDD8  7C BE 2B 78 */	mr r30, r5
lbl_803B2E7C:
/* 803B2E7C 003AFDDC  7C 1F F2 14 */	add r0, r31, r30
/* 803B2E80 003AFDE0  7F 6C DB 78 */	mr r12, r27
/* 803B2E84 003AFDE4  7C 1D 0E 70 */	srawi r29, r0, 1
/* 803B2E88 003AFDE8  7F 03 C3 78 */	mr r3, r24
/* 803B2E8C 003AFDEC  38 1D FF FF */	addi r0, r29, -1
/* 803B2E90 003AFDF0  7C 1A 01 D6 */	mullw r0, r26, r0
/* 803B2E94 003AFDF4  7F 99 02 14 */	add r28, r25, r0
/* 803B2E98 003AFDF8  7F 84 E3 78 */	mr r4, r28
/* 803B2E9C 003AFDFC  7D 89 03 A6 */	mtctr r12
/* 803B2EA0 003AFE00  4E 80 04 21 */	bctrl 
/* 803B2EA4 003AFE04  2C 03 00 00 */	cmpwi r3, 0
/* 803B2EA8 003AFE08  40 82 00 0C */	bne lbl_803B2EB4
/* 803B2EAC 003AFE0C  7F 83 E3 78 */	mr r3, r28
/* 803B2EB0 003AFE10  48 00 00 24 */	b lbl_803B2ED4
lbl_803B2EB4:
/* 803B2EB4 003AFE14  40 80 00 08 */	bge lbl_803B2EBC
/* 803B2EB8 003AFE18  3B DD FF FF */	addi r30, r29, -1
lbl_803B2EBC:
/* 803B2EBC 003AFE1C  54 60 0F FF */	rlwinm. r0, r3, 1, 0x1f, 0x1f
/* 803B2EC0 003AFE20  40 82 00 08 */	bne lbl_803B2EC8
/* 803B2EC4 003AFE24  3B FD 00 01 */	addi r31, r29, 1
lbl_803B2EC8:
/* 803B2EC8 003AFE28  7C 1F F0 00 */	cmpw r31, r30
/* 803B2ECC 003AFE2C  40 81 FF B0 */	ble lbl_803B2E7C
lbl_803B2ED0:
/* 803B2ED0 003AFE30  38 60 00 00 */	li r3, 0
lbl_803B2ED4:
/* 803B2ED4 003AFE34  39 61 00 30 */	addi r11, r1, 0x30
/* 803B2ED8 003AFE38  4B FD 6B E5 */	bl _restgpr_24
/* 803B2EDC 003AFE3C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803B2EE0 003AFE40  7C 08 03 A6 */	mtlr r0
/* 803B2EE4 003AFE44  38 21 00 30 */	addi r1, r1, 0x30
/* 803B2EE8 003AFE48  4E 80 00 20 */	blr 

.global sndConvertMs
sndConvertMs:
/* 803B2EEC 003AFE4C  80 03 00 00 */	lwz r0, 0(r3)
/* 803B2EF0 003AFE50  54 00 40 2E */	slwi r0, r0, 8
/* 803B2EF4 003AFE54  90 03 00 00 */	stw r0, 0(r3)
/* 803B2EF8 003AFE58  4E 80 00 20 */	blr 

.global sndConvertTicks
sndConvertTicks:
/* 803B2EFC 003AFE5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B2F00 003AFE60  7C 08 02 A6 */	mflr r0
/* 803B2F04 003AFE64  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B2F08 003AFE68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B2F0C 003AFE6C  7C 7F 1B 78 */	mr r31, r3
/* 803B2F10 003AFE70  7C 83 23 78 */	mr r3, r4
/* 803B2F14 003AFE74  4B FE 5D D1 */	bl synthGetTicksPerSecond
/* 803B2F18 003AFE78  80 1F 00 00 */	lwz r0, 0(r31)
/* 803B2F1C 003AFE7C  54 00 80 1E */	slwi r0, r0, 0x10
/* 803B2F20 003AFE80  7C 00 1B 96 */	divwu r0, r0, r3
/* 803B2F24 003AFE84  1C 00 03 E8 */	mulli r0, r0, 0x3e8
/* 803B2F28 003AFE88  54 00 D9 7E */	srwi r0, r0, 5
/* 803B2F2C 003AFE8C  90 1F 00 00 */	stw r0, 0(r31)
/* 803B2F30 003AFE90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B2F34 003AFE94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B2F38 003AFE98  7C 08 03 A6 */	mtlr r0
/* 803B2F3C 003AFE9C  38 21 00 10 */	addi r1, r1, 0x10
/* 803B2F40 003AFEA0  4E 80 00 20 */	blr 

.global sndConvert2Ms
sndConvert2Ms:
/* 803B2F44 003AFEA4  54 63 C2 3E */	srwi r3, r3, 8
/* 803B2F48 003AFEA8  4E 80 00 20 */	blr 
