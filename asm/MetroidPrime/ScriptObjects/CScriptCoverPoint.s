.include "macros.inc"

.section .data
.balign 8

.global __vt__17CScriptCoverPoint
__vt__17CScriptCoverPoint:
	# ROM: 0x3DDBF8
	.4byte 0
	.4byte 0
	.4byte __dt__17CScriptCoverPointFv
	.4byte Accept__17CScriptCoverPointFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__17CScriptCoverPointFfR13CStateManager
	.4byte AcceptScriptMsg__17CScriptCoverPointF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__6CActorFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__17CScriptCoverPointCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__17CScriptCoverPointCFRC13CStateManager
	.4byte CanRenderUnsorted__6CActorCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__6CActorFR13CStateManager
	.4byte GetDamageVulnerability__6CActorCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__17CScriptCoverPointCFv
	.4byte Touch__6CActorFR6CActorR13CStateManager
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

.global lbl_805A76A8
lbl_805A76A8:
	# ROM: 0x3F5048
	.4byte 0
	.4byte 0

.section .sdata2, "a"
.balign 8

.global lbl_805AB5B8
lbl_805AB5B8:
	# ROM: 0x3F7E58
	.float 0.0

.global lbl_805AB5BC
lbl_805AB5BC:
	# ROM: 0x3F7E5C
	.float 1.0

.global lbl_805AB5C0
lbl_805AB5C0:
	# ROM: 0x3F7E60
	.float 8.0

.global lbl_805AB5C4
lbl_805AB5C4:
	# ROM: 0x3F7E64
	.4byte 0x3C0EFA35

.section .text, "ax"

.global __dt__17CScriptCoverPointFv
__dt__17CScriptCoverPointFv:
/* 8012D308 0012A268  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012D30C 0012A26C  7C 08 02 A6 */	mflr r0
/* 8012D310 0012A270  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012D314 0012A274  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012D318 0012A278  7C 9F 23 78 */	mr r31, r4
/* 8012D31C 0012A27C  93 C1 00 08 */	stw r30, 8(r1)
/* 8012D320 0012A280  7C 7E 1B 79 */	or. r30, r3, r3
/* 8012D324 0012A284  41 82 00 3C */	beq lbl_8012D360
/* 8012D328 0012A288  3C 60 80 3E */	lis r3, __vt__17CScriptCoverPoint@ha
/* 8012D32C 0012A28C  34 1E 01 00 */	addic. r0, r30, 0x100
/* 8012D330 0012A290  38 03 0B F8 */	addi r0, r3, __vt__17CScriptCoverPoint@l
/* 8012D334 0012A294  90 1E 00 00 */	stw r0, 0(r30)
/* 8012D338 0012A298  41 82 00 0C */	beq lbl_8012D344
/* 8012D33C 0012A29C  38 00 00 00 */	li r0, 0
/* 8012D340 0012A2A0  98 1E 01 18 */	stb r0, 0x118(r30)
lbl_8012D344:
/* 8012D344 0012A2A4  7F C3 F3 78 */	mr r3, r30
/* 8012D348 0012A2A8  38 80 00 00 */	li r4, 0
/* 8012D34C 0012A2AC  4B F2 83 A5 */	bl __dt__6CActorFv
/* 8012D350 0012A2B0  7F E0 07 35 */	extsh. r0, r31
/* 8012D354 0012A2B4  40 81 00 0C */	ble lbl_8012D360
/* 8012D358 0012A2B8  7F C3 F3 78 */	mr r3, r30
/* 8012D35C 0012A2BC  48 1E 85 D5 */	bl Free__7CMemoryFPCv
lbl_8012D360:
/* 8012D360 0012A2C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012D364 0012A2C4  7F C3 F3 78 */	mr r3, r30
/* 8012D368 0012A2C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012D36C 0012A2CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8012D370 0012A2D0  7C 08 03 A6 */	mtlr r0
/* 8012D374 0012A2D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8012D378 0012A2D8  4E 80 00 20 */	blr

