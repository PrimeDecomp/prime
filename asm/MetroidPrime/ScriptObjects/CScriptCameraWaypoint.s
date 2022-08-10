.include "macros.inc"

.section .data
.balign 8

.global lbl_803DF348
lbl_803DF348:
	# ROM: 0x3DC348
	.4byte 0
	.4byte 0
	.4byte __dt__21CScriptCameraWaypointFv
	.4byte Accept__21CScriptCameraWaypointFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__7CEntityFfR13CStateManager
	.4byte AcceptScriptMsg__21CScriptCameraWaypointF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__6CActorFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__21CScriptCameraWaypointCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__21CScriptCameraWaypointCFRC13CStateManager
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
	.4byte DoUserAnimEvent__6CActorFR13CStateManagerRC13CInt32POINode14EUserEventType
	.4byte 0

.section .sdata
.balign 8

.global lbl_805A7210
lbl_805A7210:
	# ROM: 0x3F4BB0
	.4byte 0
	.4byte 0


.section .text, "ax"

.global Accept__21CScriptCameraWaypointFR8IVisitor
Accept__21CScriptCameraWaypointFR8IVisitor:
/* 800B51C8 000B2128  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B51CC 000B212C  7C 08 02 A6 */	mflr r0
/* 800B51D0 000B2130  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B51D4 000B2134  7C 60 1B 78 */	mr r0, r3
/* 800B51D8 000B2138  7C 83 23 78 */	mr r3, r4
/* 800B51DC 000B213C  81 84 00 00 */	lwz r12, 0(r4)
/* 800B51E0 000B2140  7C 04 03 78 */	mr r4, r0
/* 800B51E4 000B2144  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 800B51E8 000B2148  7D 89 03 A6 */	mtctr r12
/* 800B51EC 000B214C  4E 80 04 21 */	bctrl
/* 800B51F0 000B2150  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B51F4 000B2154  7C 08 03 A6 */	mtlr r0
/* 800B51F8 000B2158  38 21 00 10 */	addi r1, r1, 0x10
/* 800B51FC 000B215C  4E 80 00 20 */	blr

.global Render__21CScriptCameraWaypointCFRC13CStateManager
Render__21CScriptCameraWaypointCFRC13CStateManager:
/* 800B5200 000B2160  4E 80 00 20 */	blr

.global AddToRenderer__21CScriptCameraWaypointCFRC14CFrustumPlanesRC13CStateManager
AddToRenderer__21CScriptCameraWaypointCFRC14CFrustumPlanesRC13CStateManager:
/* 800B5204 000B2164  4E 80 00 20 */	blr

