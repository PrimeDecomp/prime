.include "macros.inc"

.section .data
.balign 8

.global lbl_803E85E8
lbl_803E85E8:
	# ROM: 0x3E55E8
	.4byte 0
	.4byte 0
	.4byte __dt__17CActorContraption
	.4byte Accept__17CActorContraptionFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__17CActorContraptionFfR13CStateManager
	.4byte AcceptScriptMsg__17CActorContraptionF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFUc
	.4byte PreRender__12CScriptActorFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__6CActorCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__13CPhysicsActorCFRC13CStateManager
	.4byte CanRenderUnsorted__6CActorCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte GetHealthInfo__12CScriptActorCFRC13CStateManager
	.4byte GetDamageVulnerability__12CScriptActorCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__12CScriptActorCFv
	.4byte Touch__12CScriptActorFR6CActorR13CStateManager
	.4byte GetOrbitPosition__13CPhysicsActorCFRC13CStateManager
	.4byte GetAimPosition__13CPhysicsActorCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__12CScriptActorCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__6CActorFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__12CScriptActorCFRC13CStateManager
	.4byte DoUserAnimEvent__17CActorContraptionFR13CStateManagerRC13CInt32POINode14EUserEventType
	.4byte GetCollisionPrimitive__13CPhysicsActorCFv
	.4byte GetPrimitiveTransform__13CPhysicsActorCFv
	.4byte CollidedWith__13CPhysicsActorFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
	.4byte GetStepDownHeight__13CPhysicsActorCFv
	.4byte GetStepUpHeight__13CPhysicsActorCFv
	.4byte GetWeight__13CPhysicsActorCFv
	.4byte 0

.section .text, "ax"

.global __dt__17CActorContraption
__dt__17CActorContraption:
/* 8023F330 0023C290  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023F334 0023C294  7C 08 02 A6 */	mflr r0
/* 8023F338 0023C298  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023F33C 0023C29C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023F340 0023C2A0  7C 9F 23 78 */	mr r31, r4
/* 8023F344 0023C2A4  93 C1 00 08 */	stw r30, 8(r1)
/* 8023F348 0023C2A8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8023F34C 0023C2AC  41 82 00 4C */	beq lbl_8023F398
/* 8023F350 0023C2B0  3C 60 80 3F */	lis r3, lbl_803E85E8@ha
/* 8023F354 0023C2B4  34 1E 03 00 */	addic. r0, r30, 0x300
/* 8023F358 0023C2B8  38 03 85 E8 */	addi r0, r3, lbl_803E85E8@l
/* 8023F35C 0023C2BC  90 1E 00 00 */	stw r0, 0(r30)
/* 8023F360 0023C2C0  41 82 00 10 */	beq lbl_8023F370
/* 8023F364 0023C2C4  38 7E 03 00 */	addi r3, r30, 0x300
/* 8023F368 0023C2C8  38 80 00 00 */	li r4, 0
/* 8023F36C 0023C2CC  48 10 1A D5 */	bl __dt__6CTokenFv
lbl_8023F370:
/* 8023F370 0023C2D0  38 7E 02 E8 */	addi r3, r30, 0x2e8
/* 8023F374 0023C2D4  38 80 FF FF */	li r4, -1
/* 8023F378 0023C2D8  48 00 07 E9 */	bl sub_8023fb60
/* 8023F37C 0023C2DC  7F C3 F3 78 */	mr r3, r30
/* 8023F380 0023C2E0  38 80 00 00 */	li r4, 0
/* 8023F384 0023C2E4  4B E3 64 C9 */	bl __dt__12CScriptActorFv
/* 8023F388 0023C2E8  7F E0 07 35 */	extsh. r0, r31
/* 8023F38C 0023C2EC  40 81 00 0C */	ble lbl_8023F398
/* 8023F390 0023C2F0  7F C3 F3 78 */	mr r3, r30
/* 8023F394 0023C2F4  48 0D 65 9D */	bl Free__7CMemoryFPCv
lbl_8023F398:
/* 8023F398 0023C2F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023F39C 0023C2FC  7F C3 F3 78 */	mr r3, r30
/* 8023F3A0 0023C300  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023F3A4 0023C304  83 C1 00 08 */	lwz r30, 8(r1)
/* 8023F3A8 0023C308  7C 08 03 A6 */	mtlr r0
/* 8023F3AC 0023C30C  38 21 00 10 */	addi r1, r1, 0x10
/* 8023F3B0 0023C310  4E 80 00 20 */	blr

.global Accept__17CActorContraptionFR8IVisitor
Accept__17CActorContraptionFR8IVisitor:
/* 8023F3B4 0023C314  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023F3B8 0023C318  7C 08 02 A6 */	mflr r0
/* 8023F3BC 0023C31C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023F3C0 0023C320  7C 60 1B 78 */	mr r0, r3
/* 8023F3C4 0023C324  7C 83 23 78 */	mr r3, r4
/* 8023F3C8 0023C328  81 84 00 00 */	lwz r12, 0(r4)
/* 8023F3CC 0023C32C  7C 04 03 78 */	mr r4, r0
/* 8023F3D0 0023C330  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 8023F3D4 0023C334  7D 89 03 A6 */	mtctr r12
/* 8023F3D8 0023C338  4E 80 04 21 */	bctrl
/* 8023F3DC 0023C33C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023F3E0 0023C340  7C 08 03 A6 */	mtlr r0
/* 8023F3E4 0023C344  38 21 00 10 */	addi r1, r1, 0x10
/* 8023F3E8 0023C348  4E 80 00 20 */	blr