.global GetTouchBounds__17CScriptCoverPointCFv
GetTouchBounds__17CScriptCoverPointCFv:
/* 8012D37C 0012A2DC  88 04 01 18 */	lbz r0, 0x118(r4)
/* 8012D380 0012A2E0  98 03 00 18 */	stb r0, 0x18(r3)
/* 8012D384 0012A2E4  88 04 01 18 */	lbz r0, 0x118(r4)
/* 8012D388 0012A2E8  28 00 00 00 */	cmplwi r0, 0
/* 8012D38C 0012A2EC  4D 82 00 20 */	beqlr
/* 8012D390 0012A2F0  28 03 00 00 */	cmplwi r3, 0
/* 8012D394 0012A2F4  4D 82 00 20 */	beqlr
/* 8012D398 0012A2F8  C0 04 01 00 */	lfs f0, 0x100(r4)
/* 8012D39C 0012A2FC  D0 03 00 00 */	stfs f0, 0(r3)
/* 8012D3A0 0012A300  C0 04 01 04 */	lfs f0, 0x104(r4)
/* 8012D3A4 0012A304  D0 03 00 04 */	stfs f0, 4(r3)
/* 8012D3A8 0012A308  C0 04 01 08 */	lfs f0, 0x108(r4)
/* 8012D3AC 0012A30C  D0 03 00 08 */	stfs f0, 8(r3)
/* 8012D3B0 0012A310  C0 04 01 0C */	lfs f0, 0x10c(r4)
/* 8012D3B4 0012A314  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8012D3B8 0012A318  C0 04 01 10 */	lfs f0, 0x110(r4)
/* 8012D3BC 0012A31C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8012D3C0 0012A320  C0 04 01 14 */	lfs f0, 0x114(r4)
/* 8012D3C4 0012A324  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8012D3C8 0012A328  4E 80 00 20 */	blr

.global Render__17CScriptCoverPointCFRC13CStateManager
Render__17CScriptCoverPointCFRC13CStateManager:
/* 8012D3CC 0012A32C  4E 80 00 20 */	blr

.global AddToRenderer__17CScriptCoverPointCFRC14CFrustumPlanesRC13CStateManager
AddToRenderer__17CScriptCoverPointCFRC14CFrustumPlanesRC13CStateManager:
/* 8012D3D0 0012A330  4E 80 00 20 */	blr

.global Think__17CScriptCoverPointFfR13CStateManager
Think__17CScriptCoverPointFfR13CStateManager:
/* 8012D3D4 0012A334  C0 43 01 1C */	lfs f2, 0x11c(r3)
/* 8012D3D8 0012A338  C0 02 98 98 */	lfs f0, lbl_805AB5B8@sda21(r2)
/* 8012D3DC 0012A33C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8012D3E0 0012A340  4C 81 00 20 */	blelr
/* 8012D3E4 0012A344  EC 02 08 28 */	fsubs f0, f2, f1
/* 8012D3E8 0012A348  D0 03 01 1C */	stfs f0, 0x11c(r3)
/* 8012D3EC 0012A34C  4E 80 00 20 */	blr

.global SetInUse__17CScriptCoverPointFb
SetInUse__17CScriptCoverPointFb:
/* 8012D3F0 0012A350  88 03 00 F8 */	lbz r0, 0xf8(r3)
/* 8012D3F4 0012A354  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 8012D3F8 0012A358  98 03 00 F8 */	stb r0, 0xf8(r3)
/* 8012D3FC 0012A35C  88 03 00 F8 */	lbz r0, 0xf8(r3)
/* 8012D400 0012A360  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8012D404 0012A364  4C 82 00 20 */	bnelr
/* 8012D408 0012A368  C0 03 00 F4 */	lfs f0, 0xf4(r3)
/* 8012D40C 0012A36C  D0 03 01 1C */	stfs f0, 0x11c(r3)
/* 8012D410 0012A370  4E 80 00 20 */	blr

