.include "macros.inc"

.section .data
.balign 8

.global lbl_803E0628
lbl_803E0628:
	# ROM: 0x3DD628
	.4byte 0
	.4byte 0
	.4byte __dt__13CPhysicsActorFv
	.4byte 0
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__7CEntityFfR13CStateManager
	.4byte AcceptScriptMsg__6CActorF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__6CActorFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__6CActorCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__13CPhysicsActorCFRC13CStateManager
	.4byte CanRenderUnsorted__6CActorCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__6CActorFR13CStateManager
	.4byte GetDamageVulnerability__6CActorCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__6CActorCFv
	.4byte Touch__6CActorFR6CActorR13CStateManager
	.4byte GetOrbitPosition__13CPhysicsActorCFRC13CStateManager
	.4byte GetAimPosition__13CPhysicsActorCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__6CActorCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__6CActorFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC12CTransform4f
	.4byte DoUserAnimEvent__6CActorFR13CStateManagerRC13CInt32POINode14EUserEventType
	.4byte GetCollisionPrimitive__13CPhysicsActorCFv
	.4byte GetPrimitiveTransform__13CPhysicsActorCFv
	.4byte CollidedWith__13CPhysicsActorFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
	.4byte GetStepDownHeight__13CPhysicsActorCFv
	.4byte GetStepUpHeight__13CPhysicsActorCFv
	.4byte GetWeight__13CPhysicsActorCFv
	.4byte 0

.section .sdata
.balign 8

.global lbl_805A7630
lbl_805A7630:
	# ROM: 0x3F4FD0
	.4byte 0

.global lbl_805A7634
lbl_805A7634:
	# ROM: 0x3F4FD4
	.4byte 0

.section .sdata2, "a"
.balign 8

.global skGravityConstant__13CPhysicsActor
skGravityConstant__13CPhysicsActor:
	# ROM: 0x3F7C60
	.float 24.525002

.global lbl_805AB3C4
lbl_805AB3C4:
	# ROM: 0x3F7C64
	.float 0.0

.global lbl_805AB3C8
lbl_805AB3C8:
	# ROM: 0x3F7C68
	.float 24.525002

.global lbl_805AB3CC
lbl_805AB3CC:
	# ROM: 0x3F7C6C
	.float 0.5

.global lbl_805AB3D0
lbl_805AB3D0:
	# ROM: 0x3F7C70
	.float 1.0

.global lbl_805AB3D4
lbl_805AB3D4:
	# ROM: 0x3F7C74
	.float 1.5

.global lbl_805AB3D8
lbl_805AB3D8:
	# ROM: 0x3F7C78
	.float 0.16666667

.global lbl_805AB3DC
lbl_805AB3DC:
	# ROM: 0x3F7C7C
	.float 0.99999976

.global lbl_805AB3E0
lbl_805AB3E0:
	# ROM: 0x3F7C80
	.float 2.0

.global lbl_805AB3E4
lbl_805AB3E4:
	# ROM: 0x3F7C84
	.float 1.0E-4

.global lbl_805AB3E8
lbl_805AB3E8:
	# ROM: 0x3F7C88
	.float 1000000.0
	.4byte 0

.section .text, "ax"

.global GetMaximumCollisionVelocity__13CPhysicsActorCFv
GetMaximumCollisionVelocity__13CPhysicsActorCFv:
/* 8011A4B8 00117418  C0 23 02 38 */	lfs f1, 0x238(r3)
/* 8011A4BC 0011741C  4E 80 00 20 */	blr

.global SetMaximumCollisionVelocity__13CPhysicsActorFf
SetMaximumCollisionVelocity__13CPhysicsActorFf:
/* 8011A4C0 00117420  D0 23 02 38 */	stfs f1, 0x238(r3)
/* 8011A4C4 00117424  4E 80 00 20 */	blr

.global GetCollisionAccuracyModifier__13CPhysicsActorCFv
GetCollisionAccuracyModifier__13CPhysicsActorCFv:
/* 8011A4C8 00117428  C0 23 02 48 */	lfs f1, 0x248(r3)
/* 8011A4CC 0011742C  4E 80 00 20 */	blr

.global SetCollisionAccuracyModifier__13CPhysicsActorFf
SetCollisionAccuracyModifier__13CPhysicsActorFf:
/* 8011A4D0 00117430  D0 23 02 48 */	stfs f1, 0x248(r3)
/* 8011A4D4 00117434  4E 80 00 20 */	blr

.global GetCoefficientOfRestitutionModifier__13CPhysicsActorCFv
GetCoefficientOfRestitutionModifier__13CPhysicsActorCFv:
/* 8011A4D8 00117438  C0 23 02 44 */	lfs f1, 0x244(r3)
/* 8011A4DC 0011743C  4E 80 00 20 */	blr

.global SetCoefficientOfRestitutionModifier__13CPhysicsActorFf
SetCoefficientOfRestitutionModifier__13CPhysicsActorFf:
/* 8011A4E0 00117440  D0 23 02 44 */	stfs f1, 0x244(r3)
/* 8011A4E4 00117444  4E 80 00 20 */	blr

.global Render__13CPhysicsActorCFRC13CStateManager
Render__13CPhysicsActorCFRC13CStateManager:
/* 8011A4E8 00117448  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011A4EC 0011744C  7C 08 02 A6 */	mflr r0
/* 8011A4F0 00117450  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011A4F4 00117454  4B F3 A2 B1 */	bl Render__6CActorCFRC13CStateManager
/* 8011A4F8 00117458  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011A4FC 0011745C  7C 08 03 A6 */	mtlr r0
/* 8011A500 00117460  38 21 00 10 */	addi r1, r1, 0x10
/* 8011A504 00117464  4E 80 00 20 */	blr

.global GetAimPosition__13CPhysicsActorCFRC13CStateManagerf
GetAimPosition__13CPhysicsActorCFRC13CStateManagerf:
/* 8011A508 00117468  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8011A50C 0011746C  7C 08 02 A6 */	mflr r0
/* 8011A510 00117470  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8011A514 00117474  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 8011A518 00117478  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, qr0
/* 8011A51C 0011747C  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 8011A520 00117480  F3 C1 00 98 */	psq_st f30, 152(r1), 0, qr0
/* 8011A524 00117484  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 8011A528 00117488  F3 A1 00 88 */	psq_st f29, 136(r1), 0, qr0
/* 8011A52C 0011748C  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 8011A530 00117490  93 C1 00 78 */	stw r30, 0x78(r1)
/* 8011A534 00117494  C0 02 96 A4 */	lfs f0, lbl_805AB3C4@sda21(r2)
/* 8011A538 00117498  7C 7E 1B 78 */	mr r30, r3
/* 8011A53C 0011749C  7C 9F 23 78 */	mr r31, r4
/* 8011A540 001174A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8011A544 001174A4  40 81 00 58 */	ble lbl_8011A59C
/* 8011A548 001174A8  38 61 00 44 */	addi r3, r1, 0x44
/* 8011A54C 001174AC  48 00 17 65 */	bl PredictMotion__13CPhysicsActorCFf
/* 8011A550 001174B0  C3 E1 00 44 */	lfs f31, 0x44(r1)
/* 8011A554 001174B4  7F E4 FB 78 */	mr r4, r31
/* 8011A558 001174B8  C3 C1 00 48 */	lfs f30, 0x48(r1)
/* 8011A55C 001174BC  38 61 00 2C */	addi r3, r1, 0x2c
/* 8011A560 001174C0  C3 A1 00 4C */	lfs f29, 0x4c(r1)
/* 8011A564 001174C4  48 00 03 C9 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 8011A568 001174C8  38 61 00 08 */	addi r3, r1, 8
/* 8011A56C 001174CC  38 81 00 2C */	addi r4, r1, 0x2c
/* 8011A570 001174D0  48 21 D0 9D */	bl GetCenterPoint__6CAABoxCFv
/* 8011A574 001174D4  C0 01 00 08 */	lfs f0, 8(r1)
/* 8011A578 001174D8  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8011A57C 001174DC  EC 00 F8 2A */	fadds f0, f0, f31
/* 8011A580 001174E0  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8011A584 001174E4  EC 42 F0 2A */	fadds f2, f2, f30
/* 8011A588 001174E8  EC 21 E8 2A */	fadds f1, f1, f29
/* 8011A58C 001174EC  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8011A590 001174F0  D0 5E 00 04 */	stfs f2, 4(r30)
/* 8011A594 001174F4  D0 3E 00 08 */	stfs f1, 8(r30)
/* 8011A598 001174F8  48 00 00 18 */	b lbl_8011A5B0
lbl_8011A59C:
/* 8011A59C 001174FC  38 61 00 14 */	addi r3, r1, 0x14
/* 8011A5A0 00117500  48 00 03 8D */	bl GetBoundingBox__13CPhysicsActorCFv
/* 8011A5A4 00117504  7F C3 F3 78 */	mr r3, r30
/* 8011A5A8 00117508  38 81 00 14 */	addi r4, r1, 0x14
/* 8011A5AC 0011750C  48 21 D0 61 */	bl GetCenterPoint__6CAABoxCFv
lbl_8011A5B0:
/* 8011A5B0 00117510  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, qr0
/* 8011A5B4 00117514  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 8011A5B8 00117518  E3 C1 00 98 */	psq_l f30, 152(r1), 0, qr0
/* 8011A5BC 0011751C  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 8011A5C0 00117520  E3 A1 00 88 */	psq_l f29, 136(r1), 0, qr0
/* 8011A5C4 00117524  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 8011A5C8 00117528  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 8011A5CC 0011752C  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8011A5D0 00117530  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 8011A5D4 00117534  7C 08 03 A6 */	mtlr r0
/* 8011A5D8 00117538  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8011A5DC 0011753C  4E 80 00 20 */	blr

.global GetOrbitPosition__13CPhysicsActorCFRC13CStateManager
GetOrbitPosition__13CPhysicsActorCFRC13CStateManager:
/* 8011A5E0 00117540  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8011A5E4 00117544  7C 08 02 A6 */	mflr r0
/* 8011A5E8 00117548  90 01 00 34 */	stw r0, 0x34(r1)
/* 8011A5EC 0011754C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8011A5F0 00117550  7C 7F 1B 78 */	mr r31, r3
/* 8011A5F4 00117554  38 61 00 08 */	addi r3, r1, 8
/* 8011A5F8 00117558  48 00 03 35 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 8011A5FC 0011755C  7F E3 FB 78 */	mr r3, r31
/* 8011A600 00117560  38 81 00 08 */	addi r4, r1, 8
/* 8011A604 00117564  48 21 D0 09 */	bl GetCenterPoint__6CAABoxCFv
/* 8011A608 00117568  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8011A60C 0011756C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8011A610 00117570  7C 08 03 A6 */	mtlr r0
/* 8011A614 00117574  38 21 00 30 */	addi r1, r1, 0x30
/* 8011A618 00117578  4E 80 00 20 */	blr

.global GetStepUpHeight__13CPhysicsActorCFv
GetStepUpHeight__13CPhysicsActorCFv:
/* 8011A61C 0011757C  C0 23 02 3C */	lfs f1, 0x23c(r3)
/* 8011A620 00117580  4E 80 00 20 */	blr

.global GetStepDownHeight__13CPhysicsActorCFv
GetStepDownHeight__13CPhysicsActorCFv:
/* 8011A624 00117584  C0 23 02 40 */	lfs f1, 0x240(r3)
/* 8011A628 00117588  4E 80 00 20 */	blr

.global GetPrimitiveOffset__13CPhysicsActorCFv
GetPrimitiveOffset__13CPhysicsActorCFv:
/* 8011A62C 0011758C  C0 04 01 E8 */	lfs f0, 0x1e8(r4)
/* 8011A630 00117590  D0 03 00 00 */	stfs f0, 0(r3)
/* 8011A634 00117594  C0 04 01 EC */	lfs f0, 0x1ec(r4)
/* 8011A638 00117598  D0 03 00 04 */	stfs f0, 4(r3)
/* 8011A63C 0011759C  C0 04 01 F0 */	lfs f0, 0x1f0(r4)
/* 8011A640 001175A0  D0 03 00 08 */	stfs f0, 8(r3)
/* 8011A644 001175A4  4E 80 00 20 */	blr

.global GetWeight__13CPhysicsActorCFv
GetWeight__13CPhysicsActorCFv:
/* 8011A648 001175A8  C0 22 96 A8 */	lfs f1, lbl_805AB3C8@sda21(r2)
/* 8011A64C 001175AC  C0 03 00 E8 */	lfs f0, 0xe8(r3)
/* 8011A650 001175B0  EC 21 00 32 */	fmuls f1, f1, f0
/* 8011A654 001175B4  4E 80 00 20 */	blr

.global SetBoundingBox__13CPhysicsActorFRC6CAABox
SetBoundingBox__13CPhysicsActorFRC6CAABox:
/* 8011A658 001175B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011A65C 001175BC  7C 08 02 A6 */	mflr r0
/* 8011A660 001175C0  3C A0 80 5A */	lis r5, sZeroVector__9CVector3f@ha
/* 8011A664 001175C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011A668 001175C8  38 05 66 A0 */	addi r0, r5, sZeroVector__9CVector3f@l
/* 8011A66C 001175CC  80 E4 00 00 */	lwz r7, 0(r4)
/* 8011A670 001175D0  80 C4 00 04 */	lwz r6, 4(r4)
/* 8011A674 001175D4  90 E3 01 A4 */	stw r7, 0x1a4(r3)
/* 8011A678 001175D8  90 C3 01 A8 */	stw r6, 0x1a8(r3)
/* 8011A67C 001175DC  80 A4 00 08 */	lwz r5, 8(r4)
/* 8011A680 001175E0  90 A3 01 AC */	stw r5, 0x1ac(r3)
/* 8011A684 001175E4  80 C4 00 0C */	lwz r6, 0xc(r4)
/* 8011A688 001175E8  80 A4 00 10 */	lwz r5, 0x10(r4)
/* 8011A68C 001175EC  90 C3 01 B0 */	stw r6, 0x1b0(r3)
/* 8011A690 001175F0  90 A3 01 B4 */	stw r5, 0x1b4(r3)
/* 8011A694 001175F4  80 A4 00 14 */	lwz r5, 0x14(r4)
/* 8011A698 001175F8  7C 04 03 78 */	mr r4, r0
/* 8011A69C 001175FC  90 A3 01 B8 */	stw r5, 0x1b8(r3)
/* 8011A6A0 00117600  48 00 03 99 */	bl MoveCollisionPrimitive__13CPhysicsActorFRC9CVector3f
/* 8011A6A4 00117604  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011A6A8 00117608  7C 08 03 A6 */	mtlr r0
/* 8011A6AC 0011760C  38 21 00 10 */	addi r1, r1, 0x10
/* 8011A6B0 00117610  4E 80 00 20 */	blr

.global GetMotionVolume__13CPhysicsActorCFf
GetMotionVolume__13CPhysicsActorCFf:
/* 8011A6B4 00117614  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 8011A6B8 00117618  7C 08 02 A6 */	mflr r0
/* 8011A6BC 0011761C  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8011A6C0 00117620  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 8011A6C4 00117624  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, qr0
/* 8011A6C8 00117628  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 8011A6CC 0011762C  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, qr0
/* 8011A6D0 00117630  DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 8011A6D4 00117634  F3 A1 00 C8 */	psq_st f29, 200(r1), 0, qr0
/* 8011A6D8 00117638  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 8011A6DC 0011763C  93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 8011A6E0 00117640  81 84 00 00 */	lwz r12, 0(r4)
/* 8011A6E4 00117644  7C 7E 1B 78 */	mr r30, r3
/* 8011A6E8 00117648  FF E0 08 90 */	fmr f31, f1
/* 8011A6EC 0011764C  7C 9F 23 78 */	mr r31, r4
/* 8011A6F0 00117650  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 8011A6F4 00117654  38 61 00 7C */	addi r3, r1, 0x7c
/* 8011A6F8 00117658  7D 89 03 A6 */	mtctr r12
/* 8011A6FC 0011765C  4E 80 04 21 */	bctrl
/* 8011A700 00117660  7F E3 FB 78 */	mr r3, r31
/* 8011A704 00117664  81 9F 00 00 */	lwz r12, 0(r31)
/* 8011A708 00117668  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8011A70C 0011766C  7D 89 03 A6 */	mtctr r12
/* 8011A710 00117670  4E 80 04 21 */	bctrl
/* 8011A714 00117674  7C 64 1B 78 */	mr r4, r3
/* 8011A718 00117678  38 61 00 4C */	addi r3, r1, 0x4c
/* 8011A71C 0011767C  81 84 00 00 */	lwz r12, 0(r4)
/* 8011A720 00117680  38 A1 00 7C */	addi r5, r1, 0x7c
/* 8011A724 00117684  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8011A728 00117688  7D 89 03 A6 */	mtctr r12
/* 8011A72C 0011768C  4E 80 04 21 */	bctrl
/* 8011A730 00117690  C0 A1 00 4C */	lfs f5, 0x4c(r1)
/* 8011A734 00117694  7F E4 FB 78 */	mr r4, r31
/* 8011A738 00117698  C0 81 00 50 */	lfs f4, 0x50(r1)
/* 8011A73C 0011769C  38 61 00 40 */	addi r3, r1, 0x40
/* 8011A740 001176A0  C0 61 00 54 */	lfs f3, 0x54(r1)
/* 8011A744 001176A4  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 8011A748 001176A8  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 8011A74C 001176AC  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8011A750 001176B0  D0 A1 00 64 */	stfs f5, 0x64(r1)
/* 8011A754 001176B4  D0 81 00 68 */	stfs f4, 0x68(r1)
/* 8011A758 001176B8  D0 61 00 6C */	stfs f3, 0x6c(r1)
/* 8011A75C 001176BC  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 8011A760 001176C0  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 8011A764 001176C4  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8011A768 001176C8  48 00 16 61 */	bl CalculateNewVelocityWR_UsingImpulses__13CPhysicsActorCFv
/* 8011A76C 001176CC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8011A770 001176D0  38 61 00 64 */	addi r3, r1, 0x64
/* 8011A774 001176D4  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 8011A778 001176D8  38 81 00 34 */	addi r4, r1, 0x34
/* 8011A77C 001176DC  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 8011A780 001176E0  EF BF 00 32 */	fmuls f29, f31, f0
/* 8011A784 001176E4  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8011A788 001176E8  EF DF 00 B2 */	fmuls f30, f31, f2
/* 8011A78C 001176EC  C0 41 00 74 */	lfs f2, 0x74(r1)
/* 8011A790 001176F0  EF FF 00 72 */	fmuls f31, f31, f1
/* 8011A794 001176F4  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 8011A798 001176F8  EC 42 F0 2A */	fadds f2, f2, f30
/* 8011A79C 001176FC  EC 21 F8 2A */	fadds f1, f1, f31
/* 8011A7A0 00117700  EC 00 E8 2A */	fadds f0, f0, f29
/* 8011A7A4 00117704  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8011A7A8 00117708  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8011A7AC 0011770C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8011A7B0 00117710  48 21 D3 59 */	bl AccumulateBounds__6CAABoxFRC9CVector3f
/* 8011A7B4 00117714  C0 41 00 68 */	lfs f2, 0x68(r1)
/* 8011A7B8 00117718  38 61 00 64 */	addi r3, r1, 0x64
/* 8011A7BC 0011771C  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 8011A7C0 00117720  38 81 00 28 */	addi r4, r1, 0x28
/* 8011A7C4 00117724  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8011A7C8 00117728  EC 42 F0 2A */	fadds f2, f2, f30
/* 8011A7CC 0011772C  EC 21 F8 2A */	fadds f1, f1, f31
/* 8011A7D0 00117730  EC 00 E8 2A */	fadds f0, f0, f29
/* 8011A7D4 00117734  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8011A7D8 00117738  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8011A7DC 0011773C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8011A7E0 00117740  48 21 D3 29 */	bl AccumulateBounds__6CAABoxFRC9CVector3f
/* 8011A7E4 00117744  7F E3 FB 78 */	mr r3, r31
/* 8011A7E8 00117748  81 9F 00 00 */	lwz r12, 0(r31)
/* 8011A7EC 0011774C  81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8011A7F0 00117750  7D 89 03 A6 */	mtctr r12
/* 8011A7F4 00117754  4E 80 04 21 */	bctrl
/* 8011A7F8 00117758  FC 40 08 18 */	frsp f2, f1
/* 8011A7FC 0011775C  C0 0D 8A 70 */	lfs f0, lbl_805A7630@sda21(r13)
/* 8011A800 00117760  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8011A804 00117764  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8011A808 00117768  40 80 00 0C */	bge lbl_8011A814
/* 8011A80C 0011776C  38 8D 8A 70 */	addi r4, r13, lbl_805A7630@sda21
/* 8011A810 00117770  48 00 00 08 */	b lbl_8011A818
lbl_8011A814:
/* 8011A814 00117774  38 81 00 0C */	addi r4, r1, 0xc
lbl_8011A818:
/* 8011A818 00117778  C0 22 96 B0 */	lfs f1, lbl_805AB3D0@sda21(r2)
/* 8011A81C 0011777C  38 61 00 64 */	addi r3, r1, 0x64
/* 8011A820 00117780  C0 04 00 00 */	lfs f0, 0(r4)
/* 8011A824 00117784  38 81 00 1C */	addi r4, r1, 0x1c
/* 8011A828 00117788  C0 81 00 74 */	lfs f4, 0x74(r1)
/* 8011A82C 0011778C  C0 62 96 AC */	lfs f3, lbl_805AB3CC@sda21(r2)
/* 8011A830 00117790  EC 21 00 2A */	fadds f1, f1, f0
/* 8011A834 00117794  C0 41 00 78 */	lfs f2, 0x78(r1)
/* 8011A838 00117798  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8011A83C 0011779C  EC 84 18 2A */	fadds f4, f4, f3
/* 8011A840 001177A0  EC 22 08 2A */	fadds f1, f2, f1
/* 8011A844 001177A4  EC 00 18 2A */	fadds f0, f0, f3
/* 8011A848 001177A8  D0 81 00 20 */	stfs f4, 0x20(r1)
/* 8011A84C 001177AC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8011A850 001177B0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8011A854 001177B4  48 21 D2 B5 */	bl AccumulateBounds__6CAABoxFRC9CVector3f
/* 8011A858 001177B8  7F E3 FB 78 */	mr r3, r31
/* 8011A85C 001177BC  81 9F 00 00 */	lwz r12, 0(r31)
/* 8011A860 001177C0  81 8C 00 78 */	lwz r12, 0x78(r12)
/* 8011A864 001177C4  7D 89 03 A6 */	mtctr r12
/* 8011A868 001177C8  4E 80 04 21 */	bctrl
/* 8011A86C 001177CC  FC 40 08 18 */	frsp f2, f1
/* 8011A870 001177D0  C0 0D 8A 74 */	lfs f0, lbl_805A7634@sda21(r13)
/* 8011A874 001177D4  D0 21 00 08 */	stfs f1, 8(r1)
/* 8011A878 001177D8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8011A87C 001177DC  40 80 00 0C */	bge lbl_8011A888
/* 8011A880 001177E0  38 8D 8A 74 */	addi r4, r13, lbl_805A7634@sda21
/* 8011A884 001177E4  48 00 00 08 */	b lbl_8011A88C
lbl_8011A888:
/* 8011A888 001177E8  38 81 00 08 */	addi r4, r1, 8
lbl_8011A88C:
/* 8011A88C 001177EC  C0 22 96 B4 */	lfs f1, lbl_805AB3D4@sda21(r2)
/* 8011A890 001177F0  38 61 00 64 */	addi r3, r1, 0x64
/* 8011A894 001177F4  C0 04 00 00 */	lfs f0, 0(r4)
/* 8011A898 001177F8  38 81 00 10 */	addi r4, r1, 0x10
/* 8011A89C 001177FC  C0 81 00 68 */	lfs f4, 0x68(r1)
/* 8011A8A0 00117800  C0 62 96 AC */	lfs f3, lbl_805AB3CC@sda21(r2)
/* 8011A8A4 00117804  EC 21 00 2A */	fadds f1, f1, f0
/* 8011A8A8 00117808  C0 41 00 6C */	lfs f2, 0x6c(r1)
/* 8011A8AC 0011780C  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8011A8B0 00117810  EC 84 18 28 */	fsubs f4, f4, f3
/* 8011A8B4 00117814  EC 22 08 28 */	fsubs f1, f2, f1
/* 8011A8B8 00117818  EC 00 18 28 */	fsubs f0, f0, f3
/* 8011A8BC 0011781C  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 8011A8C0 00117820  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8011A8C4 00117824  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8011A8C8 00117828  48 21 D2 41 */	bl AccumulateBounds__6CAABoxFRC9CVector3f
/* 8011A8CC 0011782C  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8011A8D0 00117830  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8011A8D4 00117834  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8011A8D8 00117838  D0 1E 00 04 */	stfs f0, 4(r30)
/* 8011A8DC 0011783C  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8011A8E0 00117840  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8011A8E4 00117844  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8011A8E8 00117848  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8011A8EC 0011784C  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8011A8F0 00117850  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 8011A8F4 00117854  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8011A8F8 00117858  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 8011A8FC 0011785C  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, qr0
/* 8011A900 00117860  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 8011A904 00117864  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, qr0
/* 8011A908 00117868  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 8011A90C 0011786C  E3 A1 00 C8 */	psq_l f29, 200(r1), 0, qr0
/* 8011A910 00117870  CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 8011A914 00117874  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 8011A918 00117878  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8011A91C 0011787C  83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 8011A920 00117880  7C 08 03 A6 */	mtlr r0
/* 8011A924 00117884  38 21 00 F0 */	addi r1, r1, 0xf0
/* 8011A928 00117888  4E 80 00 20 */	blr

