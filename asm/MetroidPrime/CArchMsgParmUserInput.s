.include "macros.inc"

.section .data
.balign 8

.global __vt__21CArchMsgParmUserInput
__vt__21CArchMsgParmUserInput:
	# ROM: 0x3D6810
	.4byte 0
	.4byte 0
	.4byte __dt__21CArchMsgParmUserInputFv
	.4byte 0

.section .text, "ax"

.global GetUserInput__21CArchMsgParmUserInputCFv
GetUserInput__21CArchMsgParmUserInputCFv:
/* 8001B9E4 00018944  38 63 00 04 */	addi r3, r3, 4
/* 8001B9E8 00018948  4E 80 00 20 */	blr

.global __dt__21CArchMsgParmUserInputFv
__dt__21CArchMsgParmUserInputFv:
/* 8001B9EC 0001894C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001B9F0 00018950  7C 08 02 A6 */	mflr r0
/* 8001B9F4 00018954  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001B9F8 00018958  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001B9FC 0001895C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8001BA00 00018960  41 82 00 30 */	beq lbl_8001BA30
/* 8001BA04 00018964  3C 60 80 3E */	lis r3, __vt__21CArchMsgParmUserInput@ha
/* 8001BA08 00018968  38 03 98 10 */	addi r0, r3, __vt__21CArchMsgParmUserInput@l
/* 8001BA0C 0001896C  90 1F 00 00 */	stw r0, 0(r31)
/* 8001BA10 00018970  41 82 00 10 */	beq lbl_8001BA20
/* 8001BA14 00018974  3C 60 80 3E */	lis r3, __vt__24IArchitectureMessageParm@ha
/* 8001BA18 00018978  38 03 8E 9C */	addi r0, r3, __vt__24IArchitectureMessageParm@l
/* 8001BA1C 0001897C  90 1F 00 00 */	stw r0, 0(r31)
lbl_8001BA20:
/* 8001BA20 00018980  7C 80 07 35 */	extsh. r0, r4
/* 8001BA24 00018984  40 81 00 0C */	ble lbl_8001BA30
/* 8001BA28 00018988  7F E3 FB 78 */	mr r3, r31
/* 8001BA2C 0001898C  48 2F 9F 05 */	bl Free__7CMemoryFPCv
lbl_8001BA30:
/* 8001BA30 00018990  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001BA34 00018994  7F E3 FB 78 */	mr r3, r31
/* 8001BA38 00018998  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001BA3C 0001899C  7C 08 03 A6 */	mtlr r0
/* 8001BA40 000189A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8001BA44 000189A4  4E 80 00 20 */	blr

.global __ct__21CArchMsgParmUserInputFRC11CFinalInput
__ct__21CArchMsgParmUserInputFRC11CFinalInput:
/* 8001BA48 000189A8  3C C0 80 3E */	lis r6, __vt__24IArchitectureMessageParm@ha
/* 8001BA4C 000189AC  3C A0 80 3E */	lis r5, __vt__21CArchMsgParmUserInput@ha
/* 8001BA50 000189B0  38 C6 8E 9C */	addi r6, r6, __vt__24IArchitectureMessageParm@l
/* 8001BA54 000189B4  90 C3 00 00 */	stw r6, 0(r3)
/* 8001BA58 000189B8  38 05 98 10 */	addi r0, r5, __vt__21CArchMsgParmUserInput@l
/* 8001BA5C 000189BC  90 03 00 00 */	stw r0, 0(r3)
/* 8001BA60 000189C0  C0 04 00 00 */	lfs f0, 0(r4)
/* 8001BA64 000189C4  D0 03 00 04 */	stfs f0, 4(r3)
/* 8001BA68 000189C8  80 04 00 04 */	lwz r0, 4(r4)
/* 8001BA6C 000189CC  90 03 00 08 */	stw r0, 8(r3)
/* 8001BA70 000189D0  C0 04 00 08 */	lfs f0, 8(r4)
/* 8001BA74 000189D4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8001BA78 000189D8  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8001BA7C 000189DC  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8001BA80 000189E0  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8001BA84 000189E4  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8001BA88 000189E8  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 8001BA8C 000189EC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8001BA90 000189F0  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 8001BA94 000189F4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8001BA98 000189F8  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 8001BA9C 000189FC  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8001BAA0 00018A00  88 04 00 20 */	lbz r0, 0x20(r4)
/* 8001BAA4 00018A04  98 03 00 24 */	stb r0, 0x24(r3)
/* 8001BAA8 00018A08  88 04 00 21 */	lbz r0, 0x21(r4)
/* 8001BAAC 00018A0C  98 03 00 25 */	stb r0, 0x25(r3)
/* 8001BAB0 00018A10  88 04 00 22 */	lbz r0, 0x22(r4)
/* 8001BAB4 00018A14  98 03 00 26 */	stb r0, 0x26(r3)
/* 8001BAB8 00018A18  88 04 00 23 */	lbz r0, 0x23(r4)
/* 8001BABC 00018A1C  98 03 00 27 */	stb r0, 0x27(r3)
/* 8001BAC0 00018A20  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 8001BAC4 00018A24  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8001BAC8 00018A28  C0 04 00 28 */	lfs f0, 0x28(r4)
/* 8001BACC 00018A2C  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8001BAD0 00018A30  88 04 00 2C */	lbz r0, 0x2c(r4)
/* 8001BAD4 00018A34  98 03 00 30 */	stb r0, 0x30(r3)
/* 8001BAD8 00018A38  88 04 00 2D */	lbz r0, 0x2d(r4)
/* 8001BADC 00018A3C  98 03 00 31 */	stb r0, 0x31(r3)
/* 8001BAE0 00018A40  88 04 00 2E */	lbz r0, 0x2e(r4)
/* 8001BAE4 00018A44  98 03 00 32 */	stb r0, 0x32(r3)
/* 8001BAE8 00018A48  4E 80 00 20 */	blr
