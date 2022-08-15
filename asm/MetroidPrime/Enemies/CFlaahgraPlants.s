.include "macros.inc"

.section .data
.balign 8

.global lbl_803E6FD8
lbl_803E6FD8:
	# ROM: 0x3E3FD8
	.4byte 0
	.4byte 0
	.4byte __dt__15CFlaahgraPlantsFv
	.4byte Accept__15CFlaahgraPlantsFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__15CFlaahgraPlantsFfR13CStateManager
	.4byte AcceptScriptMsg__15CFlaahgraPlantsF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__6CActorFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__15CFlaahgraPlantsCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__6CActorCFRC13CStateManager
	.4byte CanRenderUnsorted__6CActorCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__6CActorFR13CStateManager
	.4byte GetDamageVulnerability__6CActorCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__15CFlaahgraPlantsCFv
	.4byte Touch__15CFlaahgraPlantsFR6CActorR13CStateManager
	.4byte GetOrbitPosition__6CActorCFRC13CStateManager
	.4byte GetAimPosition__6CActorCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__6CActorCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__6CActorFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC12CTransform4f
	.4byte DoUserAnimEvent__6CActorFR13CStateManagerRC13CInt32POINode14EUserEventTypef
	.4byte 0

.section .sdata
.balign 8

.global lbl_805A7F68
lbl_805A7F68:
	# ROM: 0x3F5908
	.4byte 0x00000023

.global lbl_805A7F6C
lbl_805A7F6C:
	# ROM: 0x3F590C
	.4byte 0x00000013

.global lbl_805A7F70
lbl_805A7F70:
	# ROM: 0x3F5910
	.4byte 0x00000020

.global lbl_805A7F74
lbl_805A7F74:
	# ROM: 0x3F5914
	.4byte 0x00000022

.global lbl_805A7F78
lbl_805A7F78:
	# ROM: 0x3F5918
	.4byte 0x0000002F

.global lbl_805A7F7C
lbl_805A7F7C:
	# ROM: 0x3F591C
	.4byte 0x00000026

.global lbl_805A7F80
lbl_805A7F80:
	# ROM: 0x3F5920
	.4byte 0x00000021
	.4byte 0

.section .text, "ax"

