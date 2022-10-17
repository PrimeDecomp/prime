.include "macros.inc"

.section .data
.balign 8

.global lbl_803EC390
lbl_803EC390:
	# ROM: 0x3E9390
	.4byte 0
	.4byte 0
	.4byte __dt__23CMetroidPrimeProjectileFv
	.4byte Accept__23CMetroidPrimeProjectileFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__17CEnergyProjectileFfR13CStateManager
	.4byte AcceptScriptMsg__17CEnergyProjectileF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFUc
	.4byte PreRender__6CActorFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__17CEnergyProjectileCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__17CEnergyProjectileCFRC13CStateManager
	.4byte CanRenderUnsorted__6CActorCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__6CActorFR13CStateManager
	.4byte GetDamageVulnerability__6CActorCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__15CGameProjectileCFv
	.4byte Touch__17CEnergyProjectileFR6CActorR13CStateManager
	.4byte GetOrbitPosition__6CActorCFRC13CStateManager
	.4byte GetAimPosition__6CActorCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__7CWeaponCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__15CGameProjectileFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC13CStateManager
	.4byte DoUserAnimEvent__6CActorFR13CStateManagerRC13CInt32POINode14EUserEventTypef
	.4byte ResolveCollisionWithActor__17CEnergyProjectileFRC14CRayCastResultR6CActorR13CStateManager
	.4byte Explode__23CMetroidPrimeProjectileFRC9CVector3fRC9CVector3f29EWeaponCollisionResponseTypesR13CStateManagerRC20CDamageVulnerability9TUniqueId
	.4byte 0

.section .text, "ax"

.global __dt__23CMetroidPrimeProjectileFv
__dt__23CMetroidPrimeProjectileFv:
/* 802A0338 0029D298  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A033C 0029D29C  7C 08 02 A6 */	mflr r0
/* 802A0340 0029D2A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A0344 0029D2A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A0348 0029D2A8  7C 9F 23 78 */	mr r31, r4
/* 802A034C 0029D2AC  93 C1 00 08 */	stw r30, 8(r1)
/* 802A0350 0029D2B0  7C 7E 1B 79 */	or. r30, r3, r3
/* 802A0354 0029D2B4  41 82 00 44 */	beq lbl_802A0398
/* 802A0358 0029D2B8  3C 60 80 3F */	lis r3, lbl_803EC390@ha
/* 802A035C 0029D2BC  34 1E 03 D8 */	addic. r0, r30, 0x3d8
/* 802A0360 0029D2C0  38 03 C3 90 */	addi r0, r3, lbl_803EC390@l
/* 802A0364 0029D2C4  90 1E 00 00 */	stw r0, 0(r30)
/* 802A0368 0029D2C8  41 82 00 14 */	beq lbl_802A037C
/* 802A036C 0029D2CC  34 7E 03 DC */	addic. r3, r30, 0x3dc
/* 802A0370 0029D2D0  41 82 00 0C */	beq lbl_802A037C
/* 802A0374 0029D2D4  38 80 00 00 */	li r4, 0
/* 802A0378 0029D2D8  48 0A 0A C9 */	bl __dt__6CTokenFv
lbl_802A037C:
/* 802A037C 0029D2DC  7F C3 F3 78 */	mr r3, r30
/* 802A0380 0029D2E0  38 80 00 00 */	li r4, 0
/* 802A0384 0029D2E4  4B E9 B5 71 */	bl __dt__17CEnergyProjectileFv
/* 802A0388 0029D2E8  7F E0 07 35 */	extsh. r0, r31
/* 802A038C 0029D2EC  40 81 00 0C */	ble lbl_802A0398
/* 802A0390 0029D2F0  7F C3 F3 78 */	mr r3, r30
/* 802A0394 0029D2F4  48 07 55 9D */	bl Free__7CMemoryFPCv
lbl_802A0398:
/* 802A0398 0029D2F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A039C 0029D2FC  7F C3 F3 78 */	mr r3, r30
/* 802A03A0 0029D300  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A03A4 0029D304  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A03A8 0029D308  7C 08 03 A6 */	mtlr r0
/* 802A03AC 0029D30C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A03B0 0029D310  4E 80 00 20 */	blr

