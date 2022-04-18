.include "macros.inc"

.section .data

.global lbl_803ED6B8
lbl_803ED6B8:
	# ROM: 0x3EA6B8
	.4byte 0
	.4byte 0
	.4byte __dt__21CPushStateInstructionFv
	.4byte Invoke__21CPushStateInstructionCFR16CFontRenderStateP17CTextRenderBuffer
	.4byte PageInvoke__21CPushStateInstructionCFR16CFontRenderStateP17CTextRenderBuffer
	.4byte "GetAssets__12CInstructionCFRQ24rstl42vector<6CToken,Q24rstl17rmemory_allocator>"
	.4byte GetAssetCount__12CInstructionCFv
	.4byte 0

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global __dt__21CPushStateInstructionFv
__dt__21CPushStateInstructionFv:
/* 802FFE28 002FCD88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FFE2C 002FCD8C  7C 08 02 A6 */	mflr r0
/* 802FFE30 002FCD90  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FFE34 002FCD94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FFE38 002FCD98  7C 7F 1B 79 */	or. r31, r3, r3
/* 802FFE3C 002FCD9C  41 82 00 30 */	beq lbl_802FFE6C
/* 802FFE40 002FCDA0  3C 60 80 3F */	lis r3, lbl_803ED6B8@ha
/* 802FFE44 002FCDA4  38 03 D6 B8 */	addi r0, r3, lbl_803ED6B8@l
/* 802FFE48 002FCDA8  90 1F 00 00 */	stw r0, 0(r31)
/* 802FFE4C 002FCDAC  41 82 00 10 */	beq lbl_802FFE5C
/* 802FFE50 002FCDB0  3C 60 80 3E */	lis r3, lbl_803D9A6C@ha
/* 802FFE54 002FCDB4  38 03 9A 6C */	addi r0, r3, lbl_803D9A6C@l
/* 802FFE58 002FCDB8  90 1F 00 00 */	stw r0, 0(r31)
lbl_802FFE5C:
/* 802FFE5C 002FCDBC  7C 80 07 35 */	extsh. r0, r4
/* 802FFE60 002FCDC0  40 81 00 0C */	ble lbl_802FFE6C
/* 802FFE64 002FCDC4  7F E3 FB 78 */	mr r3, r31
/* 802FFE68 002FCDC8  48 01 5A C9 */	bl Free__7CMemoryFPCv
lbl_802FFE6C:
/* 802FFE6C 002FCDCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FFE70 002FCDD0  7F E3 FB 78 */	mr r3, r31
/* 802FFE74 002FCDD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FFE78 002FCDD8  7C 08 03 A6 */	mtlr r0
/* 802FFE7C 002FCDDC  38 21 00 10 */	addi r1, r1, 0x10
/* 802FFE80 002FCDE0  4E 80 00 20 */	blr 

.global PageInvoke__21CPushStateInstructionCFR16CFontRenderStateP17CTextRenderBuffer
PageInvoke__21CPushStateInstructionCFR16CFontRenderStateP17CTextRenderBuffer:
/* 802FFE84 002FCDE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FFE88 002FCDE8  7C 08 02 A6 */	mflr r0
/* 802FFE8C 002FCDEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FFE90 002FCDF0  81 83 00 00 */	lwz r12, 0(r3)
/* 802FFE94 002FCDF4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802FFE98 002FCDF8  7D 89 03 A6 */	mtctr r12
/* 802FFE9C 002FCDFC  4E 80 04 21 */	bctrl 
/* 802FFEA0 002FCE00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FFEA4 002FCE04  7C 08 03 A6 */	mtlr r0
/* 802FFEA8 002FCE08  38 21 00 10 */	addi r1, r1, 0x10
/* 802FFEAC 002FCE0C  4E 80 00 20 */	blr 

.global Invoke__21CPushStateInstructionCFR16CFontRenderStateP17CTextRenderBuffer
Invoke__21CPushStateInstructionCFR16CFontRenderStateP17CTextRenderBuffer:
/* 802FFEB0 002FCE10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FFEB4 002FCE14  7C 08 02 A6 */	mflr r0
/* 802FFEB8 002FCE18  7C 83 23 78 */	mr r3, r4
/* 802FFEBC 002FCE1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FFEC0 002FCE20  4B FF F1 19 */	bl sub_802fefd8
/* 802FFEC4 002FCE24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FFEC8 002FCE28  7C 08 03 A6 */	mtlr r0
/* 802FFECC 002FCE2C  38 21 00 10 */	addi r1, r1, 0x10
/* 802FFED0 002FCE30  4E 80 00 20 */	blr 
