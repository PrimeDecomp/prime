.include "macros.inc"

.section .data
.balign 8

.global lbl_803E3DA8
lbl_803E3DA8:
	# ROM: 0x3E0DA8
	.4byte 0
	.4byte 0
	.4byte __dt__12CScriptSteamFv
	.4byte Accept__12CScriptSteamFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__12CScriptSteamFfR13CStateManager
	.4byte AcceptScriptMsg__12CScriptSteamF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFUc
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
	.4byte InhabitantAdded__14CScriptTriggerFR6CActorR13CStateManager
	.4byte InhabitantIdle__14CScriptTriggerFR6CActorR13CStateManager
	.4byte InhabitantExited__14CScriptTriggerFR6CActorR13CStateManager
	.4byte InhabitantRejected__14CScriptTriggerFR6CActorR13CStateManager
	.4byte 0

.section .text, "ax"

.global Accept__12CScriptSteamFR8IVisitor
Accept__12CScriptSteamFR8IVisitor:
/* 80174B10 00171A70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80174B14 00171A74  7C 08 02 A6 */	mflr r0
/* 80174B18 00171A78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80174B1C 00171A7C  7C 60 1B 78 */	mr r0, r3
/* 80174B20 00171A80  7C 83 23 78 */	mr r3, r4
/* 80174B24 00171A84  81 84 00 00 */	lwz r12, 0(r4)
/* 80174B28 00171A88  7C 04 03 78 */	mr r4, r0
/* 80174B2C 00171A8C  81 8C 00 CC */	lwz r12, 0xcc(r12)
/* 80174B30 00171A90  7D 89 03 A6 */	mtctr r12
/* 80174B34 00171A94  4E 80 04 21 */	bctrl
/* 80174B38 00171A98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80174B3C 00171A9C  7C 08 03 A6 */	mtlr r0
/* 80174B40 00171AA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80174B44 00171AA4  4E 80 00 20 */	blr