.global DoUserAnimEvent__17CActorContraptionFR13CStateManagerRC13CInt32POINode14EUserEventType
DoUserAnimEvent__17CActorContraptionFR13CStateManagerRC13CInt32POINode14EUserEventType:
/* 8023F3EC 0023C34C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8023F3F0 0023C350  7C 08 02 A6 */	mflr r0
/* 8023F3F4 0023C354  2C 06 00 09 */	cmpwi r6, 9
/* 8023F3F8 0023C358  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023F3FC 0023C35C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8023F400 0023C360  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8023F404 0023C364  7C BE 2B 78 */	mr r30, r5
/* 8023F408 0023C368  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8023F40C 0023C36C  7C 9D 23 78 */	mr r29, r4
/* 8023F410 0023C370  93 81 00 10 */	stw r28, 0x10(r1)
/* 8023F414 0023C374  7C 7C 1B 78 */	mr r28, r3
/* 8023F418 0023C378  41 82 00 48 */	beq lbl_8023F460
/* 8023F41C 0023C37C  40 80 00 A8 */	bge lbl_8023F4C4
/* 8023F420 0023C380  2C 06 00 08 */	cmpwi r6, 8
/* 8023F424 0023C384  40 80 00 08 */	bge lbl_8023F42C
/* 8023F428 0023C388  48 00 00 9C */	b lbl_8023F4C4
lbl_8023F42C:
/* 8023F42C 0023C38C  7F A5 EB 78 */	mr r5, r29
/* 8023F430 0023C390  38 9E 00 3C */	addi r4, r30, 0x3c
/* 8023F434 0023C394  48 00 03 15 */	bl sub_8023f748
/* 8023F438 0023C398  28 03 00 00 */	cmplwi r3, 0
/* 8023F43C 0023C39C  41 82 00 98 */	beq lbl_8023F4D4
/* 8023F440 0023C3A0  88 03 04 00 */	lbz r0, 0x400(r3)
/* 8023F444 0023C3A4  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8023F448 0023C3A8  40 82 00 8C */	bne lbl_8023F4D4
/* 8023F44C 0023C3AC  7F A5 EB 78 */	mr r5, r29
/* 8023F450 0023C3B0  38 9C 00 34 */	addi r4, r28, 0x34
/* 8023F454 0023C3B4  38 C0 00 00 */	li r6, 0
/* 8023F458 0023C3B8  4B F5 8E 95 */	bl Fire__13CFlameThrowerFRC12CTransform4fR13CStateManagerb
/* 8023F45C 0023C3BC  48 00 00 78 */	b lbl_8023F4D4
lbl_8023F460:
/* 8023F460 0023C3C0  83 FC 02 EC */	lwz r31, 0x2ec(r28)
/* 8023F464 0023C3C4  48 00 00 50 */	b lbl_8023F4B4
lbl_8023F468:
/* 8023F468 0023C3C8  38 7F 00 0C */	addi r3, r31, 0xc
/* 8023F46C 0023C3CC  38 9E 00 3C */	addi r4, r30, 0x3c
/* 8023F470 0023C3D0  4B E1 31 71 */	bl "find__Q24rstl418red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>,0,Q24rstl103select1st<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>CFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocat"
/* 8023F474 0023C3D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8023F478 0023C3D8  41 82 00 38 */	beq lbl_8023F4B0
/* 8023F47C 0023C3DC  A0 1F 00 08 */	lhz r0, 8(r31)
/* 8023F480 0023C3E0  7F A3 EB 78 */	mr r3, r29
/* 8023F484 0023C3E4  38 81 00 08 */	addi r4, r1, 8
/* 8023F488 0023C3E8  B0 01 00 08 */	sth r0, 8(r1)
/* 8023F48C 0023C3EC  4B E0 D0 E9 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8023F490 0023C3F0  28 03 00 00 */	cmplwi r3, 0
/* 8023F494 0023C3F4  41 82 00 1C */	beq lbl_8023F4B0
/* 8023F498 0023C3F8  88 03 04 00 */	lbz r0, 0x400(r3)
/* 8023F49C 0023C3FC  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8023F4A0 0023C400  41 82 00 10 */	beq lbl_8023F4B0
/* 8023F4A4 0023C404  7F A4 EB 78 */	mr r4, r29
/* 8023F4A8 0023C408  38 A0 00 00 */	li r5, 0
/* 8023F4AC 0023C40C  4B F5 8D 15 */	bl Reset__13CFlameThrowerFR13CStateManagerb
lbl_8023F4B0:
/* 8023F4B0 0023C410  83 FF 00 04 */	lwz r31, 4(r31)
lbl_8023F4B4:
/* 8023F4B4 0023C414  80 1C 02 F0 */	lwz r0, 0x2f0(r28)
/* 8023F4B8 0023C418  7C 1F 00 40 */	cmplw r31, r0
/* 8023F4BC 0023C41C  40 82 FF AC */	bne lbl_8023F468
/* 8023F4C0 0023C420  48 00 00 14 */	b lbl_8023F4D4
lbl_8023F4C4:
/* 8023F4C4 0023C424  7F 83 E3 78 */	mr r3, r28
/* 8023F4C8 0023C428  7F A4 EB 78 */	mr r4, r29
/* 8023F4CC 0023C42C  7F C5 F3 78 */	mr r5, r30
/* 8023F4D0 0023C430  4B E1 5D 4D */	bl DoUserAnimEvent__6CActorFR13CStateManagerRC13CInt32POINode14EUserEventTypef
lbl_8023F4D4:
/* 8023F4D4 0023C434  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8023F4D8 0023C438  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8023F4DC 0023C43C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8023F4E0 0023C440  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8023F4E4 0023C444  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8023F4E8 0023C448  7C 08 03 A6 */	mtlr r0
/* 8023F4EC 0023C44C  38 21 00 20 */	addi r1, r1, 0x20
/* 8023F4F0 0023C450  4E 80 00 20 */	blr