.global AcceptScriptMsg__15CFlaahgraPlantsF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__15CFlaahgraPlantsF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 80208410 00205370  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80208414 00205374  7C 08 02 A6 */	mflr r0
/* 80208418 00205378  90 01 00 74 */	stw r0, 0x74(r1)
/* 8020841C 0020537C  BF 61 00 5C */	stmw r27, 0x5c(r1)
/* 80208420 00205380  7C 7D 1B 78 */	mr r29, r3
/* 80208424 00205384  7C 9B 23 78 */	mr r27, r4
/* 80208428 00205388  7C DE 33 78 */	mr r30, r6
/* 8020842C 0020538C  A0 05 00 00 */	lhz r0, 0(r5)
/* 80208430 00205390  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80208434 00205394  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 80208438 00205398  4B E4 B1 DD */	bl AcceptScriptMsg__6CActorF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 8020843C 0020539C  2C 1B 00 22 */	cmpwi r27, 0x22
/* 80208440 002053A0  41 82 02 14 */	beq lbl_80208654
/* 80208444 002053A4  40 80 02 34 */	bge lbl_80208678
/* 80208448 002053A8  2C 1B 00 21 */	cmpwi r27, 0x21
/* 8020844C 002053AC  40 80 00 08 */	bge lbl_80208454
/* 80208450 002053B0  48 00 02 28 */	b lbl_80208678
lbl_80208454:
/* 80208454 002053B4  80 7D 00 EC */	lwz r3, 0xec(r29)
/* 80208458 002053B8  38 80 00 01 */	li r4, 1
/* 8020845C 002053BC  81 83 00 00 */	lwz r12, 0(r3)
/* 80208460 002053C0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80208464 002053C4  7D 89 03 A6 */	mtctr r12
/* 80208468 002053C8  4E 80 04 21 */	bctrl
/* 8020846C 002053CC  7F A3 EB 78 */	mr r3, r29
/* 80208470 002053D0  38 80 00 01 */	li r4, 1
/* 80208474 002053D4  81 9D 00 00 */	lwz r12, 0(r29)
/* 80208478 002053D8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8020847C 002053DC  7D 89 03 A6 */	mtctr r12
/* 80208480 002053E0  4E 80 04 21 */	bctrl
/* 80208484 002053E4  A0 7D 01 6C */	lhz r3, 0x16c(r29)
/* 80208488 002053E8  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8020848C 002053EC  7C 03 00 40 */	cmplw r3, r0
/* 80208490 002053F0  40 82 01 E8 */	bne lbl_80208678
/* 80208494 002053F4  7F C4 F3 78 */	mr r4, r30
/* 80208498 002053F8  38 61 00 18 */	addi r3, r1, 0x18
/* 8020849C 002053FC  4B E4 4C 41 */	bl AllocateUniqueId__13CStateManagerFv
/* 802084A0 00205400  A0 01 00 18 */	lhz r0, 0x18(r1)
/* 802084A4 00205404  3C 60 80 3D */	lis r3, lbl_803D2738@ha
/* 802084A8 00205408  38 83 27 38 */	addi r4, r3, lbl_803D2738@l
/* 802084AC 0020540C  C0 02 B1 10 */	lfs f0, lbl_805ACE30@sda21(r2)
/* 802084B0 00205410  B0 1D 01 6C */	sth r0, 0x16c(r29)
/* 802084B4 00205414  38 60 03 10 */	li r3, 0x310
/* 802084B8 00205418  C0 42 B1 14 */	lfs f2, lbl_805ACE34@sda21(r2)
/* 802084BC 0020541C  38 A0 00 00 */	li r5, 0
/* 802084C0 00205420  C0 9D 01 64 */	lfs f4, 0x164(r29)
/* 802084C4 00205424  C0 7D 01 68 */	lfs f3, 0x168(r29)
/* 802084C8 00205428  EC 84 00 2A */	fadds f4, f4, f0
/* 802084CC 0020542C  C0 3D 01 60 */	lfs f1, 0x160(r29)
/* 802084D0 00205430  C0 02 B1 18 */	lfs f0, lbl_805ACE38@sda21(r2)
/* 802084D4 00205434  EC 43 10 2A */	fadds f2, f3, f2
/* 802084D8 00205438  EC 01 00 2A */	fadds f0, f1, f0
/* 802084DC 0020543C  D0 81 00 34 */	stfs f4, 0x34(r1)
/* 802084E0 00205440  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 802084E4 00205444  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 802084E8 00205448  48 10 D3 85 */	bl __nw__FUlPCcPCc
/* 802084EC 0020544C  7C 7F 1B 79 */	or. r31, r3, r3
/* 802084F0 00205450  41 82 00 4C */	beq lbl_8020853C
/* 802084F4 00205454  A0 1D 00 08 */	lhz r0, 8(r29)
/* 802084F8 00205458  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 802084FC 0020545C  39 04 66 A0 */	addi r8, r4, sZeroVector__9CVector3f@l
/* 80208500 00205460  C0 22 B1 1C */	lfs f1, lbl_805ACE3C@sda21(r2)
/* 80208504 00205464  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80208508 00205468  38 81 00 0C */	addi r4, r1, 0xc
/* 8020850C 0020546C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80208510 00205470  38 C1 00 14 */	addi r6, r1, 0x14
/* 80208514 00205474  81 5D 00 04 */	lwz r10, 4(r29)
/* 80208518 00205478  38 E1 00 30 */	addi r7, r1, 0x30
/* 8020851C 0020547C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80208520 00205480  39 20 00 01 */	li r9, 1
/* 80208524 00205484  91 41 00 2C */	stw r10, 0x2c(r1)
/* 80208528 00205488  A0 1D 01 6C */	lhz r0, 0x16c(r29)
/* 8020852C 0020548C  91 41 00 28 */	stw r10, 0x28(r1)
/* 80208530 00205490  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80208534 00205494  4B FA 18 75 */	bl __ct__15CCollisionActorF9TUniqueIdCRi9TUniqueIdRC9CVector3fRC9CVector3fbf
/* 80208538 00205498  7C 7F 1B 78 */	mr r31, r3
lbl_8020853C:
/* 8020853C 0020549C  28 1F 00 00 */	cmplwi r31, 0
/* 80208540 002054A0  41 82 01 38 */	beq lbl_80208678
/* 80208544 002054A4  38 7F 00 34 */	addi r3, r31, 0x34
/* 80208548 002054A8  38 9D 00 34 */	addi r4, r29, 0x34
/* 8020854C 002054AC  48 10 A5 F5 */	bl __as__12CTransform4fFRC12CTransform4f
/* 80208550 002054B0  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 80208554 002054B4  38 A0 00 01 */	li r5, 1
/* 80208558 002054B8  50 A0 26 F6 */	rlwimi r0, r5, 4, 0x1b, 0x1b
/* 8020855C 002054BC  38 60 00 00 */	li r3, 0
/* 80208560 002054C0  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 80208564 002054C4  38 80 00 01 */	li r4, 1
/* 80208568 002054C8  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 8020856C 002054CC  50 A0 1F 38 */	rlwimi r0, r5, 3, 0x1c, 0x1c
/* 80208570 002054D0  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 80208574 002054D4  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 80208578 002054D8  50 A0 17 7A */	rlwimi r0, r5, 2, 0x1d, 0x1d
/* 8020857C 002054DC  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 80208580 002054E0  80 AD 93 B4 */	lwz r5, lbl_805A7F74@sda21(r13)
/* 80208584 002054E4  48 18 19 71 */	bl __shl2i
/* 80208588 002054E8  80 AD 93 B8 */	lwz r5, lbl_805A7F78@sda21(r13)
/* 8020858C 002054EC  7C 9B 23 78 */	mr r27, r4
/* 80208590 002054F0  7C 7C 1B 78 */	mr r28, r3
/* 80208594 002054F4  38 60 00 00 */	li r3, 0
/* 80208598 002054F8  38 80 00 01 */	li r4, 1
/* 8020859C 002054FC  48 18 19 59 */	bl __shl2i
/* 802085A0 00205500  80 AD 93 BC */	lwz r5, lbl_805A7F7C@sda21(r13)
/* 802085A4 00205504  7F 7B 23 78 */	or r27, r27, r4
/* 802085A8 00205508  7F 9C 1B 78 */	or r28, r28, r3
/* 802085AC 0020550C  38 60 00 00 */	li r3, 0
/* 802085B0 00205510  38 80 00 01 */	li r4, 1
/* 802085B4 00205514  48 18 19 41 */	bl __shl2i
/* 802085B8 00205518  80 AD 93 C0 */	lwz r5, lbl_805A7F80@sda21(r13)
/* 802085BC 0020551C  7F 7B 23 78 */	or r27, r27, r4
/* 802085C0 00205520  7F 9C 1B 78 */	or r28, r28, r3
/* 802085C4 00205524  38 60 00 00 */	li r3, 0
/* 802085C8 00205528  38 80 00 01 */	li r4, 1
/* 802085CC 0020552C  48 18 19 29 */	bl __shl2i
/* 802085D0 00205530  80 AD 93 B0 */	lwz r5, lbl_805A7F70@sda21(r13)
/* 802085D4 00205534  7F 7B 23 78 */	or r27, r27, r4
/* 802085D8 00205538  7F 9C 1B 78 */	or r28, r28, r3
/* 802085DC 0020553C  38 60 00 00 */	li r3, 0
/* 802085E0 00205540  38 80 00 01 */	li r4, 1
/* 802085E4 00205544  48 18 19 11 */	bl __shl2i
/* 802085E8 00205548  38 00 00 03 */	li r0, 3
/* 802085EC 0020554C  90 81 00 44 */	stw r4, 0x44(r1)
/* 802085F0 00205550  38 81 00 40 */	addi r4, r1, 0x40
/* 802085F4 00205554  90 61 00 40 */	stw r3, 0x40(r1)
/* 802085F8 00205558  7F E3 FB 78 */	mr r3, r31
/* 802085FC 0020555C  93 61 00 4C */	stw r27, 0x4c(r1)
/* 80208600 00205560  93 81 00 48 */	stw r28, 0x48(r1)
/* 80208604 00205564  90 01 00 50 */	stw r0, 0x50(r1)
/* 80208608 00205568  4B E4 B2 99 */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
/* 8020860C 0020556C  80 9F 00 68 */	lwz r4, 0x68(r31)
/* 80208610 00205570  3C 00 00 04 */	lis r0, 4
/* 80208614 00205574  7F C3 F3 78 */	mr r3, r30
/* 80208618 00205578  60 85 08 00 */	ori r5, r4, 0x800
/* 8020861C 0020557C  7F E4 FB 78 */	mr r4, r31
/* 80208620 00205580  90 BF 00 68 */	stw r5, 0x68(r31)
/* 80208624 00205584  80 DF 00 6C */	lwz r6, 0x6c(r31)
/* 80208628 00205588  7C C0 03 78 */	or r0, r6, r0
/* 8020862C 0020558C  90 1F 00 6C */	stw r0, 0x6c(r31)
/* 80208630 00205590  4B E4 46 C5 */	bl AddObject__13CStateManagerFP7CEntityQ213CStateManager18EScriptPersistence
/* 80208634 00205594  80 1D 00 04 */	lwz r0, 4(r29)
/* 80208638 00205598  7F C3 F3 78 */	mr r3, r30
/* 8020863C 0020559C  7F E4 FB 78 */	mr r4, r31
/* 80208640 002055A0  38 A1 00 24 */	addi r5, r1, 0x24
/* 80208644 002055A4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80208648 002055A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8020864C 002055AC  4B E3 CC 2D */	bl SetActorAreaId__13CStateManagerFR6CActor7TAreaId
/* 80208650 002055B0  48 00 00 28 */	b lbl_80208678
lbl_80208654:
/* 80208654 002055B4  A0 7D 01 6C */	lhz r3, 0x16c(r29)
/* 80208658 002055B8  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8020865C 002055BC  7C 03 00 40 */	cmplw r3, r0
/* 80208660 002055C0  41 82 00 18 */	beq lbl_80208678
/* 80208664 002055C4  A0 1D 01 6C */	lhz r0, 0x16c(r29)
/* 80208668 002055C8  7F C3 F3 78 */	mr r3, r30
/* 8020866C 002055CC  38 81 00 08 */	addi r4, r1, 8
/* 80208670 002055D0  B0 01 00 08 */	sth r0, 8(r1)
/* 80208674 002055D4  4B E4 3B F9 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
lbl_80208678:
/* 80208678 002055D8  BB 61 00 5C */	lmw r27, 0x5c(r1)
/* 8020867C 002055DC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80208680 002055E0  7C 08 03 A6 */	mtlr r0
/* 80208684 002055E4  38 21 00 70 */	addi r1, r1, 0x70
/* 80208688 002055E8  4E 80 00 20 */	blr