.global GetBoundingBox__13CPhysicsActorCFv
GetBoundingBox__13CPhysicsActorCFv:
/* 8011A92C 0011788C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8011A930 00117890  7C 08 02 A6 */	mflr r0
/* 8011A934 00117894  90 01 00 24 */	stw r0, 0x24(r1)
/* 8011A938 00117898  38 A1 00 08 */	addi r5, r1, 8
/* 8011A93C 0011789C  C0 24 01 E8 */	lfs f1, 0x1e8(r4)
/* 8011A940 001178A0  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 8011A944 001178A4  C0 64 01 EC */	lfs f3, 0x1ec(r4)
/* 8011A948 001178A8  EC A1 00 2A */	fadds f5, f1, f0
/* 8011A94C 001178AC  C0 44 00 50 */	lfs f2, 0x50(r4)
/* 8011A950 001178B0  C0 24 01 B0 */	lfs f1, 0x1b0(r4)
/* 8011A954 001178B4  EC 83 10 2A */	fadds f4, f3, f2
/* 8011A958 001178B8  C0 04 01 A4 */	lfs f0, 0x1a4(r4)
/* 8011A95C 001178BC  EC 41 28 2A */	fadds f2, f1, f5
/* 8011A960 001178C0  C0 64 01 B4 */	lfs f3, 0x1b4(r4)
/* 8011A964 001178C4  EC 00 28 2A */	fadds f0, f0, f5
/* 8011A968 001178C8  C0 24 01 A8 */	lfs f1, 0x1a8(r4)
/* 8011A96C 001178CC  EC C3 20 2A */	fadds f6, f3, f4
/* 8011A970 001178D0  C0 64 01 B8 */	lfs f3, 0x1b8(r4)
/* 8011A974 001178D4  EC A1 20 2A */	fadds f5, f1, f4
/* 8011A978 001178D8  C0 84 01 F0 */	lfs f4, 0x1f0(r4)
/* 8011A97C 001178DC  C0 24 00 60 */	lfs f1, 0x60(r4)
/* 8011A980 001178E0  D0 41 00 08 */	stfs f2, 8(r1)
/* 8011A984 001178E4  EC 84 08 2A */	fadds f4, f4, f1
/* 8011A988 001178E8  C0 24 01 AC */	lfs f1, 0x1ac(r4)
/* 8011A98C 001178EC  D0 C1 00 0C */	stfs f6, 0xc(r1)
/* 8011A990 001178F0  38 81 00 14 */	addi r4, r1, 0x14
/* 8011A994 001178F4  EC 43 20 2A */	fadds f2, f3, f4
/* 8011A998 001178F8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8011A99C 001178FC  EC 21 20 2A */	fadds f1, f1, f4
/* 8011A9A0 00117900  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 8011A9A4 00117904  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8011A9A8 00117908  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8011A9AC 0011790C  48 21 DB 5D */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 8011A9B0 00117910  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8011A9B4 00117914  7C 08 03 A6 */	mtlr r0
/* 8011A9B8 00117918  38 21 00 20 */	addi r1, r1, 0x20
/* 8011A9BC 0011791C  4E 80 00 20 */	blr

.global GetBaseBoundingBox__13CPhysicsActorCFv
GetBaseBoundingBox__13CPhysicsActorCFv:
/* 8011A9C0 00117920  38 63 01 A4 */	addi r3, r3, 0x1a4
/* 8011A9C4 00117924  4E 80 00 20 */	blr

.global CollidedWith__13CPhysicsActorFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
CollidedWith__13CPhysicsActorFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager:
/* 8011A9C8 00117928  4E 80 00 20 */	blr

.global GetPrimitiveTransform__13CPhysicsActorCFv
GetPrimitiveTransform__13CPhysicsActorCFv:
/* 8011A9CC 0011792C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8011A9D0 00117930  7C 08 02 A6 */	mflr r0
/* 8011A9D4 00117934  90 01 00 34 */	stw r0, 0x34(r1)
/* 8011A9D8 00117938  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8011A9DC 0011793C  7C 7F 1B 78 */	mr r31, r3
/* 8011A9E0 00117940  C0 A4 00 60 */	lfs f5, 0x60(r4)
/* 8011A9E4 00117944  C0 84 00 50 */	lfs f4, 0x50(r4)
/* 8011A9E8 00117948  C0 64 00 40 */	lfs f3, 0x40(r4)
/* 8011A9EC 0011794C  C0 44 01 EC */	lfs f2, 0x1ec(r4)
/* 8011A9F0 00117950  C0 24 01 F0 */	lfs f1, 0x1f0(r4)
/* 8011A9F4 00117954  C0 04 01 E8 */	lfs f0, 0x1e8(r4)
/* 8011A9F8 00117958  EC 44 10 2A */	fadds f2, f4, f2
/* 8011A9FC 0011795C  EC 25 08 2A */	fadds f1, f5, f1
/* 8011AA00 00117960  D0 61 00 08 */	stfs f3, 8(r1)
/* 8011AA04 00117964  EC 03 00 2A */	fadds f0, f3, f0
/* 8011AA08 00117968  38 81 00 14 */	addi r4, r1, 0x14
/* 8011AA0C 0011796C  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 8011AA10 00117970  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 8011AA14 00117974  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8011AA18 00117978  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8011AA1C 0011797C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8011AA20 00117980  48 1F 87 21 */	bl Translate__12CTransform4fFRC9CVector3f
/* 8011AA24 00117984  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8011AA28 00117988  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8011AA2C 0011798C  7C 08 03 A6 */	mtlr r0
/* 8011AA30 00117990  38 21 00 30 */	addi r1, r1, 0x30
/* 8011AA34 00117994  4E 80 00 20 */	blr

.global MoveCollisionPrimitive__13CPhysicsActorFRC9CVector3f
MoveCollisionPrimitive__13CPhysicsActorFRC9CVector3f:
/* 8011AA38 00117998  C0 04 00 00 */	lfs f0, 0(r4)
/* 8011AA3C 0011799C  D0 03 01 E8 */	stfs f0, 0x1e8(r3)
/* 8011AA40 001179A0  C0 04 00 04 */	lfs f0, 4(r4)
/* 8011AA44 001179A4  D0 03 01 EC */	stfs f0, 0x1ec(r3)
/* 8011AA48 001179A8  C0 04 00 08 */	lfs f0, 8(r4)
/* 8011AA4C 001179AC  D0 03 01 F0 */	stfs f0, 0x1f0(r3)
/* 8011AA50 001179B0  4E 80 00 20 */	blr

.global GetCollisionPrimitive__13CPhysicsActorCFv
GetCollisionPrimitive__13CPhysicsActorCFv:
/* 8011AA54 001179B4  38 63 01 C0 */	addi r3, r3, 0x1c0
/* 8011AA58 001179B8  4E 80 00 20 */	blr

.global SetInertiaTensorScalar__13CPhysicsActorFf
SetInertiaTensorScalar__13CPhysicsActorFf:
/* 8011AA5C 001179BC  C0 02 96 A4 */	lfs f0, lbl_805AB3C4@sda21(r2)
/* 8011AA60 001179C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8011AA64 001179C4  40 81 00 08 */	ble lbl_8011AA6C
/* 8011AA68 001179C8  48 00 00 08 */	b lbl_8011AA70
lbl_8011AA6C:
/* 8011AA6C 001179CC  C0 22 96 B0 */	lfs f1, lbl_805AB3D0@sda21(r2)
lbl_8011AA70:
/* 8011AA70 001179D0  D0 23 00 F0 */	stfs f1, 0xf0(r3)
/* 8011AA74 001179D4  C0 22 96 B0 */	lfs f1, lbl_805AB3D0@sda21(r2)
/* 8011AA78 001179D8  C0 03 00 F0 */	lfs f0, 0xf0(r3)
/* 8011AA7C 001179DC  EC 01 00 24 */	fdivs f0, f1, f0
/* 8011AA80 001179E0  D0 03 00 F4 */	stfs f0, 0xf4(r3)
/* 8011AA84 001179E4  4E 80 00 20 */	blr

.global SetMass__13CPhysicsActorFf
SetMass__13CPhysicsActorFf:
/* 8011AA88 001179E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011AA8C 001179EC  7C 08 02 A6 */	mflr r0
/* 8011AA90 001179F0  C0 02 96 A4 */	lfs f0, lbl_805AB3C4@sda21(r2)
/* 8011AA94 001179F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011AA98 001179F8  D0 23 00 E8 */	stfs f1, 0xe8(r3)
/* 8011AA9C 001179FC  C0 23 00 E8 */	lfs f1, 0xe8(r3)
/* 8011AAA0 00117A00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8011AAA4 00117A04  40 81 00 10 */	ble lbl_8011AAB4
/* 8011AAA8 00117A08  C0 02 96 B0 */	lfs f0, lbl_805AB3D0@sda21(r2)
/* 8011AAAC 00117A0C  EC 00 08 24 */	fdivs f0, f0, f1
/* 8011AAB0 00117A10  48 00 00 08 */	b lbl_8011AAB8
lbl_8011AAB4:
/* 8011AAB4 00117A14  C0 02 96 B0 */	lfs f0, lbl_805AB3D0@sda21(r2)
lbl_8011AAB8:
/* 8011AAB8 00117A18  D0 03 00 EC */	stfs f0, 0xec(r3)
/* 8011AABC 00117A1C  C0 22 96 B8 */	lfs f1, lbl_805AB3D8@sda21(r2)
/* 8011AAC0 00117A20  C0 03 00 E8 */	lfs f0, 0xe8(r3)
/* 8011AAC4 00117A24  EC 21 00 32 */	fmuls f1, f1, f0
/* 8011AAC8 00117A28  4B FF FF 95 */	bl SetInertiaTensorScalar__13CPhysicsActorFf
/* 8011AACC 00117A2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011AAD0 00117A30  7C 08 03 A6 */	mtlr r0
/* 8011AAD4 00117A34  38 21 00 10 */	addi r1, r1, 0x10
/* 8011AAD8 00117A38  4E 80 00 20 */	blr

.global SetAngularVelocityOR__13CPhysicsActorFRC10CAxisAngle
SetAngularVelocityOR__13CPhysicsActorFRC10CAxisAngle:
/* 8011AADC 00117A3C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8011AAE0 00117A40  7C 08 02 A6 */	mflr r0
/* 8011AAE4 00117A44  90 01 00 54 */	stw r0, 0x54(r1)
/* 8011AAE8 00117A48  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8011AAEC 00117A4C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 8011AAF0 00117A50  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8011AAF4 00117A54  7C 7F 1B 78 */	mr r31, r3
/* 8011AAF8 00117A58  7C 83 23 78 */	mr r3, r4
/* 8011AAFC 00117A5C  4B F0 0A 35 */	bl GetVector__10CAxisAngleCFv
/* 8011AB00 00117A60  7C 65 1B 78 */	mr r5, r3
/* 8011AB04 00117A64  38 61 00 20 */	addi r3, r1, 0x20
/* 8011AB08 00117A68  38 9F 00 34 */	addi r4, r31, 0x34
/* 8011AB0C 00117A6C  48 1F 7F 75 */	bl Rotate__12CTransform4fCFRC9CVector3f
/* 8011AB10 00117A70  38 61 00 2C */	addi r3, r1, 0x2c
/* 8011AB14 00117A74  38 81 00 20 */	addi r4, r1, 0x20
/* 8011AB18 00117A78  4B F0 0A 6D */	bl __ct__10CAxisAngleFRC9CVector3f
/* 8011AB1C 00117A7C  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 8011AB20 00117A80  38 7F 01 44 */	addi r3, r31, 0x144
/* 8011AB24 00117A84  80 01 00 30 */	lwz r0, 0x30(r1)
/* 8011AB28 00117A88  90 9F 01 44 */	stw r4, 0x144(r31)
/* 8011AB2C 00117A8C  90 1F 01 48 */	stw r0, 0x148(r31)
/* 8011AB30 00117A90  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8011AB34 00117A94  90 1F 01 4C */	stw r0, 0x14c(r31)
/* 8011AB38 00117A98  C3 FF 00 F0 */	lfs f31, 0xf0(r31)
/* 8011AB3C 00117A9C  4B F0 09 F5 */	bl GetVector__10CAxisAngleCFv
/* 8011AB40 00117AA0  C0 43 00 04 */	lfs f2, 4(r3)
/* 8011AB44 00117AA4  38 81 00 08 */	addi r4, r1, 8
/* 8011AB48 00117AA8  C0 23 00 08 */	lfs f1, 8(r3)
/* 8011AB4C 00117AAC  C0 03 00 00 */	lfs f0, 0(r3)
/* 8011AB50 00117AB0  EC 5F 00 B2 */	fmuls f2, f31, f2
/* 8011AB54 00117AB4  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8011AB58 00117AB8  38 61 00 14 */	addi r3, r1, 0x14
/* 8011AB5C 00117ABC  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8011AB60 00117AC0  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8011AB64 00117AC4  D0 01 00 08 */	stfs f0, 8(r1)
/* 8011AB68 00117AC8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8011AB6C 00117ACC  4B F0 0A 19 */	bl __ct__10CAxisAngleFRC9CVector3f
/* 8011AB70 00117AD0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8011AB74 00117AD4  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8011AB78 00117AD8  90 7F 01 08 */	stw r3, 0x108(r31)
/* 8011AB7C 00117ADC  90 1F 01 0C */	stw r0, 0x10c(r31)
/* 8011AB80 00117AE0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8011AB84 00117AE4  90 1F 01 10 */	stw r0, 0x110(r31)
/* 8011AB88 00117AE8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 8011AB8C 00117AEC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8011AB90 00117AF0  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8011AB94 00117AF4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8011AB98 00117AF8  7C 08 03 A6 */	mtlr r0
/* 8011AB9C 00117AFC  38 21 00 50 */	addi r1, r1, 0x50
/* 8011ABA0 00117B00  4E 80 00 20 */	blr

.global GetAngularVelocityOR__13CPhysicsActorCFv
GetAngularVelocityOR__13CPhysicsActorCFv:
/* 8011ABA4 00117B04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8011ABA8 00117B08  7C 08 02 A6 */	mflr r0
/* 8011ABAC 00117B0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8011ABB0 00117B10  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8011ABB4 00117B14  7C 9F 23 78 */	mr r31, r4
/* 8011ABB8 00117B18  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8011ABBC 00117B1C  7C 7E 1B 78 */	mr r30, r3
/* 8011ABC0 00117B20  38 7F 01 44 */	addi r3, r31, 0x144
/* 8011ABC4 00117B24  4B F0 09 6D */	bl GetVector__10CAxisAngleCFv
/* 8011ABC8 00117B28  7C 65 1B 78 */	mr r5, r3
/* 8011ABCC 00117B2C  38 61 00 08 */	addi r3, r1, 8
/* 8011ABD0 00117B30  38 9F 00 34 */	addi r4, r31, 0x34
/* 8011ABD4 00117B34  48 1F 7E 51 */	bl TransposeRotate__12CTransform4fCFRC9CVector3f
/* 8011ABD8 00117B38  7F C3 F3 78 */	mr r3, r30
/* 8011ABDC 00117B3C  38 81 00 08 */	addi r4, r1, 8
/* 8011ABE0 00117B40  4B F0 09 A5 */	bl __ct__10CAxisAngleFRC9CVector3f
/* 8011ABE4 00117B44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8011ABE8 00117B48  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8011ABEC 00117B4C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8011ABF0 00117B50  7C 08 03 A6 */	mtlr r0
/* 8011ABF4 00117B54  38 21 00 20 */	addi r1, r1, 0x20
/* 8011ABF8 00117B58  4E 80 00 20 */	blr

.global SetAngularVelocityWR__13CPhysicsActorFRC10CAxisAngle
SetAngularVelocityWR__13CPhysicsActorFRC10CAxisAngle:
/* 8011ABFC 00117B5C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8011AC00 00117B60  7C 08 02 A6 */	mflr r0
/* 8011AC04 00117B64  90 01 00 44 */	stw r0, 0x44(r1)
/* 8011AC08 00117B68  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8011AC0C 00117B6C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 8011AC10 00117B70  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8011AC14 00117B74  80 A4 00 00 */	lwz r5, 0(r4)
/* 8011AC18 00117B78  7C 7F 1B 78 */	mr r31, r3
/* 8011AC1C 00117B7C  80 04 00 04 */	lwz r0, 4(r4)
/* 8011AC20 00117B80  38 7F 01 44 */	addi r3, r31, 0x144
/* 8011AC24 00117B84  90 BF 01 44 */	stw r5, 0x144(r31)
/* 8011AC28 00117B88  90 1F 01 48 */	stw r0, 0x148(r31)
/* 8011AC2C 00117B8C  80 04 00 08 */	lwz r0, 8(r4)
/* 8011AC30 00117B90  90 1F 01 4C */	stw r0, 0x14c(r31)
/* 8011AC34 00117B94  C3 FF 00 F0 */	lfs f31, 0xf0(r31)
/* 8011AC38 00117B98  4B F0 08 F9 */	bl GetVector__10CAxisAngleCFv
/* 8011AC3C 00117B9C  C0 43 00 04 */	lfs f2, 4(r3)
/* 8011AC40 00117BA0  38 81 00 08 */	addi r4, r1, 8
/* 8011AC44 00117BA4  C0 23 00 08 */	lfs f1, 8(r3)
/* 8011AC48 00117BA8  C0 03 00 00 */	lfs f0, 0(r3)
/* 8011AC4C 00117BAC  EC 5F 00 B2 */	fmuls f2, f31, f2
/* 8011AC50 00117BB0  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8011AC54 00117BB4  38 61 00 14 */	addi r3, r1, 0x14
/* 8011AC58 00117BB8  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8011AC5C 00117BBC  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8011AC60 00117BC0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8011AC64 00117BC4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8011AC68 00117BC8  4B F0 09 1D */	bl __ct__10CAxisAngleFRC9CVector3f
/* 8011AC6C 00117BCC  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8011AC70 00117BD0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8011AC74 00117BD4  90 7F 01 08 */	stw r3, 0x108(r31)
/* 8011AC78 00117BD8  90 1F 01 0C */	stw r0, 0x10c(r31)
/* 8011AC7C 00117BDC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8011AC80 00117BE0  90 1F 01 10 */	stw r0, 0x110(r31)
/* 8011AC84 00117BE4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 8011AC88 00117BE8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8011AC8C 00117BEC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8011AC90 00117BF0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8011AC94 00117BF4  7C 08 03 A6 */	mtlr r0
/* 8011AC98 00117BF8  38 21 00 40 */	addi r1, r1, 0x40
/* 8011AC9C 00117BFC  4E 80 00 20 */	blr

.global SetVelocityWR__13CPhysicsActorFRC9CVector3f
SetVelocityWR__13CPhysicsActorFRC9CVector3f:
/* 8011ACA0 00117C00  C0 04 00 00 */	lfs f0, 0(r4)
/* 8011ACA4 00117C04  D0 03 01 38 */	stfs f0, 0x138(r3)
/* 8011ACA8 00117C08  C0 04 00 04 */	lfs f0, 4(r4)
/* 8011ACAC 00117C0C  D0 03 01 3C */	stfs f0, 0x13c(r3)
/* 8011ACB0 00117C10  C0 04 00 08 */	lfs f0, 8(r4)
/* 8011ACB4 00117C14  D0 03 01 40 */	stfs f0, 0x140(r3)
/* 8011ACB8 00117C18  C0 63 00 E8 */	lfs f3, 0xe8(r3)
/* 8011ACBC 00117C1C  C0 03 01 38 */	lfs f0, 0x138(r3)
/* 8011ACC0 00117C20  C0 43 01 3C */	lfs f2, 0x13c(r3)
/* 8011ACC4 00117C24  C0 23 01 40 */	lfs f1, 0x140(r3)
/* 8011ACC8 00117C28  EC 03 00 32 */	fmuls f0, f3, f0
/* 8011ACCC 00117C2C  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8011ACD0 00117C30  EC 23 00 72 */	fmuls f1, f3, f1
/* 8011ACD4 00117C34  D0 03 00 FC */	stfs f0, 0xfc(r3)
/* 8011ACD8 00117C38  D0 43 01 00 */	stfs f2, 0x100(r3)
/* 8011ACDC 00117C3C  D0 23 01 04 */	stfs f1, 0x104(r3)
/* 8011ACE0 00117C40  4E 80 00 20 */	blr