.global AcceptScriptMsg__17CActorContraptionF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__17CActorContraptionF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 8023F4F4 0023C454  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8023F4F8 0023C458  7C 08 02 A6 */	mflr r0
/* 8023F4FC 0023C45C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8023F500 0023C460  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 8023F504 0023C464  7C 9A 23 78 */	mr r26, r4
/* 8023F508 0023C468  2C 1A 00 21 */	cmpwi r26, 0x21
/* 8023F50C 0023C46C  7C 7E 1B 78 */	mr r30, r3
/* 8023F510 0023C470  7C BB 2B 78 */	mr r27, r5
/* 8023F514 0023C474  7C DF 33 78 */	mr r31, r6
/* 8023F518 0023C478  88 03 00 30 */	lbz r0, 0x30(r3)
/* 8023F51C 0023C47C  54 1D CF FE */	rlwinm r29, r0, 0x19, 0x1f, 0x1f
/* 8023F520 0023C480  41 82 00 20 */	beq lbl_8023F540
/* 8023F524 0023C484  40 80 00 10 */	bge lbl_8023F534
/* 8023F528 0023C488  2C 1A 00 0D */	cmpwi r26, 0xd
/* 8023F52C 0023C48C  41 82 00 60 */	beq lbl_8023F58C
/* 8023F530 0023C490  48 00 00 A8 */	b lbl_8023F5D8
lbl_8023F534:
/* 8023F534 0023C494  2C 1A 00 23 */	cmpwi r26, 0x23
/* 8023F538 0023C498  40 80 00 A0 */	bge lbl_8023F5D8
/* 8023F53C 0023C49C  48 00 00 14 */	b lbl_8023F550
lbl_8023F540:
/* 8023F540 0023C4A0  7F E5 FB 78 */	mr r5, r31
/* 8023F544 0023C4A4  38 80 00 1B */	li r4, 0x1b
/* 8023F548 0023C4A8  4B E1 4E 09 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8023F54C 0023C4AC  48 00 00 8C */	b lbl_8023F5D8
lbl_8023F550:
/* 8023F550 0023C4B0  83 9E 02 EC */	lwz r28, 0x2ec(r30)
/* 8023F554 0023C4B4  48 00 00 28 */	b lbl_8023F57C
lbl_8023F558:
/* 8023F558 0023C4B8  A0 1C 00 08 */	lhz r0, 8(r28)
/* 8023F55C 0023C4BC  7F E3 FB 78 */	mr r3, r31
/* 8023F560 0023C4C0  38 81 00 14 */	addi r4, r1, 0x14
/* 8023F564 0023C4C4  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8023F568 0023C4C8  4B E0 CD 05 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
/* 8023F56C 0023C4CC  7F 84 E3 78 */	mr r4, r28
/* 8023F570 0023C4D0  38 7E 02 E8 */	addi r3, r30, 0x2e8
/* 8023F574 0023C4D4  48 00 05 4D */	bl sub_8023fac0
/* 8023F578 0023C4D8  7C 7C 1B 78 */	mr r28, r3
lbl_8023F57C:
/* 8023F57C 0023C4DC  80 1E 02 F0 */	lwz r0, 0x2f0(r30)
/* 8023F580 0023C4E0  7C 1C 00 40 */	cmplw r28, r0
/* 8023F584 0023C4E4  40 82 FF D4 */	bne lbl_8023F558
/* 8023F588 0023C4E8  48 00 00 50 */	b lbl_8023F5D8
lbl_8023F58C:
/* 8023F58C 0023C4EC  83 9E 02 EC */	lwz r28, 0x2ec(r30)
/* 8023F590 0023C4F0  48 00 00 3C */	b lbl_8023F5CC
lbl_8023F594:
/* 8023F594 0023C4F4  A0 1C 00 08 */	lhz r0, 8(r28)
/* 8023F598 0023C4F8  7F E3 FB 78 */	mr r3, r31
/* 8023F59C 0023C4FC  38 81 00 10 */	addi r4, r1, 0x10
/* 8023F5A0 0023C500  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8023F5A4 0023C504  4B E0 CF D1 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8023F5A8 0023C508  28 03 00 00 */	cmplwi r3, 0
/* 8023F5AC 0023C50C  41 82 00 1C */	beq lbl_8023F5C8
/* 8023F5B0 0023C510  88 03 04 00 */	lbz r0, 0x400(r3)
/* 8023F5B4 0023C514  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8023F5B8 0023C518  41 82 00 10 */	beq lbl_8023F5C8
/* 8023F5BC 0023C51C  7F E4 FB 78 */	mr r4, r31
/* 8023F5C0 0023C520  38 A0 00 00 */	li r5, 0
/* 8023F5C4 0023C524  4B F5 8B FD */	bl Reset__13CFlameThrowerFR13CStateManagerb
lbl_8023F5C8:
/* 8023F5C8 0023C528  83 9C 00 04 */	lwz r28, 4(r28)
lbl_8023F5CC:
/* 8023F5CC 0023C52C  80 1E 02 F0 */	lwz r0, 0x2f0(r30)
/* 8023F5D0 0023C530  7C 1C 00 40 */	cmplw r28, r0
/* 8023F5D4 0023C534  40 82 FF C0 */	bne lbl_8023F594
lbl_8023F5D8:
/* 8023F5D8 0023C538  A0 1B 00 00 */	lhz r0, 0(r27)
/* 8023F5DC 0023C53C  7F C3 F3 78 */	mr r3, r30
/* 8023F5E0 0023C540  7F 44 D3 78 */	mr r4, r26
/* 8023F5E4 0023C544  7F E6 FB 78 */	mr r6, r31
/* 8023F5E8 0023C548  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8023F5EC 0023C54C  38 A1 00 0C */	addi r5, r1, 0xc
/* 8023F5F0 0023C550  4B E3 5D 11 */	bl AcceptScriptMsg__12CScriptActorF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 8023F5F4 0023C554  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 8023F5F8 0023C558  54 00 CF FE */	rlwinm r0, r0, 0x19, 0x1f, 0x1f
/* 8023F5FC 0023C55C  7C 1D 00 40 */	cmplw r29, r0
/* 8023F600 0023C560  41 82 00 60 */	beq lbl_8023F660
/* 8023F604 0023C564  28 00 00 00 */	cmplwi r0, 0
/* 8023F608 0023C568  40 82 00 58 */	bne lbl_8023F660
/* 8023F60C 0023C56C  83 9E 02 EC */	lwz r28, 0x2ec(r30)
/* 8023F610 0023C570  48 00 00 3C */	b lbl_8023F64C
lbl_8023F614:
/* 8023F614 0023C574  A0 1C 00 08 */	lhz r0, 8(r28)
/* 8023F618 0023C578  7F E3 FB 78 */	mr r3, r31
/* 8023F61C 0023C57C  38 81 00 08 */	addi r4, r1, 8
/* 8023F620 0023C580  B0 01 00 08 */	sth r0, 8(r1)
/* 8023F624 0023C584  4B E0 CF 51 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8023F628 0023C588  28 03 00 00 */	cmplwi r3, 0
/* 8023F62C 0023C58C  41 82 00 1C */	beq lbl_8023F648
/* 8023F630 0023C590  88 03 04 00 */	lbz r0, 0x400(r3)
/* 8023F634 0023C594  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8023F638 0023C598  41 82 00 10 */	beq lbl_8023F648
/* 8023F63C 0023C59C  7F E4 FB 78 */	mr r4, r31
/* 8023F640 0023C5A0  38 A0 00 00 */	li r5, 0
/* 8023F644 0023C5A4  4B F5 8B 7D */	bl Reset__13CFlameThrowerFR13CStateManagerb
lbl_8023F648:
/* 8023F648 0023C5A8  83 9C 00 04 */	lwz r28, 4(r28)
lbl_8023F64C:
/* 8023F64C 0023C5AC  80 1E 02 F0 */	lwz r0, 0x2f0(r30)
/* 8023F650 0023C5B0  7C 1C 00 40 */	cmplw r28, r0
/* 8023F654 0023C5B4  40 82 FF C0 */	bne lbl_8023F614
/* 8023F658 0023C5B8  7F C3 F3 78 */	mr r3, r30
/* 8023F65C 0023C5BC  4B E1 5B E9 */	bl RemoveEmitter__6CActorFv
lbl_8023F660:
/* 8023F660 0023C5C0  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 8023F664 0023C5C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8023F668 0023C5C8  7C 08 03 A6 */	mtlr r0
/* 8023F66C 0023C5CC  38 21 00 30 */	addi r1, r1, 0x30
/* 8023F670 0023C5D0  4E 80 00 20 */	blr

