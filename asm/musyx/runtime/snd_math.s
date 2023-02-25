.include "macros.inc"

.section .sdata2
.balign 8
.global lbl_805AF378
lbl_805AF378:
	# ROM: 0x3FBC18
	.4byte 0
	.4byte 0

.global lbl_805AF380
lbl_805AF380:
	# ROM: 0x3FBC20
	.4byte 0x3FE00000
	.4byte 0

.global lbl_805AF388
lbl_805AF388:
	# ROM: 0x3FBC28
	.4byte 0x40080000
	.4byte 0

.global lbl_805AF390
lbl_805AF390:
	# ROM: 0x3FBC30
	.float 1.0
	.4byte 0


.section .text, "ax"

.global salApplyMatrix
salApplyMatrix:
/* 803B0D0C 003ADC6C  C0 63 00 00 */	lfs f3, 0(r3)
/* 803B0D10 003ADC70  C0 44 00 00 */	lfs f2, 0(r4)
/* 803B0D14 003ADC74  C0 23 00 04 */	lfs f1, 4(r3)
/* 803B0D18 003ADC78  C0 04 00 04 */	lfs f0, 4(r4)
/* 803B0D1C 003ADC7C  EC 43 00 B2 */	fmuls f2, f3, f2
/* 803B0D20 003ADC80  C0 63 00 08 */	lfs f3, 8(r3)
/* 803B0D24 003ADC84  EC 01 00 32 */	fmuls f0, f1, f0
/* 803B0D28 003ADC88  C0 24 00 08 */	lfs f1, 8(r4)
/* 803B0D2C 003ADC8C  C0 83 00 24 */	lfs f4, 0x24(r3)
/* 803B0D30 003ADC90  EC 23 00 72 */	fmuls f1, f3, f1
/* 803B0D34 003ADC94  EC 02 00 2A */	fadds f0, f2, f0
/* 803B0D38 003ADC98  EC 01 00 2A */	fadds f0, f1, f0
/* 803B0D3C 003ADC9C  EC 04 00 2A */	fadds f0, f4, f0
/* 803B0D40 003ADCA0  D0 05 00 00 */	stfs f0, 0(r5)
/* 803B0D44 003ADCA4  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 803B0D48 003ADCA8  C0 44 00 00 */	lfs f2, 0(r4)
/* 803B0D4C 003ADCAC  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 803B0D50 003ADCB0  C0 04 00 04 */	lfs f0, 4(r4)
/* 803B0D54 003ADCB4  EC 43 00 B2 */	fmuls f2, f3, f2
/* 803B0D58 003ADCB8  C0 63 00 14 */	lfs f3, 0x14(r3)
/* 803B0D5C 003ADCBC  EC 01 00 32 */	fmuls f0, f1, f0
/* 803B0D60 003ADCC0  C0 24 00 08 */	lfs f1, 8(r4)
/* 803B0D64 003ADCC4  C0 83 00 28 */	lfs f4, 0x28(r3)
/* 803B0D68 003ADCC8  EC 23 00 72 */	fmuls f1, f3, f1
/* 803B0D6C 003ADCCC  EC 02 00 2A */	fadds f0, f2, f0
/* 803B0D70 003ADCD0  EC 01 00 2A */	fadds f0, f1, f0
/* 803B0D74 003ADCD4  EC 04 00 2A */	fadds f0, f4, f0
/* 803B0D78 003ADCD8  D0 05 00 04 */	stfs f0, 4(r5)
/* 803B0D7C 003ADCDC  C0 63 00 18 */	lfs f3, 0x18(r3)
/* 803B0D80 003ADCE0  C0 44 00 00 */	lfs f2, 0(r4)
/* 803B0D84 003ADCE4  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 803B0D88 003ADCE8  C0 04 00 04 */	lfs f0, 4(r4)
/* 803B0D8C 003ADCEC  EC 43 00 B2 */	fmuls f2, f3, f2
/* 803B0D90 003ADCF0  C0 63 00 20 */	lfs f3, 0x20(r3)
/* 803B0D94 003ADCF4  EC 01 00 32 */	fmuls f0, f1, f0
/* 803B0D98 003ADCF8  C0 24 00 08 */	lfs f1, 8(r4)
/* 803B0D9C 003ADCFC  C0 83 00 2C */	lfs f4, 0x2c(r3)
/* 803B0DA0 003ADD00  EC 23 00 72 */	fmuls f1, f3, f1
/* 803B0DA4 003ADD04  EC 02 00 2A */	fadds f0, f2, f0
/* 803B0DA8 003ADD08  EC 01 00 2A */	fadds f0, f1, f0
/* 803B0DAC 003ADD0C  EC 04 00 2A */	fadds f0, f4, f0
/* 803B0DB0 003ADD10  D0 05 00 08 */	stfs f0, 8(r5)
/* 803B0DB4 003ADD14  4E 80 00 20 */	blr

