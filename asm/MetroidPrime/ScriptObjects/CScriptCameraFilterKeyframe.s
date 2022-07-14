.include "macros.inc"

.section .data

.global lbl_803DFC80
lbl_803DFC80:
	# ROM: 0x3DCC80
	.4byte 0
	.4byte 0
	.4byte __dt__27CScriptCameraFilterKeyframeFv
	.4byte Accept__27CScriptCameraFilterKeyframeFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__7CEntityFfR13CStateManager
	.4byte AcceptScriptMsg__27CScriptCameraFilterKeyframeF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__7CEntityFb

.section .text, "ax"

.global Accept__27CScriptCameraFilterKeyframeFR8IVisitor
Accept__27CScriptCameraFilterKeyframeFR8IVisitor:
/* 800EA4E4 000E7444  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EA4E8 000E7448  7C 08 02 A6 */	mflr r0
/* 800EA4EC 000E744C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EA4F0 000E7450  7C 60 1B 78 */	mr r0, r3
/* 800EA4F4 000E7454  7C 83 23 78 */	mr r3, r4
/* 800EA4F8 000E7458  81 84 00 00 */	lwz r12, 0(r4)
/* 800EA4FC 000E745C  7C 04 03 78 */	mr r4, r0
/* 800EA500 000E7460  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 800EA504 000E7464  7D 89 03 A6 */	mtctr r12
/* 800EA508 000E7468  4E 80 04 21 */	bctrl
/* 800EA50C 000E746C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EA510 000E7470  7C 08 03 A6 */	mtlr r0
/* 800EA514 000E7474  38 21 00 10 */	addi r1, r1, 0x10
/* 800EA518 000E7478  4E 80 00 20 */	blr

.global AcceptScriptMsg__27CScriptCameraFilterKeyframeF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__27CScriptCameraFilterKeyframeF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 800EA51C 000E747C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800EA520 000E7480  7C 08 02 A6 */	mflr r0
/* 800EA524 000E7484  90 01 00 24 */	stw r0, 0x24(r1)
/* 800EA528 000E7488  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800EA52C 000E748C  7C DF 33 78 */	mr r31, r6
/* 800EA530 000E7490  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800EA534 000E7494  7C BE 2B 78 */	mr r30, r5
/* 800EA538 000E7498  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800EA53C 000E749C  7C 9D 23 78 */	mr r29, r4
/* 800EA540 000E74A0  2C 1D 00 06 */	cmpwi r29, 6
/* 800EA544 000E74A4  93 81 00 10 */	stw r28, 0x10(r1)
/* 800EA548 000E74A8  7C 7C 1B 78 */	mr r28, r3
/* 800EA54C 000E74AC  41 82 00 A4 */	beq lbl_800EA5F0
/* 800EA550 000E74B0  40 80 00 14 */	bge lbl_800EA564
/* 800EA554 000E74B4  2C 1D 00 04 */	cmpwi r29, 4
/* 800EA558 000E74B8  41 82 00 74 */	beq lbl_800EA5CC
/* 800EA55C 000E74BC  40 80 00 48 */	bge lbl_800EA5A4
/* 800EA560 000E74C0  48 00 00 90 */	b lbl_800EA5F0
lbl_800EA564:
/* 800EA564 000E74C4  2C 1D 00 08 */	cmpwi r29, 8
/* 800EA568 000E74C8  40 80 00 88 */	bge lbl_800EA5F0
/* 800EA56C 000E74CC  88 1C 00 30 */	lbz r0, 0x30(r28)
/* 800EA570 000E74D0  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 800EA574 000E74D4  41 82 00 7C */	beq lbl_800EA5F0
/* 800EA578 000E74D8  80 1C 00 3C */	lwz r0, 0x3c(r28)
/* 800EA57C 000E74DC  38 DC 00 44 */	addi r6, r28, 0x44
/* 800EA580 000E74E0  80 9C 00 34 */	lwz r4, 0x34(r28)
/* 800EA584 000E74E4  1C 00 00 2C */	mulli r0, r0, 0x2c
/* 800EA588 000E74E8  80 BC 00 38 */	lwz r5, 0x38(r28)
/* 800EA58C 000E74EC  C0 3C 00 48 */	lfs f1, 0x48(r28)
/* 800EA590 000E74F0  80 FC 00 50 */	lwz r7, 0x50(r28)
/* 800EA594 000E74F4  7C 7F 02 14 */	add r3, r31, r0
/* 800EA598 000E74F8  38 63 0B 88 */	addi r3, r3, 0xb88
/* 800EA59C 000E74FC  48 00 2E 05 */	bl SetFilter__17CCameraFilterPassFQ217CCameraFilterPass11EFilterTypeQ217CCameraFilterPass12EFilterShapefRC6CColorUi
/* 800EA5A0 000E7500  48 00 00 50 */	b lbl_800EA5F0
lbl_800EA5A4:
/* 800EA5A4 000E7504  88 1C 00 30 */	lbz r0, 0x30(r28)
/* 800EA5A8 000E7508  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 800EA5AC 000E750C  41 82 00 44 */	beq lbl_800EA5F0
/* 800EA5B0 000E7510  80 1C 00 3C */	lwz r0, 0x3c(r28)
/* 800EA5B4 000E7514  C0 3C 00 4C */	lfs f1, 0x4c(r28)
/* 800EA5B8 000E7518  1C 00 00 2C */	mulli r0, r0, 0x2c
/* 800EA5BC 000E751C  7C 7F 02 14 */	add r3, r31, r0
/* 800EA5C0 000E7520  38 63 0B 88 */	addi r3, r3, 0xb88
/* 800EA5C4 000E7524  48 00 2D A5 */	bl DisableFilter__17CCameraFilterPassFf
/* 800EA5C8 000E7528  48 00 00 28 */	b lbl_800EA5F0
lbl_800EA5CC:
/* 800EA5CC 000E752C  88 1C 00 30 */	lbz r0, 0x30(r28)
/* 800EA5D0 000E7530  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 800EA5D4 000E7534  41 82 00 1C */	beq lbl_800EA5F0
/* 800EA5D8 000E7538  80 1C 00 3C */	lwz r0, 0x3c(r28)
/* 800EA5DC 000E753C  C0 22 90 C8 */	lfs f1, lbl_805AADE8@sda21(r2)
/* 800EA5E0 000E7540  1C 00 00 2C */	mulli r0, r0, 0x2c
/* 800EA5E4 000E7544  7C 7F 02 14 */	add r3, r31, r0
/* 800EA5E8 000E7548  38 63 0B 88 */	addi r3, r3, 0xb88
/* 800EA5EC 000E754C  48 00 2D 7D */	bl DisableFilter__17CCameraFilterPassFf
lbl_800EA5F0:
/* 800EA5F0 000E7550  A0 1E 00 00 */	lhz r0, 0(r30)
/* 800EA5F4 000E7554  7F 83 E3 78 */	mr r3, r28
/* 800EA5F8 000E7558  7F A4 EB 78 */	mr r4, r29
/* 800EA5FC 000E755C  7F E6 FB 78 */	mr r6, r31
/* 800EA600 000E7560  B0 01 00 08 */	sth r0, 8(r1)
/* 800EA604 000E7564  38 A1 00 08 */	addi r5, r1, 8
/* 800EA608 000E7568  4B F6 6B 55 */	bl AcceptScriptMsg__7CEntityF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 800EA60C 000E756C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800EA610 000E7570  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800EA614 000E7574  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800EA618 000E7578  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800EA61C 000E757C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800EA620 000E7580  7C 08 03 A6 */	mtlr r0
/* 800EA624 000E7584  38 21 00 20 */	addi r1, r1, 0x20
/* 800EA628 000E7588  4E 80 00 20 */	blr

