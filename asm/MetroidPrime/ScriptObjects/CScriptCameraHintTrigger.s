.include "macros.inc"

.section .data
.balign 8

.global __vt__24CScriptCameraHintTrigger
__vt__24CScriptCameraHintTrigger:
	# ROM: 0x3E5C40
	.4byte 0
	.4byte 0
	.4byte __dt__24CScriptCameraHintTriggerFv
	.4byte Accept__24CScriptCameraHintTriggerFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__24CScriptCameraHintTriggerFfR13CStateManager
	.4byte AcceptScriptMsg__6CActorF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFUc
	.4byte PreRender__6CActorFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__6CActorCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__6CActorCFRC13CStateManager
	.4byte CanRenderUnsorted__6CActorCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__6CActorFR13CStateManager
	.4byte GetDamageVulnerability__6CActorCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__24CScriptCameraHintTriggerCFv
	.4byte Touch__24CScriptCameraHintTriggerFR6CActorR13CStateManager
	.4byte GetOrbitPosition__6CActorCFRC13CStateManager
	.4byte GetAimPosition__6CActorCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__6CActorCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__6CActorFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC13CStateManager
	.4byte DoUserAnimEvent__6CActorFR13CStateManagerRC13CInt32POINode14EUserEventTypef
	.4byte 0

.section .sdata
.balign 8

.global lbl_805A82C8
lbl_805A82C8:
	# ROM: 0x3F5C68
	.4byte 0x00000022
	.4byte 0

.section .text, "ax"

.global __dt__24CScriptCameraHintTriggerFv
__dt__24CScriptCameraHintTriggerFv:
/* 8024B39C 002482FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024B3A0 00248300  7C 08 02 A6 */	mflr r0
/* 8024B3A4 00248304  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024B3A8 00248308  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8024B3AC 0024830C  7C 9F 23 78 */	mr r31, r4
/* 8024B3B0 00248310  93 C1 00 08 */	stw r30, 8(r1)
/* 8024B3B4 00248314  7C 7E 1B 79 */	or. r30, r3, r3
/* 8024B3B8 00248318  41 82 00 28 */	beq lbl_8024B3E0
/* 8024B3BC 0024831C  3C A0 80 3F */	lis r5, __vt__24CScriptCameraHintTrigger@ha
/* 8024B3C0 00248320  38 80 00 00 */	li r4, 0
/* 8024B3C4 00248324  38 05 8C 40 */	addi r0, r5, __vt__24CScriptCameraHintTrigger@l
/* 8024B3C8 00248328  90 1E 00 00 */	stw r0, 0(r30)
/* 8024B3CC 0024832C  4B E0 A3 25 */	bl __dt__6CActorFv
/* 8024B3D0 00248330  7F E0 07 35 */	extsh. r0, r31
/* 8024B3D4 00248334  40 81 00 0C */	ble lbl_8024B3E0
/* 8024B3D8 00248338  7F C3 F3 78 */	mr r3, r30
/* 8024B3DC 0024833C  48 0C A5 55 */	bl Free__7CMemoryFPCv
lbl_8024B3E0:
/* 8024B3E0 00248340  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024B3E4 00248344  7F C3 F3 78 */	mr r3, r30
/* 8024B3E8 00248348  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8024B3EC 0024834C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8024B3F0 00248350  7C 08 03 A6 */	mtlr r0
/* 8024B3F4 00248354  38 21 00 10 */	addi r1, r1, 0x10
/* 8024B3F8 00248358  4E 80 00 20 */	blr

