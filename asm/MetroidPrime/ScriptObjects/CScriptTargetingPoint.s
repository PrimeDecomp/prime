.include "macros.inc"

.section .data
.balign 8

.global lbl_803E4330
lbl_803E4330:
	# ROM: 0x3E1330
	.4byte 0
	.4byte 0
	.4byte __dt__21CScriptTargetingPointFv
	.4byte Accept__21CScriptTargetingPointFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__21CScriptTargetingPointFfR13CStateManager
	.4byte AcceptScriptMsg__21CScriptTargetingPointF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__6CActorFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__21CScriptTargetingPointCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__21CScriptTargetingPointCFRC13CStateManager
	.4byte CanRenderUnsorted__6CActorCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__6CActorFR13CStateManager
	.4byte GetDamageVulnerability__6CActorCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__6CActorCFv
	.4byte Touch__6CActorFR6CActorR13CStateManager
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

.global lbl_805A7AA8
lbl_805A7AA8:
	# ROM: 0x3F5448
	.4byte 0
	.4byte 0


.section .text, "ax"

.global __dt__21CScriptTargetingPointFv
__dt__21CScriptTargetingPointFv:
/* 8018D264 0018A1C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018D268 0018A1C8  7C 08 02 A6 */	mflr r0
/* 8018D26C 0018A1CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018D270 0018A1D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018D274 0018A1D4  7C 9F 23 78 */	mr r31, r4
/* 8018D278 0018A1D8  93 C1 00 08 */	stw r30, 8(r1)
/* 8018D27C 0018A1DC  7C 7E 1B 79 */	or. r30, r3, r3
/* 8018D280 0018A1E0  41 82 00 28 */	beq lbl_8018D2A8
/* 8018D284 0018A1E4  3C A0 80 3E */	lis r5, lbl_803E4330@ha
/* 8018D288 0018A1E8  38 80 00 00 */	li r4, 0
/* 8018D28C 0018A1EC  38 05 43 30 */	addi r0, r5, lbl_803E4330@l
/* 8018D290 0018A1F0  90 1E 00 00 */	stw r0, 0(r30)
/* 8018D294 0018A1F4  4B EC 84 5D */	bl __dt__6CActorFv
/* 8018D298 0018A1F8  7F E0 07 35 */	extsh. r0, r31
/* 8018D29C 0018A1FC  40 81 00 0C */	ble lbl_8018D2A8
/* 8018D2A0 0018A200  7F C3 F3 78 */	mr r3, r30
/* 8018D2A4 0018A204  48 18 86 8D */	bl Free__7CMemoryFPCv
lbl_8018D2A8:
/* 8018D2A8 0018A208  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018D2AC 0018A20C  7F C3 F3 78 */	mr r3, r30
/* 8018D2B0 0018A210  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018D2B4 0018A214  83 C1 00 08 */	lwz r30, 8(r1)
/* 8018D2B8 0018A218  7C 08 03 A6 */	mtlr r0
/* 8018D2BC 0018A21C  38 21 00 10 */	addi r1, r1, 0x10
/* 8018D2C0 0018A220  4E 80 00 20 */	blr

.global Render__21CScriptTargetingPointCFRC13CStateManager
Render__21CScriptTargetingPointCFRC13CStateManager:
/* 8018D2C4 0018A224  4E 80 00 20 */	blr

.global AddToRenderer__21CScriptTargetingPointCFRC14CFrustumPlanesRC13CStateManager
AddToRenderer__21CScriptTargetingPointCFRC14CFrustumPlanesRC13CStateManager:
/* 8018D2C8 0018A228  4E 80 00 20 */	blr

.global Think__21CScriptTargetingPointFfR13CStateManager
Think__21CScriptTargetingPointFfR13CStateManager:
/* 8018D2CC 0018A22C  C0 43 00 EC */	lfs f2, 0xec(r3)
/* 8018D2D0 0018A230  C0 02 A4 60 */	lfs f0, lbl_805AC180@sda21(r2)
/* 8018D2D4 0018A234  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8018D2D8 0018A238  4C 81 00 20 */	blelr
/* 8018D2DC 0018A23C  EC 02 08 28 */	fsubs f0, f2, f1
/* 8018D2E0 0018A240  D0 03 00 EC */	stfs f0, 0xec(r3)
/* 8018D2E4 0018A244  4E 80 00 20 */	blr

.global GetLocked__21CScriptTargetingPointCFv
GetLocked__21CScriptTargetingPointCFv:
/* 8018D2E8 0018A248  80 63 00 24 */	lwz r3, 0x24(r3)
/* 8018D2EC 0018A24C  7C 03 00 D0 */	neg r0, r3
/* 8018D2F0 0018A250  7C 00 18 78 */	andc r0, r0, r3
/* 8018D2F4 0018A254  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8018D2F8 0018A258  4E 80 00 20 */	blr

