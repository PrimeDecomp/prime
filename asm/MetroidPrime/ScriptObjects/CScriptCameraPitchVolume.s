.include "macros.inc"

.comm lbl_80572134, 0xC, 4

.section .ctors, "wa"
lbl_ctor:
.4byte __sinit_CScriptCameraPitchVolume_cpp

.section .data
.balign 8

.global lbl_803E7A70
lbl_803E7A70:
	# ROM: 0x3E4A70
	.4byte 0
	.4byte 0
	.4byte __dt__24CScriptCameraPitchVolumeFv
	.4byte Accept__24CScriptCameraPitchVolumeFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__24CScriptCameraPitchVolumeFfR13CStateManager
	.4byte AcceptScriptMsg__6CActorF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__6CActorFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__6CActorCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__6CActorCFRC13CStateManager
	.4byte CanRenderUnsorted__6CActorCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__6CActorFR13CStateManager
	.4byte GetDamageVulnerability__6CActorCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__24CScriptCameraPitchVolumeCFv
	.4byte Touch__24CScriptCameraPitchVolumeFR6CActorR13CStateManager
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

.global lbl_805A8120
lbl_805A8120:
	# ROM: 0x3F5AC0
	.4byte 0x00000022
	.4byte 0


.section .text, "ax"

.global __dt__24CScriptCameraPitchVolumeFv
__dt__24CScriptCameraPitchVolumeFv:
/* 802264D4 00223434  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802264D8 00223438  7C 08 02 A6 */	mflr r0
/* 802264DC 0022343C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802264E0 00223440  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802264E4 00223444  7C 9F 23 78 */	mr r31, r4
/* 802264E8 00223448  93 C1 00 08 */	stw r30, 8(r1)
/* 802264EC 0022344C  7C 7E 1B 79 */	or. r30, r3, r3
/* 802264F0 00223450  41 82 00 28 */	beq lbl_80226518
/* 802264F4 00223454  3C A0 80 3E */	lis r5, lbl_803E7A70@ha
/* 802264F8 00223458  38 80 00 00 */	li r4, 0
/* 802264FC 0022345C  38 05 7A 70 */	addi r0, r5, lbl_803E7A70@l
/* 80226500 00223460  90 1E 00 00 */	stw r0, 0(r30)
/* 80226504 00223464  4B E2 F1 ED */	bl __dt__6CActorFv
/* 80226508 00223468  7F E0 07 35 */	extsh. r0, r31
/* 8022650C 0022346C  40 81 00 0C */	ble lbl_80226518
/* 80226510 00223470  7F C3 F3 78 */	mr r3, r30
/* 80226514 00223474  48 0E F4 1D */	bl Free__7CMemoryFPCv
lbl_80226518:
/* 80226518 00223478  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022651C 0022347C  7F C3 F3 78 */	mr r3, r30
/* 80226520 00223480  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80226524 00223484  83 C1 00 08 */	lwz r30, 8(r1)
/* 80226528 00223488  7C 08 03 A6 */	mtlr r0
/* 8022652C 0022348C  38 21 00 10 */	addi r1, r1, 0x10
/* 80226530 00223490  4E 80 00 20 */	blr

.global Exited__24CScriptCameraPitchVolumeFR13CStateManager
Exited__24CScriptCameraPitchVolumeFR13CStateManager:
/* 80226534 00223494  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80226538 00223498  38 A0 00 00 */	li r5, 0
/* 8022653C 0022349C  88 03 01 3C */	lbz r0, 0x13c(r3)
/* 80226540 002234A0  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 80226544 002234A4  98 03 01 3C */	stb r0, 0x13c(r3)
/* 80226548 002234A8  80 64 08 70 */	lwz r3, 0x870(r4)
/* 8022654C 002234AC  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80226550 002234B0  80 63 00 7C */	lwz r3, 0x7c(r3)
/* 80226554 002234B4  B0 01 00 08 */	sth r0, 8(r1)
/* 80226558 002234B8  B0 03 01 C4 */	sth r0, 0x1c4(r3)
/* 8022655C 002234BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80226560 002234C0  4E 80 00 20 */	blr