.global GetInUse__17CScriptCoverPointCF9TUniqueId
GetInUse__17CScriptCoverPointCF9TUniqueId:
/* 8012D414 0012A374  88 03 00 F8 */	lbz r0, 0xf8(r3)
/* 8012D418 0012A378  38 A0 00 00 */	li r5, 0
/* 8012D41C 0012A37C  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8012D420 0012A380  40 82 00 38 */	bne lbl_8012D458
/* 8012D424 0012A384  C0 23 01 1C */	lfs f1, 0x11c(r3)
/* 8012D428 0012A388  C0 02 98 98 */	lfs f0, lbl_805AB5B8@sda21(r2)
/* 8012D42C 0012A38C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012D430 0012A390  41 81 00 28 */	bgt lbl_8012D458
/* 8012D434 0012A394  A0 C3 00 FA */	lhz r6, 0xfa(r3)
/* 8012D438 0012A398  A0 6D A3 8C */	lhz r3, kInvalidUniqueId@sda21(r13)
/* 8012D43C 0012A39C  7C 06 18 40 */	cmplw r6, r3
/* 8012D440 0012A3A0  41 82 00 1C */	beq lbl_8012D45C
/* 8012D444 0012A3A4  A0 04 00 00 */	lhz r0, 0(r4)
/* 8012D448 0012A3A8  7C 00 18 40 */	cmplw r0, r3
/* 8012D44C 0012A3AC  41 82 00 10 */	beq lbl_8012D45C
/* 8012D450 0012A3B0  7C 00 30 40 */	cmplw r0, r6
/* 8012D454 0012A3B4  41 82 00 08 */	beq lbl_8012D45C
lbl_8012D458:
/* 8012D458 0012A3B8  38 A0 00 01 */	li r5, 1
lbl_8012D45C:
/* 8012D45C 0012A3BC  7C A3 2B 78 */	mr r3, r5
/* 8012D460 0012A3C0  4E 80 00 20 */	blr

