.include "macros.inc"

.section .data

.global lbl_803E6398
lbl_803E6398:
	# ROM: 0x3E3398
	.4byte 0
	.4byte 0
	.4byte __dt__18CScriptAiJumpPointFv
	.4byte Accept__18CScriptAiJumpPointFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__18CScriptAiJumpPointFfR13CStateManager
	.4byte AcceptScriptMsg__18CScriptAiJumpPointF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__6CActorFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__18CScriptAiJumpPointCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__18CScriptAiJumpPointCFRC13CStateManager
	.4byte CanRenderUnsorted__6CActorCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__6CActorFR13CStateManager
	.4byte GetDamageVulnerability__6CActorCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__18CScriptAiJumpPointCFv
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

.global lbl_805A7E28
lbl_805A7E28:
	# ROM: 0x3F57C8
	.4byte 0
	.4byte 0

.section .text, "ax"

.global __dt__18CScriptAiJumpPointFv
__dt__18CScriptAiJumpPointFv:
/* 801EF1EC 001EC14C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801EF1F0 001EC150  7C 08 02 A6 */	mflr r0
/* 801EF1F4 001EC154  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EF1F8 001EC158  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801EF1FC 001EC15C  7C 9F 23 78 */	mr r31, r4
/* 801EF200 001EC160  93 C1 00 08 */	stw r30, 8(r1)
/* 801EF204 001EC164  7C 7E 1B 79 */	or. r30, r3, r3
/* 801EF208 001EC168  41 82 00 3C */	beq lbl_801EF244
/* 801EF20C 001EC16C  3C 60 80 3E */	lis r3, lbl_803E6398@ha
/* 801EF210 001EC170  34 1E 00 EC */	addic. r0, r30, 0xec
/* 801EF214 001EC174  38 03 63 98 */	addi r0, r3, lbl_803E6398@l
/* 801EF218 001EC178  90 1E 00 00 */	stw r0, 0(r30)
/* 801EF21C 001EC17C  41 82 00 0C */	beq lbl_801EF228
/* 801EF220 001EC180  38 00 00 00 */	li r0, 0
/* 801EF224 001EC184  98 1E 01 04 */	stb r0, 0x104(r30)
lbl_801EF228:
/* 801EF228 001EC188  7F C3 F3 78 */	mr r3, r30
/* 801EF22C 001EC18C  38 80 00 00 */	li r4, 0
/* 801EF230 001EC190  4B E6 64 C1 */	bl __dt__6CActorFv
/* 801EF234 001EC194  7F E0 07 35 */	extsh. r0, r31
/* 801EF238 001EC198  40 81 00 0C */	ble lbl_801EF244
/* 801EF23C 001EC19C  7F C3 F3 78 */	mr r3, r30
/* 801EF240 001EC1A0  48 12 66 F1 */	bl Free__7CMemoryFPCv
lbl_801EF244:
/* 801EF244 001EC1A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801EF248 001EC1A8  7F C3 F3 78 */	mr r3, r30
/* 801EF24C 001EC1AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801EF250 001EC1B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 801EF254 001EC1B4  7C 08 03 A6 */	mtlr r0
/* 801EF258 001EC1B8  38 21 00 10 */	addi r1, r1, 0x10
/* 801EF25C 001EC1BC  4E 80 00 20 */	blr