.global Think__24CScriptCameraHintTriggerFfR13CStateManager
Think__24CScriptCameraHintTriggerFfR13CStateManager:
/* 8024B3FC 0024835C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8024B400 00248360  7C 08 02 A6 */	mflr r0
/* 8024B404 00248364  90 01 00 24 */	stw r0, 0x24(r1)
/* 8024B408 00248368  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8024B40C 0024836C  7C 9F 23 78 */	mr r31, r4
/* 8024B410 00248370  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8024B414 00248374  7C 7E 1B 78 */	mr r30, r3
/* 8024B418 00248378  88 03 00 30 */	lbz r0, 0x30(r3)
/* 8024B41C 0024837C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8024B420 00248380  41 82 00 E8 */	beq lbl_8024B508
/* 8024B424 00248384  88 9E 01 30 */	lbz r4, 0x130(r30)
/* 8024B428 00248388  54 80 DF FF */	rlwinm. r0, r4, 0x1b, 0x1f, 0x1f
/* 8024B42C 0024838C  41 82 00 50 */	beq lbl_8024B47C
/* 8024B430 00248390  54 80 E7 FF */	rlwinm. r0, r4, 0x1c, 0x1f, 0x1f
/* 8024B434 00248394  40 82 00 48 */	bne lbl_8024B47C
/* 8024B438 00248398  38 00 00 01 */	li r0, 1
/* 8024B43C 0024839C  7F E5 FB 78 */	mr r5, r31
/* 8024B440 002483A0  50 04 26 F6 */	rlwimi r4, r0, 4, 0x1b, 0x1b
/* 8024B444 002483A4  38 C0 FF FF */	li r6, -1
/* 8024B448 002483A8  98 9E 01 30 */	stb r4, 0x130(r30)
/* 8024B44C 002483AC  38 80 00 03 */	li r4, 3
/* 8024B450 002483B0  4B E0 5C 71 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 8024B454 002483B4  88 1E 01 30 */	lbz r0, 0x130(r30)
/* 8024B458 002483B8  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8024B45C 002483BC  41 82 00 20 */	beq lbl_8024B47C
/* 8024B460 002483C0  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8024B464 002483C4  7F E3 FB 78 */	mr r3, r31
/* 8024B468 002483C8  7F C4 F3 78 */	mr r4, r30
/* 8024B46C 002483CC  38 A1 00 0C */	addi r5, r1, 0xc
/* 8024B470 002483D0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8024B474 002483D4  38 C0 00 04 */	li r6, 4
/* 8024B478 002483D8  4B DF 8A 59 */	bl SendScriptMsg__13CStateManagerFP7CEntity9TUniqueId20EScriptObjectMessage
lbl_8024B47C:
/* 8024B47C 002483DC  88 9E 01 30 */	lbz r4, 0x130(r30)
/* 8024B480 002483E0  54 80 DF FF */	rlwinm. r0, r4, 0x1b, 0x1f, 0x1f
/* 8024B484 002483E4  40 82 00 54 */	bne lbl_8024B4D8
/* 8024B488 002483E8  54 80 E7 FF */	rlwinm. r0, r4, 0x1c, 0x1f, 0x1f
/* 8024B48C 002483EC  41 82 00 4C */	beq lbl_8024B4D8
/* 8024B490 002483F0  38 00 00 00 */	li r0, 0
/* 8024B494 002483F4  7F C3 F3 78 */	mr r3, r30
/* 8024B498 002483F8  50 04 26 F6 */	rlwimi r4, r0, 4, 0x1b, 0x1b
/* 8024B49C 002483FC  7F E5 FB 78 */	mr r5, r31
/* 8024B4A0 00248400  98 9E 01 30 */	stb r4, 0x130(r30)
/* 8024B4A4 00248404  38 80 00 04 */	li r4, 4
/* 8024B4A8 00248408  38 C0 FF FF */	li r6, -1
/* 8024B4AC 0024840C  4B E0 5C 15 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 8024B4B0 00248410  88 1E 01 30 */	lbz r0, 0x130(r30)
/* 8024B4B4 00248414  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8024B4B8 00248418  41 82 00 20 */	beq lbl_8024B4D8
/* 8024B4BC 0024841C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8024B4C0 00248420  7F E3 FB 78 */	mr r3, r31
/* 8024B4C4 00248424  7F C4 F3 78 */	mr r4, r30
/* 8024B4C8 00248428  38 A1 00 08 */	addi r5, r1, 8
/* 8024B4CC 0024842C  B0 01 00 08 */	sth r0, 8(r1)
/* 8024B4D0 00248430  38 C0 00 04 */	li r6, 4
/* 8024B4D4 00248434  4B DF 89 FD */	bl SendScriptMsg__13CStateManagerFP7CEntity9TUniqueId20EScriptObjectMessage
lbl_8024B4D8:
/* 8024B4D8 00248438  88 1E 01 30 */	lbz r0, 0x130(r30)
/* 8024B4DC 0024843C  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8024B4E0 00248440  41 82 00 18 */	beq lbl_8024B4F8
/* 8024B4E4 00248444  7F C3 F3 78 */	mr r3, r30
/* 8024B4E8 00248448  7F E5 FB 78 */	mr r5, r31
/* 8024B4EC 0024844C  38 80 00 06 */	li r4, 6
/* 8024B4F0 00248450  38 C0 FF FF */	li r6, -1
/* 8024B4F4 00248454  4B E0 5B CD */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
lbl_8024B4F8:
/* 8024B4F8 00248458  88 1E 01 30 */	lbz r0, 0x130(r30)
/* 8024B4FC 0024845C  38 60 00 00 */	li r3, 0
/* 8024B500 00248460  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8024B504 00248464  98 1E 01 30 */	stb r0, 0x130(r30)
lbl_8024B508:
/* 8024B508 00248468  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8024B50C 0024846C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8024B510 00248470  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8024B514 00248474  7C 08 03 A6 */	mtlr r0
/* 8024B518 00248478  38 21 00 20 */	addi r1, r1, 0x20
/* 8024B51C 0024847C  4E 80 00 20 */	blr