.global AcceptScriptMsg__21CScriptTargetingPointF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__21CScriptTargetingPointF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 8018D2FC 0018A25C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018D300 0018A260  7C 08 02 A6 */	mflr r0
/* 8018D304 0018A264  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018D308 0018A268  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8018D30C 0018A26C  7C DF 33 78 */	mr r31, r6
/* 8018D310 0018A270  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8018D314 0018A274  7C 9E 23 78 */	mr r30, r4
/* 8018D318 0018A278  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8018D31C 0018A27C  7C 7D 1B 78 */	mr r29, r3
/* 8018D320 0018A280  A0 05 00 00 */	lhz r0, 0(r5)
/* 8018D324 0018A284  38 A1 00 08 */	addi r5, r1, 8
/* 8018D328 0018A288  B0 01 00 08 */	sth r0, 8(r1)
/* 8018D32C 0018A28C  4B EC 62 E9 */	bl AcceptScriptMsg__6CActorF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 8018D330 0018A290  2C 1E 00 04 */	cmpwi r30, 4
/* 8018D334 0018A294  41 82 00 14 */	beq lbl_8018D348
/* 8018D338 0018A298  40 80 00 24 */	bge lbl_8018D35C
/* 8018D33C 0018A29C  2C 1E 00 01 */	cmpwi r30, 1
/* 8018D340 0018A2A0  41 82 00 08 */	beq lbl_8018D348
/* 8018D344 0018A2A4  48 00 00 18 */	b lbl_8018D35C
lbl_8018D348:
/* 8018D348 0018A2A8  7F A3 EB 78 */	mr r3, r29
/* 8018D34C 0018A2AC  7F E5 FB 78 */	mr r5, r31
/* 8018D350 0018A2B0  38 80 00 0A */	li r4, 0xa
/* 8018D354 0018A2B4  38 C0 FF FF */	li r6, -1
/* 8018D358 0018A2B8  4B EC 3D 69 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
lbl_8018D35C:
/* 8018D35C 0018A2BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018D360 0018A2C0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8018D364 0018A2C4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8018D368 0018A2C8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8018D36C 0018A2CC  7C 08 03 A6 */	mtlr r0
/* 8018D370 0018A2D0  38 21 00 20 */	addi r1, r1, 0x20
/* 8018D374 0018A2D4  4E 80 00 20 */	blr

.global Accept__21CScriptTargetingPointFR8IVisitor
Accept__21CScriptTargetingPointFR8IVisitor:
/* 8018D378 0018A2D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018D37C 0018A2DC  7C 08 02 A6 */	mflr r0
/* 8018D380 0018A2E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018D384 0018A2E4  7C 60 1B 78 */	mr r0, r3
/* 8018D388 0018A2E8  7C 83 23 78 */	mr r3, r4
/* 8018D38C 0018A2EC  81 84 00 00 */	lwz r12, 0(r4)
/* 8018D390 0018A2F0  7C 04 03 78 */	mr r4, r0
/* 8018D394 0018A2F4  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 8018D398 0018A2F8  7D 89 03 A6 */	mtctr r12
/* 8018D39C 0018A2FC  4E 80 04 21 */	bctrl
/* 8018D3A0 0018A300  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018D3A4 0018A304  7C 08 03 A6 */	mtlr r0
/* 8018D3A8 0018A308  38 21 00 10 */	addi r1, r1, 0x10
/* 8018D3AC 0018A30C  4E 80 00 20 */	blr