.global salNormalizeVector
salNormalizeVector:
/* 803B0DB8 003ADD18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B0DBC 003ADD1C  C0 23 00 00 */	lfs f1, 0(r3)
/* 803B0DC0 003ADD20  C0 03 00 04 */	lfs f0, 4(r3)
/* 803B0DC4 003ADD24  EC 41 00 72 */	fmuls f2, f1, f1
/* 803B0DC8 003ADD28  C0 63 00 08 */	lfs f3, 8(r3)
/* 803B0DCC 003ADD2C  EC 20 00 32 */	fmuls f1, f0, f0
/* 803B0DD0 003ADD30  C0 02 D6 58 */	lfs f0, lbl_805AF378@sda21(r2)
/* 803B0DD4 003ADD34  EC 63 00 F2 */	fmuls f3, f3, f3
/* 803B0DD8 003ADD38  EC 22 08 2A */	fadds f1, f2, f1
/* 803B0DDC 003ADD3C  EC 23 08 2A */	fadds f1, f3, f1
/* 803B0DE0 003ADD40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803B0DE4 003ADD44  40 81 00 5C */	ble lbl_803B0E40
/* 803B0DE8 003ADD48  FC 40 08 34 */	frsqrte f2, f1
/* 803B0DEC 003ADD4C  C8 82 D6 60 */	lfd f4, lbl_805AF380@sda21(r2)
/* 803B0DF0 003ADD50  C8 62 D6 68 */	lfd f3, lbl_805AF388@sda21(r2)
/* 803B0DF4 003ADD54  FC 02 00 B2 */	fmul f0, f2, f2
/* 803B0DF8 003ADD58  FC 44 00 B2 */	fmul f2, f4, f2
/* 803B0DFC 003ADD5C  FC 01 00 32 */	fmul f0, f1, f0
/* 803B0E00 003ADD60  FC 03 00 28 */	fsub f0, f3, f0
/* 803B0E04 003ADD64  FC 42 00 32 */	fmul f2, f2, f0
/* 803B0E08 003ADD68  FC 02 00 B2 */	fmul f0, f2, f2
/* 803B0E0C 003ADD6C  FC 44 00 B2 */	fmul f2, f4, f2
/* 803B0E10 003ADD70  FC 01 00 32 */	fmul f0, f1, f0
/* 803B0E14 003ADD74  FC 03 00 28 */	fsub f0, f3, f0
/* 803B0E18 003ADD78  FC 42 00 32 */	fmul f2, f2, f0
/* 803B0E1C 003ADD7C  FC 02 00 B2 */	fmul f0, f2, f2
/* 803B0E20 003ADD80  FC 44 00 B2 */	fmul f2, f4, f2
/* 803B0E24 003ADD84  FC 01 00 32 */	fmul f0, f1, f0
/* 803B0E28 003ADD88  FC 03 00 28 */	fsub f0, f3, f0
/* 803B0E2C 003ADD8C  FC 02 00 32 */	fmul f0, f2, f0
/* 803B0E30 003ADD90  FC 01 00 32 */	fmul f0, f1, f0
/* 803B0E34 003ADD94  FC 00 00 18 */	frsp f0, f0
/* 803B0E38 003ADD98  D0 01 00 08 */	stfs f0, 8(r1)
/* 803B0E3C 003ADD9C  C0 21 00 08 */	lfs f1, 8(r1)
lbl_803B0E40:
/* 803B0E40 003ADDA0  C0 03 00 00 */	lfs f0, 0(r3)
/* 803B0E44 003ADDA4  EC 00 08 24 */	fdivs f0, f0, f1
/* 803B0E48 003ADDA8  D0 03 00 00 */	stfs f0, 0(r3)
/* 803B0E4C 003ADDAC  C0 03 00 04 */	lfs f0, 4(r3)
/* 803B0E50 003ADDB0  EC 00 08 24 */	fdivs f0, f0, f1
/* 803B0E54 003ADDB4  D0 03 00 04 */	stfs f0, 4(r3)
/* 803B0E58 003ADDB8  C0 03 00 08 */	lfs f0, 8(r3)
/* 803B0E5C 003ADDBC  EC 00 08 24 */	fdivs f0, f0, f1
/* 803B0E60 003ADDC0  D0 03 00 08 */	stfs f0, 8(r3)
/* 803B0E64 003ADDC4  38 21 00 10 */	addi r1, r1, 0x10
/* 803B0E68 003ADDC8  4E 80 00 20 */	blr

