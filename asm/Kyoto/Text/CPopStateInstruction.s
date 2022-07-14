.include "macros.inc"

.section .data

.global lbl_803ED698
lbl_803ED698:
	# ROM: 0x3EA698
	.4byte 0
	.4byte 0
	.4byte __dt__20CPopStateInstructionFv
	.4byte Invoke__20CPopStateInstructionCFR16CFontRenderStateP17CTextRenderBuffer
	.4byte PageInvoke__20CPopStateInstructionCFR16CFontRenderStateP17CTextRenderBuffer
	.4byte "GetAssets__12CInstructionCFRQ24rstl42vector<6CToken,Q24rstl17rmemory_allocator>"
	.4byte GetAssetCount__12CInstructionCFv
	.4byte 0

.section .text, "ax"

.global __dt__20CPopStateInstructionFv
__dt__20CPopStateInstructionFv:
/* 802FFD40 002FCCA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FFD44 002FCCA4  7C 08 02 A6 */	mflr r0
/* 802FFD48 002FCCA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FFD4C 002FCCAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FFD50 002FCCB0  7C 7F 1B 79 */	or. r31, r3, r3
/* 802FFD54 002FCCB4  41 82 00 30 */	beq lbl_802FFD84
/* 802FFD58 002FCCB8  3C 60 80 3F */	lis r3, lbl_803ED698@ha
/* 802FFD5C 002FCCBC  38 03 D6 98 */	addi r0, r3, lbl_803ED698@l
/* 802FFD60 002FCCC0  90 1F 00 00 */	stw r0, 0(r31)
/* 802FFD64 002FCCC4  41 82 00 10 */	beq lbl_802FFD74
/* 802FFD68 002FCCC8  3C 60 80 3E */	lis r3, lbl_803D9A6C@ha
/* 802FFD6C 002FCCCC  38 03 9A 6C */	addi r0, r3, lbl_803D9A6C@l
/* 802FFD70 002FCCD0  90 1F 00 00 */	stw r0, 0(r31)
lbl_802FFD74:
/* 802FFD74 002FCCD4  7C 80 07 35 */	extsh. r0, r4
/* 802FFD78 002FCCD8  40 81 00 0C */	ble lbl_802FFD84
/* 802FFD7C 002FCCDC  7F E3 FB 78 */	mr r3, r31
/* 802FFD80 002FCCE0  48 01 5B B1 */	bl Free__7CMemoryFPCv
lbl_802FFD84:
/* 802FFD84 002FCCE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FFD88 002FCCE8  7F E3 FB 78 */	mr r3, r31
/* 802FFD8C 002FCCEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FFD90 002FCCF0  7C 08 03 A6 */	mtlr r0
/* 802FFD94 002FCCF4  38 21 00 10 */	addi r1, r1, 0x10
/* 802FFD98 002FCCF8  4E 80 00 20 */	blr

.global PageInvoke__20CPopStateInstructionCFR16CFontRenderStateP17CTextRenderBuffer
PageInvoke__20CPopStateInstructionCFR16CFontRenderStateP17CTextRenderBuffer:
/* 802FFD9C 002FCCFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FFDA0 002FCD00  7C 08 02 A6 */	mflr r0
/* 802FFDA4 002FCD04  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FFDA8 002FCD08  81 83 00 00 */	lwz r12, 0(r3)
/* 802FFDAC 002FCD0C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802FFDB0 002FCD10  7D 89 03 A6 */	mtctr r12
/* 802FFDB4 002FCD14  4E 80 04 21 */	bctrl
/* 802FFDB8 002FCD18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FFDBC 002FCD1C  7C 08 03 A6 */	mtlr r0
/* 802FFDC0 002FCD20  38 21 00 10 */	addi r1, r1, 0x10
/* 802FFDC4 002FCD24  4E 80 00 20 */	blr

.global Invoke__20CPopStateInstructionCFR16CFontRenderStateP17CTextRenderBuffer
Invoke__20CPopStateInstructionCFR16CFontRenderStateP17CTextRenderBuffer:
/* 802FFDC8 002FCD28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FFDCC 002FCD2C  7C 08 02 A6 */	mflr r0
/* 802FFDD0 002FCD30  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FFDD4 002FCD34  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802FFDD8 002FCD38  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802FFDDC 002FCD3C  7C BE 2B 78 */	mr r30, r5
/* 802FFDE0 002FCD40  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802FFDE4 002FCD44  7C 9D 23 78 */	mr r29, r4
/* 802FFDE8 002FCD48  7F A3 EB 78 */	mr r3, r29
/* 802FFDEC 002FCD4C  83 E4 00 48 */	lwz r31, 0x48(r4)
/* 802FFDF0 002FCD50  4B FF EF 05 */	bl PopState__16CFontRenderStateFv
/* 802FFDF4 002FCD54  80 1D 00 48 */	lwz r0, 0x48(r29)
/* 802FFDF8 002FCD58  7C 00 F8 40 */	cmplw r0, r31
/* 802FFDFC 002FCD5C  41 82 00 10 */	beq lbl_802FFE0C
/* 802FFE00 002FCD60  7F C3 F3 78 */	mr r3, r30
/* 802FFE04 002FCD64  38 9D 00 48 */	addi r4, r29, 0x48
/* 802FFE08 002FCD68  48 05 B3 A9 */	bl "AddFontChange__17CTextRenderBufferFRC21TToken<11CRasterFont>"
lbl_802FFE0C:
/* 802FFE0C 002FCD6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FFE10 002FCD70  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802FFE14 002FCD74  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802FFE18 002FCD78  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802FFE1C 002FCD7C  7C 08 03 A6 */	mtlr r0
/* 802FFE20 002FCD80  38 21 00 20 */	addi r1, r1, 0x20
/* 802FFE24 002FCD84  4E 80 00 20 */	blr
