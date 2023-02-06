.include "macros.inc"

.section .data
.balign 8
.global __vt__24CScriptPlayerStateChange
__vt__24CScriptPlayerStateChange:
	# ROM: 0x3E2CC0
	.4byte 0
	.4byte 0
	.4byte __dt__24CScriptPlayerStateChangeFv
	.4byte Accept__24CScriptPlayerStateChangeFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__7CEntityFfR13CStateManager
	.4byte AcceptScriptMsg__24CScriptPlayerStateChangeF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__7CEntityFb

.section .text, "ax"

.global __dt__24CScriptPlayerStateChangeFv
__dt__24CScriptPlayerStateChangeFv:
/* 801DA4A0 001D7400  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DA4A4 001D7404  7C 08 02 A6 */	mflr r0
/* 801DA4A8 001D7408  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DA4AC 001D740C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DA4B0 001D7410  7C 9F 23 78 */	mr r31, r4
/* 801DA4B4 001D7414  93 C1 00 08 */	stw r30, 8(r1)
/* 801DA4B8 001D7418  7C 7E 1B 79 */	or. r30, r3, r3
/* 801DA4BC 001D741C  41 82 00 28 */	beq lbl_801DA4E4
/* 801DA4C0 001D7420  3C A0 80 3E */	lis r5, __vt__24CScriptPlayerStateChange@ha
/* 801DA4C4 001D7424  38 80 00 00 */	li r4, 0
/* 801DA4C8 001D7428  38 05 5C C0 */	addi r0, r5, __vt__24CScriptPlayerStateChange@l
/* 801DA4CC 001D742C  90 1E 00 00 */	stw r0, 0(r30)
/* 801DA4D0 001D7430  4B E7 6D A5 */	bl __dt__7CEntityFv
/* 801DA4D4 001D7434  7F E0 07 35 */	extsh. r0, r31
/* 801DA4D8 001D7438  40 81 00 0C */	ble lbl_801DA4E4
/* 801DA4DC 001D743C  7F C3 F3 78 */	mr r3, r30
/* 801DA4E0 001D7440  48 13 B4 51 */	bl Free__7CMemoryFPCv
lbl_801DA4E4:
/* 801DA4E4 001D7444  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DA4E8 001D7448  7F C3 F3 78 */	mr r3, r30
/* 801DA4EC 001D744C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DA4F0 001D7450  83 C1 00 08 */	lwz r30, 8(r1)
/* 801DA4F4 001D7454  7C 08 03 A6 */	mtlr r0
/* 801DA4F8 001D7458  38 21 00 10 */	addi r1, r1, 0x10
/* 801DA4FC 001D745C  4E 80 00 20 */	blr

