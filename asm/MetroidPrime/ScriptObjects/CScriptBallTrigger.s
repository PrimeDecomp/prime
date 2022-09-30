.include "macros.inc"

.section .data
.balign 8

.global lbl_803E3E80
lbl_803E3E80:
	# ROM: 0x3E0E80
	.4byte 0
	.4byte 0
	.4byte __dt__18CScriptBallTriggerFv
	.4byte Accept__18CScriptBallTriggerFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__18CScriptBallTriggerFfR13CStateManager
	.4byte AcceptScriptMsg__18CScriptBallTriggerF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__6CActorFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__6CActorCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__6CActorCFRC13CStateManager
	.4byte CanRenderUnsorted__6CActorCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__6CActorFR13CStateManager
	.4byte GetDamageVulnerability__6CActorCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__14CScriptTriggerCFv
	.4byte Touch__14CScriptTriggerFR6CActorR13CStateManager
	.4byte GetOrbitPosition__6CActorCFRC13CStateManager
	.4byte GetAimPosition__6CActorCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__6CActorCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__6CActorFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC13CStateManager
	.4byte DoUserAnimEvent__6CActorFR13CStateManagerRC13CInt32POINode14EUserEventTypef
	.4byte InhabitantAdded__18CScriptBallTriggerFR6CActorR13CStateManager
	.4byte InhabitantIdle__14CScriptTriggerFR6CActorR13CStateManager
	.4byte InhabitantExited__18CScriptBallTriggerFR6CActorR13CStateManager
	.4byte InhabitantRejected__14CScriptTriggerFR6CActorR13CStateManager
	.4byte 0

.section .text, "ax"

.global AcceptScriptMsg__18CScriptBallTriggerF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__18CScriptBallTriggerF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 801764DC 0017343C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801764E0 00173440  7C 08 02 A6 */	mflr r0
/* 801764E4 00173444  90 01 00 24 */	stw r0, 0x24(r1)
/* 801764E8 00173448  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801764EC 0017344C  7C DF 33 78 */	mr r31, r6
/* 801764F0 00173450  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801764F4 00173454  7C BE 2B 78 */	mr r30, r5
/* 801764F8 00173458  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801764FC 0017345C  7C 9D 23 78 */	mr r29, r4
/* 80176500 00173460  2C 1D 00 04 */	cmpwi r29, 4
/* 80176504 00173464  93 81 00 10 */	stw r28, 0x10(r1)
/* 80176508 00173468  7C 7C 1B 78 */	mr r28, r3
/* 8017650C 0017346C  40 82 00 30 */	bne lbl_8017653C
/* 80176510 00173470  88 1C 00 30 */	lbz r0, 0x30(r28)
/* 80176514 00173474  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80176518 00173478  41 82 00 24 */	beq lbl_8017653C
/* 8017651C 0017347C  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 80176520 00173480  38 80 00 00 */	li r4, 0
/* 80176524 00173484  80 63 07 68 */	lwz r3, 0x768(r3)
/* 80176528 00173488  4B F7 8A 79 */	bl SetBallBoostState__10CMorphBallFQ210CMorphBall15EBallBoostState
/* 8017652C 0017348C  88 1C 01 68 */	lbz r0, 0x168(r28)
/* 80176530 00173490  38 60 00 00 */	li r3, 0
/* 80176534 00173494  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80176538 00173498  98 1C 01 68 */	stb r0, 0x168(r28)
lbl_8017653C:
/* 8017653C 0017349C  A0 1E 00 00 */	lhz r0, 0(r30)
/* 80176540 001734A0  7F 83 E3 78 */	mr r3, r28
/* 80176544 001734A4  7F A4 EB 78 */	mr r4, r29
/* 80176548 001734A8  7F E6 FB 78 */	mr r6, r31
/* 8017654C 001734AC  B0 01 00 08 */	sth r0, 8(r1)
/* 80176550 001734B0  38 A1 00 08 */	addi r5, r1, 8
/* 80176554 001734B4  4B EF FF A5 */	bl AcceptScriptMsg__14CScriptTriggerF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 80176558 001734B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8017655C 001734BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80176560 001734C0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80176564 001734C4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80176568 001734C8  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8017656C 001734CC  7C 08 03 A6 */	mtlr r0
/* 80176570 001734D0  38 21 00 20 */	addi r1, r1, 0x20
/* 80176574 001734D4  4E 80 00 20 */	blr

