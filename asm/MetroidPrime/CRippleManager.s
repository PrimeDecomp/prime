.include "macros.inc"

.section .sdata2, "a"

.global lbl_805AB460
lbl_805AB460:
	# ROM: 0x3F7D00
	.float 0.0
	.4byte 0

.section .text, "ax"

.global AddRipple__14CRippleManagerFRC7CRipple
AddRipple__14CRippleManagerFRC7CRipple:
/* 8011CF4C 00119EAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011CF50 00119EB0  C0 42 97 40 */	lfs f2, lbl_805AB460@sda21(r2)
/* 8011CF54 00119EB4  80 03 00 08 */	lwz r0, 8(r3)
/* 8011CF58 00119EB8  80 E3 00 10 */	lwz r7, 0x10(r3)
/* 8011CF5C 00119EBC  54 00 30 32 */	slwi r0, r0, 6
/* 8011CF60 00119EC0  C0 02 98 F4 */	lfs f0, lbl_805AB614@sda21(r2)
/* 8011CF64 00119EC4  7C C7 02 14 */	add r6, r7, r0
/* 8011CF68 00119EC8  48 00 00 2C */	b lbl_8011CF94
lbl_8011CF6C:
/* 8011CF6C 00119ECC  C0 27 00 04 */	lfs f1, 4(r7)
/* 8011CF70 00119ED0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8011CF74 00119ED4  40 82 00 0C */	bne lbl_8011CF80
/* 8011CF78 00119ED8  7C E6 3B 78 */	mr r6, r7
/* 8011CF7C 00119EDC  48 00 00 30 */	b lbl_8011CFAC
lbl_8011CF80:
/* 8011CF80 00119EE0  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8011CF84 00119EE4  40 81 00 0C */	ble lbl_8011CF90
/* 8011CF88 00119EE8  7C E6 3B 78 */	mr r6, r7
/* 8011CF8C 00119EEC  FC 40 08 90 */	fmr f2, f1
lbl_8011CF90:
/* 8011CF90 00119EF0  38 E7 00 40 */	addi r7, r7, 0x40
lbl_8011CF94:
/* 8011CF94 00119EF4  80 03 00 08 */	lwz r0, 8(r3)
/* 8011CF98 00119EF8  80 A3 00 10 */	lwz r5, 0x10(r3)
/* 8011CF9C 00119EFC  54 00 30 32 */	slwi r0, r0, 6
/* 8011CFA0 00119F00  7C 05 02 14 */	add r0, r5, r0
/* 8011CFA4 00119F04  7C 07 00 40 */	cmplw r7, r0
/* 8011CFA8 00119F08  40 82 FF C4 */	bne lbl_8011CF6C
lbl_8011CFAC:
/* 8011CFAC 00119F0C  80 03 00 08 */	lwz r0, 8(r3)
/* 8011CFB0 00119F10  80 A3 00 10 */	lwz r5, 0x10(r3)
/* 8011CFB4 00119F14  54 00 30 32 */	slwi r0, r0, 6
/* 8011CFB8 00119F18  7C 05 02 14 */	add r0, r5, r0
/* 8011CFBC 00119F1C  7C 06 00 40 */	cmplw r6, r0
/* 8011CFC0 00119F20  41 82 00 B8 */	beq lbl_8011D078
/* 8011CFC4 00119F24  A0 04 00 00 */	lhz r0, 0(r4)
/* 8011CFC8 00119F28  C0 02 97 40 */	lfs f0, lbl_805AB460@sda21(r2)
/* 8011CFCC 00119F2C  B0 06 00 00 */	sth r0, 0(r6)
/* 8011CFD0 00119F30  C0 24 00 04 */	lfs f1, 4(r4)
/* 8011CFD4 00119F34  D0 26 00 04 */	stfs f1, 4(r6)
/* 8011CFD8 00119F38  80 A4 00 08 */	lwz r5, 8(r4)
/* 8011CFDC 00119F3C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8011CFE0 00119F40  90 A6 00 08 */	stw r5, 8(r6)
/* 8011CFE4 00119F44  90 06 00 0C */	stw r0, 0xc(r6)
/* 8011CFE8 00119F48  80 04 00 10 */	lwz r0, 0x10(r4)
/* 8011CFEC 00119F4C  90 06 00 10 */	stw r0, 0x10(r6)
/* 8011CFF0 00119F50  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 8011CFF4 00119F54  D0 26 00 14 */	stfs f1, 0x14(r6)
/* 8011CFF8 00119F58  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 8011CFFC 00119F5C  D0 26 00 18 */	stfs f1, 0x18(r6)
/* 8011D000 00119F60  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 8011D004 00119F64  D0 26 00 1C */	stfs f1, 0x1c(r6)
/* 8011D008 00119F68  C0 24 00 20 */	lfs f1, 0x20(r4)
/* 8011D00C 00119F6C  D0 26 00 20 */	stfs f1, 0x20(r6)
/* 8011D010 00119F70  C0 24 00 24 */	lfs f1, 0x24(r4)
/* 8011D014 00119F74  D0 26 00 24 */	stfs f1, 0x24(r6)
/* 8011D018 00119F78  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 8011D01C 00119F7C  D0 26 00 28 */	stfs f1, 0x28(r6)
/* 8011D020 00119F80  C0 24 00 2C */	lfs f1, 0x2c(r4)
/* 8011D024 00119F84  D0 26 00 2C */	stfs f1, 0x2c(r6)
/* 8011D028 00119F88  C0 24 00 30 */	lfs f1, 0x30(r4)
/* 8011D02C 00119F8C  D0 26 00 30 */	stfs f1, 0x30(r6)
/* 8011D030 00119F90  C0 24 00 34 */	lfs f1, 0x34(r4)
/* 8011D034 00119F94  D0 26 00 34 */	stfs f1, 0x34(r6)
/* 8011D038 00119F98  C0 24 00 38 */	lfs f1, 0x38(r4)
/* 8011D03C 00119F9C  D0 26 00 38 */	stfs f1, 0x38(r6)
/* 8011D040 00119FA0  80 04 00 3C */	lwz r0, 0x3c(r4)
/* 8011D044 00119FA4  90 06 00 3C */	stw r0, 0x3c(r6)
/* 8011D048 00119FA8  D0 06 00 04 */	stfs f0, 4(r6)
/* 8011D04C 00119FAC  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 8011D050 00119FB0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8011D054 00119FB4  C0 23 00 00 */	lfs f1, 0(r3)
/* 8011D058 00119FB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8011D05C 00119FBC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8011D060 00119FC0  40 80 00 0C */	bge lbl_8011D06C
/* 8011D064 00119FC4  38 81 00 08 */	addi r4, r1, 8
/* 8011D068 00119FC8  48 00 00 08 */	b lbl_8011D070
lbl_8011D06C:
/* 8011D06C 00119FCC  38 81 00 0C */	addi r4, r1, 0xc
lbl_8011D070:
/* 8011D070 00119FD0  C0 04 00 00 */	lfs f0, 0(r4)
/* 8011D074 00119FD4  D0 03 00 00 */	stfs f0, 0(r3)
lbl_8011D078:
/* 8011D078 00119FD8  38 21 00 10 */	addi r1, r1, 0x10
/* 8011D07C 00119FDC  4E 80 00 20 */	blr