.global __dt__27CScriptCameraFilterKeyframeFv
__dt__27CScriptCameraFilterKeyframeFv:
/* 800EA62C 000E758C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EA630 000E7590  7C 08 02 A6 */	mflr r0
/* 800EA634 000E7594  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EA638 000E7598  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800EA63C 000E759C  7C 9F 23 78 */	mr r31, r4
/* 800EA640 000E75A0  93 C1 00 08 */	stw r30, 8(r1)
/* 800EA644 000E75A4  7C 7E 1B 79 */	or. r30, r3, r3
/* 800EA648 000E75A8  41 82 00 28 */	beq lbl_800EA670
/* 800EA64C 000E75AC  3C A0 80 3E */	lis r5, lbl_803DFC80@ha
/* 800EA650 000E75B0  38 80 00 00 */	li r4, 0
/* 800EA654 000E75B4  38 05 FC 80 */	addi r0, r5, lbl_803DFC80@l
/* 800EA658 000E75B8  90 1E 00 00 */	stw r0, 0(r30)
/* 800EA65C 000E75BC  4B F6 6C 19 */	bl __dt__7CEntityFv
/* 800EA660 000E75C0  7F E0 07 35 */	extsh. r0, r31
/* 800EA664 000E75C4  40 81 00 0C */	ble lbl_800EA670
/* 800EA668 000E75C8  7F C3 F3 78 */	mr r3, r30
/* 800EA66C 000E75CC  48 22 B2 C5 */	bl Free__7CMemoryFPCv
lbl_800EA670:
/* 800EA670 000E75D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EA674 000E75D4  7F C3 F3 78 */	mr r3, r30
/* 800EA678 000E75D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800EA67C 000E75DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 800EA680 000E75E0  7C 08 03 A6 */	mtlr r0
/* 800EA684 000E75E4  38 21 00 10 */	addi r1, r1, 0x10
/* 800EA688 000E75E8  4E 80 00 20 */	blr