.global Accept__18CScriptBallTriggerFR8IVisitor
Accept__18CScriptBallTriggerFR8IVisitor:
/* 80176578 001734D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8017657C 001734DC  7C 08 02 A6 */	mflr r0
/* 80176580 001734E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80176584 001734E4  7C 60 1B 78 */	mr r0, r3
/* 80176588 001734E8  7C 83 23 78 */	mr r3, r4
/* 8017658C 001734EC  81 84 00 00 */	lwz r12, 0(r4)
/* 80176590 001734F0  7C 04 03 78 */	mr r4, r0
/* 80176594 001734F4  81 8C 00 CC */	lwz r12, 0xcc(r12)
/* 80176598 001734F8  7D 89 03 A6 */	mtctr r12
/* 8017659C 001734FC  4E 80 04 21 */	bctrl
/* 801765A0 00173500  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801765A4 00173504  7C 08 03 A6 */	mtlr r0
/* 801765A8 00173508  38 21 00 10 */	addi r1, r1, 0x10
/* 801765AC 0017350C  4E 80 00 20 */	blr

.global Think__18CScriptBallTriggerFfR13CStateManager
Think__18CScriptBallTriggerFfR13CStateManager:
/* 801765B0 00173510  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 801765B4 00173514  7C 08 02 A6 */	mflr r0
/* 801765B8 00173518  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 801765BC 0017351C  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 801765C0 00173520  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, qr0
/* 801765C4 00173524  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 801765C8 00173528  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, qr0
/* 801765CC 0017352C  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 801765D0 00173530  F3 A1 00 98 */	psq_st f29, 152(r1), 0, qr0
/* 801765D4 00173534  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 801765D8 00173538  F3 81 00 88 */	psq_st f28, 136(r1), 0, qr0
/* 801765DC 0017353C  DB 61 00 70 */	stfd f27, 0x70(r1)
/* 801765E0 00173540  F3 61 00 78 */	psq_st f27, 120(r1), 0, qr0
/* 801765E4 00173544  DB 41 00 60 */	stfd f26, 0x60(r1)
/* 801765E8 00173548  F3 41 00 68 */	psq_st f26, 104(r1), 0, qr0
/* 801765EC 0017354C  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 801765F0 00173550  93 C1 00 58 */	stw r30, 0x58(r1)
/* 801765F4 00173554  88 03 00 30 */	lbz r0, 0x30(r3)
/* 801765F8 00173558  FF 40 08 90 */	fmr f26, f1
/* 801765FC 0017355C  7C 7E 1B 78 */	mr r30, r3
/* 80176600 00173560  7C 9F 23 78 */	mr r31, r4
/* 80176604 00173564  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80176608 00173568  41 82 01 E8 */	beq lbl_801767F0
/* 8017660C 0017356C  4B EF FE C1 */	bl Think__14CScriptTriggerFfR13CStateManager
/* 80176610 00173570  83 FF 08 4C */	lwz r31, 0x84c(r31)
/* 80176614 00173574  80 7F 07 68 */	lwz r3, 0x768(r31)
/* 80176618 00173578  4B F8 27 ED */	bl GetBallRadius__10CMorphBallCFv
/* 8017661C 0017357C  FF C0 08 90 */	fmr f30, f1
/* 80176620 00173580  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80176624 00173584  80 1F 02 F8 */	lwz r0, 0x2f8(r31)
/* 80176628 00173588  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 8017662C 0017358C  C0 42 A1 B0 */	lfs f2, lbl_805ABED0@sda21(r2)
/* 80176630 00173590  2C 00 00 01 */	cmpwi r0, 1
/* 80176634 00173594  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80176638 00173598  EC 80 F0 2A */	fadds f4, f0, f30
/* 8017663C 0017359C  EC A3 10 2A */	fadds f5, f3, f2
/* 80176640 001735A0  EC 61 10 2A */	fadds f3, f1, f2
/* 80176644 001735A4  40 82 01 9C */	bne lbl_801767E0
/* 80176648 001735A8  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 8017664C 001735AC  38 61 00 40 */	addi r3, r1, 0x40
/* 80176650 001735B0  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80176654 001735B4  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80176658 001735B8  EC 42 18 28 */	fsubs f2, f2, f3
/* 8017665C 001735BC  EC 21 20 28 */	fsubs f1, f1, f4
/* 80176660 001735C0  EC 00 28 28 */	fsubs f0, f0, f5
/* 80176664 001735C4  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80176668 001735C8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8017666C 001735CC  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80176670 001735D0  48 19 E2 49 */	bl Magnitude__9CVector3fCFv
/* 80176674 001735D4  88 7E 01 68 */	lbz r3, 0x168(r30)
/* 80176678 001735D8  FF E0 08 90 */	fmr f31, f1
/* 8017667C 001735DC  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 80176680 001735E0  40 82 01 04 */	bne lbl_80176784
/* 80176684 001735E4  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 80176688 001735E8  40 80 00 14 */	bge lbl_8017669C
/* 8017668C 001735EC  38 00 00 01 */	li r0, 1
/* 80176690 001735F0  50 03 3E 30 */	rlwimi r3, r0, 7, 0x18, 0x18
/* 80176694 001735F4  98 7E 01 68 */	stb r3, 0x168(r30)
/* 80176698 001735F8  48 00 00 EC */	b lbl_80176784
lbl_8017669C:
/* 8017669C 001735FC  38 61 00 28 */	addi r3, r1, 0x28
/* 801766A0 00173600  38 81 00 40 */	addi r4, r1, 0x40
/* 801766A4 00173604  48 19 E1 AD */	bl AsNormalized__9CVector3fCFv
/* 801766A8 00173608  C0 22 A1 B4 */	lfs f1, lbl_805ABED4@sda21(r2)
/* 801766AC 0017360C  C0 1E 01 54 */	lfs f0, 0x154(r30)
/* 801766B0 00173610  C3 A1 00 28 */	lfs f29, 0x28(r1)
/* 801766B4 00173614  EC 21 00 32 */	fmuls f1, f1, f0
/* 801766B8 00173618  C3 81 00 2C */	lfs f28, 0x2c(r1)
/* 801766BC 0017361C  C3 61 00 30 */	lfs f27, 0x30(r1)
/* 801766C0 00173620  48 21 DD 31 */	bl cos
/* 801766C4 00173624  FC 40 E0 50 */	fneg f2, f28
/* 801766C8 00173628  C0 1E 01 60 */	lfs f0, 0x160(r30)
/* 801766CC 0017362C  FC 80 E8 50 */	fneg f4, f29
/* 801766D0 00173630  C0 7E 01 5C */	lfs f3, 0x15c(r30)
/* 801766D4 00173634  FC C0 D8 50 */	fneg f6, f27
/* 801766D8 00173638  C0 BE 01 64 */	lfs f5, 0x164(r30)
/* 801766DC 0017363C  EC 02 00 32 */	fmuls f0, f2, f0
/* 801766E0 00173640  FC 20 08 18 */	frsp f1, f1
/* 801766E4 00173644  EC 04 00 FA */	fmadds f0, f4, f3, f0
/* 801766E8 00173648  EC 06 01 7A */	fmadds f0, f6, f5, f0
/* 801766EC 0017364C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801766F0 00173650  40 80 00 94 */	bge lbl_80176784
/* 801766F4 00173654  C0 7E 01 58 */	lfs f3, 0x158(r30)
/* 801766F8 00173658  FC 1F 18 40 */	fcmpo cr0, f31, f3
/* 801766FC 0017365C  40 80 00 88 */	bge lbl_80176784
/* 80176700 00173660  EC 3F 07 F2 */	fmuls f1, f31, f31
/* 80176704 00173664  C0 02 A1 B8 */	lfs f0, lbl_805ABED8@sda21(r2)
/* 80176708 00173668  C0 5E 01 50 */	lfs f2, 0x150(r30)
/* 8017670C 0017366C  EC 00 D0 24 */	fdivs f0, f0, f26
/* 80176710 00173670  EC 23 08 24 */	fdivs f1, f3, f1
/* 80176714 00173674  EC 22 00 72 */	fmuls f1, f2, f1
/* 80176718 00173678  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8017671C 0017367C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80176720 00173680  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80176724 00173684  D0 01 00 08 */	stfs f0, 8(r1)
/* 80176728 00173688  40 80 00 0C */	bge lbl_80176734
/* 8017672C 0017368C  38 61 00 08 */	addi r3, r1, 8
/* 80176730 00173690  48 00 00 08 */	b lbl_80176738
lbl_80176734:
/* 80176734 00173694  38 61 00 0C */	addi r3, r1, 0xc
lbl_80176738:
/* 80176738 00173698  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 8017673C 0017369C  C0 A3 00 00 */	lfs f5, 0(r3)
/* 80176740 001736A0  EC 60 07 72 */	fmuls f3, f0, f29
/* 80176744 001736A4  EC 40 07 32 */	fmuls f2, f0, f28
/* 80176748 001736A8  EC 20 06 F2 */	fmuls f1, f0, f27
/* 8017674C 001736AC  EC 05 00 F2 */	fmuls f0, f5, f3
/* 80176750 001736B0  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 80176754 001736B4  EC 85 00 B2 */	fmuls f4, f5, f2
/* 80176758 001736B8  EC 65 00 72 */	fmuls f3, f5, f1
/* 8017675C 001736BC  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80176760 001736C0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80176764 001736C4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80176768 001736C8  D0 81 00 20 */	stfs f4, 0x20(r1)
/* 8017676C 001736CC  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 80176770 001736D0  4B EA 4D C5 */	bl Identity__10CAxisAngleFv
/* 80176774 001736D4  7C 65 1B 78 */	mr r5, r3
/* 80176778 001736D8  7F E3 FB 78 */	mr r3, r31
/* 8017677C 001736DC  38 81 00 1C */	addi r4, r1, 0x1c
/* 80176780 001736E0  4B FA 5B 45 */	bl ApplyForceWR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle
lbl_80176784:
/* 80176784 001736E4  88 1E 01 48 */	lbz r0, 0x148(r30)
/* 80176788 001736E8  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 8017678C 001736EC  41 82 00 64 */	beq lbl_801767F0
/* 80176790 001736F0  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80176794 001736F4  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 80176798 001736F8  C0 22 A1 B0 */	lfs f1, lbl_805ABED0@sda21(r2)
/* 8017679C 001736FC  EC 60 F0 28 */	fsubs f3, f0, f30
/* 801767A0 00173700  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801767A4 00173704  EC 42 08 28 */	fsubs f2, f2, f1
/* 801767A8 00173708  EC 00 08 28 */	fsubs f0, f0, f1
/* 801767AC 0017370C  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 801767B0 00173710  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 801767B4 00173714  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801767B8 00173718  88 1E 01 68 */	lbz r0, 0x168(r30)
/* 801767BC 0017371C  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801767C0 00173720  41 82 00 0C */	beq lbl_801767CC
/* 801767C4 00173724  7F E3 FB 78 */	mr r3, r31
/* 801767C8 00173728  4B FA 4B B1 */	bl Stop__13CPhysicsActorFv
lbl_801767CC:
/* 801767CC 0017372C  FC 20 D0 90 */	fmr f1, f26
/* 801767D0 00173730  7F E3 FB 78 */	mr r3, r31
/* 801767D4 00173734  38 81 00 34 */	addi r4, r1, 0x34
/* 801767D8 00173738  4B FA 49 31 */	bl MoveToWR__13CPhysicsActorFRC9CVector3ff
/* 801767DC 0017373C  48 00 00 14 */	b lbl_801767F0
lbl_801767E0:
/* 801767E0 00173740  88 1E 01 68 */	lbz r0, 0x168(r30)
/* 801767E4 00173744  38 60 00 00 */	li r3, 0
/* 801767E8 00173748  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801767EC 0017374C  98 1E 01 68 */	stb r0, 0x168(r30)
lbl_801767F0:
/* 801767F0 00173750  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, qr0
/* 801767F4 00173754  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 801767F8 00173758  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, qr0
/* 801767FC 0017375C  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 80176800 00173760  E3 A1 00 98 */	psq_l f29, 152(r1), 0, qr0
/* 80176804 00173764  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 80176808 00173768  E3 81 00 88 */	psq_l f28, 136(r1), 0, qr0
/* 8017680C 0017376C  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 80176810 00173770  E3 61 00 78 */	psq_l f27, 120(r1), 0, qr0
/* 80176814 00173774  CB 61 00 70 */	lfd f27, 0x70(r1)
/* 80176818 00173778  E3 41 00 68 */	psq_l f26, 104(r1), 0, qr0
/* 8017681C 0017377C  CB 41 00 60 */	lfd f26, 0x60(r1)
/* 80176820 00173780  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80176824 00173784  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80176828 00173788  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8017682C 0017378C  7C 08 03 A6 */	mtlr r0
/* 80176830 00173790  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80176834 00173794  4E 80 00 20 */	blr