.global GetTotalForceWR__13CPhysicsActorCFv
GetTotalForceWR__13CPhysicsActorCFv:
/* 8011ACE4 00117C44  C0 24 01 5C */	lfs f1, 0x15c(r4)
/* 8011ACE8 00117C48  C0 04 01 50 */	lfs f0, 0x150(r4)
/* 8011ACEC 00117C4C  C0 84 01 60 */	lfs f4, 0x160(r4)
/* 8011ACF0 00117C50  C0 64 01 54 */	lfs f3, 0x154(r4)
/* 8011ACF4 00117C54  EC 01 00 2A */	fadds f0, f1, f0
/* 8011ACF8 00117C58  C0 44 01 64 */	lfs f2, 0x164(r4)
/* 8011ACFC 00117C5C  C0 24 01 58 */	lfs f1, 0x158(r4)
/* 8011AD00 00117C60  EC 64 18 2A */	fadds f3, f4, f3
/* 8011AD04 00117C64  D0 03 00 00 */	stfs f0, 0(r3)
/* 8011AD08 00117C68  EC 02 08 2A */	fadds f0, f2, f1
/* 8011AD0C 00117C6C  D0 63 00 04 */	stfs f3, 4(r3)
/* 8011AD10 00117C70  D0 03 00 08 */	stfs f0, 8(r3)
/* 8011AD14 00117C74  4E 80 00 20 */	blr

.global SetVelocityOR__13CPhysicsActorFRC9CVector3f
SetVelocityOR__13CPhysicsActorFRC9CVector3f:
/* 8011AD18 00117C78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8011AD1C 00117C7C  7C 08 02 A6 */	mflr r0
/* 8011AD20 00117C80  7C 85 23 78 */	mr r5, r4
/* 8011AD24 00117C84  90 01 00 24 */	stw r0, 0x24(r1)
/* 8011AD28 00117C88  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8011AD2C 00117C8C  7C 7F 1B 78 */	mr r31, r3
/* 8011AD30 00117C90  38 61 00 08 */	addi r3, r1, 8
/* 8011AD34 00117C94  38 9F 00 34 */	addi r4, r31, 0x34
/* 8011AD38 00117C98  48 1F 7D 49 */	bl Rotate__12CTransform4fCFRC9CVector3f
/* 8011AD3C 00117C9C  7F E3 FB 78 */	mr r3, r31
/* 8011AD40 00117CA0  38 81 00 08 */	addi r4, r1, 8
/* 8011AD44 00117CA4  4B FF FF 5D */	bl SetVelocityWR__13CPhysicsActorFRC9CVector3f
/* 8011AD48 00117CA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8011AD4C 00117CAC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8011AD50 00117CB0  7C 08 03 A6 */	mtlr r0
/* 8011AD54 00117CB4  38 21 00 20 */	addi r1, r1, 0x20
/* 8011AD58 00117CB8  4E 80 00 20 */	blr

.global RotateInOneFrameOR__13CPhysicsActorFRC11CQuaternionf
RotateInOneFrameOR__13CPhysicsActorFRC11CQuaternionf:
/* 8011AD5C 00117CBC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8011AD60 00117CC0  7C 08 02 A6 */	mflr r0
/* 8011AD64 00117CC4  7C 85 23 78 */	mr r5, r4
/* 8011AD68 00117CC8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8011AD6C 00117CCC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8011AD70 00117CD0  7C 7F 1B 78 */	mr r31, r3
/* 8011AD74 00117CD4  7F E4 FB 78 */	mr r4, r31
/* 8011AD78 00117CD8  38 61 00 14 */	addi r3, r1, 0x14
/* 8011AD7C 00117CDC  48 00 01 55 */	bl GetRotateToORAngularMomentumWR__13CPhysicsActorCFRC11CQuaternionf
/* 8011AD80 00117CE0  38 81 00 14 */	addi r4, r1, 0x14
/* 8011AD84 00117CE4  38 61 00 08 */	addi r3, r1, 8
/* 8011AD88 00117CE8  4B F0 07 FD */	bl __ct__10CAxisAngleFRC9CVector3f
/* 8011AD8C 00117CEC  7C 64 1B 78 */	mr r4, r3
/* 8011AD90 00117CF0  38 7F 01 98 */	addi r3, r31, 0x198
/* 8011AD94 00117CF4  4B F0 07 1D */	bl __apl__10CAxisAngleFRC10CAxisAngle
/* 8011AD98 00117CF8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8011AD9C 00117CFC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8011ADA0 00117D00  7C 08 03 A6 */	mtlr r0
/* 8011ADA4 00117D04  38 21 00 30 */	addi r1, r1, 0x30
/* 8011ADA8 00117D08  4E 80 00 20 */	blr

.global MoveInOneFrameOR__13CPhysicsActorFRC9CVector3ff
MoveInOneFrameOR__13CPhysicsActorFRC9CVector3ff:
/* 8011ADAC 00117D0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8011ADB0 00117D10  7C 08 02 A6 */	mflr r0
/* 8011ADB4 00117D14  7C 85 23 78 */	mr r5, r4
/* 8011ADB8 00117D18  90 01 00 24 */	stw r0, 0x24(r1)
/* 8011ADBC 00117D1C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8011ADC0 00117D20  7C 7F 1B 78 */	mr r31, r3
/* 8011ADC4 00117D24  7F E4 FB 78 */	mr r4, r31
/* 8011ADC8 00117D28  38 61 00 08 */	addi r3, r1, 8
/* 8011ADCC 00117D2C  48 00 02 3D */	bl GetMoveToORImpulseWR__13CPhysicsActorCFRC9CVector3ff
/* 8011ADD0 00117D30  C0 3F 01 8C */	lfs f1, 0x18c(r31)
/* 8011ADD4 00117D34  C0 01 00 08 */	lfs f0, 8(r1)
/* 8011ADD8 00117D38  EC 01 00 2A */	fadds f0, f1, f0
/* 8011ADDC 00117D3C  D0 1F 01 8C */	stfs f0, 0x18c(r31)
/* 8011ADE0 00117D40  C0 3F 01 90 */	lfs f1, 0x190(r31)
/* 8011ADE4 00117D44  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8011ADE8 00117D48  EC 01 00 2A */	fadds f0, f1, f0
/* 8011ADEC 00117D4C  D0 1F 01 90 */	stfs f0, 0x190(r31)
/* 8011ADF0 00117D50  C0 3F 01 94 */	lfs f1, 0x194(r31)
/* 8011ADF4 00117D54  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8011ADF8 00117D58  EC 01 00 2A */	fadds f0, f1, f0
/* 8011ADFC 00117D5C  D0 1F 01 94 */	stfs f0, 0x194(r31)
/* 8011AE00 00117D60  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8011AE04 00117D64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8011AE08 00117D68  7C 08 03 A6 */	mtlr r0
/* 8011AE0C 00117D6C  38 21 00 20 */	addi r1, r1, 0x20
/* 8011AE10 00117D70  4E 80 00 20 */	blr

.global RotateToOR__13CPhysicsActorFRC11CQuaternionf
RotateToOR__13CPhysicsActorFRC11CQuaternionf:
/* 8011AE14 00117D74  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8011AE18 00117D78  7C 08 02 A6 */	mflr r0
/* 8011AE1C 00117D7C  7C 85 23 78 */	mr r5, r4
/* 8011AE20 00117D80  90 01 00 34 */	stw r0, 0x34(r1)
/* 8011AE24 00117D84  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8011AE28 00117D88  7C 7F 1B 78 */	mr r31, r3
/* 8011AE2C 00117D8C  7F E4 FB 78 */	mr r4, r31
/* 8011AE30 00117D90  38 61 00 14 */	addi r3, r1, 0x14
/* 8011AE34 00117D94  48 00 00 9D */	bl GetRotateToORAngularMomentumWR__13CPhysicsActorCFRC11CQuaternionf
/* 8011AE38 00117D98  38 81 00 14 */	addi r4, r1, 0x14
/* 8011AE3C 00117D9C  38 61 00 08 */	addi r3, r1, 8
/* 8011AE40 00117DA0  4B F0 07 45 */	bl __ct__10CAxisAngleFRC9CVector3f
/* 8011AE44 00117DA4  80 81 00 08 */	lwz r4, 8(r1)
/* 8011AE48 00117DA8  7F E3 FB 78 */	mr r3, r31
/* 8011AE4C 00117DAC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8011AE50 00117DB0  90 9F 01 08 */	stw r4, 0x108(r31)
/* 8011AE54 00117DB4  90 1F 01 0C */	stw r0, 0x10c(r31)
/* 8011AE58 00117DB8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8011AE5C 00117DBC  90 1F 01 10 */	stw r0, 0x110(r31)
/* 8011AE60 00117DC0  48 00 12 19 */	bl ComputeDerivedQuantities__13CPhysicsActorFv
/* 8011AE64 00117DC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8011AE68 00117DC8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8011AE6C 00117DCC  7C 08 03 A6 */	mtlr r0
/* 8011AE70 00117DD0  38 21 00 30 */	addi r1, r1, 0x30
/* 8011AE74 00117DD4  4E 80 00 20 */	blr

.global MoveToOR__13CPhysicsActorFRC9CVector3ff
MoveToOR__13CPhysicsActorFRC9CVector3ff:
/* 8011AE78 00117DD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8011AE7C 00117DDC  7C 08 02 A6 */	mflr r0
/* 8011AE80 00117DE0  7C 85 23 78 */	mr r5, r4
/* 8011AE84 00117DE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8011AE88 00117DE8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8011AE8C 00117DEC  7C 7F 1B 78 */	mr r31, r3
/* 8011AE90 00117DF0  7F E4 FB 78 */	mr r4, r31
/* 8011AE94 00117DF4  38 61 00 08 */	addi r3, r1, 8
/* 8011AE98 00117DF8  48 00 01 71 */	bl GetMoveToORImpulseWR__13CPhysicsActorCFRC9CVector3ff
/* 8011AE9C 00117DFC  C0 01 00 08 */	lfs f0, 8(r1)
/* 8011AEA0 00117E00  7F E3 FB 78 */	mr r3, r31
/* 8011AEA4 00117E04  D0 1F 00 FC */	stfs f0, 0xfc(r31)
/* 8011AEA8 00117E08  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8011AEAC 00117E0C  D0 1F 01 00 */	stfs f0, 0x100(r31)
/* 8011AEB0 00117E10  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8011AEB4 00117E14  D0 1F 01 04 */	stfs f0, 0x104(r31)
/* 8011AEB8 00117E18  48 00 11 C1 */	bl ComputeDerivedQuantities__13CPhysicsActorFv
/* 8011AEBC 00117E1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8011AEC0 00117E20  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8011AEC4 00117E24  7C 08 03 A6 */	mtlr r0
/* 8011AEC8 00117E28  38 21 00 20 */	addi r1, r1, 0x20
/* 8011AECC 00117E2C  4E 80 00 20 */	blr

.global GetRotateToORAngularMomentumWR__13CPhysicsActorCFRC11CQuaternionf
GetRotateToORAngularMomentumWR__13CPhysicsActorCFRC11CQuaternionf:
/* 8011AED0 00117E30  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8011AED4 00117E34  7C 08 02 A6 */	mflr r0
/* 8011AED8 00117E38  90 01 00 74 */	stw r0, 0x74(r1)
/* 8011AEDC 00117E3C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8011AEE0 00117E40  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 8011AEE4 00117E44  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8011AEE8 00117E48  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 8011AEEC 00117E4C  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 8011AEF0 00117E50  F3 A1 00 48 */	psq_st f29, 72(r1), 0, qr0
/* 8011AEF4 00117E54  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8011AEF8 00117E58  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8011AEFC 00117E5C  93 A1 00 34 */	stw r29, 0x34(r1)
/* 8011AF00 00117E60  7C BF 2B 78 */	mr r31, r5
/* 8011AF04 00117E64  C0 02 96 BC */	lfs f0, lbl_805AB3DC@sda21(r2)
/* 8011AF08 00117E68  C0 45 00 00 */	lfs f2, 0(r5)
/* 8011AF0C 00117E6C  FF A0 08 90 */	fmr f29, f1
/* 8011AF10 00117E70  7C 7D 1B 78 */	mr r29, r3
/* 8011AF14 00117E74  7C 9E 23 78 */	mr r30, r4
/* 8011AF18 00117E78  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8011AF1C 00117E7C  40 81 00 24 */	ble lbl_8011AF40
/* 8011AF20 00117E80  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8011AF24 00117E84  C4 03 66 A0 */	lfsu f0, sZeroVector__9CVector3f@l(r3)
/* 8011AF28 00117E88  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8011AF2C 00117E8C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8011AF30 00117E90  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8011AF34 00117E94  C0 03 00 08 */	lfs f0, 8(r3)
/* 8011AF38 00117E98  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8011AF3C 00117E9C  48 00 00 98 */	b lbl_8011AFD4
lbl_8011AF40:
/* 8011AF40 00117EA0  38 61 00 14 */	addi r3, r1, 0x14
/* 8011AF44 00117EA4  38 9E 00 34 */	addi r4, r30, 0x34
/* 8011AF48 00117EA8  38 BF 00 04 */	addi r5, r31, 4
/* 8011AF4C 00117EAC  48 1F 7B 35 */	bl Rotate__12CTransform4fCFRC9CVector3f
/* 8011AF50 00117EB0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8011AF54 00117EB4  3B E1 00 24 */	addi r31, r1, 0x24
/* 8011AF58 00117EB8  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 8011AF5C 00117EBC  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8011AF60 00117EC0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8011AF64 00117EC4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8011AF68 00117EC8  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 8011AF6C 00117ECC  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8011AF70 00117ED0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8011AF74 00117ED4  48 27 9C B9 */	bl acos
/* 8011AF78 00117ED8  FF E0 08 90 */	fmr f31, f1
/* 8011AF7C 00117EDC  C3 DE 00 F0 */	lfs f30, 0xf0(r30)
/* 8011AF80 00117EE0  7F E4 FB 78 */	mr r4, r31
/* 8011AF84 00117EE4  38 61 00 08 */	addi r3, r1, 8
/* 8011AF88 00117EE8  48 1F 98 C9 */	bl AsNormalized__9CVector3fCFv
/* 8011AF8C 00117EEC  C0 02 96 B0 */	lfs f0, lbl_805AB3D0@sda21(r2)
/* 8011AF90 00117EF0  FC 80 F8 18 */	frsp f4, f31
/* 8011AF94 00117EF4  C0 A2 96 C0 */	lfs f5, lbl_805AB3E0@sda21(r2)
/* 8011AF98 00117EF8  EC 60 E8 24 */	fdivs f3, f0, f29
/* 8011AF9C 00117EFC  C0 41 00 08 */	lfs f2, 8(r1)
/* 8011AFA0 00117F00  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8011AFA4 00117F04  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8011AFA8 00117F08  EC 85 01 32 */	fmuls f4, f5, f4
/* 8011AFAC 00117F0C  EC 84 00 F2 */	fmuls f4, f4, f3
/* 8011AFB0 00117F10  EC 64 00 B2 */	fmuls f3, f4, f2
/* 8011AFB4 00117F14  EC 44 00 72 */	fmuls f2, f4, f1
/* 8011AFB8 00117F18  EC 24 00 32 */	fmuls f1, f4, f0
/* 8011AFBC 00117F1C  EC 1E 00 F2 */	fmuls f0, f30, f3
/* 8011AFC0 00117F20  EC 5E 00 B2 */	fmuls f2, f30, f2
/* 8011AFC4 00117F24  EC 3E 00 72 */	fmuls f1, f30, f1
/* 8011AFC8 00117F28  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8011AFCC 00117F2C  D0 5D 00 04 */	stfs f2, 4(r29)
/* 8011AFD0 00117F30  D0 3D 00 08 */	stfs f1, 8(r29)
lbl_8011AFD4:
/* 8011AFD4 00117F34  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 8011AFD8 00117F38  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8011AFDC 00117F3C  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 8011AFE0 00117F40  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8011AFE4 00117F44  E3 A1 00 48 */	psq_l f29, 72(r1), 0, qr0
/* 8011AFE8 00117F48  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 8011AFEC 00117F4C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8011AFF0 00117F50  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8011AFF4 00117F54  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8011AFF8 00117F58  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 8011AFFC 00117F5C  7C 08 03 A6 */	mtlr r0
/* 8011B000 00117F60  38 21 00 70 */	addi r1, r1, 0x70
/* 8011B004 00117F64  4E 80 00 20 */	blr

.global GetMoveToORImpulseWR__13CPhysicsActorCFRC9CVector3ff
GetMoveToORImpulseWR__13CPhysicsActorCFRC9CVector3ff:
/* 8011B008 00117F68  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8011B00C 00117F6C  7C 08 02 A6 */	mflr r0
/* 8011B010 00117F70  90 01 00 34 */	stw r0, 0x34(r1)
/* 8011B014 00117F74  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8011B018 00117F78  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8011B01C 00117F7C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8011B020 00117F80  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8011B024 00117F84  FF E0 08 90 */	fmr f31, f1
/* 8011B028 00117F88  7C 9F 23 78 */	mr r31, r4
/* 8011B02C 00117F8C  7C 7E 1B 78 */	mr r30, r3
/* 8011B030 00117F90  38 61 00 08 */	addi r3, r1, 8
/* 8011B034 00117F94  38 9F 00 34 */	addi r4, r31, 0x34
/* 8011B038 00117F98  48 1F 7A 49 */	bl Rotate__12CTransform4fCFRC9CVector3f
/* 8011B03C 00117F9C  C0 02 96 B0 */	lfs f0, lbl_805AB3D0@sda21(r2)
/* 8011B040 00117FA0  C0 7F 00 E8 */	lfs f3, 0xe8(r31)
/* 8011B044 00117FA4  EC 80 F8 24 */	fdivs f4, f0, f31
/* 8011B048 00117FA8  C0 41 00 08 */	lfs f2, 8(r1)
/* 8011B04C 00117FAC  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8011B050 00117FB0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8011B054 00117FB4  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8011B058 00117FB8  EC 23 00 72 */	fmuls f1, f3, f1
/* 8011B05C 00117FBC  EC 03 00 32 */	fmuls f0, f3, f0
/* 8011B060 00117FC0  EC 44 00 B2 */	fmuls f2, f4, f2
/* 8011B064 00117FC4  EC 24 00 72 */	fmuls f1, f4, f1
/* 8011B068 00117FC8  EC 04 00 32 */	fmuls f0, f4, f0
/* 8011B06C 00117FCC  D0 5E 00 00 */	stfs f2, 0(r30)
/* 8011B070 00117FD0  D0 3E 00 04 */	stfs f1, 4(r30)
/* 8011B074 00117FD4  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8011B078 00117FD8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8011B07C 00117FDC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8011B080 00117FE0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8011B084 00117FE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8011B088 00117FE8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8011B08C 00117FEC  7C 08 03 A6 */	mtlr r0
/* 8011B090 00117FF0  38 21 00 30 */	addi r1, r1, 0x30
/* 8011B094 00117FF4  4E 80 00 20 */	blr

.global MoveToInOneFrameWR__13CPhysicsActorFRC9CVector3ff
MoveToInOneFrameWR__13CPhysicsActorFRC9CVector3ff:
/* 8011B098 00117FF8  C0 02 96 B0 */	lfs f0, lbl_805AB3D0@sda21(r2)
/* 8011B09C 00117FFC  C0 84 00 00 */	lfs f4, 0(r4)
/* 8011B0A0 00118000  EC C0 08 24 */	fdivs f6, f0, f1
/* 8011B0A4 00118004  C0 43 00 40 */	lfs f2, 0x40(r3)
/* 8011B0A8 00118008  C0 A3 00 E8 */	lfs f5, 0xe8(r3)
/* 8011B0AC 0011800C  C0 64 00 04 */	lfs f3, 4(r4)
/* 8011B0B0 00118010  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 8011B0B4 00118014  C0 03 01 8C */	lfs f0, 0x18c(r3)
/* 8011B0B8 00118018  EC 84 10 28 */	fsubs f4, f4, f2
/* 8011B0BC 0011801C  C0 44 00 08 */	lfs f2, 8(r4)
/* 8011B0C0 00118020  EC 63 08 28 */	fsubs f3, f3, f1
/* 8011B0C4 00118024  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 8011B0C8 00118028  EC 85 01 32 */	fmuls f4, f5, f4
/* 8011B0CC 0011802C  EC 65 00 F2 */	fmuls f3, f5, f3
/* 8011B0D0 00118030  EC 22 08 28 */	fsubs f1, f2, f1
/* 8011B0D4 00118034  EC 86 01 32 */	fmuls f4, f6, f4
/* 8011B0D8 00118038  EC 46 00 F2 */	fmuls f2, f6, f3
/* 8011B0DC 0011803C  EC 25 00 72 */	fmuls f1, f5, f1
/* 8011B0E0 00118040  EC 00 20 2A */	fadds f0, f0, f4
/* 8011B0E4 00118044  EC 26 00 72 */	fmuls f1, f6, f1
/* 8011B0E8 00118048  D0 03 01 8C */	stfs f0, 0x18c(r3)
/* 8011B0EC 0011804C  C0 03 01 90 */	lfs f0, 0x190(r3)
/* 8011B0F0 00118050  EC 00 10 2A */	fadds f0, f0, f2
/* 8011B0F4 00118054  D0 03 01 90 */	stfs f0, 0x190(r3)
/* 8011B0F8 00118058  C0 03 01 94 */	lfs f0, 0x194(r3)
/* 8011B0FC 0011805C  EC 00 08 2A */	fadds f0, f0, f1
/* 8011B100 00118060  D0 03 01 94 */	stfs f0, 0x194(r3)
/* 8011B104 00118064  4E 80 00 20 */	blr