.global Think__15CFlaahgraPlantsFfR13CStateManager
Think__15CFlaahgraPlantsFfR13CStateManager:
/* 8020868C 002055EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80208690 002055F0  7C 08 02 A6 */	mflr r0
/* 80208694 002055F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80208698 002055F8  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8020869C 002055FC  FF E0 08 90 */	fmr f31, f1
/* 802086A0 00205600  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802086A4 00205604  7C 9F 23 78 */	mr r31, r4
/* 802086A8 00205608  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802086AC 0020560C  7C 7E 1B 78 */	mr r30, r3
/* 802086B0 00205610  88 03 00 30 */	lbz r0, 0x30(r3)
/* 802086B4 00205614  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 802086B8 00205618  41 82 00 1C */	beq lbl_802086D4
/* 802086BC 0020561C  80 7E 00 EC */	lwz r3, 0xec(r30)
/* 802086C0 00205620  81 83 00 00 */	lwz r12, 0(r3)
/* 802086C4 00205624  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802086C8 00205628  7D 89 03 A6 */	mtctr r12
/* 802086CC 0020562C  4E 80 04 21 */	bctrl
/* 802086D0 00205630  D3 FE 01 2C */	stfs f31, 0x12c(r30)
lbl_802086D4:
/* 802086D4 00205634  80 7E 00 EC */	lwz r3, 0xec(r30)
/* 802086D8 00205638  81 83 00 00 */	lwz r12, 0(r3)
/* 802086DC 0020563C  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 802086E0 00205640  7D 89 03 A6 */	mtctr r12
/* 802086E4 00205644  4E 80 04 21 */	bctrl
/* 802086E8 00205648  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802086EC 0020564C  41 82 00 1C */	beq lbl_80208708
/* 802086F0 00205650  A0 1E 00 08 */	lhz r0, 8(r30)
/* 802086F4 00205654  7F E3 FB 78 */	mr r3, r31
/* 802086F8 00205658  38 81 00 0C */	addi r4, r1, 0xc
/* 802086FC 0020565C  B0 01 00 08 */	sth r0, 8(r1)
/* 80208700 00205660  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80208704 00205664  4B E4 3B 69 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
lbl_80208708:
/* 80208708 00205668  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8020870C 0020566C  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 80208710 00205670  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80208714 00205674  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80208718 00205678  7C 08 03 A6 */	mtlr r0
/* 8020871C 0020567C  38 21 00 20 */	addi r1, r1, 0x20
/* 80208720 00205680  4E 80 00 20 */	blr

.global Accept__15CFlaahgraPlantsFR8IVisitor
Accept__15CFlaahgraPlantsFR8IVisitor:
/* 80208724 00205684  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80208728 00205688  7C 08 02 A6 */	mflr r0
/* 8020872C 0020568C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80208730 00205690  7C 60 1B 78 */	mr r0, r3
/* 80208734 00205694  7C 83 23 78 */	mr r3, r4
/* 80208738 00205698  81 84 00 00 */	lwz r12, 0(r4)
/* 8020873C 0020569C  7C 04 03 78 */	mr r4, r0
/* 80208740 002056A0  81 8C 00 08 */	lwz r12, 8(r12)
/* 80208744 002056A4  7D 89 03 A6 */	mtctr r12
/* 80208748 002056A8  4E 80 04 21 */	bctrl
/* 8020874C 002056AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80208750 002056B0  7C 08 03 A6 */	mtlr r0
/* 80208754 002056B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80208758 002056B8  4E 80 00 20 */	blr

.global AddToRenderer__15CFlaahgraPlantsCFRC14CFrustumPlanesRC13CStateManager
AddToRenderer__15CFlaahgraPlantsCFRC14CFrustumPlanesRC13CStateManager:
/* 8020875C 002056BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80208760 002056C0  7C 08 02 A6 */	mflr r0
/* 80208764 002056C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80208768 002056C8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8020876C 002056CC  7C BF 2B 78 */	mr r31, r5
/* 80208770 002056D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80208774 002056D4  7C 9E 23 78 */	mr r30, r4
/* 80208778 002056D8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8020877C 002056DC  7C 7D 1B 78 */	mr r29, r3
/* 80208780 002056E0  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 80208784 002056E4  80 9D 00 EC */	lwz r4, 0xec(r29)
/* 80208788 002056E8  81 83 00 00 */	lwz r12, 0(r3)
/* 8020878C 002056EC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80208790 002056F0  7D 89 03 A6 */	mtctr r12
/* 80208794 002056F4  4E 80 04 21 */	bctrl
/* 80208798 002056F8  7F A3 EB 78 */	mr r3, r29
/* 8020879C 002056FC  7F C4 F3 78 */	mr r4, r30
/* 802087A0 00205700  7F E5 FB 78 */	mr r5, r31
/* 802087A4 00205704  4B E4 C3 95 */	bl AddToRenderer__6CActorCFRC14CFrustumPlanesRC13CStateManager
/* 802087A8 00205708  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802087AC 0020570C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802087B0 00205710  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802087B4 00205714  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802087B8 00205718  7C 08 03 A6 */	mtlr r0
/* 802087BC 0020571C  38 21 00 20 */	addi r1, r1, 0x20
/* 802087C0 00205720  4E 80 00 20 */	blr