.global AcceptScriptMsg__24CScriptPlayerStateChangeF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__24CScriptPlayerStateChangeF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 801DA500 001D7460  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801DA504 001D7464  7C 08 02 A6 */	mflr r0
/* 801DA508 001D7468  90 01 00 34 */	stw r0, 0x34(r1)
/* 801DA50C 001D746C  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 801DA510 001D7470  7C 7B 1B 78 */	mr r27, r3
/* 801DA514 001D7474  7C 9C 23 78 */	mr r28, r4
/* 801DA518 001D7478  7C BD 2B 78 */	mr r29, r5
/* 801DA51C 001D747C  7C DE 33 78 */	mr r30, r6
/* 801DA520 001D7480  88 03 00 30 */	lbz r0, 0x30(r3)
/* 801DA524 001D7484  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801DA528 001D7488  41 82 00 C8 */	beq lbl_801DA5F0
/* 801DA52C 001D748C  2C 1C 00 0D */	cmpwi r28, 0xd
/* 801DA530 001D7490  40 82 00 C0 */	bne lbl_801DA5F0
/* 801DA534 001D7494  80 7E 08 B8 */	lwz r3, 0x8b8(r30)
/* 801DA538 001D7498  80 9B 00 34 */	lwz r4, 0x34(r27)
/* 801DA53C 001D749C  80 63 00 00 */	lwz r3, 0(r3)
/* 801DA540 001D74A0  80 BB 00 3C */	lwz r5, 0x3c(r27)
/* 801DA544 001D74A4  4B EB 78 25 */	bl InitializePowerUp__12CPlayerStateFQ212CPlayerState9EItemTypei
/* 801DA548 001D74A8  80 7E 08 B8 */	lwz r3, 0x8b8(r30)
/* 801DA54C 001D74AC  80 9B 00 34 */	lwz r4, 0x34(r27)
/* 801DA550 001D74B0  80 63 00 00 */	lwz r3, 0(r3)
/* 801DA554 001D74B4  80 BB 00 38 */	lwz r5, 0x38(r27)
/* 801DA558 001D74B8  4B EB 76 99 */	bl IncrPickUp__12CPlayerStateFQ212CPlayerState9EItemTypei
/* 801DA55C 001D74BC  80 7B 00 44 */	lwz r3, 0x44(r27)
/* 801DA560 001D74C0  2C 03 00 00 */	cmpwi r3, 0
/* 801DA564 001D74C4  41 82 00 8C */	beq lbl_801DA5F0
/* 801DA568 001D74C8  80 1B 00 40 */	lwz r0, 0x40(r27)
/* 801DA56C 001D74CC  2C 00 00 01 */	cmpwi r0, 1
/* 801DA570 001D74D0  41 82 00 08 */	beq lbl_801DA578
/* 801DA574 001D74D4  48 00 00 7C */	b lbl_801DA5F0
lbl_801DA578:
/* 801DA578 001D74D8  20 03 00 01 */	subfic r0, r3, 1
/* 801DA57C 001D74DC  38 60 00 18 */	li r3, 0x18
/* 801DA580 001D74E0  7C 00 00 34 */	cntlzw r0, r0
/* 801DA584 001D74E4  54 1F D9 7E */	srwi r31, r0, 5
/* 801DA588 001D74E8  7F E4 FB 78 */	mr r4, r31
/* 801DA58C 001D74EC  4B E3 21 FD */	bl SetCommandFiltered__13ControlMapperFQ213ControlMapper9ECommandsb
/* 801DA590 001D74F0  7F E4 FB 78 */	mr r4, r31
/* 801DA594 001D74F4  38 60 00 1C */	li r3, 0x1c
/* 801DA598 001D74F8  4B E3 21 F1 */	bl SetCommandFiltered__13ControlMapperFQ213ControlMapper9ECommandsb
/* 801DA59C 001D74FC  7F E4 FB 78 */	mr r4, r31
/* 801DA5A0 001D7500  38 60 00 20 */	li r3, 0x20
/* 801DA5A4 001D7504  4B E3 21 E5 */	bl SetCommandFiltered__13ControlMapperFQ213ControlMapper9ECommandsb
/* 801DA5A8 001D7508  7F E4 FB 78 */	mr r4, r31
/* 801DA5AC 001D750C  38 60 00 19 */	li r3, 0x19
/* 801DA5B0 001D7510  4B E3 21 D9 */	bl SetCommandFiltered__13ControlMapperFQ213ControlMapper9ECommandsb
/* 801DA5B4 001D7514  7F E4 FB 78 */	mr r4, r31
/* 801DA5B8 001D7518  38 60 00 1D */	li r3, 0x1d
/* 801DA5BC 001D751C  4B E3 21 CD */	bl SetCommandFiltered__13ControlMapperFQ213ControlMapper9ECommandsb
/* 801DA5C0 001D7520  7F E4 FB 78 */	mr r4, r31
/* 801DA5C4 001D7524  38 60 00 1A */	li r3, 0x1a
/* 801DA5C8 001D7528  4B E3 21 C1 */	bl SetCommandFiltered__13ControlMapperFQ213ControlMapper9ECommandsb
/* 801DA5CC 001D752C  7F E4 FB 78 */	mr r4, r31
/* 801DA5D0 001D7530  38 60 00 1E */	li r3, 0x1e
/* 801DA5D4 001D7534  4B E3 21 B5 */	bl SetCommandFiltered__13ControlMapperFQ213ControlMapper9ECommandsb
/* 801DA5D8 001D7538  7F E4 FB 78 */	mr r4, r31
/* 801DA5DC 001D753C  38 60 00 1B */	li r3, 0x1b
/* 801DA5E0 001D7540  4B E3 21 A9 */	bl SetCommandFiltered__13ControlMapperFQ213ControlMapper9ECommandsb
/* 801DA5E4 001D7544  7F E4 FB 78 */	mr r4, r31
/* 801DA5E8 001D7548  38 60 00 1F */	li r3, 0x1f
/* 801DA5EC 001D754C  4B E3 21 9D */	bl SetCommandFiltered__13ControlMapperFQ213ControlMapper9ECommandsb
lbl_801DA5F0:
/* 801DA5F0 001D7550  A0 1D 00 00 */	lhz r0, 0(r29)
/* 801DA5F4 001D7554  7F 63 DB 78 */	mr r3, r27
/* 801DA5F8 001D7558  7F 84 E3 78 */	mr r4, r28
/* 801DA5FC 001D755C  7F C6 F3 78 */	mr r6, r30
/* 801DA600 001D7560  B0 01 00 08 */	sth r0, 8(r1)
/* 801DA604 001D7564  38 A1 00 08 */	addi r5, r1, 8
/* 801DA608 001D7568  4B E7 6B 55 */	bl AcceptScriptMsg__7CEntityF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 801DA60C 001D756C  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 801DA610 001D7570  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801DA614 001D7574  7C 08 03 A6 */	mtlr r0
/* 801DA618 001D7578  38 21 00 30 */	addi r1, r1, 0x30
/* 801DA61C 001D757C  4E 80 00 20 */	blr