.global GetRandomNextWaypointId__21CScriptCameraWaypointCFRC13CStateManager
GetRandomNextWaypointId__21CScriptCameraWaypointCFRC13CStateManager:
/* 800B5208 000B2168  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800B520C 000B216C  7C 08 02 A6 */	mflr r0
/* 800B5210 000B2170  90 01 00 64 */	stw r0, 0x64(r1)
/* 800B5214 000B2174  38 00 00 00 */	li r0, 0
/* 800B5218 000B2178  BF 61 00 4C */	stmw r27, 0x4c(r1)
/* 800B521C 000B217C  7C 9D 23 78 */	mr r29, r4
/* 800B5220 000B2180  7C 7C 1B 78 */	mr r28, r3
/* 800B5224 000B2184  7C BE 2B 78 */	mr r30, r5
/* 800B5228 000B2188  90 01 00 34 */	stw r0, 0x34(r1)
/* 800B522C 000B218C  90 01 00 38 */	stw r0, 0x38(r1)
/* 800B5230 000B2190  90 01 00 3C */	stw r0, 0x3c(r1)
/* 800B5234 000B2194  83 E4 00 2C */	lwz r31, 0x2c(r4)
/* 800B5238 000B2198  48 00 00 A4 */	b lbl_800B52DC
lbl_800B523C:
/* 800B523C 000B219C  80 1F 00 00 */	lwz r0, 0(r31)
/* 800B5240 000B21A0  2C 00 00 01 */	cmpwi r0, 1
/* 800B5244 000B21A4  40 82 00 94 */	bne lbl_800B52D8
/* 800B5248 000B21A8  80 1F 00 04 */	lwz r0, 4(r31)
/* 800B524C 000B21AC  2C 00 00 08 */	cmpwi r0, 8
/* 800B5250 000B21B0  40 82 00 88 */	bne lbl_800B52D8
/* 800B5254 000B21B4  80 1F 00 08 */	lwz r0, 8(r31)
/* 800B5258 000B21B8  7F C4 F3 78 */	mr r4, r30
/* 800B525C 000B21BC  38 61 00 08 */	addi r3, r1, 8
/* 800B5260 000B21C0  38 A1 00 2C */	addi r5, r1, 0x2c
/* 800B5264 000B21C4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 800B5268 000B21C8  4B F9 2C B5 */	bl GetIdForScript__13CStateManagerCF9TEditorId
/* 800B526C 000B21CC  A3 61 00 08 */	lhz r27, 8(r1)
/* 800B5270 000B21D0  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 800B5274 000B21D4  7C 1B 00 40 */	cmplw r27, r0
/* 800B5278 000B21D8  41 82 00 60 */	beq lbl_800B52D8
/* 800B527C 000B21DC  80 81 00 34 */	lwz r4, 0x34(r1)
/* 800B5280 000B21E0  38 61 00 30 */	addi r3, r1, 0x30
/* 800B5284 000B21E4  38 84 00 01 */	addi r4, r4, 1
/* 800B5288 000B21E8  4B F5 71 81 */	bl "reserve__Q24rstl45vector<9TUniqueId,Q24rstl17rmemory_allocator>Fi"
/* 800B528C 000B21EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800B5290 000B21F0  80 A1 00 38 */	lwz r5, 0x38(r1)
/* 800B5294 000B21F4  7C 00 28 00 */	cmpw r0, r5
/* 800B5298 000B21F8  41 80 00 1C */	blt lbl_800B52B4
/* 800B529C 000B21FC  2C 05 00 00 */	cmpwi r5, 0
/* 800B52A0 000B2200  38 61 00 30 */	addi r3, r1, 0x30
/* 800B52A4 000B2204  38 80 00 04 */	li r4, 4
/* 800B52A8 000B2208  41 82 00 08 */	beq lbl_800B52B0
/* 800B52AC 000B220C  54 A4 08 3C */	slwi r4, r5, 1
lbl_800B52B0:
/* 800B52B0 000B2210  4B F5 71 59 */	bl "reserve__Q24rstl45vector<9TUniqueId,Q24rstl17rmemory_allocator>Fi"
lbl_800B52B4:
/* 800B52B4 000B2214  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800B52B8 000B2218  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 800B52BC 000B221C  54 00 08 3C */	slwi r0, r0, 1
/* 800B52C0 000B2220  7C 63 02 15 */	add. r3, r3, r0
/* 800B52C4 000B2224  41 82 00 08 */	beq lbl_800B52CC
/* 800B52C8 000B2228  B3 63 00 00 */	sth r27, 0(r3)
lbl_800B52CC:
/* 800B52CC 000B222C  80 61 00 34 */	lwz r3, 0x34(r1)
/* 800B52D0 000B2230  38 03 00 01 */	addi r0, r3, 1
/* 800B52D4 000B2234  90 01 00 34 */	stw r0, 0x34(r1)
lbl_800B52D8:
/* 800B52D8 000B2238  3B FF 00 0C */	addi r31, r31, 0xc
lbl_800B52DC:
/* 800B52DC 000B223C  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 800B52E0 000B2240  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 800B52E4 000B2244  1C 00 00 0C */	mulli r0, r0, 0xc
/* 800B52E8 000B2248  7C 03 02 14 */	add r0, r3, r0
/* 800B52EC 000B224C  7C 1F 00 40 */	cmplw r31, r0
/* 800B52F0 000B2250  40 82 FF 4C */	bne lbl_800B523C
/* 800B52F4 000B2254  80 81 00 34 */	lwz r4, 0x34(r1)
/* 800B52F8 000B2258  2C 04 00 00 */	cmpwi r4, 0
/* 800B52FC 000B225C  40 82 00 50 */	bne lbl_800B534C
/* 800B5300 000B2260  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 800B5304 000B2264  B0 1C 00 00 */	sth r0, 0(r28)
/* 800B5308 000B2268  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800B530C 000B226C  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 800B5310 000B2270  54 00 08 3C */	slwi r0, r0, 1
/* 800B5314 000B2274  7C 03 02 14 */	add r0, r3, r0
/* 800B5318 000B2278  90 61 00 20 */	stw r3, 0x20(r1)
/* 800B531C 000B227C  7C 64 1B 78 */	mr r4, r3
/* 800B5320 000B2280  90 01 00 28 */	stw r0, 0x28(r1)
/* 800B5324 000B2284  90 01 00 24 */	stw r0, 0x24(r1)
/* 800B5328 000B2288  90 61 00 1C */	stw r3, 0x1c(r1)
/* 800B532C 000B228C  48 00 00 08 */	b lbl_800B5334
lbl_800B5330:
/* 800B5330 000B2290  38 84 00 02 */	addi r4, r4, 2
lbl_800B5334:
/* 800B5334 000B2294  7C 04 00 40 */	cmplw r4, r0
/* 800B5338 000B2298  40 82 FF F8 */	bne lbl_800B5330
/* 800B533C 000B229C  28 03 00 00 */	cmplwi r3, 0
/* 800B5340 000B22A0  41 82 00 6C */	beq lbl_800B53AC
/* 800B5344 000B22A4  48 26 05 ED */	bl Free__7CMemoryFPCv
/* 800B5348 000B22A8  48 00 00 64 */	b lbl_800B53AC
lbl_800B534C:
/* 800B534C 000B22AC  80 7E 09 00 */	lwz r3, 0x900(r30)
/* 800B5350 000B22B0  38 A4 FF FF */	addi r5, r4, -1
/* 800B5354 000B22B4  38 80 00 00 */	li r4, 0
/* 800B5358 000B22B8  48 25 D2 3D */	bl Range__9CRandom16Fii
/* 800B535C 000B22BC  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 800B5360 000B22C0  54 60 08 3C */	slwi r0, r3, 1
/* 800B5364 000B22C4  7C 04 02 2E */	lhzx r0, r4, r0
/* 800B5368 000B22C8  B0 1C 00 00 */	sth r0, 0(r28)
/* 800B536C 000B22CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800B5370 000B22D0  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 800B5374 000B22D4  54 00 08 3C */	slwi r0, r0, 1
/* 800B5378 000B22D8  7C 03 02 14 */	add r0, r3, r0
/* 800B537C 000B22DC  90 61 00 10 */	stw r3, 0x10(r1)
/* 800B5380 000B22E0  7C 64 1B 78 */	mr r4, r3
/* 800B5384 000B22E4  90 01 00 18 */	stw r0, 0x18(r1)
/* 800B5388 000B22E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B538C 000B22EC  90 61 00 0C */	stw r3, 0xc(r1)
/* 800B5390 000B22F0  48 00 00 08 */	b lbl_800B5398
lbl_800B5394:
/* 800B5394 000B22F4  38 84 00 02 */	addi r4, r4, 2
lbl_800B5398:
/* 800B5398 000B22F8  7C 04 00 40 */	cmplw r4, r0
/* 800B539C 000B22FC  40 82 FF F8 */	bne lbl_800B5394
/* 800B53A0 000B2300  28 03 00 00 */	cmplwi r3, 0
/* 800B53A4 000B2304  41 82 00 08 */	beq lbl_800B53AC
/* 800B53A8 000B2308  48 26 05 89 */	bl Free__7CMemoryFPCv
lbl_800B53AC:
/* 800B53AC 000B230C  BB 61 00 4C */	lmw r27, 0x4c(r1)
/* 800B53B0 000B2310  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800B53B4 000B2314  7C 08 03 A6 */	mtlr r0
/* 800B53B8 000B2318  38 21 00 60 */	addi r1, r1, 0x60
/* 800B53BC 000B231C  4E 80 00 20 */	blr