.global __ct__20SPrimeProjectileInfoFR12CInputStream
__ct__20SPrimeProjectileInfoFR12CInputStream:
/* 802A03B4 0029D314  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A03B8 0029D318  7C 08 02 A6 */	mflr r0
/* 802A03BC 0029D31C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A03C0 0029D320  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802A03C4 0029D324  7C 9F 23 78 */	mr r31, r4
/* 802A03C8 0029D328  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802A03CC 0029D32C  7C 7E 1B 78 */	mr r30, r3
/* 802A03D0 0029D330  7F E3 FB 78 */	mr r3, r31
/* 802A03D4 0029D334  48 09 E8 B1 */	bl ReadLong__12CInputStreamFv
/* 802A03D8 0029D338  90 7E 00 00 */	stw r3, 0(r30)
/* 802A03DC 0029D33C  7F E3 FB 78 */	mr r3, r31
/* 802A03E0 0029D340  48 09 E8 A5 */	bl ReadLong__12CInputStreamFv
/* 802A03E4 0029D344  3C 80 50 41 */	lis r4, 0x50415254@ha
/* 802A03E8 0029D348  90 61 00 14 */	stw r3, 0x14(r1)
/* 802A03EC 0029D34C  38 04 52 54 */	addi r0, r4, 0x50415254@l
/* 802A03F0 0029D350  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 802A03F4 0029D354  90 01 00 10 */	stw r0, 0x10(r1)
/* 802A03F8 0029D358  38 61 00 08 */	addi r3, r1, 8
/* 802A03FC 0029D35C  38 A1 00 10 */	addi r5, r1, 0x10
/* 802A0400 0029D360  81 84 00 00 */	lwz r12, 0(r4)
/* 802A0404 0029D364  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802A0408 0029D368  7D 89 03 A6 */	mtctr r12
/* 802A040C 0029D36C  4E 80 04 21 */	bctrl
/* 802A0410 0029D370  38 7E 00 04 */	addi r3, r30, 4
/* 802A0414 0029D374  38 81 00 08 */	addi r4, r1, 8
/* 802A0418 0029D378  48 0A 0A 91 */	bl __ct__6CTokenFRC6CToken
/* 802A041C 0029D37C  38 61 00 08 */	addi r3, r1, 8
/* 802A0420 0029D380  38 80 FF FF */	li r4, -1
/* 802A0424 0029D384  48 0A 0A 1D */	bl __dt__6CTokenFv
/* 802A0428 0029D388  7F E4 FB 78 */	mr r4, r31
/* 802A042C 0029D38C  38 7E 00 0C */	addi r3, r30, 0xc
/* 802A0430 0029D390  4B E2 31 31 */	bl __ct__11CDamageInfoFR12CInputStream
/* 802A0434 0029D394  7F E3 FB 78 */	mr r3, r31
/* 802A0438 0029D398  48 09 E7 F1 */	bl ReadFloat__12CInputStreamFv
/* 802A043C 0029D39C  D0 3E 00 28 */	stfs f1, 0x28(r30)
/* 802A0440 0029D3A0  7F E3 FB 78 */	mr r3, r31
/* 802A0444 0029D3A4  48 09 E7 E5 */	bl ReadFloat__12CInputStreamFv
/* 802A0448 0029D3A8  D0 3E 00 2C */	stfs f1, 0x2c(r30)
/* 802A044C 0029D3AC  7F E3 FB 78 */	mr r3, r31
/* 802A0450 0029D3B0  48 09 E7 D9 */	bl ReadFloat__12CInputStreamFv
/* 802A0454 0029D3B4  D0 3E 00 30 */	stfs f1, 0x30(r30)
/* 802A0458 0029D3B8  7F E3 FB 78 */	mr r3, r31
/* 802A045C 0029D3BC  48 09 E8 29 */	bl ReadLong__12CInputStreamFv
/* 802A0460 0029D3C0  90 7E 00 34 */	stw r3, 0x34(r30)
/* 802A0464 0029D3C4  7F E3 FB 78 */	mr r3, r31
/* 802A0468 0029D3C8  48 09 E8 75 */	bl ReadBool__12CInputStreamFv
/* 802A046C 0029D3CC  88 1E 00 38 */	lbz r0, 0x38(r30)
/* 802A0470 0029D3D0  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 802A0474 0029D3D4  7F E3 FB 78 */	mr r3, r31
/* 802A0478 0029D3D8  98 1E 00 38 */	stb r0, 0x38(r30)
/* 802A047C 0029D3DC  48 09 E8 61 */	bl ReadBool__12CInputStreamFv
/* 802A0480 0029D3E0  88 1E 00 38 */	lbz r0, 0x38(r30)
/* 802A0484 0029D3E4  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 802A0488 0029D3E8  7F E3 FB 78 */	mr r3, r31
/* 802A048C 0029D3EC  98 1E 00 38 */	stb r0, 0x38(r30)
/* 802A0490 0029D3F0  48 09 E8 4D */	bl ReadBool__12CInputStreamFv
/* 802A0494 0029D3F4  88 1E 00 38 */	lbz r0, 0x38(r30)
/* 802A0498 0029D3F8  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 802A049C 0029D3FC  7F E3 FB 78 */	mr r3, r31
/* 802A04A0 0029D400  98 1E 00 38 */	stb r0, 0x38(r30)
/* 802A04A4 0029D404  48 09 E8 39 */	bl ReadBool__12CInputStreamFv
/* 802A04A8 0029D408  88 1E 00 38 */	lbz r0, 0x38(r30)
/* 802A04AC 0029D40C  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 802A04B0 0029D410  7F C3 F3 78 */	mr r3, r30
/* 802A04B4 0029D414  98 1E 00 38 */	stb r0, 0x38(r30)
/* 802A04B8 0029D418  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802A04BC 0029D41C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802A04C0 0029D420  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A04C4 0029D424  7C 08 03 A6 */	mtlr r0
/* 802A04C8 0029D428  38 21 00 20 */	addi r1, r1, 0x20
/* 802A04CC 0029D42C  4E 80 00 20 */	blr

