.include "macros.inc"

.section .text, "ax"

.global "GetTransitionTree__18CTransitionManagerCFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>RCQ24rstl25ncrc_ptr<13CAnimTreeNode>"
"GetTransitionTree__18CTransitionManagerCFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>RCQ24rstl25ncrc_ptr<13CAnimTreeNode>":
/* 802E6EAC 002E3E0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E6EB0 002E3E10  7C 08 02 A6 */	mflr r0
/* 802E6EB4 002E3E14  7C 87 23 78 */	mr r7, r4
/* 802E6EB8 002E3E18  7C A4 2B 78 */	mr r4, r5
/* 802E6EBC 002E3E1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E6EC0 002E3E20  7C C0 33 78 */	mr r0, r6
/* 802E6EC4 002E3E24  7C E6 3B 78 */	mr r6, r7
/* 802E6EC8 002E3E28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E6ECC 002E3E2C  7C 7F 1B 78 */	mr r31, r3
/* 802E6ED0 002E3E30  7C 05 03 78 */	mr r5, r0
/* 802E6ED4 002E3E34  48 00 00 19 */	bl "GetTransitionTree__10CTreeUtilsFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>RCQ24rstl25ncrc_ptr<13CAnimTreeNode>RC15CAnimSysContext"
/* 802E6ED8 002E3E38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E6EDC 002E3E3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E6EE0 002E3E40  7C 08 03 A6 */	mtlr r0
/* 802E6EE4 002E3E44  38 21 00 10 */	addi r1, r1, 0x10
/* 802E6EE8 002E3E48  4E 80 00 20 */	blr