.global AcceptScriptMsg__21CScriptCameraWaypointF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__21CScriptCameraWaypointF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 800B53C0 000B2320  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800B53C4 000B2324  7C 08 02 A6 */	mflr r0
/* 800B53C8 000B2328  90 01 00 24 */	stw r0, 0x24(r1)
/* 800B53CC 000B232C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800B53D0 000B2330  7C DF 33 78 */	mr r31, r6
/* 800B53D4 000B2334  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800B53D8 000B2338  7C 9E 23 78 */	mr r30, r4
/* 800B53DC 000B233C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800B53E0 000B2340  7C 7D 1B 78 */	mr r29, r3
/* 800B53E4 000B2344  A0 05 00 00 */	lhz r0, 0(r5)
/* 800B53E8 000B2348  38 A1 00 08 */	addi r5, r1, 8
/* 800B53EC 000B234C  B0 01 00 08 */	sth r0, 8(r1)
/* 800B53F0 000B2350  4B F9 E2 25 */	bl AcceptScriptMsg__6CActorF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 800B53F4 000B2354  88 1D 00 30 */	lbz r0, 0x30(r29)
/* 800B53F8 000B2358  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 800B53FC 000B235C  41 82 00 24 */	beq lbl_800B5420
/* 800B5400 000B2360  2C 1E 00 02 */	cmpwi r30, 2
/* 800B5404 000B2364  41 82 00 08 */	beq lbl_800B540C
/* 800B5408 000B2368  48 00 00 18 */	b lbl_800B5420
lbl_800B540C:
/* 800B540C 000B236C  7F A3 EB 78 */	mr r3, r29
/* 800B5410 000B2370  7F E5 FB 78 */	mr r5, r31
/* 800B5414 000B2374  38 80 00 01 */	li r4, 1
/* 800B5418 000B2378  38 C0 FF FF */	li r6, -1
/* 800B541C 000B237C  4B F9 BC A5 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
lbl_800B5420:
/* 800B5420 000B2380  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800B5424 000B2384  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800B5428 000B2388  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800B542C 000B238C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800B5430 000B2390  7C 08 03 A6 */	mtlr r0
/* 800B5434 000B2394  38 21 00 20 */	addi r1, r1, 0x20
/* 800B5438 000B2398  4E 80 00 20 */	blr