.global Blown__17CScriptCoverPointCFRC9CVector3f
Blown__17CScriptCoverPointCFRC9CVector3f:
/* 8012D464 0012A3C4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8012D468 0012A3C8  7C 08 02 A6 */	mflr r0
/* 8012D46C 0012A3CC  90 01 00 64 */	stw r0, 0x64(r1)
/* 8012D470 0012A3D0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8012D474 0012A3D4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 8012D478 0012A3D8  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8012D47C 0012A3DC  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8012D480 0012A3E0  93 A1 00 44 */	stw r29, 0x44(r1)
/* 8012D484 0012A3E4  88 03 00 30 */	lbz r0, 0x30(r3)
/* 8012D488 0012A3E8  7C 7D 1B 78 */	mr r29, r3
/* 8012D48C 0012A3EC  7C 9E 23 78 */	mr r30, r4
/* 8012D490 0012A3F0  3B E0 00 01 */	li r31, 1
/* 8012D494 0012A3F4  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8012D498 0012A3F8  41 82 01 20 */	beq lbl_8012D5B8
/* 8012D49C 0012A3FC  48 00 01 65 */	bl ShouldWallHang__17CScriptCoverPointCFv
/* 8012D4A0 0012A400  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012D4A4 0012A404  41 82 00 0C */	beq lbl_8012D4B0
/* 8012D4A8 0012A408  3B E0 00 00 */	li r31, 0
/* 8012D4AC 0012A40C  48 00 01 0C */	b lbl_8012D5B8
lbl_8012D4B0:
/* 8012D4B0 0012A410  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8012D4B4 0012A414  38 61 00 2C */	addi r3, r1, 0x2c
/* 8012D4B8 0012A418  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 8012D4BC 0012A41C  C0 7E 00 08 */	lfs f3, 8(r30)
/* 8012D4C0 0012A420  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 8012D4C4 0012A424  EC 81 00 28 */	fsubs f4, f1, f0
/* 8012D4C8 0012A428  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8012D4CC 0012A42C  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 8012D4D0 0012A430  EC 43 10 28 */	fsubs f2, f3, f2
/* 8012D4D4 0012A434  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 8012D4D8 0012A438  EC 01 00 28 */	fsubs f0, f1, f0
/* 8012D4DC 0012A43C  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8012D4E0 0012A440  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8012D4E4 0012A444  48 1E 73 D5 */	bl Magnitude__9CVector3fCFv
/* 8012D4E8 0012A448  C0 42 98 9C */	lfs f2, lbl_805AB5BC@sda21(r2)
/* 8012D4EC 0012A44C  C0 02 98 A0 */	lfs f0, lbl_805AB5C0@sda21(r2)
/* 8012D4F0 0012A450  EC A2 08 24 */	fdivs f5, f2, f1
/* 8012D4F4 0012A454  C0 81 00 2C */	lfs f4, 0x2c(r1)
/* 8012D4F8 0012A458  C0 61 00 30 */	lfs f3, 0x30(r1)
/* 8012D4FC 0012A45C  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 8012D500 0012A460  EC 84 01 72 */	fmuls f4, f4, f5
/* 8012D504 0012A464  EC 63 01 72 */	fmuls f3, f3, f5
/* 8012D508 0012A468  EC 42 01 72 */	fmuls f2, f2, f5
/* 8012D50C 0012A46C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012D510 0012A470  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 8012D514 0012A474  D0 61 00 30 */	stfs f3, 0x30(r1)
/* 8012D518 0012A478  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8012D51C 0012A47C  40 81 00 9C */	ble lbl_8012D5B8
/* 8012D520 0012A480  C0 02 98 98 */	lfs f0, lbl_805AB5B8@sda21(r2)
/* 8012D524 0012A484  38 61 00 20 */	addi r3, r1, 0x20
/* 8012D528 0012A488  D0 81 00 20 */	stfs f4, 0x20(r1)
/* 8012D52C 0012A48C  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 8012D530 0012A490  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8012D534 0012A494  48 1E 73 C5 */	bl Normalize__9CVector3fFv
/* 8012D538 0012A498  C0 5D 00 48 */	lfs f2, 0x48(r29)
/* 8012D53C 0012A49C  38 61 00 14 */	addi r3, r1, 0x14
/* 8012D540 0012A4A0  C0 3D 00 38 */	lfs f1, 0x38(r29)
/* 8012D544 0012A4A4  C0 7D 00 58 */	lfs f3, 0x58(r29)
/* 8012D548 0012A4A8  C0 02 98 98 */	lfs f0, lbl_805AB5B8@sda21(r2)
/* 8012D54C 0012A4AC  D0 21 00 08 */	stfs f1, 8(r1)
/* 8012D550 0012A4B0  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8012D554 0012A4B4  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 8012D558 0012A4B8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8012D55C 0012A4BC  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8012D560 0012A4C0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8012D564 0012A4C4  48 1E 73 95 */	bl Normalize__9CVector3fFv
/* 8012D568 0012A4C8  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8012D56C 0012A4CC  7F A3 EB 78 */	mr r3, r29
/* 8012D570 0012A4D0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8012D574 0012A4D4  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 8012D578 0012A4D8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8012D57C 0012A4DC  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8012D580 0012A4E0  C0 81 00 1C */	lfs f4, 0x1c(r1)
/* 8012D584 0012A4E4  C0 61 00 28 */	lfs f3, 0x28(r1)
/* 8012D588 0012A4E8  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 8012D58C 0012A4EC  EF E4 00 FA */	fmadds f31, f4, f3, f0
/* 8012D590 0012A4F0  48 00 00 5D */	bl GetCosHorizontalAngle__17CScriptCoverPointCFv
/* 8012D594 0012A4F4  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 8012D598 0012A4F8  40 81 00 20 */	ble lbl_8012D5B8
/* 8012D59C 0012A4FC  C3 E1 00 34 */	lfs f31, 0x34(r1)
/* 8012D5A0 0012A500  7F A3 EB 78 */	mr r3, r29
/* 8012D5A4 0012A504  48 00 00 3D */	bl GetSinSqVerticalAngle__17CScriptCoverPointCFv
/* 8012D5A8 0012A508  EC 1F 07 F2 */	fmuls f0, f31, f31
/* 8012D5AC 0012A50C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8012D5B0 0012A510  40 80 00 08 */	bge lbl_8012D5B8
/* 8012D5B4 0012A514  3B E0 00 00 */	li r31, 0
lbl_8012D5B8:
/* 8012D5B8 0012A518  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8012D5BC 0012A51C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 8012D5C0 0012A520  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8012D5C4 0012A524  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8012D5C8 0012A528  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8012D5CC 0012A52C  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8012D5D0 0012A530  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 8012D5D4 0012A534  7C 08 03 A6 */	mtlr r0
/* 8012D5D8 0012A538  38 21 00 60 */	addi r1, r1, 0x60
/* 8012D5DC 0012A53C  4E 80 00 20 */	blr

.global GetSinSqVerticalAngle__17CScriptCoverPointCFv
GetSinSqVerticalAngle__17CScriptCoverPointCFv:
/* 8012D5E0 0012A540  C0 03 00 F0 */	lfs f0, 0xf0(r3)
/* 8012D5E4 0012A544  EC 20 00 32 */	fmuls f1, f0, f0
/* 8012D5E8 0012A548  4E 80 00 20 */	blr

.global GetCosHorizontalAngle__17CScriptCoverPointCFv
GetCosHorizontalAngle__17CScriptCoverPointCFv:
/* 8012D5EC 0012A54C  C0 23 00 EC */	lfs f1, 0xec(r3)
/* 8012D5F0 0012A550  4E 80 00 20 */	blr