.global InhabitantExited__18CScriptBallTriggerFR6CActorR13CStateManager
InhabitantExited__18CScriptBallTriggerFR6CActorR13CStateManager:
/* 80176838 00173798  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8017683C 0017379C  7C 08 02 A6 */	mflr r0
/* 80176840 001737A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80176844 001737A4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80176848 001737A8  7C 7F 1B 78 */	mr r31, r3
/* 8017684C 001737AC  38 61 00 08 */	addi r3, r1, 8
/* 80176850 001737B0  4B F3 5B B1 */	bl "__ct__20TCastToPtr<7CPlayer>FR7CEntity"
/* 80176854 001737B4  80 63 00 04 */	lwz r3, 4(r3)
/* 80176858 001737B8  28 03 00 00 */	cmplwi r3, 0
/* 8017685C 001737BC  41 82 00 20 */	beq lbl_8017687C
/* 80176860 001737C0  80 63 07 68 */	lwz r3, 0x768(r3)
/* 80176864 001737C4  38 80 00 00 */	li r4, 0
/* 80176868 001737C8  4B F7 87 39 */	bl SetBallBoostState__10CMorphBallFQ210CMorphBall15EBallBoostState
/* 8017686C 001737CC  88 1F 01 68 */	lbz r0, 0x168(r31)
/* 80176870 001737D0  38 60 00 00 */	li r3, 0
/* 80176874 001737D4  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80176878 001737D8  98 1F 01 68 */	stb r0, 0x168(r31)
lbl_8017687C:
/* 8017687C 001737DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80176880 001737E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80176884 001737E4  7C 08 03 A6 */	mtlr r0
/* 80176888 001737E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8017688C 001737EC  4E 80 00 20 */	blr

