.include "macros.inc"

.section .text, "ax"

.global Free__11CZipSupportFPvPv
Free__11CZipSupportFPvPv:
/* 8033F9EC 0033C94C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033F9F0 0033C950  7C 08 02 A6 */	mflr r0
/* 8033F9F4 0033C954  28 04 00 00 */	cmplwi r4, 0
/* 8033F9F8 0033C958  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033F9FC 0033C95C  41 82 00 0C */	beq lbl_8033FA08
/* 8033FA00 0033C960  7C 83 23 78 */	mr r3, r4
/* 8033FA04 0033C964  4B FD 5F 2D */	bl Free__7CMemoryFPCv
lbl_8033FA08:
/* 8033FA08 0033C968  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033FA0C 0033C96C  7C 08 03 A6 */	mtlr r0
/* 8033FA10 0033C970  38 21 00 10 */	addi r1, r1, 0x10
/* 8033FA14 0033C974  4E 80 00 20 */	blr

.global Alloc__11CZipSupportFPvUiUi
Alloc__11CZipSupportFPvUiUi:
/* 8033FA18 0033C978  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033FA1C 0033C97C  7C 08 02 A6 */	mflr r0
/* 8033FA20 0033C980  7C 64 29 D6 */	mullw r3, r4, r5
/* 8033FA24 0033C984  3C 80 80 3D */	lis r4, lbl_803D7A88@ha
/* 8033FA28 0033C988  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033FA2C 0033C98C  38 A0 00 00 */	li r5, 0
/* 8033FA30 0033C990  38 84 7A 88 */	addi r4, r4, lbl_803D7A88@l
/* 8033FA34 0033C994  4B FD 5D E5 */	bl __nwa__FUlPCcPCc
/* 8033FA38 0033C998  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033FA3C 0033C99C  7C 08 03 A6 */	mtlr r0
/* 8033FA40 0033C9A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8033FA44 0033C9A4  4E 80 00 20 */	blr

.section .rodata
.global lbl_803D7A88
lbl_803D7A88:
	# ROM: 0x3D4A88
	.asciz "??(??)"
	.byte 0x31
	.asciz ".1.3"
	.balign 4