.global Think__17CActorContraptionFfR13CStateManager
Think__17CActorContraptionFfR13CStateManager:
/* 8023F674 0023C5D4  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8023F678 0023C5D8  7C 08 02 A6 */	mflr r0
/* 8023F67C 0023C5DC  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8023F680 0023C5E0  DB E1 00 B8 */	stfd f31, 0xb8(r1)
/* 8023F684 0023C5E4  FF E0 08 90 */	fmr f31, f1
/* 8023F688 0023C5E8  93 E1 00 B4 */	stw r31, 0xb4(r1)
/* 8023F68C 0023C5EC  93 C1 00 B0 */	stw r30, 0xb0(r1)
/* 8023F690 0023C5F0  93 A1 00 AC */	stw r29, 0xac(r1)
/* 8023F694 0023C5F4  7C 9D 23 78 */	mr r29, r4
/* 8023F698 0023C5F8  93 81 00 A8 */	stw r28, 0xa8(r1)
/* 8023F69C 0023C5FC  7C 7C 1B 78 */	mr r28, r3
/* 8023F6A0 0023C600  4B E3 5E 6D */	bl Think__12CScriptActorFfR13CStateManager
/* 8023F6A4 0023C604  83 FC 02 EC */	lwz r31, 0x2ec(r28)
/* 8023F6A8 0023C608  48 00 00 70 */	b lbl_8023F718
lbl_8023F6AC:
/* 8023F6AC 0023C60C  A0 1F 00 08 */	lhz r0, 8(r31)
/* 8023F6B0 0023C610  7F A3 EB 78 */	mr r3, r29
/* 8023F6B4 0023C614  38 81 00 08 */	addi r4, r1, 8
/* 8023F6B8 0023C618  B0 01 00 08 */	sth r0, 8(r1)
/* 8023F6BC 0023C61C  4B E0 CE B9 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8023F6C0 0023C620  7C 7E 1B 79 */	or. r30, r3, r3
/* 8023F6C4 0023C624  41 82 00 50 */	beq lbl_8023F714
/* 8023F6C8 0023C628  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 8023F6CC 0023C62C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8023F6D0 0023C630  41 82 00 44 */	beq lbl_8023F714
/* 8023F6D4 0023C634  7F 84 E3 78 */	mr r4, r28
/* 8023F6D8 0023C638  38 61 00 0C */	addi r3, r1, 0xc
/* 8023F6DC 0023C63C  38 BF 00 0C */	addi r5, r31, 0xc
/* 8023F6E0 0023C640  4B E1 37 F1 */	bl "GetScaledLocatorTransform__6CActorCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8023F6E4 0023C644  38 61 00 3C */	addi r3, r1, 0x3c
/* 8023F6E8 0023C648  38 9C 00 34 */	addi r4, r28, 0x34
/* 8023F6EC 0023C64C  38 A1 00 0C */	addi r5, r1, 0xc
/* 8023F6F0 0023C650  48 0D 32 61 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 8023F6F4 0023C654  38 61 00 6C */	addi r3, r1, 0x6c
/* 8023F6F8 0023C658  38 81 00 3C */	addi r4, r1, 0x3c
/* 8023F6FC 0023C65C  48 0D 34 79 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8023F700 0023C660  FC 20 F8 90 */	fmr f1, f31
/* 8023F704 0023C664  7F C3 F3 78 */	mr r3, r30
/* 8023F708 0023C668  7F A5 EB 78 */	mr r5, r29
/* 8023F70C 0023C66C  38 81 00 6C */	addi r4, r1, 0x6c
/* 8023F710 0023C670  4B F5 8C F1 */	bl SetTransform__13CFlameThrowerFRC12CTransform4f
lbl_8023F714:
/* 8023F714 0023C674  83 FF 00 04 */	lwz r31, 4(r31)
lbl_8023F718:
/* 8023F718 0023C678  80 1C 02 F0 */	lwz r0, 0x2f0(r28)
/* 8023F71C 0023C67C  7C 1F 00 40 */	cmplw r31, r0
/* 8023F720 0023C680  40 82 FF 8C */	bne lbl_8023F6AC
/* 8023F724 0023C684  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8023F728 0023C688  CB E1 00 B8 */	lfd f31, 0xb8(r1)
/* 8023F72C 0023C68C  83 E1 00 B4 */	lwz r31, 0xb4(r1)
/* 8023F730 0023C690  83 C1 00 B0 */	lwz r30, 0xb0(r1)
/* 8023F734 0023C694  83 A1 00 AC */	lwz r29, 0xac(r1)
/* 8023F738 0023C698  83 81 00 A8 */	lwz r28, 0xa8(r1)
/* 8023F73C 0023C69C  7C 08 03 A6 */	mtlr r0
/* 8023F740 0023C6A0  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8023F744 0023C6A4  4E 80 00 20 */	blr

