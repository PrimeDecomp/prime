.include "macros.inc"

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global __dt__17CColorInstructionFv
__dt__17CColorInstructionFv:
/* 802FE834 002FB794  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FE838 002FB798  7C 08 02 A6 */	mflr r0
/* 802FE83C 002FB79C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FE840 002FB7A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FE844 002FB7A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 802FE848 002FB7A8  41 82 00 30 */	beq lbl_802FE878
/* 802FE84C 002FB7AC  3C 60 80 3F */	lis r3, lbl_803ED5B0@ha
/* 802FE850 002FB7B0  38 03 D5 B0 */	addi r0, r3, lbl_803ED5B0@l
/* 802FE854 002FB7B4  90 1F 00 00 */	stw r0, 0(r31)
/* 802FE858 002FB7B8  41 82 00 10 */	beq lbl_802FE868
/* 802FE85C 002FB7BC  3C 60 80 3E */	lis r3, lbl_803D9A6C@ha
/* 802FE860 002FB7C0  38 03 9A 6C */	addi r0, r3, lbl_803D9A6C@l
/* 802FE864 002FB7C4  90 1F 00 00 */	stw r0, 0(r31)
lbl_802FE868:
/* 802FE868 002FB7C8  7C 80 07 35 */	extsh. r0, r4
/* 802FE86C 002FB7CC  40 81 00 0C */	ble lbl_802FE878
/* 802FE870 002FB7D0  7F E3 FB 78 */	mr r3, r31
/* 802FE874 002FB7D4  48 01 70 BD */	bl Free__7CMemoryFPCv
lbl_802FE878:
/* 802FE878 002FB7D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FE87C 002FB7DC  7F E3 FB 78 */	mr r3, r31
/* 802FE880 002FB7E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FE884 002FB7E4  7C 08 03 A6 */	mtlr r0
/* 802FE888 002FB7E8  38 21 00 10 */	addi r1, r1, 0x10
/* 802FE88C 002FB7EC  4E 80 00 20 */	blr 

.global PageInvoke__17CColorInstructionCFR16CFontRenderStateP17CTextRenderBuffer
PageInvoke__17CColorInstructionCFR16CFontRenderStateP17CTextRenderBuffer:
/* 802FE890 002FB7F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FE894 002FB7F4  7C 08 02 A6 */	mflr r0
/* 802FE898 002FB7F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FE89C 002FB7FC  81 83 00 00 */	lwz r12, 0(r3)
/* 802FE8A0 002FB800  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802FE8A4 002FB804  7D 89 03 A6 */	mtctr r12
/* 802FE8A8 002FB808  4E 80 04 21 */	bctrl 
/* 802FE8AC 002FB80C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FE8B0 002FB810  7C 08 03 A6 */	mtlr r0
/* 802FE8B4 002FB814  38 21 00 10 */	addi r1, r1, 0x10
/* 802FE8B8 002FB818  4E 80 00 20 */	blr 

.global Invoke__17CColorInstructionCFR16CFontRenderStateP17CTextRenderBuffer
Invoke__17CColorInstructionCFR16CFontRenderStateP17CTextRenderBuffer:
/* 802FE8BC 002FB81C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FE8C0 002FB820  7C 08 02 A6 */	mflr r0
/* 802FE8C4 002FB824  7C 65 1B 78 */	mr r5, r3
/* 802FE8C8 002FB828  7C 83 23 78 */	mr r3, r4
/* 802FE8CC 002FB82C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FE8D0 002FB830  80 85 00 04 */	lwz r4, 4(r5)
/* 802FE8D4 002FB834  38 A5 00 08 */	addi r5, r5, 8
/* 802FE8D8 002FB838  48 00 0A 4D */	bl SetColor__16CFontRenderStateF10EColorTypeRC10CTextColor
/* 802FE8DC 002FB83C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FE8E0 002FB840  7C 08 03 A6 */	mtlr r0
/* 802FE8E4 002FB844  38 21 00 10 */	addi r1, r1, 0x10
/* 802FE8E8 002FB848  4E 80 00 20 */	blr