.global MoveToWR__13CPhysicsActorFRC9CVector3ff
MoveToWR__13CPhysicsActorFRC9CVector3ff:
/* 8011B108 00118068  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011B10C 0011806C  7C 08 02 A6 */	mflr r0
/* 8011B110 00118070  C0 02 96 B0 */	lfs f0, lbl_805AB3D0@sda21(r2)
/* 8011B114 00118074  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011B118 00118078  EC C0 08 24 */	fdivs f6, f0, f1
/* 8011B11C 0011807C  C0 84 00 00 */	lfs f4, 0(r4)
/* 8011B120 00118080  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 8011B124 00118084  C0 64 00 04 */	lfs f3, 4(r4)
/* 8011B128 00118088  C0 43 00 50 */	lfs f2, 0x50(r3)
/* 8011B12C 0011808C  C0 A3 00 E8 */	lfs f5, 0xe8(r3)
/* 8011B130 00118090  EC 84 00 28 */	fsubs f4, f4, f0
/* 8011B134 00118094  C0 24 00 08 */	lfs f1, 8(r4)
/* 8011B138 00118098  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 8011B13C 0011809C  EC 43 10 28 */	fsubs f2, f3, f2
/* 8011B140 001180A0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8011B144 001180A4  EC 25 00 B2 */	fmuls f1, f5, f2
/* 8011B148 001180A8  EC 65 01 32 */	fmuls f3, f5, f4
/* 8011B14C 001180AC  EC 05 00 32 */	fmuls f0, f5, f0
/* 8011B150 001180B0  EC 26 00 72 */	fmuls f1, f6, f1
/* 8011B154 001180B4  EC 46 00 F2 */	fmuls f2, f6, f3
/* 8011B158 001180B8  EC 06 00 32 */	fmuls f0, f6, f0
/* 8011B15C 001180BC  D0 43 00 FC */	stfs f2, 0xfc(r3)
/* 8011B160 001180C0  D0 23 01 00 */	stfs f1, 0x100(r3)
/* 8011B164 001180C4  D0 03 01 04 */	stfs f0, 0x104(r3)
/* 8011B168 001180C8  48 00 0F 11 */	bl ComputeDerivedQuantities__13CPhysicsActorFv
/* 8011B16C 001180CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011B170 001180D0  7C 08 03 A6 */	mtlr r0
/* 8011B174 001180D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8011B178 001180D8  4E 80 00 20 */	blr

.global UseCollisionImpulses__13CPhysicsActorFv
UseCollisionImpulses__13CPhysicsActorFv:
/* 8011B17C 001180DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011B180 001180E0  7C 08 02 A6 */	mflr r0
/* 8011B184 001180E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011B188 001180E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011B18C 001180EC  7C 7F 1B 78 */	mr r31, r3
/* 8011B190 001180F0  38 9F 01 80 */	addi r4, r31, 0x180
/* 8011B194 001180F4  C0 23 00 FC */	lfs f1, 0xfc(r3)
/* 8011B198 001180F8  38 7F 01 08 */	addi r3, r31, 0x108
/* 8011B19C 001180FC  C0 1F 01 68 */	lfs f0, 0x168(r31)
/* 8011B1A0 00118100  EC 01 00 2A */	fadds f0, f1, f0
/* 8011B1A4 00118104  D0 1F 00 FC */	stfs f0, 0xfc(r31)
/* 8011B1A8 00118108  C0 3F 01 00 */	lfs f1, 0x100(r31)
/* 8011B1AC 0011810C  C0 1F 01 6C */	lfs f0, 0x16c(r31)
/* 8011B1B0 00118110  EC 01 00 2A */	fadds f0, f1, f0
/* 8011B1B4 00118114  D0 1F 01 00 */	stfs f0, 0x100(r31)
/* 8011B1B8 00118118  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 8011B1BC 0011811C  C0 1F 01 70 */	lfs f0, 0x170(r31)
/* 8011B1C0 00118120  EC 01 00 2A */	fadds f0, f1, f0
/* 8011B1C4 00118124  D0 1F 01 04 */	stfs f0, 0x104(r31)
/* 8011B1C8 00118128  4B F0 02 E9 */	bl __apl__10CAxisAngleFRC10CAxisAngle
/* 8011B1CC 0011812C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8011B1D0 00118130  C4 03 66 A0 */	lfsu f0, sZeroVector__9CVector3f@l(r3)
/* 8011B1D4 00118134  D0 1F 01 68 */	stfs f0, 0x168(r31)
/* 8011B1D8 00118138  C0 03 00 04 */	lfs f0, 4(r3)
/* 8011B1DC 0011813C  D0 1F 01 6C */	stfs f0, 0x16c(r31)
/* 8011B1E0 00118140  C0 03 00 08 */	lfs f0, 8(r3)
/* 8011B1E4 00118144  D0 1F 01 70 */	stfs f0, 0x170(r31)
/* 8011B1E8 00118148  4B F0 03 4D */	bl Identity__10CAxisAngleFv
/* 8011B1EC 0011814C  80 83 00 00 */	lwz r4, 0(r3)
/* 8011B1F0 00118150  80 03 00 04 */	lwz r0, 4(r3)
/* 8011B1F4 00118154  90 9F 01 80 */	stw r4, 0x180(r31)
/* 8011B1F8 00118158  90 1F 01 84 */	stw r0, 0x184(r31)
/* 8011B1FC 0011815C  80 03 00 08 */	lwz r0, 8(r3)
/* 8011B200 00118160  7F E3 FB 78 */	mr r3, r31
/* 8011B204 00118164  90 1F 01 88 */	stw r0, 0x188(r31)
/* 8011B208 00118168  48 00 0E 71 */	bl ComputeDerivedQuantities__13CPhysicsActorFv
/* 8011B20C 0011816C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011B210 00118170  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011B214 00118174  7C 08 03 A6 */	mtlr r0
/* 8011B218 00118178  38 21 00 10 */	addi r1, r1, 0x10
/* 8011B21C 0011817C  4E 80 00 20 */	blr

.global ClearImpulses__13CPhysicsActorFv
ClearImpulses__13CPhysicsActorFv:
/* 8011B220 00118180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011B224 00118184  7C 08 02 A6 */	mflr r0
/* 8011B228 00118188  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8011B22C 0011818C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011B230 00118190  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011B234 00118194  7C 7F 1B 78 */	mr r31, r3
/* 8011B238 00118198  38 64 66 A0 */	addi r3, r4, sZeroVector__9CVector3f@l
/* 8011B23C 0011819C  C0 03 00 00 */	lfs f0, 0(r3)
/* 8011B240 001181A0  D0 1F 01 8C */	stfs f0, 0x18c(r31)
/* 8011B244 001181A4  C0 03 00 04 */	lfs f0, 4(r3)
/* 8011B248 001181A8  D0 1F 01 90 */	stfs f0, 0x190(r31)
/* 8011B24C 001181AC  C0 03 00 08 */	lfs f0, 8(r3)
/* 8011B250 001181B0  D0 1F 01 94 */	stfs f0, 0x194(r31)
/* 8011B254 001181B4  C0 1F 01 8C */	lfs f0, 0x18c(r31)
/* 8011B258 001181B8  D0 1F 01 68 */	stfs f0, 0x168(r31)
/* 8011B25C 001181BC  C0 1F 01 90 */	lfs f0, 0x190(r31)
/* 8011B260 001181C0  D0 1F 01 6C */	stfs f0, 0x16c(r31)
/* 8011B264 001181C4  C0 1F 01 94 */	lfs f0, 0x194(r31)
/* 8011B268 001181C8  D0 1F 01 70 */	stfs f0, 0x170(r31)
/* 8011B26C 001181CC  4B F0 02 C9 */	bl Identity__10CAxisAngleFv
/* 8011B270 001181D0  80 83 00 00 */	lwz r4, 0(r3)
/* 8011B274 001181D4  80 03 00 04 */	lwz r0, 4(r3)
/* 8011B278 001181D8  90 9F 01 98 */	stw r4, 0x198(r31)
/* 8011B27C 001181DC  90 1F 01 9C */	stw r0, 0x19c(r31)
/* 8011B280 001181E0  80 03 00 08 */	lwz r0, 8(r3)
/* 8011B284 001181E4  90 1F 01 A0 */	stw r0, 0x1a0(r31)
/* 8011B288 001181E8  80 7F 01 98 */	lwz r3, 0x198(r31)
/* 8011B28C 001181EC  80 1F 01 9C */	lwz r0, 0x19c(r31)
/* 8011B290 001181F0  90 7F 01 80 */	stw r3, 0x180(r31)
/* 8011B294 001181F4  90 1F 01 84 */	stw r0, 0x184(r31)
/* 8011B298 001181F8  80 1F 01 A0 */	lwz r0, 0x1a0(r31)
/* 8011B29C 001181FC  90 1F 01 88 */	stw r0, 0x188(r31)
/* 8011B2A0 00118200  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011B2A4 00118204  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011B2A8 00118208  7C 08 03 A6 */	mtlr r0
/* 8011B2AC 0011820C  38 21 00 10 */	addi r1, r1, 0x10
/* 8011B2B0 00118210  4E 80 00 20 */	blr

.global ClearForcesAndTorques__13CPhysicsActorFv
ClearForcesAndTorques__13CPhysicsActorFv:
/* 8011B2B4 00118214  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011B2B8 00118218  7C 08 02 A6 */	mflr r0
/* 8011B2BC 0011821C  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8011B2C0 00118220  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011B2C4 00118224  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011B2C8 00118228  7C 7F 1B 78 */	mr r31, r3
/* 8011B2CC 0011822C  38 64 66 A0 */	addi r3, r4, sZeroVector__9CVector3f@l
/* 8011B2D0 00118230  C0 03 00 00 */	lfs f0, 0(r3)
/* 8011B2D4 00118234  D0 1F 01 8C */	stfs f0, 0x18c(r31)
/* 8011B2D8 00118238  C0 03 00 04 */	lfs f0, 4(r3)
/* 8011B2DC 0011823C  D0 1F 01 90 */	stfs f0, 0x190(r31)
/* 8011B2E0 00118240  C0 03 00 08 */	lfs f0, 8(r3)
/* 8011B2E4 00118244  D0 1F 01 94 */	stfs f0, 0x194(r31)
/* 8011B2E8 00118248  C0 1F 01 8C */	lfs f0, 0x18c(r31)
/* 8011B2EC 0011824C  D0 1F 01 68 */	stfs f0, 0x168(r31)
/* 8011B2F0 00118250  C0 1F 01 90 */	lfs f0, 0x190(r31)
/* 8011B2F4 00118254  D0 1F 01 6C */	stfs f0, 0x16c(r31)
/* 8011B2F8 00118258  C0 1F 01 94 */	lfs f0, 0x194(r31)
/* 8011B2FC 0011825C  D0 1F 01 70 */	stfs f0, 0x170(r31)
/* 8011B300 00118260  C0 1F 01 68 */	lfs f0, 0x168(r31)
/* 8011B304 00118264  D0 1F 01 5C */	stfs f0, 0x15c(r31)
/* 8011B308 00118268  C0 1F 01 6C */	lfs f0, 0x16c(r31)
/* 8011B30C 0011826C  D0 1F 01 60 */	stfs f0, 0x160(r31)
/* 8011B310 00118270  C0 1F 01 70 */	lfs f0, 0x170(r31)
/* 8011B314 00118274  D0 1F 01 64 */	stfs f0, 0x164(r31)
/* 8011B318 00118278  4B F0 02 1D */	bl Identity__10CAxisAngleFv
/* 8011B31C 0011827C  80 83 00 00 */	lwz r4, 0(r3)
/* 8011B320 00118280  80 03 00 04 */	lwz r0, 4(r3)
/* 8011B324 00118284  90 9F 01 98 */	stw r4, 0x198(r31)
/* 8011B328 00118288  90 1F 01 9C */	stw r0, 0x19c(r31)
/* 8011B32C 0011828C  80 03 00 08 */	lwz r0, 8(r3)
/* 8011B330 00118290  90 1F 01 A0 */	stw r0, 0x1a0(r31)
/* 8011B334 00118294  80 7F 01 98 */	lwz r3, 0x198(r31)
/* 8011B338 00118298  80 1F 01 9C */	lwz r0, 0x19c(r31)
/* 8011B33C 0011829C  90 7F 01 80 */	stw r3, 0x180(r31)
/* 8011B340 001182A0  90 1F 01 84 */	stw r0, 0x184(r31)
/* 8011B344 001182A4  80 1F 01 A0 */	lwz r0, 0x1a0(r31)
/* 8011B348 001182A8  90 1F 01 88 */	stw r0, 0x188(r31)
/* 8011B34C 001182AC  80 7F 01 80 */	lwz r3, 0x180(r31)
/* 8011B350 001182B0  80 1F 01 84 */	lwz r0, 0x184(r31)
/* 8011B354 001182B4  90 7F 01 74 */	stw r3, 0x174(r31)
/* 8011B358 001182B8  90 1F 01 78 */	stw r0, 0x178(r31)
/* 8011B35C 001182BC  80 1F 01 88 */	lwz r0, 0x188(r31)
/* 8011B360 001182C0  90 1F 01 7C */	stw r0, 0x17c(r31)
/* 8011B364 001182C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011B368 001182C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011B36C 001182CC  7C 08 03 A6 */	mtlr r0
/* 8011B370 001182D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8011B374 001182D4  4E 80 00 20 */	blr

.global Stop__13CPhysicsActorFv
Stop__13CPhysicsActorFv:
/* 8011B378 001182D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011B37C 001182DC  7C 08 02 A6 */	mflr r0
/* 8011B380 001182E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011B384 001182E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011B388 001182E8  7C 7F 1B 78 */	mr r31, r3
/* 8011B38C 001182EC  4B FF FF 29 */	bl ClearForcesAndTorques__13CPhysicsActorFv
/* 8011B390 001182F0  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8011B394 001182F4  C4 03 66 A0 */	lfsu f0, sZeroVector__9CVector3f@l(r3)
/* 8011B398 001182F8  D0 1F 00 FC */	stfs f0, 0xfc(r31)
/* 8011B39C 001182FC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8011B3A0 00118300  D0 1F 01 00 */	stfs f0, 0x100(r31)
/* 8011B3A4 00118304  C0 03 00 08 */	lfs f0, 8(r3)
/* 8011B3A8 00118308  D0 1F 01 04 */	stfs f0, 0x104(r31)
/* 8011B3AC 0011830C  4B F0 01 89 */	bl Identity__10CAxisAngleFv
/* 8011B3B0 00118310  80 83 00 00 */	lwz r4, 0(r3)
/* 8011B3B4 00118314  80 03 00 04 */	lwz r0, 4(r3)
/* 8011B3B8 00118318  90 9F 01 08 */	stw r4, 0x108(r31)
/* 8011B3BC 0011831C  90 1F 01 0C */	stw r0, 0x10c(r31)
/* 8011B3C0 00118320  80 03 00 08 */	lwz r0, 8(r3)
/* 8011B3C4 00118324  7F E3 FB 78 */	mr r3, r31
/* 8011B3C8 00118328  90 1F 01 10 */	stw r0, 0x110(r31)
/* 8011B3CC 0011832C  48 00 0C AD */	bl ComputeDerivedQuantities__13CPhysicsActorFv
/* 8011B3D0 00118330  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011B3D4 00118334  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011B3D8 00118338  7C 08 03 A6 */	mtlr r0
/* 8011B3DC 0011833C  38 21 00 10 */	addi r1, r1, 0x10
/* 8011B3E0 00118340  4E 80 00 20 */	blr

.global WillMove__13CPhysicsActorFRC13CStateManager
WillMove__13CPhysicsActorFRC13CStateManager:
/* 8011B3E4 00118344  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8011B3E8 00118348  7C 08 02 A6 */	mflr r0
/* 8011B3EC 0011834C  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8011B3F0 00118350  C0 22 96 C4 */	lfs f1, lbl_805AB3E4@sda21(r2)
/* 8011B3F4 00118354  90 01 00 24 */	stw r0, 0x24(r1)
/* 8011B3F8 00118358  38 84 66 A0 */	addi r4, r4, sZeroVector__9CVector3f@l
/* 8011B3FC 0011835C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8011B400 00118360  7C 7F 1B 78 */	mr r31, r3
/* 8011B404 00118364  38 7F 01 38 */	addi r3, r31, 0x138
/* 8011B408 00118368  48 1F 4B 5D */	bl close_enough__FRC9CVector3fRC9CVector3ff
/* 8011B40C 0011836C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011B410 00118370  41 82 00 EC */	beq lbl_8011B4FC
/* 8011B414 00118374  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8011B418 00118378  C0 22 96 C4 */	lfs f1, lbl_805AB3E4@sda21(r2)
/* 8011B41C 0011837C  38 83 66 A0 */	addi r4, r3, sZeroVector__9CVector3f@l
/* 8011B420 00118380  38 7F 01 68 */	addi r3, r31, 0x168
/* 8011B424 00118384  48 1F 4B 41 */	bl close_enough__FRC9CVector3fRC9CVector3ff
/* 8011B428 00118388  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011B42C 0011838C  41 82 00 D0 */	beq lbl_8011B4FC
/* 8011B430 00118390  38 7F 01 74 */	addi r3, r31, 0x174
/* 8011B434 00118394  4B F0 00 FD */	bl GetVector__10CAxisAngleCFv
/* 8011B438 00118398  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8011B43C 0011839C  C0 22 96 C4 */	lfs f1, lbl_805AB3E4@sda21(r2)
/* 8011B440 001183A0  38 84 66 A0 */	addi r4, r4, sZeroVector__9CVector3f@l
/* 8011B444 001183A4  48 1F 4B 21 */	bl close_enough__FRC9CVector3fRC9CVector3ff
/* 8011B448 001183A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011B44C 001183AC  41 82 00 B0 */	beq lbl_8011B4FC
/* 8011B450 001183B0  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8011B454 001183B4  C0 22 96 C4 */	lfs f1, lbl_805AB3E4@sda21(r2)
/* 8011B458 001183B8  38 83 66 A0 */	addi r4, r3, sZeroVector__9CVector3f@l
/* 8011B45C 001183BC  38 7F 01 8C */	addi r3, r31, 0x18c
/* 8011B460 001183C0  48 1F 4B 05 */	bl close_enough__FRC9CVector3fRC9CVector3ff
/* 8011B464 001183C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011B468 001183C8  41 82 00 94 */	beq lbl_8011B4FC
/* 8011B46C 001183CC  38 7F 01 44 */	addi r3, r31, 0x144
/* 8011B470 001183D0  4B F0 00 C1 */	bl GetVector__10CAxisAngleCFv
/* 8011B474 001183D4  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8011B478 001183D8  C0 22 96 C4 */	lfs f1, lbl_805AB3E4@sda21(r2)
/* 8011B47C 001183DC  38 84 66 A0 */	addi r4, r4, sZeroVector__9CVector3f@l
/* 8011B480 001183E0  48 1F 4A E5 */	bl close_enough__FRC9CVector3fRC9CVector3ff
/* 8011B484 001183E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011B488 001183E8  41 82 00 74 */	beq lbl_8011B4FC
/* 8011B48C 001183EC  38 7F 01 80 */	addi r3, r31, 0x180
/* 8011B490 001183F0  4B F0 00 A1 */	bl GetVector__10CAxisAngleCFv
/* 8011B494 001183F4  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8011B498 001183F8  C0 22 96 C4 */	lfs f1, lbl_805AB3E4@sda21(r2)
/* 8011B49C 001183FC  38 84 66 A0 */	addi r4, r4, sZeroVector__9CVector3f@l
/* 8011B4A0 00118400  48 1F 4A C5 */	bl close_enough__FRC9CVector3fRC9CVector3ff
/* 8011B4A4 00118404  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011B4A8 00118408  41 82 00 54 */	beq lbl_8011B4FC
/* 8011B4AC 0011840C  38 7F 01 98 */	addi r3, r31, 0x198
/* 8011B4B0 00118410  4B F0 00 81 */	bl GetVector__10CAxisAngleCFv
/* 8011B4B4 00118414  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8011B4B8 00118418  C0 22 96 C4 */	lfs f1, lbl_805AB3E4@sda21(r2)
/* 8011B4BC 0011841C  38 84 66 A0 */	addi r4, r4, sZeroVector__9CVector3f@l
/* 8011B4C0 00118420  48 1F 4A A5 */	bl close_enough__FRC9CVector3fRC9CVector3ff
/* 8011B4C4 00118424  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011B4C8 00118428  41 82 00 34 */	beq lbl_8011B4FC
/* 8011B4CC 0011842C  7F E4 FB 78 */	mr r4, r31
/* 8011B4D0 00118430  38 61 00 08 */	addi r3, r1, 8
/* 8011B4D4 00118434  4B FF F8 11 */	bl GetTotalForceWR__13CPhysicsActorCFv
/* 8011B4D8 00118438  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8011B4DC 0011843C  C0 22 96 C4 */	lfs f1, lbl_805AB3E4@sda21(r2)
/* 8011B4E0 00118440  38 83 66 A0 */	addi r4, r3, sZeroVector__9CVector3f@l
/* 8011B4E4 00118444  38 61 00 08 */	addi r3, r1, 8
/* 8011B4E8 00118448  48 1F 4A 7D */	bl close_enough__FRC9CVector3fRC9CVector3ff
/* 8011B4EC 0011844C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011B4F0 00118450  41 82 00 0C */	beq lbl_8011B4FC
/* 8011B4F4 00118454  38 60 00 00 */	li r3, 0
/* 8011B4F8 00118458  48 00 00 08 */	b lbl_8011B500
lbl_8011B4FC:
/* 8011B4FC 0011845C  38 60 00 01 */	li r3, 1
lbl_8011B500:
/* 8011B500 00118460  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8011B504 00118464  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8011B508 00118468  7C 08 03 A6 */	mtlr r0
/* 8011B50C 0011846C  38 21 00 20 */	addi r1, r1, 0x20
/* 8011B510 00118470  4E 80 00 20 */	blr