.global Entered__24CScriptCameraPitchVolumeFR13CStateManager
Entered__24CScriptCameraPitchVolumeFR13CStateManager:
/* 80226564 002234C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80226568 002234C8  38 A0 00 01 */	li r5, 1
/* 8022656C 002234CC  88 03 01 3C */	lbz r0, 0x13c(r3)
/* 80226570 002234D0  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 80226574 002234D4  98 03 01 3C */	stb r0, 0x13c(r3)
/* 80226578 002234D8  80 84 08 70 */	lwz r4, 0x870(r4)
/* 8022657C 002234DC  A0 03 00 08 */	lhz r0, 8(r3)
/* 80226580 002234E0  80 64 00 7C */	lwz r3, 0x7c(r4)
/* 80226584 002234E4  B0 01 00 08 */	sth r0, 8(r1)
/* 80226588 002234E8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8022658C 002234EC  B0 03 01 C4 */	sth r0, 0x1c4(r3)
/* 80226590 002234F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80226594 002234F4  4E 80 00 20 */	blr

.global Think__24CScriptCameraPitchVolumeFfR13CStateManager
Think__24CScriptCameraPitchVolumeFfR13CStateManager:
/* 80226598 002234F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022659C 002234FC  7C 08 02 A6 */	mflr r0
/* 802265A0 00223500  90 01 00 14 */	stw r0, 0x14(r1)
/* 802265A4 00223504  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802265A8 00223508  7C 9F 23 78 */	mr r31, r4
/* 802265AC 0022350C  93 C1 00 08 */	stw r30, 8(r1)
/* 802265B0 00223510  7C 7E 1B 78 */	mr r30, r3
/* 802265B4 00223514  88 03 00 30 */	lbz r0, 0x30(r3)
/* 802265B8 00223518  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 802265BC 0022351C  41 82 00 4C */	beq lbl_80226608
/* 802265C0 00223520  88 BE 01 3C */	lbz r5, 0x13c(r30)
/* 802265C4 00223524  54 A0 CF FF */	rlwinm. r0, r5, 0x19, 0x1f, 0x1f
/* 802265C8 00223528  41 82 00 10 */	beq lbl_802265D8
/* 802265CC 0022352C  54 A0 D7 FF */	rlwinm. r0, r5, 0x1a, 0x1f, 0x1f
/* 802265D0 00223530  40 82 00 08 */	bne lbl_802265D8
/* 802265D4 00223534  4B FF FF 91 */	bl Entered__24CScriptCameraPitchVolumeFR13CStateManager
lbl_802265D8:
/* 802265D8 00223538  88 7E 01 3C */	lbz r3, 0x13c(r30)
/* 802265DC 0022353C  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 802265E0 00223540  40 82 00 18 */	bne lbl_802265F8
/* 802265E4 00223544  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 802265E8 00223548  41 82 00 10 */	beq lbl_802265F8
/* 802265EC 0022354C  7F C3 F3 78 */	mr r3, r30
/* 802265F0 00223550  7F E4 FB 78 */	mr r4, r31
/* 802265F4 00223554  4B FF FF 41 */	bl Exited__24CScriptCameraPitchVolumeFR13CStateManager
lbl_802265F8:
/* 802265F8 00223558  88 1E 01 3C */	lbz r0, 0x13c(r30)
/* 802265FC 0022355C  38 60 00 00 */	li r3, 0
/* 80226600 00223560  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80226604 00223564  98 1E 01 3C */	stb r0, 0x13c(r30)
lbl_80226608:
/* 80226608 00223568  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022660C 0022356C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80226610 00223570  83 C1 00 08 */	lwz r30, 8(r1)
/* 80226614 00223574  7C 08 03 A6 */	mtlr r0
/* 80226618 00223578  38 21 00 10 */	addi r1, r1, 0x10
/* 8022661C 0022357C  4E 80 00 20 */	blr