.global sub_8023f748
sub_8023f748:
/* 8023F748 0023C6A8  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8023F74C 0023C6AC  7C 08 02 A6 */	mflr r0
/* 8023F750 0023C6B0  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8023F754 0023C6B4  BF 41 00 98 */	stmw r26, 0x98(r1)
/* 8023F758 0023C6B8  7C 7B 1B 78 */	mr r27, r3
/* 8023F75C 0023C6BC  7C 9C 23 78 */	mr r28, r4
/* 8023F760 0023C6C0  7C BD 2B 78 */	mr r29, r5
/* 8023F764 0023C6C4  83 43 02 EC */	lwz r26, 0x2ec(r3)
/* 8023F768 0023C6C8  48 00 00 34 */	b lbl_8023F79C
lbl_8023F76C:
/* 8023F76C 0023C6CC  7F 84 E3 78 */	mr r4, r28
/* 8023F770 0023C6D0  38 7A 00 0C */	addi r3, r26, 0xc
/* 8023F774 0023C6D4  4B E1 2E 6D */	bl "find__Q24rstl418red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>,0,Q24rstl103select1st<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>CFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocat"
/* 8023F778 0023C6D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8023F77C 0023C6DC  41 82 00 1C */	beq lbl_8023F798
/* 8023F780 0023C6E0  A0 1A 00 08 */	lhz r0, 8(r26)
/* 8023F784 0023C6E4  7F A3 EB 78 */	mr r3, r29
/* 8023F788 0023C6E8  38 81 00 3C */	addi r4, r1, 0x3c
/* 8023F78C 0023C6EC  B0 01 00 3C */	sth r0, 0x3c(r1)
/* 8023F790 0023C6F0  4B E0 CD E5 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8023F794 0023C6F4  48 00 01 E4 */	b lbl_8023F978
lbl_8023F798:
/* 8023F798 0023C6F8  83 5A 00 04 */	lwz r26, 4(r26)
lbl_8023F79C:
/* 8023F79C 0023C6FC  80 1B 02 F0 */	lwz r0, 0x2f0(r27)
/* 8023F7A0 0023C700  7C 1A 00 40 */	cmplw r26, r0
/* 8023F7A4 0023C704  40 82 FF C8 */	bne lbl_8023F76C
/* 8023F7A8 0023C708  80 DB 03 08 */	lwz r6, 0x308(r27)
/* 8023F7AC 0023C70C  38 A0 00 06 */	li r5, 6
/* 8023F7B0 0023C710  C0 02 B7 CC */	lfs f0, lbl_805AD4EC@sda21(r2)
/* 8023F7B4 0023C714  38 00 00 14 */	li r0, 0x14
/* 8023F7B8 0023C718  C0 22 B7 C8 */	lfs f1, lbl_805AD4E8@sda21(r2)
/* 8023F7BC 0023C71C  7F A4 EB 78 */	mr r4, r29
/* 8023F7C0 0023C720  90 A1 00 74 */	stw r5, 0x74(r1)
/* 8023F7C4 0023C724  38 61 00 38 */	addi r3, r1, 0x38
/* 8023F7C8 0023C728  90 A1 00 78 */	stw r5, 0x78(r1)
/* 8023F7CC 0023C72C  90 C1 00 7C */	stw r6, 0x7c(r1)
/* 8023F7D0 0023C730  90 01 00 80 */	stw r0, 0x80(r1)
/* 8023F7D4 0023C734  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 8023F7D8 0023C738  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8023F7DC 0023C73C  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8023F7E0 0023C740  4B E0 D8 FD */	bl AllocateUniqueId__13CStateManagerFv
/* 8023F7E4 0023C744  A0 01 00 38 */	lhz r0, 0x38(r1)
/* 8023F7E8 0023C748  3C 60 80 3D */	lis r3, lbl_803D43A0@ha
/* 8023F7EC 0023C74C  38 83 43 A0 */	addi r4, r3, lbl_803D43A0@l
/* 8023F7F0 0023C750  3B 40 00 00 */	li r26, 0
/* 8023F7F4 0023C754  B0 01 00 40 */	sth r0, 0x40(r1)
/* 8023F7F8 0023C758  38 60 04 08 */	li r3, 0x408
/* 8023F7FC 0023C75C  38 A0 00 00 */	li r5, 0
/* 8023F800 0023C760  48 0D 60 6D */	bl __nw__FUlPCcPCc
/* 8023F804 0023C764  7C 7F 1B 79 */	or. r31, r3, r3
/* 8023F808 0023C768  41 82 00 9C */	beq lbl_8023F8A4
/* 8023F80C 0023C76C  A0 DB 00 08 */	lhz r6, 8(r27)
/* 8023F810 0023C770  3C 60 80 3D */	lis r3, lbl_803D43A0@ha
/* 8023F814 0023C774  38 83 43 A0 */	addi r4, r3, lbl_803D43A0@l
/* 8023F818 0023C778  A0 01 00 40 */	lhz r0, 0x40(r1)
/* 8023F81C 0023C77C  B0 C1 00 34 */	sth r6, 0x34(r1)
/* 8023F820 0023C780  38 61 00 4C */	addi r3, r1, 0x4c
/* 8023F824 0023C784  38 84 00 07 */	addi r4, r4, 7
/* 8023F828 0023C788  80 BB 00 04 */	lwz r5, 4(r27)
/* 8023F82C 0023C78C  B0 C1 00 30 */	sth r6, 0x30(r1)
/* 8023F830 0023C790  90 A1 00 44 */	stw r5, 0x44(r1)
/* 8023F834 0023C794  90 A1 00 48 */	stw r5, 0x48(r1)
/* 8023F838 0023C798  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 8023F83C 0023C79C  4B DC 54 7D */	bl string_l__4rstlFPCc
/* 8023F840 0023C7A0  38 01 00 2C */	addi r0, r1, 0x2c
/* 8023F844 0023C7A4  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 8023F848 0023C7A8  90 01 00 08 */	stw r0, 8(r1)
/* 8023F84C 0023C7AC  38 01 00 48 */	addi r0, r1, 0x48
/* 8023F850 0023C7B0  39 03 66 70 */	addi r8, r3, sIdentity__12CTransform4f@l
/* 8023F854 0023C7B4  38 61 00 34 */	addi r3, r1, 0x34
/* 8023F858 0023C7B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8023F85C 0023C7BC  38 A0 00 00 */	li r5, 0
/* 8023F860 0023C7C0  39 60 FF FF */	li r11, -1
/* 8023F864 0023C7C4  A0 02 C5 FC */	lhz r0, kInternalInvalidSfxId__11CSfxManager@sda21(r2)
/* 8023F868 0023C7C8  90 61 00 10 */	stw r3, 0x10(r1)
/* 8023F86C 0023C7CC  7F E3 FB 78 */	mr r3, r31
/* 8023F870 0023C7D0  38 9B 03 00 */	addi r4, r27, 0x300
/* 8023F874 0023C7D4  38 E1 00 74 */	addi r7, r1, 0x74
/* 8023F878 0023C7D8  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8023F87C 0023C7DC  38 A1 00 4C */	addi r5, r1, 0x4c
/* 8023F880 0023C7E0  39 5B 03 0C */	addi r10, r27, 0x30c
/* 8023F884 0023C7E4  3B 40 00 01 */	li r26, 1
/* 8023F888 0023C7E8  91 61 00 18 */	stw r11, 0x18(r1)
/* 8023F88C 0023C7EC  38 C0 00 03 */	li r6, 3
/* 8023F890 0023C7F0  39 20 00 2F */	li r9, 0x2f
/* 8023F894 0023C7F4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8023F898 0023C7F8  91 61 00 20 */	stw r11, 0x20(r1)
/* 8023F89C 0023C7FC  4B F5 92 55 */	bl "__ct__13CFlameThrowerFRC28TToken<18CWeaponDescription>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>11EWeaponTypeRC10CFlameInfoRC12CTransform4f14EMaterialTypesRC11CDamageInfo9TUniqueId9TUniqueIdUi"
/* 8023F8A0 0023C800  7C 7F 1B 78 */	mr r31, r3
lbl_8023F8A4:
/* 8023F8A4 0023C804  7F 40 07 75 */	extsb. r0, r26
/* 8023F8A8 0023C808  7F FE FB 78 */	mr r30, r31
/* 8023F8AC 0023C80C  41 82 00 0C */	beq lbl_8023F8B8
/* 8023F8B0 0023C810  38 61 00 4C */	addi r3, r1, 0x4c
/* 8023F8B4 0023C814  48 0F E2 2D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8023F8B8:
/* 8023F8B8 0023C818  7F A3 EB 78 */	mr r3, r29
/* 8023F8BC 0023C81C  7F C4 F3 78 */	mr r4, r30
/* 8023F8C0 0023C820  4B E0 D2 55 */	bl AddObject__13CStateManagerFR7CEntity
/* 8023F8C4 0023C824  A0 01 00 40 */	lhz r0, 0x40(r1)
/* 8023F8C8 0023C828  3B E1 00 60 */	addi r31, r1, 0x60
/* 8023F8CC 0023C82C  7F E3 FB 78 */	mr r3, r31
/* 8023F8D0 0023C830  7F 84 E3 78 */	mr r4, r28
/* 8023F8D4 0023C834  B0 01 00 28 */	sth r0, 0x28(r1)
/* 8023F8D8 0023C838  B0 01 00 5C */	sth r0, 0x5c(r1)
/* 8023F8DC 0023C83C  48 0F E8 85 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8023F8E0 0023C840  38 00 00 00 */	li r0, 0
/* 8023F8E4 0023C844  3C 60 80 3D */	lis r3, lbl_803D43A0@ha
/* 8023F8E8 0023C848  98 01 00 70 */	stb r0, 0x70(r1)
/* 8023F8EC 0023C84C  38 83 43 A0 */	addi r4, r3, lbl_803D43A0@l
/* 8023F8F0 0023C850  38 60 00 20 */	li r3, 0x20
/* 8023F8F4 0023C854  38 A0 00 00 */	li r5, 0
/* 8023F8F8 0023C858  83 BB 02 F0 */	lwz r29, 0x2f0(r27)
/* 8023F8FC 0023C85C  83 5D 00 00 */	lwz r26, 0(r29)
/* 8023F900 0023C860  48 0D 5F 19 */	bl __nwa__FUlPCcPCc
/* 8023F904 0023C864  7C 7C 1B 79 */	or. r28, r3, r3
/* 8023F908 0023C868  41 82 00 0C */	beq lbl_8023F914
/* 8023F90C 0023C86C  93 5C 00 00 */	stw r26, 0(r28)
/* 8023F910 0023C870  93 BC 00 04 */	stw r29, 4(r28)
lbl_8023F914:
/* 8023F914 0023C874  37 5C 00 08 */	addic. r26, r28, 8
/* 8023F918 0023C878  41 82 00 20 */	beq lbl_8023F938
/* 8023F91C 0023C87C  A0 01 00 5C */	lhz r0, 0x5c(r1)
/* 8023F920 0023C880  7F E4 FB 78 */	mr r4, r31
/* 8023F924 0023C884  38 7A 00 04 */	addi r3, r26, 4
/* 8023F928 0023C888  B0 1A 00 00 */	sth r0, 0(r26)
/* 8023F92C 0023C88C  48 0F E8 35 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8023F930 0023C890  88 01 00 70 */	lbz r0, 0x70(r1)
/* 8023F934 0023C894  98 1A 00 14 */	stb r0, 0x14(r26)
lbl_8023F938:
/* 8023F938 0023C898  80 1B 02 EC */	lwz r0, 0x2ec(r27)
/* 8023F93C 0023C89C  7C 1D 00 40 */	cmplw r29, r0
/* 8023F940 0023C8A0  40 82 00 08 */	bne lbl_8023F948
/* 8023F944 0023C8A4  93 9B 02 EC */	stw r28, 0x2ec(r27)
lbl_8023F948:
/* 8023F948 0023C8A8  80 7C 00 00 */	lwz r3, 0(r28)
/* 8023F94C 0023C8AC  28 1F 00 00 */	cmplwi r31, 0
/* 8023F950 0023C8B0  93 83 00 04 */	stw r28, 4(r3)
/* 8023F954 0023C8B4  80 7C 00 04 */	lwz r3, 4(r28)
/* 8023F958 0023C8B8  93 83 00 00 */	stw r28, 0(r3)
/* 8023F95C 0023C8BC  80 7B 02 FC */	lwz r3, 0x2fc(r27)
/* 8023F960 0023C8C0  38 03 00 01 */	addi r0, r3, 1
/* 8023F964 0023C8C4  90 1B 02 FC */	stw r0, 0x2fc(r27)
/* 8023F968 0023C8C8  41 82 00 0C */	beq lbl_8023F974
/* 8023F96C 0023C8CC  7F E3 FB 78 */	mr r3, r31
/* 8023F970 0023C8D0  48 0F E1 71 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8023F974:
/* 8023F974 0023C8D4  7F C3 F3 78 */	mr r3, r30
lbl_8023F978:
/* 8023F978 0023C8D8  BB 41 00 98 */	lmw r26, 0x98(r1)
/* 8023F97C 0023C8DC  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8023F980 0023C8E0  7C 08 03 A6 */	mtlr r0
/* 8023F984 0023C8E4  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8023F988 0023C8E8  4E 80 00 20 */	blr

