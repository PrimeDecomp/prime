.include "macros.inc"

.section .data
.balign 8

.global lbl_803ED610
lbl_803ED610:
	# ROM: 0x3EA610
	.4byte 0
	.4byte 0
	.4byte __dt__26CLineExtraSpaceInstructionFv
	.4byte Invoke__26CLineExtraSpaceInstructionCFR16CFontRenderStateP17CTextRenderBuffer
	.4byte PageInvoke__26CLineExtraSpaceInstructionCFR16CFontRenderStateP17CTextRenderBuffer
	.4byte "GetAssets__12CInstructionCFRQ24rstl42vector<6CToken,Q24rstl17rmemory_allocator>"
	.4byte GetAssetCount__12CInstructionCFv
	.4byte 0

.section .text, "ax"

.global __dt__26CLineExtraSpaceInstructionFv
__dt__26CLineExtraSpaceInstructionFv:
/* 802FF80C 002FC76C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FF810 002FC770  7C 08 02 A6 */	mflr r0
/* 802FF814 002FC774  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FF818 002FC778  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FF81C 002FC77C  7C 7F 1B 79 */	or. r31, r3, r3
/* 802FF820 002FC780  41 82 00 30 */	beq lbl_802FF850
/* 802FF824 002FC784  3C 60 80 3F */	lis r3, lbl_803ED610@ha
/* 802FF828 002FC788  38 03 D6 10 */	addi r0, r3, lbl_803ED610@l
/* 802FF82C 002FC78C  90 1F 00 00 */	stw r0, 0(r31)
/* 802FF830 002FC790  41 82 00 10 */	beq lbl_802FF840
/* 802FF834 002FC794  3C 60 80 3E */	lis r3, lbl_803D9A6C@ha
/* 802FF838 002FC798  38 03 9A 6C */	addi r0, r3, lbl_803D9A6C@l
/* 802FF83C 002FC79C  90 1F 00 00 */	stw r0, 0(r31)
lbl_802FF840:
/* 802FF840 002FC7A0  7C 80 07 35 */	extsh. r0, r4
/* 802FF844 002FC7A4  40 81 00 0C */	ble lbl_802FF850
/* 802FF848 002FC7A8  7F E3 FB 78 */	mr r3, r31
/* 802FF84C 002FC7AC  48 01 60 E5 */	bl Free__7CMemoryFPCv
lbl_802FF850:
/* 802FF850 002FC7B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FF854 002FC7B4  7F E3 FB 78 */	mr r3, r31
/* 802FF858 002FC7B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FF85C 002FC7BC  7C 08 03 A6 */	mtlr r0
/* 802FF860 002FC7C0  38 21 00 10 */	addi r1, r1, 0x10
/* 802FF864 002FC7C4  4E 80 00 20 */	blr

.global PageInvoke__26CLineExtraSpaceInstructionCFR16CFontRenderStateP17CTextRenderBuffer
PageInvoke__26CLineExtraSpaceInstructionCFR16CFontRenderStateP17CTextRenderBuffer:
/* 802FF868 002FC7C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FF86C 002FC7CC  7C 08 02 A6 */	mflr r0
/* 802FF870 002FC7D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FF874 002FC7D4  81 83 00 00 */	lwz r12, 0(r3)
/* 802FF878 002FC7D8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802FF87C 002FC7DC  7D 89 03 A6 */	mtctr r12
/* 802FF880 002FC7E0  4E 80 04 21 */	bctrl
/* 802FF884 002FC7E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FF888 002FC7E8  7C 08 03 A6 */	mtlr r0
/* 802FF88C 002FC7EC  38 21 00 10 */	addi r1, r1, 0x10
/* 802FF890 002FC7F0  4E 80 00 20 */	blr

.global Invoke__26CLineExtraSpaceInstructionCFR16CFontRenderStateP17CTextRenderBuffer
Invoke__26CLineExtraSpaceInstructionCFR16CFontRenderStateP17CTextRenderBuffer:
/* 802FF894 002FC7F4  80 03 00 04 */	lwz r0, 4(r3)
/* 802FF898 002FC7F8  90 04 00 78 */	stw r0, 0x78(r4)
/* 802FF89C 002FC7FC  4E 80 00 20 */	blr