.global Touch__24CScriptCameraPitchVolumeFR6CActorR13CStateManager
Touch__24CScriptCameraPitchVolumeFR6CActorR13CStateManager:
/* 80226620 00223580  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80226624 00223584  7C 08 02 A6 */	mflr r0
/* 80226628 00223588  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8022662C 0022358C  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 80226630 00223590  7C 9F 23 78 */	mr r31, r4
/* 80226634 00223594  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 80226638 00223598  7C 7E 1B 78 */	mr r30, r3
/* 8022663C 0022359C  38 61 00 08 */	addi r3, r1, 8
/* 80226640 002235A0  4B E8 5D C1 */	bl "__ct__20TCastToPtr<7CPlayer>FR7CEntity"
/* 80226644 002235A4  80 03 00 04 */	lwz r0, 4(r3)
/* 80226648 002235A8  28 00 00 00 */	cmplwi r0, 0
/* 8022664C 002235AC  41 82 00 D0 */	beq lbl_8022671C
/* 80226650 002235B0  7F E4 FB 78 */	mr r4, r31
/* 80226654 002235B4  38 61 00 10 */	addi r3, r1, 0x10
/* 80226658 002235B8  81 9F 00 00 */	lwz r12, 0(r31)
/* 8022665C 002235BC  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80226660 002235C0  7D 89 03 A6 */	mtctr r12
/* 80226664 002235C4  4E 80 04 21 */	bctrl
/* 80226668 002235C8  88 01 00 28 */	lbz r0, 0x28(r1)
/* 8022666C 002235CC  28 00 00 00 */	cmplwi r0, 0
/* 80226670 002235D0  98 01 00 44 */	stb r0, 0x44(r1)
/* 80226674 002235D4  41 82 00 3C */	beq lbl_802266B0
/* 80226678 002235D8  34 61 00 2C */	addic. r3, r1, 0x2c
/* 8022667C 002235DC  41 82 00 34 */	beq lbl_802266B0
/* 80226680 002235E0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80226684 002235E4  D0 03 00 00 */	stfs f0, 0(r3)
/* 80226688 002235E8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8022668C 002235EC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80226690 002235F0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80226694 002235F4  D0 03 00 08 */	stfs f0, 8(r3)
/* 80226698 002235F8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8022669C 002235FC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802266A0 00223600  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 802266A4 00223604  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 802266A8 00223608  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 802266AC 0022360C  D0 03 00 14 */	stfs f0, 0x14(r3)
lbl_802266B0:
/* 802266B0 00223610  88 01 00 44 */	lbz r0, 0x44(r1)
/* 802266B4 00223614  38 60 00 00 */	li r3, 0
/* 802266B8 00223618  98 61 00 28 */	stb r3, 0x28(r1)
/* 802266BC 0022361C  28 00 00 00 */	cmplwi r0, 0
/* 802266C0 00223620  41 82 00 54 */	beq lbl_80226714
/* 802266C4 00223624  3C 80 80 5A */	lis r4, sIdentity__12CTransform4f@ha
/* 802266C8 00223628  38 61 00 48 */	addi r3, r1, 0x48
/* 802266CC 0022362C  38 A4 66 70 */	addi r5, r4, sIdentity__12CTransform4f@l
/* 802266D0 00223630  38 81 00 2C */	addi r4, r1, 0x2c
/* 802266D4 00223634  48 0A F6 49 */	bl FromAABox__6COBBoxFRC6CAABoxRC12CTransform4f
/* 802266D8 00223638  38 61 00 84 */	addi r3, r1, 0x84
/* 802266DC 0022363C  38 81 00 48 */	addi r4, r1, 0x48
/* 802266E0 00223640  48 0E C4 95 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 802266E4 00223644  C0 41 00 78 */	lfs f2, 0x78(r1)
/* 802266E8 00223648  38 7E 00 E8 */	addi r3, r30, 0xe8
/* 802266EC 0022364C  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 802266F0 00223650  38 81 00 84 */	addi r4, r1, 0x84
/* 802266F4 00223654  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 802266F8 00223658  D0 41 00 B4 */	stfs f2, 0xb4(r1)
/* 802266FC 0022365C  D0 21 00 B8 */	stfs f1, 0xb8(r1)
/* 80226700 00223660  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80226704 00223664  48 0A ED 91 */	bl OBBIntersectsBox__6COBBoxCFRC6COBBox
/* 80226708 00223668  88 1E 01 3C */	lbz r0, 0x13c(r30)
/* 8022670C 0022366C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80226710 00223670  98 1E 01 3C */	stb r0, 0x13c(r30)
lbl_80226714:
/* 80226714 00223674  38 00 00 00 */	li r0, 0
/* 80226718 00223678  98 01 00 44 */	stb r0, 0x44(r1)
lbl_8022671C:
/* 8022671C 0022367C  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80226720 00223680  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 80226724 00223684  83 C1 00 C8 */	lwz r30, 0xc8(r1)
/* 80226728 00223688  7C 08 03 A6 */	mtlr r0
/* 8022672C 0022368C  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80226730 00223690  4E 80 00 20 */	blr