.global InhabitantAdded__18CScriptBallTriggerFR6CActorR13CStateManager
InhabitantAdded__18CScriptBallTriggerFR6CActorR13CStateManager:
/* 80176890 001737F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80176894 001737F4  7C 08 02 A6 */	mflr r0
/* 80176898 001737F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8017689C 001737FC  38 61 00 08 */	addi r3, r1, 8
/* 801768A0 00173800  4B F3 5B 61 */	bl "__ct__20TCastToPtr<7CPlayer>FR7CEntity"
/* 801768A4 00173804  80 63 00 04 */	lwz r3, 4(r3)
/* 801768A8 00173808  28 03 00 00 */	cmplwi r3, 0
/* 801768AC 0017380C  41 82 00 10 */	beq lbl_801768BC
/* 801768B0 00173810  80 63 07 68 */	lwz r3, 0x768(r3)
/* 801768B4 00173814  38 80 00 01 */	li r4, 1
/* 801768B8 00173818  4B F7 86 E9 */	bl SetBallBoostState__10CMorphBallFQ210CMorphBall15EBallBoostState
lbl_801768BC:
/* 801768BC 0017381C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801768C0 00173820  7C 08 03 A6 */	mtlr r0
/* 801768C4 00173824  38 21 00 10 */	addi r1, r1, 0x10
/* 801768C8 00173828  4E 80 00 20 */	blr