.global Accept__24CScriptPlayerStateChangeFR8IVisitor
Accept__24CScriptPlayerStateChangeFR8IVisitor:
/* 801DA620 001D7580  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DA624 001D7584  7C 08 02 A6 */	mflr r0
/* 801DA628 001D7588  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DA62C 001D758C  7C 60 1B 78 */	mr r0, r3
/* 801DA630 001D7590  7C 83 23 78 */	mr r3, r4
/* 801DA634 001D7594  81 84 00 00 */	lwz r12, 0(r4)
/* 801DA638 001D7598  7C 04 03 78 */	mr r4, r0
/* 801DA63C 001D759C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801DA640 001D75A0  7D 89 03 A6 */	mtctr r12
/* 801DA644 001D75A4  4E 80 04 21 */	bctrl
/* 801DA648 001D75A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DA64C 001D75AC  7C 08 03 A6 */	mtlr r0
/* 801DA650 001D75B0  38 21 00 10 */	addi r1, r1, 0x10
/* 801DA654 001D75B4  4E 80 00 20 */	blr

.global "__ct__24CScriptPlayerStateChangeF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfobiiiQ224CScriptPlayerStateChange8EControlQ224CScriptPlayerStateChange21EControlCommandOption"
"__ct__24CScriptPlayerStateChangeF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfobiiiQ224CScriptPlayerStateChange8EControlQ224CScriptPlayerStateChange21EControlCommandOption":
/* 801DA658 001D75B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801DA65C 001D75BC  7C 08 02 A6 */	mflr r0
/* 801DA660 001D75C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 801DA664 001D75C4  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 801DA668 001D75C8  7C 7A 1B 78 */	mr r26, r3
/* 801DA66C 001D75CC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801DA670 001D75D0  7D 1B 43 78 */	mr r27, r8
/* 801DA674 001D75D4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801DA678 001D75D8  7D 3C 4B 78 */	mr r28, r9
/* 801DA67C 001D75DC  7D 5D 53 78 */	mr r29, r10
/* 801DA680 001D75E0  A0 04 00 00 */	lhz r0, 0(r4)
/* 801DA684 001D75E4  7C A4 2B 78 */	mr r4, r5
/* 801DA688 001D75E8  7C C5 33 78 */	mr r5, r6
/* 801DA68C 001D75EC  7C E6 3B 78 */	mr r6, r7
/* 801DA690 001D75F0  B0 01 00 08 */	sth r0, 8(r1)
/* 801DA694 001D75F4  7C 87 23 78 */	mr r7, r4
/* 801DA698 001D75F8  38 81 00 08 */	addi r4, r1, 8
/* 801DA69C 001D75FC  4B E7 6C 89 */	bl "__ct__7CEntityF9TUniqueIdRC11CEntityInfobRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801DA6A0 001D7600  3C 80 80 3E */	lis r4, __vt__24CScriptPlayerStateChange@ha
/* 801DA6A4 001D7604  7F 43 D3 78 */	mr r3, r26
/* 801DA6A8 001D7608  38 04 5C C0 */	addi r0, r4, __vt__24CScriptPlayerStateChange@l
/* 801DA6AC 001D760C  90 1A 00 00 */	stw r0, 0(r26)
/* 801DA6B0 001D7610  93 7A 00 34 */	stw r27, 0x34(r26)
/* 801DA6B4 001D7614  93 9A 00 38 */	stw r28, 0x38(r26)
/* 801DA6B8 001D7618  93 BA 00 3C */	stw r29, 0x3c(r26)
/* 801DA6BC 001D761C  93 DA 00 40 */	stw r30, 0x40(r26)
/* 801DA6C0 001D7620  93 FA 00 44 */	stw r31, 0x44(r26)
/* 801DA6C4 001D7624  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 801DA6C8 001D7628  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801DA6CC 001D762C  7C 08 03 A6 */	mtlr r0
/* 801DA6D0 001D7630  38 21 00 30 */	addi r1, r1, 0x30
/* 801DA6D4 001D7634  4E 80 00 20 */	blr