.global "__ct__17CActorContraptionF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC6CAABoxRC13CMaterialListffRC11CHealthInfoRC20CDamageVulnerabilityRC16CActorParametersiRC11CDamageInfob"
"__ct__17CActorContraptionF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC6CAABoxRC13CMaterialListffRC11CHealthInfoRC20CDamageVulnerabilityRC16CActorParametersiRC11CDamageInfob":
/* 8023F98C 0023C8EC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8023F990 0023C8F0  7C 08 02 A6 */	mflr r0
/* 8023F994 0023C8F4  C0 62 B7 CC */	lfs f3, lbl_805AD4EC@sda21(r2)
/* 8023F998 0023C8F8  90 01 00 54 */	stw r0, 0x54(r1)
/* 8023F99C 0023C8FC  38 00 00 00 */	li r0, 0
/* 8023F9A0 0023C900  81 81 00 58 */	lwz r12, 0x58(r1)
/* 8023F9A4 0023C904  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8023F9A8 0023C908  7C 7F 1B 78 */	mr r31, r3
/* 8023F9AC 0023C90C  81 61 00 5C */	lwz r11, 0x5c(r1)
/* 8023F9B0 0023C910  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8023F9B4 0023C914  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 8023F9B8 0023C918  93 A1 00 44 */	stw r29, 0x44(r1)
/* 8023F9BC 0023C91C  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 8023F9C0 0023C920  A0 84 00 00 */	lhz r4, 0(r4)
/* 8023F9C4 0023C924  B0 81 00 30 */	sth r4, 0x30(r1)
/* 8023F9C8 0023C928  38 81 00 30 */	addi r4, r1, 0x30
/* 8023F9CC 0023C92C  91 81 00 08 */	stw r12, 8(r1)
/* 8023F9D0 0023C930  81 81 00 60 */	lwz r12, 0x60(r1)
/* 8023F9D4 0023C934  91 61 00 0C */	stw r11, 0xc(r1)
/* 8023F9D8 0023C938  89 61 00 6F */	lbz r11, 0x6f(r1)
/* 8023F9DC 0023C93C  91 81 00 10 */	stw r12, 0x10(r1)
/* 8023F9E0 0023C940  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023F9E4 0023C944  91 61 00 18 */	stw r11, 0x18(r1)
/* 8023F9E8 0023C948  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8023F9EC 0023C94C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8023F9F0 0023C950  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023F9F4 0023C954  90 01 00 28 */	stw r0, 0x28(r1)
/* 8023F9F8 0023C958  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8023F9FC 0023C95C  4B E3 5E B1 */	bl "__ct__12CScriptActorF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC6CAABoxRC13CMaterialListffRC11CHealthInfoRC20CDamageVulnerabilityRC16CActorParametersbbUibbbb"
/* 8023FA00 0023C960  3C 80 80 3F */	lis r4, lbl_803E85E8@ha
/* 8023FA04 0023C964  3C 60 80 3D */	lis r3, lbl_803D43A0@ha
/* 8023FA08 0023C968  38 04 85 E8 */	addi r0, r4, lbl_803E85E8@l
/* 8023FA0C 0023C96C  38 DF 02 F4 */	addi r6, r31, 0x2f4
/* 8023FA10 0023C970  90 1F 00 00 */	stw r0, 0(r31)
/* 8023FA14 0023C974  38 83 43 A0 */	addi r4, r3, lbl_803D43A0@l
/* 8023FA18 0023C978  38 00 00 00 */	li r0, 0
/* 8023FA1C 0023C97C  38 61 00 34 */	addi r3, r1, 0x34
/* 8023FA20 0023C980  90 DF 02 EC */	stw r6, 0x2ec(r31)
/* 8023FA24 0023C984  38 A4 00 19 */	addi r5, r4, 0x19
/* 8023FA28 0023C988  90 DF 02 F0 */	stw r6, 0x2f0(r31)
/* 8023FA2C 0023C98C  90 DF 02 F4 */	stw r6, 0x2f4(r31)
/* 8023FA30 0023C990  90 DF 02 F8 */	stw r6, 0x2f8(r31)
/* 8023FA34 0023C994  90 1F 02 FC */	stw r0, 0x2fc(r31)
/* 8023FA38 0023C998  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 8023FA3C 0023C99C  81 84 00 00 */	lwz r12, 0(r4)
/* 8023FA40 0023C9A0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8023FA44 0023C9A4  7D 89 03 A6 */	mtctr r12
/* 8023FA48 0023C9A8  4E 80 04 21 */	bctrl
/* 8023FA4C 0023C9AC  38 7F 03 00 */	addi r3, r31, 0x300
/* 8023FA50 0023C9B0  38 81 00 34 */	addi r4, r1, 0x34
/* 8023FA54 0023C9B4  48 10 14 55 */	bl __ct__6CTokenFRC6CToken
/* 8023FA58 0023C9B8  38 61 00 34 */	addi r3, r1, 0x34
/* 8023FA5C 0023C9BC  38 80 FF FF */	li r4, -1
/* 8023FA60 0023C9C0  48 10 13 E1 */	bl __dt__6CTokenFv
/* 8023FA64 0023C9C4  93 BF 03 08 */	stw r29, 0x308(r31)
/* 8023FA68 0023C9C8  7F E3 FB 78 */	mr r3, r31
/* 8023FA6C 0023C9CC  80 1E 00 00 */	lwz r0, 0(r30)
/* 8023FA70 0023C9D0  90 1F 03 0C */	stw r0, 0x30c(r31)
/* 8023FA74 0023C9D4  88 1E 00 04 */	lbz r0, 4(r30)
/* 8023FA78 0023C9D8  98 1F 03 10 */	stb r0, 0x310(r31)
/* 8023FA7C 0023C9DC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8023FA80 0023C9E0  D0 1F 03 14 */	stfs f0, 0x314(r31)
/* 8023FA84 0023C9E4  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8023FA88 0023C9E8  D0 1F 03 18 */	stfs f0, 0x318(r31)
/* 8023FA8C 0023C9EC  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8023FA90 0023C9F0  D0 1F 03 1C */	stfs f0, 0x31c(r31)
/* 8023FA94 0023C9F4  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8023FA98 0023C9F8  D0 1F 03 20 */	stfs f0, 0x320(r31)
/* 8023FA9C 0023C9FC  88 1E 00 18 */	lbz r0, 0x18(r30)
/* 8023FAA0 0023CA00  98 1F 03 24 */	stb r0, 0x324(r31)
/* 8023FAA4 0023CA04  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8023FAA8 0023CA08  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8023FAAC 0023CA0C  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 8023FAB0 0023CA10  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8023FAB4 0023CA14  7C 08 03 A6 */	mtlr r0
/* 8023FAB8 0023CA18  38 21 00 50 */	addi r1, r1, 0x50
/* 8023FABC 0023CA1C  4E 80 00 20 */	blr

