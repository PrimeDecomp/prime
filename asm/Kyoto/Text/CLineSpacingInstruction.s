.include "macros.inc"

.section .data
.balign 8

.global lbl_803ED678
lbl_803ED678:
	# ROM: 0x3EA678
	.4byte 0
	.4byte 0
	.4byte __dt__23CLineSpacingInstructionFv
	.4byte Invoke__23CLineSpacingInstructionCFR16CFontRenderStateP17CTextRenderBuffer
	.4byte PageInvoke__23CLineSpacingInstructionCFR16CFontRenderStateP17CTextRenderBuffer
	.4byte "GetAssets__12CInstructionCFRQ24rstl42vector<6CToken,Q24rstl17rmemory_allocator>"
	.4byte GetAssetCount__12CInstructionCFv
	.4byte 0

.section .text, "ax"

.global __dt__23CLineSpacingInstructionFv
__dt__23CLineSpacingInstructionFv:
/* 802FFCAC 002FCC0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FFCB0 002FCC10  7C 08 02 A6 */	mflr r0
/* 802FFCB4 002FCC14  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FFCB8 002FCC18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FFCBC 002FCC1C  7C 7F 1B 79 */	or. r31, r3, r3
/* 802FFCC0 002FCC20  41 82 00 30 */	beq lbl_802FFCF0
/* 802FFCC4 002FCC24  3C 60 80 3F */	lis r3, lbl_803ED678@ha
/* 802FFCC8 002FCC28  38 03 D6 78 */	addi r0, r3, lbl_803ED678@l
/* 802FFCCC 002FCC2C  90 1F 00 00 */	stw r0, 0(r31)
/* 802FFCD0 002FCC30  41 82 00 10 */	beq lbl_802FFCE0
/* 802FFCD4 002FCC34  3C 60 80 3E */	lis r3, lbl_803D9A6C@ha
/* 802FFCD8 002FCC38  38 03 9A 6C */	addi r0, r3, lbl_803D9A6C@l
/* 802FFCDC 002FCC3C  90 1F 00 00 */	stw r0, 0(r31)
lbl_802FFCE0:
/* 802FFCE0 002FCC40  7C 80 07 35 */	extsh. r0, r4
/* 802FFCE4 002FCC44  40 81 00 0C */	ble lbl_802FFCF0
/* 802FFCE8 002FCC48  7F E3 FB 78 */	mr r3, r31
/* 802FFCEC 002FCC4C  48 01 5C 45 */	bl Free__7CMemoryFPCv
lbl_802FFCF0:
/* 802FFCF0 002FCC50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FFCF4 002FCC54  7F E3 FB 78 */	mr r3, r31
/* 802FFCF8 002FCC58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FFCFC 002FCC5C  7C 08 03 A6 */	mtlr r0
/* 802FFD00 002FCC60  38 21 00 10 */	addi r1, r1, 0x10
/* 802FFD04 002FCC64  4E 80 00 20 */	blr

.global PageInvoke__23CLineSpacingInstructionCFR16CFontRenderStateP17CTextRenderBuffer
PageInvoke__23CLineSpacingInstructionCFR16CFontRenderStateP17CTextRenderBuffer:
/* 802FFD08 002FCC68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FFD0C 002FCC6C  7C 08 02 A6 */	mflr r0
/* 802FFD10 002FCC70  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FFD14 002FCC74  81 83 00 00 */	lwz r12, 0(r3)
/* 802FFD18 002FCC78  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802FFD1C 002FCC7C  7D 89 03 A6 */	mtctr r12
/* 802FFD20 002FCC80  4E 80 04 21 */	bctrl
/* 802FFD24 002FCC84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FFD28 002FCC88  7C 08 03 A6 */	mtlr r0
/* 802FFD2C 002FCC8C  38 21 00 10 */	addi r1, r1, 0x10
/* 802FFD30 002FCC90  4E 80 00 20 */	blr

.global Invoke__23CLineSpacingInstructionCFR16CFontRenderStateP17CTextRenderBuffer
Invoke__23CLineSpacingInstructionCFR16CFontRenderStateP17CTextRenderBuffer:
/* 802FFD34 002FCC94  C0 03 00 04 */	lfs f0, 4(r3)
/* 802FFD38 002FCC98  D0 04 00 74 */	stfs f0, 0x74(r4)
/* 802FFD3C 002FCC9C  4E 80 00 20 */	blr
