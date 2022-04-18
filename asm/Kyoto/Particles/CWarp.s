.include "macros.inc"

.section .data

.global lbl_803EE2F8
lbl_803EE2F8:
	# ROM: 0x3EB2F8
	.4byte 0
	.4byte 0
	.4byte __dt__5CWarpFv
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	
.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global __dt__5CWarpFv
__dt__5CWarpFv:
/* 80336FC4 00333F24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80336FC8 00333F28  7C 08 02 A6 */	mflr r0
/* 80336FCC 00333F2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80336FD0 00333F30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80336FD4 00333F34  7C 7F 1B 79 */	or. r31, r3, r3
/* 80336FD8 00333F38  41 82 00 1C */	beq lbl_80336FF4
/* 80336FDC 00333F3C  3C A0 80 3F */	lis r5, lbl_803EE2F8@ha
/* 80336FE0 00333F40  7C 80 07 35 */	extsh. r0, r4
/* 80336FE4 00333F44  38 05 E2 F8 */	addi r0, r5, lbl_803EE2F8@l
/* 80336FE8 00333F48  90 1F 00 00 */	stw r0, 0(r31)
/* 80336FEC 00333F4C  40 81 00 08 */	ble lbl_80336FF4
/* 80336FF0 00333F50  4B FD E9 41 */	bl Free__7CMemoryFPCv
lbl_80336FF4:
/* 80336FF4 00333F54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80336FF8 00333F58  7F E3 FB 78 */	mr r3, r31
/* 80336FFC 00333F5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80337000 00333F60  7C 08 03 A6 */	mtlr r0
/* 80337004 00333F64  38 21 00 10 */	addi r1, r1, 0x10
/* 80337008 00333F68  4E 80 00 20 */	blr 