.global GetLastRippleDeltaTime__14CRippleManagerCF9TUniqueId
GetLastRippleDeltaTime__14CRippleManagerCF9TUniqueId:
/* 8011D080 00119FE0  C0 22 98 F4 */	lfs f1, lbl_805AB614@sda21(r2)
/* 8011D084 00119FE4  80 C3 00 10 */	lwz r6, 0x10(r3)
/* 8011D088 00119FE8  48 00 00 28 */	b lbl_8011D0B0
lbl_8011D08C:
/* 8011D08C 00119FEC  A0 A4 00 00 */	lhz r5, 0(r4)
/* 8011D090 00119FF0  A0 06 00 00 */	lhz r0, 0(r6)
/* 8011D094 00119FF4  7C 05 00 40 */	cmplw r5, r0
/* 8011D098 00119FF8  40 82 00 14 */	bne lbl_8011D0AC
/* 8011D09C 00119FFC  C0 06 00 04 */	lfs f0, 4(r6)
/* 8011D0A0 0011A000  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8011D0A4 0011A004  40 81 00 08 */	ble lbl_8011D0AC
/* 8011D0A8 0011A008  FC 20 00 90 */	fmr f1, f0
lbl_8011D0AC:
/* 8011D0AC 0011A00C  38 C6 00 40 */	addi r6, r6, 0x40
lbl_8011D0B0:
/* 8011D0B0 0011A010  80 03 00 08 */	lwz r0, 8(r3)
/* 8011D0B4 0011A014  80 A3 00 10 */	lwz r5, 0x10(r3)
/* 8011D0B8 0011A018  54 00 30 32 */	slwi r0, r0, 6
/* 8011D0BC 0011A01C  7C 05 02 14 */	add r0, r5, r0
/* 8011D0C0 0011A020  7C 06 00 40 */	cmplw r6, r0
/* 8011D0C4 0011A024  40 82 FF C8 */	bne lbl_8011D08C
/* 8011D0C8 0011A028  4E 80 00 20 */	blr

