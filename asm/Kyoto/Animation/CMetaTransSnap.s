.include "macros.inc"

.section .data

.global lbl_803ECDC0
lbl_803ECDC0:
	# ROM: 0x3E9DC0
	.4byte 0
	.4byte 0
	.4byte __dt__14CMetaTransSnapFv
	.4byte "VGetTransitionTree__14CMetaTransSnapCFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>RCQ24rstl25ncrc_ptr<13CAnimTreeNode>RC15CAnimSysContext"
	.4byte GetType__14CMetaTransSnapCFv
	.4byte WriteTransData__14CMetaTransSnapCFR13COutputStream

.section .text, "ax"

.global __dt__14CMetaTransSnapFv
__dt__14CMetaTransSnapFv:
/* 802E2B0C 002DFA6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E2B10 002DFA70  7C 08 02 A6 */	mflr r0
/* 802E2B14 002DFA74  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E2B18 002DFA78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E2B1C 002DFA7C  7C 7F 1B 79 */	or. r31, r3, r3
/* 802E2B20 002DFA80  41 82 00 30 */	beq lbl_802E2B50
/* 802E2B24 002DFA84  3C 60 80 3F */	lis r3, lbl_803ECDC0@ha
/* 802E2B28 002DFA88  38 03 CD C0 */	addi r0, r3, lbl_803ECDC0@l
/* 802E2B2C 002DFA8C  90 1F 00 00 */	stw r0, 0(r31)
/* 802E2B30 002DFA90  41 82 00 10 */	beq lbl_802E2B40
/* 802E2B34 002DFA94  3C 60 80 3E */	lis r3, lbl_803D9C70@ha
/* 802E2B38 002DFA98  38 03 9C 70 */	addi r0, r3, lbl_803D9C70@l
/* 802E2B3C 002DFA9C  90 1F 00 00 */	stw r0, 0(r31)
lbl_802E2B40:
/* 802E2B40 002DFAA0  7C 80 07 35 */	extsh. r0, r4
/* 802E2B44 002DFAA4  40 81 00 0C */	ble lbl_802E2B50
/* 802E2B48 002DFAA8  7F E3 FB 78 */	mr r3, r31
/* 802E2B4C 002DFAAC  48 03 2D E5 */	bl Free__7CMemoryFPCv
lbl_802E2B50:
/* 802E2B50 002DFAB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E2B54 002DFAB4  7F E3 FB 78 */	mr r3, r31
/* 802E2B58 002DFAB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E2B5C 002DFABC  7C 08 03 A6 */	mtlr r0
/* 802E2B60 002DFAC0  38 21 00 10 */	addi r1, r1, 0x10
/* 802E2B64 002DFAC4  4E 80 00 20 */	blr 

.global GetType__14CMetaTransSnapCFv
GetType__14CMetaTransSnapCFv:
/* 802E2B68 002DFAC8  38 60 00 03 */	li r3, 3
/* 802E2B6C 002DFACC  4E 80 00 20 */	blr 

.global WriteTransData__14CMetaTransSnapCFR13COutputStream
WriteTransData__14CMetaTransSnapCFR13COutputStream:
/* 802E2B70 002DFAD0  4E 80 00 20 */	blr 

.global "VGetTransitionTree__14CMetaTransSnapCFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>RCQ24rstl25ncrc_ptr<13CAnimTreeNode>RC15CAnimSysContext"
"VGetTransitionTree__14CMetaTransSnapCFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>RCQ24rstl25ncrc_ptr<13CAnimTreeNode>RC15CAnimSysContext":
/* 802E2B74 002DFAD4  80 06 00 00 */	lwz r0, 0(r6)
/* 802E2B78 002DFAD8  90 03 00 00 */	stw r0, 0(r3)
/* 802E2B7C 002DFADC  80 83 00 00 */	lwz r4, 0(r3)
/* 802E2B80 002DFAE0  80 64 00 04 */	lwz r3, 4(r4)
/* 802E2B84 002DFAE4  38 03 00 01 */	addi r0, r3, 1
/* 802E2B88 002DFAE8  90 04 00 04 */	stw r0, 4(r4)
/* 802E2B8C 002DFAEC  4E 80 00 20 */	blr