.global GetTouchBounds__18CScriptAiJumpPointCFv
GetTouchBounds__18CScriptAiJumpPointCFv:
/* 801EF260 001EC1C0  88 04 01 04 */	lbz r0, 0x104(r4)
/* 801EF264 001EC1C4  98 03 00 18 */	stb r0, 0x18(r3)
/* 801EF268 001EC1C8  88 04 01 04 */	lbz r0, 0x104(r4)
/* 801EF26C 001EC1CC  28 00 00 00 */	cmplwi r0, 0
/* 801EF270 001EC1D0  4D 82 00 20 */	beqlr
/* 801EF274 001EC1D4  28 03 00 00 */	cmplwi r3, 0
/* 801EF278 001EC1D8  4D 82 00 20 */	beqlr
/* 801EF27C 001EC1DC  C0 04 00 EC */	lfs f0, 0xec(r4)
/* 801EF280 001EC1E0  D0 03 00 00 */	stfs f0, 0(r3)
/* 801EF284 001EC1E4  C0 04 00 F0 */	lfs f0, 0xf0(r4)
/* 801EF288 001EC1E8  D0 03 00 04 */	stfs f0, 4(r3)
/* 801EF28C 001EC1EC  C0 04 00 F4 */	lfs f0, 0xf4(r4)
/* 801EF290 001EC1F0  D0 03 00 08 */	stfs f0, 8(r3)
/* 801EF294 001EC1F4  C0 04 00 F8 */	lfs f0, 0xf8(r4)
/* 801EF298 001EC1F8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 801EF29C 001EC1FC  C0 04 00 FC */	lfs f0, 0xfc(r4)
/* 801EF2A0 001EC200  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 801EF2A4 001EC204  C0 04 01 00 */	lfs f0, 0x100(r4)
/* 801EF2A8 001EC208  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 801EF2AC 001EC20C  4E 80 00 20 */	blr

.global Render__18CScriptAiJumpPointCFRC13CStateManager
Render__18CScriptAiJumpPointCFRC13CStateManager:
/* 801EF2B0 001EC210  4E 80 00 20 */	blr

.global AddToRenderer__18CScriptAiJumpPointCFRC14CFrustumPlanesRC13CStateManager
AddToRenderer__18CScriptAiJumpPointCFRC14CFrustumPlanesRC13CStateManager:
/* 801EF2B4 001EC214  4E 80 00 20 */	blr

.global Think__18CScriptAiJumpPointFfR13CStateManager
Think__18CScriptAiJumpPointFfR13CStateManager:
/* 801EF2B8 001EC218  C0 43 01 10 */	lfs f2, 0x110(r3)
/* 801EF2BC 001EC21C  C0 02 AE 40 */	lfs f0, lbl_805ACB60@sda21(r2)
/* 801EF2C0 001EC220  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801EF2C4 001EC224  4C 81 00 20 */	blelr
/* 801EF2C8 001EC228  EC 02 08 28 */	fsubs f0, f2, f1
/* 801EF2CC 001EC22C  D0 03 01 10 */	stfs f0, 0x110(r3)
/* 801EF2D0 001EC230  4E 80 00 20 */	blr

.global GetInUse__18CScriptAiJumpPointCF9TUniqueId
GetInUse__18CScriptAiJumpPointCF9TUniqueId:
/* 801EF2D4 001EC234  88 03 01 08 */	lbz r0, 0x108(r3)
/* 801EF2D8 001EC238  38 A0 00 00 */	li r5, 0
/* 801EF2DC 001EC23C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801EF2E0 001EC240  40 82 00 38 */	bne lbl_801EF318
/* 801EF2E4 001EC244  C0 23 01 10 */	lfs f1, 0x110(r3)
/* 801EF2E8 001EC248  C0 02 AE 40 */	lfs f0, lbl_805ACB60@sda21(r2)
/* 801EF2EC 001EC24C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801EF2F0 001EC250  41 81 00 28 */	bgt lbl_801EF318
/* 801EF2F4 001EC254  A0 C3 01 0A */	lhz r6, 0x10a(r3)
/* 801EF2F8 001EC258  A0 6D A3 8C */	lhz r3, kInvalidUniqueId@sda21(r13)
/* 801EF2FC 001EC25C  7C 06 18 40 */	cmplw r6, r3
/* 801EF300 001EC260  41 82 00 1C */	beq lbl_801EF31C
/* 801EF304 001EC264  A0 04 00 00 */	lhz r0, 0(r4)
/* 801EF308 001EC268  7C 00 18 40 */	cmplw r0, r3
/* 801EF30C 001EC26C  41 82 00 10 */	beq lbl_801EF31C
/* 801EF310 001EC270  7C 00 30 40 */	cmplw r0, r6
/* 801EF314 001EC274  41 82 00 08 */	beq lbl_801EF31C
lbl_801EF318:
/* 801EF318 001EC278  38 A0 00 01 */	li r5, 1
lbl_801EF31C:
/* 801EF31C 001EC27C  7C A3 2B 78 */	mr r3, r5
/* 801EF320 001EC280  4E 80 00 20 */	blr

