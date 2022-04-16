.include "macros.inc"

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global __dt__25CColorOverrideInstructionFv
__dt__25CColorOverrideInstructionFv:
/* 802FE8EC 002FB84C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FE8F0 002FB850  7C 08 02 A6 */	mflr r0
/* 802FE8F4 002FB854  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FE8F8 002FB858  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FE8FC 002FB85C  7C 7F 1B 79 */	or. r31, r3, r3
/* 802FE900 002FB860  41 82 00 30 */	beq lbl_802FE930
/* 802FE904 002FB864  3C 60 80 3F */	lis r3, lbl_803ED5D0@ha
/* 802FE908 002FB868  38 03 D5 D0 */	addi r0, r3, lbl_803ED5D0@l
/* 802FE90C 002FB86C  90 1F 00 00 */	stw r0, 0(r31)
/* 802FE910 002FB870  41 82 00 10 */	beq lbl_802FE920
/* 802FE914 002FB874  3C 60 80 3E */	lis r3, lbl_803D9A6C@ha
/* 802FE918 002FB878  38 03 9A 6C */	addi r0, r3, lbl_803D9A6C@l
/* 802FE91C 002FB87C  90 1F 00 00 */	stw r0, 0(r31)
lbl_802FE920:
/* 802FE920 002FB880  7C 80 07 35 */	extsh. r0, r4
/* 802FE924 002FB884  40 81 00 0C */	ble lbl_802FE930
/* 802FE928 002FB888  7F E3 FB 78 */	mr r3, r31
/* 802FE92C 002FB88C  48 01 70 05 */	bl Free__7CMemoryFPCv
lbl_802FE930:
/* 802FE930 002FB890  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FE934 002FB894  7F E3 FB 78 */	mr r3, r31
/* 802FE938 002FB898  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FE93C 002FB89C  7C 08 03 A6 */	mtlr r0
/* 802FE940 002FB8A0  38 21 00 10 */	addi r1, r1, 0x10
/* 802FE944 002FB8A4  4E 80 00 20 */	blr 

.global PageInvoke__25CColorOverrideInstructionCFR16CFontRenderStateP17CTextRenderBuffer
PageInvoke__25CColorOverrideInstructionCFR16CFontRenderStateP17CTextRenderBuffer:
/* 802FE948 002FB8A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FE94C 002FB8AC  7C 08 02 A6 */	mflr r0
/* 802FE950 002FB8B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FE954 002FB8B4  81 83 00 00 */	lwz r12, 0(r3)
/* 802FE958 002FB8B8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802FE95C 002FB8BC  7D 89 03 A6 */	mtctr r12
/* 802FE960 002FB8C0  4E 80 04 21 */	bctrl 
/* 802FE964 002FB8C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FE968 002FB8C8  7C 08 03 A6 */	mtlr r0
/* 802FE96C 002FB8CC  38 21 00 10 */	addi r1, r1, 0x10
/* 802FE970 002FB8D0  4E 80 00 20 */	blr 

.global Invoke__25CColorOverrideInstructionCFR16CFontRenderStateP17CTextRenderBuffer
Invoke__25CColorOverrideInstructionCFR16CFontRenderStateP17CTextRenderBuffer:
/* 802FE974 002FB8D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FE978 002FB8D8  7C 08 02 A6 */	mflr r0
/* 802FE97C 002FB8DC  38 C0 00 01 */	li r6, 1
/* 802FE980 002FB8E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FE984 002FB8E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FE988 002FB8E8  7C 9F 23 78 */	mr r31, r4
/* 802FE98C 002FB8EC  93 C1 00 08 */	stw r30, 8(r1)
/* 802FE990 002FB8F0  7C 7E 1B 78 */	mr r30, r3
/* 802FE994 002FB8F4  80 A4 00 70 */	lwz r5, 0x70(r4)
/* 802FE998 002FB8F8  38 9E 00 08 */	addi r4, r30, 8
/* 802FE99C 002FB8FC  80 03 00 04 */	lwz r0, 4(r3)
/* 802FE9A0 002FB900  7F E3 FB 78 */	mr r3, r31
/* 802FE9A4 002FB904  7C C5 01 AE */	stbx r6, r5, r0
/* 802FE9A8 002FB908  48 00 03 1D */	bl ConvertToTextureSpace__16CFontRenderStateCFRC10CTextColor
/* 802FE9AC 002FB90C  80 1E 00 04 */	lwz r0, 4(r30)
/* 802FE9B0 002FB910  54 00 10 3A */	slwi r0, r0, 2
/* 802FE9B4 002FB914  7C 9F 02 14 */	add r4, r31, r0
/* 802FE9B8 002FB918  90 64 00 08 */	stw r3, 8(r4)
/* 802FE9BC 002FB91C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FE9C0 002FB920  83 C1 00 08 */	lwz r30, 8(r1)
/* 802FE9C4 002FB924  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FE9C8 002FB928  7C 08 03 A6 */	mtlr r0
/* 802FE9CC 002FB92C  38 21 00 10 */	addi r1, r1, 0x10
/* 802FE9D0 002FB930  4E 80 00 20 */	blr