.global Update__14CRippleManagerFf
Update__14CRippleManagerFf:
/* 8011D0CC 0011A02C  80 A3 00 10 */	lwz r5, 0x10(r3)
/* 8011D0D0 0011A030  C0 42 98 F4 */	lfs f2, lbl_805AB614@sda21(r2)
/* 8011D0D4 0011A034  48 00 00 24 */	b lbl_8011D0F8
lbl_8011D0D8:
/* 8011D0D8 0011A038  C0 05 00 04 */	lfs f0, 4(r5)
/* 8011D0DC 0011A03C  EC 01 00 2A */	fadds f0, f1, f0
/* 8011D0E0 0011A040  D0 05 00 04 */	stfs f0, 4(r5)
/* 8011D0E4 0011A044  C0 05 00 04 */	lfs f0, 4(r5)
/* 8011D0E8 0011A048  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8011D0EC 0011A04C  40 81 00 08 */	ble lbl_8011D0F4
/* 8011D0F0 0011A050  D0 45 00 04 */	stfs f2, 4(r5)
lbl_8011D0F4:
/* 8011D0F4 0011A054  38 A5 00 40 */	addi r5, r5, 0x40
lbl_8011D0F8:
/* 8011D0F8 0011A058  80 03 00 08 */	lwz r0, 8(r3)
/* 8011D0FC 0011A05C  80 83 00 10 */	lwz r4, 0x10(r3)
/* 8011D100 0011A060  54 00 30 32 */	slwi r0, r0, 6
/* 8011D104 0011A064  7C 04 02 14 */	add r0, r4, r0
/* 8011D108 0011A068  7C 05 00 40 */	cmplw r5, r0
/* 8011D10C 0011A06C  40 82 FF CC */	bne lbl_8011D0D8

.global sub_8011d110
sub_8011d110:
/* 8011D110 0011A070  4E 80 00 20 */	blr