.global GetTouchBounds__15CFlaahgraPlantsCFv
GetTouchBounds__15CFlaahgraPlantsCFv:
/* 802087C4 00205724  88 04 00 30 */	lbz r0, 0x30(r4)
/* 802087C8 00205728  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 802087CC 0020572C  41 82 00 54 */	beq lbl_80208820
/* 802087D0 00205730  88 04 01 28 */	lbz r0, 0x128(r4)
/* 802087D4 00205734  98 03 00 18 */	stb r0, 0x18(r3)
/* 802087D8 00205738  88 04 01 28 */	lbz r0, 0x128(r4)
/* 802087DC 0020573C  28 00 00 00 */	cmplwi r0, 0
/* 802087E0 00205740  4D 82 00 20 */	beqlr
/* 802087E4 00205744  28 03 00 00 */	cmplwi r3, 0
/* 802087E8 00205748  4D 82 00 20 */	beqlr
/* 802087EC 0020574C  C0 04 01 10 */	lfs f0, 0x110(r4)
/* 802087F0 00205750  D0 03 00 00 */	stfs f0, 0(r3)
/* 802087F4 00205754  C0 04 01 14 */	lfs f0, 0x114(r4)
/* 802087F8 00205758  D0 03 00 04 */	stfs f0, 4(r3)
/* 802087FC 0020575C  C0 04 01 18 */	lfs f0, 0x118(r4)
/* 80208800 00205760  D0 03 00 08 */	stfs f0, 8(r3)
/* 80208804 00205764  C0 04 01 1C */	lfs f0, 0x11c(r4)
/* 80208808 00205768  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8020880C 0020576C  C0 04 01 20 */	lfs f0, 0x120(r4)
/* 80208810 00205770  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80208814 00205774  C0 04 01 24 */	lfs f0, 0x124(r4)
/* 80208818 00205778  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8020881C 0020577C  4E 80 00 20 */	blr
lbl_80208820:
/* 80208820 00205780  38 00 00 00 */	li r0, 0
/* 80208824 00205784  98 03 00 18 */	stb r0, 0x18(r3)
/* 80208828 00205788  4E 80 00 20 */	blr

.global Touch__15CFlaahgraPlantsFR6CActorR13CStateManager
Touch__15CFlaahgraPlantsFR6CActorR13CStateManager:
/* 8020882C 0020578C  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 80208830 00205790  7C 08 02 A6 */	mflr r0
/* 80208834 00205794  90 01 01 44 */	stw r0, 0x144(r1)
/* 80208838 00205798  93 E1 01 3C */	stw r31, 0x13c(r1)
/* 8020883C 0020579C  7C BF 2B 78 */	mr r31, r5
/* 80208840 002057A0  93 C1 01 38 */	stw r30, 0x138(r1)
/* 80208844 002057A4  7C 9E 23 78 */	mr r30, r4
/* 80208848 002057A8  93 A1 01 34 */	stw r29, 0x134(r1)
/* 8020884C 002057AC  7C 7D 1B 78 */	mr r29, r3
/* 80208850 002057B0  80 85 08 4C */	lwz r4, 0x84c(r5)
/* 80208854 002057B4  A0 7E 00 08 */	lhz r3, 8(r30)
/* 80208858 002057B8  A0 04 00 08 */	lhz r0, 8(r4)
/* 8020885C 002057BC  7C 03 00 40 */	cmplw r3, r0
/* 80208860 002057C0  40 82 01 B0 */	bne lbl_80208A10
/* 80208864 002057C4  88 1D 01 28 */	lbz r0, 0x128(r29)
/* 80208868 002057C8  28 00 00 00 */	cmplwi r0, 0
/* 8020886C 002057CC  41 82 01 A4 */	beq lbl_80208A10
/* 80208870 002057D0  38 61 00 60 */	addi r3, r1, 0x60
/* 80208874 002057D4  4B F1 20 B9 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 80208878 002057D8  3C 80 80 5A */	lis r4, sIdentity__12CTransform4f@ha
/* 8020887C 002057DC  38 61 00 AC */	addi r3, r1, 0xac
/* 80208880 002057E0  38 A4 66 70 */	addi r5, r4, sIdentity__12CTransform4f@l
/* 80208884 002057E4  38 81 00 60 */	addi r4, r1, 0x60
/* 80208888 002057E8  48 0C D4 95 */	bl FromAABox__6COBBoxFRC6CAABoxRC12CTransform4f
/* 8020888C 002057EC  38 61 00 E8 */	addi r3, r1, 0xe8
/* 80208890 002057F0  38 81 00 AC */	addi r4, r1, 0xac
/* 80208894 002057F4  48 10 A2 E1 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80208898 002057F8  C0 41 00 DC */	lfs f2, 0xdc(r1)
/* 8020889C 002057FC  38 7D 01 30 */	addi r3, r29, 0x130
/* 802088A0 00205800  C0 21 00 E0 */	lfs f1, 0xe0(r1)
/* 802088A4 00205804  38 81 00 E8 */	addi r4, r1, 0xe8
/* 802088A8 00205808  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 802088AC 0020580C  D0 41 01 18 */	stfs f2, 0x118(r1)
/* 802088B0 00205810  D0 21 01 1C */	stfs f1, 0x11c(r1)
/* 802088B4 00205814  D0 01 01 20 */	stfs f0, 0x120(r1)
/* 802088B8 00205818  48 0C CB DD */	bl OBBIntersectsBox__6COBBoxCFRC6COBBox
/* 802088BC 0020581C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802088C0 00205820  41 82 01 50 */	beq lbl_80208A10
/* 802088C4 00205824  C0 5D 01 08 */	lfs f2, 0x108(r29)
/* 802088C8 00205828  38 A0 00 01 */	li r5, 1
/* 802088CC 0020582C  C0 7D 01 04 */	lfs f3, 0x104(r29)
/* 802088D0 00205830  38 60 00 00 */	li r3, 0
/* 802088D4 00205834  C0 3D 01 2C */	lfs f1, 0x12c(r29)
/* 802088D8 00205838  38 80 00 01 */	li r4, 1
/* 802088DC 0020583C  C0 1D 00 FC */	lfs f0, 0xfc(r29)
/* 802088E0 00205840  80 DD 00 F4 */	lwz r6, 0xf4(r29)
/* 802088E4 00205844  88 01 00 A8 */	lbz r0, 0xa8(r1)
/* 802088E8 00205848  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 802088EC 0020584C  90 C1 00 90 */	stw r6, 0x90(r1)
/* 802088F0 00205850  EC 01 00 32 */	fmuls f0, f1, f0
/* 802088F4 00205854  80 AD 93 AC */	lwz r5, lbl_805A7F6C@sda21(r13)
/* 802088F8 00205858  88 DD 00 F8 */	lbz r6, 0xf8(r29)
/* 802088FC 0020585C  98 C1 00 94 */	stb r6, 0x94(r1)
/* 80208900 00205860  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80208904 00205864  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80208908 00205868  D0 61 00 A0 */	stfs f3, 0xa0(r1)
/* 8020890C 0020586C  D0 41 00 A4 */	stfs f2, 0xa4(r1)
/* 80208910 00205870  98 01 00 A8 */	stb r0, 0xa8(r1)
/* 80208914 00205874  48 18 15 E1 */	bl __shl2i
/* 80208918 00205878  38 A0 00 03 */	li r5, 3
/* 8020891C 0020587C  38 00 00 00 */	li r0, 0
/* 80208920 00205880  90 81 00 7C */	stw r4, 0x7c(r1)
/* 80208924 00205884  C0 02 B1 18 */	lfs f0, lbl_805ACE38@sda21(r2)
/* 80208928 00205888  90 61 00 78 */	stw r3, 0x78(r1)
/* 8020892C 0020588C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80208930 00205890  90 01 00 80 */	stw r0, 0x80(r1)
/* 80208934 00205894  90 A1 00 88 */	stw r5, 0x88(r1)
/* 80208938 00205898  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8020893C 0020589C  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 80208940 002058A0  C0 43 00 50 */	lfs f2, 0x50(r3)
/* 80208944 002058A4  C0 83 00 40 */	lfs f4, 0x40(r3)
/* 80208948 002058A8  C0 7D 00 40 */	lfs f3, 0x40(r29)
/* 8020894C 002058AC  EC 22 08 28 */	fsubs f1, f2, f1
/* 80208950 002058B0  C0 DD 00 44 */	lfs f6, 0x44(r29)
/* 80208954 002058B4  EC A4 18 28 */	fsubs f5, f4, f3
/* 80208958 002058B8  C0 83 00 60 */	lfs f4, 0x60(r3)
/* 8020895C 002058BC  C0 7D 00 60 */	lfs f3, 0x60(r29)
/* 80208960 002058C0  EC 21 01 B2 */	fmuls f1, f1, f6
/* 80208964 002058C4  C0 5D 00 34 */	lfs f2, 0x34(r29)
/* 80208968 002058C8  C0 FD 00 54 */	lfs f7, 0x54(r29)
/* 8020896C 002058CC  EC 64 18 28 */	fsubs f3, f4, f3
/* 80208970 002058D0  90 A1 00 58 */	stw r5, 0x58(r1)
/* 80208974 002058D4  EC 25 08 BA */	fmadds f1, f5, f2, f1
/* 80208978 002058D8  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8020897C 002058DC  EC 23 09 FA */	fmadds f1, f3, f7, f1
/* 80208980 002058E0  D0 C1 00 3C */	stfs f6, 0x3c(r1)
/* 80208984 002058E4  D0 E1 00 40 */	stfs f7, 0x40(r1)
/* 80208988 002058E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8020898C 002058EC  40 81 00 0C */	ble lbl_80208998
/* 80208990 002058F0  39 41 00 38 */	addi r10, r1, 0x38
/* 80208994 002058F4  48 00 00 20 */	b lbl_802089B4
lbl_80208998:
/* 80208998 002058F8  FC 40 10 50 */	fneg f2, f2
/* 8020899C 002058FC  39 41 00 20 */	addi r10, r1, 0x20
/* 802089A0 00205900  FC 20 30 50 */	fneg f1, f6
/* 802089A4 00205904  FC 00 38 50 */	fneg f0, f7
/* 802089A8 00205908  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 802089AC 0020590C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 802089B0 00205910  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_802089B4:
/* 802089B4 00205914  C0 0A 00 00 */	lfs f0, 0(r10)
/* 802089B8 00205918  7F E3 FB 78 */	mr r3, r31
/* 802089BC 0020591C  38 81 00 1C */	addi r4, r1, 0x1c
/* 802089C0 00205920  38 A1 00 14 */	addi r5, r1, 0x14
/* 802089C4 00205924  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 802089C8 00205928  38 C1 00 0C */	addi r6, r1, 0xc
/* 802089CC 0020592C  38 E1 00 90 */	addi r7, r1, 0x90
/* 802089D0 00205930  39 01 00 78 */	addi r8, r1, 0x78
/* 802089D4 00205934  C0 0A 00 04 */	lfs f0, 4(r10)
/* 802089D8 00205938  39 21 00 2C */	addi r9, r1, 0x2c
/* 802089DC 0020593C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 802089E0 00205940  C0 0A 00 08 */	lfs f0, 8(r10)
/* 802089E4 00205944  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 802089E8 00205948  A0 1D 00 08 */	lhz r0, 8(r29)
/* 802089EC 0020594C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 802089F0 00205950  A1 5E 00 08 */	lhz r10, 8(r30)
/* 802089F4 00205954  B0 01 00 08 */	sth r0, 8(r1)
/* 802089F8 00205958  B1 41 00 14 */	sth r10, 0x14(r1)
/* 802089FC 0020595C  A0 1D 00 08 */	lhz r0, 8(r29)
/* 80208A00 00205960  B1 41 00 10 */	sth r10, 0x10(r1)
/* 80208A04 00205964  B0 01 00 18 */	sth r0, 0x18(r1)
/* 80208A08 00205968  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 80208A0C 0020596C  4B E4 16 95 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
lbl_80208A10:
/* 80208A10 00205970  80 01 01 44 */	lwz r0, 0x144(r1)
/* 80208A14 00205974  83 E1 01 3C */	lwz r31, 0x13c(r1)
/* 80208A18 00205978  83 C1 01 38 */	lwz r30, 0x138(r1)
/* 80208A1C 0020597C  83 A1 01 34 */	lwz r29, 0x134(r1)
/* 80208A20 00205980  7C 08 03 A6 */	mtlr r0
/* 80208A24 00205984  38 21 01 40 */	addi r1, r1, 0x140
/* 80208A28 00205988  4E 80 00 20 */	blr