.global Touch__24CScriptCameraHintTriggerFR6CActorR13CStateManager
Touch__24CScriptCameraHintTriggerFR6CActorR13CStateManager:
/* 8024B520 00248480  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8024B524 00248484  7C 08 02 A6 */	mflr r0
/* 8024B528 00248488  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8024B52C 0024848C  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 8024B530 00248490  7C 9F 23 78 */	mr r31, r4
/* 8024B534 00248494  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 8024B538 00248498  7C 7E 1B 78 */	mr r30, r3
/* 8024B53C 0024849C  38 61 00 08 */	addi r3, r1, 8
/* 8024B540 002484A0  4B E6 0E C1 */	bl "__ct__20TCastToPtr<7CPlayer>FR7CEntity"
/* 8024B544 002484A4  80 03 00 04 */	lwz r0, 4(r3)
/* 8024B548 002484A8  28 00 00 00 */	cmplwi r0, 0
/* 8024B54C 002484AC  41 82 00 D0 */	beq lbl_8024B61C
/* 8024B550 002484B0  7F E4 FB 78 */	mr r4, r31
/* 8024B554 002484B4  38 61 00 10 */	addi r3, r1, 0x10
/* 8024B558 002484B8  81 9F 00 00 */	lwz r12, 0(r31)
/* 8024B55C 002484BC  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8024B560 002484C0  7D 89 03 A6 */	mtctr r12
/* 8024B564 002484C4  4E 80 04 21 */	bctrl
/* 8024B568 002484C8  88 01 00 28 */	lbz r0, 0x28(r1)
/* 8024B56C 002484CC  28 00 00 00 */	cmplwi r0, 0
/* 8024B570 002484D0  98 01 00 44 */	stb r0, 0x44(r1)
/* 8024B574 002484D4  41 82 00 3C */	beq lbl_8024B5B0
/* 8024B578 002484D8  34 61 00 2C */	addic. r3, r1, 0x2c
/* 8024B57C 002484DC  41 82 00 34 */	beq lbl_8024B5B0
/* 8024B580 002484E0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8024B584 002484E4  D0 03 00 00 */	stfs f0, 0(r3)
/* 8024B588 002484E8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8024B58C 002484EC  D0 03 00 04 */	stfs f0, 4(r3)
/* 8024B590 002484F0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8024B594 002484F4  D0 03 00 08 */	stfs f0, 8(r3)
/* 8024B598 002484F8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8024B59C 002484FC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8024B5A0 00248500  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8024B5A4 00248504  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8024B5A8 00248508  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8024B5AC 0024850C  D0 03 00 14 */	stfs f0, 0x14(r3)
lbl_8024B5B0:
/* 8024B5B0 00248510  88 01 00 44 */	lbz r0, 0x44(r1)
/* 8024B5B4 00248514  38 60 00 00 */	li r3, 0
/* 8024B5B8 00248518  98 61 00 28 */	stb r3, 0x28(r1)
/* 8024B5BC 0024851C  28 00 00 00 */	cmplwi r0, 0
/* 8024B5C0 00248520  41 82 00 54 */	beq lbl_8024B614
/* 8024B5C4 00248524  3C 80 80 5A */	lis r4, sIdentity__12CTransform4f@ha
/* 8024B5C8 00248528  38 61 00 48 */	addi r3, r1, 0x48
/* 8024B5CC 0024852C  38 A4 66 70 */	addi r5, r4, sIdentity__12CTransform4f@l
/* 8024B5D0 00248530  38 81 00 2C */	addi r4, r1, 0x2c
/* 8024B5D4 00248534  48 08 A7 49 */	bl FromAABox__6COBBoxFRC6CAABoxRC12CTransform4f
/* 8024B5D8 00248538  38 61 00 84 */	addi r3, r1, 0x84
/* 8024B5DC 0024853C  38 81 00 48 */	addi r4, r1, 0x48
/* 8024B5E0 00248540  48 0C 75 95 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8024B5E4 00248544  C0 41 00 78 */	lfs f2, 0x78(r1)
/* 8024B5E8 00248548  38 7E 00 E8 */	addi r3, r30, 0xe8
/* 8024B5EC 0024854C  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 8024B5F0 00248550  38 81 00 84 */	addi r4, r1, 0x84
/* 8024B5F4 00248554  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 8024B5F8 00248558  D0 41 00 B4 */	stfs f2, 0xb4(r1)
/* 8024B5FC 0024855C  D0 21 00 B8 */	stfs f1, 0xb8(r1)
/* 8024B600 00248560  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8024B604 00248564  48 08 9E 91 */	bl OBBIntersectsBox__6COBBoxCFRC6COBBox
/* 8024B608 00248568  88 1E 01 30 */	lbz r0, 0x130(r30)
/* 8024B60C 0024856C  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8024B610 00248570  98 1E 01 30 */	stb r0, 0x130(r30)
lbl_8024B614:
/* 8024B614 00248574  38 00 00 00 */	li r0, 0
/* 8024B618 00248578  98 01 00 44 */	stb r0, 0x44(r1)
lbl_8024B61C:
/* 8024B61C 0024857C  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 8024B620 00248580  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 8024B624 00248584  83 C1 00 C8 */	lwz r30, 0xc8(r1)
/* 8024B628 00248588  7C 08 03 A6 */	mtlr r0
/* 8024B62C 0024858C  38 21 00 D0 */	addi r1, r1, 0xd0
/* 8024B630 00248590  4E 80 00 20 */	blr