.global Init__14CRippleManagerFi
Init__14CRippleManagerFi:
/* 8011D114 0011A074  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8011D118 0011A078  7C 08 02 A6 */	mflr r0
/* 8011D11C 0011A07C  3C A0 80 5A */	lis r5, skZero3f@ha
/* 8011D120 0011A080  C0 22 97 40 */	lfs f1, lbl_805AB460@sda21(r2)
/* 8011D124 0011A084  90 01 00 64 */	stw r0, 0x64(r1)
/* 8011D128 0011A088  38 A5 66 A0 */	addi r5, r5, skZero3f@l
/* 8011D12C 0011A08C  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8011D130 0011A090  7C 9F 23 78 */	mr r31, r4
/* 8011D134 0011A094  38 81 00 08 */	addi r4, r1, 8
/* 8011D138 0011A098  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8011D13C 0011A09C  7C 7E 1B 78 */	mr r30, r3
/* 8011D140 0011A0A0  38 61 00 0C */	addi r3, r1, 0xc
/* 8011D144 0011A0A4  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8011D148 0011A0A8  B0 01 00 08 */	sth r0, 8(r1)
/* 8011D14C 0011A0AC  4B FF F7 D1 */	bl __ct__7CRippleF9TUniqueIdRC9CVector3ff
/* 8011D150 0011A0B0  7C 65 1B 78 */	mr r5, r3
/* 8011D154 0011A0B4  7F E4 FB 78 */	mr r4, r31
/* 8011D158 0011A0B8  38 7E 00 04 */	addi r3, r30, 4
/* 8011D15C 0011A0BC  48 00 00 49 */	bl sub_8011d1a4
/* 8011D160 0011A0C0  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 8011D164 0011A0C4  C0 02 98 F4 */	lfs f0, lbl_805AB614@sda21(r2)
/* 8011D168 0011A0C8  48 00 00 0C */	b lbl_8011D174
lbl_8011D16C:
/* 8011D16C 0011A0CC  D0 04 00 04 */	stfs f0, 4(r4)
/* 8011D170 0011A0D0  38 84 00 40 */	addi r4, r4, 0x40
lbl_8011D174:
/* 8011D174 0011A0D4  80 1E 00 08 */	lwz r0, 8(r30)
/* 8011D178 0011A0D8  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8011D17C 0011A0DC  54 00 30 32 */	slwi r0, r0, 6
/* 8011D180 0011A0E0  7C 03 02 14 */	add r0, r3, r0
/* 8011D184 0011A0E4  7C 04 00 40 */	cmplw r4, r0
/* 8011D188 0011A0E8  40 82 FF E4 */	bne lbl_8011D16C
/* 8011D18C 0011A0EC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8011D190 0011A0F0  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8011D194 0011A0F4  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8011D198 0011A0F8  7C 08 03 A6 */	mtlr r0
/* 8011D19C 0011A0FC  38 21 00 60 */	addi r1, r1, 0x60
/* 8011D1A0 0011A100  4E 80 00 20 */	blr