.global __dt__15CFlaahgraPlantsFv
__dt__15CFlaahgraPlantsFv:
/* 80208A2C 0020598C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80208A30 00205990  7C 08 02 A6 */	mflr r0
/* 80208A34 00205994  90 01 00 14 */	stw r0, 0x14(r1)
/* 80208A38 00205998  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80208A3C 0020599C  7C 9F 23 78 */	mr r31, r4
/* 80208A40 002059A0  93 C1 00 08 */	stw r30, 8(r1)
/* 80208A44 002059A4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80208A48 002059A8  41 82 00 70 */	beq lbl_80208AB8
/* 80208A4C 002059AC  3C 60 80 3E */	lis r3, lbl_803E6FD8@ha
/* 80208A50 002059B0  34 1E 01 10 */	addic. r0, r30, 0x110
/* 80208A54 002059B4  38 03 6F D8 */	addi r0, r3, lbl_803E6FD8@l
/* 80208A58 002059B8  90 1E 00 00 */	stw r0, 0(r30)
/* 80208A5C 002059BC  41 82 00 0C */	beq lbl_80208A68
/* 80208A60 002059C0  38 00 00 00 */	li r0, 0
/* 80208A64 002059C4  98 1E 01 28 */	stb r0, 0x128(r30)
lbl_80208A68:
/* 80208A68 002059C8  34 1E 00 E8 */	addic. r0, r30, 0xe8
/* 80208A6C 002059CC  41 82 00 30 */	beq lbl_80208A9C
/* 80208A70 002059D0  88 1E 00 E8 */	lbz r0, 0xe8(r30)
/* 80208A74 002059D4  28 00 00 00 */	cmplwi r0, 0
/* 80208A78 002059D8  41 82 00 24 */	beq lbl_80208A9C
/* 80208A7C 002059DC  80 7E 00 EC */	lwz r3, 0xec(r30)
/* 80208A80 002059E0  28 03 00 00 */	cmplwi r3, 0
/* 80208A84 002059E4  41 82 00 18 */	beq lbl_80208A9C
/* 80208A88 002059E8  81 83 00 00 */	lwz r12, 0(r3)
/* 80208A8C 002059EC  38 80 00 01 */	li r4, 1
/* 80208A90 002059F0  81 8C 00 08 */	lwz r12, 8(r12)
/* 80208A94 002059F4  7D 89 03 A6 */	mtctr r12
/* 80208A98 002059F8  4E 80 04 21 */	bctrl
lbl_80208A9C:
/* 80208A9C 002059FC  7F C3 F3 78 */	mr r3, r30
/* 80208AA0 00205A00  38 80 00 00 */	li r4, 0
/* 80208AA4 00205A04  4B E4 CC 4D */	bl __dt__6CActorFv
/* 80208AA8 00205A08  7F E0 07 35 */	extsh. r0, r31
/* 80208AAC 00205A0C  40 81 00 0C */	ble lbl_80208AB8
/* 80208AB0 00205A10  7F C3 F3 78 */	mr r3, r30
/* 80208AB4 00205A14  48 10 CE 7D */	bl Free__7CMemoryFPCv
lbl_80208AB8:
/* 80208AB8 00205A18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80208ABC 00205A1C  7F C3 F3 78 */	mr r3, r30
/* 80208AC0 00205A20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80208AC4 00205A24  83 C1 00 08 */	lwz r30, 8(r1)
/* 80208AC8 00205A28  7C 08 03 A6 */	mtlr r0
/* 80208ACC 00205A2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80208AD0 00205A30  4E 80 00 20 */	blr