.global GetTouchBounds__24CScriptCameraPitchVolumeCFv
GetTouchBounds__24CScriptCameraPitchVolumeCFv:
/* 80226734 00223694  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80226738 00223698  7C 08 02 A6 */	mflr r0
/* 8022673C 0022369C  3C A0 80 5A */	lis r5, sIdentity__12CTransform4f@ha
/* 80226740 002236A0  38 84 00 E8 */	addi r4, r4, 0xe8
/* 80226744 002236A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80226748 002236A8  38 A5 66 70 */	addi r5, r5, sIdentity__12CTransform4f@l
/* 8022674C 002236AC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80226750 002236B0  7C 7F 1B 78 */	mr r31, r3
/* 80226754 002236B4  38 61 00 08 */	addi r3, r1, 8
/* 80226758 002236B8  48 0A F6 81 */	bl CalculateAABox__6COBBoxCFRC12CTransform4f
/* 8022675C 002236BC  38 00 00 01 */	li r0, 1
/* 80226760 002236C0  28 1F 00 00 */	cmplwi r31, 0
/* 80226764 002236C4  98 1F 00 18 */	stb r0, 0x18(r31)
/* 80226768 002236C8  41 82 00 34 */	beq lbl_8022679C
/* 8022676C 002236CC  C0 01 00 08 */	lfs f0, 8(r1)
/* 80226770 002236D0  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80226774 002236D4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80226778 002236D8  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8022677C 002236DC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80226780 002236E0  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80226784 002236E4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80226788 002236E8  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8022678C 002236EC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80226790 002236F0  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 80226794 002236F4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80226798 002236F8  D0 1F 00 14 */	stfs f0, 0x14(r31)
lbl_8022679C:
/* 8022679C 002236FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802267A0 00223700  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802267A4 00223704  7C 08 03 A6 */	mtlr r0
/* 802267A8 00223708  38 21 00 30 */	addi r1, r1, 0x30
/* 802267AC 0022370C  4E 80 00 20 */	blr

.global Accept__24CScriptCameraPitchVolumeFR8IVisitor
Accept__24CScriptCameraPitchVolumeFR8IVisitor:
/* 802267B0 00223710  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802267B4 00223714  7C 08 02 A6 */	mflr r0
/* 802267B8 00223718  90 01 00 14 */	stw r0, 0x14(r1)
/* 802267BC 0022371C  7C 60 1B 78 */	mr r0, r3
/* 802267C0 00223720  7C 83 23 78 */	mr r3, r4
/* 802267C4 00223724  81 84 00 00 */	lwz r12, 0(r4)
/* 802267C8 00223728  7C 04 03 78 */	mr r4, r0
/* 802267CC 0022372C  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 802267D0 00223730  7D 89 03 A6 */	mtctr r12
/* 802267D4 00223734  4E 80 04 21 */	bctrl
/* 802267D8 00223738  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802267DC 0022373C  7C 08 03 A6 */	mtlr r0
/* 802267E0 00223740  38 21 00 10 */	addi r1, r1, 0x10
/* 802267E4 00223744  4E 80 00 20 */	blr