.global AddMotionState__13CPhysicsActorFRC12CMotionState
AddMotionState__13CPhysicsActorFRC12CMotionState:
/* 8011B514 00118474  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8011B518 00118478  7C 08 02 A6 */	mflr r0
/* 8011B51C 0011847C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8011B520 00118480  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8011B524 00118484  7C 9F 23 78 */	mr r31, r4
/* 8011B528 00118488  93 C1 00 98 */	stw r30, 0x98(r1)
/* 8011B52C 0011848C  7C 7E 1B 78 */	mr r30, r3
/* 8011B530 00118490  38 61 00 30 */	addi r3, r1, 0x30
/* 8011B534 00118494  38 9E 00 34 */	addi r4, r30, 0x34
/* 8011B538 00118498  48 1F 6B F1 */	bl FromMatrix__11CQuaternionFRC12CTransform4f
/* 8011B53C 0011849C  38 61 00 40 */	addi r3, r1, 0x40
/* 8011B540 001184A0  38 81 00 30 */	addi r4, r1, 0x30
/* 8011B544 001184A4  48 1F 57 D1 */	bl BuildFromQuaternion__13CNUQuaternionFRC11CQuaternion
/* 8011B548 001184A8  C0 61 00 40 */	lfs f3, 0x40(r1)
/* 8011B54C 001184AC  38 61 00 50 */	addi r3, r1, 0x50
/* 8011B550 001184B0  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 8011B554 001184B4  38 9F 00 0C */	addi r4, r31, 0xc
/* 8011B558 001184B8  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 8011B55C 001184BC  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8011B560 001184C0  D0 61 00 50 */	stfs f3, 0x50(r1)
/* 8011B564 001184C4  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 8011B568 001184C8  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 8011B56C 001184CC  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8011B570 001184D0  48 1F 59 21 */	bl __apl__13CNUQuaternionFRC13CNUQuaternion
/* 8011B574 001184D4  38 61 00 20 */	addi r3, r1, 0x20
/* 8011B578 001184D8  38 81 00 50 */	addi r4, r1, 0x50
/* 8011B57C 001184DC  48 1F 54 6D */	bl FromNUQuaternion__11CQuaternionFRC13CNUQuaternion
/* 8011B580 001184E0  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8011B584 001184E4  38 61 00 60 */	addi r3, r1, 0x60
/* 8011B588 001184E8  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8011B58C 001184EC  38 81 00 20 */	addi r4, r1, 0x20
/* 8011B590 001184F0  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8011B594 001184F4  38 A1 00 08 */	addi r5, r1, 8
/* 8011B598 001184F8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8011B59C 001184FC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8011B5A0 00118500  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8011B5A4 00118504  48 1F 69 19 */	bl BuildTransform4f__11CQuaternionCFRC9CVector3f
/* 8011B5A8 00118508  38 7E 00 34 */	addi r3, r30, 0x34
/* 8011B5AC 0011850C  38 81 00 60 */	addi r4, r1, 0x60
/* 8011B5B0 00118510  48 1F 75 91 */	bl __as__12CTransform4fFRC12CTransform4f
/* 8011B5B4 00118514  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 8011B5B8 00118518  38 A0 00 01 */	li r5, 1
/* 8011B5BC 0011851C  50 A0 26 F6 */	rlwimi r0, r5, 4, 0x1b, 0x1b
/* 8011B5C0 00118520  7F C3 F3 78 */	mr r3, r30
/* 8011B5C4 00118524  98 1E 00 E4 */	stb r0, 0xe4(r30)
/* 8011B5C8 00118528  38 81 00 14 */	addi r4, r1, 0x14
/* 8011B5CC 0011852C  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 8011B5D0 00118530  50 A0 1F 38 */	rlwimi r0, r5, 3, 0x1c, 0x1c
/* 8011B5D4 00118534  98 1E 00 E4 */	stb r0, 0xe4(r30)
/* 8011B5D8 00118538  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 8011B5DC 0011853C  50 A0 17 7A */	rlwimi r0, r5, 2, 0x1d, 0x1d
/* 8011B5E0 00118540  98 1E 00 E4 */	stb r0, 0xe4(r30)
/* 8011B5E4 00118544  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8011B5E8 00118548  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8011B5EC 0011854C  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 8011B5F0 00118550  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8011B5F4 00118554  EC 81 00 2A */	fadds f4, f1, f0
/* 8011B5F8 00118558  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8011B5FC 0011855C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8011B600 00118560  EC 43 10 2A */	fadds f2, f3, f2
/* 8011B604 00118564  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 8011B608 00118568  EC 01 00 2A */	fadds f0, f1, f0
/* 8011B60C 0011856C  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8011B610 00118570  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8011B614 00118574  4B F3 78 79 */	bl SetTranslation__6CActorFRC9CVector3f
/* 8011B618 00118578  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 8011B61C 0011857C  38 7E 01 08 */	addi r3, r30, 0x108
/* 8011B620 00118580  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8011B624 00118584  38 9F 00 28 */	addi r4, r31, 0x28
/* 8011B628 00118588  EC 01 00 2A */	fadds f0, f1, f0
/* 8011B62C 0011858C  D0 1E 00 FC */	stfs f0, 0xfc(r30)
/* 8011B630 00118590  C0 3E 01 00 */	lfs f1, 0x100(r30)
/* 8011B634 00118594  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8011B638 00118598  EC 01 00 2A */	fadds f0, f1, f0
/* 8011B63C 0011859C  D0 1E 01 00 */	stfs f0, 0x100(r30)
/* 8011B640 001185A0  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 8011B644 001185A4  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8011B648 001185A8  EC 01 00 2A */	fadds f0, f1, f0
/* 8011B64C 001185AC  D0 1E 01 04 */	stfs f0, 0x104(r30)
/* 8011B650 001185B0  4B EF FE 61 */	bl __apl__10CAxisAngleFRC10CAxisAngle
/* 8011B654 001185B4  7F C3 F3 78 */	mr r3, r30
/* 8011B658 001185B8  48 00 0A 21 */	bl ComputeDerivedQuantities__13CPhysicsActorFv
/* 8011B65C 001185BC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8011B660 001185C0  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8011B664 001185C4  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 8011B668 001185C8  7C 08 03 A6 */	mtlr r0
/* 8011B66C 001185CC  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8011B670 001185D0  4E 80 00 20 */	blr

.global GetMotionState__13CPhysicsActorCFv
GetMotionState__13CPhysicsActorCFv:
/* 8011B674 001185D4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8011B678 001185D8  7C 08 02 A6 */	mflr r0
/* 8011B67C 001185DC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8011B680 001185E0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8011B684 001185E4  7C 9F 23 78 */	mr r31, r4
/* 8011B688 001185E8  38 9F 00 34 */	addi r4, r31, 0x34
/* 8011B68C 001185EC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8011B690 001185F0  7C 7E 1B 78 */	mr r30, r3
/* 8011B694 001185F4  38 61 00 08 */	addi r3, r1, 8
/* 8011B698 001185F8  48 1F 6A 91 */	bl FromMatrix__11CQuaternionFRC12CTransform4f
/* 8011B69C 001185FC  38 61 00 18 */	addi r3, r1, 0x18
/* 8011B6A0 00118600  38 81 00 08 */	addi r4, r1, 8
/* 8011B6A4 00118604  48 1F 56 71 */	bl BuildFromQuaternion__13CNUQuaternionFRC11CQuaternion
/* 8011B6A8 00118608  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8011B6AC 0011860C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8011B6B0 00118610  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8011B6B4 00118614  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8011B6B8 00118618  D0 3E 00 04 */	stfs f1, 4(r30)
/* 8011B6BC 0011861C  D0 5E 00 08 */	stfs f2, 8(r30)
/* 8011B6C0 00118620  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8011B6C4 00118624  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8011B6C8 00118628  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8011B6CC 0011862C  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 8011B6D0 00118630  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8011B6D4 00118634  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 8011B6D8 00118638  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8011B6DC 0011863C  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 8011B6E0 00118640  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 8011B6E4 00118644  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 8011B6E8 00118648  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 8011B6EC 0011864C  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 8011B6F0 00118650  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 8011B6F4 00118654  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 8011B6F8 00118658  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8011B6FC 0011865C  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 8011B700 00118660  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 8011B704 00118664  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 8011B708 00118668  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 8011B70C 0011866C  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 8011B710 00118670  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8011B714 00118674  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8011B718 00118678  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8011B71C 0011867C  7C 08 03 A6 */	mtlr r0
/* 8011B720 00118680  38 21 00 30 */	addi r1, r1, 0x30
/* 8011B724 00118684  4E 80 00 20 */	blr

.global SetMotionState__13CPhysicsActorFRC12CMotionState
SetMotionState__13CPhysicsActorFRC12CMotionState:
/* 8011B728 00118688  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8011B72C 0011868C  7C 08 02 A6 */	mflr r0
/* 8011B730 00118690  90 01 00 64 */	stw r0, 0x64(r1)
/* 8011B734 00118694  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8011B738 00118698  7C 9F 23 78 */	mr r31, r4
/* 8011B73C 0011869C  38 9F 00 0C */	addi r4, r31, 0xc
/* 8011B740 001186A0  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8011B744 001186A4  7C 7E 1B 78 */	mr r30, r3
/* 8011B748 001186A8  38 61 00 14 */	addi r3, r1, 0x14
/* 8011B74C 001186AC  48 1F 52 9D */	bl FromNUQuaternion__11CQuaternionFRC13CNUQuaternion
/* 8011B750 001186B0  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8011B754 001186B4  38 61 00 24 */	addi r3, r1, 0x24
/* 8011B758 001186B8  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8011B75C 001186BC  38 81 00 14 */	addi r4, r1, 0x14
/* 8011B760 001186C0  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8011B764 001186C4  38 A1 00 08 */	addi r5, r1, 8
/* 8011B768 001186C8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8011B76C 001186CC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8011B770 001186D0  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8011B774 001186D4  48 1F 67 49 */	bl BuildTransform4f__11CQuaternionCFRC9CVector3f
/* 8011B778 001186D8  38 7E 00 34 */	addi r3, r30, 0x34
/* 8011B77C 001186DC  38 81 00 24 */	addi r4, r1, 0x24
/* 8011B780 001186E0  48 1F 73 C1 */	bl __as__12CTransform4fFRC12CTransform4f
/* 8011B784 001186E4  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 8011B788 001186E8  38 A0 00 01 */	li r5, 1
/* 8011B78C 001186EC  50 A0 26 F6 */	rlwimi r0, r5, 4, 0x1b, 0x1b
/* 8011B790 001186F0  7F C3 F3 78 */	mr r3, r30
/* 8011B794 001186F4  98 1E 00 E4 */	stb r0, 0xe4(r30)
/* 8011B798 001186F8  7F E4 FB 78 */	mr r4, r31
/* 8011B79C 001186FC  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 8011B7A0 00118700  50 A0 1F 38 */	rlwimi r0, r5, 3, 0x1c, 0x1c
/* 8011B7A4 00118704  98 1E 00 E4 */	stb r0, 0xe4(r30)
/* 8011B7A8 00118708  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 8011B7AC 0011870C  50 A0 17 7A */	rlwimi r0, r5, 2, 0x1d, 0x1d
/* 8011B7B0 00118710  98 1E 00 E4 */	stb r0, 0xe4(r30)
/* 8011B7B4 00118714  4B F3 76 D9 */	bl SetTranslation__6CActorFRC9CVector3f
/* 8011B7B8 00118718  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8011B7BC 0011871C  7F C3 F3 78 */	mr r3, r30
/* 8011B7C0 00118720  D0 1E 00 FC */	stfs f0, 0xfc(r30)
/* 8011B7C4 00118724  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8011B7C8 00118728  D0 1E 01 00 */	stfs f0, 0x100(r30)
/* 8011B7CC 0011872C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8011B7D0 00118730  D0 1E 01 04 */	stfs f0, 0x104(r30)
/* 8011B7D4 00118734  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8011B7D8 00118738  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8011B7DC 0011873C  90 9E 01 08 */	stw r4, 0x108(r30)
/* 8011B7E0 00118740  90 1E 01 0C */	stw r0, 0x10c(r30)
/* 8011B7E4 00118744  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8011B7E8 00118748  90 1E 01 10 */	stw r0, 0x110(r30)
/* 8011B7EC 0011874C  48 00 08 8D */	bl ComputeDerivedQuantities__13CPhysicsActorFv
/* 8011B7F0 00118750  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8011B7F4 00118754  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8011B7F8 00118758  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8011B7FC 0011875C  7C 08 03 A6 */	mtlr r0
/* 8011B800 00118760  38 21 00 60 */	addi r1, r1, 0x60
/* 8011B804 00118764  4E 80 00 20 */	blr

.global PredictMotion_Internal__13CPhysicsActorCFf
PredictMotion_Internal__13CPhysicsActorCFf:
/* 8011B808 00118768  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8011B80C 0011876C  7C 08 02 A6 */	mflr r0
/* 8011B810 00118770  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8011B814 00118774  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 8011B818 00118778  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, qr0
/* 8011B81C 0011877C  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 8011B820 00118780  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, qr0
/* 8011B824 00118784  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 8011B828 00118788  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, qr0
/* 8011B82C 0011878C  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 8011B830 00118790  F3 81 00 A8 */	psq_st f28, 168(r1), 0, qr0
/* 8011B834 00118794  DB 61 00 90 */	stfd f27, 0x90(r1)
/* 8011B838 00118798  F3 61 00 98 */	psq_st f27, 152(r1), 0, qr0
/* 8011B83C 0011879C  DB 41 00 80 */	stfd f26, 0x80(r1)
/* 8011B840 001187A0  F3 41 00 88 */	psq_st f26, 136(r1), 0, qr0
/* 8011B844 001187A4  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 8011B848 001187A8  93 C1 00 78 */	stw r30, 0x78(r1)
/* 8011B84C 001187AC  88 04 00 F8 */	lbz r0, 0xf8(r4)
/* 8011B850 001187B0  FF 40 08 90 */	fmr f26, f1
/* 8011B854 001187B4  7C 9F 23 78 */	mr r31, r4
/* 8011B858 001187B8  7C 7E 1B 78 */	mr r30, r3
/* 8011B85C 001187BC  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8011B860 001187C0  40 82 00 88 */	bne lbl_8011B8E8
/* 8011B864 001187C4  38 61 00 3C */	addi r3, r1, 0x3c
/* 8011B868 001187C8  48 00 00 CD */	bl PredictLinearMotion__13CPhysicsActorCFf
/* 8011B86C 001187CC  FC 20 D0 90 */	fmr f1, f26
/* 8011B870 001187D0  C3 E1 00 3C */	lfs f31, 0x3c(r1)
/* 8011B874 001187D4  C3 C1 00 40 */	lfs f30, 0x40(r1)
/* 8011B878 001187D8  7F E4 FB 78 */	mr r4, r31
/* 8011B87C 001187DC  C3 A1 00 44 */	lfs f29, 0x44(r1)
/* 8011B880 001187E0  38 61 00 08 */	addi r3, r1, 8
/* 8011B884 001187E4  C3 81 00 58 */	lfs f28, 0x58(r1)
/* 8011B888 001187E8  C3 61 00 5C */	lfs f27, 0x5c(r1)
/* 8011B88C 001187EC  C3 41 00 60 */	lfs f26, 0x60(r1)
/* 8011B890 001187F0  48 00 02 21 */	bl PredictAngularMotion__13CPhysicsActorCFf
/* 8011B894 001187F4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8011B898 001187F8  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8011B89C 001187FC  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 8011B8A0 00118800  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 8011B8A4 00118804  C0 81 00 30 */	lfs f4, 0x30(r1)
/* 8011B8A8 00118808  C0 A1 00 34 */	lfs f5, 0x34(r1)
/* 8011B8AC 0011880C  C0 C1 00 38 */	lfs f6, 0x38(r1)
/* 8011B8B0 00118810  D3 FE 00 00 */	stfs f31, 0(r30)
/* 8011B8B4 00118814  D3 DE 00 04 */	stfs f30, 4(r30)
/* 8011B8B8 00118818  D3 BE 00 08 */	stfs f29, 8(r30)
/* 8011B8BC 0011881C  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8011B8C0 00118820  D0 3E 00 10 */	stfs f1, 0x10(r30)
/* 8011B8C4 00118824  D0 5E 00 14 */	stfs f2, 0x14(r30)
/* 8011B8C8 00118828  D0 7E 00 18 */	stfs f3, 0x18(r30)
/* 8011B8CC 0011882C  D3 9E 00 1C */	stfs f28, 0x1c(r30)
/* 8011B8D0 00118830  D3 7E 00 20 */	stfs f27, 0x20(r30)
/* 8011B8D4 00118834  D3 5E 00 24 */	stfs f26, 0x24(r30)
/* 8011B8D8 00118838  D0 9E 00 28 */	stfs f4, 0x28(r30)
/* 8011B8DC 0011883C  D0 BE 00 2C */	stfs f5, 0x2c(r30)
/* 8011B8E0 00118840  D0 DE 00 30 */	stfs f6, 0x30(r30)
/* 8011B8E4 00118844  48 00 00 08 */	b lbl_8011B8EC
lbl_8011B8E8:
/* 8011B8E8 00118848  48 00 00 4D */	bl PredictLinearMotion__13CPhysicsActorCFf
lbl_8011B8EC:
/* 8011B8EC 0011884C  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, qr0
/* 8011B8F0 00118850  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 8011B8F4 00118854  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, qr0
/* 8011B8F8 00118858  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 8011B8FC 0011885C  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, qr0
/* 8011B900 00118860  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 8011B904 00118864  E3 81 00 A8 */	psq_l f28, 168(r1), 0, qr0
/* 8011B908 00118868  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 8011B90C 0011886C  E3 61 00 98 */	psq_l f27, 152(r1), 0, qr0
/* 8011B910 00118870  CB 61 00 90 */	lfd f27, 0x90(r1)
/* 8011B914 00118874  E3 41 00 88 */	psq_l f26, 136(r1), 0, qr0
/* 8011B918 00118878  CB 41 00 80 */	lfd f26, 0x80(r1)
/* 8011B91C 0011887C  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 8011B920 00118880  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8011B924 00118884  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 8011B928 00118888  7C 08 03 A6 */	mtlr r0
/* 8011B92C 0011888C  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8011B930 00118890  4E 80 00 20 */	blr

.global PredictLinearMotion__13CPhysicsActorCFf
PredictLinearMotion__13CPhysicsActorCFf:
/* 8011B934 00118894  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8011B938 00118898  7C 08 02 A6 */	mflr r0
/* 8011B93C 0011889C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8011B940 001188A0  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 8011B944 001188A4  F3 E1 00 98 */	psq_st f31, 152(r1), 0, qr0
/* 8011B948 001188A8  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 8011B94C 001188AC  F3 C1 00 88 */	psq_st f30, 136(r1), 0, qr0
/* 8011B950 001188B0  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 8011B954 001188B4  F3 A1 00 78 */	psq_st f29, 120(r1), 0, qr0
/* 8011B958 001188B8  DB 81 00 60 */	stfd f28, 0x60(r1)
/* 8011B95C 001188BC  F3 81 00 68 */	psq_st f28, 104(r1), 0, qr0
/* 8011B960 001188C0  DB 61 00 50 */	stfd f27, 0x50(r1)
/* 8011B964 001188C4  F3 61 00 58 */	psq_st f27, 88(r1), 0, qr0
/* 8011B968 001188C8  DB 41 00 40 */	stfd f26, 0x40(r1)
/* 8011B96C 001188CC  F3 41 00 48 */	psq_st f26, 72(r1), 0, qr0
/* 8011B970 001188D0  DB 21 00 30 */	stfd f25, 0x30(r1)
/* 8011B974 001188D4  F3 21 00 38 */	psq_st f25, 56(r1), 0, qr0
/* 8011B978 001188D8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8011B97C 001188DC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8011B980 001188E0  FF E0 08 90 */	fmr f31, f1
/* 8011B984 001188E4  7C 7E 1B 78 */	mr r30, r3
/* 8011B988 001188E8  7C 9F 23 78 */	mr r31, r4
/* 8011B98C 001188EC  38 61 00 18 */	addi r3, r1, 0x18
/* 8011B990 001188F0  48 00 04 39 */	bl CalculateNewVelocityWR_UsingImpulses__13CPhysicsActorCFv
/* 8011B994 001188F4  C0 3F 01 5C */	lfs f1, 0x15c(r31)
/* 8011B998 001188F8  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 8011B99C 001188FC  C0 7F 01 60 */	lfs f3, 0x160(r31)
/* 8011B9A0 00118900  C0 5F 01 54 */	lfs f2, 0x154(r31)
/* 8011B9A4 00118904  EF 81 00 2A */	fadds f28, f1, f0
/* 8011B9A8 00118908  C0 3F 01 64 */	lfs f1, 0x164(r31)
/* 8011B9AC 0011890C  C0 1F 01 58 */	lfs f0, 0x158(r31)
/* 8011B9B0 00118910  EF A3 10 2A */	fadds f29, f3, f2
/* 8011B9B4 00118914  C3 21 00 18 */	lfs f25, 0x18(r1)
/* 8011B9B8 00118918  EF C1 00 2A */	fadds f30, f1, f0
/* 8011B9BC 0011891C  C3 61 00 1C */	lfs f27, 0x1c(r1)
/* 8011B9C0 00118920  C3 41 00 20 */	lfs f26, 0x20(r1)
/* 8011B9C4 00118924  4B EF FB 71 */	bl Identity__10CAxisAngleFv
/* 8011B9C8 00118928  EC BF 07 32 */	fmuls f5, f31, f28
/* 8011B9CC 0011892C  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8011B9D0 00118930  EC 7F 07 72 */	fmuls f3, f31, f29
/* 8011B9D4 00118934  C0 3F 01 6C */	lfs f1, 0x16c(r31)
/* 8011B9D8 00118938  EC 5F 07 B2 */	fmuls f2, f31, f30
/* 8011B9DC 0011893C  C0 9F 01 68 */	lfs f4, 0x168(r31)
/* 8011B9E0 00118940  C0 1F 01 70 */	lfs f0, 0x170(r31)
/* 8011B9E4 00118944  EF A3 08 2A */	fadds f29, f3, f1
/* 8011B9E8 00118948  7C 7F 1B 78 */	mr r31, r3
/* 8011B9EC 0011894C  EF C5 20 2A */	fadds f30, f5, f4
/* 8011B9F0 00118950  EF 82 00 2A */	fadds f28, f2, f0
/* 8011B9F4 00118954  C0 22 96 A4 */	lfs f1, lbl_805AB3C4@sda21(r2)
/* 8011B9F8 00118958  38 84 66 A0 */	addi r4, r4, sZeroVector__9CVector3f@l
/* 8011B9FC 0011895C  38 61 00 08 */	addi r3, r1, 8
/* 8011BA00 00118960  48 1F 56 01 */	bl __ct__13CNUQuaternionFfRC9CVector3f
/* 8011BA04 00118964  EC 5F 06 72 */	fmuls f2, f31, f25
/* 8011BA08 00118968  EC 3F 06 F2 */	fmuls f1, f31, f27
/* 8011BA0C 0011896C  EC 1F 06 B2 */	fmuls f0, f31, f26
/* 8011BA10 00118970  D0 5E 00 00 */	stfs f2, 0(r30)
/* 8011BA14 00118974  D0 3E 00 04 */	stfs f1, 4(r30)
/* 8011BA18 00118978  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8011BA1C 0011897C  C0 01 00 08 */	lfs f0, 8(r1)
/* 8011BA20 00118980  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8011BA24 00118984  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8011BA28 00118988  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 8011BA2C 0011898C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8011BA30 00118990  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 8011BA34 00118994  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8011BA38 00118998  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 8011BA3C 0011899C  D3 DE 00 1C */	stfs f30, 0x1c(r30)
/* 8011BA40 001189A0  D3 BE 00 20 */	stfs f29, 0x20(r30)
/* 8011BA44 001189A4  D3 9E 00 24 */	stfs f28, 0x24(r30)
/* 8011BA48 001189A8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8011BA4C 001189AC  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 8011BA50 001189B0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8011BA54 001189B4  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 8011BA58 001189B8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8011BA5C 001189BC  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 8011BA60 001189C0  E3 E1 00 98 */	psq_l f31, 152(r1), 0, qr0
/* 8011BA64 001189C4  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 8011BA68 001189C8  E3 C1 00 88 */	psq_l f30, 136(r1), 0, qr0
/* 8011BA6C 001189CC  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 8011BA70 001189D0  E3 A1 00 78 */	psq_l f29, 120(r1), 0, qr0
/* 8011BA74 001189D4  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 8011BA78 001189D8  E3 81 00 68 */	psq_l f28, 104(r1), 0, qr0
/* 8011BA7C 001189DC  CB 81 00 60 */	lfd f28, 0x60(r1)
/* 8011BA80 001189E0  E3 61 00 58 */	psq_l f27, 88(r1), 0, qr0
/* 8011BA84 001189E4  CB 61 00 50 */	lfd f27, 0x50(r1)
/* 8011BA88 001189E8  E3 41 00 48 */	psq_l f26, 72(r1), 0, qr0
/* 8011BA8C 001189EC  CB 41 00 40 */	lfd f26, 0x40(r1)
/* 8011BA90 001189F0  E3 21 00 38 */	psq_l f25, 56(r1), 0, qr0
/* 8011BA94 001189F4  CB 21 00 30 */	lfd f25, 0x30(r1)
/* 8011BA98 001189F8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8011BA9C 001189FC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8011BAA0 00118A00  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8011BAA4 00118A04  7C 08 03 A6 */	mtlr r0
/* 8011BAA8 00118A08  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8011BAAC 00118A0C  4E 80 00 20 */	blr