.global GetTouchBounds__24CScriptCameraHintTriggerCFv
GetTouchBounds__24CScriptCameraHintTriggerCFv:
/* 8024B634 00248594  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8024B638 00248598  7C 08 02 A6 */	mflr r0
/* 8024B63C 0024859C  3C A0 80 5A */	lis r5, sIdentity__12CTransform4f@ha
/* 8024B640 002485A0  38 84 00 E8 */	addi r4, r4, 0xe8
/* 8024B644 002485A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8024B648 002485A8  38 A5 66 70 */	addi r5, r5, sIdentity__12CTransform4f@l
/* 8024B64C 002485AC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8024B650 002485B0  7C 7F 1B 78 */	mr r31, r3
/* 8024B654 002485B4  38 61 00 08 */	addi r3, r1, 8
/* 8024B658 002485B8  48 08 A7 81 */	bl CalculateAABox__6COBBoxCFRC12CTransform4f
/* 8024B65C 002485BC  38 00 00 01 */	li r0, 1
/* 8024B660 002485C0  28 1F 00 00 */	cmplwi r31, 0
/* 8024B664 002485C4  98 1F 00 18 */	stb r0, 0x18(r31)
/* 8024B668 002485C8  41 82 00 34 */	beq lbl_8024B69C
/* 8024B66C 002485CC  C0 01 00 08 */	lfs f0, 8(r1)
/* 8024B670 002485D0  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8024B674 002485D4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8024B678 002485D8  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8024B67C 002485DC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8024B680 002485E0  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8024B684 002485E4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8024B688 002485E8  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8024B68C 002485EC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8024B690 002485F0  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8024B694 002485F4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8024B698 002485F8  D0 1F 00 14 */	stfs f0, 0x14(r31)
lbl_8024B69C:
/* 8024B69C 002485FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8024B6A0 00248600  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8024B6A4 00248604  7C 08 03 A6 */	mtlr r0
/* 8024B6A8 00248608  38 21 00 30 */	addi r1, r1, 0x30
/* 8024B6AC 0024860C  4E 80 00 20 */	blr