.global ShouldLandHere__17CScriptCoverPointCFv
ShouldLandHere__17CScriptCoverPointCFv:
/* 8012D5F4 0012A554  80 03 00 E8 */	lwz r0, 0xe8(r3)
/* 8012D5F8 0012A558  54 03 DF FE */	rlwinm r3, r0, 0x1b, 0x1f, 0x1f
/* 8012D5FC 0012A55C  4E 80 00 20 */	blr

.global ShouldWallHang__17CScriptCoverPointCFv
ShouldWallHang__17CScriptCoverPointCFv:
/* 8012D600 0012A560  80 03 00 E8 */	lwz r0, 0xe8(r3)
/* 8012D604 0012A564  54 03 E7 FE */	rlwinm r3, r0, 0x1c, 0x1f, 0x1f
/* 8012D608 0012A568  4E 80 00 20 */	blr

.global ShouldStay__17CScriptCoverPointCFv
ShouldStay__17CScriptCoverPointCFv:
/* 8012D60C 0012A56C  80 03 00 E8 */	lwz r0, 0xe8(r3)
/* 8012D610 0012A570  54 03 EF FE */	rlwinm r3, r0, 0x1d, 0x1f, 0x1f
/* 8012D614 0012A574  4E 80 00 20 */	blr

.global ShouldCrouch__17CScriptCoverPointCFv
ShouldCrouch__17CScriptCoverPointCFv:
/* 8012D618 0012A578  88 03 00 F8 */	lbz r0, 0xf8(r3)
/* 8012D61C 0012A57C  54 03 CF FE */	rlwinm r3, r0, 0x19, 0x1f, 0x1f
/* 8012D620 0012A580  4E 80 00 20 */	blr

.global GetAttackDirection__17CScriptCoverPointCFv
GetAttackDirection__17CScriptCoverPointCFv:
/* 8012D624 0012A584  80 63 00 E8 */	lwz r3, 0xe8(r3)
/* 8012D628 0012A588  4E 80 00 20 */	blr

.global AcceptScriptMsg__17CScriptCoverPointF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__17CScriptCoverPointF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 8012D62C 0012A58C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8012D630 0012A590  7C 08 02 A6 */	mflr r0
/* 8012D634 0012A594  90 01 00 34 */	stw r0, 0x34(r1)
/* 8012D638 0012A598  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8012D63C 0012A59C  7C DF 33 78 */	mr r31, r6
/* 8012D640 0012A5A0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8012D644 0012A5A4  7C 9E 23 78 */	mr r30, r4
/* 8012D648 0012A5A8  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8012D64C 0012A5AC  7C 7D 1B 78 */	mr r29, r3
/* 8012D650 0012A5B0  A0 05 00 00 */	lhz r0, 0(r5)
/* 8012D654 0012A5B4  38 A1 00 0C */	addi r5, r1, 0xc
/* 8012D658 0012A5B8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8012D65C 0012A5BC  4B F2 5F B9 */	bl AcceptScriptMsg__6CActorF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 8012D660 0012A5C0  2C 1E 00 23 */	cmpwi r30, 0x23
/* 8012D664 0012A5C4  41 82 00 08 */	beq lbl_8012D66C
/* 8012D668 0012A5C8  48 00 00 58 */	b lbl_8012D6C0
lbl_8012D66C:
/* 8012D66C 0012A5CC  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 8012D670 0012A5D0  48 00 00 38 */	b lbl_8012D6A8
lbl_8012D674:
/* 8012D674 0012A5D4  80 04 00 00 */	lwz r0, 0(r4)
/* 8012D678 0012A5D8  2C 00 00 0C */	cmpwi r0, 0xc
/* 8012D67C 0012A5DC  40 82 00 28 */	bne lbl_8012D6A4
/* 8012D680 0012A5E0  80 04 00 08 */	lwz r0, 8(r4)
/* 8012D684 0012A5E4  7F E4 FB 78 */	mr r4, r31
/* 8012D688 0012A5E8  38 61 00 08 */	addi r3, r1, 8
/* 8012D68C 0012A5EC  38 A1 00 10 */	addi r5, r1, 0x10
/* 8012D690 0012A5F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8012D694 0012A5F4  4B F1 A8 89 */	bl GetIdForScript__13CStateManagerCF9TEditorId
/* 8012D698 0012A5F8  A0 01 00 08 */	lhz r0, 8(r1)
/* 8012D69C 0012A5FC  B0 1D 00 FC */	sth r0, 0xfc(r29)
/* 8012D6A0 0012A600  48 00 00 20 */	b lbl_8012D6C0
lbl_8012D6A4:
/* 8012D6A4 0012A604  38 84 00 0C */	addi r4, r4, 0xc
lbl_8012D6A8:
/* 8012D6A8 0012A608  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 8012D6AC 0012A60C  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 8012D6B0 0012A610  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8012D6B4 0012A614  7C 03 02 14 */	add r0, r3, r0
/* 8012D6B8 0012A618  7C 04 00 40 */	cmplw r4, r0
/* 8012D6BC 0012A61C  40 82 FF B8 */	bne lbl_8012D674
lbl_8012D6C0:
/* 8012D6C0 0012A620  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8012D6C4 0012A624  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8012D6C8 0012A628  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8012D6CC 0012A62C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8012D6D0 0012A630  7C 08 03 A6 */	mtlr r0
/* 8012D6D4 0012A634  38 21 00 30 */	addi r1, r1, 0x30
/* 8012D6D8 0012A638  4E 80 00 20 */	blr