.global PredictAngularMotion__13CPhysicsActorCFf
PredictAngularMotion__13CPhysicsActorCFf:
/* 8011BAB0 00118A10  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 8011BAB4 00118A14  7C 08 02 A6 */	mflr r0
/* 8011BAB8 00118A18  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8011BABC 00118A1C  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 8011BAC0 00118A20  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, qr0
/* 8011BAC4 00118A24  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 8011BAC8 00118A28  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, qr0
/* 8011BACC 00118A2C  DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 8011BAD0 00118A30  F3 A1 00 C8 */	psq_st f29, 200(r1), 0, qr0
/* 8011BAD4 00118A34  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 8011BAD8 00118A38  93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 8011BADC 00118A3C  93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 8011BAE0 00118A40  7C 9E 23 78 */	mr r30, r4
/* 8011BAE4 00118A44  7C 7D 1B 78 */	mr r29, r3
/* 8011BAE8 00118A48  D0 21 00 08 */	stfs f1, 8(r1)
/* 8011BAEC 00118A4C  38 7E 01 98 */	addi r3, r30, 0x198
/* 8011BAF0 00118A50  C3 E4 00 F4 */	lfs f31, 0xf4(r4)
/* 8011BAF4 00118A54  4B EF FA 3D */	bl GetVector__10CAxisAngleCFv
/* 8011BAF8 00118A58  7C 7F 1B 78 */	mr r31, r3
/* 8011BAFC 00118A5C  38 7E 01 80 */	addi r3, r30, 0x180
/* 8011BB00 00118A60  4B EF FA 31 */	bl GetVector__10CAxisAngleCFv
/* 8011BB04 00118A64  C0 23 00 00 */	lfs f1, 0(r3)
/* 8011BB08 00118A68  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8011BB0C 00118A6C  C0 63 00 04 */	lfs f3, 4(r3)
/* 8011BB10 00118A70  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8011BB14 00118A74  EC 81 00 2A */	fadds f4, f1, f0
/* 8011BB18 00118A78  C0 23 00 08 */	lfs f1, 8(r3)
/* 8011BB1C 00118A7C  38 7E 01 44 */	addi r3, r30, 0x144
/* 8011BB20 00118A80  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8011BB24 00118A84  EC 43 10 2A */	fadds f2, f3, f2
/* 8011BB28 00118A88  EF BF 01 32 */	fmuls f29, f31, f4
/* 8011BB2C 00118A8C  EC 01 00 2A */	fadds f0, f1, f0
/* 8011BB30 00118A90  EF DF 00 B2 */	fmuls f30, f31, f2
/* 8011BB34 00118A94  EF FF 00 32 */	fmuls f31, f31, f0
/* 8011BB38 00118A98  4B EF F9 F9 */	bl GetVector__10CAxisAngleCFv
/* 8011BB3C 00118A9C  C0 43 00 04 */	lfs f2, 4(r3)
/* 8011BB40 00118AA0  38 9E 00 34 */	addi r4, r30, 0x34
/* 8011BB44 00118AA4  C0 23 00 08 */	lfs f1, 8(r3)
/* 8011BB48 00118AA8  C0 03 00 00 */	lfs f0, 0(r3)
/* 8011BB4C 00118AAC  EC 42 F0 2A */	fadds f2, f2, f30
/* 8011BB50 00118AB0  EC 21 F8 2A */	fadds f1, f1, f31
/* 8011BB54 00118AB4  38 61 00 34 */	addi r3, r1, 0x34
/* 8011BB58 00118AB8  EC 00 E8 2A */	fadds f0, f0, f29
/* 8011BB5C 00118ABC  D0 41 00 A4 */	stfs f2, 0xa4(r1)
/* 8011BB60 00118AC0  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8011BB64 00118AC4  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 8011BB68 00118AC8  48 1F 65 C1 */	bl FromMatrix__11CQuaternionFRC12CTransform4f
/* 8011BB6C 00118ACC  38 61 00 44 */	addi r3, r1, 0x44
/* 8011BB70 00118AD0  38 81 00 34 */	addi r4, r1, 0x34
/* 8011BB74 00118AD4  48 1F 51 A1 */	bl BuildFromQuaternion__13CNUQuaternionFRC11CQuaternion
/* 8011BB78 00118AD8  C0 22 96 A4 */	lfs f1, lbl_805AB3C4@sda21(r2)
/* 8011BB7C 00118ADC  38 61 00 54 */	addi r3, r1, 0x54
/* 8011BB80 00118AE0  38 81 00 A0 */	addi r4, r1, 0xa0
/* 8011BB84 00118AE4  48 1F 54 7D */	bl __ct__13CNUQuaternionFfRC9CVector3f
/* 8011BB88 00118AE8  C0 22 96 AC */	lfs f1, lbl_805AB3CC@sda21(r2)
/* 8011BB8C 00118AEC  7C 64 1B 78 */	mr r4, r3
/* 8011BB90 00118AF0  38 61 00 64 */	addi r3, r1, 0x64
/* 8011BB94 00118AF4  48 1F 4E A5 */	bl __ml__FfRC13CNUQuaternion
/* 8011BB98 00118AF8  38 61 00 74 */	addi r3, r1, 0x74
/* 8011BB9C 00118AFC  38 81 00 64 */	addi r4, r1, 0x64
/* 8011BBA0 00118B00  38 A1 00 44 */	addi r5, r1, 0x44
/* 8011BBA4 00118B04  48 1F 53 31 */	bl __ml__13CNUQuaternionCFRC13CNUQuaternion
/* 8011BBA8 00118B08  C0 C1 00 74 */	lfs f6, 0x74(r1)
/* 8011BBAC 00118B0C  38 61 00 0C */	addi r3, r1, 0xc
/* 8011BBB0 00118B10  C0 A1 00 78 */	lfs f5, 0x78(r1)
/* 8011BBB4 00118B14  38 81 00 84 */	addi r4, r1, 0x84
/* 8011BBB8 00118B18  C0 81 00 7C */	lfs f4, 0x7c(r1)
/* 8011BBBC 00118B1C  38 A1 00 08 */	addi r5, r1, 8
/* 8011BBC0 00118B20  C0 61 00 80 */	lfs f3, 0x80(r1)
/* 8011BBC4 00118B24  C0 5E 01 74 */	lfs f2, 0x174(r30)
/* 8011BBC8 00118B28  C0 3E 01 78 */	lfs f1, 0x178(r30)
/* 8011BBCC 00118B2C  C0 1E 01 7C */	lfs f0, 0x17c(r30)
/* 8011BBD0 00118B30  D0 C1 00 90 */	stfs f6, 0x90(r1)
/* 8011BBD4 00118B34  D0 A1 00 94 */	stfs f5, 0x94(r1)
/* 8011BBD8 00118B38  D0 81 00 98 */	stfs f4, 0x98(r1)
/* 8011BBDC 00118B3C  D0 61 00 9C */	stfs f3, 0x9c(r1)
/* 8011BBE0 00118B40  D0 41 00 84 */	stfs f2, 0x84(r1)
/* 8011BBE4 00118B44  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 8011BBE8 00118B48  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8011BBEC 00118B4C  4B EF F8 99 */	bl __ml__FRC10CAxisAngleRCf
/* 8011BBF0 00118B50  38 61 00 18 */	addi r3, r1, 0x18
/* 8011BBF4 00118B54  38 81 00 0C */	addi r4, r1, 0xc
/* 8011BBF8 00118B58  38 BE 01 80 */	addi r5, r30, 0x180
/* 8011BBFC 00118B5C  4B EF F8 29 */	bl __pl__FRC10CAxisAngleRC10CAxisAngle
/* 8011BC00 00118B60  C0 21 00 08 */	lfs f1, 8(r1)
/* 8011BC04 00118B64  38 61 00 24 */	addi r3, r1, 0x24
/* 8011BC08 00118B68  38 81 00 90 */	addi r4, r1, 0x90
/* 8011BC0C 00118B6C  48 1F 4E 89 */	bl __ml__FRC13CNUQuaternionf
/* 8011BC10 00118B70  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8011BC14 00118B74  C4 03 66 A0 */	lfsu f0, sZeroVector__9CVector3f@l(r3)
/* 8011BC18 00118B78  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8011BC1C 00118B7C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8011BC20 00118B80  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8011BC24 00118B84  C0 03 00 08 */	lfs f0, 8(r3)
/* 8011BC28 00118B88  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8011BC2C 00118B8C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8011BC30 00118B90  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 8011BC34 00118B94  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8011BC38 00118B98  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 8011BC3C 00118B9C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8011BC40 00118BA0  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 8011BC44 00118BA4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8011BC48 00118BA8  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 8011BC4C 00118BAC  C0 03 00 00 */	lfs f0, 0(r3)
/* 8011BC50 00118BB0  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 8011BC54 00118BB4  C0 03 00 04 */	lfs f0, 4(r3)
/* 8011BC58 00118BB8  D0 1D 00 20 */	stfs f0, 0x20(r29)
/* 8011BC5C 00118BBC  C0 03 00 08 */	lfs f0, 8(r3)
/* 8011BC60 00118BC0  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 8011BC64 00118BC4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8011BC68 00118BC8  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 8011BC6C 00118BCC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8011BC70 00118BD0  D0 1D 00 2C */	stfs f0, 0x2c(r29)
/* 8011BC74 00118BD4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8011BC78 00118BD8  D0 1D 00 30 */	stfs f0, 0x30(r29)
/* 8011BC7C 00118BDC  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, qr0
/* 8011BC80 00118BE0  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 8011BC84 00118BE4  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, qr0
/* 8011BC88 00118BE8  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 8011BC8C 00118BEC  E3 A1 00 C8 */	psq_l f29, 200(r1), 0, qr0
/* 8011BC90 00118BF0  CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 8011BC94 00118BF4  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 8011BC98 00118BF8  83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 8011BC9C 00118BFC  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8011BCA0 00118C00  83 A1 00 B4 */	lwz r29, 0xb4(r1)
/* 8011BCA4 00118C04  7C 08 03 A6 */	mtlr r0
/* 8011BCA8 00118C08  38 21 00 F0 */	addi r1, r1, 0xf0
/* 8011BCAC 00118C0C  4E 80 00 20 */	blr

.global PredictMotion__13CPhysicsActorCFf
PredictMotion__13CPhysicsActorCFf:
/* 8011BCB0 00118C10  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8011BCB4 00118C14  7C 08 02 A6 */	mflr r0
/* 8011BCB8 00118C18  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8011BCBC 00118C1C  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 8011BCC0 00118C20  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, qr0
/* 8011BCC4 00118C24  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 8011BCC8 00118C28  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, qr0
/* 8011BCCC 00118C2C  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 8011BCD0 00118C30  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, qr0
/* 8011BCD4 00118C34  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 8011BCD8 00118C38  F3 81 00 A8 */	psq_st f28, 168(r1), 0, qr0
/* 8011BCDC 00118C3C  DB 61 00 90 */	stfd f27, 0x90(r1)
/* 8011BCE0 00118C40  F3 61 00 98 */	psq_st f27, 152(r1), 0, qr0
/* 8011BCE4 00118C44  DB 41 00 80 */	stfd f26, 0x80(r1)
/* 8011BCE8 00118C48  F3 41 00 88 */	psq_st f26, 136(r1), 0, qr0
/* 8011BCEC 00118C4C  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 8011BCF0 00118C50  93 C1 00 78 */	stw r30, 0x78(r1)
/* 8011BCF4 00118C54  FF 40 08 90 */	fmr f26, f1
/* 8011BCF8 00118C58  7C 7E 1B 78 */	mr r30, r3
/* 8011BCFC 00118C5C  7C 9F 23 78 */	mr r31, r4
/* 8011BD00 00118C60  38 61 00 3C */	addi r3, r1, 0x3c
/* 8011BD04 00118C64  4B FF FC 31 */	bl PredictLinearMotion__13CPhysicsActorCFf
/* 8011BD08 00118C68  FC 20 D0 90 */	fmr f1, f26
/* 8011BD0C 00118C6C  C3 E1 00 3C */	lfs f31, 0x3c(r1)
/* 8011BD10 00118C70  C3 C1 00 40 */	lfs f30, 0x40(r1)
/* 8011BD14 00118C74  7F E4 FB 78 */	mr r4, r31
/* 8011BD18 00118C78  C3 A1 00 44 */	lfs f29, 0x44(r1)
/* 8011BD1C 00118C7C  38 61 00 08 */	addi r3, r1, 8
/* 8011BD20 00118C80  C3 81 00 58 */	lfs f28, 0x58(r1)
/* 8011BD24 00118C84  C3 61 00 5C */	lfs f27, 0x5c(r1)
/* 8011BD28 00118C88  C3 41 00 60 */	lfs f26, 0x60(r1)
/* 8011BD2C 00118C8C  4B FF FD 85 */	bl PredictAngularMotion__13CPhysicsActorCFf
/* 8011BD30 00118C90  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8011BD34 00118C94  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8011BD38 00118C98  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 8011BD3C 00118C9C  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 8011BD40 00118CA0  C0 81 00 30 */	lfs f4, 0x30(r1)
/* 8011BD44 00118CA4  C0 A1 00 34 */	lfs f5, 0x34(r1)
/* 8011BD48 00118CA8  C0 C1 00 38 */	lfs f6, 0x38(r1)
/* 8011BD4C 00118CAC  D3 FE 00 00 */	stfs f31, 0(r30)
/* 8011BD50 00118CB0  D3 DE 00 04 */	stfs f30, 4(r30)
/* 8011BD54 00118CB4  D3 BE 00 08 */	stfs f29, 8(r30)
/* 8011BD58 00118CB8  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8011BD5C 00118CBC  D0 3E 00 10 */	stfs f1, 0x10(r30)
/* 8011BD60 00118CC0  D0 5E 00 14 */	stfs f2, 0x14(r30)
/* 8011BD64 00118CC4  D0 7E 00 18 */	stfs f3, 0x18(r30)
/* 8011BD68 00118CC8  D3 9E 00 1C */	stfs f28, 0x1c(r30)
/* 8011BD6C 00118CCC  D3 7E 00 20 */	stfs f27, 0x20(r30)
/* 8011BD70 00118CD0  D3 5E 00 24 */	stfs f26, 0x24(r30)
/* 8011BD74 00118CD4  D0 9E 00 28 */	stfs f4, 0x28(r30)
/* 8011BD78 00118CD8  D0 BE 00 2C */	stfs f5, 0x2c(r30)
/* 8011BD7C 00118CDC  D0 DE 00 30 */	stfs f6, 0x30(r30)
/* 8011BD80 00118CE0  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, qr0
/* 8011BD84 00118CE4  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 8011BD88 00118CE8  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, qr0
/* 8011BD8C 00118CEC  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 8011BD90 00118CF0  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, qr0
/* 8011BD94 00118CF4  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 8011BD98 00118CF8  E3 81 00 A8 */	psq_l f28, 168(r1), 0, qr0
/* 8011BD9C 00118CFC  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 8011BDA0 00118D00  E3 61 00 98 */	psq_l f27, 152(r1), 0, qr0
/* 8011BDA4 00118D04  CB 61 00 90 */	lfd f27, 0x90(r1)
/* 8011BDA8 00118D08  E3 41 00 88 */	psq_l f26, 136(r1), 0, qr0
/* 8011BDAC 00118D0C  CB 41 00 80 */	lfd f26, 0x80(r1)
/* 8011BDB0 00118D10  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 8011BDB4 00118D14  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8011BDB8 00118D18  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 8011BDBC 00118D1C  7C 08 03 A6 */	mtlr r0
/* 8011BDC0 00118D20  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8011BDC4 00118D24  4E 80 00 20 */	blr

.global CalculateNewVelocityWR_UsingImpulses__13CPhysicsActorCFv
CalculateNewVelocityWR_UsingImpulses__13CPhysicsActorCFv:
/* 8011BDC8 00118D28  C0 24 01 68 */	lfs f1, 0x168(r4)
/* 8011BDCC 00118D2C  C0 04 01 8C */	lfs f0, 0x18c(r4)
/* 8011BDD0 00118D30  C0 64 01 6C */	lfs f3, 0x16c(r4)
/* 8011BDD4 00118D34  C0 44 01 90 */	lfs f2, 0x190(r4)
/* 8011BDD8 00118D38  EC 01 00 2A */	fadds f0, f1, f0
/* 8011BDDC 00118D3C  C0 C4 00 EC */	lfs f6, 0xec(r4)
/* 8011BDE0 00118D40  EC 83 10 2A */	fadds f4, f3, f2
/* 8011BDE4 00118D44  C0 64 01 70 */	lfs f3, 0x170(r4)
/* 8011BDE8 00118D48  C0 44 01 94 */	lfs f2, 0x194(r4)
/* 8011BDEC 00118D4C  EC 06 00 32 */	fmuls f0, f6, f0
/* 8011BDF0 00118D50  C0 24 01 38 */	lfs f1, 0x138(r4)
/* 8011BDF4 00118D54  EC 43 10 2A */	fadds f2, f3, f2
/* 8011BDF8 00118D58  EC 86 01 32 */	fmuls f4, f6, f4
/* 8011BDFC 00118D5C  C0 A4 01 3C */	lfs f5, 0x13c(r4)
/* 8011BE00 00118D60  EC 01 00 2A */	fadds f0, f1, f0
/* 8011BE04 00118D64  C0 64 01 40 */	lfs f3, 0x140(r4)
/* 8011BE08 00118D68  EC 26 00 B2 */	fmuls f1, f6, f2
/* 8011BE0C 00118D6C  EC 45 20 2A */	fadds f2, f5, f4
/* 8011BE10 00118D70  D0 03 00 00 */	stfs f0, 0(r3)
/* 8011BE14 00118D74  EC 03 08 2A */	fadds f0, f3, f1
/* 8011BE18 00118D78  D0 43 00 04 */	stfs f2, 4(r3)
/* 8011BE1C 00118D7C  D0 03 00 08 */	stfs f0, 8(r3)
/* 8011BE20 00118D80  4E 80 00 20 */	blr

.global SetPhysicsState__13CPhysicsActorFRC13CPhysicsState
SetPhysicsState__13CPhysicsActorFRC13CPhysicsState:
/* 8011BE24 00118D84  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8011BE28 00118D88  7C 08 02 A6 */	mflr r0
/* 8011BE2C 00118D8C  90 01 00 94 */	stw r0, 0x94(r1)
/* 8011BE30 00118D90  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 8011BE34 00118D94  7C 9F 23 78 */	mr r31, r4
/* 8011BE38 00118D98  93 C1 00 88 */	stw r30, 0x88(r1)
/* 8011BE3C 00118D9C  7C 7E 1B 78 */	mr r30, r3
/* 8011BE40 00118DA0  C0 44 00 00 */	lfs f2, 0(r4)
/* 8011BE44 00118DA4  38 81 00 48 */	addi r4, r1, 0x48
/* 8011BE48 00118DA8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8011BE4C 00118DAC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8011BE50 00118DB0  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8011BE54 00118DB4  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8011BE58 00118DB8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8011BE5C 00118DBC  4B F3 70 31 */	bl SetTranslation__6CActorFRC9CVector3f
/* 8011BE60 00118DC0  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 8011BE64 00118DC4  38 61 00 54 */	addi r3, r1, 0x54
/* 8011BE68 00118DC8  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 8011BE6C 00118DCC  38 81 00 38 */	addi r4, r1, 0x38
/* 8011BE70 00118DD0  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8011BE74 00118DD4  38 A1 00 08 */	addi r5, r1, 8
/* 8011BE78 00118DD8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8011BE7C 00118DDC  D0 61 00 38 */	stfs f3, 0x38(r1)
/* 8011BE80 00118DE0  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8011BE84 00118DE4  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8011BE88 00118DE8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8011BE8C 00118DEC  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8011BE90 00118DF0  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8011BE94 00118DF4  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8011BE98 00118DF8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8011BE9C 00118DFC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8011BEA0 00118E00  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8011BEA4 00118E04  48 1F 60 19 */	bl BuildTransform4f__11CQuaternionCFRC9CVector3f
/* 8011BEA8 00118E08  38 7E 00 34 */	addi r3, r30, 0x34
/* 8011BEAC 00118E0C  38 81 00 54 */	addi r4, r1, 0x54
/* 8011BEB0 00118E10  48 1F 6C 91 */	bl __as__12CTransform4fFRC12CTransform4f
/* 8011BEB4 00118E14  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 8011BEB8 00118E18  38 80 00 01 */	li r4, 1
/* 8011BEBC 00118E1C  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 8011BEC0 00118E20  7F C3 F3 78 */	mr r3, r30
/* 8011BEC4 00118E24  98 1E 00 E4 */	stb r0, 0xe4(r30)
/* 8011BEC8 00118E28  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 8011BECC 00118E2C  50 80 1F 38 */	rlwimi r0, r4, 3, 0x1c, 0x1c
/* 8011BED0 00118E30  98 1E 00 E4 */	stb r0, 0xe4(r30)
/* 8011BED4 00118E34  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 8011BED8 00118E38  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 8011BEDC 00118E3C  98 1E 00 E4 */	stb r0, 0xe4(r30)
/* 8011BEE0 00118E40  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8011BEE4 00118E44  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 8011BEE8 00118E48  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8011BEEC 00118E4C  D0 1E 00 FC */	stfs f0, 0xfc(r30)
/* 8011BEF0 00118E50  D0 3E 01 00 */	stfs f1, 0x100(r30)
/* 8011BEF4 00118E54  D0 5E 01 04 */	stfs f2, 0x104(r30)
/* 8011BEF8 00118E58  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8011BEFC 00118E5C  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 8011BF00 00118E60  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8011BF04 00118E64  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8011BF08 00118E68  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8011BF0C 00118E6C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8011BF10 00118E70  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8011BF14 00118E74  80 81 00 30 */	lwz r4, 0x30(r1)
/* 8011BF18 00118E78  90 1E 01 08 */	stw r0, 0x108(r30)
/* 8011BF1C 00118E7C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8011BF20 00118E80  90 9E 01 0C */	stw r4, 0x10c(r30)
/* 8011BF24 00118E84  90 1E 01 10 */	stw r0, 0x110(r30)
/* 8011BF28 00118E88  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8011BF2C 00118E8C  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 8011BF30 00118E90  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8011BF34 00118E94  D0 1E 01 50 */	stfs f0, 0x150(r30)
/* 8011BF38 00118E98  D0 3E 01 54 */	stfs f1, 0x154(r30)
/* 8011BF3C 00118E9C  D0 5E 01 58 */	stfs f2, 0x158(r30)
/* 8011BF40 00118EA0  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8011BF44 00118EA4  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 8011BF48 00118EA8  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8011BF4C 00118EAC  D0 1E 01 5C */	stfs f0, 0x15c(r30)
/* 8011BF50 00118EB0  D0 3E 01 60 */	stfs f1, 0x160(r30)
/* 8011BF54 00118EB4  D0 5E 01 64 */	stfs f2, 0x164(r30)
/* 8011BF58 00118EB8  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8011BF5C 00118EBC  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 8011BF60 00118EC0  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8011BF64 00118EC4  D0 1E 01 68 */	stfs f0, 0x168(r30)
/* 8011BF68 00118EC8  D0 3E 01 6C */	stfs f1, 0x16c(r30)
/* 8011BF6C 00118ECC  D0 5E 01 70 */	stfs f2, 0x170(r30)
/* 8011BF70 00118ED0  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8011BF74 00118ED4  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8011BF78 00118ED8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8011BF7C 00118EDC  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8011BF80 00118EE0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8011BF84 00118EE4  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8011BF88 00118EE8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8011BF8C 00118EEC  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8011BF90 00118EF0  90 1E 01 74 */	stw r0, 0x174(r30)
/* 8011BF94 00118EF4  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8011BF98 00118EF8  90 9E 01 78 */	stw r4, 0x178(r30)
/* 8011BF9C 00118EFC  90 1E 01 7C */	stw r0, 0x17c(r30)
/* 8011BFA0 00118F00  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8011BFA4 00118F04  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8011BFA8 00118F08  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8011BFAC 00118F0C  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 8011BFB0 00118F10  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8011BFB4 00118F14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011BFB8 00118F18  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8011BFBC 00118F1C  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8011BFC0 00118F20  90 1E 01 80 */	stw r0, 0x180(r30)
/* 8011BFC4 00118F24  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8011BFC8 00118F28  90 9E 01 84 */	stw r4, 0x184(r30)
/* 8011BFCC 00118F2C  90 1E 01 88 */	stw r0, 0x188(r30)
/* 8011BFD0 00118F30  48 00 00 A9 */	bl ComputeDerivedQuantities__13CPhysicsActorFv
/* 8011BFD4 00118F34  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8011BFD8 00118F38  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 8011BFDC 00118F3C  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 8011BFE0 00118F40  7C 08 03 A6 */	mtlr r0
/* 8011BFE4 00118F44  38 21 00 90 */	addi r1, r1, 0x90
/* 8011BFE8 00118F48  4E 80 00 20 */	blr