.global Think__12CScriptSteamFfR13CStateManager
Think__12CScriptSteamFfR13CStateManager:
/* 80174B48 00171AA8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80174B4C 00171AAC  7C 08 02 A6 */	mflr r0
/* 80174B50 00171AB0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80174B54 00171AB4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80174B58 00171AB8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 80174B5C 00171ABC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80174B60 00171AC0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80174B64 00171AC4  88 03 00 30 */	lbz r0, 0x30(r3)
/* 80174B68 00171AC8  7C 7E 1B 78 */	mr r30, r3
/* 80174B6C 00171ACC  7C 9F 23 78 */	mr r31, r4
/* 80174B70 00171AD0  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80174B74 00171AD4  41 82 01 04 */	beq lbl_80174C78
/* 80174B78 00171AD8  4B F0 19 55 */	bl Think__14CScriptTriggerFfR13CStateManager
/* 80174B7C 00171ADC  88 1E 01 48 */	lbz r0, 0x148(r30)
/* 80174B80 00171AE0  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 80174B84 00171AE4  41 82 00 D0 */	beq lbl_80174C54
/* 80174B88 00171AE8  80 7F 08 70 */	lwz r3, 0x870(r31)
/* 80174B8C 00171AEC  80 03 00 74 */	lwz r0, 0x74(r3)
/* 80174B90 00171AF0  2C 00 00 00 */	cmpwi r0, 0
/* 80174B94 00171AF4  40 82 00 C0 */	bne lbl_80174C54
/* 80174B98 00171AF8  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 80174B9C 00171AFC  38 61 00 14 */	addi r3, r1, 0x14
/* 80174BA0 00171B00  48 11 01 DD */	bl GetEyePosition__7CPlayerCFv
/* 80174BA4 00171B04  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80174BA8 00171B08  38 61 00 08 */	addi r3, r1, 8
/* 80174BAC 00171B0C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80174BB0 00171B10  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 80174BB4 00171B14  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 80174BB8 00171B18  EC 81 00 28 */	fsubs f4, f1, f0
/* 80174BBC 00171B1C  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80174BC0 00171B20  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80174BC4 00171B24  EC 43 10 28 */	fsubs f2, f3, f2
/* 80174BC8 00171B28  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 80174BCC 00171B2C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80174BD0 00171B30  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80174BD4 00171B34  D0 01 00 08 */	stfs f0, 8(r1)
/* 80174BD8 00171B38  48 19 FC E1 */	bl Magnitude__9CVector3fCFv
/* 80174BDC 00171B3C  C0 1E 01 64 */	lfs f0, 0x164(r30)
/* 80174BE0 00171B40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80174BE4 00171B44  4C 41 13 82 */	cror 2, 1, 2
/* 80174BE8 00171B48  40 82 00 0C */	bne lbl_80174BF4
/* 80174BEC 00171B4C  C3 E2 A1 50 */	lfs f31, lbl_805ABE70@sda21(r2)
/* 80174BF0 00171B50  48 00 00 20 */	b lbl_80174C10
lbl_80174BF4:
/* 80174BF4 00171B54  C0 42 A1 54 */	lfs f2, lbl_805ABE74@sda21(r2)
/* 80174BF8 00171B58  C0 1E 01 68 */	lfs f0, 0x168(r30)
/* 80174BFC 00171B5C  EC 22 00 72 */	fmuls f1, f2, f1
/* 80174C00 00171B60  C3 FE 01 58 */	lfs f31, 0x158(r30)
/* 80174C04 00171B64  EC 21 00 32 */	fmuls f1, f1, f0
/* 80174C08 00171B68  48 1A 01 3D */	bl FastCosR__5CMathFf
/* 80174C0C 00171B6C  EF E1 07 F2 */	fmuls f31, f1, f31
lbl_80174C10:
/* 80174C10 00171B70  88 1E 01 50 */	lbz r0, 0x150(r30)
/* 80174C14 00171B74  FC 20 F8 90 */	fmr f1, f31
/* 80174C18 00171B78  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 80174C1C 00171B7C  7C 00 00 34 */	cntlzw r0, r0
/* 80174C20 00171B80  C0 5E 01 5C */	lfs f2, 0x15c(r30)
/* 80174C24 00171B84  C0 7E 01 60 */	lfs f3, 0x160(r30)
/* 80174C28 00171B88  54 05 D9 7E */	srwi r5, r0, 5
/* 80174C2C 00171B8C  80 9E 01 54 */	lwz r4, 0x154(r30)
/* 80174C30 00171B90  4B EA 2E 85 */	bl SetVisorSteam__7CPlayerFfffUib
/* 80174C34 00171B94  88 1E 01 50 */	lbz r0, 0x150(r30)
/* 80174C38 00171B98  28 00 00 00 */	cmplwi r0, 0
/* 80174C3C 00171B9C  41 82 00 3C */	beq lbl_80174C78
/* 80174C40 00171BA0  C0 02 A1 58 */	lfs f0, lbl_805ABE78@sda21(r2)
/* 80174C44 00171BA4  80 7F 08 80 */	lwz r3, 0x880(r31)
/* 80174C48 00171BA8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80174C4C 00171BAC  D0 03 0B 54 */	stfs f0, 0xb54(r3)
/* 80174C50 00171BB0  48 00 00 28 */	b lbl_80174C78
lbl_80174C54:
/* 80174C54 00171BB4  88 1E 01 50 */	lbz r0, 0x150(r30)
/* 80174C58 00171BB8  38 80 FF FF */	li r4, -1
/* 80174C5C 00171BBC  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 80174C60 00171BC0  7C 00 00 34 */	cntlzw r0, r0
/* 80174C64 00171BC4  C0 22 A1 50 */	lfs f1, lbl_805ABE70@sda21(r2)
/* 80174C68 00171BC8  C0 5E 01 5C */	lfs f2, 0x15c(r30)
/* 80174C6C 00171BCC  54 05 D9 7E */	srwi r5, r0, 5
/* 80174C70 00171BD0  C0 7E 01 60 */	lfs f3, 0x160(r30)
/* 80174C74 00171BD4  4B EA 2E 41 */	bl SetVisorSteam__7CPlayerFfffUib
lbl_80174C78:
/* 80174C78 00171BD8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 80174C7C 00171BDC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80174C80 00171BE0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80174C84 00171BE4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80174C88 00171BE8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80174C8C 00171BEC  7C 08 03 A6 */	mtlr r0
/* 80174C90 00171BF0  38 21 00 40 */	addi r1, r1, 0x40
/* 80174C94 00171BF4  4E 80 00 20 */	blr