.global __dt__18CScriptBallTriggerFv
__dt__18CScriptBallTriggerFv:
/* 801768CC 0017382C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801768D0 00173830  7C 08 02 A6 */	mflr r0
/* 801768D4 00173834  90 01 00 14 */	stw r0, 0x14(r1)
/* 801768D8 00173838  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801768DC 0017383C  7C 9F 23 78 */	mr r31, r4
/* 801768E0 00173840  93 C1 00 08 */	stw r30, 8(r1)
/* 801768E4 00173844  7C 7E 1B 79 */	or. r30, r3, r3
/* 801768E8 00173848  41 82 00 28 */	beq lbl_80176910
/* 801768EC 0017384C  3C A0 80 3E */	lis r5, lbl_803E3E80@ha
/* 801768F0 00173850  38 80 00 00 */	li r4, 0
/* 801768F4 00173854  38 05 3E 80 */	addi r0, r5, lbl_803E3E80@l
/* 801768F8 00173858  90 1E 00 00 */	stw r0, 0(r30)
/* 801768FC 0017385C  4B F0 03 85 */	bl __dt__14CScriptTriggerFv
/* 80176900 00173860  7F E0 07 35 */	extsh. r0, r31
/* 80176904 00173864  40 81 00 0C */	ble lbl_80176910
/* 80176908 00173868  7F C3 F3 78 */	mr r3, r30
/* 8017690C 0017386C  48 19 F0 25 */	bl Free__7CMemoryFPCv
lbl_80176910:
/* 80176910 00173870  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80176914 00173874  7F C3 F3 78 */	mr r3, r30
/* 80176918 00173878  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8017691C 0017387C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80176920 00173880  7C 08 03 A6 */	mtlr r0
/* 80176924 00173884  38 21 00 10 */	addi r1, r1, 0x10
/* 80176928 00173888  4E 80 00 20 */	blr