.global AcceptScriptMsg__18CScriptAiJumpPointF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__18CScriptAiJumpPointF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 801EF324 001EC284  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801EF328 001EC288  7C 08 02 A6 */	mflr r0
/* 801EF32C 001EC28C  90 01 00 44 */	stw r0, 0x44(r1)
/* 801EF330 001EC290  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801EF334 001EC294  7C 7F 1B 78 */	mr r31, r3
/* 801EF338 001EC298  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801EF33C 001EC29C  7C 9E 23 78 */	mr r30, r4
/* 801EF340 001EC2A0  93 A1 00 34 */	stw r29, 0x34(r1)
/* 801EF344 001EC2A4  7C DD 33 78 */	mr r29, r6
/* 801EF348 001EC2A8  A0 05 00 00 */	lhz r0, 0(r5)
/* 801EF34C 001EC2AC  38 A1 00 14 */	addi r5, r1, 0x14
/* 801EF350 001EC2B0  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801EF354 001EC2B4  4B E6 42 C1 */	bl AcceptScriptMsg__6CActorF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 801EF358 001EC2B8  2C 1E 00 23 */	cmpwi r30, 0x23
/* 801EF35C 001EC2BC  41 82 00 08 */	beq lbl_801EF364
/* 801EF360 001EC2C0  48 00 00 A8 */	b lbl_801EF408
lbl_801EF364:
/* 801EF364 001EC2C4  83 DF 00 2C */	lwz r30, 0x2c(r31)
/* 801EF368 001EC2C8  48 00 00 88 */	b lbl_801EF3F0
lbl_801EF36C:
/* 801EF36C 001EC2CC  80 1E 00 00 */	lwz r0, 0(r30)
/* 801EF370 001EC2D0  2C 00 00 01 */	cmpwi r0, 1
/* 801EF374 001EC2D4  40 82 00 78 */	bne lbl_801EF3EC
/* 801EF378 001EC2D8  80 1E 00 04 */	lwz r0, 4(r30)
/* 801EF37C 001EC2DC  2C 00 00 08 */	cmpwi r0, 8
/* 801EF380 001EC2E0  40 82 00 6C */	bne lbl_801EF3EC
/* 801EF384 001EC2E4  80 1E 00 08 */	lwz r0, 8(r30)
/* 801EF388 001EC2E8  7F A4 EB 78 */	mr r4, r29
/* 801EF38C 001EC2EC  38 61 00 10 */	addi r3, r1, 0x10
/* 801EF390 001EC2F0  38 A1 00 1C */	addi r5, r1, 0x1c
/* 801EF394 001EC2F4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801EF398 001EC2F8  4B E5 8B 85 */	bl GetIdForScript__13CStateManagerCF9TEditorId
/* 801EF39C 001EC2FC  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 801EF3A0 001EC300  7F A3 EB 78 */	mr r3, r29
/* 801EF3A4 001EC304  38 81 00 0C */	addi r4, r1, 0xc
/* 801EF3A8 001EC308  B0 01 00 18 */	sth r0, 0x18(r1)
/* 801EF3AC 001EC30C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801EF3B0 001EC310  4B E5 D1 F5 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801EF3B4 001EC314  7C 64 1B 78 */	mr r4, r3
/* 801EF3B8 001EC318  38 61 00 20 */	addi r3, r1, 0x20
/* 801EF3BC 001EC31C  4B EB 71 91 */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 801EF3C0 001EC320  80 83 00 04 */	lwz r4, 4(r3)
/* 801EF3C4 001EC324  28 04 00 00 */	cmplwi r4, 0
/* 801EF3C8 001EC328  41 82 00 24 */	beq lbl_801EF3EC
/* 801EF3CC 001EC32C  A0 01 00 18 */	lhz r0, 0x18(r1)
/* 801EF3D0 001EC330  7F A5 EB 78 */	mr r5, r29
/* 801EF3D4 001EC334  38 61 00 08 */	addi r3, r1, 8
/* 801EF3D8 001EC338  B0 1F 01 0C */	sth r0, 0x10c(r31)
/* 801EF3DC 001EC33C  4B E8 7D 59 */	bl NextWaypoint__15CScriptWaypointCFR13CStateManager
/* 801EF3E0 001EC340  A0 01 00 08 */	lhz r0, 8(r1)
/* 801EF3E4 001EC344  B0 1F 01 0E */	sth r0, 0x10e(r31)
/* 801EF3E8 001EC348  48 00 00 20 */	b lbl_801EF408
lbl_801EF3EC:
/* 801EF3EC 001EC34C  3B DE 00 0C */	addi r30, r30, 0xc
lbl_801EF3F0:
/* 801EF3F0 001EC350  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 801EF3F4 001EC354  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 801EF3F8 001EC358  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801EF3FC 001EC35C  7C 03 02 14 */	add r0, r3, r0
/* 801EF400 001EC360  7C 1E 00 40 */	cmplw r30, r0
/* 801EF404 001EC364  40 82 FF 68 */	bne lbl_801EF36C
lbl_801EF408:
/* 801EF408 001EC368  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801EF40C 001EC36C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801EF410 001EC370  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801EF414 001EC374  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 801EF418 001EC378  7C 08 03 A6 */	mtlr r0
/* 801EF41C 001EC37C  38 21 00 40 */	addi r1, r1, 0x40
/* 801EF420 001EC380  4E 80 00 20 */	blr