.global Accept__17CScriptCoverPointFR8IVisitor
Accept__17CScriptCoverPointFR8IVisitor:
/* 8012D6DC 0012A63C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012D6E0 0012A640  7C 08 02 A6 */	mflr r0
/* 8012D6E4 0012A644  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012D6E8 0012A648  7C 60 1B 78 */	mr r0, r3
/* 8012D6EC 0012A64C  7C 83 23 78 */	mr r3, r4
/* 8012D6F0 0012A650  81 84 00 00 */	lwz r12, 0(r4)
/* 8012D6F4 0012A654  7C 04 03 78 */	mr r4, r0
/* 8012D6F8 0012A658  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 8012D6FC 0012A65C  7D 89 03 A6 */	mtctr r12
/* 8012D700 0012A660  4E 80 04 21 */	bctrl
/* 8012D704 0012A664  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012D708 0012A668  7C 08 03 A6 */	mtlr r0
/* 8012D70C 0012A66C  38 21 00 10 */	addi r1, r1, 0x10
/* 8012D710 0012A670  4E 80 00 20 */	blr

.global "__ct__17CScriptCoverPointF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fbUibfff"
"__ct__17CScriptCoverPointF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fbUibfff":
/* 8012D714 0012A674  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 8012D718 0012A678  7C 08 02 A6 */	mflr r0
/* 8012D71C 0012A67C  90 01 01 64 */	stw r0, 0x164(r1)
/* 8012D720 0012A680  DB E1 01 50 */	stfd f31, 0x150(r1)
/* 8012D724 0012A684  F3 E1 01 58 */	psq_st f31, 344(r1), 0, qr0
/* 8012D728 0012A688  DB C1 01 40 */	stfd f30, 0x140(r1)
/* 8012D72C 0012A68C  F3 C1 01 48 */	psq_st f30, 328(r1), 0, qr0
/* 8012D730 0012A690  DB A1 01 30 */	stfd f29, 0x130(r1)
/* 8012D734 0012A694  F3 A1 01 38 */	psq_st f29, 312(r1), 0, qr0
/* 8012D738 0012A698  BF 01 01 10 */	stmw r24, 0x110(r1)
/* 8012D73C 0012A69C  FF A0 08 90 */	fmr f29, f1
/* 8012D740 0012A6A0  7C 7E 1B 78 */	mr r30, r3
/* 8012D744 0012A6A4  FF C0 10 90 */	fmr f30, f2
/* 8012D748 0012A6A8  7C 98 23 78 */	mr r24, r4
/* 8012D74C 0012A6AC  FF E0 18 90 */	fmr f31, f3
/* 8012D750 0012A6B0  7C B9 2B 78 */	mr r25, r5
/* 8012D754 0012A6B4  7C DA 33 78 */	mr r26, r6
/* 8012D758 0012A6B8  7C FF 3B 78 */	mr r31, r7
/* 8012D75C 0012A6BC  7D 1B 43 78 */	mr r27, r8
/* 8012D760 0012A6C0  7D 3C 4B 78 */	mr r28, r9
/* 8012D764 0012A6C4  7D 5D 53 78 */	mr r29, r10
/* 8012D768 0012A6C8  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8012D76C 0012A6CC  4B F0 D0 39 */	bl CModelDataNull__10CModelDataFv
/* 8012D770 0012A6D0  38 61 00 50 */	addi r3, r1, 0x50
/* 8012D774 0012A6D4  4B EE D6 C5 */	bl None__16CActorParametersFv
/* 8012D778 0012A6D8  A0 8D A3 8C */	lhz r4, kInvalidUniqueId@sda21(r13)
/* 8012D77C 0012A6DC  38 00 00 00 */	li r0, 0
/* 8012D780 0012A6E0  80 AD 8A E8 */	lwz r5, lbl_805A76A8@sda21(r13)
/* 8012D784 0012A6E4  38 60 00 00 */	li r3, 0
/* 8012D788 0012A6E8  B0 81 00 10 */	sth r4, 0x10(r1)
/* 8012D78C 0012A6EC  38 80 00 01 */	li r4, 1
/* 8012D790 0012A6F0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8012D794 0012A6F4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8012D798 0012A6F8  48 25 C7 5D */	bl __shl2i
/* 8012D79C 0012A6FC  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 8012D7A0 0012A700  39 61 00 50 */	addi r11, r1, 0x50
/* 8012D7A4 0012A704  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 8012D7A8 0012A708  38 01 00 10 */	addi r0, r1, 0x10
/* 8012D7AC 0012A70C  7C A3 1B 78 */	or r3, r5, r3
/* 8012D7B0 0012A710  A1 38 00 00 */	lhz r9, 0(r24)
/* 8012D7B4 0012A714  7C C4 23 78 */	or r4, r6, r4
/* 8012D7B8 0012A718  90 61 00 18 */	stw r3, 0x18(r1)
/* 8012D7BC 0012A71C  7F C3 F3 78 */	mr r3, r30
/* 8012D7C0 0012A720  7F 65 DB 78 */	mr r5, r27
/* 8012D7C4 0012A724  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8012D7C8 0012A728  7F 26 CB 78 */	mr r6, r25
/* 8012D7CC 0012A72C  7F 47 D3 78 */	mr r7, r26
/* 8012D7D0 0012A730  7F E8 FB 78 */	mr r8, r31
/* 8012D7D4 0012A734  B1 21 00 14 */	sth r9, 0x14(r1)
/* 8012D7D8 0012A738  38 81 00 14 */	addi r4, r1, 0x14
/* 8012D7DC 0012A73C  39 21 00 B8 */	addi r9, r1, 0xb8
/* 8012D7E0 0012A740  39 41 00 18 */	addi r10, r1, 0x18
/* 8012D7E4 0012A744  91 61 00 08 */	stw r11, 8(r1)
/* 8012D7E8 0012A748  90 01 00 0C */	stw r0, 0xc(r1)
/* 8012D7EC 0012A74C  4B F2 80 35 */	bl "__ct__6CActorF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC13CMaterialListRC16CActorParameters9TUniqueId"
/* 8012D7F0 0012A750  38 61 00 50 */	addi r3, r1, 0x50
/* 8012D7F4 0012A754  38 80 FF FF */	li r4, -1
/* 8012D7F8 0012A758  4B FD 8E 11 */	bl __dt__16CLightParametersFv
/* 8012D7FC 0012A75C  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8012D800 0012A760  38 80 FF FF */	li r4, -1
/* 8012D804 0012A764  4B FE 92 49 */	bl __dt__10CModelDataFv
/* 8012D808 0012A768  3C 60 80 3E */	lis r3, __vt__17CScriptCoverPoint@ha
/* 8012D80C 0012A76C  C0 02 98 A4 */	lfs f0, lbl_805AB5C4@sda21(r2)
/* 8012D810 0012A770  38 03 0B F8 */	addi r0, r3, __vt__17CScriptCoverPoint@l
/* 8012D814 0012A774  90 1E 00 00 */	stw r0, 0(r30)
/* 8012D818 0012A778  EC 20 07 72 */	fmuls f1, f0, f29
/* 8012D81C 0012A77C  93 9E 00 E8 */	stw r28, 0xe8(r30)
/* 8012D820 0012A780  48 26 6B D1 */	bl cos
/* 8012D824 0012A784  FC 40 08 18 */	frsp f2, f1
/* 8012D828 0012A788  C0 02 98 A4 */	lfs f0, lbl_805AB5C4@sda21(r2)
/* 8012D82C 0012A78C  EC 20 07 B2 */	fmuls f1, f0, f30
/* 8012D830 0012A790  D0 5E 00 EC */	stfs f2, 0xec(r30)
/* 8012D834 0012A794  48 26 72 A9 */	bl sin
/* 8012D838 0012A798  FC 00 08 18 */	frsp f0, f1
/* 8012D83C 0012A79C  38 C0 00 00 */	li r6, 0
/* 8012D840 0012A7A0  38 61 00 38 */	addi r3, r1, 0x38
/* 8012D844 0012A7A4  38 81 00 2C */	addi r4, r1, 0x2c
/* 8012D848 0012A7A8  38 A1 00 20 */	addi r5, r1, 0x20
/* 8012D84C 0012A7AC  D0 1E 00 F0 */	stfs f0, 0xf0(r30)
/* 8012D850 0012A7B0  D3 FE 00 F4 */	stfs f31, 0xf4(r30)
/* 8012D854 0012A7B4  88 1E 00 F8 */	lbz r0, 0xf8(r30)
/* 8012D858 0012A7B8  53 A0 3E 30 */	rlwimi r0, r29, 7, 0x18, 0x18
/* 8012D85C 0012A7BC  98 1E 00 F8 */	stb r0, 0xf8(r30)
/* 8012D860 0012A7C0  88 1E 00 F8 */	lbz r0, 0xf8(r30)
/* 8012D864 0012A7C4  50 C0 36 72 */	rlwimi r0, r6, 6, 0x19, 0x19
/* 8012D868 0012A7C8  98 1E 00 F8 */	stb r0, 0xf8(r30)
/* 8012D86C 0012A7CC  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8012D870 0012A7D0  B0 1E 00 FA */	sth r0, 0xfa(r30)
/* 8012D874 0012A7D4  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8012D878 0012A7D8  B0 1E 00 FC */	sth r0, 0xfc(r30)
/* 8012D87C 0012A7DC  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 8012D880 0012A7E0  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8012D884 0012A7E4  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8012D888 0012A7E8  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8012D88C 0012A7EC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8012D890 0012A7F0  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8012D894 0012A7F4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8012D898 0012A7F8  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8012D89C 0012A7FC  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8012D8A0 0012A800  48 20 AC 69 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 8012D8A4 0012A804  38 00 00 01 */	li r0, 1
/* 8012D8A8 0012A808  34 7E 01 00 */	addic. r3, r30, 0x100
/* 8012D8AC 0012A80C  98 1E 01 18 */	stb r0, 0x118(r30)
/* 8012D8B0 0012A810  41 82 00 34 */	beq lbl_8012D8E4
/* 8012D8B4 0012A814  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8012D8B8 0012A818  D0 03 00 00 */	stfs f0, 0(r3)
/* 8012D8BC 0012A81C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8012D8C0 0012A820  D0 03 00 04 */	stfs f0, 4(r3)
/* 8012D8C4 0012A824  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8012D8C8 0012A828  D0 03 00 08 */	stfs f0, 8(r3)
/* 8012D8CC 0012A82C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8012D8D0 0012A830  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8012D8D4 0012A834  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8012D8D8 0012A838  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8012D8DC 0012A83C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8012D8E0 0012A840  D0 03 00 14 */	stfs f0, 0x14(r3)
lbl_8012D8E4:
/* 8012D8E4 0012A844  C0 02 98 98 */	lfs f0, lbl_805AB5B8@sda21(r2)
/* 8012D8E8 0012A848  7F C3 F3 78 */	mr r3, r30
/* 8012D8EC 0012A84C  D0 1E 01 1C */	stfs f0, 0x11c(r30)
/* 8012D8F0 0012A850  E3 E1 01 58 */	psq_l f31, 344(r1), 0, qr0
/* 8012D8F4 0012A854  CB E1 01 50 */	lfd f31, 0x150(r1)
/* 8012D8F8 0012A858  E3 C1 01 48 */	psq_l f30, 328(r1), 0, qr0
/* 8012D8FC 0012A85C  CB C1 01 40 */	lfd f30, 0x140(r1)
/* 8012D900 0012A860  E3 A1 01 38 */	psq_l f29, 312(r1), 0, qr0
/* 8012D904 0012A864  CB A1 01 30 */	lfd f29, 0x130(r1)
/* 8012D908 0012A868  BB 01 01 10 */	lmw r24, 0x110(r1)
/* 8012D90C 0012A86C  80 01 01 64 */	lwz r0, 0x164(r1)
/* 8012D910 0012A870  7C 08 03 A6 */	mtlr r0
/* 8012D914 0012A874  38 21 01 60 */	addi r1, r1, 0x160
/* 8012D918 0012A878  4E 80 00 20 */	blr