.global sub_8011d1a4
sub_8011d1a4:
/* 8011D1A4 0011A104  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8011D1A8 0011A108  7C 08 02 A6 */	mflr r0
/* 8011D1AC 0011A10C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8011D1B0 0011A110  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8011D1B4 0011A114  7C BF 2B 78 */	mr r31, r5
/* 8011D1B8 0011A118  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8011D1BC 0011A11C  7C 9E 23 78 */	mr r30, r4
/* 8011D1C0 0011A120  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8011D1C4 0011A124  7C 7D 1B 78 */	mr r29, r3
/* 8011D1C8 0011A128  80 03 00 04 */	lwz r0, 4(r3)
/* 8011D1CC 0011A12C  7C 00 F0 00 */	cmpw r0, r30
/* 8011D1D0 0011A130  41 82 00 F8 */	beq lbl_8011D2C8
/* 8011D1D4 0011A134  7C 1E 00 00 */	cmpw r30, r0
/* 8011D1D8 0011A138  40 81 00 B8 */	ble lbl_8011D290
/* 8011D1DC 0011A13C  48 00 01 55 */	bl sub_8011d330
/* 8011D1E0 0011A140  80 9D 00 04 */	lwz r4, 4(r29)
/* 8011D1E4 0011A144  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8011D1E8 0011A148  54 80 30 32 */	slwi r0, r4, 6
/* 8011D1EC 0011A14C  7C 84 F0 51 */	subf. r4, r4, r30
/* 8011D1F0 0011A150  7C 63 02 14 */	add r3, r3, r0
/* 8011D1F4 0011A154  7C 89 03 A6 */	mtctr r4
/* 8011D1F8 0011A158  40 81 00 CC */	ble lbl_8011D2C4
lbl_8011D1FC:
/* 8011D1FC 0011A15C  28 03 00 00 */	cmplwi r3, 0
/* 8011D200 0011A160  41 82 00 84 */	beq lbl_8011D284
/* 8011D204 0011A164  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8011D208 0011A168  B0 03 00 00 */	sth r0, 0(r3)
/* 8011D20C 0011A16C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8011D210 0011A170  D0 03 00 04 */	stfs f0, 4(r3)
/* 8011D214 0011A174  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8011D218 0011A178  D0 03 00 08 */	stfs f0, 8(r3)
/* 8011D21C 0011A17C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8011D220 0011A180  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8011D224 0011A184  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8011D228 0011A188  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8011D22C 0011A18C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8011D230 0011A190  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8011D234 0011A194  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8011D238 0011A198  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8011D23C 0011A19C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8011D240 0011A1A0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8011D244 0011A1A4  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8011D248 0011A1A8  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8011D24C 0011A1AC  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8011D250 0011A1B0  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 8011D254 0011A1B4  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8011D258 0011A1B8  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8011D25C 0011A1BC  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8011D260 0011A1C0  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8011D264 0011A1C4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8011D268 0011A1C8  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 8011D26C 0011A1CC  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8011D270 0011A1D0  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 8011D274 0011A1D4  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 8011D278 0011A1D8  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 8011D27C 0011A1DC  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 8011D280 0011A1E0  90 03 00 3C */	stw r0, 0x3c(r3)
lbl_8011D284:
/* 8011D284 0011A1E4  38 63 00 40 */	addi r3, r3, 0x40
/* 8011D288 0011A1E8  42 00 FF 74 */	bdnz lbl_8011D1FC
/* 8011D28C 0011A1EC  48 00 00 38 */	b lbl_8011D2C4
lbl_8011D290:
/* 8011D290 0011A1F0  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 8011D294 0011A1F4  54 03 30 32 */	slwi r3, r0, 6
/* 8011D298 0011A1F8  57 C0 30 32 */	slwi r0, r30, 6
/* 8011D29C 0011A1FC  7C A4 02 14 */	add r5, r4, r0
/* 8011D2A0 0011A200  7C 04 1A 14 */	add r0, r4, r3
/* 8011D2A4 0011A204  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8011D2A8 0011A208  90 01 00 08 */	stw r0, 8(r1)
/* 8011D2AC 0011A20C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8011D2B0 0011A210  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8011D2B4 0011A214  48 00 00 08 */	b lbl_8011D2BC
lbl_8011D2B8:
/* 8011D2B8 0011A218  38 A5 00 40 */	addi r5, r5, 0x40
lbl_8011D2BC:
/* 8011D2BC 0011A21C  7C 05 00 40 */	cmplw r5, r0
/* 8011D2C0 0011A220  40 82 FF F8 */	bne lbl_8011D2B8
lbl_8011D2C4:
/* 8011D2C4 0011A224  93 DD 00 04 */	stw r30, 4(r29)
lbl_8011D2C8:
/* 8011D2C8 0011A228  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8011D2CC 0011A22C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8011D2D0 0011A230  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8011D2D4 0011A234  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8011D2D8 0011A238  7C 08 03 A6 */	mtlr r0
/* 8011D2DC 0011A23C  38 21 00 30 */	addi r1, r1, 0x30
/* 8011D2E0 0011A240  4E 80 00 20 */	blr

.global __ct__14CRippleManagerFif
__ct__14CRippleManagerFif:
/* 8011D2E4 0011A244  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011D2E8 0011A248  7C 08 02 A6 */	mflr r0
/* 8011D2EC 0011A24C  C0 02 97 40 */	lfs f0, lbl_805AB460@sda21(r2)
/* 8011D2F0 0011A250  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011D2F4 0011A254  38 00 00 00 */	li r0, 0
/* 8011D2F8 0011A258  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011D2FC 0011A25C  7C 7F 1B 78 */	mr r31, r3
/* 8011D300 0011A260  D0 03 00 00 */	stfs f0, 0(r3)
/* 8011D304 0011A264  90 03 00 08 */	stw r0, 8(r3)
/* 8011D308 0011A268  90 03 00 0C */	stw r0, 0xc(r3)
/* 8011D30C 0011A26C  90 03 00 10 */	stw r0, 0x10(r3)
/* 8011D310 0011A270  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 8011D314 0011A274  4B FF FE 01 */	bl Init__14CRippleManagerFi
/* 8011D318 0011A278  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011D31C 0011A27C  7F E3 FB 78 */	mr r3, r31
/* 8011D320 0011A280  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011D324 0011A284  7C 08 03 A6 */	mtlr r0
/* 8011D328 0011A288  38 21 00 10 */	addi r1, r1, 0x10
/* 8011D32C 0011A28C  4E 80 00 20 */	blr