.global "__ct__15CFlaahgraPlantsF25TToken<15CGenDescription>9TUniqueId9TUniqueIdRC12CTransform4fRC11CDamageInfoRC9CVector3f"
"__ct__15CFlaahgraPlantsF25TToken<15CGenDescription>9TUniqueId9TUniqueIdRC12CTransform4fRC11CDamageInfoRC9CVector3f":
/* 80208AD4 00205A34  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 80208AD8 00205A38  7C 08 02 A6 */	mflr r0
/* 80208ADC 00205A3C  3D 60 80 3D */	lis r11, lbl_803D2738@ha
/* 80208AE0 00205A40  90 01 01 44 */	stw r0, 0x144(r1)
/* 80208AE4 00205A44  39 6B 27 38 */	addi r11, r11, lbl_803D2738@l
/* 80208AE8 00205A48  BE E1 01 1C */	stmw r23, 0x11c(r1)
/* 80208AEC 00205A4C  7C 78 1B 78 */	mr r24, r3
/* 80208AF0 00205A50  7C 99 23 78 */	mr r25, r4
/* 80208AF4 00205A54  7C BA 2B 78 */	mr r26, r5
/* 80208AF8 00205A58  7C DB 33 78 */	mr r27, r6
/* 80208AFC 00205A5C  83 E1 01 48 */	lwz r31, 0x148(r1)
/* 80208B00 00205A60  7C F7 3B 78 */	mr r23, r7
/* 80208B04 00205A64  7D 1C 43 78 */	mr r28, r8
/* 80208B08 00205A68  7D 3D 4B 78 */	mr r29, r9
/* 80208B0C 00205A6C  7D 5E 53 78 */	mr r30, r10
/* 80208B10 00205A70  38 61 00 54 */	addi r3, r1, 0x54
/* 80208B14 00205A74  38 8B 00 07 */	addi r4, r11, 7
/* 80208B18 00205A78  38 C1 00 10 */	addi r6, r1, 0x10
/* 80208B1C 00205A7C  38 A0 FF FF */	li r5, -1
/* 80208B20 00205A80  48 13 56 75 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FPCciRCQ24rstl17rmemory_allocator"
/* 80208B24 00205A84  80 8D A3 88 */	lwz r4, kInvalidEditorId@sda21(r13)
/* 80208B28 00205A88  3C 60 80 57 */	lis r3, NullConnectionList__7CEntity@ha
/* 80208B2C 00205A8C  80 17 00 00 */	lwz r0, 0(r23)
/* 80208B30 00205A90  38 A3 D4 10 */	addi r5, r3, NullConnectionList__7CEntity@l
/* 80208B34 00205A94  90 81 00 2C */	stw r4, 0x2c(r1)
/* 80208B38 00205A98  38 61 00 7C */	addi r3, r1, 0x7c
/* 80208B3C 00205A9C  38 81 00 30 */	addi r4, r1, 0x30
/* 80208B40 00205AA0  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80208B44 00205AA4  90 01 00 30 */	stw r0, 0x30(r1)
/* 80208B48 00205AA8  4B E4 89 3D */	bl "__ct__11CEntityInfoF7TAreaIdRCQ24rstl48vector<11SConnection,Q24rstl17rmemory_allocator>9TEditorId"
/* 80208B4C 00205AAC  38 61 00 C4 */	addi r3, r1, 0xc4
/* 80208B50 00205AB0  4B E3 1C 55 */	bl CModelDataNull__10CModelDataFv
/* 80208B54 00205AB4  A0 8D A3 8C */	lhz r4, kInvalidUniqueId@sda21(r13)
/* 80208B58 00205AB8  38 00 00 00 */	li r0, 0
/* 80208B5C 00205ABC  80 AD 93 A8 */	lwz r5, lbl_805A7F68@sda21(r13)
/* 80208B60 00205AC0  38 60 00 00 */	li r3, 0
/* 80208B64 00205AC4  B0 81 00 14 */	sth r4, 0x14(r1)
/* 80208B68 00205AC8  38 80 00 01 */	li r4, 1
/* 80208B6C 00205ACC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80208B70 00205AD0  90 01 00 40 */	stw r0, 0x40(r1)
/* 80208B74 00205AD4  48 18 13 81 */	bl __shl2i
/* 80208B78 00205AD8  80 A1 00 40 */	lwz r5, 0x40(r1)
/* 80208B7C 00205ADC  38 01 00 14 */	addi r0, r1, 0x14
/* 80208B80 00205AE0  80 C1 00 44 */	lwz r6, 0x44(r1)
/* 80208B84 00205AE4  7F A8 EB 78 */	mr r8, r29
/* 80208B88 00205AE8  7C A3 1B 78 */	or r3, r5, r3
/* 80208B8C 00205AEC  A0 BB 00 00 */	lhz r5, 0(r27)
/* 80208B90 00205AF0  7C C6 23 78 */	or r6, r6, r4
/* 80208B94 00205AF4  90 61 00 40 */	stw r3, 0x40(r1)
/* 80208B98 00205AF8  7F 03 C3 78 */	mr r3, r24
/* 80208B9C 00205AFC  38 81 00 18 */	addi r4, r1, 0x18
/* 80208BA0 00205B00  90 C1 00 44 */	stw r6, 0x44(r1)
/* 80208BA4 00205B04  38 C1 00 54 */	addi r6, r1, 0x54
/* 80208BA8 00205B08  38 E1 00 7C */	addi r7, r1, 0x7c
/* 80208BAC 00205B0C  39 21 00 C4 */	addi r9, r1, 0xc4
/* 80208BB0 00205B10  B0 A1 00 18 */	sth r5, 0x18(r1)
/* 80208BB4 00205B14  39 41 00 40 */	addi r10, r1, 0x40
/* 80208BB8 00205B18  38 A0 00 01 */	li r5, 1
/* 80208BBC 00205B1C  93 41 00 08 */	stw r26, 8(r1)
/* 80208BC0 00205B20  90 01 00 0C */	stw r0, 0xc(r1)
/* 80208BC4 00205B24  4B E4 CC 5D */	bl "__ct__6CActorF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC13CMaterialListRC16CActorParameters9TUniqueId"
/* 80208BC8 00205B28  38 61 00 C4 */	addi r3, r1, 0xc4
/* 80208BCC 00205B2C  38 80 FF FF */	li r4, -1
/* 80208BD0 00205B30  4B F0 DE 7D */	bl __dt__10CModelDataFv
/* 80208BD4 00205B34  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80208BD8 00205B38  80 61 00 8C */	lwz r3, 0x8c(r1)
/* 80208BDC 00205B3C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80208BE0 00205B40  90 61 00 20 */	stw r3, 0x20(r1)
/* 80208BE4 00205B44  7C 64 1B 78 */	mr r4, r3
/* 80208BE8 00205B48  7C 03 02 14 */	add r0, r3, r0
/* 80208BEC 00205B4C  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80208BF0 00205B50  90 01 00 28 */	stw r0, 0x28(r1)
/* 80208BF4 00205B54  90 01 00 24 */	stw r0, 0x24(r1)
/* 80208BF8 00205B58  48 00 00 08 */	b lbl_80208C00
lbl_80208BFC:
/* 80208BFC 00205B5C  38 84 00 0C */	addi r4, r4, 0xc
lbl_80208C00:
/* 80208C00 00205B60  7C 04 00 40 */	cmplw r4, r0
/* 80208C04 00205B64  40 82 FF F8 */	bne lbl_80208BFC
/* 80208C08 00205B68  28 03 00 00 */	cmplwi r3, 0
/* 80208C0C 00205B6C  41 82 00 08 */	beq lbl_80208C14
/* 80208C10 00205B70  48 10 CD 21 */	bl Free__7CMemoryFPCv
lbl_80208C14:
/* 80208C14 00205B74  38 61 00 54 */	addi r3, r1, 0x54
/* 80208C18 00205B78  48 13 4E C9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80208C1C 00205B7C  3C 80 80 3E */	lis r4, lbl_803E6FD8@ha
/* 80208C20 00205B80  3C 60 80 3D */	lis r3, lbl_803D2738@ha
/* 80208C24 00205B84  38 04 6F D8 */	addi r0, r4, lbl_803E6FD8@l
/* 80208C28 00205B88  3A E0 00 00 */	li r23, 0
/* 80208C2C 00205B8C  90 18 00 00 */	stw r0, 0(r24)
/* 80208C30 00205B90  38 83 27 38 */	addi r4, r3, lbl_803D2738@l
/* 80208C34 00205B94  38 60 03 40 */	li r3, 0x340
/* 80208C38 00205B98  38 A0 00 00 */	li r5, 0
/* 80208C3C 00205B9C  48 10 CC 31 */	bl __nw__FUlPCcPCc
/* 80208C40 00205BA0  7C 7A 1B 79 */	or. r26, r3, r3
/* 80208C44 00205BA4  41 82 00 2C */	beq lbl_80208C70
/* 80208C48 00205BA8  7F 24 CB 78 */	mr r4, r25
/* 80208C4C 00205BAC  38 61 00 34 */	addi r3, r1, 0x34
/* 80208C50 00205BB0  48 13 82 59 */	bl __ct__6CTokenFRC6CToken
/* 80208C54 00205BB4  7F 43 D3 78 */	mr r3, r26
/* 80208C58 00205BB8  38 81 00 34 */	addi r4, r1, 0x34
/* 80208C5C 00205BBC  3A E0 00 01 */	li r23, 1
/* 80208C60 00205BC0  38 A0 00 00 */	li r5, 0
/* 80208C64 00205BC4  38 C0 00 01 */	li r6, 1
/* 80208C68 00205BC8  48 11 67 79 */	bl "__ct__11CElementGenF25TToken<15CGenDescription>Q211CElementGen21EModelOrientationTypeQ211CElementGen20EOptionalSystemFlags"
/* 80208C6C 00205BCC  7C 7A 1B 78 */	mr r26, r3
lbl_80208C70:
/* 80208C70 00205BD0  7C 7A 00 D0 */	neg r3, r26
/* 80208C74 00205BD4  7E E0 07 75 */	extsb. r0, r23
/* 80208C78 00205BD8  7C 60 D3 78 */	or r0, r3, r26
/* 80208C7C 00205BDC  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80208C80 00205BE0  98 18 00 E8 */	stb r0, 0xe8(r24)
/* 80208C84 00205BE4  93 58 00 EC */	stw r26, 0xec(r24)
/* 80208C88 00205BE8  41 82 00 10 */	beq lbl_80208C98
/* 80208C8C 00205BEC  38 61 00 34 */	addi r3, r1, 0x34
/* 80208C90 00205BF0  38 80 00 00 */	li r4, 0
/* 80208C94 00205BF4  48 13 81 AD */	bl __dt__6CTokenFv
lbl_80208C98:
/* 80208C98 00205BF8  A0 7C 00 00 */	lhz r3, 0(r28)
/* 80208C9C 00205BFC  38 00 00 00 */	li r0, 0
/* 80208CA0 00205C00  C0 02 B1 18 */	lfs f0, lbl_805ACE38@sda21(r2)
/* 80208CA4 00205C04  7F A4 EB 78 */	mr r4, r29
/* 80208CA8 00205C08  B0 78 00 F0 */	sth r3, 0xf0(r24)
/* 80208CAC 00205C0C  7F E5 FB 78 */	mr r5, r31
/* 80208CB0 00205C10  38 78 01 30 */	addi r3, r24, 0x130
/* 80208CB4 00205C14  80 DE 00 00 */	lwz r6, 0(r30)
/* 80208CB8 00205C18  90 D8 00 F4 */	stw r6, 0xf4(r24)
/* 80208CBC 00205C1C  88 DE 00 04 */	lbz r6, 4(r30)
/* 80208CC0 00205C20  98 D8 00 F8 */	stb r6, 0xf8(r24)
/* 80208CC4 00205C24  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80208CC8 00205C28  D0 38 00 FC */	stfs f1, 0xfc(r24)
/* 80208CCC 00205C2C  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80208CD0 00205C30  D0 38 01 00 */	stfs f1, 0x100(r24)
/* 80208CD4 00205C34  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80208CD8 00205C38  D0 38 01 04 */	stfs f1, 0x104(r24)
/* 80208CDC 00205C3C  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 80208CE0 00205C40  D0 38 01 08 */	stfs f1, 0x108(r24)
/* 80208CE4 00205C44  88 DE 00 18 */	lbz r6, 0x18(r30)
/* 80208CE8 00205C48  98 D8 01 0C */	stb r6, 0x10c(r24)
/* 80208CEC 00205C4C  98 18 01 28 */	stb r0, 0x128(r24)
/* 80208CF0 00205C50  D0 18 01 2C */	stfs f0, 0x12c(r24)
/* 80208CF4 00205C54  48 0C D2 A1 */	bl __ct__6COBBoxFRC12CTransform4fRC9CVector3f
/* 80208CF8 00205C58  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80208CFC 00205C5C  7F A4 EB 78 */	mr r4, r29
/* 80208D00 00205C60  38 61 00 94 */	addi r3, r1, 0x94
/* 80208D04 00205C64  B0 18 01 6C */	sth r0, 0x16c(r24)
/* 80208D08 00205C68  83 38 00 EC */	lwz r25, 0xec(r24)
/* 80208D0C 00205C6C  48 10 9F 35 */	bl GetRotation__12CTransform4fCFv
/* 80208D10 00205C70  7F 23 CB 78 */	mr r3, r25
/* 80208D14 00205C74  38 81 00 94 */	addi r4, r1, 0x94
/* 80208D18 00205C78  81 99 00 00 */	lwz r12, 0(r25)
/* 80208D1C 00205C7C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80208D20 00205C80  7D 89 03 A6 */	mtctr r12
/* 80208D24 00205C84  4E 80 04 21 */	bctrl
/* 80208D28 00205C88  C0 5D 00 2C */	lfs f2, 0x2c(r29)
/* 80208D2C 00205C8C  38 81 00 48 */	addi r4, r1, 0x48
/* 80208D30 00205C90  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 80208D34 00205C94  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80208D38 00205C98  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80208D3C 00205C9C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80208D40 00205CA0  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 80208D44 00205CA4  80 78 00 EC */	lwz r3, 0xec(r24)
/* 80208D48 00205CA8  81 83 00 00 */	lwz r12, 0(r3)
/* 80208D4C 00205CAC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80208D50 00205CB0  7D 89 03 A6 */	mtctr r12
/* 80208D54 00205CB4  4E 80 04 21 */	bctrl
/* 80208D58 00205CB8  80 98 00 EC */	lwz r4, 0xec(r24)
/* 80208D5C 00205CBC  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 80208D60 00205CC0  38 A3 66 70 */	addi r5, r3, sIdentity__12CTransform4f@l
/* 80208D64 00205CC4  38 60 00 01 */	li r3, 1
/* 80208D68 00205CC8  88 04 02 6D */	lbz r0, 0x26d(r4)
/* 80208D6C 00205CCC  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 80208D70 00205CD0  98 04 02 6D */	stb r0, 0x26d(r4)
/* 80208D74 00205CD4  38 61 00 64 */	addi r3, r1, 0x64
/* 80208D78 00205CD8  38 98 01 30 */	addi r4, r24, 0x130
/* 80208D7C 00205CDC  48 0C D0 5D */	bl CalculateAABox__6COBBoxCFRC12CTransform4f
/* 80208D80 00205CE0  88 18 01 28 */	lbz r0, 0x128(r24)
/* 80208D84 00205CE4  28 00 00 00 */	cmplwi r0, 0
/* 80208D88 00205CE8  40 82 00 48 */	bne lbl_80208DD0
/* 80208D8C 00205CEC  34 78 01 10 */	addic. r3, r24, 0x110
/* 80208D90 00205CF0  41 82 00 34 */	beq lbl_80208DC4
/* 80208D94 00205CF4  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80208D98 00205CF8  D0 03 00 00 */	stfs f0, 0(r3)
/* 80208D9C 00205CFC  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80208DA0 00205D00  D0 03 00 04 */	stfs f0, 4(r3)
/* 80208DA4 00205D04  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80208DA8 00205D08  D0 03 00 08 */	stfs f0, 8(r3)
/* 80208DAC 00205D0C  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80208DB0 00205D10  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80208DB4 00205D14  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80208DB8 00205D18  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80208DBC 00205D1C  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80208DC0 00205D20  D0 03 00 14 */	stfs f0, 0x14(r3)
lbl_80208DC4:
/* 80208DC4 00205D24  38 00 00 01 */	li r0, 1
.global lbl_80208DC8
lbl_80208DC8:
/* 80208DC8 00205D28  98 18 01 28 */	stb r0, 0x128(r24)
/* 80208DCC 00205D2C  48 00 00 34 */	b lbl_80208E00
lbl_80208DD0:
/* 80208DD0 00205D30  80 61 00 64 */	lwz r3, 0x64(r1)
/* 80208DD4 00205D34  80 01 00 68 */	lwz r0, 0x68(r1)
/* 80208DD8 00205D38  90 78 01 10 */	stw r3, 0x110(r24)
/* 80208DDC 00205D3C  90 18 01 14 */	stw r0, 0x114(r24)
/* 80208DE0 00205D40  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 80208DE4 00205D44  90 18 01 18 */	stw r0, 0x118(r24)
/* 80208DE8 00205D48  80 61 00 70 */	lwz r3, 0x70(r1)
/* 80208DEC 00205D4C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80208DF0 00205D50  90 78 01 1C */	stw r3, 0x11c(r24)
/* 80208DF4 00205D54  90 18 01 20 */	stw r0, 0x120(r24)
/* 80208DF8 00205D58  80 01 00 78 */	lwz r0, 0x78(r1)
/* 80208DFC 00205D5C  90 18 01 24 */	stw r0, 0x124(r24)
lbl_80208E00:
/* 80208E00 00205D60  7F 03 C3 78 */	mr r3, r24
/* 80208E04 00205D64  BA E1 01 1C */	lmw r23, 0x11c(r1)
/* 80208E08 00205D68  80 01 01 44 */	lwz r0, 0x144(r1)
/* 80208E0C 00205D6C  7C 08 03 A6 */	mtlr r0
/* 80208E10 00205D70  38 21 01 40 */	addi r1, r1, 0x140
/* 80208E14 00205D74  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805ACE30
lbl_805ACE30:
	# ROM: 0x3F96D0
	.float 5.0

.global lbl_805ACE34
lbl_805ACE34:
	# ROM: 0x3F96D4
	.4byte 0x41200000

.global lbl_805ACE38
lbl_805ACE38:
	# ROM: 0x3F96D8
	.4byte 0

.global lbl_805ACE3C
lbl_805ACE3C:
	# ROM: 0x3F96DC
	.float 0.001


.section .rodata
.balign 8
.global lbl_803D2738
lbl_803D2738:
	# ROM: 0x3CF738
	.asciz "??(??)"
	.byte 0x46
	.asciz "laahgra Plants"
	.balign 4