.global sub_8023fac0
sub_8023fac0:
/* 8023FAC0 0023CA20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8023FAC4 0023CA24  7C 08 02 A6 */	mflr r0
/* 8023FAC8 0023CA28  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023FACC 0023CA2C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8023FAD0 0023CA30  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8023FAD4 0023CA34  7C 9E 23 78 */	mr r30, r4
/* 8023FAD8 0023CA38  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8023FADC 0023CA3C  7C 7D 1B 78 */	mr r29, r3
/* 8023FAE0 0023CA40  80 03 00 04 */	lwz r0, 4(r3)
/* 8023FAE4 0023CA44  83 E4 00 04 */	lwz r31, 4(r4)
/* 8023FAE8 0023CA48  7C 1E 00 40 */	cmplw r30, r0
/* 8023FAEC 0023CA4C  40 82 00 08 */	bne lbl_8023FAF4
/* 8023FAF0 0023CA50  93 FD 00 04 */	stw r31, 4(r29)
lbl_8023FAF4:
/* 8023FAF4 0023CA54  80 1E 00 04 */	lwz r0, 4(r30)
/* 8023FAF8 0023CA58  34 9E 00 08 */	addic. r4, r30, 8
/* 8023FAFC 0023CA5C  80 7E 00 00 */	lwz r3, 0(r30)
/* 8023FB00 0023CA60  90 03 00 04 */	stw r0, 4(r3)
/* 8023FB04 0023CA64  80 1E 00 00 */	lwz r0, 0(r30)
/* 8023FB08 0023CA68  80 7E 00 04 */	lwz r3, 4(r30)
/* 8023FB0C 0023CA6C  90 03 00 00 */	stw r0, 0(r3)
/* 8023FB10 0023CA70  41 82 00 14 */	beq lbl_8023FB24
/* 8023FB14 0023CA74  34 04 00 04 */	addic. r0, r4, 4
/* 8023FB18 0023CA78  41 82 00 0C */	beq lbl_8023FB24
/* 8023FB1C 0023CA7C  38 64 00 04 */	addi r3, r4, 4
/* 8023FB20 0023CA80  48 0F DF C1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8023FB24:
/* 8023FB24 0023CA84  28 1E 00 00 */	cmplwi r30, 0
/* 8023FB28 0023CA88  41 82 00 0C */	beq lbl_8023FB34
/* 8023FB2C 0023CA8C  7F C3 F3 78 */	mr r3, r30
/* 8023FB30 0023CA90  48 0D 5E 01 */	bl Free__7CMemoryFPCv
lbl_8023FB34:
/* 8023FB34 0023CA94  80 9D 00 14 */	lwz r4, 0x14(r29)
/* 8023FB38 0023CA98  7F E3 FB 78 */	mr r3, r31
/* 8023FB3C 0023CA9C  38 04 FF FF */	addi r0, r4, -1
/* 8023FB40 0023CAA0  90 1D 00 14 */	stw r0, 0x14(r29)
/* 8023FB44 0023CAA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8023FB48 0023CAA8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8023FB4C 0023CAAC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8023FB50 0023CAB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8023FB54 0023CAB4  7C 08 03 A6 */	mtlr r0
/* 8023FB58 0023CAB8  38 21 00 20 */	addi r1, r1, 0x20
/* 8023FB5C 0023CABC  4E 80 00 20 */	blr