.global sub_8011d330
sub_8011d330:
/* 8011D330 0011A290  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8011D334 0011A294  7C 08 02 A6 */	mflr r0
/* 8011D338 0011A298  90 01 00 34 */	stw r0, 0x34(r1)
/* 8011D33C 0011A29C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8011D340 0011A2A0  7C 9F 23 78 */	mr r31, r4
/* 8011D344 0011A2A4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8011D348 0011A2A8  7C 7E 1B 78 */	mr r30, r3
/* 8011D34C 0011A2AC  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8011D350 0011A2B0  80 03 00 08 */	lwz r0, 8(r3)
/* 8011D354 0011A2B4  7C 1F 00 00 */	cmpw r31, r0
/* 8011D358 0011A2B8  40 81 00 94 */	ble lbl_8011D3EC
/* 8011D35C 0011A2BC  57 E3 30 33 */	rlwinm. r3, r31, 6, 0, 0x19
/* 8011D360 0011A2C0  40 82 00 0C */	bne lbl_8011D36C
/* 8011D364 0011A2C4  3B A0 00 00 */	li r29, 0
/* 8011D368 0011A2C8  48 00 00 18 */	b lbl_8011D380
lbl_8011D36C:
/* 8011D36C 0011A2CC  3C 80 80 3D */	lis r4, lbl_803CF318@ha
/* 8011D370 0011A2D0  38 A0 00 00 */	li r5, 0
/* 8011D374 0011A2D4  38 84 F3 18 */	addi r4, r4, lbl_803CF318@l
/* 8011D378 0011A2D8  48 1F 84 A1 */	bl __nwa__FUlPCcPCc
/* 8011D37C 0011A2DC  7C 7D 1B 78 */	mr r29, r3
lbl_8011D380:
/* 8011D380 0011A2E0  80 1E 00 04 */	lwz r0, 4(r30)
/* 8011D384 0011A2E4  7F A5 EB 78 */	mr r5, r29
/* 8011D388 0011A2E8  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 8011D38C 0011A2EC  38 61 00 14 */	addi r3, r1, 0x14
/* 8011D390 0011A2F0  54 00 30 32 */	slwi r0, r0, 6
/* 8011D394 0011A2F4  38 81 00 0C */	addi r4, r1, 0xc
/* 8011D398 0011A2F8  7C C6 02 14 */	add r6, r6, r0
/* 8011D39C 0011A2FC  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8011D3A0 0011A300  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8011D3A4 0011A304  90 C1 00 08 */	stw r6, 8(r1)
/* 8011D3A8 0011A308  90 01 00 10 */	stw r0, 0x10(r1)
/* 8011D3AC 0011A30C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011D3B0 0011A310  48 00 00 59 */	bl sub_8011d408
/* 8011D3B4 0011A314  80 1E 00 04 */	lwz r0, 4(r30)
/* 8011D3B8 0011A318  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8011D3BC 0011A31C  54 00 30 32 */	slwi r0, r0, 6
/* 8011D3C0 0011A320  7C 64 1B 78 */	mr r4, r3
/* 8011D3C4 0011A324  7C 03 02 14 */	add r0, r3, r0
/* 8011D3C8 0011A328  48 00 00 08 */	b lbl_8011D3D0
lbl_8011D3CC:
/* 8011D3CC 0011A32C  38 84 00 40 */	addi r4, r4, 0x40
lbl_8011D3D0:
/* 8011D3D0 0011A330  7C 04 00 40 */	cmplw r4, r0
/* 8011D3D4 0011A334  40 82 FF F8 */	bne lbl_8011D3CC
/* 8011D3D8 0011A338  28 03 00 00 */	cmplwi r3, 0
/* 8011D3DC 0011A33C  41 82 00 08 */	beq lbl_8011D3E4
/* 8011D3E0 0011A340  48 1F 85 51 */	bl Free__7CMemoryFPCv
lbl_8011D3E4:
/* 8011D3E4 0011A344  93 BE 00 0C */	stw r29, 0xc(r30)
/* 8011D3E8 0011A348  93 FE 00 08 */	stw r31, 8(r30)
lbl_8011D3EC:
/* 8011D3EC 0011A34C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8011D3F0 0011A350  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8011D3F4 0011A354  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8011D3F8 0011A358  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8011D3FC 0011A35C  7C 08 03 A6 */	mtlr r0
/* 8011D400 0011A360  38 21 00 30 */	addi r1, r1, 0x30
/* 8011D404 0011A364  4E 80 00 20 */	blr