.global GetPhysicsState__13CPhysicsActorCFv
GetPhysicsState__13CPhysicsActorCFv:
/* 8011BFEC 00118F4C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8011BFF0 00118F50  7C 08 02 A6 */	mflr r0
/* 8011BFF4 00118F54  90 01 00 44 */	stw r0, 0x44(r1)
/* 8011BFF8 00118F58  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8011BFFC 00118F5C  7C 9F 23 78 */	mr r31, r4
/* 8011C000 00118F60  38 9F 00 34 */	addi r4, r31, 0x34
/* 8011C004 00118F64  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8011C008 00118F68  7C 7E 1B 78 */	mr r30, r3
/* 8011C00C 00118F6C  38 61 00 10 */	addi r3, r1, 0x10
/* 8011C010 00118F70  48 1F 61 19 */	bl FromMatrix__11CQuaternionFRC12CTransform4f
/* 8011C014 00118F74  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8011C018 00118F78  39 7F 01 74 */	addi r11, r31, 0x174
/* 8011C01C 00118F7C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8011C020 00118F80  38 1F 01 80 */	addi r0, r31, 0x180
/* 8011C024 00118F84  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8011C028 00118F88  7F C3 F3 78 */	mr r3, r30
/* 8011C02C 00118F8C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8011C030 00118F90  38 81 00 20 */	addi r4, r1, 0x20
/* 8011C034 00118F94  38 A1 00 10 */	addi r5, r1, 0x10
/* 8011C038 00118F98  38 DF 00 FC */	addi r6, r31, 0xfc
/* 8011C03C 00118F9C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8011C040 00118FA0  38 FF 01 08 */	addi r7, r31, 0x108
/* 8011C044 00118FA4  39 1F 01 50 */	addi r8, r31, 0x150
/* 8011C048 00118FA8  39 3F 01 5C */	addi r9, r31, 0x15c
/* 8011C04C 00118FAC  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8011C050 00118FB0  39 5F 01 68 */	addi r10, r31, 0x168
/* 8011C054 00118FB4  91 61 00 08 */	stw r11, 8(r1)
/* 8011C058 00118FB8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8011C05C 00118FBC  48 00 07 D5 */	bl __ct__13CPhysicsStateFRC9CVector3fRC11CQuaternionRC9CVector3fRC10CAxisAngleRC9CVector3fRC9CVector3fRC9CVector3fRC10CAxisAngleRC10CAxisAngle
/* 8011C060 00118FC0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8011C064 00118FC4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8011C068 00118FC8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8011C06C 00118FCC  7C 08 03 A6 */	mtlr r0
/* 8011C070 00118FD0  38 21 00 40 */	addi r1, r1, 0x40
/* 8011C074 00118FD4  4E 80 00 20 */	blr

.global ComputeDerivedQuantities__13CPhysicsActorFv
ComputeDerivedQuantities__13CPhysicsActorFv:
/* 8011C078 00118FD8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8011C07C 00118FDC  7C 08 02 A6 */	mflr r0
/* 8011C080 00118FE0  90 01 00 64 */	stw r0, 0x64(r1)
/* 8011C084 00118FE4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8011C088 00118FE8  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 8011C08C 00118FEC  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8011C090 00118FF0  7C 7F 1B 78 */	mr r31, r3
/* 8011C094 00118FF4  38 61 00 20 */	addi r3, r1, 0x20
/* 8011C098 00118FF8  C0 7F 00 EC */	lfs f3, 0xec(r31)
/* 8011C09C 00118FFC  38 9F 00 34 */	addi r4, r31, 0x34
/* 8011C0A0 00119000  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 8011C0A4 00119004  C0 5F 01 00 */	lfs f2, 0x100(r31)
/* 8011C0A8 00119008  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 8011C0AC 0011900C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8011C0B0 00119010  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8011C0B4 00119014  EC 23 00 72 */	fmuls f1, f3, f1
/* 8011C0B8 00119018  D0 1F 01 38 */	stfs f0, 0x138(r31)
/* 8011C0BC 0011901C  D0 5F 01 3C */	stfs f2, 0x13c(r31)
/* 8011C0C0 00119020  D0 3F 01 40 */	stfs f1, 0x140(r31)
/* 8011C0C4 00119024  48 1F 70 31 */	bl BuildMatrix3f__12CTransform4fCFv
/* 8011C0C8 00119028  38 7F 01 14 */	addi r3, r31, 0x114
/* 8011C0CC 0011902C  38 81 00 20 */	addi r4, r1, 0x20
/* 8011C0D0 00119030  48 1F 3F 29 */	bl __as__9CMatrix3fFRC9CMatrix3f
/* 8011C0D4 00119034  C3 FF 00 F4 */	lfs f31, 0xf4(r31)
/* 8011C0D8 00119038  38 7F 01 08 */	addi r3, r31, 0x108
/* 8011C0DC 0011903C  4B EF F4 55 */	bl GetVector__10CAxisAngleCFv
/* 8011C0E0 00119040  C0 43 00 04 */	lfs f2, 4(r3)
/* 8011C0E4 00119044  38 81 00 08 */	addi r4, r1, 8
/* 8011C0E8 00119048  C0 23 00 08 */	lfs f1, 8(r3)
/* 8011C0EC 0011904C  C0 03 00 00 */	lfs f0, 0(r3)
/* 8011C0F0 00119050  EC 5F 00 B2 */	fmuls f2, f31, f2
/* 8011C0F4 00119054  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8011C0F8 00119058  38 61 00 14 */	addi r3, r1, 0x14
/* 8011C0FC 0011905C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8011C100 00119060  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8011C104 00119064  D0 01 00 08 */	stfs f0, 8(r1)
/* 8011C108 00119068  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8011C10C 0011906C  4B EF F4 79 */	bl __ct__10CAxisAngleFRC9CVector3f
/* 8011C110 00119070  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8011C114 00119074  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8011C118 00119078  90 7F 01 44 */	stw r3, 0x144(r31)
/* 8011C11C 0011907C  90 1F 01 48 */	stw r0, 0x148(r31)
/* 8011C120 00119080  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8011C124 00119084  90 1F 01 4C */	stw r0, 0x14c(r31)
/* 8011C128 00119088  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 8011C12C 0011908C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8011C130 00119090  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8011C134 00119094  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8011C138 00119098  7C 08 03 A6 */	mtlr r0
/* 8011C13C 0011909C  38 21 00 60 */	addi r1, r1, 0x60
/* 8011C140 001190A0  4E 80 00 20 */	blr

.global ApplyForceOR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle
ApplyForceOR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle:
/* 8011C144 001190A4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8011C148 001190A8  7C 08 02 A6 */	mflr r0
/* 8011C14C 001190AC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8011C150 001190B0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8011C154 001190B4  7C BF 2B 78 */	mr r31, r5
/* 8011C158 001190B8  7C 85 23 78 */	mr r5, r4
/* 8011C15C 001190BC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8011C160 001190C0  7C 7E 1B 78 */	mr r30, r3
/* 8011C164 001190C4  38 61 00 20 */	addi r3, r1, 0x20
/* 8011C168 001190C8  38 9E 00 34 */	addi r4, r30, 0x34
/* 8011C16C 001190CC  48 1F 69 15 */	bl Rotate__12CTransform4fCFRC9CVector3f
/* 8011C170 001190D0  C0 3E 01 5C */	lfs f1, 0x15c(r30)
/* 8011C174 001190D4  7F E3 FB 78 */	mr r3, r31
/* 8011C178 001190D8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8011C17C 001190DC  C0 9E 01 60 */	lfs f4, 0x160(r30)
/* 8011C180 001190E0  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 8011C184 001190E4  EC 01 00 2A */	fadds f0, f1, f0
/* 8011C188 001190E8  C0 5E 01 64 */	lfs f2, 0x164(r30)
/* 8011C18C 001190EC  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8011C190 001190F0  EC 64 18 2A */	fadds f3, f4, f3
/* 8011C194 001190F4  D0 1E 01 5C */	stfs f0, 0x15c(r30)
/* 8011C198 001190F8  EC 02 08 2A */	fadds f0, f2, f1
/* 8011C19C 001190FC  D0 7E 01 60 */	stfs f3, 0x160(r30)
/* 8011C1A0 00119100  D0 1E 01 64 */	stfs f0, 0x164(r30)
/* 8011C1A4 00119104  4B EF F3 8D */	bl GetVector__10CAxisAngleCFv
/* 8011C1A8 00119108  7C 65 1B 78 */	mr r5, r3
/* 8011C1AC 0011910C  38 61 00 14 */	addi r3, r1, 0x14
/* 8011C1B0 00119110  38 9E 00 34 */	addi r4, r30, 0x34
/* 8011C1B4 00119114  48 1F 68 CD */	bl Rotate__12CTransform4fCFRC9CVector3f
/* 8011C1B8 00119118  38 61 00 2C */	addi r3, r1, 0x2c
/* 8011C1BC 0011911C  38 81 00 14 */	addi r4, r1, 0x14
/* 8011C1C0 00119120  4B EF F3 C5 */	bl __ct__10CAxisAngleFRC9CVector3f
/* 8011C1C4 00119124  38 61 00 08 */	addi r3, r1, 8
/* 8011C1C8 00119128  38 9E 01 74 */	addi r4, r30, 0x174
/* 8011C1CC 0011912C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8011C1D0 00119130  4B EF F2 55 */	bl __pl__FRC10CAxisAngleRC10CAxisAngle
/* 8011C1D4 00119134  80 61 00 08 */	lwz r3, 8(r1)
/* 8011C1D8 00119138  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8011C1DC 0011913C  90 7E 01 74 */	stw r3, 0x174(r30)
/* 8011C1E0 00119140  90 1E 01 78 */	stw r0, 0x178(r30)
/* 8011C1E4 00119144  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8011C1E8 00119148  90 1E 01 7C */	stw r0, 0x17c(r30)
/* 8011C1EC 0011914C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8011C1F0 00119150  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8011C1F4 00119154  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8011C1F8 00119158  7C 08 03 A6 */	mtlr r0
/* 8011C1FC 0011915C  38 21 00 40 */	addi r1, r1, 0x40
/* 8011C200 00119160  4E 80 00 20 */	blr

.global ApplyImpulseOR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle
ApplyImpulseOR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle:
/* 8011C204 00119164  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8011C208 00119168  7C 08 02 A6 */	mflr r0
/* 8011C20C 0011916C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8011C210 00119170  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8011C214 00119174  7C BF 2B 78 */	mr r31, r5
/* 8011C218 00119178  7C 85 23 78 */	mr r5, r4
/* 8011C21C 0011917C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8011C220 00119180  7C 7E 1B 78 */	mr r30, r3
/* 8011C224 00119184  38 61 00 20 */	addi r3, r1, 0x20
/* 8011C228 00119188  38 9E 00 34 */	addi r4, r30, 0x34
/* 8011C22C 0011918C  48 1F 68 55 */	bl Rotate__12CTransform4fCFRC9CVector3f
/* 8011C230 00119190  C0 3E 01 68 */	lfs f1, 0x168(r30)
/* 8011C234 00119194  7F E3 FB 78 */	mr r3, r31
/* 8011C238 00119198  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8011C23C 0011919C  C0 9E 01 6C */	lfs f4, 0x16c(r30)
/* 8011C240 001191A0  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 8011C244 001191A4  EC 01 00 2A */	fadds f0, f1, f0
/* 8011C248 001191A8  C0 5E 01 70 */	lfs f2, 0x170(r30)
/* 8011C24C 001191AC  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8011C250 001191B0  EC 64 18 2A */	fadds f3, f4, f3
/* 8011C254 001191B4  D0 1E 01 68 */	stfs f0, 0x168(r30)
/* 8011C258 001191B8  EC 02 08 2A */	fadds f0, f2, f1
/* 8011C25C 001191BC  D0 7E 01 6C */	stfs f3, 0x16c(r30)
/* 8011C260 001191C0  D0 1E 01 70 */	stfs f0, 0x170(r30)
/* 8011C264 001191C4  4B EF F2 CD */	bl GetVector__10CAxisAngleCFv
/* 8011C268 001191C8  7C 65 1B 78 */	mr r5, r3
/* 8011C26C 001191CC  38 61 00 14 */	addi r3, r1, 0x14
/* 8011C270 001191D0  38 9E 00 34 */	addi r4, r30, 0x34
/* 8011C274 001191D4  48 1F 68 0D */	bl Rotate__12CTransform4fCFRC9CVector3f
/* 8011C278 001191D8  38 61 00 2C */	addi r3, r1, 0x2c
/* 8011C27C 001191DC  38 81 00 14 */	addi r4, r1, 0x14
/* 8011C280 001191E0  4B EF F3 05 */	bl __ct__10CAxisAngleFRC9CVector3f
/* 8011C284 001191E4  38 61 00 08 */	addi r3, r1, 8
/* 8011C288 001191E8  38 9E 01 80 */	addi r4, r30, 0x180
/* 8011C28C 001191EC  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8011C290 001191F0  4B EF F1 95 */	bl __pl__FRC10CAxisAngleRC10CAxisAngle
/* 8011C294 001191F4  80 61 00 08 */	lwz r3, 8(r1)
/* 8011C298 001191F8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8011C29C 001191FC  90 7E 01 80 */	stw r3, 0x180(r30)
/* 8011C2A0 00119200  90 1E 01 84 */	stw r0, 0x184(r30)
/* 8011C2A4 00119204  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8011C2A8 00119208  90 1E 01 88 */	stw r0, 0x188(r30)
/* 8011C2AC 0011920C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8011C2B0 00119210  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8011C2B4 00119214  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8011C2B8 00119218  7C 08 03 A6 */	mtlr r0
/* 8011C2BC 0011921C  38 21 00 40 */	addi r1, r1, 0x40
/* 8011C2C0 00119220  4E 80 00 20 */	blr

.global ApplyForceWR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle
ApplyForceWR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle:
/* 8011C2C4 00119224  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8011C2C8 00119228  7C 08 02 A6 */	mflr r0
/* 8011C2CC 0011922C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8011C2D0 00119230  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8011C2D4 00119234  7C 7F 1B 78 */	mr r31, r3
/* 8011C2D8 00119238  C0 23 01 5C */	lfs f1, 0x15c(r3)
/* 8011C2DC 0011923C  38 61 00 08 */	addi r3, r1, 8
/* 8011C2E0 00119240  C0 04 00 00 */	lfs f0, 0(r4)
/* 8011C2E4 00119244  C0 9F 01 60 */	lfs f4, 0x160(r31)
/* 8011C2E8 00119248  C0 64 00 04 */	lfs f3, 4(r4)
/* 8011C2EC 0011924C  EC 01 00 2A */	fadds f0, f1, f0
/* 8011C2F0 00119250  C0 24 00 08 */	lfs f1, 8(r4)
/* 8011C2F4 00119254  38 9F 01 74 */	addi r4, r31, 0x174
/* 8011C2F8 00119258  C0 5F 01 64 */	lfs f2, 0x164(r31)
/* 8011C2FC 0011925C  EC 64 18 2A */	fadds f3, f4, f3
/* 8011C300 00119260  D0 1F 01 5C */	stfs f0, 0x15c(r31)
/* 8011C304 00119264  EC 02 08 2A */	fadds f0, f2, f1
/* 8011C308 00119268  D0 7F 01 60 */	stfs f3, 0x160(r31)
/* 8011C30C 0011926C  D0 1F 01 64 */	stfs f0, 0x164(r31)
/* 8011C310 00119270  4B EF F1 15 */	bl __pl__FRC10CAxisAngleRC10CAxisAngle
/* 8011C314 00119274  80 61 00 08 */	lwz r3, 8(r1)
/* 8011C318 00119278  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8011C31C 0011927C  90 7F 01 74 */	stw r3, 0x174(r31)
/* 8011C320 00119280  90 1F 01 78 */	stw r0, 0x178(r31)
/* 8011C324 00119284  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8011C328 00119288  90 1F 01 7C */	stw r0, 0x17c(r31)
/* 8011C32C 0011928C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8011C330 00119290  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8011C334 00119294  7C 08 03 A6 */	mtlr r0
/* 8011C338 00119298  38 21 00 20 */	addi r1, r1, 0x20
/* 8011C33C 0011929C  4E 80 00 20 */	blr

.global ApplyTorqueWR__13CPhysicsActorFRC9CVector3f
ApplyTorqueWR__13CPhysicsActorFRC9CVector3f:
/* 8011C340 001192A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8011C344 001192A4  7C 08 02 A6 */	mflr r0
/* 8011C348 001192A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8011C34C 001192AC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8011C350 001192B0  7C 7F 1B 78 */	mr r31, r3
/* 8011C354 001192B4  38 61 00 08 */	addi r3, r1, 8
/* 8011C358 001192B8  4B EF F2 2D */	bl __ct__10CAxisAngleFRC9CVector3f
/* 8011C35C 001192BC  7C 65 1B 78 */	mr r5, r3
/* 8011C360 001192C0  38 61 00 14 */	addi r3, r1, 0x14
/* 8011C364 001192C4  38 9F 01 74 */	addi r4, r31, 0x174
/* 8011C368 001192C8  4B EF F0 BD */	bl __pl__FRC10CAxisAngleRC10CAxisAngle
/* 8011C36C 001192CC  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8011C370 001192D0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8011C374 001192D4  90 7F 01 74 */	stw r3, 0x174(r31)
/* 8011C378 001192D8  90 1F 01 78 */	stw r0, 0x178(r31)
/* 8011C37C 001192DC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8011C380 001192E0  90 1F 01 7C */	stw r0, 0x17c(r31)
/* 8011C384 001192E4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8011C388 001192E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8011C38C 001192EC  7C 08 03 A6 */	mtlr r0
/* 8011C390 001192F0  38 21 00 30 */	addi r1, r1, 0x30
/* 8011C394 001192F4  4E 80 00 20 */	blr

.global ApplyImpulseWR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle
ApplyImpulseWR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle:
/* 8011C398 001192F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8011C39C 001192FC  7C 08 02 A6 */	mflr r0
/* 8011C3A0 00119300  90 01 00 24 */	stw r0, 0x24(r1)
/* 8011C3A4 00119304  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8011C3A8 00119308  7C 7F 1B 78 */	mr r31, r3
/* 8011C3AC 0011930C  C0 23 01 68 */	lfs f1, 0x168(r3)
/* 8011C3B0 00119310  38 61 00 08 */	addi r3, r1, 8
/* 8011C3B4 00119314  C0 04 00 00 */	lfs f0, 0(r4)
/* 8011C3B8 00119318  C0 9F 01 6C */	lfs f4, 0x16c(r31)
/* 8011C3BC 0011931C  C0 64 00 04 */	lfs f3, 4(r4)
/* 8011C3C0 00119320  EC 01 00 2A */	fadds f0, f1, f0
/* 8011C3C4 00119324  C0 24 00 08 */	lfs f1, 8(r4)
/* 8011C3C8 00119328  38 9F 01 80 */	addi r4, r31, 0x180
/* 8011C3CC 0011932C  C0 5F 01 70 */	lfs f2, 0x170(r31)
/* 8011C3D0 00119330  EC 64 18 2A */	fadds f3, f4, f3
/* 8011C3D4 00119334  D0 1F 01 68 */	stfs f0, 0x168(r31)
/* 8011C3D8 00119338  EC 02 08 2A */	fadds f0, f2, f1
/* 8011C3DC 0011933C  D0 7F 01 6C */	stfs f3, 0x16c(r31)
/* 8011C3E0 00119340  D0 1F 01 70 */	stfs f0, 0x170(r31)
/* 8011C3E4 00119344  4B EF F0 41 */	bl __pl__FRC10CAxisAngleRC10CAxisAngle
/* 8011C3E8 00119348  80 61 00 08 */	lwz r3, 8(r1)
/* 8011C3EC 0011934C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8011C3F0 00119350  90 7F 01 80 */	stw r3, 0x180(r31)
/* 8011C3F4 00119354  90 1F 01 84 */	stw r0, 0x184(r31)
/* 8011C3F8 00119358  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8011C3FC 0011935C  90 1F 01 88 */	stw r0, 0x188(r31)
/* 8011C400 00119360  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8011C404 00119364  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8011C408 00119368  7C 08 03 A6 */	mtlr r0
/* 8011C40C 0011936C  38 21 00 20 */	addi r1, r1, 0x20
/* 8011C410 00119370  4E 80 00 20 */	blr