.global __dt__21CScriptCameraWaypointFv
__dt__21CScriptCameraWaypointFv:
/* 800B543C 000B239C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B5440 000B23A0  7C 08 02 A6 */	mflr r0
/* 800B5444 000B23A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B5448 000B23A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B544C 000B23AC  7C 9F 23 78 */	mr r31, r4
/* 800B5450 000B23B0  93 C1 00 08 */	stw r30, 8(r1)
/* 800B5454 000B23B4  7C 7E 1B 79 */	or. r30, r3, r3
/* 800B5458 000B23B8  41 82 00 28 */	beq lbl_800B5480
/* 800B545C 000B23BC  3C A0 80 3E */	lis r5, lbl_803DF348@ha
/* 800B5460 000B23C0  38 80 00 00 */	li r4, 0
/* 800B5464 000B23C4  38 05 F3 48 */	addi r0, r5, lbl_803DF348@l
/* 800B5468 000B23C8  90 1E 00 00 */	stw r0, 0(r30)
/* 800B546C 000B23CC  4B FA 02 85 */	bl __dt__6CActorFv
/* 800B5470 000B23D0  7F E0 07 35 */	extsh. r0, r31
/* 800B5474 000B23D4  40 81 00 0C */	ble lbl_800B5480
/* 800B5478 000B23D8  7F C3 F3 78 */	mr r3, r30
/* 800B547C 000B23DC  48 26 04 B5 */	bl Free__7CMemoryFPCv
lbl_800B5480:
/* 800B5480 000B23E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B5484 000B23E4  7F C3 F3 78 */	mr r3, r30
/* 800B5488 000B23E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B548C 000B23EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 800B5490 000B23F0  7C 08 03 A6 */	mtlr r0
/* 800B5494 000B23F4  38 21 00 10 */	addi r1, r1, 0x10
/* 800B5498 000B23F8  4E 80 00 20 */	blr