.global "__ct__24CScriptCameraPitchVolumeF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC9CVector3fRC12CTransform4fRC9CRelAngleRC9CRelAnglef"
"__ct__24CScriptCameraPitchVolumeF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC9CVector3fRC12CTransform4fRC9CRelAngleRC9CRelAnglef":
/* 802267E8 00223748  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 802267EC 0022374C  7C 08 02 A6 */	mflr r0
/* 802267F0 00223750  90 01 01 24 */	stw r0, 0x124(r1)
/* 802267F4 00223754  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 802267F8 00223758  F3 E1 01 18 */	psq_st f31, 280(r1), 0, qr0
/* 802267FC 0022375C  BE E1 00 EC */	stmw r23, 0xec(r1)
/* 80226800 00223760  FF E0 08 90 */	fmr f31, f1
/* 80226804 00223764  7C 78 1B 78 */	mr r24, r3
/* 80226808 00223768  83 E1 01 28 */	lwz r31, 0x128(r1)
/* 8022680C 0022376C  7C 97 23 78 */	mr r23, r4
/* 80226810 00223770  7C B9 2B 78 */	mr r25, r5
/* 80226814 00223774  7C DA 33 78 */	mr r26, r6
/* 80226818 00223778  7C FB 3B 78 */	mr r27, r7
/* 8022681C 0022377C  7D 1C 43 78 */	mr r28, r8
/* 80226820 00223780  7D 3D 4B 78 */	mr r29, r9
/* 80226824 00223784  7D 5E 53 78 */	mr r30, r10
/* 80226828 00223788  38 61 00 94 */	addi r3, r1, 0x94
/* 8022682C 0022378C  4B E1 3F 79 */	bl CModelDataNull__10CModelDataFv
/* 80226830 00223790  38 61 00 2C */	addi r3, r1, 0x2c
/* 80226834 00223794  4B DF 46 05 */	bl None__16CActorParametersFv
/* 80226838 00223798  A0 8D A3 8C */	lhz r4, kInvalidUniqueId@sda21(r13)
/* 8022683C 0022379C  38 00 00 00 */	li r0, 0
/* 80226840 002237A0  80 AD 95 60 */	lwz r5, lbl_805A8120@sda21(r13)
/* 80226844 002237A4  38 60 00 00 */	li r3, 0
/* 80226848 002237A8  B0 81 00 10 */	sth r4, 0x10(r1)
/* 8022684C 002237AC  38 80 00 01 */	li r4, 1
/* 80226850 002237B0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80226854 002237B4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80226858 002237B8  48 16 36 9D */	bl __shl2i
/* 8022685C 002237BC  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 80226860 002237C0  39 61 00 2C */	addi r11, r1, 0x2c
/* 80226864 002237C4  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 80226868 002237C8  38 01 00 10 */	addi r0, r1, 0x10
/* 8022686C 002237CC  7C A3 1B 78 */	or r3, r5, r3
/* 80226870 002237D0  A1 37 00 00 */	lhz r9, 0(r23)
/* 80226874 002237D4  7C C4 23 78 */	or r4, r6, r4
/* 80226878 002237D8  90 61 00 18 */	stw r3, 0x18(r1)
/* 8022687C 002237DC  7F 03 C3 78 */	mr r3, r24
/* 80226880 002237E0  7F 25 CB 78 */	mr r5, r25
/* 80226884 002237E4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80226888 002237E8  7F 46 D3 78 */	mr r6, r26
/* 8022688C 002237EC  7F 67 DB 78 */	mr r7, r27
/* 80226890 002237F0  7F A8 EB 78 */	mr r8, r29
/* 80226894 002237F4  B1 21 00 14 */	sth r9, 0x14(r1)
/* 80226898 002237F8  38 81 00 14 */	addi r4, r1, 0x14
/* 8022689C 002237FC  39 21 00 94 */	addi r9, r1, 0x94
/* 802268A0 00223800  39 41 00 18 */	addi r10, r1, 0x18
/* 802268A4 00223804  91 61 00 08 */	stw r11, 8(r1)
/* 802268A8 00223808  90 01 00 0C */	stw r0, 0xc(r1)
/* 802268AC 0022380C  4B E2 EF 75 */	bl "__ct__6CActorF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC13CMaterialListRC16CActorParameters9TUniqueId"
/* 802268B0 00223810  38 61 00 2C */	addi r3, r1, 0x2c
/* 802268B4 00223814  38 80 FF FF */	li r4, -1
/* 802268B8 00223818  4B ED FD 51 */	bl __dt__16CLightParametersFv
/* 802268BC 0022381C  38 61 00 94 */	addi r3, r1, 0x94
/* 802268C0 00223820  38 80 FF FF */	li r4, -1
/* 802268C4 00223824  4B EF 01 89 */	bl __dt__10CModelDataFv
/* 802268C8 00223828  3C 80 80 3E */	lis r4, lbl_803E7A70@ha
/* 802268CC 0022382C  3C 60 80 57 */	lis r3, lbl_80572134@ha
/* 802268D0 00223830  38 04 7A 70 */	addi r0, r4, lbl_803E7A70@l
/* 802268D4 00223834  7F A4 EB 78 */	mr r4, r29
/* 802268D8 00223838  90 18 00 00 */	stw r0, 0(r24)
/* 802268DC 0022383C  3B 23 21 34 */	addi r25, r3, lbl_80572134@l
/* 802268E0 00223840  38 78 00 E8 */	addi r3, r24, 0xe8
/* 802268E4 00223844  38 A1 00 20 */	addi r5, r1, 0x20
/* 802268E8 00223848  C0 3C 00 08 */	lfs f1, 8(r28)
/* 802268EC 0022384C  C0 19 00 08 */	lfs f0, 8(r25)
/* 802268F0 00223850  C0 7C 00 04 */	lfs f3, 4(r28)
/* 802268F4 00223854  C0 59 00 04 */	lfs f2, 4(r25)
/* 802268F8 00223858  EC 81 00 32 */	fmuls f4, f1, f0
/* 802268FC 0022385C  C0 3C 00 00 */	lfs f1, 0(r28)
/* 80226900 00223860  C0 19 00 00 */	lfs f0, 0(r25)
/* 80226904 00223864  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80226908 00223868  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 8022690C 0022386C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80226910 00223870  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80226914 00223874  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80226918 00223878  48 0A F6 7D */	bl __ct__6COBBoxFRC12CTransform4fRC9CVector3f
/* 8022691C 0022387C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80226920 00223880  3C 60 80 57 */	lis r3, lbl_80572134@ha
/* 80226924 00223884  38 A3 21 34 */	addi r5, r3, lbl_80572134@l
/* 80226928 00223888  38 80 00 00 */	li r4, 0
/* 8022692C 0022388C  D0 18 01 24 */	stfs f0, 0x124(r24)
/* 80226930 00223890  7F 03 C3 78 */	mr r3, r24
/* 80226934 00223894  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80226938 00223898  D0 18 01 28 */	stfs f0, 0x128(r24)
/* 8022693C 0022389C  C0 3C 00 00 */	lfs f1, 0(r28)
/* 80226940 002238A0  C0 05 00 00 */	lfs f0, 0(r5)
/* 80226944 002238A4  C0 7C 00 04 */	lfs f3, 4(r28)
/* 80226948 002238A8  C0 59 00 04 */	lfs f2, 4(r25)
/* 8022694C 002238AC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80226950 002238B0  C0 9C 00 08 */	lfs f4, 8(r28)
/* 80226954 002238B4  C0 39 00 08 */	lfs f1, 8(r25)
/* 80226958 002238B8  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8022695C 002238BC  D0 18 01 2C */	stfs f0, 0x12c(r24)
/* 80226960 002238C0  EC 04 00 72 */	fmuls f0, f4, f1
/* 80226964 002238C4  D0 58 01 30 */	stfs f2, 0x130(r24)
/* 80226968 002238C8  D0 18 01 34 */	stfs f0, 0x134(r24)
/* 8022696C 002238CC  D3 F8 01 38 */	stfs f31, 0x138(r24)
/* 80226970 002238D0  88 18 01 3C */	lbz r0, 0x13c(r24)
/* 80226974 002238D4  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80226978 002238D8  98 18 01 3C */	stb r0, 0x13c(r24)
/* 8022697C 002238DC  88 18 01 3C */	lbz r0, 0x13c(r24)
/* 80226980 002238E0  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 80226984 002238E4  98 18 01 3C */	stb r0, 0x13c(r24)
/* 80226988 002238E8  E3 E1 01 18 */	psq_l f31, 280(r1), 0, qr0
/* 8022698C 002238EC  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 80226990 002238F0  BA E1 00 EC */	lmw r23, 0xec(r1)
/* 80226994 002238F4  80 01 01 24 */	lwz r0, 0x124(r1)
/* 80226998 002238F8  7C 08 03 A6 */	mtlr r0
/* 8022699C 002238FC  38 21 01 20 */	addi r1, r1, 0x120
/* 802269A0 00223900  4E 80 00 20 */	blr

.global __sinit_CScriptCameraPitchVolume_cpp
__sinit_CScriptCameraPitchVolume_cpp:
/* 802269A4 00223904  C0 02 B4 B8 */	lfs f0, lbl_805AD1D8@sda21(r2)
/* 802269A8 00223908  3C 60 80 57 */	lis r3, lbl_80572134@ha
/* 802269AC 0022390C  D4 03 21 34 */	stfsu f0, lbl_80572134@l(r3)
/* 802269B0 00223910  D0 03 00 04 */	stfs f0, 4(r3)
/* 802269B4 00223914  D0 03 00 08 */	stfs f0, 8(r3)
/* 802269B8 00223918  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805AD1D8
lbl_805AD1D8:
	# ROM: 0x3F9A78
	.float 0.5
	.4byte 0