.global __dt__13CPhysicsActorFv
__dt__13CPhysicsActorFv:
/* 8011C414 00119374  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011C418 00119378  7C 08 02 A6 */	mflr r0
/* 8011C41C 0011937C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011C420 00119380  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011C424 00119384  7C 9F 23 78 */	mr r31, r4
/* 8011C428 00119388  93 C1 00 08 */	stw r30, 8(r1)
/* 8011C42C 0011938C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8011C430 00119390  41 82 00 64 */	beq lbl_8011C494
/* 8011C434 00119394  3C 60 80 3E */	lis r3, lbl_803E0628@ha
/* 8011C438 00119398  34 1E 02 28 */	addic. r0, r30, 0x228
/* 8011C43C 0011939C  38 03 06 28 */	addi r0, r3, lbl_803E0628@l
/* 8011C440 001193A0  90 1E 00 00 */	stw r0, 0(r30)
/* 8011C444 001193A4  41 82 00 0C */	beq lbl_8011C450
/* 8011C448 001193A8  38 00 00 00 */	li r0, 0
/* 8011C44C 001193AC  98 1E 02 34 */	stb r0, 0x234(r30)
lbl_8011C450:
/* 8011C450 001193B0  34 1E 01 C0 */	addic. r0, r30, 0x1c0
/* 8011C454 001193B4  41 82 00 24 */	beq lbl_8011C478
/* 8011C458 001193B8  3C 60 80 3F */	lis r3, lbl_803ECAD0@ha
/* 8011C45C 001193BC  34 1E 01 C0 */	addic. r0, r30, 0x1c0
/* 8011C460 001193C0  38 03 CA D0 */	addi r0, r3, lbl_803ECAD0@l
/* 8011C464 001193C4  90 1E 01 C0 */	stw r0, 0x1c0(r30)
/* 8011C468 001193C8  41 82 00 10 */	beq lbl_8011C478
/* 8011C46C 001193CC  3C 60 80 3E */	lis r3, lbl_803D97E4@ha
/* 8011C470 001193D0  38 03 97 E4 */	addi r0, r3, lbl_803D97E4@l
/* 8011C474 001193D4  90 1E 01 C0 */	stw r0, 0x1c0(r30)
lbl_8011C478:
/* 8011C478 001193D8  7F C3 F3 78 */	mr r3, r30
/* 8011C47C 001193DC  38 80 00 00 */	li r4, 0
/* 8011C480 001193E0  4B F3 92 71 */	bl __dt__6CActorFv
/* 8011C484 001193E4  7F E0 07 35 */	extsh. r0, r31
/* 8011C488 001193E8  40 81 00 0C */	ble lbl_8011C494
/* 8011C48C 001193EC  7F C3 F3 78 */	mr r3, r30
/* 8011C490 001193F0  48 1F 94 A1 */	bl Free__7CMemoryFPCv
lbl_8011C494:
/* 8011C494 001193F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011C498 001193F8  7F C3 F3 78 */	mr r3, r30
/* 8011C49C 001193FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011C4A0 00119400  83 C1 00 08 */	lwz r30, 8(r1)
/* 8011C4A4 00119404  7C 08 03 A6 */	mtlr r0
/* 8011C4A8 00119408  38 21 00 10 */	addi r1, r1, 0x10
/* 8011C4AC 0011940C  4E 80 00 20 */	blr

.global "__ct__13CPhysicsActorF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC13CMaterialListRC6CAABoxRC10SMoverDataRC16CActorParametersff"
"__ct__13CPhysicsActorF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC13CMaterialListRC6CAABoxRC10SMoverDataRC16CActorParametersff":
/* 8011C4B0 00119410  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8011C4B4 00119414  7C 08 02 A6 */	mflr r0
/* 8011C4B8 00119418  90 01 00 94 */	stw r0, 0x94(r1)
/* 8011C4BC 0011941C  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8011C4C0 00119420  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 8011C4C4 00119424  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8011C4C8 00119428  F3 C1 00 78 */	psq_st f30, 120(r1), 0, qr0
/* 8011C4CC 0011942C  BF 41 00 58 */	stmw r26, 0x58(r1)
/* 8011C4D0 00119430  A0 04 00 00 */	lhz r0, 0(r4)
/* 8011C4D4 00119434  FF C0 08 90 */	fmr f30, f1
/* 8011C4D8 00119438  A0 8D A3 8C */	lhz r4, kInvalidUniqueId@sda21(r13)
/* 8011C4DC 0011943C  FF E0 10 90 */	fmr f31, f2
/* 8011C4E0 00119440  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8011C4E4 00119444  38 01 00 10 */	addi r0, r1, 0x10
/* 8011C4E8 00119448  81 61 00 A0 */	lwz r11, 0xa0(r1)
/* 8011C4EC 0011944C  B0 81 00 10 */	sth r4, 0x10(r1)
/* 8011C4F0 00119450  7C 7D 1B 78 */	mr r29, r3
/* 8011C4F4 00119454  83 81 00 98 */	lwz r28, 0x98(r1)
/* 8011C4F8 00119458  7D 1E 43 78 */	mr r30, r8
/* 8011C4FC 0011945C  91 61 00 08 */	stw r11, 8(r1)
/* 8011C500 00119460  7D 5B 53 78 */	mr r27, r10
/* 8011C504 00119464  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8011C508 00119468  38 81 00 14 */	addi r4, r1, 0x14
/* 8011C50C 0011946C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8011C510 00119470  4B F3 93 11 */	bl "__ct__6CActorF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC13CMaterialListRC16CActorParameters9TUniqueId"
/* 8011C514 00119474  3C 60 80 3E */	lis r3, lbl_803E0628@ha
/* 8011C518 00119478  C0 02 96 A4 */	lfs f0, lbl_805AB3C4@sda21(r2)
/* 8011C51C 0011947C  38 03 06 28 */	addi r0, r3, lbl_803E0628@l
/* 8011C520 00119480  90 1D 00 00 */	stw r0, 0(r29)
/* 8011C524 00119484  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8011C528 00119488  D0 3D 00 E8 */	stfs f1, 0xe8(r29)
/* 8011C52C 0011948C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8011C530 00119490  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8011C534 00119494  40 81 00 10 */	ble lbl_8011C544
/* 8011C538 00119498  C0 02 96 B0 */	lfs f0, lbl_805AB3D0@sda21(r2)
/* 8011C53C 0011949C  EC 00 08 24 */	fdivs f0, f0, f1
/* 8011C540 001194A0  48 00 00 08 */	b lbl_8011C548
lbl_8011C544:
/* 8011C544 001194A4  C0 02 96 B0 */	lfs f0, lbl_805AB3D0@sda21(r2)
lbl_8011C548:
/* 8011C548 001194A8  D0 1D 00 EC */	stfs f0, 0xec(r29)
/* 8011C54C 001194AC  38 80 00 01 */	li r4, 1
/* 8011C550 001194B0  C0 02 96 A4 */	lfs f0, lbl_805AB3C4@sda21(r2)
/* 8011C554 001194B4  38 60 00 00 */	li r3, 0
/* 8011C558 001194B8  D0 1D 00 F0 */	stfs f0, 0xf0(r29)
/* 8011C55C 001194BC  D0 1D 00 F4 */	stfs f0, 0xf4(r29)
/* 8011C560 001194C0  88 1D 00 F8 */	lbz r0, 0xf8(r29)
/* 8011C564 001194C4  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 8011C568 001194C8  98 1D 00 F8 */	stb r0, 0xf8(r29)
/* 8011C56C 001194CC  88 1D 00 F8 */	lbz r0, 0xf8(r29)
/* 8011C570 001194D0  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8011C574 001194D4  98 1D 00 F8 */	stb r0, 0xf8(r29)
/* 8011C578 001194D8  98 7D 00 F9 */	stb r3, 0xf9(r29)
/* 8011C57C 001194DC  D0 1D 00 FC */	stfs f0, 0xfc(r29)
/* 8011C580 001194E0  D0 1D 01 00 */	stfs f0, 0x100(r29)
/* 8011C584 001194E4  D0 1D 01 04 */	stfs f0, 0x104(r29)
/* 8011C588 001194E8  4B EF EF AD */	bl Identity__10CAxisAngleFv
/* 8011C58C 001194EC  C0 03 00 00 */	lfs f0, 0(r3)
/* 8011C590 001194F0  3C 80 80 5A */	lis r4, lbl_805A65FC@ha
/* 8011C594 001194F4  38 84 65 FC */	addi r4, r4, lbl_805A65FC@l
/* 8011C598 001194F8  D0 1D 01 08 */	stfs f0, 0x108(r29)
/* 8011C59C 001194FC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8011C5A0 00119500  D0 1D 01 0C */	stfs f0, 0x10c(r29)
/* 8011C5A4 00119504  C0 03 00 08 */	lfs f0, 8(r3)
/* 8011C5A8 00119508  38 7D 01 14 */	addi r3, r29, 0x114
/* 8011C5AC 0011950C  D0 1D 01 10 */	stfs f0, 0x110(r29)
/* 8011C5B0 00119510  48 1F 3A 75 */	bl __ct__9CMatrix3fFRC9CMatrix3f
/* 8011C5B4 00119514  C0 02 96 A4 */	lfs f0, lbl_805AB3C4@sda21(r2)
/* 8011C5B8 00119518  D0 1D 01 38 */	stfs f0, 0x138(r29)
/* 8011C5BC 0011951C  D0 1D 01 3C */	stfs f0, 0x13c(r29)
/* 8011C5C0 00119520  D0 1D 01 40 */	stfs f0, 0x140(r29)
/* 8011C5C4 00119524  4B EF EF 71 */	bl Identity__10CAxisAngleFv
/* 8011C5C8 00119528  C0 23 00 00 */	lfs f1, 0(r3)
/* 8011C5CC 0011952C  C0 02 96 A4 */	lfs f0, lbl_805AB3C4@sda21(r2)
/* 8011C5D0 00119530  D0 3D 01 44 */	stfs f1, 0x144(r29)
/* 8011C5D4 00119534  C0 23 00 04 */	lfs f1, 4(r3)
/* 8011C5D8 00119538  D0 3D 01 48 */	stfs f1, 0x148(r29)
/* 8011C5DC 0011953C  C0 23 00 08 */	lfs f1, 8(r3)
/* 8011C5E0 00119540  D0 3D 01 4C */	stfs f1, 0x14c(r29)
/* 8011C5E4 00119544  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8011C5E8 00119548  D0 3D 01 50 */	stfs f1, 0x150(r29)
/* 8011C5EC 0011954C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8011C5F0 00119550  D0 3D 01 54 */	stfs f1, 0x154(r29)
/* 8011C5F4 00119554  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8011C5F8 00119558  D0 3D 01 58 */	stfs f1, 0x158(r29)
/* 8011C5FC 0011955C  D0 1D 01 5C */	stfs f0, 0x15c(r29)
/* 8011C600 00119560  D0 1D 01 60 */	stfs f0, 0x160(r29)
/* 8011C604 00119564  D0 1D 01 64 */	stfs f0, 0x164(r29)
/* 8011C608 00119568  D0 1D 01 68 */	stfs f0, 0x168(r29)
/* 8011C60C 0011956C  D0 1D 01 6C */	stfs f0, 0x16c(r29)
/* 8011C610 00119570  D0 1D 01 70 */	stfs f0, 0x170(r29)
/* 8011C614 00119574  4B EF EF 21 */	bl Identity__10CAxisAngleFv
/* 8011C618 00119578  C0 03 00 00 */	lfs f0, 0(r3)
/* 8011C61C 0011957C  D0 1D 01 74 */	stfs f0, 0x174(r29)
/* 8011C620 00119580  C0 03 00 04 */	lfs f0, 4(r3)
/* 8011C624 00119584  D0 1D 01 78 */	stfs f0, 0x178(r29)
/* 8011C628 00119588  C0 03 00 08 */	lfs f0, 8(r3)
/* 8011C62C 0011958C  D0 1D 01 7C */	stfs f0, 0x17c(r29)
/* 8011C630 00119590  4B EF EF 05 */	bl Identity__10CAxisAngleFv
/* 8011C634 00119594  C0 23 00 00 */	lfs f1, 0(r3)
/* 8011C638 00119598  C0 02 96 A4 */	lfs f0, lbl_805AB3C4@sda21(r2)
/* 8011C63C 0011959C  D0 3D 01 80 */	stfs f1, 0x180(r29)
/* 8011C640 001195A0  C0 23 00 04 */	lfs f1, 4(r3)
/* 8011C644 001195A4  D0 3D 01 84 */	stfs f1, 0x184(r29)
/* 8011C648 001195A8  C0 23 00 08 */	lfs f1, 8(r3)
/* 8011C64C 001195AC  D0 3D 01 88 */	stfs f1, 0x188(r29)
/* 8011C650 001195B0  D0 1D 01 8C */	stfs f0, 0x18c(r29)
/* 8011C654 001195B4  D0 1D 01 90 */	stfs f0, 0x190(r29)
/* 8011C658 001195B8  D0 1D 01 94 */	stfs f0, 0x194(r29)
/* 8011C65C 001195BC  4B EF EE D9 */	bl Identity__10CAxisAngleFv
/* 8011C660 001195C0  C0 03 00 00 */	lfs f0, 0(r3)
/* 8011C664 001195C4  3B 5D 01 C0 */	addi r26, r29, 0x1c0
/* 8011C668 001195C8  7F 64 DB 78 */	mr r4, r27
/* 8011C66C 001195CC  D0 1D 01 98 */	stfs f0, 0x198(r29)
/* 8011C670 001195D0  C0 03 00 04 */	lfs f0, 4(r3)
/* 8011C674 001195D4  D0 1D 01 9C */	stfs f0, 0x19c(r29)
/* 8011C678 001195D8  C0 03 00 08 */	lfs f0, 8(r3)
/* 8011C67C 001195DC  7F 43 D3 78 */	mr r3, r26
/* 8011C680 001195E0  D0 1D 01 A0 */	stfs f0, 0x1a0(r29)
/* 8011C684 001195E4  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8011C688 001195E8  D0 1D 01 A4 */	stfs f0, 0x1a4(r29)
/* 8011C68C 001195EC  C0 1C 00 04 */	lfs f0, 4(r28)
/* 8011C690 001195F0  D0 1D 01 A8 */	stfs f0, 0x1a8(r29)
/* 8011C694 001195F4  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8011C698 001195F8  D0 1D 01 AC */	stfs f0, 0x1ac(r29)
/* 8011C69C 001195FC  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8011C6A0 00119600  D0 1D 01 B0 */	stfs f0, 0x1b0(r29)
/* 8011C6A4 00119604  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 8011C6A8 00119608  D0 1D 01 B4 */	stfs f0, 0x1b4(r29)
/* 8011C6AC 0011960C  C0 1C 00 14 */	lfs f0, 0x14(r28)
/* 8011C6B0 00119610  D0 1D 01 B8 */	stfs f0, 0x1b8(r29)
/* 8011C6B4 00119614  48 1B 32 01 */	bl __ct__19CCollisionPrimitiveFRC13CMaterialList
/* 8011C6B8 00119618  3C 60 80 3F */	lis r3, lbl_803ECAD0@ha
/* 8011C6BC 0011961C  38 03 CA D0 */	addi r0, r3, lbl_803ECAD0@l
/* 8011C6C0 00119620  90 1A 00 00 */	stw r0, 0(r26)
/* 8011C6C4 00119624  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8011C6C8 00119628  D0 1A 00 10 */	stfs f0, 0x10(r26)
/* 8011C6CC 0011962C  C0 1C 00 04 */	lfs f0, 4(r28)
/* 8011C6D0 00119630  D0 1A 00 14 */	stfs f0, 0x14(r26)
/* 8011C6D4 00119634  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8011C6D8 00119638  D0 1A 00 18 */	stfs f0, 0x18(r26)
/* 8011C6DC 0011963C  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8011C6E0 00119640  D0 1A 00 1C */	stfs f0, 0x1c(r26)
/* 8011C6E4 00119644  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 8011C6E8 00119648  D0 1A 00 20 */	stfs f0, 0x20(r26)
/* 8011C6EC 0011964C  C0 1C 00 14 */	lfs f0, 0x14(r28)
/* 8011C6F0 00119650  D0 1A 00 24 */	stfs f0, 0x24(r26)
/* 8011C6F4 00119654  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 8011C6F8 00119658  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 8011C6FC 0011965C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8011C700 00119660  D0 1D 01 E8 */	stfs f0, 0x1e8(r29)
/* 8011C704 00119664  D0 3D 01 EC */	stfs f1, 0x1ec(r29)
/* 8011C708 00119668  D0 5D 01 F0 */	stfs f2, 0x1f0(r29)
/* 8011C70C 0011966C  4B EF EE 29 */	bl Identity__10CAxisAngleFv
/* 8011C710 00119670  7C 7C 1B 78 */	mr r28, r3
/* 8011C714 00119674  7F C4 F3 78 */	mr r4, r30
/* 8011C718 00119678  38 61 00 28 */	addi r3, r1, 0x28
/* 8011C71C 0011967C  48 1F 69 D9 */	bl BuildMatrix3f__12CTransform4fCFv
/* 8011C720 00119680  38 61 00 18 */	addi r3, r1, 0x18
/* 8011C724 00119684  38 81 00 28 */	addi r4, r1, 0x28
/* 8011C728 00119688  48 1F 43 C9 */	bl BuildFromMatrix3f__13CNUQuaternionFRC9CMatrix3f
/* 8011C72C 0011968C  C0 9E 00 2C */	lfs f4, 0x2c(r30)
/* 8011C730 00119690  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8011C734 00119694  C0 7E 00 1C */	lfs f3, 0x1c(r30)
/* 8011C738 00119698  38 83 66 A0 */	addi r4, r3, sZeroVector__9CVector3f@l
/* 8011C73C 0011969C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8011C740 001196A0  38 00 00 00 */	li r0, 0
/* 8011C744 001196A4  C0 42 96 C8 */	lfs f2, lbl_805AB3E8@sda21(r2)
/* 8011C748 001196A8  7F A3 EB 78 */	mr r3, r29
/* 8011C74C 001196AC  D0 1D 01 F4 */	stfs f0, 0x1f4(r29)
/* 8011C750 001196B0  C0 22 96 A4 */	lfs f1, lbl_805AB3C4@sda21(r2)
/* 8011C754 001196B4  D0 7D 01 F8 */	stfs f3, 0x1f8(r29)
/* 8011C758 001196B8  C0 02 96 B0 */	lfs f0, lbl_805AB3D0@sda21(r2)
/* 8011C75C 001196BC  D0 9D 01 FC */	stfs f4, 0x1fc(r29)
/* 8011C760 001196C0  C0 61 00 18 */	lfs f3, 0x18(r1)
/* 8011C764 001196C4  D0 7D 02 00 */	stfs f3, 0x200(r29)
/* 8011C768 001196C8  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 8011C76C 001196CC  D0 7D 02 04 */	stfs f3, 0x204(r29)
/* 8011C770 001196D0  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 8011C774 001196D4  D0 7D 02 08 */	stfs f3, 0x208(r29)
/* 8011C778 001196D8  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 8011C77C 001196DC  D0 7D 02 0C */	stfs f3, 0x20c(r29)
/* 8011C780 001196E0  C0 64 00 00 */	lfs f3, 0(r4)
/* 8011C784 001196E4  D0 7D 02 10 */	stfs f3, 0x210(r29)
/* 8011C788 001196E8  C0 64 00 04 */	lfs f3, 4(r4)
/* 8011C78C 001196EC  D0 7D 02 14 */	stfs f3, 0x214(r29)
/* 8011C790 001196F0  C0 64 00 08 */	lfs f3, 8(r4)
/* 8011C794 001196F4  D0 7D 02 18 */	stfs f3, 0x218(r29)
/* 8011C798 001196F8  C0 7C 00 00 */	lfs f3, 0(r28)
/* 8011C79C 001196FC  D0 7D 02 1C */	stfs f3, 0x21c(r29)
/* 8011C7A0 00119700  C0 7C 00 04 */	lfs f3, 4(r28)
/* 8011C7A4 00119704  D0 7D 02 20 */	stfs f3, 0x220(r29)
/* 8011C7A8 00119708  C0 7C 00 08 */	lfs f3, 8(r28)
/* 8011C7AC 0011970C  D0 7D 02 24 */	stfs f3, 0x224(r29)
/* 8011C7B0 00119710  98 1D 02 34 */	stb r0, 0x234(r29)
/* 8011C7B4 00119714  D0 5D 02 38 */	stfs f2, 0x238(r29)
/* 8011C7B8 00119718  D3 DD 02 3C */	stfs f30, 0x23c(r29)
/* 8011C7BC 0011971C  D3 FD 02 40 */	stfs f31, 0x240(r29)
/* 8011C7C0 00119720  D0 3D 02 44 */	stfs f1, 0x244(r29)
/* 8011C7C4 00119724  D0 1D 02 48 */	stfs f0, 0x248(r29)
/* 8011C7C8 00119728  90 1D 02 4C */	stw r0, 0x24c(r29)
/* 8011C7CC 0011972C  90 1D 02 50 */	stw r0, 0x250(r29)
/* 8011C7D0 00119730  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8011C7D4 00119734  4B FF E2 B5 */	bl SetMass__13CPhysicsActorFf
/* 8011C7D8 00119738  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8011C7DC 0011973C  7F A3 EB 78 */	mr r3, r29
/* 8011C7E0 00119740  38 84 66 A0 */	addi r4, r4, sZeroVector__9CVector3f@l
/* 8011C7E4 00119744  4B FF E2 55 */	bl MoveCollisionPrimitive__13CPhysicsActorFRC9CVector3f
/* 8011C7E8 00119748  7F A3 EB 78 */	mr r3, r29
/* 8011C7EC 0011974C  7F E4 FB 78 */	mr r4, r31
/* 8011C7F0 00119750  4B FF E5 29 */	bl SetVelocityOR__13CPhysicsActorFRC9CVector3f
/* 8011C7F4 00119754  7F A3 EB 78 */	mr r3, r29
/* 8011C7F8 00119758  38 9F 00 0C */	addi r4, r31, 0xc
/* 8011C7FC 0011975C  4B FF E2 E1 */	bl SetAngularVelocityOR__13CPhysicsActorFRC10CAxisAngle
/* 8011C800 00119760  7F A3 EB 78 */	mr r3, r29
/* 8011C804 00119764  4B FF F8 75 */	bl ComputeDerivedQuantities__13CPhysicsActorFv
/* 8011C808 00119768  7F A3 EB 78 */	mr r3, r29
/* 8011C80C 0011976C  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 8011C810 00119770  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8011C814 00119774  E3 C1 00 78 */	psq_l f30, 120(r1), 0, qr0
/* 8011C818 00119778  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8011C81C 0011977C  BB 41 00 58 */	lmw r26, 0x58(r1)
/* 8011C820 00119780  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8011C824 00119784  7C 08 03 A6 */	mtlr r0
/* 8011C828 00119788  38 21 00 90 */	addi r1, r1, 0x90
/* 8011C82C 0011978C  4E 80 00 20 */	blr