.global "__ct__21CScriptCameraWaypointF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fbfUi"
"__ct__21CScriptCameraWaypointF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fbfUi":
/* 800B549C 000B23FC  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 800B54A0 000B2400  7C 08 02 A6 */	mflr r0
/* 800B54A4 000B2404  90 01 01 04 */	stw r0, 0x104(r1)
/* 800B54A8 000B2408  DB E1 00 F8 */	stfd f31, 0xf8(r1)
/* 800B54AC 000B240C  FF E0 08 90 */	fmr f31, f1
/* 800B54B0 000B2410  BF 21 00 DC */	stmw r25, 0xdc(r1)
/* 800B54B4 000B2414  7C 7F 1B 78 */	mr r31, r3
/* 800B54B8 000B2418  7C 99 23 78 */	mr r25, r4
/* 800B54BC 000B241C  7C BA 2B 78 */	mr r26, r5
/* 800B54C0 000B2420  7C DB 33 78 */	mr r27, r6
/* 800B54C4 000B2424  7C FC 3B 78 */	mr r28, r7
/* 800B54C8 000B2428  7D 1D 43 78 */	mr r29, r8
/* 800B54CC 000B242C  7D 3E 4B 78 */	mr r30, r9
/* 800B54D0 000B2430  38 61 00 88 */	addi r3, r1, 0x88
/* 800B54D4 000B2434  4B F8 52 D1 */	bl CModelDataNull__10CModelDataFv
/* 800B54D8 000B2438  38 61 00 20 */	addi r3, r1, 0x20
/* 800B54DC 000B243C  4B F6 59 5D */	bl None__16CActorParametersFv
/* 800B54E0 000B2440  A0 8D A3 8C */	lhz r4, kInvalidUniqueId@sda21(r13)
/* 800B54E4 000B2444  38 00 00 00 */	li r0, 0
/* 800B54E8 000B2448  80 AD 86 50 */	lwz r5, lbl_805A7210@sda21(r13)
/* 800B54EC 000B244C  38 60 00 00 */	li r3, 0
/* 800B54F0 000B2450  B0 81 00 10 */	sth r4, 0x10(r1)
/* 800B54F4 000B2454  38 80 00 01 */	li r4, 1
/* 800B54F8 000B2458  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800B54FC 000B245C  90 01 00 18 */	stw r0, 0x18(r1)
/* 800B5500 000B2460  48 2D 49 F5 */	bl __shl2i
/* 800B5504 000B2464  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 800B5508 000B2468  39 61 00 20 */	addi r11, r1, 0x20
/* 800B550C 000B246C  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 800B5510 000B2470  38 01 00 10 */	addi r0, r1, 0x10
/* 800B5514 000B2474  7C A3 1B 78 */	or r3, r5, r3
/* 800B5518 000B2478  A1 39 00 00 */	lhz r9, 0(r25)
/* 800B551C 000B247C  7C C4 23 78 */	or r4, r6, r4
/* 800B5520 000B2480  90 61 00 18 */	stw r3, 0x18(r1)
/* 800B5524 000B2484  7F E3 FB 78 */	mr r3, r31
/* 800B5528 000B2488  7F A5 EB 78 */	mr r5, r29
/* 800B552C 000B248C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 800B5530 000B2490  7F 46 D3 78 */	mr r6, r26
/* 800B5534 000B2494  7F 67 DB 78 */	mr r7, r27
/* 800B5538 000B2498  7F 88 E3 78 */	mr r8, r28
/* 800B553C 000B249C  B1 21 00 14 */	sth r9, 0x14(r1)
/* 800B5540 000B24A0  38 81 00 14 */	addi r4, r1, 0x14
/* 800B5544 000B24A4  39 21 00 88 */	addi r9, r1, 0x88
/* 800B5548 000B24A8  39 41 00 18 */	addi r10, r1, 0x18
/* 800B554C 000B24AC  91 61 00 08 */	stw r11, 8(r1)
/* 800B5550 000B24B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 800B5554 000B24B4  4B FA 02 CD */	bl "__ct__6CActorF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC13CMaterialListRC16CActorParameters9TUniqueId"
/* 800B5558 000B24B8  38 61 00 20 */	addi r3, r1, 0x20
/* 800B555C 000B24BC  38 80 FF FF */	li r4, -1
/* 800B5560 000B24C0  48 05 10 A9 */	bl __dt__16CActorParametersFv
/* 800B5564 000B24C4  38 61 00 88 */	addi r3, r1, 0x88
/* 800B5568 000B24C8  38 80 FF FF */	li r4, -1
/* 800B556C 000B24CC  48 06 14 E1 */	bl __dt__10CModelDataFv
/* 800B5570 000B24D0  3C 80 80 3E */	lis r4, lbl_803DF348@ha
/* 800B5574 000B24D4  7F E3 FB 78 */	mr r3, r31
/* 800B5578 000B24D8  38 04 F3 48 */	addi r0, r4, lbl_803DF348@l
/* 800B557C 000B24DC  90 1F 00 00 */	stw r0, 0(r31)
/* 800B5580 000B24E0  D3 FF 00 E8 */	stfs f31, 0xe8(r31)
/* 800B5584 000B24E4  93 DF 00 EC */	stw r30, 0xec(r31)
/* 800B5588 000B24E8  CB E1 00 F8 */	lfd f31, 0xf8(r1)
/* 800B558C 000B24EC  BB 21 00 DC */	lmw r25, 0xdc(r1)
/* 800B5590 000B24F0  80 01 01 04 */	lwz r0, 0x104(r1)
/* 800B5594 000B24F4  7C 08 03 A6 */	mtlr r0
/* 800B5598 000B24F8  38 21 01 00 */	addi r1, r1, 0x100
/* 800B559C 000B24FC  4E 80 00 20 */	blr