.global "__ct__27CScriptCameraFilterKeyframeF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoUiUiUiUiffffffUib"
"__ct__27CScriptCameraFilterKeyframeF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoUiUiUiUiffffffUib":
/* 800EA68C 000E75EC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800EA690 000E75F0  7C 08 02 A6 */	mflr r0
/* 800EA694 000E75F4  90 01 00 64 */	stw r0, 0x64(r1)
/* 800EA698 000E75F8  39 61 00 60 */	addi r11, r1, 0x60
/* 800EA69C 000E75FC  48 29 F3 45 */	bl _savefpr_26
/* 800EA6A0 000E7600  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 800EA6A4 000E7604  A0 04 00 00 */	lhz r0, 0(r4)
/* 800EA6A8 000E7608  7C AB 2B 78 */	mr r11, r5
/* 800EA6AC 000E760C  FF 40 08 90 */	fmr f26, f1
/* 800EA6B0 000E7610  88 81 00 6F */	lbz r4, 0x6f(r1)
/* 800EA6B4 000E7614  FF 60 10 90 */	fmr f27, f2
/* 800EA6B8 000E7618  B0 01 00 08 */	sth r0, 8(r1)
/* 800EA6BC 000E761C  7C FB 3B 78 */	mr r27, r7
/* 800EA6C0 000E7620  7C C5 33 78 */	mr r5, r6
/* 800EA6C4 000E7624  7C 86 23 78 */	mr r6, r4
/* 800EA6C8 000E7628  FF 80 18 90 */	fmr f28, f3
/* 800EA6CC 000E762C  FF A0 20 90 */	fmr f29, f4
/* 800EA6D0 000E7630  83 E1 00 68 */	lwz r31, 0x68(r1)
/* 800EA6D4 000E7634  FF C0 28 90 */	fmr f30, f5
/* 800EA6D8 000E7638  7C 7A 1B 78 */	mr r26, r3
/* 800EA6DC 000E763C  FF E0 30 90 */	fmr f31, f6
/* 800EA6E0 000E7640  7D 1C 43 78 */	mr r28, r8
/* 800EA6E4 000E7644  7D 3D 4B 78 */	mr r29, r9
/* 800EA6E8 000E7648  7D 5E 53 78 */	mr r30, r10
/* 800EA6EC 000E764C  7D 67 5B 78 */	mr r7, r11
/* 800EA6F0 000E7650  38 81 00 08 */	addi r4, r1, 8
/* 800EA6F4 000E7654  4B F6 6C 31 */	bl "__ct__7CEntityF9TUniqueIdRC11CEntityInfobRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 800EA6F8 000E7658  3C 60 80 3E */	lis r3, lbl_803DFC80@ha
/* 800EA6FC 000E765C  FC 20 D0 90 */	fmr f1, f26
/* 800EA700 000E7660  38 03 FC 80 */	addi r0, r3, lbl_803DFC80@l
/* 800EA704 000E7664  FC 40 D8 90 */	fmr f2, f27
/* 800EA708 000E7668  90 1A 00 00 */	stw r0, 0(r26)
/* 800EA70C 000E766C  FC 60 E0 90 */	fmr f3, f28
/* 800EA710 000E7670  FC 80 E8 90 */	fmr f4, f29
/* 800EA714 000E7674  93 7A 00 34 */	stw r27, 0x34(r26)
/* 800EA718 000E7678  38 7A 00 44 */	addi r3, r26, 0x44
/* 800EA71C 000E767C  93 9A 00 38 */	stw r28, 0x38(r26)
/* 800EA720 000E7680  93 BA 00 3C */	stw r29, 0x3c(r26)
/* 800EA724 000E7684  93 DA 00 40 */	stw r30, 0x40(r26)
/* 800EA728 000E7688  48 27 8C C5 */	bl __ct__6CColorFffff
/* 800EA72C 000E768C  D3 DA 00 48 */	stfs f30, 0x48(r26)
/* 800EA730 000E7690  7F 43 D3 78 */	mr r3, r26
/* 800EA734 000E7694  D3 FA 00 4C */	stfs f31, 0x4c(r26)
/* 800EA738 000E7698  93 FA 00 50 */	stw r31, 0x50(r26)
/* 800EA73C 000E769C  39 61 00 60 */	addi r11, r1, 0x60
/* 800EA740 000E76A0  48 29 F2 ED */	bl _restfpr_26
/* 800EA744 000E76A4  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 800EA748 000E76A8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800EA74C 000E76AC  7C 08 03 A6 */	mtlr r0
/* 800EA750 000E76B0  38 21 00 60 */	addi r1, r1, 0x60
/* 800EA754 000E76B4  4E 80 00 20 */	blr
