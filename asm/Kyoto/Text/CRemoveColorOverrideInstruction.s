.include "macros.inc"

.section .data

.global lbl_803ED6D8
lbl_803ED6D8:
	# ROM: 0x3EA6D8
	.4byte 0
	.4byte 0
	.4byte __dt__31CRemoveColorOverrideInstructionFv
	.4byte Invoke__31CRemoveColorOverrideInstructionCFR16CFontRenderStateP17CTextRenderBuffer
	.4byte PageInvoke__31CRemoveColorOverrideInstructionCFR16CFontRenderStateP17CTextRenderBuffer
	.4byte "GetAssets__12CInstructionCFRQ24rstl42vector<6CToken,Q24rstl17rmemory_allocator>"
	.4byte GetAssetCount__12CInstructionCFv
	.4byte 0

.section .text, "ax"

.global __dt__31CRemoveColorOverrideInstructionFv
__dt__31CRemoveColorOverrideInstructionFv:
/* 8030183C 002FE79C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80301840 002FE7A0  7C 08 02 A6 */	mflr r0
/* 80301844 002FE7A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80301848 002FE7A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030184C 002FE7AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80301850 002FE7B0  41 82 00 30 */	beq lbl_80301880
/* 80301854 002FE7B4  3C 60 80 3F */	lis r3, lbl_803ED6D8@ha
/* 80301858 002FE7B8  38 03 D6 D8 */	addi r0, r3, lbl_803ED6D8@l
/* 8030185C 002FE7BC  90 1F 00 00 */	stw r0, 0(r31)
/* 80301860 002FE7C0  41 82 00 10 */	beq lbl_80301870
/* 80301864 002FE7C4  3C 60 80 3E */	lis r3, lbl_803D9A6C@ha
/* 80301868 002FE7C8  38 03 9A 6C */	addi r0, r3, lbl_803D9A6C@l
/* 8030186C 002FE7CC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80301870:
/* 80301870 002FE7D0  7C 80 07 35 */	extsh. r0, r4
/* 80301874 002FE7D4  40 81 00 0C */	ble lbl_80301880
/* 80301878 002FE7D8  7F E3 FB 78 */	mr r3, r31
/* 8030187C 002FE7DC  48 01 40 B5 */	bl Free__7CMemoryFPCv
lbl_80301880:
/* 80301880 002FE7E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80301884 002FE7E4  7F E3 FB 78 */	mr r3, r31
/* 80301888 002FE7E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030188C 002FE7EC  7C 08 03 A6 */	mtlr r0
/* 80301890 002FE7F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80301894 002FE7F4  4E 80 00 20 */	blr 

.global PageInvoke__31CRemoveColorOverrideInstructionCFR16CFontRenderStateP17CTextRenderBuffer
PageInvoke__31CRemoveColorOverrideInstructionCFR16CFontRenderStateP17CTextRenderBuffer:
/* 80301898 002FE7F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030189C 002FE7FC  7C 08 02 A6 */	mflr r0
/* 803018A0 002FE800  90 01 00 14 */	stw r0, 0x14(r1)
/* 803018A4 002FE804  81 83 00 00 */	lwz r12, 0(r3)
/* 803018A8 002FE808  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 803018AC 002FE80C  7D 89 03 A6 */	mtctr r12
/* 803018B0 002FE810  4E 80 04 21 */	bctrl 
/* 803018B4 002FE814  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803018B8 002FE818  7C 08 03 A6 */	mtlr r0
/* 803018BC 002FE81C  38 21 00 10 */	addi r1, r1, 0x10
/* 803018C0 002FE820  4E 80 00 20 */	blr 

.global Invoke__31CRemoveColorOverrideInstructionCFR16CFontRenderStateP17CTextRenderBuffer
Invoke__31CRemoveColorOverrideInstructionCFR16CFontRenderStateP17CTextRenderBuffer:
/* 803018C4 002FE824  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803018C8 002FE828  7C 08 02 A6 */	mflr r0
/* 803018CC 002FE82C  38 C0 00 00 */	li r6, 0
/* 803018D0 002FE830  90 01 00 14 */	stw r0, 0x14(r1)
/* 803018D4 002FE834  80 03 00 04 */	lwz r0, 4(r3)
/* 803018D8 002FE838  7C 83 23 78 */	mr r3, r4
/* 803018DC 002FE83C  80 A4 00 70 */	lwz r5, 0x70(r4)
/* 803018E0 002FE840  7C C5 01 AE */	stbx r6, r5, r0
/* 803018E4 002FE844  4B FF DB 01 */	bl RefreshPalette__16CFontRenderStateFv
/* 803018E8 002FE848  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803018EC 002FE84C  7C 08 03 A6 */	mtlr r0
/* 803018F0 002FE850  38 21 00 10 */	addi r1, r1, 0x10
/* 803018F4 002FE854  4E 80 00 20 */	blr 