.global Explode__23CMetroidPrimeProjectileFRC9CVector3fRC9CVector3f29EWeaponCollisionResponseTypesR13CStateManagerRC20CDamageVulnerability9TUniqueId
Explode__23CMetroidPrimeProjectileFRC9CVector3fRC9CVector3f29EWeaponCollisionResponseTypesR13CStateManagerRC20CDamageVulnerability9TUniqueId:
/* 802A04D0 0029D430  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 802A04D4 0029D434  7C 08 02 A6 */	mflr r0
/* 802A04D8 0029D438  90 01 01 44 */	stw r0, 0x144(r1)
/* 802A04DC 0029D43C  BE E1 01 1C */	stmw r23, 0x11c(r1)
/* 802A04E0 0029D440  7C 7C 1B 78 */	mr r28, r3
/* 802A04E4 0029D444  7C FD 3B 78 */	mr r29, r7
/* 802A04E8 0029D448  A0 09 00 00 */	lhz r0, 0(r9)
/* 802A04EC 0029D44C  39 21 00 38 */	addi r9, r1, 0x38
/* 802A04F0 0029D450  B0 01 00 38 */	sth r0, 0x38(r1)
/* 802A04F4 0029D454  4B F7 47 05 */	bl Explode__17CEnergyProjectileFRC9CVector3fRC9CVector3f29EWeaponCollisionResponseTypesR13CStateManagerRC20CDamageVulnerability9TUniqueId
/* 802A04F8 0029D458  88 1C 02 E4 */	lbz r0, 0x2e4(r28)
/* 802A04FC 0029D45C  7C 7E 1B 78 */	mr r30, r3
/* 802A0500 0029D460  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 802A0504 0029D464  40 82 01 70 */	bne lbl_802A0674
/* 802A0508 0029D468  7F A4 EB 78 */	mr r4, r29
/* 802A050C 0029D46C  38 61 00 34 */	addi r3, r1, 0x34
/* 802A0510 0029D470  4B DA CB CD */	bl AllocateUniqueId__13CStateManagerFv
/* 802A0514 0029D474  A0 01 00 34 */	lhz r0, 0x34(r1)
/* 802A0518 0029D478  3B FC 03 E4 */	addi r31, r28, 0x3e4
/* 802A051C 0029D47C  C0 3C 03 F4 */	lfs f1, 0x3f4(r28)
/* 802A0520 0029D480  38 61 00 B4 */	addi r3, r1, 0xb4
/* 802A0524 0029D484  C0 42 C1 10 */	lfs f2, lbl_805ADE30@sda21(r2)
/* 802A0528 0029D488  C0 02 C1 14 */	lfs f0, lbl_805ADE34@sda21(r2)
/* 802A052C 0029D48C  B0 01 00 3C */	sth r0, 0x3c(r1)
/* 802A0530 0029D490  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 802A0534 0029D494  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 802A0538 0029D498  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 802A053C 0029D49C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 802A0540 0029D4A0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 802A0544 0029D4A4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 802A0548 0029D4A8  48 07 2C F9 */	bl Scale__12CTransform4fFf
/* 802A054C 0029D4AC  38 61 00 E4 */	addi r3, r1, 0xe4
/* 802A0550 0029D4B0  38 9C 00 34 */	addi r4, r28, 0x34
/* 802A0554 0029D4B4  38 A1 00 B4 */	addi r5, r1, 0xb4
/* 802A0558 0029D4B8  48 07 23 F9 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 802A055C 0029D4BC  38 61 00 6C */	addi r3, r1, 0x6c
/* 802A0560 0029D4C0  38 81 00 60 */	addi r4, r1, 0x60
/* 802A0564 0029D4C4  38 A1 00 54 */	addi r5, r1, 0x54
/* 802A0568 0029D4C8  48 09 7F A1 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 802A056C 0029D4CC  7C 64 1B 78 */	mr r4, r3
/* 802A0570 0029D4D0  38 61 00 84 */	addi r3, r1, 0x84
/* 802A0574 0029D4D4  38 A1 00 E4 */	addi r5, r1, 0xe4
/* 802A0578 0029D4D8  48 09 73 85 */	bl GetTransformedAABox__6CAABoxCFRC12CTransform4f
/* 802A057C 0029D4DC  C0 A1 00 84 */	lfs f5, 0x84(r1)
/* 802A0580 0029D4E0  3C 60 80 3D */	lis r3, lbl_803D5EE8@ha
/* 802A0584 0029D4E4  C0 81 00 88 */	lfs f4, 0x88(r1)
/* 802A0588 0029D4E8  38 83 5E E8 */	addi r4, r3, lbl_803D5EE8@l
/* 802A058C 0029D4EC  C0 61 00 8C */	lfs f3, 0x8c(r1)
/* 802A0590 0029D4F0  38 60 01 60 */	li r3, 0x160
/* 802A0594 0029D4F4  C0 41 00 90 */	lfs f2, 0x90(r1)
/* 802A0598 0029D4F8  38 A0 00 00 */	li r5, 0
/* 802A059C 0029D4FC  C0 21 00 94 */	lfs f1, 0x94(r1)
/* 802A05A0 0029D500  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 802A05A4 0029D504  D0 A1 00 9C */	stfs f5, 0x9c(r1)
/* 802A05A8 0029D508  D0 81 00 A0 */	stfs f4, 0xa0(r1)
/* 802A05AC 0029D50C  D0 61 00 A4 */	stfs f3, 0xa4(r1)
/* 802A05B0 0029D510  D0 41 00 A8 */	stfs f2, 0xa8(r1)
/* 802A05B4 0029D514  D0 21 00 AC */	stfs f1, 0xac(r1)
/* 802A05B8 0029D518  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 802A05BC 0029D51C  48 07 52 B1 */	bl __nw__FUlPCcPCc
/* 802A05C0 0029D520  7C 64 1B 79 */	or. r4, r3, r3
/* 802A05C4 0029D524  41 82 00 A0 */	beq lbl_802A0664
/* 802A05C8 0029D528  88 9C 04 10 */	lbz r4, 0x410(r28)
/* 802A05CC 0029D52C  7F EA FB 78 */	mr r10, r31
/* 802A05D0 0029D530  C0 9C 04 08 */	lfs f4, 0x408(r28)
/* 802A05D4 0029D534  39 3C 00 34 */	addi r9, r28, 0x34
/* 802A05D8 0029D538  C0 7C 04 04 */	lfs f3, 0x404(r28)
/* 802A05DC 0029D53C  54 97 E7 FE */	rlwinm r23, r4, 0x1c, 0x1f, 0x1f
/* 802A05E0 0029D540  C0 5C 04 00 */	lfs f2, 0x400(r28)
/* 802A05E4 0029D544  54 99 CF FE */	rlwinm r25, r4, 0x19, 0x1f, 0x1f
/* 802A05E8 0029D548  C0 22 C1 10 */	lfs f1, lbl_805ADE30@sda21(r2)
/* 802A05EC 0029D54C  54 9A D7 FE */	rlwinm r26, r4, 0x1a, 0x1f, 0x1f
/* 802A05F0 0029D550  83 1C 04 0C */	lwz r24, 0x40c(r28)
/* 802A05F4 0029D554  54 9B DF FE */	rlwinm r27, r4, 0x1b, 0x1f, 0x1f
/* 802A05F8 0029D558  A1 81 00 3C */	lhz r12, 0x3c(r1)
/* 802A05FC 0029D55C  38 9C 03 DC */	addi r4, r28, 0x3dc
/* 802A0600 0029D560  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 802A0604 0029D564  39 61 00 9C */	addi r11, r1, 0x9c
/* 802A0608 0029D568  38 01 00 48 */	addi r0, r1, 0x48
/* 802A060C 0029D56C  38 A1 00 28 */	addi r5, r1, 0x28
/* 802A0610 0029D570  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 802A0614 0029D574  38 C1 00 44 */	addi r6, r1, 0x44
/* 802A0618 0029D578  39 01 00 30 */	addi r8, r1, 0x30
/* 802A061C 0029D57C  38 E0 00 01 */	li r7, 1
/* 802A0620 0029D580  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 802A0624 0029D584  A3 FC 00 08 */	lhz r31, 8(r28)
/* 802A0628 0029D588  B3 E1 00 30 */	sth r31, 0x30(r1)
/* 802A062C 0029D58C  83 9C 00 04 */	lwz r28, 4(r28)
/* 802A0630 0029D590  B3 E1 00 2C */	sth r31, 0x2c(r1)
/* 802A0634 0029D594  93 81 00 44 */	stw r28, 0x44(r1)
/* 802A0638 0029D598  B1 81 00 28 */	sth r12, 0x28(r1)
/* 802A063C 0029D59C  91 61 00 08 */	stw r11, 8(r1)
/* 802A0640 0029D5A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 802A0644 0029D5A4  92 E1 00 10 */	stw r23, 0x10(r1)
/* 802A0648 0029D5A8  93 01 00 14 */	stw r24, 0x14(r1)
/* 802A064C 0029D5AC  93 21 00 18 */	stw r25, 0x18(r1)
/* 802A0650 0029D5B0  93 41 00 1C */	stw r26, 0x1c(r1)
/* 802A0654 0029D5B4  93 81 00 40 */	stw r28, 0x40(r1)
/* 802A0658 0029D5B8  93 61 00 20 */	stw r27, 0x20(r1)
/* 802A065C 0029D5BC  4B FB CB 81 */	bl "__ct__5CFireF25TToken<15CGenDescription>9TUniqueId7TAreaIdb9TUniqueIdRC12CTransform4fRC11CDamageInfoRC6CAABoxRC9CVector3fbUibbbffff"
/* 802A0660 0029D5C0  7C 64 1B 78 */	mr r4, r3
lbl_802A0664:
/* 802A0664 0029D5C4  28 04 00 00 */	cmplwi r4, 0
/* 802A0668 0029D5C8  41 82 00 0C */	beq lbl_802A0674
/* 802A066C 0029D5CC  7F A3 EB 78 */	mr r3, r29
/* 802A0670 0029D5D0  4B DA C6 85 */	bl AddObject__13CStateManagerFP7CEntity
lbl_802A0674:
/* 802A0674 0029D5D4  7F C3 F3 78 */	mr r3, r30
/* 802A0678 0029D5D8  BA E1 01 1C */	lmw r23, 0x11c(r1)
/* 802A067C 0029D5DC  80 01 01 44 */	lwz r0, 0x144(r1)
/* 802A0680 0029D5E0  7C 08 03 A6 */	mtlr r0
/* 802A0684 0029D5E4  38 21 01 40 */	addi r1, r1, 0x140
/* 802A0688 0029D5E8  4E 80 00 20 */	blr

