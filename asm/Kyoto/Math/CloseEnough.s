.include "macros.inc"

.section .sbss, "wa"

.global lbl_805A9440
lbl_805A9440:
	.skip 0x8

.section .text, "ax"

.global close_enough__FRC9CVector2fRC9CVector2ff
close_enough__FRC9CVector2fRC9CVector2ff:
/* 8030FF24 0030CE84  C0 43 00 00 */	lfs f2, 0(r3)
/* 8030FF28 0030CE88  38 00 00 00 */	li r0, 0
/* 8030FF2C 0030CE8C  C0 04 00 00 */	lfs f0, 0(r4)
/* 8030FF30 0030CE90  EC 02 00 28 */	fsubs f0, f2, f0
/* 8030FF34 0030CE94  FC 00 02 10 */	fabs f0, f0
/* 8030FF38 0030CE98  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8030FF3C 0030CE9C  40 80 00 20 */	bge lbl_8030FF5C
/* 8030FF40 0030CEA0  C0 43 00 04 */	lfs f2, 4(r3)
/* 8030FF44 0030CEA4  C0 04 00 04 */	lfs f0, 4(r4)
/* 8030FF48 0030CEA8  EC 02 00 28 */	fsubs f0, f2, f0
/* 8030FF4C 0030CEAC  FC 00 02 10 */	fabs f0, f0
/* 8030FF50 0030CEB0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8030FF54 0030CEB4  40 80 00 08 */	bge lbl_8030FF5C
/* 8030FF58 0030CEB8  38 00 00 01 */	li r0, 1
lbl_8030FF5C:
/* 8030FF5C 0030CEBC  7C 03 03 78 */	mr r3, r0
/* 8030FF60 0030CEC0  4E 80 00 20 */	blr 

.global close_enough__FRC9CVector3fRC9CVector3ff
close_enough__FRC9CVector3fRC9CVector3ff:
/* 8030FF64 0030CEC4  C0 43 00 00 */	lfs f2, 0(r3)
/* 8030FF68 0030CEC8  38 A0 00 00 */	li r5, 0
/* 8030FF6C 0030CECC  C0 04 00 00 */	lfs f0, 0(r4)
/* 8030FF70 0030CED0  7C A0 2B 78 */	mr r0, r5
/* 8030FF74 0030CED4  EC 02 00 28 */	fsubs f0, f2, f0
/* 8030FF78 0030CED8  FC 00 02 10 */	fabs f0, f0
/* 8030FF7C 0030CEDC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8030FF80 0030CEE0  40 80 00 20 */	bge lbl_8030FFA0
/* 8030FF84 0030CEE4  C0 43 00 04 */	lfs f2, 4(r3)
/* 8030FF88 0030CEE8  C0 04 00 04 */	lfs f0, 4(r4)
/* 8030FF8C 0030CEEC  EC 02 00 28 */	fsubs f0, f2, f0
/* 8030FF90 0030CEF0  FC 00 02 10 */	fabs f0, f0
/* 8030FF94 0030CEF4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8030FF98 0030CEF8  40 80 00 08 */	bge lbl_8030FFA0
/* 8030FF9C 0030CEFC  38 00 00 01 */	li r0, 1
lbl_8030FFA0:
/* 8030FFA0 0030CF00  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8030FFA4 0030CF04  41 82 00 20 */	beq lbl_8030FFC4
/* 8030FFA8 0030CF08  C0 43 00 08 */	lfs f2, 8(r3)
/* 8030FFAC 0030CF0C  C0 04 00 08 */	lfs f0, 8(r4)
/* 8030FFB0 0030CF10  EC 02 00 28 */	fsubs f0, f2, f0
/* 8030FFB4 0030CF14  FC 00 02 10 */	fabs f0, f0
/* 8030FFB8 0030CF18  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8030FFBC 0030CF1C  40 80 00 08 */	bge lbl_8030FFC4
/* 8030FFC0 0030CF20  38 A0 00 01 */	li r5, 1
lbl_8030FFC4:
/* 8030FFC4 0030CF24  7C A3 2B 78 */	mr r3, r5
/* 8030FFC8 0030CF28  4E 80 00 20 */	blr 

.global __sinit_CloseEnough_cpp
__sinit_CloseEnough_cpp:
/* 8030FFCC 0030CF2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030FFD0 0030CF30  7C 08 02 A6 */	mflr r0
/* 8030FFD4 0030CF34  C0 22 C8 48 */	lfs f1, lbl_805AE568@sda21(r2)
/* 8030FFD8 0030CF38  38 6D A8 80 */	addi r3, r13, lbl_805A9440@sda21
/* 8030FFDC 0030CF3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030FFE0 0030CF40  FC 40 08 90 */	fmr f2, f1
/* 8030FFE4 0030CF44  48 00 42 1D */	bl __ct__9CVector2fFff
/* 8030FFE8 0030CF48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030FFEC 0030CF4C  7C 08 03 A6 */	mtlr r0
/* 8030FFF0 0030CF50  38 21 00 10 */	addi r1, r1, 0x10
/* 8030FFF4 0030CF54  4E 80 00 20 */	blr