.global Accept__24CScriptCameraHintTriggerFR8IVisitor
Accept__24CScriptCameraHintTriggerFR8IVisitor:
/* 8024B6B0 00248610  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024B6B4 00248614  7C 08 02 A6 */	mflr r0
/* 8024B6B8 00248618  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024B6BC 0024861C  7C 60 1B 78 */	mr r0, r3
/* 8024B6C0 00248620  7C 83 23 78 */	mr r3, r4
/* 8024B6C4 00248624  81 84 00 00 */	lwz r12, 0(r4)
/* 8024B6C8 00248628  7C 04 03 78 */	mr r4, r0
/* 8024B6CC 0024862C  81 8C 00 08 */	lwz r12, 8(r12)
/* 8024B6D0 00248630  7D 89 03 A6 */	mtctr r12
/* 8024B6D4 00248634  4E 80 04 21 */	bctrl
/* 8024B6D8 00248638  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024B6DC 0024863C  7C 08 03 A6 */	mtlr r0
/* 8024B6E0 00248640  38 21 00 10 */	addi r1, r1, 0x10
/* 8024B6E4 00248644  4E 80 00 20 */	blr

.global "__ct__24CScriptCameraHintTriggerF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC9CVector3fRC12CTransform4fbb"
"__ct__24CScriptCameraHintTriggerF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC9CVector3fRC12CTransform4fbb":
/* 8024B6E8 00248648  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 8024B6EC 0024864C  7C 08 02 A6 */	mflr r0
/* 8024B6F0 00248650  90 01 01 04 */	stw r0, 0x104(r1)
/* 8024B6F4 00248654  BE E1 00 DC */	stmw r23, 0xdc(r1)
/* 8024B6F8 00248658  7C 78 1B 78 */	mr r24, r3
/* 8024B6FC 0024865C  8B E1 01 0B */	lbz r31, 0x10b(r1)
/* 8024B700 00248660  7C 97 23 78 */	mr r23, r4
/* 8024B704 00248664  7C B9 2B 78 */	mr r25, r5
/* 8024B708 00248668  7C DA 33 78 */	mr r26, r6
/* 8024B70C 0024866C  7C FB 3B 78 */	mr r27, r7
/* 8024B710 00248670  7D 1C 43 78 */	mr r28, r8
/* 8024B714 00248674  7D 3D 4B 78 */	mr r29, r9
/* 8024B718 00248678  7D 5E 53 78 */	mr r30, r10
/* 8024B71C 0024867C  38 61 00 88 */	addi r3, r1, 0x88
/* 8024B720 00248680  4B DE F0 85 */	bl CModelDataNull__10CModelDataFv
/* 8024B724 00248684  38 61 00 20 */	addi r3, r1, 0x20
/* 8024B728 00248688  4B DC F7 11 */	bl None__16CActorParametersFv
/* 8024B72C 0024868C  A0 8D A3 8C */	lhz r4, kInvalidUniqueId@sda21(r13)
/* 8024B730 00248690  38 00 00 00 */	li r0, 0
/* 8024B734 00248694  80 AD 97 08 */	lwz r5, lbl_805A82C8@sda21(r13)
/* 8024B738 00248698  38 60 00 00 */	li r3, 0
/* 8024B73C 0024869C  B0 81 00 10 */	sth r4, 0x10(r1)
/* 8024B740 002486A0  38 80 00 01 */	li r4, 1
/* 8024B744 002486A4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8024B748 002486A8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8024B74C 002486AC  48 13 E7 A9 */	bl __shl2i
/* 8024B750 002486B0  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 8024B754 002486B4  39 61 00 20 */	addi r11, r1, 0x20
/* 8024B758 002486B8  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 8024B75C 002486BC  38 01 00 10 */	addi r0, r1, 0x10
/* 8024B760 002486C0  7C A3 1B 78 */	or r3, r5, r3
/* 8024B764 002486C4  A1 37 00 00 */	lhz r9, 0(r23)
/* 8024B768 002486C8  7C C4 23 78 */	or r4, r6, r4
/* 8024B76C 002486CC  90 61 00 18 */	stw r3, 0x18(r1)
/* 8024B770 002486D0  7F 03 C3 78 */	mr r3, r24
/* 8024B774 002486D4  7F 25 CB 78 */	mr r5, r25
/* 8024B778 002486D8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8024B77C 002486DC  7F 46 D3 78 */	mr r6, r26
/* 8024B780 002486E0  7F 67 DB 78 */	mr r7, r27
/* 8024B784 002486E4  7F A8 EB 78 */	mr r8, r29
/* 8024B788 002486E8  B1 21 00 14 */	sth r9, 0x14(r1)
/* 8024B78C 002486EC  38 81 00 14 */	addi r4, r1, 0x14
/* 8024B790 002486F0  39 21 00 88 */	addi r9, r1, 0x88
/* 8024B794 002486F4  39 41 00 18 */	addi r10, r1, 0x18
/* 8024B798 002486F8  91 61 00 08 */	stw r11, 8(r1)
/* 8024B79C 002486FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8024B7A0 00248700  4B E0 A0 81 */	bl "__ct__6CActorF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC13CMaterialListRC16CActorParameters9TUniqueId"
/* 8024B7A4 00248704  38 61 00 20 */	addi r3, r1, 0x20
/* 8024B7A8 00248708  38 80 FF FF */	li r4, -1
/* 8024B7AC 0024870C  4B EB AE 5D */	bl __dt__16CLightParametersFv
/* 8024B7B0 00248710  38 61 00 88 */	addi r3, r1, 0x88
/* 8024B7B4 00248714  38 80 FF FF */	li r4, -1
/* 8024B7B8 00248718  4B EC B2 95 */	bl __dt__10CModelDataFv
/* 8024B7BC 0024871C  3C 60 80 3F */	lis r3, __vt__24CScriptCameraHintTrigger@ha
/* 8024B7C0 00248720  7F A4 EB 78 */	mr r4, r29
/* 8024B7C4 00248724  38 03 8C 40 */	addi r0, r3, __vt__24CScriptCameraHintTrigger@l
/* 8024B7C8 00248728  7F 85 E3 78 */	mr r5, r28
/* 8024B7CC 0024872C  90 18 00 00 */	stw r0, 0(r24)
/* 8024B7D0 00248730  38 78 00 E8 */	addi r3, r24, 0xe8
/* 8024B7D4 00248734  48 08 A7 C1 */	bl __ct__6COBBoxFRC12CTransform4fRC9CVector3f
/* 8024B7D8 00248738  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8024B7DC 0024873C  38 80 00 00 */	li r4, 0
/* 8024B7E0 00248740  7F 03 C3 78 */	mr r3, r24
/* 8024B7E4 00248744  D0 18 01 24 */	stfs f0, 0x124(r24)
/* 8024B7E8 00248748  C0 1C 00 04 */	lfs f0, 4(r28)
/* 8024B7EC 0024874C  D0 18 01 28 */	stfs f0, 0x128(r24)
/* 8024B7F0 00248750  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8024B7F4 00248754  D0 18 01 2C */	stfs f0, 0x12c(r24)
/* 8024B7F8 00248758  88 18 01 30 */	lbz r0, 0x130(r24)
/* 8024B7FC 0024875C  53 C0 3E 30 */	rlwimi r0, r30, 7, 0x18, 0x18
/* 8024B800 00248760  98 18 01 30 */	stb r0, 0x130(r24)
/* 8024B804 00248764  88 18 01 30 */	lbz r0, 0x130(r24)
/* 8024B808 00248768  53 E0 36 72 */	rlwimi r0, r31, 6, 0x19, 0x19
/* 8024B80C 0024876C  98 18 01 30 */	stb r0, 0x130(r24)
/* 8024B810 00248770  88 18 01 30 */	lbz r0, 0x130(r24)
/* 8024B814 00248774  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 8024B818 00248778  98 18 01 30 */	stb r0, 0x130(r24)
/* 8024B81C 0024877C  88 18 01 30 */	lbz r0, 0x130(r24)
/* 8024B820 00248780  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 8024B824 00248784  98 18 01 30 */	stb r0, 0x130(r24)
/* 8024B828 00248788  BA E1 00 DC */	lmw r23, 0xdc(r1)
/* 8024B82C 0024878C  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8024B830 00248790  7C 08 03 A6 */	mtlr r0
/* 8024B834 00248794  38 21 01 00 */	addi r1, r1, 0x100
/* 8024B838 00248798  4E 80 00 20 */	blr