.global AcceptScriptMsg__12CScriptSteamF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__12CScriptSteamF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 80174C98 00171BF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80174C9C 00171BFC  7C 08 02 A6 */	mflr r0
/* 80174CA0 00171C00  90 01 00 24 */	stw r0, 0x24(r1)
/* 80174CA4 00171C04  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80174CA8 00171C08  7C DF 33 78 */	mr r31, r6
/* 80174CAC 00171C0C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80174CB0 00171C10  7C BE 2B 78 */	mr r30, r5
/* 80174CB4 00171C14  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80174CB8 00171C18  7C 9D 23 78 */	mr r29, r4
/* 80174CBC 00171C1C  2C 1D 00 04 */	cmpwi r29, 4
/* 80174CC0 00171C20  93 81 00 10 */	stw r28, 0x10(r1)
/* 80174CC4 00171C24  7C 7C 1B 78 */	mr r28, r3
/* 80174CC8 00171C28  41 82 00 08 */	beq lbl_80174CD0
/* 80174CCC 00171C2C  48 00 00 28 */	b lbl_80174CF4
lbl_80174CD0:
/* 80174CD0 00171C30  88 1C 01 50 */	lbz r0, 0x150(r28)
/* 80174CD4 00171C34  38 80 FF FF */	li r4, -1
/* 80174CD8 00171C38  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 80174CDC 00171C3C  7C 00 00 34 */	cntlzw r0, r0
/* 80174CE0 00171C40  C0 22 A1 50 */	lfs f1, lbl_805ABE70@sda21(r2)
/* 80174CE4 00171C44  C0 5C 01 5C */	lfs f2, 0x15c(r28)
/* 80174CE8 00171C48  54 05 D9 7E */	srwi r5, r0, 5
/* 80174CEC 00171C4C  C0 7C 01 60 */	lfs f3, 0x160(r28)
/* 80174CF0 00171C50  4B EA 2D C5 */	bl SetVisorSteam__7CPlayerFfffUib
lbl_80174CF4:
/* 80174CF4 00171C54  A0 1E 00 00 */	lhz r0, 0(r30)
/* 80174CF8 00171C58  7F 83 E3 78 */	mr r3, r28
/* 80174CFC 00171C5C  7F A4 EB 78 */	mr r4, r29
/* 80174D00 00171C60  7F E6 FB 78 */	mr r6, r31
/* 80174D04 00171C64  B0 01 00 08 */	sth r0, 8(r1)
/* 80174D08 00171C68  38 A1 00 08 */	addi r5, r1, 8
/* 80174D0C 00171C6C  4B F0 17 ED */	bl AcceptScriptMsg__14CScriptTriggerF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 80174D10 00171C70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80174D14 00171C74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80174D18 00171C78  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80174D1C 00171C7C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80174D20 00171C80  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80174D24 00171C84  7C 08 03 A6 */	mtlr r0
/* 80174D28 00171C88  38 21 00 20 */	addi r1, r1, 0x20
/* 80174D2C 00171C8C  4E 80 00 20 */	blr

.global __dt__12CScriptSteamFv
__dt__12CScriptSteamFv:
/* 80174D30 00171C90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80174D34 00171C94  7C 08 02 A6 */	mflr r0
/* 80174D38 00171C98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80174D3C 00171C9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80174D40 00171CA0  7C 9F 23 78 */	mr r31, r4
/* 80174D44 00171CA4  93 C1 00 08 */	stw r30, 8(r1)
/* 80174D48 00171CA8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80174D4C 00171CAC  41 82 00 28 */	beq lbl_80174D74
/* 80174D50 00171CB0  3C A0 80 3E */	lis r5, lbl_803E3DA8@ha
/* 80174D54 00171CB4  38 80 00 00 */	li r4, 0
/* 80174D58 00171CB8  38 05 3D A8 */	addi r0, r5, lbl_803E3DA8@l
/* 80174D5C 00171CBC  90 1E 00 00 */	stw r0, 0(r30)
/* 80174D60 00171CC0  4B F0 1F 21 */	bl __dt__14CScriptTriggerFv
/* 80174D64 00171CC4  7F E0 07 35 */	extsh. r0, r31
/* 80174D68 00171CC8  40 81 00 0C */	ble lbl_80174D74
/* 80174D6C 00171CCC  7F C3 F3 78 */	mr r3, r30
/* 80174D70 00171CD0  48 1A 0B C1 */	bl Free__7CMemoryFPCv
lbl_80174D74:
/* 80174D74 00171CD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80174D78 00171CD8  7F C3 F3 78 */	mr r3, r30
/* 80174D7C 00171CDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80174D80 00171CE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80174D84 00171CE4  7C 08 03 A6 */	mtlr r0
/* 80174D88 00171CE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80174D8C 00171CEC  4E 80 00 20 */	blr