.global "__ct__21CScriptTargetingPointF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fb"
"__ct__21CScriptTargetingPointF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fb":
/* 8018D3B0 0018A310  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 8018D3B4 0018A314  7C 08 02 A6 */	mflr r0
/* 8018D3B8 0018A318  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8018D3BC 0018A31C  BF 41 00 D8 */	stmw r26, 0xd8(r1)
/* 8018D3C0 0018A320  7C 7F 1B 78 */	mr r31, r3
/* 8018D3C4 0018A324  7C 9A 23 78 */	mr r26, r4
/* 8018D3C8 0018A328  7C BB 2B 78 */	mr r27, r5
/* 8018D3CC 0018A32C  7C DC 33 78 */	mr r28, r6
/* 8018D3D0 0018A330  7C FD 3B 78 */	mr r29, r7
/* 8018D3D4 0018A334  7D 1E 43 78 */	mr r30, r8
/* 8018D3D8 0018A338  38 61 00 88 */	addi r3, r1, 0x88
/* 8018D3DC 0018A33C  4B EA D3 C9 */	bl CModelDataNull__10CModelDataFv
/* 8018D3E0 0018A340  38 61 00 20 */	addi r3, r1, 0x20
/* 8018D3E4 0018A344  4B E8 DA 55 */	bl None__16CActorParametersFv
/* 8018D3E8 0018A348  A0 8D A3 8C */	lhz r4, kInvalidUniqueId@sda21(r13)
/* 8018D3EC 0018A34C  38 00 00 00 */	li r0, 0
/* 8018D3F0 0018A350  80 AD 8E E8 */	lwz r5, lbl_805A7AA8@sda21(r13)
/* 8018D3F4 0018A354  38 60 00 00 */	li r3, 0
/* 8018D3F8 0018A358  B0 81 00 10 */	sth r4, 0x10(r1)
/* 8018D3FC 0018A35C  38 80 00 01 */	li r4, 1
/* 8018D400 0018A360  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8018D404 0018A364  90 01 00 18 */	stw r0, 0x18(r1)
/* 8018D408 0018A368  48 1F CA ED */	bl __shl2i
/* 8018D40C 0018A36C  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 8018D410 0018A370  39 61 00 20 */	addi r11, r1, 0x20
/* 8018D414 0018A374  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 8018D418 0018A378  38 01 00 10 */	addi r0, r1, 0x10
/* 8018D41C 0018A37C  7C A3 1B 78 */	or r3, r5, r3
/* 8018D420 0018A380  A1 3A 00 00 */	lhz r9, 0(r26)
/* 8018D424 0018A384  7C C4 23 78 */	or r4, r6, r4
/* 8018D428 0018A388  90 61 00 18 */	stw r3, 0x18(r1)
/* 8018D42C 0018A38C  7F E3 FB 78 */	mr r3, r31
/* 8018D430 0018A390  7F C5 F3 78 */	mr r5, r30
/* 8018D434 0018A394  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8018D438 0018A398  7F 66 DB 78 */	mr r6, r27
/* 8018D43C 0018A39C  7F 87 E3 78 */	mr r7, r28
/* 8018D440 0018A3A0  7F A8 EB 78 */	mr r8, r29
/* 8018D444 0018A3A4  B1 21 00 14 */	sth r9, 0x14(r1)
/* 8018D448 0018A3A8  38 81 00 14 */	addi r4, r1, 0x14
/* 8018D44C 0018A3AC  39 21 00 88 */	addi r9, r1, 0x88
/* 8018D450 0018A3B0  39 41 00 18 */	addi r10, r1, 0x18
/* 8018D454 0018A3B4  91 61 00 08 */	stw r11, 8(r1)
/* 8018D458 0018A3B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8018D45C 0018A3BC  4B EC 83 C5 */	bl "__ct__6CActorF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC13CMaterialListRC16CActorParameters9TUniqueId"
/* 8018D460 0018A3C0  38 61 00 20 */	addi r3, r1, 0x20
/* 8018D464 0018A3C4  38 80 FF FF */	li r4, -1
/* 8018D468 0018A3C8  4B F7 91 A1 */	bl __dt__16CActorParametersFv
/* 8018D46C 0018A3CC  38 61 00 88 */	addi r3, r1, 0x88
/* 8018D470 0018A3D0  38 80 FF FF */	li r4, -1
/* 8018D474 0018A3D4  4B F8 95 D9 */	bl __dt__10CModelDataFv
/* 8018D478 0018A3D8  3C 60 80 3E */	lis r3, lbl_803E4330@ha
/* 8018D47C 0018A3DC  38 80 00 00 */	li r4, 0
/* 8018D480 0018A3E0  38 03 43 30 */	addi r0, r3, lbl_803E4330@l
/* 8018D484 0018A3E4  C0 02 A4 60 */	lfs f0, lbl_805AC180@sda21(r2)
/* 8018D488 0018A3E8  90 1F 00 00 */	stw r0, 0(r31)
/* 8018D48C 0018A3EC  7F E3 FB 78 */	mr r3, r31
/* 8018D490 0018A3F0  88 1F 00 E8 */	lbz r0, 0xe8(r31)
/* 8018D494 0018A3F4  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 8018D498 0018A3F8  98 1F 00 E8 */	stb r0, 0xe8(r31)
/* 8018D49C 0018A3FC  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8018D4A0 0018A400  B0 1F 00 EA */	sth r0, 0xea(r31)
/* 8018D4A4 0018A404  D0 1F 00 EC */	stfs f0, 0xec(r31)
/* 8018D4A8 0018A408  BB 41 00 D8 */	lmw r26, 0xd8(r1)
/* 8018D4AC 0018A40C  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8018D4B0 0018A410  7C 08 03 A6 */	mtlr r0
/* 8018D4B4 0018A414  38 21 00 F0 */	addi r1, r1, 0xf0
/* 8018D4B8 0018A418  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805AC180
lbl_805AC180:
	# ROM: 0x3F8A20
	.4byte 0
	.4byte 0

