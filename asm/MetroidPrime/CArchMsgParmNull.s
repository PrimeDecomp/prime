.include "macros.inc"

.section .data

.global lbl_803D9E70
lbl_803D9E70:
	# ROM: 0x3D6E70
	.4byte 0
	.4byte 0
	.4byte __dt__16CArchMsgParmNullFv
	.4byte 0
	
.section .text, "ax"

.global __dt__16CArchMsgParmNullFv
__dt__16CArchMsgParmNullFv:
/* 800516C8 0004E628  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800516CC 0004E62C  7C 08 02 A6 */	mflr r0
/* 800516D0 0004E630  90 01 00 14 */	stw r0, 0x14(r1)
/* 800516D4 0004E634  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800516D8 0004E638  7C 7F 1B 79 */	or. r31, r3, r3
/* 800516DC 0004E63C  41 82 00 30 */	beq lbl_8005170C
/* 800516E0 0004E640  3C 60 80 3E */	lis r3, lbl_803D9E70@ha
/* 800516E4 0004E644  38 03 9E 70 */	addi r0, r3, lbl_803D9E70@l
/* 800516E8 0004E648  90 1F 00 00 */	stw r0, 0(r31)
/* 800516EC 0004E64C  41 82 00 10 */	beq lbl_800516FC
/* 800516F0 0004E650  3C 60 80 3E */	lis r3, lbl_803D8E9C@ha
/* 800516F4 0004E654  38 03 8E 9C */	addi r0, r3, lbl_803D8E9C@l
/* 800516F8 0004E658  90 1F 00 00 */	stw r0, 0(r31)
lbl_800516FC:
/* 800516FC 0004E65C  7C 80 07 35 */	extsh. r0, r4
/* 80051700 0004E660  40 81 00 0C */	ble lbl_8005170C
/* 80051704 0004E664  7F E3 FB 78 */	mr r3, r31
/* 80051708 0004E668  48 2C 42 29 */	bl Free__7CMemoryFPCv
lbl_8005170C:
/* 8005170C 0004E66C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80051710 0004E670  7F E3 FB 78 */	mr r3, r31
/* 80051714 0004E674  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80051718 0004E678  7C 08 03 A6 */	mtlr r0
/* 8005171C 0004E67C  38 21 00 10 */	addi r1, r1, 0x10
/* 80051720 0004E680  4E 80 00 20 */	blr 

.global __ct__16CArchMsgParmNullFv
__ct__16CArchMsgParmNullFv:
/* 80051724 0004E684  3C A0 80 3E */	lis r5, lbl_803D8E9C@ha
/* 80051728 0004E688  3C 80 80 3E */	lis r4, lbl_803D9E70@ha
/* 8005172C 0004E68C  38 A5 8E 9C */	addi r5, r5, lbl_803D8E9C@l
/* 80051730 0004E690  90 A3 00 00 */	stw r5, 0(r3)
/* 80051734 0004E694  38 04 9E 70 */	addi r0, r4, lbl_803D9E70@l
/* 80051738 0004E698  90 03 00 00 */	stw r0, 0(r3)
/* 8005173C 0004E69C  4E 80 00 20 */	blr 