.global "__ct__18CScriptBallTriggerF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC9CVector3fRC9CVector3fbfff9CVector3f"
"__ct__18CScriptBallTriggerF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC9CVector3fRC9CVector3fbfff9CVector3f":
/* 8017692C 0017388C  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80176930 00173890  7C 08 02 A6 */	mflr r0
/* 80176934 00173894  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80176938 00173898  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 8017693C 0017389C  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, qr0
/* 80176940 001738A0  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 80176944 001738A4  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, qr0
/* 80176948 001738A8  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 8017694C 001738AC  F3 A1 00 98 */	psq_st f29, 152(r1), 0, qr0
/* 80176950 001738B0  BF 21 00 74 */	stmw r25, 0x74(r1)
/* 80176954 001738B4  39 80 00 00 */	li r12, 0
/* 80176958 001738B8  88 01 00 20 */	lbz r0, 0x20(r1)
/* 8017695C 001738BC  51 80 3E 30 */	rlwimi r0, r12, 7, 0x18, 0x18
/* 80176960 001738C0  C0 02 A1 B0 */	lfs f0, lbl_805ABED0@sda21(r2)
/* 80176964 001738C4  98 01 00 20 */	stb r0, 0x20(r1)
/* 80176968 001738C8  54 0B 06 3E */	clrlwi r11, r0, 0x18
/* 8017696C 001738CC  51 8B 36 72 */	rlwimi r11, r12, 6, 0x19, 0x19
/* 80176970 001738D0  A0 04 00 00 */	lhz r0, 0(r4)
/* 80176974 001738D4  89 01 00 48 */	lbz r8, 0x48(r1)
/* 80176978 001738D8  55 64 06 3E */	clrlwi r4, r11, 0x18
/* 8017697C 001738DC  51 84 2E B4 */	rlwimi r4, r12, 5, 0x1a, 0x1a
/* 80176980 001738E0  99 61 00 20 */	stb r11, 0x20(r1)
/* 80176984 001738E4  51 88 3E 30 */	rlwimi r8, r12, 7, 0x18, 0x18
/* 80176988 001738E8  FF A0 08 90 */	fmr f29, f1
/* 8017698C 001738EC  7C 7D 1B 78 */	mr r29, r3
/* 80176990 001738F0  FF C0 10 90 */	fmr f30, f2
/* 80176994 001738F4  FF E0 18 90 */	fmr f31, f3
/* 80176998 001738F8  91 81 00 1C */	stw r12, 0x1c(r1)
/* 8017699C 001738FC  8B E1 00 CB */	lbz r31, 0xcb(r1)
/* 801769A0 00173900  98 81 00 20 */	stb r4, 0x20(r1)
/* 801769A4 00173904  7C B9 2B 78 */	mr r25, r5
/* 801769A8 00173908  7C DA 33 78 */	mr r26, r6
/* 801769AC 0017390C  91 81 00 30 */	stw r12, 0x30(r1)
/* 801769B0 00173910  7C FB 3B 78 */	mr r27, r7
/* 801769B4 00173914  7D 3C 4B 78 */	mr r28, r9
/* 801769B8 00173918  7D 5E 53 78 */	mr r30, r10
/* 801769BC 0017391C  98 81 00 34 */	stb r4, 0x34(r1)
/* 801769C0 00173920  38 61 00 4C */	addi r3, r1, 0x4c
/* 801769C4 00173924  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 801769C8 00173928  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 801769CC 0017392C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 801769D0 00173930  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 801769D4 00173934  99 01 00 48 */	stb r8, 0x48(r1)
/* 801769D8 00173938  B0 01 00 18 */	sth r0, 0x18(r1)
/* 801769DC 0017393C  48 00 00 FD */	bl calculate_ball_aabox__Fv
/* 801769E0 00173940  38 00 10 00 */	li r0, 0x1000
/* 801769E4 00173944  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801769E8 00173948  90 01 00 08 */	stw r0, 8(r1)
/* 801769EC 0017394C  39 43 66 A0 */	addi r10, r3, sZeroVector__9CVector3f@l
/* 801769F0 00173950  38 00 00 00 */	li r0, 0
/* 801769F4 00173954  7F A3 EB 78 */	mr r3, r29
/* 801769F8 00173958  93 81 00 0C */	stw r28, 0xc(r1)
/* 801769FC 0017395C  7F 25 CB 78 */	mr r5, r25
/* 80176A00 00173960  7F 46 D3 78 */	mr r6, r26
/* 80176A04 00173964  7F 67 DB 78 */	mr r7, r27
/* 80176A08 00173968  90 01 00 10 */	stw r0, 0x10(r1)
/* 80176A0C 0017396C  38 81 00 18 */	addi r4, r1, 0x18
/* 80176A10 00173970  39 01 00 4C */	addi r8, r1, 0x4c
/* 80176A14 00173974  39 21 00 30 */	addi r9, r1, 0x30
/* 80176A18 00173978  90 01 00 14 */	stw r0, 0x14(r1)
/* 80176A1C 0017397C  4B F0 03 3D */	bl "__ct__14CScriptTriggerF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC9CVector3fRC6CAABoxRC11CDamageInfoRC9CVector3fUibbb"
/* 80176A20 00173980  3C 80 80 3E */	lis r4, lbl_803E3E80@ha
/* 80176A24 00173984  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80176A28 00173988  38 04 3E 80 */	addi r0, r4, lbl_803E3E80@l
/* 80176A2C 0017398C  38 80 00 00 */	li r4, 0
/* 80176A30 00173990  90 1D 00 00 */	stw r0, 0(r29)
/* 80176A34 00173994  38 A3 66 A0 */	addi r5, r3, sZeroVector__9CVector3f@l
/* 80176A38 00173998  7F C3 F3 78 */	mr r3, r30
/* 80176A3C 0017399C  D3 BD 01 50 */	stfs f29, 0x150(r29)
/* 80176A40 001739A0  D3 DD 01 54 */	stfs f30, 0x154(r29)
/* 80176A44 001739A4  D3 FD 01 58 */	stfs f31, 0x158(r29)
/* 80176A48 001739A8  C0 05 00 00 */	lfs f0, 0(r5)
/* 80176A4C 001739AC  D0 1D 01 5C */	stfs f0, 0x15c(r29)
/* 80176A50 001739B0  C0 05 00 04 */	lfs f0, 4(r5)
/* 80176A54 001739B4  D0 1D 01 60 */	stfs f0, 0x160(r29)
/* 80176A58 001739B8  C0 05 00 08 */	lfs f0, 8(r5)
/* 80176A5C 001739BC  D0 1D 01 64 */	stfs f0, 0x164(r29)
/* 80176A60 001739C0  88 1D 01 68 */	lbz r0, 0x168(r29)
/* 80176A64 001739C4  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80176A68 001739C8  98 1D 01 68 */	stb r0, 0x168(r29)
/* 80176A6C 001739CC  88 1D 01 68 */	lbz r0, 0x168(r29)
/* 80176A70 001739D0  53 E0 36 72 */	rlwimi r0, r31, 6, 0x19, 0x19
/* 80176A74 001739D4  98 1D 01 68 */	stb r0, 0x168(r29)
/* 80176A78 001739D8  48 19 DC 81 */	bl CanBeNormalized__9CVector3fCFv
/* 80176A7C 001739DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80176A80 001739E0  41 82 00 28 */	beq lbl_80176AA8
/* 80176A84 001739E4  7F C4 F3 78 */	mr r4, r30
/* 80176A88 001739E8  38 61 00 24 */	addi r3, r1, 0x24
/* 80176A8C 001739EC  48 19 DD C5 */	bl AsNormalized__9CVector3fCFv
/* 80176A90 001739F0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80176A94 001739F4  D0 1D 01 5C */	stfs f0, 0x15c(r29)
/* 80176A98 001739F8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80176A9C 001739FC  D0 1D 01 60 */	stfs f0, 0x160(r29)
/* 80176AA0 00173A00  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80176AA4 00173A04  D0 1D 01 64 */	stfs f0, 0x164(r29)
lbl_80176AA8:
/* 80176AA8 00173A08  7F A3 EB 78 */	mr r3, r29
/* 80176AAC 00173A0C  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, qr0
/* 80176AB0 00173A10  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 80176AB4 00173A14  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, qr0
/* 80176AB8 00173A18  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 80176ABC 00173A1C  E3 A1 00 98 */	psq_l f29, 152(r1), 0, qr0
/* 80176AC0 00173A20  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 80176AC4 00173A24  BB 21 00 74 */	lmw r25, 0x74(r1)
/* 80176AC8 00173A28  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80176ACC 00173A2C  7C 08 03 A6 */	mtlr r0
/* 80176AD0 00173A30  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80176AD4 00173A34  4E 80 00 20 */	blr