.global "__ct__12CScriptSteamF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC9CVector3fRC6CAABoxRC11CDamageInfoRC9CVector3fUibUiffff"
"__ct__12CScriptSteamF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC9CVector3fRC6CAABoxRC11CDamageInfoRC9CVector3fUibUiffff":
/* 80174D90 00171CF0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80174D94 00171CF4  7C 08 02 A6 */	mflr r0
/* 80174D98 00171CF8  90 01 00 74 */	stw r0, 0x74(r1)
/* 80174D9C 00171CFC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80174DA0 00171D00  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 80174DA4 00171D04  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80174DA8 00171D08  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 80174DAC 00171D0C  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 80174DB0 00171D10  F3 A1 00 48 */	psq_st f29, 72(r1), 0, qr0
/* 80174DB4 00171D14  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80174DB8 00171D18  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80174DBC 00171D1C  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80174DC0 00171D20  93 81 00 30 */	stw r28, 0x30(r1)
/* 80174DC4 00171D24  A0 84 00 00 */	lhz r4, 0(r4)
/* 80174DC8 00171D28  38 00 00 00 */	li r0, 0
/* 80174DCC 00171D2C  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 80174DD0 00171D30  FF A0 08 90 */	fmr f29, f1
/* 80174DD4 00171D34  81 61 00 78 */	lwz r11, 0x78(r1)
/* 80174DD8 00171D38  FF C0 10 90 */	fmr f30, f2
/* 80174DDC 00171D3C  B0 81 00 1C */	sth r4, 0x1c(r1)
/* 80174DE0 00171D40  FF E0 18 90 */	fmr f31, f3
/* 80174DE4 00171D44  88 81 00 7F */	lbz r4, 0x7f(r1)
/* 80174DE8 00171D48  91 61 00 08 */	stw r11, 8(r1)
/* 80174DEC 00171D4C  7C 7C 1B 78 */	mr r28, r3
/* 80174DF0 00171D50  83 C1 00 80 */	lwz r30, 0x80(r1)
/* 80174DF4 00171D54  7D 1D 43 78 */	mr r29, r8
/* 80174DF8 00171D58  90 81 00 0C */	stw r4, 0xc(r1)
/* 80174DFC 00171D5C  38 81 00 1C */	addi r4, r1, 0x1c
/* 80174E00 00171D60  8B E1 00 87 */	lbz r31, 0x87(r1)
/* 80174E04 00171D64  90 01 00 10 */	stw r0, 0x10(r1)
/* 80174E08 00171D68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80174E0C 00171D6C  4B F0 1F 4D */	bl "__ct__14CScriptTriggerF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC9CVector3fRC6CAABoxRC11CDamageInfoRC9CVector3fUibbb"
/* 80174E10 00171D70  EC 5E E8 24 */	fdivs f2, f30, f29
/* 80174E14 00171D74  3C 60 80 3E */	lis r3, lbl_803E3DA8@ha
/* 80174E18 00171D78  38 03 3D A8 */	addi r0, r3, lbl_803E3DA8@l
/* 80174E1C 00171D7C  C0 02 A1 50 */	lfs f0, lbl_805ABE70@sda21(r2)
/* 80174E20 00171D80  90 1C 00 00 */	stw r0, 0(r28)
/* 80174E24 00171D84  9B FC 01 50 */	stb r31, 0x150(r28)
/* 80174E28 00171D88  93 DC 01 54 */	stw r30, 0x154(r28)
/* 80174E2C 00171D8C  EC 3F E8 24 */	fdivs f1, f31, f29
/* 80174E30 00171D90  D3 BC 01 58 */	stfs f29, 0x158(r28)
/* 80174E34 00171D94  D0 5C 01 5C */	stfs f2, 0x15c(r28)
/* 80174E38 00171D98  D0 3C 01 60 */	stfs f1, 0x160(r28)
/* 80174E3C 00171D9C  D0 1C 01 64 */	stfs f0, 0x164(r28)
/* 80174E40 00171DA0  D0 1C 01 68 */	stfs f0, 0x168(r28)
/* 80174E44 00171DA4  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 80174E48 00171DA8  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 80174E4C 00171DAC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80174E50 00171DB0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80174E54 00171DB4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80174E58 00171DB8  40 80 00 0C */	bge lbl_80174E64
/* 80174E5C 00171DBC  38 61 00 20 */	addi r3, r1, 0x20
/* 80174E60 00171DC0  48 00 00 08 */	b lbl_80174E68
lbl_80174E64:
/* 80174E64 00171DC4  38 61 00 24 */	addi r3, r1, 0x24
lbl_80174E68:
/* 80174E68 00171DC8  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 80174E6C 00171DCC  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80174E70 00171DD0  C0 03 00 00 */	lfs f0, 0(r3)
/* 80174E74 00171DD4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80174E78 00171DD8  40 80 00 08 */	bge lbl_80174E80
/* 80174E7C 00171DDC  48 00 00 08 */	b lbl_80174E84
lbl_80174E80:
/* 80174E80 00171DE0  38 61 00 28 */	addi r3, r1, 0x28
lbl_80174E84:
/* 80174E84 00171DE4  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80174E88 00171DE8  C0 02 A1 50 */	lfs f0, lbl_805ABE70@sda21(r2)
/* 80174E8C 00171DEC  C0 63 00 00 */	lfs f3, 0(r3)
/* 80174E90 00171DF0  EC 22 00 28 */	fsubs f1, f2, f0
/* 80174E94 00171DF4  C8 02 A1 60 */	lfd f0, lbl_805ABE80@sda21(r2)
/* 80174E98 00171DF8  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 80174E9C 00171DFC  FC 20 0A 10 */	fabs f1, f1
/* 80174EA0 00171E00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80174EA4 00171E04  40 80 00 08 */	bge lbl_80174EAC
/* 80174EA8 00171E08  48 00 00 1C */	b lbl_80174EC4
lbl_80174EAC:
/* 80174EAC 00171E0C  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 80174EB0 00171E10  40 80 00 0C */	bge lbl_80174EBC
/* 80174EB4 00171E14  38 61 00 2C */	addi r3, r1, 0x2c
/* 80174EB8 00171E18  48 00 00 08 */	b lbl_80174EC0
lbl_80174EBC:
/* 80174EBC 00171E1C  38 61 00 18 */	addi r3, r1, 0x18
lbl_80174EC0:
/* 80174EC0 00171E20  C0 63 00 00 */	lfs f3, 0(r3)
lbl_80174EC4:
/* 80174EC4 00171E24  D0 7C 01 64 */	stfs f3, 0x164(r28)
/* 80174EC8 00171E28  7F 83 E3 78 */	mr r3, r28
/* 80174ECC 00171E2C  C0 22 A1 68 */	lfs f1, lbl_805ABE88@sda21(r2)
/* 80174ED0 00171E30  C0 1C 01 64 */	lfs f0, 0x164(r28)
/* 80174ED4 00171E34  EC 01 00 24 */	fdivs f0, f1, f0
/* 80174ED8 00171E38  D0 1C 01 68 */	stfs f0, 0x168(r28)
/* 80174EDC 00171E3C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 80174EE0 00171E40  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80174EE4 00171E44  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 80174EE8 00171E48  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80174EEC 00171E4C  E3 A1 00 48 */	psq_l f29, 72(r1), 0, qr0
/* 80174EF0 00171E50  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80174EF4 00171E54  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80174EF8 00171E58  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80174EFC 00171E5C  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80174F00 00171E60  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80174F04 00171E64  83 81 00 30 */	lwz r28, 0x30(r1)
/* 80174F08 00171E68  7C 08 03 A6 */	mtlr r0
/* 80174F0C 00171E6C  38 21 00 70 */	addi r1, r1, 0x70
/* 80174F10 00171E70  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805ABE70
lbl_805ABE70:
	# ROM: 0x3F8710
	.4byte 0

.global lbl_805ABE74
lbl_805ABE74:
	# ROM: 0x3F8714
	.4byte 0x3FC90FDB

.global lbl_805ABE78
lbl_805ABE78:
	# ROM: 0x3F8718
	.float 2.0
	.4byte 0

.global lbl_805ABE80
lbl_805ABE80:
	# ROM: 0x3F8720
	.double 9.999999747378752E-6

.global lbl_805ABE88
lbl_805ABE88:
	# ROM: 0x3F8728
	.float 1.0
	.4byte 0