.global sub_8023fb60
sub_8023fb60:
/* 8023FB60 0023CAC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8023FB64 0023CAC4  7C 08 02 A6 */	mflr r0
/* 8023FB68 0023CAC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023FB6C 0023CACC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8023FB70 0023CAD0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8023FB74 0023CAD4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8023FB78 0023CAD8  7C 9D 23 78 */	mr r29, r4
/* 8023FB7C 0023CADC  93 81 00 10 */	stw r28, 0x10(r1)
/* 8023FB80 0023CAE0  7C 7C 1B 79 */	or. r28, r3, r3
/* 8023FB84 0023CAE4  41 82 00 58 */	beq lbl_8023FBDC
/* 8023FB88 0023CAE8  83 FC 00 04 */	lwz r31, 4(r28)
/* 8023FB8C 0023CAEC  48 00 00 34 */	b lbl_8023FBC0
lbl_8023FB90:
/* 8023FB90 0023CAF0  7F FE FB 78 */	mr r30, r31
/* 8023FB94 0023CAF4  83 FF 00 04 */	lwz r31, 4(r31)
/* 8023FB98 0023CAF8  34 7E 00 08 */	addic. r3, r30, 8
/* 8023FB9C 0023CAFC  41 82 00 14 */	beq lbl_8023FBB0
/* 8023FBA0 0023CB00  34 03 00 04 */	addic. r0, r3, 4
/* 8023FBA4 0023CB04  41 82 00 0C */	beq lbl_8023FBB0
/* 8023FBA8 0023CB08  38 63 00 04 */	addi r3, r3, 4
/* 8023FBAC 0023CB0C  48 0F DF 35 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8023FBB0:
/* 8023FBB0 0023CB10  28 1E 00 00 */	cmplwi r30, 0
/* 8023FBB4 0023CB14  41 82 00 0C */	beq lbl_8023FBC0
/* 8023FBB8 0023CB18  7F C3 F3 78 */	mr r3, r30
/* 8023FBBC 0023CB1C  48 0D 5D 75 */	bl Free__7CMemoryFPCv
lbl_8023FBC0:
/* 8023FBC0 0023CB20  80 1C 00 08 */	lwz r0, 8(r28)
/* 8023FBC4 0023CB24  7C 1F 00 40 */	cmplw r31, r0
/* 8023FBC8 0023CB28  40 82 FF C8 */	bne lbl_8023FB90
/* 8023FBCC 0023CB2C  7F A0 07 35 */	extsh. r0, r29
/* 8023FBD0 0023CB30  40 81 00 0C */	ble lbl_8023FBDC
/* 8023FBD4 0023CB34  7F 83 E3 78 */	mr r3, r28
/* 8023FBD8 0023CB38  48 0D 5D 59 */	bl Free__7CMemoryFPCv
lbl_8023FBDC:
/* 8023FBDC 0023CB3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8023FBE0 0023CB40  7F 83 E3 78 */	mr r3, r28
/* 8023FBE4 0023CB44  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8023FBE8 0023CB48  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8023FBEC 0023CB4C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8023FBF0 0023CB50  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8023FBF4 0023CB54  7C 08 03 A6 */	mtlr r0
/* 8023FBF8 0023CB58  38 21 00 20 */	addi r1, r1, 0x20
/* 8023FBFC 0023CB5C  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805AD4E8
lbl_805AD4E8:
	# ROM: 0x3F9D88
	.float 0.5

.global lbl_805AD4EC
lbl_805AD4EC:
	# ROM: 0x3F9D8C
	.float 1.0


.section .rodata
.balign 8
.global lbl_803D43A0
lbl_803D43A0:
	# ROM: 0x3D13A0
	.asciz "??(??)"
	.byte 0x43
	.asciz "ontraption_Flame"
	.byte 0x46, 0x6C, 0x61
	.asciz "meThrower"
	.balign 4