.global sub_8011d408
sub_8011d408:
/* 8011D408 0011A368  80 63 00 00 */	lwz r3, 0(r3)
/* 8011D40C 0011A36C  48 00 00 94 */	b lbl_8011D4A0
lbl_8011D410:
/* 8011D410 0011A370  28 05 00 00 */	cmplwi r5, 0
/* 8011D414 0011A374  41 82 00 84 */	beq lbl_8011D498
/* 8011D418 0011A378  A0 03 00 00 */	lhz r0, 0(r3)
/* 8011D41C 0011A37C  B0 05 00 00 */	sth r0, 0(r5)
/* 8011D420 0011A380  C0 03 00 04 */	lfs f0, 4(r3)
/* 8011D424 0011A384  D0 05 00 04 */	stfs f0, 4(r5)
/* 8011D428 0011A388  C0 03 00 08 */	lfs f0, 8(r3)
/* 8011D42C 0011A38C  D0 05 00 08 */	stfs f0, 8(r5)
/* 8011D430 0011A390  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8011D434 0011A394  D0 05 00 0C */	stfs f0, 0xc(r5)
/* 8011D438 0011A398  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8011D43C 0011A39C  D0 05 00 10 */	stfs f0, 0x10(r5)
/* 8011D440 0011A3A0  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8011D444 0011A3A4  D0 05 00 14 */	stfs f0, 0x14(r5)
/* 8011D448 0011A3A8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8011D44C 0011A3AC  D0 05 00 18 */	stfs f0, 0x18(r5)
/* 8011D450 0011A3B0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8011D454 0011A3B4  D0 05 00 1C */	stfs f0, 0x1c(r5)
/* 8011D458 0011A3B8  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8011D45C 0011A3BC  D0 05 00 20 */	stfs f0, 0x20(r5)
/* 8011D460 0011A3C0  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8011D464 0011A3C4  D0 05 00 24 */	stfs f0, 0x24(r5)
/* 8011D468 0011A3C8  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8011D46C 0011A3CC  D0 05 00 28 */	stfs f0, 0x28(r5)
/* 8011D470 0011A3D0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8011D474 0011A3D4  D0 05 00 2C */	stfs f0, 0x2c(r5)
/* 8011D478 0011A3D8  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 8011D47C 0011A3DC  D0 05 00 30 */	stfs f0, 0x30(r5)
/* 8011D480 0011A3E0  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 8011D484 0011A3E4  D0 05 00 34 */	stfs f0, 0x34(r5)
/* 8011D488 0011A3E8  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 8011D48C 0011A3EC  D0 05 00 38 */	stfs f0, 0x38(r5)
/* 8011D490 0011A3F0  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 8011D494 0011A3F4  90 05 00 3C */	stw r0, 0x3c(r5)
lbl_8011D498:
/* 8011D498 0011A3F8  38 A5 00 40 */	addi r5, r5, 0x40
/* 8011D49C 0011A3FC  38 63 00 40 */	addi r3, r3, 0x40
lbl_8011D4A0:
/* 8011D4A0 0011A400  80 04 00 00 */	lwz r0, 0(r4)
/* 8011D4A4 0011A404  7C 03 00 40 */	cmplw r3, r0
/* 8011D4A8 0011A408  40 82 FF 68 */	bne lbl_8011D410
/* 8011D4AC 0011A40C  7C A3 2B 78 */	mr r3, r5
/* 8011D4B0 0011A410  4E 80 00 20 */	blr

.section .rodata
.global lbl_803CF318
lbl_803CF318:
	# ROM: 0x3CC318
	.asciz "??(??)"
	.balign 4