.global Accept__18CScriptAiJumpPointFR8IVisitor
Accept__18CScriptAiJumpPointFR8IVisitor:
/* 801EF424 001EC384  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801EF428 001EC388  7C 08 02 A6 */	mflr r0
/* 801EF42C 001EC38C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EF430 001EC390  7C 60 1B 78 */	mr r0, r3
/* 801EF434 001EC394  7C 83 23 78 */	mr r3, r4
/* 801EF438 001EC398  81 84 00 00 */	lwz r12, 0(r4)
/* 801EF43C 001EC39C  7C 04 03 78 */	mr r4, r0
/* 801EF440 001EC3A0  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 801EF444 001EC3A4  7D 89 03 A6 */	mtctr r12
/* 801EF448 001EC3A8  4E 80 04 21 */	bctrl
/* 801EF44C 001EC3AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801EF450 001EC3B0  7C 08 03 A6 */	mtlr r0
/* 801EF454 001EC3B4  38 21 00 10 */	addi r1, r1, 0x10
/* 801EF458 001EC3B8  4E 80 00 20 */	blr

.global "__ct__18CScriptAiJumpPointF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fbf"
"__ct__18CScriptAiJumpPointF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fbf":
/* 801EF45C 001EC3BC  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 801EF460 001EC3C0  7C 08 02 A6 */	mflr r0
/* 801EF464 001EC3C4  90 01 01 34 */	stw r0, 0x134(r1)
/* 801EF468 001EC3C8  DB E1 01 20 */	stfd f31, 0x120(r1)
/* 801EF46C 001EC3CC  F3 E1 01 28 */	psq_st f31, 296(r1), 0, qr0
/* 801EF470 001EC3D0  BF 41 01 08 */	stmw r26, 0x108(r1)
/* 801EF474 001EC3D4  FF E0 08 90 */	fmr f31, f1
/* 801EF478 001EC3D8  7C 7F 1B 78 */	mr r31, r3
/* 801EF47C 001EC3DC  7C 9A 23 78 */	mr r26, r4
/* 801EF480 001EC3E0  7C BB 2B 78 */	mr r27, r5
/* 801EF484 001EC3E4  7C DC 33 78 */	mr r28, r6
/* 801EF488 001EC3E8  7C FD 3B 78 */	mr r29, r7
/* 801EF48C 001EC3EC  7D 1E 43 78 */	mr r30, r8
/* 801EF490 001EC3F0  38 61 00 B8 */	addi r3, r1, 0xb8
/* 801EF494 001EC3F4  4B E4 B3 11 */	bl CModelDataNull__10CModelDataFv
/* 801EF498 001EC3F8  38 61 00 50 */	addi r3, r1, 0x50
/* 801EF49C 001EC3FC  4B E2 B9 9D */	bl None__16CActorParametersFv
/* 801EF4A0 001EC400  A0 8D A3 8C */	lhz r4, kInvalidUniqueId@sda21(r13)
/* 801EF4A4 001EC404  38 00 00 00 */	li r0, 0
/* 801EF4A8 001EC408  80 AD 92 68 */	lwz r5, lbl_805A7E28@sda21(r13)
/* 801EF4AC 001EC40C  38 60 00 00 */	li r3, 0
/* 801EF4B0 001EC410  B0 81 00 10 */	sth r4, 0x10(r1)
/* 801EF4B4 001EC414  38 80 00 01 */	li r4, 1
/* 801EF4B8 001EC418  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801EF4BC 001EC41C  90 01 00 18 */	stw r0, 0x18(r1)
/* 801EF4C0 001EC420  48 19 AA 35 */	bl __shl2i
/* 801EF4C4 001EC424  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 801EF4C8 001EC428  39 61 00 50 */	addi r11, r1, 0x50
/* 801EF4CC 001EC42C  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 801EF4D0 001EC430  38 01 00 10 */	addi r0, r1, 0x10
/* 801EF4D4 001EC434  7C A3 1B 78 */	or r3, r5, r3
/* 801EF4D8 001EC438  A1 3A 00 00 */	lhz r9, 0(r26)
/* 801EF4DC 001EC43C  7C C4 23 78 */	or r4, r6, r4
/* 801EF4E0 001EC440  90 61 00 18 */	stw r3, 0x18(r1)
/* 801EF4E4 001EC444  7F E3 FB 78 */	mr r3, r31
/* 801EF4E8 001EC448  7F C5 F3 78 */	mr r5, r30
/* 801EF4EC 001EC44C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 801EF4F0 001EC450  7F 66 DB 78 */	mr r6, r27
/* 801EF4F4 001EC454  7F 87 E3 78 */	mr r7, r28
/* 801EF4F8 001EC458  7F A8 EB 78 */	mr r8, r29
/* 801EF4FC 001EC45C  B1 21 00 14 */	sth r9, 0x14(r1)
/* 801EF500 001EC460  38 81 00 14 */	addi r4, r1, 0x14
/* 801EF504 001EC464  39 21 00 B8 */	addi r9, r1, 0xb8
/* 801EF508 001EC468  39 41 00 18 */	addi r10, r1, 0x18
/* 801EF50C 001EC46C  91 61 00 08 */	stw r11, 8(r1)
/* 801EF510 001EC470  90 01 00 0C */	stw r0, 0xc(r1)
/* 801EF514 001EC474  4B E6 63 0D */	bl "__ct__6CActorF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC13CMaterialListRC16CActorParameters9TUniqueId"
/* 801EF518 001EC478  38 61 00 50 */	addi r3, r1, 0x50
/* 801EF51C 001EC47C  38 80 FF FF */	li r4, -1
/* 801EF520 001EC480  4B F1 70 E9 */	bl __dt__16CActorParametersFv
/* 801EF524 001EC484  38 61 00 B8 */	addi r3, r1, 0xb8
/* 801EF528 001EC488  38 80 FF FF */	li r4, -1
/* 801EF52C 001EC48C  4B F2 75 21 */	bl __dt__10CModelDataFv
/* 801EF530 001EC490  3C 80 80 3E */	lis r4, lbl_803E6398@ha
/* 801EF534 001EC494  38 61 00 38 */	addi r3, r1, 0x38
/* 801EF538 001EC498  38 04 63 98 */	addi r0, r4, lbl_803E6398@l
/* 801EF53C 001EC49C  38 81 00 2C */	addi r4, r1, 0x2c
/* 801EF540 001EC4A0  90 1F 00 00 */	stw r0, 0(r31)
/* 801EF544 001EC4A4  38 A1 00 20 */	addi r5, r1, 0x20
/* 801EF548 001EC4A8  D3 FF 00 E8 */	stfs f31, 0xe8(r31)
/* 801EF54C 001EC4AC  C0 5D 00 2C */	lfs f2, 0x2c(r29)
/* 801EF550 001EC4B0  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 801EF554 001EC4B4  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 801EF558 001EC4B8  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 801EF55C 001EC4BC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801EF560 001EC4C0  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 801EF564 001EC4C4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801EF568 001EC4C8  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 801EF56C 001EC4CC  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 801EF570 001EC4D0  48 14 8F 99 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 801EF574 001EC4D4  38 00 00 01 */	li r0, 1
/* 801EF578 001EC4D8  34 7F 00 EC */	addic. r3, r31, 0xec
/* 801EF57C 001EC4DC  98 1F 01 04 */	stb r0, 0x104(r31)
/* 801EF580 001EC4E0  41 82 00 34 */	beq lbl_801EF5B4
/* 801EF584 001EC4E4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 801EF588 001EC4E8  D0 03 00 00 */	stfs f0, 0(r3)
/* 801EF58C 001EC4EC  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 801EF590 001EC4F0  D0 03 00 04 */	stfs f0, 4(r3)
/* 801EF594 001EC4F4  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 801EF598 001EC4F8  D0 03 00 08 */	stfs f0, 8(r3)
/* 801EF59C 001EC4FC  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 801EF5A0 001EC500  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 801EF5A4 001EC504  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 801EF5A8 001EC508  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 801EF5AC 001EC50C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 801EF5B0 001EC510  D0 03 00 14 */	stfs f0, 0x14(r3)
lbl_801EF5B4:
/* 801EF5B4 001EC514  88 1F 01 08 */	lbz r0, 0x108(r31)
/* 801EF5B8 001EC518  38 60 00 00 */	li r3, 0
/* 801EF5BC 001EC51C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801EF5C0 001EC520  C0 02 AE 40 */	lfs f0, lbl_805ACB60@sda21(r2)
/* 801EF5C4 001EC524  98 1F 01 08 */	stb r0, 0x108(r31)
/* 801EF5C8 001EC528  7F E3 FB 78 */	mr r3, r31
/* 801EF5CC 001EC52C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801EF5D0 001EC530  B0 1F 01 0A */	sth r0, 0x10a(r31)
/* 801EF5D4 001EC534  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801EF5D8 001EC538  B0 1F 01 0C */	sth r0, 0x10c(r31)
/* 801EF5DC 001EC53C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801EF5E0 001EC540  B0 1F 01 0E */	sth r0, 0x10e(r31)
/* 801EF5E4 001EC544  D0 1F 01 10 */	stfs f0, 0x110(r31)
/* 801EF5E8 001EC548  E3 E1 01 28 */	psq_l f31, 296(r1), 0, qr0
/* 801EF5EC 001EC54C  CB E1 01 20 */	lfd f31, 0x120(r1)
/* 801EF5F0 001EC550  BB 41 01 08 */	lmw r26, 0x108(r1)
/* 801EF5F4 001EC554  80 01 01 34 */	lwz r0, 0x134(r1)
/* 801EF5F8 001EC558  7C 08 03 A6 */	mtlr r0
/* 801EF5FC 001EC55C  38 21 01 30 */	addi r1, r1, 0x130
/* 801EF600 001EC560  4E 80 00 20 */	blr

.section .sdata2, "a"
.global lbl_805ACB60
lbl_805ACB60:
	# ROM: 0x3F9400
	.4byte 0
	.4byte 0