.global calculate_ball_aabox__Fv
calculate_ball_aabox__Fv:
/* 80176AD8 00173A38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80176ADC 00173A3C  7C 08 02 A6 */	mflr r0
/* 80176AE0 00173A40  C0 22 A1 BC */	lfs f1, lbl_805ABEDC@sda21(r2)
/* 80176AE4 00173A44  90 01 00 24 */	stw r0, 0x24(r1)
/* 80176AE8 00173A48  38 81 00 14 */	addi r4, r1, 0x14
/* 80176AEC 00173A4C  38 A1 00 08 */	addi r5, r1, 8
/* 80176AF0 00173A50  80 CD A1 18 */	lwz r6, gpTweakPlayer@sda21(r13)
/* 80176AF4 00173A54  C0 06 02 7C */	lfs f0, 0x27c(r6)
/* 80176AF8 00173A58  EC 21 00 32 */	fmuls f1, f1, f0
/* 80176AFC 00173A5C  FC 00 08 50 */	fneg f0, f1
/* 80176B00 00173A60  D0 21 00 08 */	stfs f1, 8(r1)
/* 80176B04 00173A64  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80176B08 00173A68  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80176B0C 00173A6C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80176B10 00173A70  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80176B14 00173A74  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80176B18 00173A78  48 1C 19 F1 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 80176B1C 00173A7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80176B20 00173A80  7C 08 03 A6 */	mtlr r0
/* 80176B24 00173A84  38 21 00 20 */	addi r1, r1, 0x20
/* 80176B28 00173A88  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805ABED0
lbl_805ABED0:
	# ROM: 0x3F8770
	.4byte 0

.global lbl_805ABED4
lbl_805ABED4:
	# ROM: 0x3F8774
	.float 0.017453292

.global lbl_805ABED8
lbl_805ABED8:
	# ROM: 0x3F8778
	.float 1.0

.global lbl_805ABEDC
lbl_805ABEDC:
	# ROM: 0x3F877C
	.4byte 0x3EA8F5C3