.global salCrossProduct
salCrossProduct:
/* 803B0E6C 003ADDCC  C0 64 00 04 */	lfs f3, 4(r4)
/* 803B0E70 003ADDD0  C0 45 00 08 */	lfs f2, 8(r5)
/* 803B0E74 003ADDD4  C0 24 00 08 */	lfs f1, 8(r4)
/* 803B0E78 003ADDD8  C0 05 00 04 */	lfs f0, 4(r5)
/* 803B0E7C 003ADDDC  EC 43 00 B2 */	fmuls f2, f3, f2
/* 803B0E80 003ADDE0  EC 01 00 32 */	fmuls f0, f1, f0
/* 803B0E84 003ADDE4  EC 02 00 28 */	fsubs f0, f2, f0
/* 803B0E88 003ADDE8  D0 03 00 00 */	stfs f0, 0(r3)
/* 803B0E8C 003ADDEC  C0 64 00 08 */	lfs f3, 8(r4)
/* 803B0E90 003ADDF0  C0 45 00 00 */	lfs f2, 0(r5)
/* 803B0E94 003ADDF4  C0 24 00 00 */	lfs f1, 0(r4)
/* 803B0E98 003ADDF8  C0 05 00 08 */	lfs f0, 8(r5)
/* 803B0E9C 003ADDFC  EC 43 00 B2 */	fmuls f2, f3, f2
/* 803B0EA0 003ADE00  EC 01 00 32 */	fmuls f0, f1, f0
/* 803B0EA4 003ADE04  EC 02 00 28 */	fsubs f0, f2, f0
/* 803B0EA8 003ADE08  D0 03 00 04 */	stfs f0, 4(r3)
/* 803B0EAC 003ADE0C  C0 64 00 00 */	lfs f3, 0(r4)
/* 803B0EB0 003ADE10  C0 45 00 04 */	lfs f2, 4(r5)
/* 803B0EB4 003ADE14  C0 24 00 04 */	lfs f1, 4(r4)
/* 803B0EB8 003ADE18  C0 05 00 00 */	lfs f0, 0(r5)
/* 803B0EBC 003ADE1C  EC 43 00 B2 */	fmuls f2, f3, f2
/* 803B0EC0 003ADE20  EC 01 00 32 */	fmuls f0, f1, f0
/* 803B0EC4 003ADE24  EC 02 00 28 */	fsubs f0, f2, f0
/* 803B0EC8 003ADE28  D0 03 00 08 */	stfs f0, 8(r3)
/* 803B0ECC 003ADE2C  4E 80 00 20 */	blr