.global Accept__23CMetroidPrimeProjectileFR8IVisitor
Accept__23CMetroidPrimeProjectileFR8IVisitor:
/* 802A068C 0029D5EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A0690 0029D5F0  7C 08 02 A6 */	mflr r0
/* 802A0694 0029D5F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A0698 0029D5F8  7C 60 1B 78 */	mr r0, r3
/* 802A069C 0029D5FC  7C 83 23 78 */	mr r3, r4
/* 802A06A0 0029D600  81 84 00 00 */	lwz r12, 0(r4)
/* 802A06A4 0029D604  7C 04 03 78 */	mr r4, r0
/* 802A06A8 0029D608  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802A06AC 0029D60C  7D 89 03 A6 */	mtctr r12
/* 802A06B0 0029D610  4E 80 04 21 */	bctrl
/* 802A06B4 0029D614  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A06B8 0029D618  7C 08 03 A6 */	mtlr r0
/* 802A06BC 0029D61C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A06C0 0029D620  4E 80 00 20 */	blr

.global "__ct__23CMetroidPrimeProjectileFbRC28TToken<18CWeaponDescription>11EWeaponTypeRC12CTransform4f14EMaterialTypesRC11CDamageInfo9TUniqueId7TAreaId9TUniqueIdUi9TUniqueIdUiRC9CVector3fRCQ24rstl50optional_object<31TLockedToken<15CGenDescription>>sb"
"__ct__23CMetroidPrimeProjectileFbRC28TToken<18CWeaponDescription>11EWeaponTypeRC12CTransform4f14EMaterialTypesRC11CDamageInfo9TUniqueId7TAreaId9TUniqueIdUi9TUniqueIdUiRC9CVector3fRCQ24rstl50optional_object<31TLockedToken<15CGenDescription>>sb":
/* 802A06C4 0029D624  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802A06C8 0029D628  7C 08 02 A6 */	mflr r0
/* 802A06CC 0029D62C  90 01 00 64 */	stw r0, 0x64(r1)
/* 802A06D0 0029D630  39 81 00 34 */	addi r12, r1, 0x34
/* 802A06D4 0029D634  81 61 00 74 */	lwz r11, 0x74(r1)
/* 802A06D8 0029D638  38 00 00 00 */	li r0, 0
/* 802A06DC 0029D63C  BF 01 00 40 */	stmw r24, 0x40(r1)
/* 802A06E0 0029D640  3B C1 00 3C */	addi r30, r1, 0x3c
/* 802A06E4 0029D644  83 01 00 6C */	lwz r24, 0x6c(r1)
/* 802A06E8 0029D648  7C 7F 1B 78 */	mr r31, r3
/* 802A06EC 0029D64C  83 41 00 68 */	lwz r26, 0x68(r1)
/* 802A06F0 0029D650  83 21 00 7C */	lwz r25, 0x7c(r1)
/* 802A06F4 0029D654  A3 61 00 86 */	lhz r27, 0x86(r1)
/* 802A06F8 0029D658  A3 AA 00 00 */	lhz r29, 0(r10)
/* 802A06FC 0029D65C  A1 4B 00 00 */	lhz r10, 0(r11)
/* 802A0700 0029D660  39 61 00 30 */	addi r11, r1, 0x30
/* 802A0704 0029D664  B1 41 00 30 */	sth r10, 0x30(r1)
/* 802A0708 0029D668  39 41 00 38 */	addi r10, r1, 0x38
/* 802A070C 0029D66C  A3 98 00 00 */	lhz r28, 0(r24)
/* 802A0710 0029D670  83 01 00 78 */	lwz r24, 0x78(r1)
/* 802A0714 0029D674  B3 81 00 34 */	sth r28, 0x34(r1)
/* 802A0718 0029D678  83 9A 00 00 */	lwz r28, 0(r26)
/* 802A071C 0029D67C  83 41 00 80 */	lwz r26, 0x80(r1)
/* 802A0720 0029D680  93 81 00 3C */	stw r28, 0x3c(r1)
/* 802A0724 0029D684  8B 81 00 8B */	lbz r28, 0x8b(r1)
/* 802A0728 0029D688  B3 A1 00 38 */	sth r29, 0x38(r1)
/* 802A072C 0029D68C  83 A1 00 70 */	lwz r29, 0x70(r1)
/* 802A0730 0029D690  93 C1 00 08 */	stw r30, 8(r1)
/* 802A0734 0029D694  91 81 00 0C */	stw r12, 0xc(r1)
/* 802A0738 0029D698  91 61 00 10 */	stw r11, 0x10(r1)
/* 802A073C 0029D69C  93 01 00 14 */	stw r24, 0x14(r1)
/* 802A0740 0029D6A0  90 01 00 18 */	stw r0, 0x18(r1)
/* 802A0744 0029D6A4  93 21 00 1C */	stw r25, 0x1c(r1)
/* 802A0748 0029D6A8  93 41 00 20 */	stw r26, 0x20(r1)
/* 802A074C 0029D6AC  93 61 00 24 */	stw r27, 0x24(r1)
/* 802A0750 0029D6B0  93 81 00 28 */	stw r28, 0x28(r1)
/* 802A0754 0029D6B4  4B F7 4F 45 */	bl "__ct__17CEnergyProjectileFbRC28TToken<18CWeaponDescription>11EWeaponTypeRC12CTransform4f14EMaterialTypesRC11CDamageInfo9TUniqueId7TAreaId9TUniqueId9TUniqueIdUibRC9CVector3fRCQ24rstl50optional_object<31TLockedToken<15CGenDescription>>sb"
/* 802A0758 0029D6B8  3C 80 80 3F */	lis r4, lbl_803EC390@ha
/* 802A075C 0029D6BC  38 7F 03 DC */	addi r3, r31, 0x3dc
/* 802A0760 0029D6C0  38 04 C3 90 */	addi r0, r4, lbl_803EC390@l
/* 802A0764 0029D6C4  38 9D 00 04 */	addi r4, r29, 4
/* 802A0768 0029D6C8  90 1F 00 00 */	stw r0, 0(r31)
/* 802A076C 0029D6CC  80 1D 00 00 */	lwz r0, 0(r29)
/* 802A0770 0029D6D0  90 1F 03 D8 */	stw r0, 0x3d8(r31)
/* 802A0774 0029D6D4  48 0A 07 35 */	bl __ct__6CTokenFRC6CToken
/* 802A0778 0029D6D8  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 802A077C 0029D6DC  7F E3 FB 78 */	mr r3, r31
/* 802A0780 0029D6E0  90 1F 03 E4 */	stw r0, 0x3e4(r31)
/* 802A0784 0029D6E4  88 1D 00 10 */	lbz r0, 0x10(r29)
/* 802A0788 0029D6E8  98 1F 03 E8 */	stb r0, 0x3e8(r31)
/* 802A078C 0029D6EC  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 802A0790 0029D6F0  D0 1F 03 EC */	stfs f0, 0x3ec(r31)
/* 802A0794 0029D6F4  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 802A0798 0029D6F8  D0 1F 03 F0 */	stfs f0, 0x3f0(r31)
/* 802A079C 0029D6FC  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 802A07A0 0029D700  D0 1F 03 F4 */	stfs f0, 0x3f4(r31)
/* 802A07A4 0029D704  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 802A07A8 0029D708  D0 1F 03 F8 */	stfs f0, 0x3f8(r31)
/* 802A07AC 0029D70C  88 1D 00 24 */	lbz r0, 0x24(r29)
/* 802A07B0 0029D710  98 1F 03 FC */	stb r0, 0x3fc(r31)
/* 802A07B4 0029D714  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 802A07B8 0029D718  D0 1F 04 00 */	stfs f0, 0x400(r31)
/* 802A07BC 0029D71C  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 802A07C0 0029D720  D0 1F 04 04 */	stfs f0, 0x404(r31)
/* 802A07C4 0029D724  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 802A07C8 0029D728  D0 1F 04 08 */	stfs f0, 0x408(r31)
/* 802A07CC 0029D72C  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 802A07D0 0029D730  90 1F 04 0C */	stw r0, 0x40c(r31)
/* 802A07D4 0029D734  88 1D 00 38 */	lbz r0, 0x38(r29)
/* 802A07D8 0029D738  98 1F 04 10 */	stb r0, 0x410(r31)
/* 802A07DC 0029D73C  BB 01 00 40 */	lmw r24, 0x40(r1)
/* 802A07E0 0029D740  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802A07E4 0029D744  7C 08 03 A6 */	mtlr r0
/* 802A07E8 0029D748  38 21 00 60 */	addi r1, r1, 0x60
/* 802A07EC 0029D74C  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805ADE30
lbl_805ADE30:
	# ROM: 0x3FA6D0
	.float 1.0

.global lbl_805ADE34
lbl_805ADE34:
	# ROM: 0x3FA6D4
	.float -1.0


.section .rodata
.balign 8
.global lbl_803D5EE8
lbl_803D5EE8:
	# ROM: 0x3D2EE8
	.asciz "??(??)"
	.balign 4