.global salInvertMatrix
salInvertMatrix:
/* 803B0ED0 003ADE30  C0 A4 00 20 */	lfs f5, 0x20(r4)
/* 803B0ED4 003ADE34  C1 44 00 0C */	lfs f10, 0xc(r4)
/* 803B0ED8 003ADE38  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 803B0EDC 003ADE3C  C0 C4 00 1C */	lfs f6, 0x1c(r4)
/* 803B0EE0 003ADE40  EC 6A 01 72 */	fmuls f3, f10, f5
/* 803B0EE4 003ADE44  C1 24 00 18 */	lfs f9, 0x18(r4)
/* 803B0EE8 003ADE48  C1 04 00 10 */	lfs f8, 0x10(r4)
/* 803B0EEC 003ADE4C  EC 86 00 32 */	fmuls f4, f6, f0
/* 803B0EF0 003ADE50  EC 49 00 32 */	fmuls f2, f9, f0
/* 803B0EF4 003ADE54  C0 24 00 00 */	lfs f1, 0(r4)
/* 803B0EF8 003ADE58  EC E8 01 72 */	fmuls f7, f8, f5
/* 803B0EFC 003ADE5C  C0 04 00 04 */	lfs f0, 4(r4)
/* 803B0F00 003ADE60  EC AA 01 B2 */	fmuls f5, f10, f6
/* 803B0F04 003ADE64  EC C3 10 28 */	fsubs f6, f3, f2
/* 803B0F08 003ADE68  EC E7 20 28 */	fsubs f7, f7, f4
/* 803B0F0C 003ADE6C  C0 44 00 08 */	lfs f2, 8(r4)
/* 803B0F10 003ADE70  EC 89 02 32 */	fmuls f4, f9, f8
/* 803B0F14 003ADE74  C0 62 D6 70 */	lfs f3, lbl_805AF390@sda21(r2)
/* 803B0F18 003ADE78  FC C0 30 50 */	fneg f6, f6
/* 803B0F1C 003ADE7C  EC 21 01 F2 */	fmuls f1, f1, f7
/* 803B0F20 003ADE80  EC 85 20 28 */	fsubs f4, f5, f4
/* 803B0F24 003ADE84  EC 00 01 B2 */	fmuls f0, f0, f6
/* 803B0F28 003ADE88  EC 42 01 32 */	fmuls f2, f2, f4
/* 803B0F2C 003ADE8C  EC 01 00 2A */	fadds f0, f1, f0
/* 803B0F30 003ADE90  EC 02 00 2A */	fadds f0, f2, f0
/* 803B0F34 003ADE94  EC 23 00 24 */	fdivs f1, f3, f0
/* 803B0F38 003ADE98  EC 01 01 F2 */	fmuls f0, f1, f7
/* 803B0F3C 003ADE9C  EC 61 01 B2 */	fmuls f3, f1, f6
/* 803B0F40 003ADEA0  EC 41 01 32 */	fmuls f2, f1, f4
/* 803B0F44 003ADEA4  D0 03 00 00 */	stfs f0, 0(r3)
/* 803B0F48 003ADEA8  FC 00 08 50 */	fneg f0, f1
/* 803B0F4C 003ADEAC  D0 63 00 0C */	stfs f3, 0xc(r3)
/* 803B0F50 003ADEB0  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 803B0F54 003ADEB4  C0 A4 00 04 */	lfs f5, 4(r4)
/* 803B0F58 003ADEB8  C0 84 00 20 */	lfs f4, 0x20(r4)
/* 803B0F5C 003ADEBC  C0 64 00 1C */	lfs f3, 0x1c(r4)
/* 803B0F60 003ADEC0  C0 44 00 08 */	lfs f2, 8(r4)
/* 803B0F64 003ADEC4  EC 85 01 32 */	fmuls f4, f5, f4
/* 803B0F68 003ADEC8  EC 43 00 B2 */	fmuls f2, f3, f2
/* 803B0F6C 003ADECC  EC 44 10 28 */	fsubs f2, f4, f2
/* 803B0F70 003ADED0  EC 40 00 B2 */	fmuls f2, f0, f2
/* 803B0F74 003ADED4  D0 43 00 04 */	stfs f2, 4(r3)
/* 803B0F78 003ADED8  C0 A4 00 00 */	lfs f5, 0(r4)
/* 803B0F7C 003ADEDC  C0 84 00 20 */	lfs f4, 0x20(r4)
/* 803B0F80 003ADEE0  C0 64 00 18 */	lfs f3, 0x18(r4)
/* 803B0F84 003ADEE4  C0 44 00 08 */	lfs f2, 8(r4)
/* 803B0F88 003ADEE8  EC 85 01 32 */	fmuls f4, f5, f4
/* 803B0F8C 003ADEEC  EC 43 00 B2 */	fmuls f2, f3, f2
/* 803B0F90 003ADEF0  EC 44 10 28 */	fsubs f2, f4, f2
/* 803B0F94 003ADEF4  EC 41 00 B2 */	fmuls f2, f1, f2
/* 803B0F98 003ADEF8  D0 43 00 10 */	stfs f2, 0x10(r3)
/* 803B0F9C 003ADEFC  C0 A4 00 00 */	lfs f5, 0(r4)
/* 803B0FA0 003ADF00  C0 84 00 1C */	lfs f4, 0x1c(r4)
/* 803B0FA4 003ADF04  C0 64 00 18 */	lfs f3, 0x18(r4)
/* 803B0FA8 003ADF08  C0 44 00 04 */	lfs f2, 4(r4)
/* 803B0FAC 003ADF0C  EC 85 01 32 */	fmuls f4, f5, f4
/* 803B0FB0 003ADF10  EC 43 00 B2 */	fmuls f2, f3, f2
/* 803B0FB4 003ADF14  EC 44 10 28 */	fsubs f2, f4, f2
/* 803B0FB8 003ADF18  EC 40 00 B2 */	fmuls f2, f0, f2
/* 803B0FBC 003ADF1C  D0 43 00 1C */	stfs f2, 0x1c(r3)
/* 803B0FC0 003ADF20  C0 A4 00 04 */	lfs f5, 4(r4)
/* 803B0FC4 003ADF24  C0 84 00 14 */	lfs f4, 0x14(r4)
/* 803B0FC8 003ADF28  C0 64 00 10 */	lfs f3, 0x10(r4)
/* 803B0FCC 003ADF2C  C0 44 00 08 */	lfs f2, 8(r4)
/* 803B0FD0 003ADF30  EC 85 01 32 */	fmuls f4, f5, f4
/* 803B0FD4 003ADF34  EC 43 00 B2 */	fmuls f2, f3, f2
/* 803B0FD8 003ADF38  EC 44 10 28 */	fsubs f2, f4, f2
/* 803B0FDC 003ADF3C  EC 41 00 B2 */	fmuls f2, f1, f2
/* 803B0FE0 003ADF40  D0 43 00 08 */	stfs f2, 8(r3)
/* 803B0FE4 003ADF44  C0 A4 00 00 */	lfs f5, 0(r4)
/* 803B0FE8 003ADF48  C0 84 00 14 */	lfs f4, 0x14(r4)
/* 803B0FEC 003ADF4C  C0 64 00 0C */	lfs f3, 0xc(r4)
/* 803B0FF0 003ADF50  C0 44 00 08 */	lfs f2, 8(r4)
/* 803B0FF4 003ADF54  EC 85 01 32 */	fmuls f4, f5, f4
/* 803B0FF8 003ADF58  EC 43 00 B2 */	fmuls f2, f3, f2
/* 803B0FFC 003ADF5C  EC 44 10 28 */	fsubs f2, f4, f2
/* 803B1000 003ADF60  EC 00 00 B2 */	fmuls f0, f0, f2
/* 803B1004 003ADF64  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 803B1008 003ADF68  C0 84 00 00 */	lfs f4, 0(r4)
/* 803B100C 003ADF6C  C0 64 00 10 */	lfs f3, 0x10(r4)
/* 803B1010 003ADF70  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 803B1014 003ADF74  C0 04 00 04 */	lfs f0, 4(r4)
/* 803B1018 003ADF78  EC 64 00 F2 */	fmuls f3, f4, f3
/* 803B101C 003ADF7C  EC 02 00 32 */	fmuls f0, f2, f0
/* 803B1020 003ADF80  EC 03 00 28 */	fsubs f0, f3, f0
/* 803B1024 003ADF84  EC 01 00 32 */	fmuls f0, f1, f0
/* 803B1028 003ADF88  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 803B102C 003ADF8C  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 803B1030 003ADF90  C0 83 00 00 */	lfs f4, 0(r3)
/* 803B1034 003ADF94  FC A0 00 50 */	fneg f5, f0
/* 803B1038 003ADF98  C0 64 00 28 */	lfs f3, 0x28(r4)
/* 803B103C 003ADF9C  C0 43 00 04 */	lfs f2, 4(r3)
/* 803B1040 003ADFA0  C0 24 00 2C */	lfs f1, 0x2c(r4)
/* 803B1044 003ADFA4  C0 03 00 08 */	lfs f0, 8(r3)
/* 803B1048 003ADFA8  EC 85 01 32 */	fmuls f4, f5, f4
/* 803B104C 003ADFAC  EC 43 00 B2 */	fmuls f2, f3, f2
/* 803B1050 003ADFB0  EC 01 00 32 */	fmuls f0, f1, f0
/* 803B1054 003ADFB4  EC 24 10 28 */	fsubs f1, f4, f2
/* 803B1058 003ADFB8  EC 01 00 28 */	fsubs f0, f1, f0
/* 803B105C 003ADFBC  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 803B1060 003ADFC0  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 803B1064 003ADFC4  C0 83 00 0C */	lfs f4, 0xc(r3)
/* 803B1068 003ADFC8  FC A0 00 50 */	fneg f5, f0
/* 803B106C 003ADFCC  C0 64 00 28 */	lfs f3, 0x28(r4)
/* 803B1070 003ADFD0  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 803B1074 003ADFD4  C0 24 00 2C */	lfs f1, 0x2c(r4)
/* 803B1078 003ADFD8  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 803B107C 003ADFDC  EC 85 01 32 */	fmuls f4, f5, f4
/* 803B1080 003ADFE0  EC 43 00 B2 */	fmuls f2, f3, f2
/* 803B1084 003ADFE4  EC 01 00 32 */	fmuls f0, f1, f0
/* 803B1088 003ADFE8  EC 24 10 28 */	fsubs f1, f4, f2
/* 803B108C 003ADFEC  EC 01 00 28 */	fsubs f0, f1, f0
/* 803B1090 003ADFF0  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 803B1094 003ADFF4  C0 24 00 24 */	lfs f1, 0x24(r4)
/* 803B1098 003ADFF8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 803B109C 003ADFFC  FC 80 08 50 */	fneg f4, f1
/* 803B10A0 003AE000  C0 64 00 28 */	lfs f3, 0x28(r4)
/* 803B10A4 003AE004  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 803B10A8 003AE008  C0 24 00 2C */	lfs f1, 0x2c(r4)
/* 803B10AC 003AE00C  EC 84 00 32 */	fmuls f4, f4, f0
/* 803B10B0 003AE010  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 803B10B4 003AE014  EC 43 00 B2 */	fmuls f2, f3, f2
/* 803B10B8 003AE018  EC 01 00 32 */	fmuls f0, f1, f0
/* 803B10BC 003AE01C  EC 24 10 28 */	fsubs f1, f4, f2
/* 803B10C0 003AE020  EC 01 00 28 */	fsubs f0, f1, f0
/* 803B10C4 003AE024  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 803B10C8 003AE028  4E 80 00 20 */	blr