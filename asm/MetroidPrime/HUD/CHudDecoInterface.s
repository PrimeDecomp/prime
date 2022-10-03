.include "macros.inc"

.section .data
.balign 8

.global lbl_803E4470
lbl_803E4470:
	# ROM: 0x3E1470
	.4byte 0
	.4byte 0
	.4byte SetFreeLookState__21CHudFreeLookInterfaceFbbbf
	.4byte SetIsVisibleDebug__21CHudFreeLookInterfaceFb
	.4byte SetIsVisibleGame__21CHudFreeLookInterfaceFb
	.4byte Update__21CHudFreeLookInterfaceFf
	.4byte __dt__21CHudFreeLookInterfaceFv

.global lbl_803E448C
lbl_803E448C:
	# ROM: 0x3E148C
	.4byte 0
	.4byte 0
	.4byte SetFreeLookState__25CHudFreeLookInterfaceXRayFbbbf
	.4byte SetIsVisibleDebug__25CHudFreeLookInterfaceXRayFb
	.4byte SetIsVisibleGame__25CHudFreeLookInterfaceXRayFb
	.4byte Update__25CHudFreeLookInterfaceXRayFf
	.4byte __dt__25CHudFreeLookInterfaceXRayFv

.global lbl_803E44A8
lbl_803E44A8:
	# ROM: 0x3E14A8
	.4byte 0
	.4byte 0
	.4byte SetThreatDistance__19CHudThreatInterfaceFf
	.4byte Update__19CHudThreatInterfaceFf
	.4byte SetIsVisibleDebug__19CHudThreatInterfaceFb
	.4byte SetIsVisibleGame__19CHudThreatInterfaceFb
	.4byte __dt__19CHudThreatInterfaceFv
	.4byte 0

.global lbl_803E44C8
lbl_803E44C8:
	# ROM: 0x3E14C8
	.4byte 0
	.4byte 0
	.4byte SetIsVisibleDebug__24CHudDecoInterfaceThermalFb
	.4byte SetIsVisibleGame__24CHudDecoInterfaceThermalFb
	.4byte SetHudRotation__24CHudDecoInterfaceThermalFRC11CQuaternion
	.4byte SetHudOffset__24CHudDecoInterfaceThermalFRC9CVector3f
	.4byte SetReticuleTransform__24CHudDecoInterfaceThermalFRC9CMatrix3f
	.4byte SetDecoRotation__17IHudDecoInterfaceFf
	.4byte SetDamageTransform__24CHudDecoInterfaceThermalFRC9CMatrix3fRC9CVector3f
	.4byte SetFrameColorValue__17IHudDecoInterfaceFf
	.4byte Update__24CHudDecoInterfaceThermalFfRC13CStateManager
	.4byte Draw__17IHudDecoInterfaceCFv
	.4byte ProcessInput__17IHudDecoInterfaceFRC11CFinalInput
	.4byte UpdateCameraDebugSettings__24CHudDecoInterfaceThermalFfff
	.4byte UpdateHudAlpha__24CHudDecoInterfaceThermalFv
	.4byte GetMessageTextAlpha__17IHudDecoInterfaceCFv
	.4byte __dt__24CHudDecoInterfaceThermalFv

.global lbl_803E450C
lbl_803E450C:
	# ROM: 0x3E150C
	.4byte 0
	.4byte 0
	.4byte SetIsVisibleDebug__21CHudDecoInterfaceScanFb
	.4byte SetIsVisibleGame__21CHudDecoInterfaceScanFb
	.4byte SetHudRotation__21CHudDecoInterfaceScanFRC11CQuaternion
	.4byte SetHudOffset__21CHudDecoInterfaceScanFRC9CVector3f
	.4byte SetReticuleTransform__21CHudDecoInterfaceScanFRC9CMatrix3f
	.4byte SetDecoRotation__17IHudDecoInterfaceFf
	.4byte SetDamageTransform__21CHudDecoInterfaceScanFRC9CMatrix3fRC9CVector3f
	.4byte SetFrameColorValue__21CHudDecoInterfaceScanFf
	.4byte Update__21CHudDecoInterfaceScanFfRC13CStateManager
	.4byte Draw__21CHudDecoInterfaceScanCFv
	.4byte ProcessInput__21CHudDecoInterfaceScanFRC11CFinalInput
	.4byte UpdateCameraDebugSettings__21CHudDecoInterfaceScanFfff
	.4byte UpdateHudAlpha__21CHudDecoInterfaceScanFv
	.4byte GetMessageTextAlpha__21CHudDecoInterfaceScanCFv
	.4byte __dt__21CHudDecoInterfaceScanFv

.global lbl_803E4550
lbl_803E4550:
	# ROM: 0x3E1550
	.4byte 0
	.4byte 0
	.4byte SetIsVisibleDebug__21CHudDecoInterfaceXrayFb
	.4byte SetIsVisibleGame__21CHudDecoInterfaceXrayFb
	.4byte SetHudRotation__21CHudDecoInterfaceXrayFRC11CQuaternion
	.4byte SetHudOffset__21CHudDecoInterfaceXrayFRC9CVector3f
	.4byte SetReticuleTransform__21CHudDecoInterfaceXrayFRC9CMatrix3f
	.4byte SetDecoRotation__21CHudDecoInterfaceXrayFf
	.4byte SetDamageTransform__21CHudDecoInterfaceXrayFRC9CMatrix3fRC9CVector3f
	.4byte SetFrameColorValue__21CHudDecoInterfaceXrayFf
	.4byte Update__21CHudDecoInterfaceXrayFfRC13CStateManager
	.4byte Draw__17IHudDecoInterfaceCFv
	.4byte ProcessInput__17IHudDecoInterfaceFRC11CFinalInput
	.4byte UpdateCameraDebugSettings__21CHudDecoInterfaceXrayFfff
	.4byte UpdateHudAlpha__21CHudDecoInterfaceXrayFv
	.4byte GetMessageTextAlpha__17IHudDecoInterfaceCFv
	.4byte __dt__21CHudDecoInterfaceXrayFv

.global lbl_803E4594
lbl_803E4594:
	# ROM: 0x3E1594
	.4byte 0
	.4byte 0
	.4byte SetIsVisibleDebug__23CHudDecoInterfaceCombatFb
	.4byte SetIsVisibleGame__23CHudDecoInterfaceCombatFb
	.4byte SetHudRotation__23CHudDecoInterfaceCombatFRC11CQuaternion
	.4byte SetHudOffset__23CHudDecoInterfaceCombatFRC9CVector3f
	.4byte SetReticuleTransform__17CHudDecoInterfaceFRC9CMatrix3f
	.4byte SetDecoRotation__17IHudDecoInterfaceFf
	.4byte SetDamageTransform__23CHudDecoInterfaceCombatFRC9CMatrix3fRC9CVector3f
	.4byte SetFrameColorValue__23CHudDecoInterfaceCombatFf
	.4byte Update__23CHudDecoInterfaceCombatFfRC13CStateManager
	.4byte Draw__17IHudDecoInterfaceCFv
	.4byte ProcessInput__17IHudDecoInterfaceFRC11CFinalInput
	.4byte UpdateCameraDebugSettings__23CHudDecoInterfaceCombatFfff
	.4byte UpdateHudAlpha__23CHudDecoInterfaceCombatFv
	.4byte GetMessageTextAlpha__17IHudDecoInterfaceCFv
	.4byte __dt__23CHudDecoInterfaceCombatFv

.section .sdata
.balign 8

.global lbl_805A7AB8
lbl_805A7AB8:
	# ROM: 0x3F5458
	.4byte 0

.global lbl_805A7ABC
lbl_805A7ABC:
	# ROM: 0x3F545C
	.float 1.0

.global lbl_805A7AC0
lbl_805A7AC0:
	# ROM: 0x3F5460
	.float 1.0

.global lbl_805A7AC4
lbl_805A7AC4:
	# ROM: 0x3F5464
	.4byte 0

.global lbl_805A7AC8
lbl_805A7AC8:
	# ROM: 0x3F5468
	.float 1.0

.global lbl_805A7ACC
lbl_805A7ACC:
	# ROM: 0x3F546C
	.4byte 0

.global lbl_805A7AD0
lbl_805A7AD0:
	# ROM: 0x3F5470
	.4byte 0
	.4byte 0

.global lbl_805A7AD8
lbl_805A7AD8:
	# ROM: 0x3F5478
	.float 1.0

.global lbl_805A7ADC
lbl_805A7ADC:
	# ROM: 0x3F547C
	.4byte 0

.global lbl_805A7AE0
lbl_805A7AE0:
	# ROM: 0x3F5480
	.float 1.0

.global lbl_805A7AE4
lbl_805A7AE4:
	# ROM: 0x3F5484
	.4byte 0

.global lbl_805A7AE8
lbl_805A7AE8:
	# ROM: 0x3F5488
	.float 1.0

.global lbl_805A7AEC
lbl_805A7AEC:
	# ROM: 0x3F548C
	.4byte 0

.global lbl_805A7AF0
lbl_805A7AF0:
	# ROM: 0x3F5490
	.4byte 0

.global lbl_805A7AF4
lbl_805A7AF4:
	# ROM: 0x3F5494
	.4byte 0x000003E7

.global lbl_805A7AF8
lbl_805A7AF8:
	# ROM: 0x3F5498
	.4byte 0

.global lbl_805A7AFC
lbl_805A7AFC:
	# ROM: 0x3F549C
	.float 1.0

.global lbl_805A7B00
lbl_805A7B00:
	# ROM: 0x3F54A0
	.4byte 0

.global lbl_805A7B04
lbl_805A7B04:
	# ROM: 0x3F54A4
	.4byte 0

.global lbl_805A7B08
lbl_805A7B08:
	# ROM: 0x3F54A8
	.4byte 0

.global lbl_805A7B0C
lbl_805A7B0C:
	# ROM: 0x3F54AC
	.4byte 0

.global lbl_805A7B10
lbl_805A7B10:
	# ROM: 0x3F54B0
	.float 1.0

.global lbl_805A7B14
lbl_805A7B14:
	# ROM: 0x3F54B4
	.float 1.0

.global lbl_805A7B18
lbl_805A7B18:
	# ROM: 0x3F54B8
	.4byte 0

.global lbl_805A7B1C
lbl_805A7B1C:
	# ROM: 0x3F54BC
	.4byte 0

.global lbl_805A7B20
lbl_805A7B20:
	# ROM: 0x3F54C0
	.4byte 0x00000028

.global lbl_805A7B24
lbl_805A7B24:
	# ROM: 0x3F54C4
	.4byte 0x00000033

.global lbl_805A7B28
lbl_805A7B28:
	# ROM: 0x3F54C8
	.4byte 0x00000039
	.4byte 0

.global lbl_805A7B30
lbl_805A7B30:
	# ROM: 0x3F54D0
	.4byte 0

.global lbl_805A7B34
lbl_805A7B34:
	# ROM: 0x3F54D4
	.4byte 0

.global lbl_805A7B38
lbl_805A7B38:
	# ROM: 0x3F54D8
	.4byte 0

.global lbl_805A7B3C
lbl_805A7B3C:
	# ROM: 0x3F54DC
	.4byte 0

.global lbl_805A7B40
lbl_805A7B40:
	# ROM: 0x3F54E0
	.float 1.0

.global lbl_805A7B44
lbl_805A7B44:
	# ROM: 0x3F54E4
	.4byte 0

.global lbl_805A7B48
lbl_805A7B48:
	# ROM: 0x3F54E8
	.float 1.0

.global lbl_805A7B4C
lbl_805A7B4C:
	# ROM: 0x3F54EC
	.4byte 0

.global lbl_805A7B50
lbl_805A7B50:
	# ROM: 0x3F54F0
	.4byte 0
	.4byte 0

.global lbl_805A7B58
lbl_805A7B58:
	# ROM: 0x3F54F8
	.float 1.0

.global lbl_805A7B5C
lbl_805A7B5C:
	# ROM: 0x3F54FC
	.4byte 0

.global lbl_805A7B60
lbl_805A7B60:
	# ROM: 0x3F5500
	.4byte 0
	.4byte 0

.global lbl_805A7B68
lbl_805A7B68:
	# ROM: 0x3F5508
	.float 1.0

.global lbl_805A7B6C
lbl_805A7B6C:
	# ROM: 0x3F550C
	.4byte 0

.global lbl_805A7B70
lbl_805A7B70:
	# ROM: 0x3F5510
	.4byte 0

.global lbl_805A7B74
lbl_805A7B74:
	# ROM: 0x3F5514
	.float 1.0

.global lbl_805A7B78
lbl_805A7B78:
	# ROM: 0x3F5518
	.float 1.0

.global lbl_805A7B7C
lbl_805A7B7C:
	# ROM: 0x3F551C
	.4byte 0

.global lbl_805A7B80
lbl_805A7B80:
	# ROM: 0x3F5520
	.float 1.0

.global lbl_805A7B84
lbl_805A7B84:
	# ROM: 0x3F5524
	.float 1.0

.global lbl_805A7B88
lbl_805A7B88:
	# ROM: 0x3F5528
	.float 1.0

.global lbl_805A7B8C
lbl_805A7B8C:
	# ROM: 0x3F552C
	.4byte 0

.section .text, "ax"

.global Update__23CHudBossEnergyInterfaceFf
Update__23CHudBossEnergyInterfaceFf:
/* 8018F364 0018C2C4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8018F368 0018C2C8  7C 08 02 A6 */	mflr r0
/* 8018F36C 0018C2CC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8018F370 0018C2D0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8018F374 0018C2D4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 8018F378 0018C2D8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8018F37C 0018C2DC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 8018F380 0018C2E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8018F384 0018C2E4  88 03 00 10 */	lbz r0, 0x10(r3)
/* 8018F388 0018C2E8  7C 7F 1B 78 */	mr r31, r3
/* 8018F38C 0018C2EC  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8018F390 0018C2F0  41 82 00 34 */	beq lbl_8018F3C4
/* 8018F394 0018C2F4  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8018F398 0018C2F8  C0 0D 8F 08 */	lfs f0, lbl_805A7AC8@sda21(r13)
/* 8018F39C 0018C2FC  EC 22 08 2A */	fadds f1, f2, f1
/* 8018F3A0 0018C300  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8018F3A4 0018C304  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8018F3A8 0018C308  40 80 00 0C */	bge lbl_8018F3B4
/* 8018F3AC 0018C30C  38 61 00 14 */	addi r3, r1, 0x14
/* 8018F3B0 0018C310  48 00 00 08 */	b lbl_8018F3B8
lbl_8018F3B4:
/* 8018F3B4 0018C314  38 6D 8F 08 */	addi r3, r13, lbl_805A7AC8@sda21
lbl_8018F3B8:
/* 8018F3B8 0018C318  C0 03 00 00 */	lfs f0, 0(r3)
/* 8018F3BC 0018C31C  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8018F3C0 0018C320  48 00 00 30 */	b lbl_8018F3F0
lbl_8018F3C4:
/* 8018F3C4 0018C324  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8018F3C8 0018C328  C0 0D 8F 0C */	lfs f0, lbl_805A7ACC@sda21(r13)
/* 8018F3CC 0018C32C  EC 22 08 28 */	fsubs f1, f2, f1
/* 8018F3D0 0018C330  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8018F3D4 0018C334  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8018F3D8 0018C338  40 80 00 0C */	bge lbl_8018F3E4
/* 8018F3DC 0018C33C  38 61 00 10 */	addi r3, r1, 0x10
/* 8018F3E0 0018C340  48 00 00 08 */	b lbl_8018F3E8
lbl_8018F3E4:
/* 8018F3E4 0018C344  38 6D 8F 0C */	addi r3, r13, lbl_805A7ACC@sda21
lbl_8018F3E8:
/* 8018F3E8 0018C348  C0 03 00 00 */	lfs f0, 0(r3)
/* 8018F3EC 0018C34C  D0 1F 00 04 */	stfs f0, 4(r31)
lbl_8018F3F0:
/* 8018F3F0 0018C350  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8018F3F4 0018C354  C0 02 A4 98 */	lfs f0, lbl_805AC1B8@sda21(r2)
/* 8018F3F8 0018C358  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8018F3FC 0018C35C  40 81 00 4C */	ble lbl_8018F448
/* 8018F400 0018C360  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8018F404 0018C364  EF E0 00 72 */	fmuls f31, f0, f1
/* 8018F408 0018C368  48 1B AB A5 */	bl White__6CColorFv
/* 8018F40C 0018C36C  C0 02 A4 9C */	lfs f0, lbl_805AC1BC@sda21(r2)
/* 8018F410 0018C370  EF C0 07 F2 */	fmuls f30, f0, f31
/* 8018F414 0018C374  F3 C1 A0 08 */	psq_st f30, 8(r1), 1, qr2
/* 8018F418 0018C378  38 81 00 0C */	addi r4, r1, 0xc
/* 8018F41C 0018C37C  80 63 00 00 */	lwz r3, 0(r3)
/* 8018F420 0018C380  88 01 00 08 */	lbz r0, 8(r1)
/* 8018F424 0018C384  50 60 00 2E */	rlwimi r0, r3, 0, 0, 0x17
/* 8018F428 0018C388  90 01 00 0C */	stw r0, 0xc(r1)
/* 8018F42C 0018C38C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8018F430 0018C390  48 13 B4 3D */	bl SetColor__10CGuiWidgetFRC6CColor
/* 8018F434 0018C394  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8018F438 0018C398  38 80 00 01 */	li r4, 1
/* 8018F43C 0018C39C  38 A0 00 01 */	li r5, 1
/* 8018F440 0018C3A0  48 13 B2 A9 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 8018F444 0018C3A4  48 00 00 14 */	b lbl_8018F458
lbl_8018F448:
/* 8018F448 0018C3A8  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8018F44C 0018C3AC  38 80 00 00 */	li r4, 0
/* 8018F450 0018C3B0  38 A0 00 01 */	li r5, 1
/* 8018F454 0018C3B4  48 13 B2 95 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
lbl_8018F458:
/* 8018F458 0018C3B8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 8018F45C 0018C3BC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8018F460 0018C3C0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 8018F464 0018C3C4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8018F468 0018C3C8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8018F46C 0018C3CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8018F470 0018C3D0  7C 08 03 A6 */	mtlr r0
/* 8018F474 0018C3D4  38 21 00 40 */	addi r1, r1, 0x40
/* 8018F478 0018C3D8  4E 80 00 20 */	blr

.global SetAlpha__23CHudBossEnergyInterfaceFf
SetAlpha__23CHudBossEnergyInterfaceFf:
/* 8018F47C 0018C3DC  D0 23 00 00 */	stfs f1, 0(r3)
/* 8018F480 0018C3E0  4E 80 00 20 */	blr

.global "SetBossParams__23CHudBossEnergyInterfaceFbRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
"SetBossParams__23CHudBossEnergyInterfaceFbRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>":
/* 8018F484 0018C3E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8018F488 0018C3E8  7C 08 02 A6 */	mflr r0
/* 8018F48C 0018C3EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8018F490 0018C3F0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8018F494 0018C3F4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8018F498 0018C3F8  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 8018F49C 0018C3FC  F3 C1 00 18 */	psq_st f30, 24(r1), 0, qr0
/* 8018F4A0 0018C400  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018F4A4 0018C404  93 C1 00 08 */	stw r30, 8(r1)
/* 8018F4A8 0018C408  7C 7E 1B 78 */	mr r30, r3
/* 8018F4AC 0018C40C  54 83 06 3F */	clrlwi. r3, r4, 0x18
/* 8018F4B0 0018C410  88 1E 00 10 */	lbz r0, 0x10(r30)
/* 8018F4B4 0018C414  FF C0 08 90 */	fmr f30, f1
/* 8018F4B8 0018C418  FF E0 10 90 */	fmr f31, f2
/* 8018F4BC 0018C41C  7C BF 2B 78 */	mr r31, r5
/* 8018F4C0 0018C420  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8018F4C4 0018C424  98 1E 00 10 */	stb r0, 0x10(r30)
/* 8018F4C8 0018C428  41 82 00 48 */	beq lbl_8018F510
/* 8018F4CC 0018C42C  C0 02 A4 A4 */	lfs f0, lbl_805AC1C4@sda21(r2)
/* 8018F4D0 0018C430  38 80 00 00 */	li r4, 0
/* 8018F4D4 0018C434  C0 42 A4 A0 */	lfs f2, lbl_805AC1C0@sda21(r2)
/* 8018F4D8 0018C438  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8018F4DC 0018C43C  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8018F4E0 0018C440  EC 02 00 32 */	fmuls f0, f2, f0
/* 8018F4E4 0018C444  D0 03 00 E4 */	stfs f0, 0xe4(r3)
/* 8018F4E8 0018C448  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8018F4EC 0018C44C  48 13 C3 DD */	bl SetCurrEnergy__16CAuiEnergyBarT01Ffb
/* 8018F4F0 0018C450  FC 20 F8 90 */	fmr f1, f31
/* 8018F4F4 0018C454  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8018F4F8 0018C458  48 13 C4 71 */	bl SetMaxEnergy__16CAuiEnergyBarT01Ff
/* 8018F4FC 0018C45C  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8018F500 0018C460  7F E4 FB 78 */	mr r4, r31
/* 8018F504 0018C464  38 A0 00 00 */	li r5, 0
/* 8018F508 0018C468  38 63 00 D4 */	addi r3, r3, 0xd4
/* 8018F50C 0018C46C  48 13 A3 79 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
lbl_8018F510:
/* 8018F510 0018C470  D3 DE 00 08 */	stfs f30, 8(r30)
/* 8018F514 0018C474  D3 FE 00 0C */	stfs f31, 0xc(r30)
/* 8018F518 0018C478  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8018F51C 0018C47C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8018F520 0018C480  E3 C1 00 18 */	psq_l f30, 24(r1), 0, qr0
/* 8018F524 0018C484  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 8018F528 0018C488  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018F52C 0018C48C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8018F530 0018C490  83 C1 00 08 */	lwz r30, 8(r1)
/* 8018F534 0018C494  7C 08 03 A6 */	mtlr r0
/* 8018F538 0018C498  38 21 00 30 */	addi r1, r1, 0x30
/* 8018F53C 0018C49C  4E 80 00 20 */	blr

.global __ct__23CHudBossEnergyInterfaceFR9CGuiFrame
__ct__23CHudBossEnergyInterfaceFR9CGuiFrame:
/* 8018F540 0018C4A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018F544 0018C4A4  7C 08 02 A6 */	mflr r0
/* 8018F548 0018C4A8  C0 02 A4 A8 */	lfs f0, lbl_805AC1C8@sda21(r2)
/* 8018F54C 0018C4AC  38 A0 00 00 */	li r5, 0
/* 8018F550 0018C4B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018F554 0018C4B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018F558 0018C4B8  7C 7F 1B 78 */	mr r31, r3
/* 8018F55C 0018C4BC  3C 60 80 3D */	lis r3, lbl_803D09D4@ha
/* 8018F560 0018C4C0  93 C1 00 08 */	stw r30, 8(r1)
/* 8018F564 0018C4C4  7C 9E 23 78 */	mr r30, r4
/* 8018F568 0018C4C8  38 83 09 D4 */	addi r4, r3, lbl_803D09D4@l
/* 8018F56C 0018C4CC  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8018F570 0018C4D0  7F C3 F3 78 */	mr r3, r30
/* 8018F574 0018C4D4  C0 02 A4 98 */	lfs f0, lbl_805AC1B8@sda21(r2)
/* 8018F578 0018C4D8  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8018F57C 0018C4DC  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8018F580 0018C4E0  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8018F584 0018C4E4  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 8018F588 0018C4E8  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 8018F58C 0018C4EC  98 1F 00 10 */	stb r0, 0x10(r31)
/* 8018F590 0018C4F0  48 13 2B C5 */	bl FindWidget__9CGuiFrameCFPCc
/* 8018F594 0018C4F4  3C 80 80 3D */	lis r4, lbl_803D09F0@ha
/* 8018F598 0018C4F8  90 7F 00 14 */	stw r3, 0x14(r31)
/* 8018F59C 0018C4FC  38 84 09 F0 */	addi r4, r4, lbl_803D09F0@l
/* 8018F5A0 0018C500  7F C3 F3 78 */	mr r3, r30
/* 8018F5A4 0018C504  48 13 2B B1 */	bl FindWidget__9CGuiFrameCFPCc
/* 8018F5A8 0018C508  3C 80 80 3D */	lis r4, lbl_803D0A30@ha
/* 8018F5AC 0018C50C  90 7F 00 18 */	stw r3, 0x18(r31)
/* 8018F5B0 0018C510  38 84 0A 30 */	addi r4, r4, lbl_803D0A30@l
/* 8018F5B4 0018C514  7F C3 F3 78 */	mr r3, r30
/* 8018F5B8 0018C518  48 13 2B 9D */	bl FindWidget__9CGuiFrameCFPCc
/* 8018F5BC 0018C51C  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 8018F5C0 0018C520  3C 60 80 19 */	lis r3, BossEnergyCoordFunc__23CHudBossEnergyInterfaceFf@ha
/* 8018F5C4 0018C524  38 03 FF 70 */	addi r0, r3, BossEnergyCoordFunc__23CHudBossEnergyInterfaceFf@l
/* 8018F5C8 0018C528  C0 02 A4 AC */	lfs f0, lbl_805AC1CC@sda21(r2)
/* 8018F5CC 0018C52C  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 8018F5D0 0018C530  7F E3 FB 78 */	mr r3, r31
/* 8018F5D4 0018C534  90 04 00 D8 */	stw r0, 0xd8(r4)
/* 8018F5D8 0018C538  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 8018F5DC 0018C53C  D0 04 00 DC */	stfs f0, 0xdc(r4)
/* 8018F5E0 0018C540  80 AD A1 3C */	lwz r5, gpTweakGuiColors@sda21(r13)
/* 8018F5E4 0018C544  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 8018F5E8 0018C548  80 05 01 C8 */	lwz r0, 0x1c8(r5)
/* 8018F5EC 0018C54C  90 04 00 D0 */	stw r0, 0xd0(r4)
/* 8018F5F0 0018C550  80 05 01 D0 */	lwz r0, 0x1d0(r5)
/* 8018F5F4 0018C554  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 8018F5F8 0018C558  90 04 00 D4 */	stw r0, 0xd4(r4)
/* 8018F5FC 0018C55C  80 05 01 CC */	lwz r0, 0x1cc(r5)
/* 8018F600 0018C560  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 8018F604 0018C564  90 04 00 CC */	stw r0, 0xcc(r4)
/* 8018F608 0018C568  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018F60C 0018C56C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8018F610 0018C570  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018F614 0018C574  7C 08 03 A6 */	mtlr r0
/* 8018F618 0018C578  38 21 00 10 */	addi r1, r1, 0x10
/* 8018F61C 0018C57C  4E 80 00 20 */	blr

.global Update__19CHudEnergyInterfaceFff
Update__19CHudEnergyInterfaceFff:
/* 8018F620 0018C580  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8018F624 0018C584  7C 08 02 A6 */	mflr r0
/* 8018F628 0018C588  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8018F62C 0018C58C  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 8018F630 0018C590  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, qr0
/* 8018F634 0018C594  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 8018F638 0018C598  F3 C1 00 98 */	psq_st f30, 152(r1), 0, qr0
/* 8018F63C 0018C59C  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 8018F640 0018C5A0  F3 A1 00 88 */	psq_st f29, 136(r1), 0, qr0
/* 8018F644 0018C5A4  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 8018F648 0018C5A8  93 C1 00 78 */	stw r30, 0x78(r1)
/* 8018F64C 0018C5AC  93 A1 00 74 */	stw r29, 0x74(r1)
/* 8018F650 0018C5B0  7C 7F 1B 78 */	mr r31, r3
/* 8018F654 0018C5B4  FF E0 10 90 */	fmr f31, f2
/* 8018F658 0018C5B8  80 03 00 28 */	lwz r0, 0x28(r3)
/* 8018F65C 0018C5BC  28 00 00 00 */	cmplwi r0, 0
/* 8018F660 0018C5C0  41 82 01 00 */	beq lbl_8018F760
/* 8018F664 0018C5C4  88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 8018F668 0018C5C8  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8018F66C 0018C5CC  41 82 00 6C */	beq lbl_8018F6D8
/* 8018F670 0018C5D0  C0 62 A4 B0 */	lfs f3, lbl_805AC1D0@sda21(r2)
/* 8018F674 0018C5D4  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8018F678 0018C5D8  C0 0D 8F 00 */	lfs f0, lbl_805A7AC0@sda21(r13)
/* 8018F67C 0018C5DC  EC 23 10 7A */	fmadds f1, f3, f1, f2
/* 8018F680 0018C5E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8018F684 0018C5E4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8018F688 0018C5E8  40 80 00 0C */	bge lbl_8018F694
/* 8018F68C 0018C5EC  38 61 00 24 */	addi r3, r1, 0x24
/* 8018F690 0018C5F0  48 00 00 08 */	b lbl_8018F698
lbl_8018F694:
/* 8018F694 0018C5F4  38 6D 8F 00 */	addi r3, r13, lbl_805A7AC0@sda21
lbl_8018F698:
/* 8018F698 0018C5F8  C0 03 00 00 */	lfs f0, 0(r3)
/* 8018F69C 0018C5FC  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8018F6A0 0018C600  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8018F6A4 0018C604  EF C0 07 F2 */	fmuls f30, f0, f31
/* 8018F6A8 0018C608  48 1B A9 05 */	bl White__6CColorFv
/* 8018F6AC 0018C60C  C0 02 A4 9C */	lfs f0, lbl_805AC1BC@sda21(r2)
/* 8018F6B0 0018C610  EF A0 07 B2 */	fmuls f29, f0, f30
/* 8018F6B4 0018C614  F3 A1 A0 09 */	psq_st f29, 9(r1), 1, qr2
/* 8018F6B8 0018C618  38 81 00 20 */	addi r4, r1, 0x20
/* 8018F6BC 0018C61C  80 63 00 00 */	lwz r3, 0(r3)
/* 8018F6C0 0018C620  88 01 00 09 */	lbz r0, 9(r1)
/* 8018F6C4 0018C624  50 60 00 2E */	rlwimi r0, r3, 0, 0, 0x17
/* 8018F6C8 0018C628  90 01 00 20 */	stw r0, 0x20(r1)
/* 8018F6CC 0018C62C  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 8018F6D0 0018C630  48 13 B1 9D */	bl SetColor__10CGuiWidgetFRC6CColor
/* 8018F6D4 0018C634  48 00 00 68 */	b lbl_8018F73C
lbl_8018F6D8:
/* 8018F6D8 0018C638  C0 62 A4 B0 */	lfs f3, lbl_805AC1D0@sda21(r2)
/* 8018F6DC 0018C63C  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8018F6E0 0018C640  C0 0D 8F 04 */	lfs f0, lbl_805A7AC4@sda21(r13)
/* 8018F6E4 0018C644  EC 23 10 7C */	fnmsubs f1, f3, f1, f2
/* 8018F6E8 0018C648  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8018F6EC 0018C64C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8018F6F0 0018C650  40 80 00 0C */	bge lbl_8018F6FC
/* 8018F6F4 0018C654  38 61 00 1C */	addi r3, r1, 0x1c
/* 8018F6F8 0018C658  48 00 00 08 */	b lbl_8018F700
lbl_8018F6FC:
/* 8018F6FC 0018C65C  38 6D 8F 04 */	addi r3, r13, lbl_805A7AC4@sda21
lbl_8018F700:
/* 8018F700 0018C660  C0 03 00 00 */	lfs f0, 0(r3)
/* 8018F704 0018C664  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8018F708 0018C668  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8018F70C 0018C66C  EF C0 07 F2 */	fmuls f30, f0, f31
/* 8018F710 0018C670  48 1B A8 9D */	bl White__6CColorFv
/* 8018F714 0018C674  C0 02 A4 9C */	lfs f0, lbl_805AC1BC@sda21(r2)
/* 8018F718 0018C678  EF A0 07 B2 */	fmuls f29, f0, f30
/* 8018F71C 0018C67C  F3 A1 A0 08 */	psq_st f29, 8(r1), 1, qr2
/* 8018F720 0018C680  38 81 00 18 */	addi r4, r1, 0x18
/* 8018F724 0018C684  80 63 00 00 */	lwz r3, 0(r3)
/* 8018F728 0018C688  88 01 00 08 */	lbz r0, 8(r1)
/* 8018F72C 0018C68C  50 60 00 2E */	rlwimi r0, r3, 0, 0, 0x17
/* 8018F730 0018C690  90 01 00 18 */	stw r0, 0x18(r1)
/* 8018F734 0018C694  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 8018F738 0018C698  48 13 B1 35 */	bl SetColor__10CGuiWidgetFRC6CColor
lbl_8018F73C:
/* 8018F73C 0018C69C  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 8018F740 0018C6A0  88 03 00 AB */	lbz r0, 0xab(r3)
/* 8018F744 0018C6A4  28 00 00 00 */	cmplwi r0, 0
/* 8018F748 0018C6A8  41 82 00 10 */	beq lbl_8018F758
/* 8018F74C 0018C6AC  38 80 00 01 */	li r4, 1
/* 8018F750 0018C6B0  48 13 AE DD */	bl SetIsVisible__10CGuiWidgetFb
/* 8018F754 0018C6B4  48 00 00 0C */	b lbl_8018F760
lbl_8018F758:
/* 8018F758 0018C6B8  38 80 00 00 */	li r4, 0
/* 8018F75C 0018C6BC  48 13 AE D1 */	bl SetIsVisible__10CGuiWidgetFb
lbl_8018F760:
/* 8018F760 0018C6C0  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8018F764 0018C6C4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8018F768 0018C6C8  C3 A3 00 F8 */	lfs f29, 0xf8(r3)
/* 8018F76C 0018C6CC  FC 1D 00 00 */	fcmpu cr0, f29, f0
/* 8018F770 0018C6D0  40 82 00 10 */	bne lbl_8018F780
/* 8018F774 0018C6D4  88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 8018F778 0018C6D8  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8018F77C 0018C6DC  41 82 00 80 */	beq lbl_8018F7FC
lbl_8018F780:
/* 8018F780 0018C6E0  88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 8018F784 0018C6E4  38 60 00 00 */	li r3, 0
/* 8018F788 0018C6E8  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8018F78C 0018C6EC  98 1F 00 1C */	stb r0, 0x1c(r31)
/* 8018F790 0018C6F0  D3 BF 00 18 */	stfs f29, 0x18(r31)
/* 8018F794 0018C6F4  4B F0 20 91 */	bl GetEnergyTankCapacity__12CPlayerStateFv
/* 8018F798 0018C6F8  FC 40 08 90 */	fmr f2, f1
/* 8018F79C 0018C6FC  FC 20 E8 90 */	fmr f1, f29
/* 8018F7A0 0018C700  48 20 55 0D */	bl fmod
/* 8018F7A4 0018C704  FC 00 08 18 */	frsp f0, f1
/* 8018F7A8 0018C708  3C 60 80 3D */	lis r3, lbl_803D0A30@ha
/* 8018F7AC 0018C70C  38 83 0A 30 */	addi r4, r3, lbl_803D0A30@l
/* 8018F7B0 0018C710  38 61 00 4C */	addi r3, r1, 0x4c
/* 8018F7B4 0018C714  38 84 00 0E */	addi r4, r4, 0xe
/* 8018F7B8 0018C718  FC 00 00 1E */	fctiwz f0, f0
/* 8018F7BC 0018C71C  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8018F7C0 0018C720  80 A1 00 64 */	lwz r5, 0x64(r1)
/* 8018F7C4 0018C724  4C C6 31 82 */	crclr 6
/* 8018F7C8 0018C728  48 1F E5 15 */	bl sprintf
/* 8018F7CC 0018C72C  38 61 00 50 */	addi r3, r1, 0x50
/* 8018F7D0 0018C730  38 81 00 4C */	addi r4, r1, 0x4c
/* 8018F7D4 0018C734  38 C1 00 0C */	addi r6, r1, 0xc
/* 8018F7D8 0018C738  38 A0 FF FF */	li r5, -1
/* 8018F7DC 0018C73C  48 1A E9 B9 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FPCciRCQ24rstl17rmemory_allocator"
/* 8018F7E0 0018C740  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8018F7E4 0018C744  38 81 00 50 */	addi r4, r1, 0x50
/* 8018F7E8 0018C748  38 A0 00 00 */	li r5, 0
/* 8018F7EC 0018C74C  38 63 00 D4 */	addi r3, r3, 0xd4
/* 8018F7F0 0018C750  48 13 A3 19 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8018F7F4 0018C754  38 61 00 50 */	addi r3, r1, 0x50
/* 8018F7F8 0018C758  48 1A E2 E9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8018F7FC:
/* 8018F7FC 0018C75C  80 1F 00 00 */	lwz r0, 0(r31)
/* 8018F800 0018C760  38 61 00 48 */	addi r3, r1, 0x48
/* 8018F804 0018C764  80 AD A1 3C */	lwz r5, gpTweakGuiColors@sda21(r13)
/* 8018F808 0018C768  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 8018F80C 0018C76C  7C 85 02 14 */	add r4, r5, r0
/* 8018F810 0018C770  80 04 01 CC */	lwz r0, 0x1cc(r4)
/* 8018F814 0018C774  90 01 00 48 */	stw r0, 0x48(r1)
/* 8018F818 0018C778  80 04 01 C8 */	lwz r0, 0x1c8(r4)
/* 8018F81C 0018C77C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8018F820 0018C780  80 04 01 D0 */	lwz r0, 0x1d0(r4)
/* 8018F824 0018C784  90 01 00 40 */	stw r0, 0x40(r1)
/* 8018F828 0018C788  80 05 00 3C */	lwz r0, 0x3c(r5)
/* 8018F82C 0018C78C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8018F830 0018C790  80 05 00 34 */	lwz r0, 0x34(r5)
/* 8018F834 0018C794  90 01 00 38 */	stw r0, 0x38(r1)
/* 8018F838 0018C798  80 05 00 38 */	lwz r0, 0x38(r5)
/* 8018F83C 0018C79C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8018F840 0018C7A0  88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 8018F844 0018C7A4  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8018F848 0018C7A8  41 82 00 08 */	beq lbl_8018F850
/* 8018F84C 0018C7AC  38 61 00 3C */	addi r3, r1, 0x3c
lbl_8018F850:
/* 8018F850 0018C7B0  28 00 00 00 */	cmplwi r0, 0
/* 8018F854 0018C7B4  83 C3 00 00 */	lwz r30, 0(r3)
/* 8018F858 0018C7B8  38 61 00 44 */	addi r3, r1, 0x44
/* 8018F85C 0018C7BC  41 82 00 08 */	beq lbl_8018F864
/* 8018F860 0018C7C0  38 61 00 38 */	addi r3, r1, 0x38
lbl_8018F864:
/* 8018F864 0018C7C4  80 03 00 00 */	lwz r0, 0(r3)
/* 8018F868 0018C7C8  38 61 00 40 */	addi r3, r1, 0x40
/* 8018F86C 0018C7CC  90 01 00 30 */	stw r0, 0x30(r1)
/* 8018F870 0018C7D0  88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 8018F874 0018C7D4  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8018F878 0018C7D8  41 82 00 08 */	beq lbl_8018F880
/* 8018F87C 0018C7DC  38 61 00 34 */	addi r3, r1, 0x34
lbl_8018F880:
/* 8018F880 0018C7E0  83 A3 00 00 */	lwz r29, 0(r3)
/* 8018F884 0018C7E4  38 61 00 14 */	addi r3, r1, 0x14
/* 8018F888 0018C7E8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8018F88C 0018C7EC  38 81 00 30 */	addi r4, r1, 0x30
/* 8018F890 0018C7F0  38 A5 00 E8 */	addi r5, r5, 0xe8
/* 8018F894 0018C7F4  48 1D 3A 19 */	bl Lerp__6CColorFRC6CColorRC6CColorf
/* 8018F898 0018C7F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018F89C 0018C7FC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8018F8A0 0018C800  88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 8018F8A4 0018C804  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8018F8A8 0018C808  41 82 00 38 */	beq lbl_8018F8E0
/* 8018F8AC 0018C80C  C0 22 A4 A8 */	lfs f1, lbl_805AC1C8@sda21(r2)
/* 8018F8B0 0018C810  38 61 00 28 */	addi r3, r1, 0x28
/* 8018F8B4 0018C814  C0 42 A4 B4 */	lfs f2, lbl_805AC1D4@sda21(r2)
/* 8018F8B8 0018C818  FC 80 08 90 */	fmr f4, f1
/* 8018F8BC 0018C81C  C0 62 A4 B8 */	lfs f3, lbl_805AC1D8@sda21(r2)
/* 8018F8C0 0018C820  48 1D 3B 2D */	bl __ct__6CColorFffff
/* 8018F8C4 0018C824  FC 20 F8 90 */	fmr f1, f31
/* 8018F8C8 0018C828  38 61 00 10 */	addi r3, r1, 0x10
/* 8018F8CC 0018C82C  38 81 00 2C */	addi r4, r1, 0x2c
/* 8018F8D0 0018C830  38 A1 00 28 */	addi r5, r1, 0x28
/* 8018F8D4 0018C834  48 1D 39 D9 */	bl Lerp__6CColorFRC6CColorRC6CColorf
/* 8018F8D8 0018C838  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8018F8DC 0018C83C  90 01 00 2C */	stw r0, 0x2c(r1)
lbl_8018F8E0:
/* 8018F8E0 0018C840  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8018F8E4 0018C844  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8018F8E8 0018C848  90 03 00 D0 */	stw r0, 0xd0(r3)
/* 8018F8EC 0018C84C  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8018F8F0 0018C850  93 A3 00 D4 */	stw r29, 0xd4(r3)
/* 8018F8F4 0018C854  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8018F8F8 0018C858  93 C3 00 CC */	stw r30, 0xcc(r3)
/* 8018F8FC 0018C85C  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, qr0
/* 8018F900 0018C860  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 8018F904 0018C864  E3 C1 00 98 */	psq_l f30, 152(r1), 0, qr0
/* 8018F908 0018C868  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 8018F90C 0018C86C  E3 A1 00 88 */	psq_l f29, 136(r1), 0, qr0
/* 8018F910 0018C870  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 8018F914 0018C874  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 8018F918 0018C878  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 8018F91C 0018C87C  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8018F920 0018C880  83 A1 00 74 */	lwz r29, 0x74(r1)
/* 8018F924 0018C884  7C 08 03 A6 */	mtlr r0
/* 8018F928 0018C888  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8018F92C 0018C88C  4E 80 00 20 */	blr

.global SetEnergyLow__19CHudEnergyInterfaceFb
SetEnergyLow__19CHudEnergyInterfaceFb:
/* 8018F930 0018C890  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8018F934 0018C894  7C 08 02 A6 */	mflr r0
/* 8018F938 0018C898  90 01 00 54 */	stw r0, 0x54(r1)
/* 8018F93C 0018C89C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8018F940 0018C8A0  7C 9F 23 78 */	mr r31, r4
/* 8018F944 0018C8A4  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8018F948 0018C8A8  7C 7E 1B 78 */	mr r30, r3
/* 8018F94C 0018C8AC  93 A1 00 44 */	stw r29, 0x44(r1)
/* 8018F950 0018C8B0  93 81 00 40 */	stw r28, 0x40(r1)
/* 8018F954 0018C8B4  88 03 00 1C */	lbz r0, 0x1c(r3)
/* 8018F958 0018C8B8  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 8018F95C 0018C8BC  54 00 E7 FE */	rlwinm r0, r0, 0x1c, 0x1f, 0x1f
/* 8018F960 0018C8C0  7C 03 00 40 */	cmplw r3, r0
/* 8018F964 0018C8C4  41 82 00 D0 */	beq lbl_8018FA34
/* 8018F968 0018C8C8  28 03 00 00 */	cmplwi r3, 0
/* 8018F96C 0018C8CC  3B A0 00 00 */	li r29, 0
/* 8018F970 0018C8D0  3B 80 00 00 */	li r28, 0
/* 8018F974 0018C8D4  41 82 00 28 */	beq lbl_8018F99C
/* 8018F978 0018C8D8  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8018F97C 0018C8DC  38 80 00 09 */	li r4, 9
/* 8018F980 0018C8E0  48 1C 6D 7D */	bl GetString__12CStringTableCFi
/* 8018F984 0018C8E4  7C 64 1B 78 */	mr r4, r3
/* 8018F988 0018C8E8  38 61 00 1C */	addi r3, r1, 0x1c
/* 8018F98C 0018C8EC  4B E8 60 65 */	bl wstring_l__4rstlFPCw
/* 8018F990 0018C8F0  38 81 00 1C */	addi r4, r1, 0x1c
/* 8018F994 0018C8F4  3B A0 00 01 */	li r29, 1
/* 8018F998 0018C8F8  48 00 00 18 */	b lbl_8018F9B0
lbl_8018F99C:
/* 8018F99C 0018C8FC  38 61 00 0C */	addi r3, r1, 0xc
/* 8018F9A0 0018C900  38 8D 8F 10 */	addi r4, r13, lbl_805A7AD0@sda21
/* 8018F9A4 0018C904  4B E8 60 4D */	bl wstring_l__4rstlFPCw
/* 8018F9A8 0018C908  3B 80 00 01 */	li r28, 1
/* 8018F9AC 0018C90C  38 81 00 0C */	addi r4, r1, 0xc
lbl_8018F9B0:
/* 8018F9B0 0018C910  38 61 00 2C */	addi r3, r1, 0x2c
/* 8018F9B4 0018C914  48 1A DD D5 */	bl "__ct__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 8018F9B8 0018C918  7F 80 07 75 */	extsb. r0, r28
/* 8018F9BC 0018C91C  41 82 00 0C */	beq lbl_8018F9C8
/* 8018F9C0 0018C920  38 61 00 0C */	addi r3, r1, 0xc
/* 8018F9C4 0018C924  48 1A D7 71 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
lbl_8018F9C8:
/* 8018F9C8 0018C928  7F A0 07 75 */	extsb. r0, r29
/* 8018F9CC 0018C92C  41 82 00 0C */	beq lbl_8018F9D8
/* 8018F9D0 0018C930  38 61 00 1C */	addi r3, r1, 0x1c
/* 8018F9D4 0018C934  48 1A D7 61 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
lbl_8018F9D8:
/* 8018F9D8 0018C938  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 8018F9DC 0018C93C  28 03 00 00 */	cmplwi r3, 0
/* 8018F9E0 0018C940  41 82 00 14 */	beq lbl_8018F9F4
/* 8018F9E4 0018C944  38 63 00 D4 */	addi r3, r3, 0xd4
/* 8018F9E8 0018C948  38 81 00 2C */	addi r4, r1, 0x2c
/* 8018F9EC 0018C94C  38 A0 00 00 */	li r5, 0
/* 8018F9F0 0018C950  48 13 9E 95 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
lbl_8018F9F4:
/* 8018F9F4 0018C954  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8018F9F8 0018C958  41 82 00 28 */	beq lbl_8018FA20
/* 8018F9FC 0018C95C  A9 02 C5 FA */	lha r8, kMedPriority__11CSfxManager@sda21(r2)
/* 8018FA00 0018C960  38 61 00 08 */	addi r3, r1, 8
/* 8018FA04 0018C964  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 8018FA08 0018C968  38 80 05 7D */	li r4, 0x57d
/* 8018FA0C 0018C96C  38 A0 00 7F */	li r5, 0x7f
/* 8018FA10 0018C970  38 C0 00 40 */	li r6, 0x40
/* 8018FA14 0018C974  38 E0 00 00 */	li r7, 0
/* 8018FA18 0018C978  39 20 00 00 */	li r9, 0
/* 8018FA1C 0018C97C  48 15 A3 59 */	bl SfxStart__11CSfxManagerFUsssbsbi
lbl_8018FA20:
/* 8018FA20 0018C980  88 1E 00 1C */	lbz r0, 0x1c(r30)
/* 8018FA24 0018C984  53 E0 26 F6 */	rlwimi r0, r31, 4, 0x1b, 0x1b
/* 8018FA28 0018C988  38 61 00 2C */	addi r3, r1, 0x2c
/* 8018FA2C 0018C98C  98 1E 00 1C */	stb r0, 0x1c(r30)
/* 8018FA30 0018C990  48 1A D7 05 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
lbl_8018FA34:
/* 8018FA34 0018C994  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8018FA38 0018C998  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8018FA3C 0018C99C  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8018FA40 0018C9A0  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 8018FA44 0018C9A4  83 81 00 40 */	lwz r28, 0x40(r1)
/* 8018FA48 0018C9A8  7C 08 03 A6 */	mtlr r0
/* 8018FA4C 0018C9AC  38 21 00 50 */	addi r1, r1, 0x50
/* 8018FA50 0018C9B0  4E 80 00 20 */	blr

.global SetFlashMagnitude__19CHudEnergyInterfaceFf
SetFlashMagnitude__19CHudEnergyInterfaceFf:
/* 8018FA54 0018C9B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018FA58 0018C9B8  7C 08 02 A6 */	mflr r0
/* 8018FA5C 0018C9BC  38 AD 8E FC */	addi r5, r13, lbl_805A7ABC@sda21
/* 8018FA60 0018C9C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018FA64 0018C9C4  38 81 00 08 */	addi r4, r1, 8
/* 8018FA68 0018C9C8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8018FA6C 0018C9CC  7C 7F 1B 78 */	mr r31, r3
/* 8018FA70 0018C9D0  38 6D 8E F8 */	addi r3, r13, lbl_805A7AB8@sda21
/* 8018FA74 0018C9D4  D0 21 00 08 */	stfs f1, 8(r1)
/* 8018FA78 0018C9D8  4B E7 C8 3D */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 8018FA7C 0018C9DC  C0 03 00 00 */	lfs f0, 0(r3)
/* 8018FA80 0018C9E0  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8018FA84 0018C9E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018FA88 0018C9E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8018FA8C 0018C9EC  7C 08 03 A6 */	mtlr r0
/* 8018FA90 0018C9F0  38 21 00 20 */	addi r1, r1, 0x20
/* 8018FA94 0018C9F4  4E 80 00 20 */	blr

.global SetNumFilledEnergyTanks__19CHudEnergyInterfaceFi
SetNumFilledEnergyTanks__19CHudEnergyInterfaceFi:
/* 8018FA98 0018C9F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018FA9C 0018C9FC  7C 08 02 A6 */	mflr r0
/* 8018FAA0 0018CA00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018FAA4 0018CA04  90 83 00 14 */	stw r4, 0x14(r3)
/* 8018FAA8 0018CA08  80 63 00 24 */	lwz r3, 0x24(r3)
/* 8018FAAC 0018CA0C  48 13 14 9D */	bl SetRemainder__9CAuiMeteri
/* 8018FAB0 0018CA10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018FAB4 0018CA14  7C 08 03 A6 */	mtlr r0
/* 8018FAB8 0018CA18  38 21 00 10 */	addi r1, r1, 0x10
/* 8018FABC 0018CA1C  4E 80 00 20 */	blr

.global SetNumTotalEnergyTanks__19CHudEnergyInterfaceFi
SetNumTotalEnergyTanks__19CHudEnergyInterfaceFi:
/* 8018FAC0 0018CA20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018FAC4 0018CA24  7C 08 02 A6 */	mflr r0
/* 8018FAC8 0018CA28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018FACC 0018CA2C  90 83 00 10 */	stw r4, 0x10(r3)
/* 8018FAD0 0018CA30  80 63 00 24 */	lwz r3, 0x24(r3)
/* 8018FAD4 0018CA34  48 13 14 C1 */	bl SetCapacity__9CAuiMeterFi
/* 8018FAD8 0018CA38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018FADC 0018CA3C  7C 08 03 A6 */	mtlr r0
/* 8018FAE0 0018CA40  38 21 00 10 */	addi r1, r1, 0x10
/* 8018FAE4 0018CA44  4E 80 00 20 */	blr

.global SetCurrEnergy__19CHudEnergyInterfaceFf
SetCurrEnergy__19CHudEnergyInterfaceFf:
/* 8018FAE8 0018CA48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018FAEC 0018CA4C  7C 08 02 A6 */	mflr r0
/* 8018FAF0 0018CA50  C0 02 A4 98 */	lfs f0, lbl_805AC1B8@sda21(r2)
/* 8018FAF4 0018CA54  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018FAF8 0018CA58  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8018FAFC 0018CA5C  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 8018FB00 0018CA60  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 8018FB04 0018CA64  40 82 00 0C */	bne lbl_8018FB10
/* 8018FB08 0018CA68  38 80 00 02 */	li r4, 2
/* 8018FB0C 0018CA6C  48 00 00 14 */	b lbl_8018FB20
lbl_8018FB10:
/* 8018FB10 0018CA70  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 8018FB14 0018CA74  7C 04 00 D0 */	neg r0, r4
/* 8018FB18 0018CA78  7C 00 23 78 */	or r0, r0, r4
/* 8018FB1C 0018CA7C  54 04 0F FE */	srwi r4, r0, 0x1f
lbl_8018FB20:
/* 8018FB20 0018CA80  48 13 BD A9 */	bl SetCurrEnergy__16CAuiEnergyBarT01Ffb
/* 8018FB24 0018CA84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018FB28 0018CA88  7C 08 03 A6 */	mtlr r0
/* 8018FB2C 0018CA8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8018FB30 0018CA90  4E 80 00 20 */	blr

.global __ct__19CHudEnergyInterfaceFR9CGuiFramefiibi
__ct__19CHudEnergyInterfaceFR9CGuiFramefiibi:
/* 8018FB34 0018CA94  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8018FB38 0018CA98  7C 08 02 A6 */	mflr r0
/* 8018FB3C 0018CA9C  C0 02 A4 98 */	lfs f0, lbl_805AC1B8@sda21(r2)
/* 8018FB40 0018CAA0  90 01 00 94 */	stw r0, 0x94(r1)
/* 8018FB44 0018CAA4  BF 41 00 78 */	stmw r26, 0x78(r1)
/* 8018FB48 0018CAA8  7C 7E 1B 78 */	mr r30, r3
/* 8018FB4C 0018CAAC  3C 60 80 3D */	lis r3, lbl_803D0948@ha
/* 8018FB50 0018CAB0  7C 9A 23 78 */	mr r26, r4
/* 8018FB54 0018CAB4  3B E3 09 48 */	addi r31, r3, lbl_803D0948@l
/* 8018FB58 0018CAB8  38 61 00 58 */	addi r3, r1, 0x58
/* 8018FB5C 0018CABC  38 9F 00 18 */	addi r4, r31, 0x18
/* 8018FB60 0018CAC0  91 1E 00 00 */	stw r8, 0(r30)
/* 8018FB64 0018CAC4  39 00 00 01 */	li r8, 1
/* 8018FB68 0018CAC8  D0 1E 00 04 */	stfs f0, 4(r30)
/* 8018FB6C 0018CACC  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8018FB70 0018CAD0  D0 3E 00 0C */	stfs f1, 0xc(r30)
/* 8018FB74 0018CAD4  90 BE 00 10 */	stw r5, 0x10(r30)
/* 8018FB78 0018CAD8  90 DE 00 14 */	stw r6, 0x14(r30)
/* 8018FB7C 0018CADC  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 8018FB80 0018CAE0  88 1E 00 1C */	lbz r0, 0x1c(r30)
/* 8018FB84 0018CAE4  51 00 3E 30 */	rlwimi r0, r8, 7, 0x18, 0x18
/* 8018FB88 0018CAE8  98 1E 00 1C */	stb r0, 0x1c(r30)
/* 8018FB8C 0018CAEC  88 1E 00 1C */	lbz r0, 0x1c(r30)
/* 8018FB90 0018CAF0  51 00 36 72 */	rlwimi r0, r8, 6, 0x19, 0x19
/* 8018FB94 0018CAF4  98 1E 00 1C */	stb r0, 0x1c(r30)
/* 8018FB98 0018CAF8  88 1E 00 1C */	lbz r0, 0x1c(r30)
/* 8018FB9C 0018CAFC  51 00 2E B4 */	rlwimi r0, r8, 5, 0x1a, 0x1a
/* 8018FBA0 0018CB00  98 1E 00 1C */	stb r0, 0x1c(r30)
/* 8018FBA4 0018CB04  88 1E 00 1C */	lbz r0, 0x1c(r30)
/* 8018FBA8 0018CB08  50 E0 26 F6 */	rlwimi r0, r7, 4, 0x1b, 0x1b
/* 8018FBAC 0018CB0C  98 1E 00 1C */	stb r0, 0x1c(r30)
/* 8018FBB0 0018CB10  4B E7 51 09 */	bl string_l__4rstlFPCc
/* 8018FBB4 0018CB14  7F 43 D3 78 */	mr r3, r26
/* 8018FBB8 0018CB18  38 81 00 58 */	addi r4, r1, 0x58
/* 8018FBBC 0018CB1C  48 13 26 19 */	bl "FindWidget__9CGuiFrameCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8018FBC0 0018CB20  90 7E 00 20 */	stw r3, 0x20(r30)
/* 8018FBC4 0018CB24  38 61 00 58 */	addi r3, r1, 0x58
/* 8018FBC8 0018CB28  48 1A DF 19 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8018FBCC 0018CB2C  38 61 00 48 */	addi r3, r1, 0x48
/* 8018FBD0 0018CB30  38 9F 00 30 */	addi r4, r31, 0x30
/* 8018FBD4 0018CB34  4B E7 50 E5 */	bl string_l__4rstlFPCc
/* 8018FBD8 0018CB38  7F 43 D3 78 */	mr r3, r26
/* 8018FBDC 0018CB3C  38 81 00 48 */	addi r4, r1, 0x48
/* 8018FBE0 0018CB40  48 13 25 F5 */	bl "FindWidget__9CGuiFrameCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8018FBE4 0018CB44  90 7E 00 24 */	stw r3, 0x24(r30)
/* 8018FBE8 0018CB48  38 61 00 48 */	addi r3, r1, 0x48
/* 8018FBEC 0018CB4C  48 1A DE F5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8018FBF0 0018CB50  38 61 00 38 */	addi r3, r1, 0x38
/* 8018FBF4 0018CB54  38 9F 00 44 */	addi r4, r31, 0x44
/* 8018FBF8 0018CB58  4B E7 50 C1 */	bl string_l__4rstlFPCc
/* 8018FBFC 0018CB5C  7F 43 D3 78 */	mr r3, r26
/* 8018FC00 0018CB60  38 81 00 38 */	addi r4, r1, 0x38
/* 8018FC04 0018CB64  48 13 25 D1 */	bl "FindWidget__9CGuiFrameCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8018FC08 0018CB68  90 7E 00 28 */	stw r3, 0x28(r30)
/* 8018FC0C 0018CB6C  38 61 00 38 */	addi r3, r1, 0x38
/* 8018FC10 0018CB70  48 1A DE D1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8018FC14 0018CB74  38 61 00 28 */	addi r3, r1, 0x28
/* 8018FC18 0018CB78  38 9F 00 5C */	addi r4, r31, 0x5c
/* 8018FC1C 0018CB7C  4B E7 50 9D */	bl string_l__4rstlFPCc
/* 8018FC20 0018CB80  7F 43 D3 78 */	mr r3, r26
/* 8018FC24 0018CB84  38 81 00 28 */	addi r4, r1, 0x28
/* 8018FC28 0018CB88  48 13 25 AD */	bl "FindWidget__9CGuiFrameCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8018FC2C 0018CB8C  90 7E 00 2C */	stw r3, 0x2c(r30)
/* 8018FC30 0018CB90  38 61 00 28 */	addi r3, r1, 0x28
/* 8018FC34 0018CB94  48 1A DE AD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8018FC38 0018CB98  80 FE 00 00 */	lwz r7, 0(r30)
/* 8018FC3C 0018CB9C  38 9F 00 C0 */	addi r4, r31, 0xc0
/* 8018FC40 0018CBA0  80 CD A1 3C */	lwz r6, gpTweakGuiColors@sda21(r13)
/* 8018FC44 0018CBA4  38 BF 00 D4 */	addi r5, r31, 0xd4
/* 8018FC48 0018CBA8  54 E0 10 3A */	slwi r0, r7, 2
/* 8018FC4C 0018CBAC  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 8018FC50 0018CBB0  7C 04 00 2E */	lwzx r0, r4, r0
/* 8018FC54 0018CBB4  1C 87 00 1C */	mulli r4, r7, 0x1c
/* 8018FC58 0018CBB8  90 03 00 D8 */	stw r0, 0xd8(r3)
/* 8018FC5C 0018CBBC  7F E6 22 14 */	add r31, r6, r4
/* 8018FC60 0018CBC0  80 1E 00 00 */	lwz r0, 0(r30)
/* 8018FC64 0018CBC4  38 9F 01 DC */	addi r4, r31, 0x1dc
/* 8018FC68 0018CBC8  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 8018FC6C 0018CBCC  54 00 10 3A */	slwi r0, r0, 2
/* 8018FC70 0018CBD0  7C 05 04 2E */	lfsx f0, r5, r0
/* 8018FC74 0018CBD4  D0 03 00 DC */	stfs f0, 0xdc(r3)
/* 8018FC78 0018CBD8  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 8018FC7C 0018CBDC  38 63 00 D4 */	addi r3, r3, 0xd4
/* 8018FC80 0018CBE0  48 13 99 E9 */	bl SetFontColor__15CGuiTextSupportFRC6CColor
/* 8018FC84 0018CBE4  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 8018FC88 0018CBE8  38 9F 01 E0 */	addi r4, r31, 0x1e0
/* 8018FC8C 0018CBEC  38 63 00 D4 */	addi r3, r3, 0xd4
/* 8018FC90 0018CBF0  48 13 99 89 */	bl SetOutlineColor__15CGuiTextSupportFRC6CColor
/* 8018FC94 0018CBF4  4B F0 1B 99 */	bl GetBaseHealthCapacity__12CPlayerStateFv
/* 8018FC98 0018CBF8  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 8018FC9C 0018CBFC  48 13 BC CD */	bl SetMaxEnergy__16CAuiEnergyBarT01Ff
/* 8018FCA0 0018CC00  80 1F 01 C8 */	lwz r0, 0x1c8(r31)
/* 8018FCA4 0018CC04  38 80 00 0E */	li r4, 0xe
/* 8018FCA8 0018CC08  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 8018FCAC 0018CC0C  90 03 00 D0 */	stw r0, 0xd0(r3)
/* 8018FCB0 0018CC10  80 1F 01 D0 */	lwz r0, 0x1d0(r31)
/* 8018FCB4 0018CC14  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 8018FCB8 0018CC18  90 03 00 D4 */	stw r0, 0xd4(r3)
/* 8018FCBC 0018CC1C  80 1F 01 CC */	lwz r0, 0x1cc(r31)
/* 8018FCC0 0018CC20  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 8018FCC4 0018CC24  90 03 00 CC */	stw r0, 0xcc(r3)
/* 8018FCC8 0018CC28  80 AD A1 38 */	lwz r5, gpTweakGui@sda21(r13)
/* 8018FCCC 0018CC2C  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 8018FCD0 0018CC30  C0 05 00 34 */	lfs f0, 0x34(r5)
/* 8018FCD4 0018CC34  D0 03 00 E4 */	stfs f0, 0xe4(r3)
/* 8018FCD8 0018CC38  80 AD A1 38 */	lwz r5, gpTweakGui@sda21(r13)
/* 8018FCDC 0018CC3C  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 8018FCE0 0018CC40  C0 05 00 38 */	lfs f0, 0x38(r5)
/* 8018FCE4 0018CC44  D0 03 00 E8 */	stfs f0, 0xe8(r3)
/* 8018FCE8 0018CC48  80 AD A1 38 */	lwz r5, gpTweakGui@sda21(r13)
/* 8018FCEC 0018CC4C  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 8018FCF0 0018CC50  C0 05 00 3C */	lfs f0, 0x3c(r5)
/* 8018FCF4 0018CC54  D0 03 00 EC */	stfs f0, 0xec(r3)
/* 8018FCF8 0018CC58  80 AD A1 38 */	lwz r5, gpTweakGui@sda21(r13)
/* 8018FCFC 0018CC5C  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 8018FD00 0018CC60  88 05 00 40 */	lbz r0, 0x40(r5)
/* 8018FD04 0018CC64  98 03 00 F0 */	stb r0, 0xf0(r3)
/* 8018FD08 0018CC68  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 8018FD0C 0018CC6C  48 13 12 F9 */	bl SetMaxCapacity__9CAuiMeterFi
/* 8018FD10 0018CC70  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 8018FD14 0018CC74  28 03 00 00 */	cmplwi r3, 0
/* 8018FD18 0018CC78  41 82 00 B8 */	beq lbl_8018FDD0
/* 8018FD1C 0018CC7C  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 8018FD20 0018CC80  38 63 00 D4 */	addi r3, r3, 0xd4
/* 8018FD24 0018CC84  38 84 00 5C */	addi r4, r4, 0x5c
/* 8018FD28 0018CC88  48 13 99 41 */	bl SetFontColor__15CGuiTextSupportFRC6CColor
/* 8018FD2C 0018CC8C  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 8018FD30 0018CC90  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 8018FD34 0018CC94  38 63 00 D4 */	addi r3, r3, 0xd4
/* 8018FD38 0018CC98  38 84 00 B4 */	addi r4, r4, 0xb4
/* 8018FD3C 0018CC9C  48 13 98 DD */	bl SetOutlineColor__15CGuiTextSupportFRC6CColor
/* 8018FD40 0018CCA0  88 1E 00 1C */	lbz r0, 0x1c(r30)
/* 8018FD44 0018CCA4  3B 40 00 00 */	li r26, 0
/* 8018FD48 0018CCA8  3B 60 00 00 */	li r27, 0
/* 8018FD4C 0018CCAC  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8018FD50 0018CCB0  41 82 00 28 */	beq lbl_8018FD78
/* 8018FD54 0018CCB4  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8018FD58 0018CCB8  38 80 00 09 */	li r4, 9
/* 8018FD5C 0018CCBC  48 1C 69 A1 */	bl GetString__12CStringTableCFi
/* 8018FD60 0018CCC0  7C 64 1B 78 */	mr r4, r3
/* 8018FD64 0018CCC4  38 61 00 18 */	addi r3, r1, 0x18
/* 8018FD68 0018CCC8  4B E8 5C 89 */	bl wstring_l__4rstlFPCw
/* 8018FD6C 0018CCCC  38 81 00 18 */	addi r4, r1, 0x18
/* 8018FD70 0018CCD0  3B 40 00 01 */	li r26, 1
/* 8018FD74 0018CCD4  48 00 00 18 */	b lbl_8018FD8C
lbl_8018FD78:
/* 8018FD78 0018CCD8  38 61 00 08 */	addi r3, r1, 8
/* 8018FD7C 0018CCDC  38 8D 8F 10 */	addi r4, r13, lbl_805A7AD0@sda21
/* 8018FD80 0018CCE0  4B E8 5C 71 */	bl wstring_l__4rstlFPCw
/* 8018FD84 0018CCE4  3B 60 00 01 */	li r27, 1
/* 8018FD88 0018CCE8  38 81 00 08 */	addi r4, r1, 8
lbl_8018FD8C:
/* 8018FD8C 0018CCEC  38 61 00 68 */	addi r3, r1, 0x68
/* 8018FD90 0018CCF0  48 1A D9 F9 */	bl "__ct__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 8018FD94 0018CCF4  7F 60 07 75 */	extsb. r0, r27
/* 8018FD98 0018CCF8  41 82 00 0C */	beq lbl_8018FDA4
/* 8018FD9C 0018CCFC  38 61 00 08 */	addi r3, r1, 8
/* 8018FDA0 0018CD00  48 1A D3 95 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
lbl_8018FDA4:
/* 8018FDA4 0018CD04  7F 40 07 75 */	extsb. r0, r26
/* 8018FDA8 0018CD08  41 82 00 0C */	beq lbl_8018FDB4
/* 8018FDAC 0018CD0C  38 61 00 18 */	addi r3, r1, 0x18
/* 8018FDB0 0018CD10  48 1A D3 85 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
lbl_8018FDB4:
/* 8018FDB4 0018CD14  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 8018FDB8 0018CD18  38 81 00 68 */	addi r4, r1, 0x68
/* 8018FDBC 0018CD1C  38 A0 00 00 */	li r5, 0
/* 8018FDC0 0018CD20  38 63 00 D4 */	addi r3, r3, 0xd4
/* 8018FDC4 0018CD24  48 13 9A C1 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 8018FDC8 0018CD28  38 61 00 68 */	addi r3, r1, 0x68
/* 8018FDCC 0018CD2C  48 1A D3 69 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
lbl_8018FDD0:
/* 8018FDD0 0018CD30  3B 9F 01 D4 */	addi r28, r31, 0x1d4
/* 8018FDD4 0018CD34  3B 7F 01 D8 */	addi r27, r31, 0x1d8
/* 8018FDD8 0018CD38  3B 40 00 00 */	li r26, 0
lbl_8018FDDC:
/* 8018FDDC 0018CD3C  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 8018FDE0 0018CD40  7F 44 D3 78 */	mr r4, r26
/* 8018FDE4 0018CD44  81 83 00 00 */	lwz r12, 0(r3)
/* 8018FDE8 0018CD48  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8018FDEC 0018CD4C  7D 89 03 A6 */	mtctr r12
/* 8018FDF0 0018CD50  4E 80 04 21 */	bctrl
/* 8018FDF4 0018CD54  81 83 00 00 */	lwz r12, 0(r3)
/* 8018FDF8 0018CD58  7C 60 1B 78 */	mr r0, r3
/* 8018FDFC 0018CD5C  38 80 00 00 */	li r4, 0
/* 8018FE00 0018CD60  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8018FE04 0018CD64  7C 1D 03 78 */	mr r29, r0
/* 8018FE08 0018CD68  7D 89 03 A6 */	mtctr r12
/* 8018FE0C 0018CD6C  4E 80 04 21 */	bctrl
/* 8018FE10 0018CD70  81 9D 00 00 */	lwz r12, 0(r29)
/* 8018FE14 0018CD74  7C 7F 1B 78 */	mr r31, r3
/* 8018FE18 0018CD78  7F A3 EB 78 */	mr r3, r29
/* 8018FE1C 0018CD7C  38 80 00 01 */	li r4, 1
/* 8018FE20 0018CD80  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8018FE24 0018CD84  7D 89 03 A6 */	mtctr r12
/* 8018FE28 0018CD88  4E 80 04 21 */	bctrl
/* 8018FE2C 0018CD8C  28 1F 00 00 */	cmplwi r31, 0
/* 8018FE30 0018CD90  7C 7D 1B 78 */	mr r29, r3
/* 8018FE34 0018CD94  41 82 00 10 */	beq lbl_8018FE44
/* 8018FE38 0018CD98  7F E3 FB 78 */	mr r3, r31
/* 8018FE3C 0018CD9C  7F 84 E3 78 */	mr r4, r28
/* 8018FE40 0018CDA0  48 13 AA 2D */	bl SetColor__10CGuiWidgetFRC6CColor
lbl_8018FE44:
/* 8018FE44 0018CDA4  28 1D 00 00 */	cmplwi r29, 0
/* 8018FE48 0018CDA8  41 82 00 10 */	beq lbl_8018FE58
/* 8018FE4C 0018CDAC  7F A3 EB 78 */	mr r3, r29
/* 8018FE50 0018CDB0  7F 64 DB 78 */	mr r4, r27
/* 8018FE54 0018CDB4  48 13 AA 19 */	bl SetColor__10CGuiWidgetFRC6CColor
lbl_8018FE58:
/* 8018FE58 0018CDB8  3B 5A 00 01 */	addi r26, r26, 1
/* 8018FE5C 0018CDBC  2C 1A 00 0E */	cmpwi r26, 0xe
/* 8018FE60 0018CDC0  41 80 FF 7C */	blt lbl_8018FDDC
/* 8018FE64 0018CDC4  7F C3 F3 78 */	mr r3, r30
/* 8018FE68 0018CDC8  BB 41 00 78 */	lmw r26, 0x78(r1)
/* 8018FE6C 0018CDCC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8018FE70 0018CDD0  7C 08 03 A6 */	mtlr r0
/* 8018FE74 0018CDD4  38 21 00 90 */	addi r1, r1, 0x90
/* 8018FE78 0018CDD8  4E 80 00 20 */	blr

.global XRayEnergyCoordFunc__19CHudEnergyInterfaceFf
XRayEnergyCoordFunc__19CHudEnergyInterfaceFf:
/* 8018FE7C 0018CDDC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8018FE80 0018CDE0  7C 08 02 A6 */	mflr r0
/* 8018FE84 0018CDE4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8018FE88 0018CDE8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8018FE8C 0018CDEC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8018FE90 0018CDF0  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 8018FE94 0018CDF4  F3 C1 00 18 */	psq_st f30, 24(r1), 0, qr0
/* 8018FE98 0018CDF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018FE9C 0018CDFC  C0 42 A4 C0 */	lfs f2, lbl_805AC1E0@sda21(r2)
/* 8018FEA0 0018CE00  7C 7F 1B 78 */	mr r31, r3
/* 8018FEA4 0018CE04  C0 02 A4 BC */	lfs f0, lbl_805AC1DC@sda21(r2)
/* 8018FEA8 0018CE08  EF C2 00 7C */	fnmsubs f30, f2, f1, f0
/* 8018FEAC 0018CE0C  FC 20 F0 90 */	fmr f1, f30
/* 8018FEB0 0018CE10  48 18 4E 95 */	bl FastCosR__5CMathFf
/* 8018FEB4 0018CE14  FF E0 08 90 */	fmr f31, f1
/* 8018FEB8 0018CE18  FC 20 F0 90 */	fmr f1, f30
/* 8018FEBC 0018CE1C  48 18 4F 35 */	bl FastSinR__5CMathFf
/* 8018FEC0 0018CE20  C0 42 A4 C4 */	lfs f2, lbl_805AC1E4@sda21(r2)
/* 8018FEC4 0018CE24  C0 82 A4 98 */	lfs f4, lbl_805AC1B8@sda21(r2)
/* 8018FEC8 0018CE28  EC A2 07 F2 */	fmuls f5, f2, f31
/* 8018FECC 0018CE2C  C0 02 A4 C8 */	lfs f0, lbl_805AC1E8@sda21(r2)
/* 8018FED0 0018CE30  EC 62 00 72 */	fmuls f3, f2, f1
/* 8018FED4 0018CE34  EC 40 07 F2 */	fmuls f2, f0, f31
/* 8018FED8 0018CE38  D0 BF 00 00 */	stfs f5, 0(r31)
/* 8018FEDC 0018CE3C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8018FEE0 0018CE40  D0 9F 00 04 */	stfs f4, 4(r31)
/* 8018FEE4 0018CE44  D0 7F 00 08 */	stfs f3, 8(r31)
/* 8018FEE8 0018CE48  D0 5F 00 0C */	stfs f2, 0xc(r31)
/* 8018FEEC 0018CE4C  D0 9F 00 10 */	stfs f4, 0x10(r31)
/* 8018FEF0 0018CE50  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 8018FEF4 0018CE54  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8018FEF8 0018CE58  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8018FEFC 0018CE5C  E3 C1 00 18 */	psq_l f30, 24(r1), 0, qr0
/* 8018FF00 0018CE60  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 8018FF04 0018CE64  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8018FF08 0018CE68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018FF0C 0018CE6C  7C 08 03 A6 */	mtlr r0
/* 8018FF10 0018CE70  38 21 00 30 */	addi r1, r1, 0x30
/* 8018FF14 0018CE74  4E 80 00 20 */	blr

.global ThermalEnergyCoordFunc__19CHudEnergyInterfaceFf
ThermalEnergyCoordFunc__19CHudEnergyInterfaceFf:
/* 8018FF18 0018CE78  C0 02 A4 CC */	lfs f0, lbl_805AC1EC@sda21(r2)
/* 8018FF1C 0018CE7C  C0 42 A4 98 */	lfs f2, lbl_805AC1B8@sda21(r2)
/* 8018FF20 0018CE80  EC 20 00 72 */	fmuls f1, f0, f1
/* 8018FF24 0018CE84  C0 02 A4 D0 */	lfs f0, lbl_805AC1F0@sda21(r2)
/* 8018FF28 0018CE88  D0 23 00 00 */	stfs f1, 0(r3)
/* 8018FF2C 0018CE8C  D0 43 00 04 */	stfs f2, 4(r3)
/* 8018FF30 0018CE90  D0 43 00 08 */	stfs f2, 8(r3)
/* 8018FF34 0018CE94  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 8018FF38 0018CE98  D0 43 00 10 */	stfs f2, 0x10(r3)
/* 8018FF3C 0018CE9C  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8018FF40 0018CEA0  4E 80 00 20 */	blr

.global BallEnergyCoordFunc__19CHudEnergyInterfaceFf
BallEnergyCoordFunc__19CHudEnergyInterfaceFf:
/* 8018FF44 0018CEA4  C0 02 A4 D4 */	lfs f0, lbl_805AC1F4@sda21(r2)
/* 8018FF48 0018CEA8  C0 42 A4 98 */	lfs f2, lbl_805AC1B8@sda21(r2)
/* 8018FF4C 0018CEAC  EC 20 00 72 */	fmuls f1, f0, f1
/* 8018FF50 0018CEB0  C0 02 A4 D8 */	lfs f0, lbl_805AC1F8@sda21(r2)
/* 8018FF54 0018CEB4  D0 23 00 00 */	stfs f1, 0(r3)
/* 8018FF58 0018CEB8  D0 43 00 04 */	stfs f2, 4(r3)
/* 8018FF5C 0018CEBC  D0 43 00 08 */	stfs f2, 8(r3)
/* 8018FF60 0018CEC0  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 8018FF64 0018CEC4  D0 43 00 10 */	stfs f2, 0x10(r3)
/* 8018FF68 0018CEC8  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8018FF6C 0018CECC  4E 80 00 20 */	blr

.global BossEnergyCoordFunc__23CHudBossEnergyInterfaceFf
BossEnergyCoordFunc__23CHudBossEnergyInterfaceFf:
/* 8018FF70 0018CED0  C0 62 A4 DC */	lfs f3, lbl_805AC1FC@sda21(r2)
/* 8018FF74 0018CED4  C0 02 A4 E0 */	lfs f0, lbl_805AC200@sda21(r2)
/* 8018FF78 0018CED8  C0 42 A4 98 */	lfs f2, lbl_805AC1B8@sda21(r2)
/* 8018FF7C 0018CEDC  EC 23 00 78 */	fmsubs f1, f3, f1, f0
/* 8018FF80 0018CEE0  C0 02 A4 B8 */	lfs f0, lbl_805AC1D8@sda21(r2)
/* 8018FF84 0018CEE4  D0 23 00 00 */	stfs f1, 0(r3)
/* 8018FF88 0018CEE8  D0 43 00 04 */	stfs f2, 4(r3)
/* 8018FF8C 0018CEEC  D0 43 00 08 */	stfs f2, 8(r3)
/* 8018FF90 0018CEF0  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 8018FF94 0018CEF4  D0 43 00 10 */	stfs f2, 0x10(r3)
/* 8018FF98 0018CEF8  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8018FF9C 0018CEFC  4E 80 00 20 */	blr

.global CombatEnergyCoordFunc__19CHudEnergyInterfaceFf
CombatEnergyCoordFunc__19CHudEnergyInterfaceFf:
/* 8018FFA0 0018CF00  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8018FFA4 0018CF04  7C 08 02 A6 */	mflr r0
/* 8018FFA8 0018CF08  90 01 00 34 */	stw r0, 0x34(r1)
/* 8018FFAC 0018CF0C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8018FFB0 0018CF10  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8018FFB4 0018CF14  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 8018FFB8 0018CF18  F3 C1 00 18 */	psq_st f30, 24(r1), 0, qr0
/* 8018FFBC 0018CF1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018FFC0 0018CF20  C0 42 A4 E8 */	lfs f2, lbl_805AC208@sda21(r2)
/* 8018FFC4 0018CF24  7C 7F 1B 78 */	mr r31, r3
/* 8018FFC8 0018CF28  C0 02 A4 E4 */	lfs f0, lbl_805AC204@sda21(r2)
/* 8018FFCC 0018CF2C  EF E2 00 7A */	fmadds f31, f2, f1, f0
/* 8018FFD0 0018CF30  FC 20 F8 90 */	fmr f1, f31
/* 8018FFD4 0018CF34  48 18 4E 1D */	bl FastSinR__5CMathFf
/* 8018FFD8 0018CF38  C0 02 A4 EC */	lfs f0, lbl_805AC20C@sda21(r2)
/* 8018FFDC 0018CF3C  EF C0 00 72 */	fmuls f30, f0, f1
/* 8018FFE0 0018CF40  FC 20 F8 90 */	fmr f1, f31
/* 8018FFE4 0018CF44  48 18 4D 61 */	bl FastCosR__5CMathFf
/* 8018FFE8 0018CF48  C0 42 A4 EC */	lfs f2, lbl_805AC20C@sda21(r2)
/* 8018FFEC 0018CF4C  C0 02 A4 F0 */	lfs f0, lbl_805AC210@sda21(r2)
/* 8018FFF0 0018CF50  D3 DF 00 00 */	stfs f30, 0(r31)
/* 8018FFF4 0018CF54  EC 42 00 7A */	fmadds f2, f2, f1, f0
/* 8018FFF8 0018CF58  C0 22 A4 B8 */	lfs f1, lbl_805AC1D8@sda21(r2)
/* 8018FFFC 0018CF5C  C0 02 A4 98 */	lfs f0, lbl_805AC1B8@sda21(r2)
/* 80190000 0018CF60  D0 5F 00 04 */	stfs f2, 4(r31)
/* 80190004 0018CF64  D0 3F 00 08 */	stfs f1, 8(r31)
/* 80190008 0018CF68  D3 DF 00 0C */	stfs f30, 0xc(r31)
/* 8019000C 0018CF6C  D0 5F 00 10 */	stfs f2, 0x10(r31)
/* 80190010 0018CF70  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 80190014 0018CF74  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80190018 0018CF78  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8019001C 0018CF7C  E3 C1 00 18 */	psq_l f30, 24(r1), 0, qr0
/* 80190020 0018CF80  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 80190024 0018CF84  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80190028 0018CF88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8019002C 0018CF8C  7C 08 03 A6 */	mtlr r0
/* 80190030 0018CF90  38 21 00 30 */	addi r1, r1, 0x30

.global sub_80190034
sub_80190034:
/* 80190034 0018CF94  4E 80 00 20 */	blr

.global __dt__21CHudFreeLookInterfaceFv
__dt__21CHudFreeLookInterfaceFv:
/* 80190038 0018CF98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019003C 0018CF9C  7C 08 02 A6 */	mflr r0
/* 80190040 0018CFA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80190044 0018CFA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80190048 0018CFA8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8019004C 0018CFAC  41 82 00 30 */	beq lbl_8019007C
/* 80190050 0018CFB0  3C 60 80 3E */	lis r3, lbl_803E4470@ha
/* 80190054 0018CFB4  38 03 44 70 */	addi r0, r3, lbl_803E4470@l
/* 80190058 0018CFB8  90 1F 00 00 */	stw r0, 0(r31)
/* 8019005C 0018CFBC  41 82 00 10 */	beq lbl_8019006C
/* 80190060 0018CFC0  3C 60 80 3E */	lis r3, lbl_803DA2E8@ha
/* 80190064 0018CFC4  38 03 A2 E8 */	addi r0, r3, lbl_803DA2E8@l
/* 80190068 0018CFC8  90 1F 00 00 */	stw r0, 0(r31)
lbl_8019006C:
/* 8019006C 0018CFCC  7C 80 07 35 */	extsh. r0, r4
/* 80190070 0018CFD0  40 81 00 0C */	ble lbl_8019007C
/* 80190074 0018CFD4  7F E3 FB 78 */	mr r3, r31
/* 80190078 0018CFD8  48 18 58 B9 */	bl Free__7CMemoryFPCv
lbl_8019007C:
/* 8019007C 0018CFDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80190080 0018CFE0  7F E3 FB 78 */	mr r3, r31
/* 80190084 0018CFE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80190088 0018CFE8  7C 08 03 A6 */	mtlr r0
/* 8019008C 0018CFEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80190090 0018CFF0  4E 80 00 20 */	blr

.global Update__21CHudFreeLookInterfaceFf
Update__21CHudFreeLookInterfaceFf:
/* 80190094 0018CFF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80190098 0018CFF8  88 03 00 70 */	lbz r0, 0x70(r3)
/* 8019009C 0018CFFC  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801900A0 0018D000  41 82 00 40 */	beq lbl_801900E0
/* 801900A4 0018D004  80 8D A1 38 */	lwz r4, gpTweakGui@sda21(r13)
/* 801900A8 0018D008  C0 63 00 68 */	lfs f3, 0x68(r3)
/* 801900AC 0018D00C  C0 44 01 18 */	lfs f2, 0x118(r4)
/* 801900B0 0018D010  C0 0D 8F 20 */	lfs f0, lbl_805A7AE0@sda21(r13)
/* 801900B4 0018D014  EC 41 10 24 */	fdivs f2, f1, f2
/* 801900B8 0018D018  EC 43 10 2A */	fadds f2, f3, f2
/* 801900BC 0018D01C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801900C0 0018D020  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801900C4 0018D024  40 80 00 0C */	bge lbl_801900D0
/* 801900C8 0018D028  38 81 00 14 */	addi r4, r1, 0x14
/* 801900CC 0018D02C  48 00 00 08 */	b lbl_801900D4
lbl_801900D0:
/* 801900D0 0018D030  38 8D 8F 20 */	addi r4, r13, lbl_805A7AE0@sda21
lbl_801900D4:
/* 801900D4 0018D034  C0 04 00 00 */	lfs f0, 0(r4)
/* 801900D8 0018D038  D0 03 00 68 */	stfs f0, 0x68(r3)
/* 801900DC 0018D03C  48 00 00 3C */	b lbl_80190118
lbl_801900E0:
/* 801900E0 0018D040  80 8D A1 38 */	lwz r4, gpTweakGui@sda21(r13)
/* 801900E4 0018D044  C0 63 00 68 */	lfs f3, 0x68(r3)
/* 801900E8 0018D048  C0 44 01 18 */	lfs f2, 0x118(r4)
/* 801900EC 0018D04C  C0 0D 8F 24 */	lfs f0, lbl_805A7AE4@sda21(r13)
/* 801900F0 0018D050  EC 41 10 24 */	fdivs f2, f1, f2
/* 801900F4 0018D054  EC 43 10 28 */	fsubs f2, f3, f2
/* 801900F8 0018D058  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 801900FC 0018D05C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80190100 0018D060  40 80 00 0C */	bge lbl_8019010C
/* 80190104 0018D064  38 81 00 10 */	addi r4, r1, 0x10
/* 80190108 0018D068  48 00 00 08 */	b lbl_80190110
lbl_8019010C:
/* 8019010C 0018D06C  38 8D 8F 24 */	addi r4, r13, lbl_805A7AE4@sda21
lbl_80190110:
/* 80190110 0018D070  C0 04 00 00 */	lfs f0, 0(r4)
/* 80190114 0018D074  D0 03 00 68 */	stfs f0, 0x68(r3)
lbl_80190118:
/* 80190118 0018D078  88 03 00 70 */	lbz r0, 0x70(r3)
/* 8019011C 0018D07C  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80190120 0018D080  41 82 00 44 */	beq lbl_80190164
/* 80190124 0018D084  80 03 00 04 */	lwz r0, 4(r3)
/* 80190128 0018D088  2C 00 00 01 */	cmpwi r0, 1
/* 8019012C 0018D08C  40 82 00 38 */	bne lbl_80190164
/* 80190130 0018D090  C0 62 A4 F8 */	lfs f3, lbl_805AC218@sda21(r2)
/* 80190134 0018D094  C0 43 00 6C */	lfs f2, 0x6c(r3)
/* 80190138 0018D098  C0 0D 8F 28 */	lfs f0, lbl_805A7AE8@sda21(r13)
/* 8019013C 0018D09C  EC 23 10 7A */	fmadds f1, f3, f1, f2
/* 80190140 0018D0A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80190144 0018D0A4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80190148 0018D0A8  40 80 00 0C */	bge lbl_80190154
/* 8019014C 0018D0AC  38 81 00 0C */	addi r4, r1, 0xc
/* 80190150 0018D0B0  48 00 00 08 */	b lbl_80190158
lbl_80190154:
/* 80190154 0018D0B4  38 8D 8F 28 */	addi r4, r13, lbl_805A7AE8@sda21
lbl_80190158:
/* 80190158 0018D0B8  C0 04 00 00 */	lfs f0, 0(r4)
/* 8019015C 0018D0BC  D0 03 00 6C */	stfs f0, 0x6c(r3)
/* 80190160 0018D0C0  48 00 00 34 */	b lbl_80190194
lbl_80190164:
/* 80190164 0018D0C4  C0 62 A4 F8 */	lfs f3, lbl_805AC218@sda21(r2)
/* 80190168 0018D0C8  C0 43 00 6C */	lfs f2, 0x6c(r3)
/* 8019016C 0018D0CC  C0 0D 8F 2C */	lfs f0, lbl_805A7AEC@sda21(r13)
/* 80190170 0018D0D0  EC 23 10 7C */	fnmsubs f1, f3, f1, f2
/* 80190174 0018D0D4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80190178 0018D0D8  D0 21 00 08 */	stfs f1, 8(r1)
/* 8019017C 0018D0DC  40 80 00 0C */	bge lbl_80190188
/* 80190180 0018D0E0  38 81 00 08 */	addi r4, r1, 8
/* 80190184 0018D0E4  48 00 00 08 */	b lbl_8019018C
lbl_80190188:
/* 80190188 0018D0E8  38 8D 8F 2C */	addi r4, r13, lbl_805A7AEC@sda21
lbl_8019018C:
/* 8019018C 0018D0EC  C0 04 00 00 */	lfs f0, 0(r4)
/* 80190190 0018D0F0  D0 03 00 6C */	stfs f0, 0x6c(r3)
lbl_80190194:
/* 80190194 0018D0F4  38 21 00 20 */	addi r1, r1, 0x20

.global sub_80190198
sub_80190198:
/* 80190198 0018D0F8  4E 80 00 20 */	blr

.global UpdateVisibility__21CHudFreeLookInterfaceFv
UpdateVisibility__21CHudFreeLookInterfaceFv:
/* 8019019C 0018D0FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801901A0 0018D100  7C 08 02 A6 */	mflr r0
/* 801901A4 0018D104  90 01 00 24 */	stw r0, 0x24(r1)
/* 801901A8 0018D108  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801901AC 0018D10C  3B E0 00 00 */	li r31, 0
/* 801901B0 0018D110  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801901B4 0018D114  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801901B8 0018D118  7C 7D 1B 78 */	mr r29, r3
/* 801901BC 0018D11C  88 63 00 70 */	lbz r3, 0x70(r3)
/* 801901C0 0018D120  54 60 EF FF */	rlwinm. r0, r3, 0x1d, 0x1f, 0x1f
/* 801901C4 0018D124  41 82 00 10 */	beq lbl_801901D4
/* 801901C8 0018D128  54 60 E7 FF */	rlwinm. r0, r3, 0x1c, 0x1f, 0x1f
/* 801901CC 0018D12C  41 82 00 08 */	beq lbl_801901D4
/* 801901D0 0018D130  3B E0 00 01 */	li r31, 1
lbl_801901D4:
/* 801901D4 0018D134  57 FE 06 3E */	clrlwi r30, r31, 0x18
/* 801901D8 0018D138  80 7D 00 74 */	lwz r3, 0x74(r29)
/* 801901DC 0018D13C  7F C4 F3 78 */	mr r4, r30
/* 801901E0 0018D140  38 A0 00 01 */	li r5, 1
/* 801901E4 0018D144  48 13 A5 05 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 801901E8 0018D148  80 7D 00 80 */	lwz r3, 0x80(r29)
/* 801901EC 0018D14C  7F C4 F3 78 */	mr r4, r30
/* 801901F0 0018D150  38 A0 00 01 */	li r5, 1
/* 801901F4 0018D154  48 13 A4 F5 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 801901F8 0018D158  7F C0 F3 79 */	or. r0, r30, r30
/* 801901FC 0018D15C  41 82 00 1C */	beq lbl_80190218
/* 80190200 0018D160  7F A3 EB 78 */	mr r3, r29
/* 80190204 0018D164  C0 22 A4 FC */	lfs f1, lbl_805AC21C@sda21(r2)
/* 80190208 0018D168  81 9D 00 00 */	lwz r12, 0(r29)
/* 8019020C 0018D16C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80190210 0018D170  7D 89 03 A6 */	mtctr r12
/* 80190214 0018D174  4E 80 04 21 */	bctrl
lbl_80190218:
/* 80190218 0018D178  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8019021C 0018D17C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80190220 0018D180  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80190224 0018D184  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80190228 0018D188  7C 08 03 A6 */	mtlr r0
/* 8019022C 0018D18C  38 21 00 20 */	addi r1, r1, 0x20
/* 80190230 0018D190  4E 80 00 20 */	blr

.global SetIsVisibleGame__21CHudFreeLookInterfaceFb
SetIsVisibleGame__21CHudFreeLookInterfaceFb:
/* 80190234 0018D194  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80190238 0018D198  7C 08 02 A6 */	mflr r0
/* 8019023C 0018D19C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80190240 0018D1A0  88 03 00 70 */	lbz r0, 0x70(r3)
/* 80190244 0018D1A4  50 80 1F 38 */	rlwimi r0, r4, 3, 0x1c, 0x1c
/* 80190248 0018D1A8  98 03 00 70 */	stb r0, 0x70(r3)
/* 8019024C 0018D1AC  4B FF FF 51 */	bl UpdateVisibility__21CHudFreeLookInterfaceFv
/* 80190250 0018D1B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80190254 0018D1B4  7C 08 03 A6 */	mtlr r0
/* 80190258 0018D1B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8019025C 0018D1BC  4E 80 00 20 */	blr

.global SetIsVisibleDebug__21CHudFreeLookInterfaceFb
SetIsVisibleDebug__21CHudFreeLookInterfaceFb:
/* 80190260 0018D1C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80190264 0018D1C4  7C 08 02 A6 */	mflr r0
/* 80190268 0018D1C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019026C 0018D1CC  88 03 00 70 */	lbz r0, 0x70(r3)
/* 80190270 0018D1D0  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 80190274 0018D1D4  98 03 00 70 */	stb r0, 0x70(r3)
/* 80190278 0018D1D8  4B FF FF 25 */	bl UpdateVisibility__21CHudFreeLookInterfaceFv
/* 8019027C 0018D1DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80190280 0018D1E0  7C 08 03 A6 */	mtlr r0
/* 80190284 0018D1E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80190288 0018D1E8  4E 80 00 20 */	blr

.global SetFreeLookState__21CHudFreeLookInterfaceFbbbf
SetFreeLookState__21CHudFreeLookInterfaceFbbbf:
/* 8019028C 0018D1EC  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 80190290 0018D1F0  7C 08 02 A6 */	mflr r0
/* 80190294 0018D1F4  90 01 01 24 */	stw r0, 0x124(r1)
/* 80190298 0018D1F8  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 8019029C 0018D1FC  F3 E1 01 18 */	psq_st f31, 280(r1), 0, qr0
/* 801902A0 0018D200  DB C1 01 00 */	stfd f30, 0x100(r1)
/* 801902A4 0018D204  F3 C1 01 08 */	psq_st f30, 264(r1), 0, qr0
/* 801902A8 0018D208  DB A1 00 F0 */	stfd f29, 0xf0(r1)
/* 801902AC 0018D20C  F3 A1 00 F8 */	psq_st f29, 248(r1), 0, qr0
/* 801902B0 0018D210  DB 81 00 E0 */	stfd f28, 0xe0(r1)
/* 801902B4 0018D214  F3 81 00 E8 */	psq_st f28, 232(r1), 0, qr0
/* 801902B8 0018D218  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 801902BC 0018D21C  93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 801902C0 0018D220  88 03 00 70 */	lbz r0, 0x70(r3)
/* 801902C4 0018D224  7C 7F 1B 78 */	mr r31, r3
/* 801902C8 0018D228  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 801902CC 0018D22C  C0 02 A5 00 */	lfs f0, lbl_805AC220@sda21(r2)
/* 801902D0 0018D230  98 1F 00 70 */	stb r0, 0x70(r31)
/* 801902D4 0018D234  38 61 00 78 */	addi r3, r1, 0x78
/* 801902D8 0018D238  EF 80 00 72 */	fmuls f28, f0, f1
/* 801902DC 0018D23C  C0 22 A4 FC */	lfs f1, lbl_805AC21C@sda21(r2)
/* 801902E0 0018D240  88 1F 00 70 */	lbz r0, 0x70(r31)
/* 801902E4 0018D244  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 801902E8 0018D248  FC 40 08 90 */	fmr f2, f1
/* 801902EC 0018D24C  98 1F 00 70 */	stb r0, 0x70(r31)
/* 801902F0 0018D250  FC 60 E0 90 */	fmr f3, f28
/* 801902F4 0018D254  88 1F 00 70 */	lbz r0, 0x70(r31)
/* 801902F8 0018D258  50 C0 2E B4 */	rlwimi r0, r6, 5, 0x1a, 0x1a
/* 801902FC 0018D25C  98 1F 00 70 */	stb r0, 0x70(r31)
/* 80190300 0018D260  48 18 2E 89 */	bl Translate__12CTransform4fFfff
/* 80190304 0018D264  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80190308 0018D268  38 9F 00 08 */	addi r4, r31, 8
/* 8019030C 0018D26C  38 A1 00 78 */	addi r5, r1, 0x78
/* 80190310 0018D270  48 18 26 41 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 80190314 0018D274  83 DF 00 7C */	lwz r30, 0x7c(r31)
/* 80190318 0018D278  38 81 00 A8 */	addi r4, r1, 0xa8
/* 8019031C 0018D27C  38 7E 00 04 */	addi r3, r30, 4
/* 80190320 0018D280  48 18 28 21 */	bl __as__12CTransform4fFRC12CTransform4f
/* 80190324 0018D284  7F C3 F3 78 */	mr r3, r30
/* 80190328 0018D288  48 13 44 C1 */	bl RecalculateTransforms__10CGuiObjectFv
/* 8019032C 0018D28C  C0 22 A4 FC */	lfs f1, lbl_805AC21C@sda21(r2)
/* 80190330 0018D290  FC 60 E0 90 */	fmr f3, f28
/* 80190334 0018D294  38 61 00 18 */	addi r3, r1, 0x18
/* 80190338 0018D298  FC 40 08 90 */	fmr f2, f1
/* 8019033C 0018D29C  48 18 2E 4D */	bl Translate__12CTransform4fFfff
/* 80190340 0018D2A0  38 61 00 48 */	addi r3, r1, 0x48
/* 80190344 0018D2A4  38 9F 00 38 */	addi r4, r31, 0x38
/* 80190348 0018D2A8  38 A1 00 18 */	addi r5, r1, 0x18
/* 8019034C 0018D2AC  48 18 26 05 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 80190350 0018D2B0  83 DF 00 88 */	lwz r30, 0x88(r31)
/* 80190354 0018D2B4  38 81 00 48 */	addi r4, r1, 0x48
/* 80190358 0018D2B8  38 7E 00 04 */	addi r3, r30, 4
/* 8019035C 0018D2BC  48 18 27 E5 */	bl __as__12CTransform4fFRC12CTransform4f
/* 80190360 0018D2C0  7F C3 F3 78 */	mr r3, r30
/* 80190364 0018D2C4  48 13 44 85 */	bl RecalculateTransforms__10CGuiObjectFv
/* 80190368 0018D2C8  C0 22 A5 04 */	lfs f1, lbl_805AC224@sda21(r2)
/* 8019036C 0018D2CC  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80190370 0018D2D0  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 80190374 0018D2D4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80190378 0018D2D8  EF 82 00 32 */	fmuls f28, f2, f0
/* 8019037C 0018D2DC  48 1B 9C 31 */	bl White__6CColorFv
/* 80190380 0018D2E0  C0 02 A5 08 */	lfs f0, lbl_805AC228@sda21(r2)
/* 80190384 0018D2E4  EF A0 07 32 */	fmuls f29, f0, f28
/* 80190388 0018D2E8  FF E0 E8 90 */	fmr f31, f29
/* 8019038C 0018D2EC  F3 E1 A0 0A */	psq_st f31, 10(r1), 1, qr2
/* 80190390 0018D2F0  38 81 00 14 */	addi r4, r1, 0x14
/* 80190394 0018D2F4  80 63 00 00 */	lwz r3, 0(r3)
/* 80190398 0018D2F8  88 01 00 0A */	lbz r0, 0xa(r1)
/* 8019039C 0018D2FC  50 60 00 2E */	rlwimi r0, r3, 0, 0, 0x17
/* 801903A0 0018D300  90 01 00 14 */	stw r0, 0x14(r1)
/* 801903A4 0018D304  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 801903A8 0018D308  48 13 A4 C5 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 801903AC 0018D30C  48 1B 9C 01 */	bl White__6CColorFv
/* 801903B0 0018D310  F3 A1 A0 09 */	psq_st f29, 9(r1), 1, qr2
/* 801903B4 0018D314  38 81 00 10 */	addi r4, r1, 0x10
/* 801903B8 0018D318  80 63 00 00 */	lwz r3, 0(r3)
/* 801903BC 0018D31C  88 01 00 09 */	lbz r0, 9(r1)
/* 801903C0 0018D320  50 60 00 2E */	rlwimi r0, r3, 0, 0, 0x17
/* 801903C4 0018D324  90 01 00 10 */	stw r0, 0x10(r1)
/* 801903C8 0018D328  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 801903CC 0018D32C  48 13 A4 A1 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 801903D0 0018D330  80 1F 00 8C */	lwz r0, 0x8c(r31)
/* 801903D4 0018D334  28 00 00 00 */	cmplwi r0, 0
/* 801903D8 0018D338  41 82 00 3C */	beq lbl_80190414
/* 801903DC 0018D33C  48 1B 9B D1 */	bl White__6CColorFv
/* 801903E0 0018D340  C0 22 A5 10 */	lfs f1, lbl_805AC230@sda21(r2)
/* 801903E4 0018D344  C0 02 A5 0C */	lfs f0, lbl_805AC22C@sda21(r2)
/* 801903E8 0018D348  C0 42 A5 08 */	lfs f2, lbl_805AC228@sda21(r2)
/* 801903EC 0018D34C  EC 01 07 3A */	fmadds f0, f1, f28, f0
/* 801903F0 0018D350  EF C2 00 32 */	fmuls f30, f2, f0
/* 801903F4 0018D354  F3 C1 A0 08 */	psq_st f30, 8(r1), 1, qr2
/* 801903F8 0018D358  38 81 00 0C */	addi r4, r1, 0xc
/* 801903FC 0018D35C  80 63 00 00 */	lwz r3, 0(r3)
/* 80190400 0018D360  88 01 00 08 */	lbz r0, 8(r1)
/* 80190404 0018D364  50 60 00 2E */	rlwimi r0, r3, 0, 0, 0x17
/* 80190408 0018D368  90 01 00 0C */	stw r0, 0xc(r1)
/* 8019040C 0018D36C  80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 80190410 0018D370  48 13 A4 5D */	bl SetColor__10CGuiWidgetFRC6CColor
lbl_80190414:
/* 80190414 0018D374  C0 02 A4 FC */	lfs f0, lbl_805AC21C@sda21(r2)
/* 80190418 0018D378  FC 00 E0 00 */	fcmpu cr0, f0, f28
/* 8019041C 0018D37C  40 82 00 28 */	bne lbl_80190444
/* 80190420 0018D380  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 80190424 0018D384  38 80 00 00 */	li r4, 0
/* 80190428 0018D388  38 A0 00 01 */	li r5, 1
/* 8019042C 0018D38C  48 13 A2 BD */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 80190430 0018D390  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 80190434 0018D394  38 80 00 00 */	li r4, 0
/* 80190438 0018D398  38 A0 00 01 */	li r5, 1
/* 8019043C 0018D39C  48 13 A2 AD */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 80190440 0018D3A0  48 00 00 24 */	b lbl_80190464
lbl_80190444:
/* 80190444 0018D3A4  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 80190448 0018D3A8  38 80 00 01 */	li r4, 1
/* 8019044C 0018D3AC  38 A0 00 01 */	li r5, 1
/* 80190450 0018D3B0  48 13 A2 99 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 80190454 0018D3B4  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 80190458 0018D3B8  38 80 00 01 */	li r4, 1
/* 8019045C 0018D3BC  38 A0 00 01 */	li r5, 1
/* 80190460 0018D3C0  48 13 A2 89 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
lbl_80190464:
/* 80190464 0018D3C4  E3 E1 01 18 */	psq_l f31, 280(r1), 0, qr0
/* 80190468 0018D3C8  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 8019046C 0018D3CC  E3 C1 01 08 */	psq_l f30, 264(r1), 0, qr0
/* 80190470 0018D3D0  CB C1 01 00 */	lfd f30, 0x100(r1)
/* 80190474 0018D3D4  E3 A1 00 F8 */	psq_l f29, 248(r1), 0, qr0
/* 80190478 0018D3D8  CB A1 00 F0 */	lfd f29, 0xf0(r1)
/* 8019047C 0018D3DC  E3 81 00 E8 */	psq_l f28, 232(r1), 0, qr0
/* 80190480 0018D3E0  CB 81 00 E0 */	lfd f28, 0xe0(r1)
/* 80190484 0018D3E4  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 80190488 0018D3E8  80 01 01 24 */	lwz r0, 0x124(r1)
/* 8019048C 0018D3EC  83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 80190490 0018D3F0  7C 08 03 A6 */	mtlr r0
/* 80190494 0018D3F4  38 21 01 20 */	addi r1, r1, 0x120
/* 80190498 0018D3F8  4E 80 00 20 */	blr

.global __ct__21CHudFreeLookInterfaceFR9CGuiFrame8EHudTypebbb
__ct__21CHudFreeLookInterfaceFR9CGuiFrame8EHudTypebbb:
/* 8019049C 0018D3FC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801904A0 0018D400  7C 08 02 A6 */	mflr r0
/* 801904A4 0018D404  3D 20 80 3E */	lis r9, lbl_803DA2E8@ha
/* 801904A8 0018D408  90 01 00 34 */	stw r0, 0x34(r1)
/* 801904AC 0018D40C  38 09 A2 E8 */	addi r0, r9, lbl_803DA2E8@l
/* 801904B0 0018D410  3D 20 80 3D */	lis r9, lbl_803D0A48@ha
/* 801904B4 0018D414  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 801904B8 0018D418  7C 7E 1B 78 */	mr r30, r3
/* 801904BC 0018D41C  3C 60 80 3E */	lis r3, lbl_803E4470@ha
/* 801904C0 0018D420  7C B9 2B 78 */	mr r25, r5
/* 801904C4 0018D424  7C 9F 23 78 */	mr r31, r4
/* 801904C8 0018D428  7C DA 33 78 */	mr r26, r6
/* 801904CC 0018D42C  7C FB 3B 78 */	mr r27, r7
/* 801904D0 0018D430  7D 1C 43 78 */	mr r28, r8
/* 801904D4 0018D434  3B A9 0A 48 */	addi r29, r9, lbl_803D0A48@l
/* 801904D8 0018D438  90 1E 00 00 */	stw r0, 0(r30)
/* 801904DC 0018D43C  38 03 44 70 */	addi r0, r3, lbl_803E4470@l
/* 801904E0 0018D440  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 801904E4 0018D444  90 1E 00 00 */	stw r0, 0(r30)
/* 801904E8 0018D448  38 03 66 70 */	addi r0, r3, sIdentity__12CTransform4f@l
/* 801904EC 0018D44C  7C 04 03 78 */	mr r4, r0
/* 801904F0 0018D450  38 7E 00 08 */	addi r3, r30, 8
/* 801904F4 0018D454  93 3E 00 04 */	stw r25, 4(r30)
/* 801904F8 0018D458  48 18 26 7D */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801904FC 0018D45C  3C 80 80 5A */	lis r4, sIdentity__12CTransform4f@ha
/* 80190500 0018D460  38 7E 00 38 */	addi r3, r30, 0x38
/* 80190504 0018D464  38 84 66 70 */	addi r4, r4, sIdentity__12CTransform4f@l
/* 80190508 0018D468  48 18 26 6D */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8019050C 0018D46C  C0 02 A4 FC */	lfs f0, lbl_805AC21C@sda21(r2)
/* 80190510 0018D470  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80190514 0018D474  38 00 00 00 */	li r0, 0
/* 80190518 0018D478  D0 1E 00 68 */	stfs f0, 0x68(r30)
/* 8019051C 0018D47C  41 82 00 10 */	beq lbl_8019052C
/* 80190520 0018D480  2C 19 00 01 */	cmpwi r25, 1
/* 80190524 0018D484  40 82 00 08 */	bne lbl_8019052C
/* 80190528 0018D488  38 00 00 01 */	li r0, 1
lbl_8019052C:
/* 8019052C 0018D48C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80190530 0018D490  41 82 00 0C */	beq lbl_8019053C
/* 80190534 0018D494  C0 02 A4 FC */	lfs f0, lbl_805AC21C@sda21(r2)
/* 80190538 0018D498  48 00 00 08 */	b lbl_80190540
lbl_8019053C:
/* 8019053C 0018D49C  C0 02 A5 04 */	lfs f0, lbl_805AC224@sda21(r2)
lbl_80190540:
/* 80190540 0018D4A0  D0 1E 00 6C */	stfs f0, 0x6c(r30)
/* 80190544 0018D4A4  38 A0 00 01 */	li r5, 1
/* 80190548 0018D4A8  7F E3 FB 78 */	mr r3, r31
/* 8019054C 0018D4AC  38 9D 00 3C */	addi r4, r29, 0x3c
/* 80190550 0018D4B0  88 1E 00 70 */	lbz r0, 0x70(r30)
/* 80190554 0018D4B4  53 40 3E 30 */	rlwimi r0, r26, 7, 0x18, 0x18
/* 80190558 0018D4B8  98 1E 00 70 */	stb r0, 0x70(r30)
/* 8019055C 0018D4BC  88 1E 00 70 */	lbz r0, 0x70(r30)
/* 80190560 0018D4C0  53 60 36 72 */	rlwimi r0, r27, 6, 0x19, 0x19
/* 80190564 0018D4C4  98 1E 00 70 */	stb r0, 0x70(r30)
/* 80190568 0018D4C8  88 1E 00 70 */	lbz r0, 0x70(r30)
/* 8019056C 0018D4CC  53 80 2E B4 */	rlwimi r0, r28, 5, 0x1a, 0x1a
/* 80190570 0018D4D0  98 1E 00 70 */	stb r0, 0x70(r30)
/* 80190574 0018D4D4  88 1E 00 70 */	lbz r0, 0x70(r30)
/* 80190578 0018D4D8  50 A0 26 F6 */	rlwimi r0, r5, 4, 0x1b, 0x1b
/* 8019057C 0018D4DC  98 1E 00 70 */	stb r0, 0x70(r30)
/* 80190580 0018D4E0  88 1E 00 70 */	lbz r0, 0x70(r30)
/* 80190584 0018D4E4  50 A0 1F 38 */	rlwimi r0, r5, 3, 0x1c, 0x1c
/* 80190588 0018D4E8  98 1E 00 70 */	stb r0, 0x70(r30)
/* 8019058C 0018D4EC  48 13 1B C9 */	bl FindWidget__9CGuiFrameCFPCc
/* 80190590 0018D4F0  90 7E 00 74 */	stw r3, 0x74(r30)
/* 80190594 0018D4F4  7F E3 FB 78 */	mr r3, r31
/* 80190598 0018D4F8  38 9D 00 54 */	addi r4, r29, 0x54
/* 8019059C 0018D4FC  48 13 1B B9 */	bl FindWidget__9CGuiFrameCFPCc
/* 801905A0 0018D500  90 7E 00 78 */	stw r3, 0x78(r30)
/* 801905A4 0018D504  7F E3 FB 78 */	mr r3, r31
/* 801905A8 0018D508  38 9D 00 14 */	addi r4, r29, 0x14
/* 801905AC 0018D50C  48 13 1B A9 */	bl FindWidget__9CGuiFrameCFPCc
/* 801905B0 0018D510  90 7E 00 7C */	stw r3, 0x7c(r30)
/* 801905B4 0018D514  7F E3 FB 78 */	mr r3, r31
/* 801905B8 0018D518  38 9D 00 CC */	addi r4, r29, 0xcc
/* 801905BC 0018D51C  48 13 1B 99 */	bl FindWidget__9CGuiFrameCFPCc
/* 801905C0 0018D520  90 7E 00 80 */	stw r3, 0x80(r30)
/* 801905C4 0018D524  7F E3 FB 78 */	mr r3, r31
/* 801905C8 0018D528  38 9D 00 E8 */	addi r4, r29, 0xe8
/* 801905CC 0018D52C  48 13 1B 89 */	bl FindWidget__9CGuiFrameCFPCc
/* 801905D0 0018D530  90 7E 00 84 */	stw r3, 0x84(r30)
/* 801905D4 0018D534  7F E3 FB 78 */	mr r3, r31
/* 801905D8 0018D538  38 9D 00 28 */	addi r4, r29, 0x28
/* 801905DC 0018D53C  48 13 1B 79 */	bl FindWidget__9CGuiFrameCFPCc
/* 801905E0 0018D540  3C 80 80 3D */	lis r4, lbl_803D0BB4@ha
/* 801905E4 0018D544  90 7E 00 88 */	stw r3, 0x88(r30)
/* 801905E8 0018D548  38 84 0B B4 */	addi r4, r4, lbl_803D0BB4@l
/* 801905EC 0018D54C  7F E3 FB 78 */	mr r3, r31
/* 801905F0 0018D550  48 13 1B 65 */	bl FindWidget__9CGuiFrameCFPCc
/* 801905F4 0018D554  90 7E 00 8C */	stw r3, 0x8c(r30)
/* 801905F8 0018D558  38 7E 00 08 */	addi r3, r30, 8
/* 801905FC 0018D55C  80 9E 00 7C */	lwz r4, 0x7c(r30)
/* 80190600 0018D560  38 84 00 74 */	addi r4, r4, 0x74
/* 80190604 0018D564  48 18 25 3D */	bl __as__12CTransform4fFRC12CTransform4f
/* 80190608 0018D568  80 9E 00 88 */	lwz r4, 0x88(r30)
/* 8019060C 0018D56C  38 7E 00 38 */	addi r3, r30, 0x38
/* 80190610 0018D570  38 84 00 74 */	addi r4, r4, 0x74
/* 80190614 0018D574  48 18 25 2D */	bl __as__12CTransform4fFRC12CTransform4f
/* 80190618 0018D578  80 9E 00 78 */	lwz r4, 0x78(r30)
/* 8019061C 0018D57C  38 A0 00 01 */	li r5, 1
/* 80190620 0018D580  7F C3 F3 78 */	mr r3, r30
/* 80190624 0018D584  88 04 00 B7 */	lbz r0, 0xb7(r4)
/* 80190628 0018D588  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 8019062C 0018D58C  98 04 00 B7 */	stb r0, 0xb7(r4)
/* 80190630 0018D590  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80190634 0018D594  88 04 00 B7 */	lbz r0, 0xb7(r4)
/* 80190638 0018D598  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 8019063C 0018D59C  98 04 00 B7 */	stb r0, 0xb7(r4)
/* 80190640 0018D5A0  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 80190644 0018D5A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80190648 0018D5A8  7C 08 03 A6 */	mtlr r0
/* 8019064C 0018D5AC  38 21 00 30 */	addi r1, r1, 0x30
/* 80190650 0018D5B0  4E 80 00 20 */	blr

.global Update__25CHudFreeLookInterfaceXRayFf
Update__25CHudFreeLookInterfaceXRayFf:
/* 80190654 0018D5B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80190658 0018D5B8  88 03 00 20 */	lbz r0, 0x20(r3)
/* 8019065C 0018D5BC  28 00 00 00 */	cmplwi r0, 0
/* 80190660 0018D5C0  41 82 00 40 */	beq lbl_801906A0
/* 80190664 0018D5C4  80 8D A1 38 */	lwz r4, gpTweakGui@sda21(r13)
/* 80190668 0018D5C8  C0 63 00 1C */	lfs f3, 0x1c(r3)
/* 8019066C 0018D5CC  C0 44 01 18 */	lfs f2, 0x118(r4)
/* 80190670 0018D5D0  C0 0D 8F 18 */	lfs f0, lbl_805A7AD8@sda21(r13)
/* 80190674 0018D5D4  EC 21 10 24 */	fdivs f1, f1, f2
/* 80190678 0018D5D8  EC 23 08 2A */	fadds f1, f3, f1
/* 8019067C 0018D5DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80190680 0018D5E0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80190684 0018D5E4  40 80 00 0C */	bge lbl_80190690
/* 80190688 0018D5E8  38 81 00 0C */	addi r4, r1, 0xc
/* 8019068C 0018D5EC  48 00 00 08 */	b lbl_80190694
lbl_80190690:
/* 80190690 0018D5F0  38 8D 8F 18 */	addi r4, r13, lbl_805A7AD8@sda21
lbl_80190694:
/* 80190694 0018D5F4  C0 04 00 00 */	lfs f0, 0(r4)
/* 80190698 0018D5F8  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8019069C 0018D5FC  48 00 00 3C */	b lbl_801906D8
lbl_801906A0:
/* 801906A0 0018D600  80 8D A1 38 */	lwz r4, gpTweakGui@sda21(r13)
/* 801906A4 0018D604  C0 63 00 1C */	lfs f3, 0x1c(r3)
/* 801906A8 0018D608  C0 44 01 18 */	lfs f2, 0x118(r4)
/* 801906AC 0018D60C  C0 0D 8F 1C */	lfs f0, lbl_805A7ADC@sda21(r13)
/* 801906B0 0018D610  EC 21 10 24 */	fdivs f1, f1, f2
/* 801906B4 0018D614  EC 23 08 28 */	fsubs f1, f3, f1
/* 801906B8 0018D618  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801906BC 0018D61C  D0 21 00 08 */	stfs f1, 8(r1)
/* 801906C0 0018D620  40 80 00 0C */	bge lbl_801906CC
/* 801906C4 0018D624  38 81 00 08 */	addi r4, r1, 8
/* 801906C8 0018D628  48 00 00 08 */	b lbl_801906D0
lbl_801906CC:
/* 801906CC 0018D62C  38 8D 8F 1C */	addi r4, r13, lbl_805A7ADC@sda21
lbl_801906D0:
/* 801906D0 0018D630  C0 04 00 00 */	lfs f0, 0(r4)
/* 801906D4 0018D634  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_801906D8:
/* 801906D8 0018D638  38 21 00 10 */	addi r1, r1, 0x10
/* 801906DC 0018D63C  4E 80 00 20 */	blr

.global UpdateVisibility__25CHudFreeLookInterfaceXRayFv
UpdateVisibility__25CHudFreeLookInterfaceXRayFv:
/* 801906E0 0018D640  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801906E4 0018D644  7C 08 02 A6 */	mflr r0
/* 801906E8 0018D648  90 01 00 24 */	stw r0, 0x24(r1)
/* 801906EC 0018D64C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801906F0 0018D650  3B E0 00 00 */	li r31, 0
/* 801906F4 0018D654  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801906F8 0018D658  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801906FC 0018D65C  7C 7D 1B 78 */	mr r29, r3
/* 80190700 0018D660  88 63 00 22 */	lbz r3, 0x22(r3)
/* 80190704 0018D664  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 80190708 0018D668  41 82 00 10 */	beq lbl_80190718
/* 8019070C 0018D66C  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 80190710 0018D670  41 82 00 08 */	beq lbl_80190718
/* 80190714 0018D674  3B E0 00 01 */	li r31, 1
lbl_80190718:
/* 80190718 0018D678  57 FE 06 3E */	clrlwi r30, r31, 0x18
/* 8019071C 0018D67C  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 80190720 0018D680  7F C4 F3 78 */	mr r4, r30
/* 80190724 0018D684  38 A0 00 01 */	li r5, 1
/* 80190728 0018D688  48 13 9F C1 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 8019072C 0018D68C  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 80190730 0018D690  7F C4 F3 78 */	mr r4, r30
/* 80190734 0018D694  38 A0 00 01 */	li r5, 1
/* 80190738 0018D698  48 13 9F B1 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 8019073C 0018D69C  7F C0 F3 79 */	or. r0, r30, r30
/* 80190740 0018D6A0  41 82 00 1C */	beq lbl_8019075C
/* 80190744 0018D6A4  7F A3 EB 78 */	mr r3, r29
/* 80190748 0018D6A8  C0 22 A4 FC */	lfs f1, lbl_805AC21C@sda21(r2)
/* 8019074C 0018D6AC  81 9D 00 00 */	lwz r12, 0(r29)
/* 80190750 0018D6B0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80190754 0018D6B4  7D 89 03 A6 */	mtctr r12
/* 80190758 0018D6B8  4E 80 04 21 */	bctrl
lbl_8019075C:
/* 8019075C 0018D6BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80190760 0018D6C0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80190764 0018D6C4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80190768 0018D6C8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8019076C 0018D6CC  7C 08 03 A6 */	mtlr r0
/* 80190770 0018D6D0  38 21 00 20 */	addi r1, r1, 0x20
/* 80190774 0018D6D4  4E 80 00 20 */	blr

.global SetIsVisibleGame__25CHudFreeLookInterfaceXRayFb
SetIsVisibleGame__25CHudFreeLookInterfaceXRayFb:
/* 80190778 0018D6D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019077C 0018D6DC  7C 08 02 A6 */	mflr r0
/* 80190780 0018D6E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80190784 0018D6E4  88 03 00 22 */	lbz r0, 0x22(r3)
/* 80190788 0018D6E8  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 8019078C 0018D6EC  98 03 00 22 */	stb r0, 0x22(r3)
/* 80190790 0018D6F0  4B FF FF 51 */	bl UpdateVisibility__25CHudFreeLookInterfaceXRayFv
/* 80190794 0018D6F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80190798 0018D6F8  7C 08 03 A6 */	mtlr r0
/* 8019079C 0018D6FC  38 21 00 10 */	addi r1, r1, 0x10
/* 801907A0 0018D700  4E 80 00 20 */	blr

.global SetIsVisibleDebug__25CHudFreeLookInterfaceXRayFb
SetIsVisibleDebug__25CHudFreeLookInterfaceXRayFb:
/* 801907A4 0018D704  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801907A8 0018D708  7C 08 02 A6 */	mflr r0
/* 801907AC 0018D70C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801907B0 0018D710  88 03 00 22 */	lbz r0, 0x22(r3)
/* 801907B4 0018D714  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 801907B8 0018D718  98 03 00 22 */	stb r0, 0x22(r3)
/* 801907BC 0018D71C  4B FF FF 25 */	bl UpdateVisibility__25CHudFreeLookInterfaceXRayFv
/* 801907C0 0018D720  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801907C4 0018D724  7C 08 03 A6 */	mtlr r0
/* 801907C8 0018D728  38 21 00 10 */	addi r1, r1, 0x10
/* 801907CC 0018D72C  4E 80 00 20 */	blr

.global SetFreeLookState__25CHudFreeLookInterfaceXRayFbbbf
SetFreeLookState__25CHudFreeLookInterfaceXRayFbbbf:
/* 801907D0 0018D730  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 801907D4 0018D734  7C 08 02 A6 */	mflr r0
/* 801907D8 0018D738  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 801907DC 0018D73C  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 801907E0 0018D740  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, qr0
/* 801907E4 0018D744  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 801907E8 0018D748  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, qr0
/* 801907EC 0018D74C  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 801907F0 0018D750  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 801907F4 0018D754  98 83 00 20 */	stb r4, 0x20(r3)
/* 801907F8 0018D758  7C 7E 1B 78 */	mr r30, r3
/* 801907FC 0018D75C  FF C0 08 90 */	fmr f30, f1
/* 80190800 0018D760  38 61 00 6C */	addi r3, r1, 0x6c
/* 80190804 0018D764  98 BE 00 21 */	stb r5, 0x21(r30)
/* 80190808 0018D768  38 81 00 14 */	addi r4, r1, 0x14
/* 8019080C 0018D76C  D3 C1 00 14 */	stfs f30, 0x14(r1)
/* 80190810 0018D770  48 17 FC 85 */	bl RotateY__9CMatrix3fFRC9CRelAngle
/* 80190814 0018D774  38 61 00 90 */	addi r3, r1, 0x90
/* 80190818 0018D778  38 81 00 6C */	addi r4, r1, 0x6c
/* 8019081C 0018D77C  38 BE 00 04 */	addi r5, r30, 4
/* 80190820 0018D780  48 18 2A 59 */	bl __ct__12CTransform4fFRC9CMatrix3fRC9CVector3f
/* 80190824 0018D784  83 FE 00 2C */	lwz r31, 0x2c(r30)
/* 80190828 0018D788  38 81 00 90 */	addi r4, r1, 0x90
/* 8019082C 0018D78C  38 7F 00 04 */	addi r3, r31, 4
/* 80190830 0018D790  48 18 23 11 */	bl __as__12CTransform4fFRC12CTransform4f
/* 80190834 0018D794  7F E3 FB 78 */	mr r3, r31
/* 80190838 0018D798  48 13 3F B1 */	bl RecalculateTransforms__10CGuiObjectFv
/* 8019083C 0018D79C  FC 00 F0 50 */	fneg f0, f30
/* 80190840 0018D7A0  38 61 00 18 */	addi r3, r1, 0x18
/* 80190844 0018D7A4  38 81 00 10 */	addi r4, r1, 0x10
/* 80190848 0018D7A8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8019084C 0018D7AC  48 17 FC 49 */	bl RotateY__9CMatrix3fFRC9CRelAngle
/* 80190850 0018D7B0  38 61 00 3C */	addi r3, r1, 0x3c
/* 80190854 0018D7B4  38 81 00 18 */	addi r4, r1, 0x18
/* 80190858 0018D7B8  38 BE 00 10 */	addi r5, r30, 0x10
/* 8019085C 0018D7BC  48 18 2A 1D */	bl __ct__12CTransform4fFRC9CMatrix3fRC9CVector3f
/* 80190860 0018D7C0  83 FE 00 30 */	lwz r31, 0x30(r30)
/* 80190864 0018D7C4  38 81 00 3C */	addi r4, r1, 0x3c
/* 80190868 0018D7C8  38 7F 00 04 */	addi r3, r31, 4
/* 8019086C 0018D7CC  48 18 22 D5 */	bl __as__12CTransform4fFRC12CTransform4f
/* 80190870 0018D7D0  7F E3 FB 78 */	mr r3, r31
/* 80190874 0018D7D4  48 13 3F 75 */	bl RecalculateTransforms__10CGuiObjectFv
/* 80190878 0018D7D8  C3 DE 00 1C */	lfs f30, 0x1c(r30)
/* 8019087C 0018D7DC  48 1B 97 31 */	bl White__6CColorFv
/* 80190880 0018D7E0  C0 02 A5 08 */	lfs f0, lbl_805AC228@sda21(r2)
/* 80190884 0018D7E4  EF E0 07 B2 */	fmuls f31, f0, f30
/* 80190888 0018D7E8  F3 E1 A0 08 */	psq_st f31, 8(r1), 1, qr2
/* 8019088C 0018D7EC  38 81 00 0C */	addi r4, r1, 0xc
/* 80190890 0018D7F0  80 63 00 00 */	lwz r3, 0(r3)
/* 80190894 0018D7F4  88 01 00 08 */	lbz r0, 8(r1)
/* 80190898 0018D7F8  50 60 00 2E */	rlwimi r0, r3, 0, 0, 0x17
/* 8019089C 0018D7FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 801908A0 0018D800  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 801908A4 0018D804  48 13 9F C9 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 801908A8 0018D808  C0 02 A4 FC */	lfs f0, lbl_805AC21C@sda21(r2)
/* 801908AC 0018D80C  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 801908B0 0018D810  40 82 00 18 */	bne lbl_801908C8
/* 801908B4 0018D814  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 801908B8 0018D818  38 80 00 00 */	li r4, 0
/* 801908BC 0018D81C  38 A0 00 01 */	li r5, 1
/* 801908C0 0018D820  48 13 9E 29 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 801908C4 0018D824  48 00 00 14 */	b lbl_801908D8
lbl_801908C8:
/* 801908C8 0018D828  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 801908CC 0018D82C  38 80 00 01 */	li r4, 1
/* 801908D0 0018D830  38 A0 00 01 */	li r5, 1
/* 801908D4 0018D834  48 13 9E 15 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
lbl_801908D8:
/* 801908D8 0018D838  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, qr0
/* 801908DC 0018D83C  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 801908E0 0018D840  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, qr0
/* 801908E4 0018D844  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 801908E8 0018D848  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 801908EC 0018D84C  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 801908F0 0018D850  83 C1 00 C8 */	lwz r30, 0xc8(r1)
/* 801908F4 0018D854  7C 08 03 A6 */	mtlr r0
/* 801908F8 0018D858  38 21 00 F0 */	addi r1, r1, 0xf0
/* 801908FC 0018D85C  4E 80 00 20 */	blr

.global __ct__25CHudFreeLookInterfaceXRayFR9CGuiFramebbUi
__ct__25CHudFreeLookInterfaceXRayFR9CGuiFramebbUi:
/* 80190900 0018D860  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80190904 0018D864  7C 08 02 A6 */	mflr r0
/* 80190908 0018D868  3D 00 80 3E */	lis r8, lbl_803DA2E8@ha
/* 8019090C 0018D86C  3C E0 80 3E */	lis r7, lbl_803E448C@ha
/* 80190910 0018D870  90 01 00 34 */	stw r0, 0x34(r1)
/* 80190914 0018D874  38 08 A2 E8 */	addi r0, r8, lbl_803DA2E8@l
/* 80190918 0018D878  3D 00 80 3D */	lis r8, lbl_803D0A48@ha
/* 8019091C 0018D87C  C0 02 A4 FC */	lfs f0, lbl_805AC21C@sda21(r2)
/* 80190920 0018D880  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80190924 0018D884  3B E8 0A 48 */	addi r31, r8, lbl_803D0A48@l
/* 80190928 0018D888  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8019092C 0018D88C  7C 9E 23 78 */	mr r30, r4
/* 80190930 0018D890  38 9F 00 00 */	addi r4, r31, 0
/* 80190934 0018D894  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80190938 0018D898  7C 7D 1B 78 */	mr r29, r3
/* 8019093C 0018D89C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80190940 0018D8A0  90 1D 00 00 */	stw r0, 0(r29)
/* 80190944 0018D8A4  38 07 44 8C */	addi r0, r7, lbl_803E448C@l
/* 80190948 0018D8A8  39 03 66 A0 */	addi r8, r3, sZeroVector__9CVector3f@l
/* 8019094C 0018D8AC  38 E0 00 01 */	li r7, 1
/* 80190950 0018D8B0  90 1D 00 00 */	stw r0, 0(r29)
/* 80190954 0018D8B4  7F C3 F3 78 */	mr r3, r30
/* 80190958 0018D8B8  C0 28 00 00 */	lfs f1, 0(r8)
/* 8019095C 0018D8BC  D0 3D 00 04 */	stfs f1, 4(r29)
/* 80190960 0018D8C0  C0 28 00 04 */	lfs f1, 4(r8)
/* 80190964 0018D8C4  D0 3D 00 08 */	stfs f1, 8(r29)
/* 80190968 0018D8C8  C0 28 00 08 */	lfs f1, 8(r8)
/* 8019096C 0018D8CC  D0 3D 00 0C */	stfs f1, 0xc(r29)
/* 80190970 0018D8D0  C0 28 00 00 */	lfs f1, 0(r8)
/* 80190974 0018D8D4  D0 3D 00 10 */	stfs f1, 0x10(r29)
/* 80190978 0018D8D8  C0 28 00 04 */	lfs f1, 4(r8)
/* 8019097C 0018D8DC  D0 3D 00 14 */	stfs f1, 0x14(r29)
/* 80190980 0018D8E0  C0 28 00 08 */	lfs f1, 8(r8)
/* 80190984 0018D8E4  D0 3D 00 18 */	stfs f1, 0x18(r29)
/* 80190988 0018D8E8  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 8019098C 0018D8EC  98 BD 00 20 */	stb r5, 0x20(r29)
/* 80190990 0018D8F0  98 DD 00 21 */	stb r6, 0x21(r29)
/* 80190994 0018D8F4  88 1D 00 22 */	lbz r0, 0x22(r29)
/* 80190998 0018D8F8  50 E0 3E 30 */	rlwimi r0, r7, 7, 0x18, 0x18
/* 8019099C 0018D8FC  98 1D 00 22 */	stb r0, 0x22(r29)
/* 801909A0 0018D900  88 1D 00 22 */	lbz r0, 0x22(r29)
/* 801909A4 0018D904  50 E0 36 72 */	rlwimi r0, r7, 6, 0x19, 0x19
/* 801909A8 0018D908  98 1D 00 22 */	stb r0, 0x22(r29)
/* 801909AC 0018D90C  48 13 17 A9 */	bl FindWidget__9CGuiFrameCFPCc
/* 801909B0 0018D910  90 7D 00 24 */	stw r3, 0x24(r29)
/* 801909B4 0018D914  7F C3 F3 78 */	mr r3, r30
/* 801909B8 0018D918  38 9F 00 14 */	addi r4, r31, 0x14
/* 801909BC 0018D91C  48 13 17 99 */	bl FindWidget__9CGuiFrameCFPCc
/* 801909C0 0018D920  90 7D 00 2C */	stw r3, 0x2c(r29)
/* 801909C4 0018D924  7F C3 F3 78 */	mr r3, r30
/* 801909C8 0018D928  38 9F 00 28 */	addi r4, r31, 0x28
/* 801909CC 0018D92C  48 13 17 89 */	bl FindWidget__9CGuiFrameCFPCc
/* 801909D0 0018D930  3C 80 80 3D */	lis r4, lbl_803D0BB4@ha
/* 801909D4 0018D934  90 7D 00 30 */	stw r3, 0x30(r29)
/* 801909D8 0018D938  38 84 0B B4 */	addi r4, r4, lbl_803D0BB4@l
/* 801909DC 0018D93C  7F C3 F3 78 */	mr r3, r30
/* 801909E0 0018D940  38 84 00 15 */	addi r4, r4, 0x15
/* 801909E4 0018D944  48 13 17 71 */	bl FindWidget__9CGuiFrameCFPCc
/* 801909E8 0018D948  90 7D 00 28 */	stw r3, 0x28(r29)
/* 801909EC 0018D94C  38 61 00 14 */	addi r3, r1, 0x14
/* 801909F0 0018D950  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 801909F4 0018D954  48 13 48 29 */	bl GetLocalPosition__10CGuiObjectCFv
/* 801909F8 0018D958  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801909FC 0018D95C  38 61 00 08 */	addi r3, r1, 8
/* 80190A00 0018D960  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80190A04 0018D964  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80190A08 0018D968  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80190A0C 0018D96C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80190A10 0018D970  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 80190A14 0018D974  80 9D 00 30 */	lwz r4, 0x30(r29)
/* 80190A18 0018D978  48 13 48 05 */	bl GetLocalPosition__10CGuiObjectCFv
/* 80190A1C 0018D97C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80190A20 0018D980  38 A0 00 01 */	li r5, 1
/* 80190A24 0018D984  7F A3 EB 78 */	mr r3, r29
/* 80190A28 0018D988  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 80190A2C 0018D98C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80190A30 0018D990  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 80190A34 0018D994  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80190A38 0018D998  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 80190A3C 0018D99C  80 9D 00 28 */	lwz r4, 0x28(r29)
/* 80190A40 0018D9A0  88 04 00 B7 */	lbz r0, 0xb7(r4)
/* 80190A44 0018D9A4  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 80190A48 0018D9A8  98 04 00 B7 */	stb r0, 0xb7(r4)
/* 80190A4C 0018D9AC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80190A50 0018D9B0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80190A54 0018D9B4  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80190A58 0018D9B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80190A5C 0018D9BC  7C 08 03 A6 */	mtlr r0
/* 80190A60 0018D9C0  38 21 00 30 */	addi r1, r1, 0x30
/* 80190A64 0018D9C4  4E 80 00 20 */	blr

.global __dt__25CHudFreeLookInterfaceXRayFv
__dt__25CHudFreeLookInterfaceXRayFv:
/* 80190A68 0018D9C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80190A6C 0018D9CC  7C 08 02 A6 */	mflr r0
/* 80190A70 0018D9D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80190A74 0018D9D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80190A78 0018D9D8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80190A7C 0018D9DC  41 82 00 30 */	beq lbl_80190AAC
/* 80190A80 0018D9E0  3C 60 80 3E */	lis r3, lbl_803E448C@ha
/* 80190A84 0018D9E4  38 03 44 8C */	addi r0, r3, lbl_803E448C@l
/* 80190A88 0018D9E8  90 1F 00 00 */	stw r0, 0(r31)
/* 80190A8C 0018D9EC  41 82 00 10 */	beq lbl_80190A9C
/* 80190A90 0018D9F0  3C 60 80 3E */	lis r3, lbl_803DA2E8@ha
/* 80190A94 0018D9F4  38 03 A2 E8 */	addi r0, r3, lbl_803DA2E8@l
/* 80190A98 0018D9F8  90 1F 00 00 */	stw r0, 0(r31)
lbl_80190A9C:
/* 80190A9C 0018D9FC  7C 80 07 35 */	extsh. r0, r4
/* 80190AA0 0018DA00  40 81 00 0C */	ble lbl_80190AAC
/* 80190AA4 0018DA04  7F E3 FB 78 */	mr r3, r31
/* 80190AA8 0018DA08  48 18 4E 89 */	bl Free__7CMemoryFPCv
lbl_80190AAC:
/* 80190AAC 0018DA0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80190AB0 0018DA10  7F E3 FB 78 */	mr r3, r31
/* 80190AB4 0018DA14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80190AB8 0018DA18  7C 08 03 A6 */	mtlr r0
/* 80190ABC 0018DA1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80190AC0 0018DA20  4E 80 00 20 */	blr

.global Update__19CHudHelmetInterfaceFf
Update__19CHudHelmetInterfaceFf:
/* 80190AC4 0018DA24  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80190AC8 0018DA28  7C 08 02 A6 */	mflr r0
/* 80190ACC 0018DA2C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80190AD0 0018DA30  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80190AD4 0018DA34  7C 7F 1B 78 */	mr r31, r3
/* 80190AD8 0018DA38  88 63 00 3C */	lbz r3, 0x3c(r3)
/* 80190ADC 0018DA3C  54 60 EF FF */	rlwinm. r0, r3, 0x1d, 0x1f, 0x1f
/* 80190AE0 0018DA40  41 82 00 68 */	beq lbl_80190B48
/* 80190AE4 0018DA44  38 00 00 00 */	li r0, 0
/* 80190AE8 0018DA48  7F E4 FB 78 */	mr r4, r31
/* 80190AEC 0018DA4C  50 03 1F 38 */	rlwimi r3, r0, 3, 0x1c, 0x1c
/* 80190AF0 0018DA50  38 A1 00 08 */	addi r5, r1, 8
/* 80190AF4 0018DA54  98 7F 00 3C */	stb r3, 0x3c(r31)
/* 80190AF8 0018DA58  38 61 00 14 */	addi r3, r1, 0x14
/* 80190AFC 0018DA5C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80190B00 0018DA60  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80190B04 0018DA64  C0 7F 00 2C */	lfs f3, 0x2c(r31)
/* 80190B08 0018DA68  EC 81 00 2A */	fadds f4, f1, f0
/* 80190B0C 0018DA6C  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 80190B10 0018DA70  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80190B14 0018DA74  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80190B18 0018DA78  EC 43 10 2A */	fadds f2, f3, f2
/* 80190B1C 0018DA7C  EC 01 00 2A */	fadds f0, f1, f0
/* 80190B20 0018DA80  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 80190B24 0018DA84  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80190B28 0018DA88  D0 01 00 08 */	stfs f0, 8(r1)
/* 80190B2C 0018DA8C  48 18 27 4D */	bl __ct__12CTransform4fFRC9CMatrix3fRC9CVector3f
/* 80190B30 0018DA90  83 FF 00 44 */	lwz r31, 0x44(r31)
/* 80190B34 0018DA94  38 81 00 14 */	addi r4, r1, 0x14
/* 80190B38 0018DA98  38 7F 00 74 */	addi r3, r31, 0x74
/* 80190B3C 0018DA9C  48 18 20 05 */	bl __as__12CTransform4fFRC12CTransform4f
/* 80190B40 0018DAA0  7F E3 FB 78 */	mr r3, r31
/* 80190B44 0018DAA4  48 13 9B 21 */	bl ReapplyXform__10CGuiWidgetFv
lbl_80190B48:
/* 80190B48 0018DAA8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80190B4C 0018DAAC  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80190B50 0018DAB0  7C 08 03 A6 */	mtlr r0
/* 80190B54 0018DAB4  38 21 00 50 */	addi r1, r1, 0x50
/* 80190B58 0018DAB8  4E 80 00 20 */	blr

.global SetHudLagOffset__19CHudHelmetInterfaceFRC9CVector3f
SetHudLagOffset__19CHudHelmetInterfaceFRC9CVector3f:
/* 80190B5C 0018DABC  C0 04 00 00 */	lfs f0, 0(r4)
/* 80190B60 0018DAC0  38 A0 00 01 */	li r5, 1
/* 80190B64 0018DAC4  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 80190B68 0018DAC8  C0 04 00 04 */	lfs f0, 4(r4)
/* 80190B6C 0018DACC  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80190B70 0018DAD0  C0 04 00 08 */	lfs f0, 8(r4)
/* 80190B74 0018DAD4  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 80190B78 0018DAD8  88 03 00 3C */	lbz r0, 0x3c(r3)
/* 80190B7C 0018DADC  50 A0 1F 38 */	rlwimi r0, r5, 3, 0x1c, 0x1c
/* 80190B80 0018DAE0  98 03 00 3C */	stb r0, 0x3c(r3)
/* 80190B84 0018DAE4  4E 80 00 20 */	blr

.global SetHudLagRotation__19CHudHelmetInterfaceFRC9CMatrix3f
SetHudLagRotation__19CHudHelmetInterfaceFRC9CMatrix3f:
/* 80190B88 0018DAE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80190B8C 0018DAEC  7C 08 02 A6 */	mflr r0
/* 80190B90 0018DAF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80190B94 0018DAF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80190B98 0018DAF8  7C 7F 1B 78 */	mr r31, r3
/* 80190B9C 0018DAFC  48 17 F4 5D */	bl __as__9CMatrix3fFRC9CMatrix3f
/* 80190BA0 0018DB00  88 1F 00 3C */	lbz r0, 0x3c(r31)
/* 80190BA4 0018DB04  38 60 00 01 */	li r3, 1
/* 80190BA8 0018DB08  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 80190BAC 0018DB0C  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 80190BB0 0018DB10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80190BB4 0018DB14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80190BB8 0018DB18  7C 08 03 A6 */	mtlr r0
/* 80190BBC 0018DB1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80190BC0 0018DB20  4E 80 00 20 */	blr

.global AddHelmetLightValue__19CHudHelmetInterfaceFf
AddHelmetLightValue__19CHudHelmetInterfaceFf:
/* 80190BC4 0018DB24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80190BC8 0018DB28  7C 08 02 A6 */	mflr r0
/* 80190BCC 0018DB2C  FC 40 08 90 */	fmr f2, f1
/* 80190BD0 0018DB30  90 01 00 24 */	stw r0, 0x24(r1)
/* 80190BD4 0018DB34  FC 60 08 90 */	fmr f3, f1
/* 80190BD8 0018DB38  FC 80 08 90 */	fmr f4, f1
/* 80190BDC 0018DB3C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80190BE0 0018DB40  7C 7F 1B 78 */	mr r31, r3
/* 80190BE4 0018DB44  38 61 00 0C */	addi r3, r1, 0xc
/* 80190BE8 0018DB48  48 1D 28 05 */	bl __ct__6CColorFffff
/* 80190BEC 0018DB4C  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 80190BF0 0018DB50  38 61 00 08 */	addi r3, r1, 8
/* 80190BF4 0018DB54  38 A1 00 0C */	addi r5, r1, 0xc
/* 80190BF8 0018DB58  38 84 00 8C */	addi r4, r4, 0x8c
/* 80190BFC 0018DB5C  48 1D 24 B5 */	bl Add__6CColorFRC6CColorRC6CColor
/* 80190C00 0018DB60  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 80190C04 0018DB64  38 81 00 08 */	addi r4, r1, 8
/* 80190C08 0018DB68  48 13 9C 65 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80190C0C 0018DB6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80190C10 0018DB70  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80190C14 0018DB74  7C 08 03 A6 */	mtlr r0
/* 80190C18 0018DB78  38 21 00 20 */	addi r1, r1, 0x20
/* 80190C1C 0018DB7C  4E 80 00 20 */	blr

.global UpdateCameraDebugSettings__19CHudHelmetInterfaceFfff
UpdateCameraDebugSettings__19CHudHelmetInterfaceFfff:
/* 80190C20 0018DB80  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80190C24 0018DB84  7C 08 02 A6 */	mflr r0
/* 80190C28 0018DB88  C0 02 A5 18 */	lfs f0, lbl_805AC238@sda21(r2)
/* 80190C2C 0018DB8C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80190C30 0018DB90  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 80190C34 0018DB94  7C 7F 1B 78 */	mr r31, r3
/* 80190C38 0018DB98  81 43 00 40 */	lwz r10, 0x40(r3)
/* 80190C3C 0018DB9C  38 61 00 44 */	addi r3, r1, 0x44
/* 80190C40 0018DBA0  80 8A 00 BC */	lwz r4, 0xbc(r10)
/* 80190C44 0018DBA4  81 2A 00 C0 */	lwz r9, 0xc0(r10)
/* 80190C48 0018DBA8  90 81 00 2C */	stw r4, 0x2c(r1)
/* 80190C4C 0018DBAC  81 0A 00 C4 */	lwz r8, 0xc4(r10)
/* 80190C50 0018DBB0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80190C54 0018DBB4  80 EA 00 C8 */	lwz r7, 0xc8(r10)
/* 80190C58 0018DBB8  80 CA 00 CC */	lwz r6, 0xcc(r10)
/* 80190C5C 0018DBBC  80 AA 00 D0 */	lwz r5, 0xd0(r10)
/* 80190C60 0018DBC0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80190C64 0018DBC4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80190C68 0018DBC8  90 0A 00 BC */	stw r0, 0xbc(r10)
/* 80190C6C 0018DBCC  91 2A 00 C0 */	stw r9, 0xc0(r10)
/* 80190C70 0018DBD0  91 0A 00 C4 */	stw r8, 0xc4(r10)
/* 80190C74 0018DBD4  90 EA 00 C8 */	stw r7, 0xc8(r10)
/* 80190C78 0018DBD8  90 CA 00 CC */	stw r6, 0xcc(r10)
/* 80190C7C 0018DBDC  90 AA 00 D0 */	stw r5, 0xd0(r10)
/* 80190C80 0018DBE0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80190C84 0018DBE4  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80190C88 0018DBE8  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 80190C8C 0018DBEC  80 9F 00 40 */	lwz r4, 0x40(r31)
/* 80190C90 0018DBF0  91 21 00 18 */	stw r9, 0x18(r1)
/* 80190C94 0018DBF4  38 84 00 74 */	addi r4, r4, 0x74
/* 80190C98 0018DBF8  91 01 00 1C */	stw r8, 0x1c(r1)
/* 80190C9C 0018DBFC  90 E1 00 20 */	stw r7, 0x20(r1)
/* 80190CA0 0018DC00  90 C1 00 24 */	stw r6, 0x24(r1)
/* 80190CA4 0018DC04  90 A1 00 28 */	stw r5, 0x28(r1)
/* 80190CA8 0018DC08  91 21 00 30 */	stw r9, 0x30(r1)
/* 80190CAC 0018DC0C  91 01 00 34 */	stw r8, 0x34(r1)
/* 80190CB0 0018DC10  90 E1 00 38 */	stw r7, 0x38(r1)
/* 80190CB4 0018DC14  90 C1 00 3C */	stw r6, 0x3c(r1)
/* 80190CB8 0018DC18  90 A1 00 40 */	stw r5, 0x40(r1)
/* 80190CBC 0018DC1C  48 18 24 39 */	bl BuildMatrix3f__12CTransform4fCFv
/* 80190CC0 0018DC20  38 61 00 68 */	addi r3, r1, 0x68
/* 80190CC4 0018DC24  38 81 00 44 */	addi r4, r1, 0x44
/* 80190CC8 0018DC28  38 A1 00 08 */	addi r5, r1, 8
/* 80190CCC 0018DC2C  48 18 25 AD */	bl __ct__12CTransform4fFRC9CMatrix3fRC9CVector3f
/* 80190CD0 0018DC30  83 FF 00 40 */	lwz r31, 0x40(r31)
/* 80190CD4 0018DC34  38 81 00 68 */	addi r4, r1, 0x68
/* 80190CD8 0018DC38  38 7F 00 74 */	addi r3, r31, 0x74
/* 80190CDC 0018DC3C  48 18 1E 65 */	bl __as__12CTransform4fFRC12CTransform4f
/* 80190CE0 0018DC40  7F E3 FB 78 */	mr r3, r31
/* 80190CE4 0018DC44  48 13 99 81 */	bl ReapplyXform__10CGuiWidgetFv
/* 80190CE8 0018DC48  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80190CEC 0018DC4C  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 80190CF0 0018DC50  7C 08 03 A6 */	mtlr r0
/* 80190CF4 0018DC54  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80190CF8 0018DC58  4E 80 00 20 */	blr

.global UpdateVisibility__19CHudHelmetInterfaceFv
UpdateVisibility__19CHudHelmetInterfaceFv:
/* 80190CFC 0018DC5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80190D00 0018DC60  7C 08 02 A6 */	mflr r0
/* 80190D04 0018DC64  38 80 00 00 */	li r4, 0
/* 80190D08 0018DC68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80190D0C 0018DC6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80190D10 0018DC70  93 C1 00 08 */	stw r30, 8(r1)
/* 80190D14 0018DC74  7C 7E 1B 78 */	mr r30, r3
/* 80190D18 0018DC78  88 63 00 3C */	lbz r3, 0x3c(r3)
/* 80190D1C 0018DC7C  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 80190D20 0018DC80  41 82 00 10 */	beq lbl_80190D30
/* 80190D24 0018DC84  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 80190D28 0018DC88  41 82 00 08 */	beq lbl_80190D30
/* 80190D2C 0018DC8C  38 80 00 01 */	li r4, 1
lbl_80190D30:
/* 80190D30 0018DC90  88 7E 00 3C */	lbz r3, 0x3c(r30)
/* 80190D34 0018DC94  3B E0 00 00 */	li r31, 0
/* 80190D38 0018DC98  54 60 DF FF */	rlwinm. r0, r3, 0x1b, 0x1f, 0x1f
/* 80190D3C 0018DC9C  41 82 00 10 */	beq lbl_80190D4C
/* 80190D40 0018DCA0  54 60 E7 FF */	rlwinm. r0, r3, 0x1c, 0x1f, 0x1f
/* 80190D44 0018DCA4  41 82 00 08 */	beq lbl_80190D4C
/* 80190D48 0018DCA8  3B E0 00 01 */	li r31, 1
lbl_80190D4C:
/* 80190D4C 0018DCAC  80 7E 00 48 */	lwz r3, 0x48(r30)
/* 80190D50 0018DCB0  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 80190D54 0018DCB4  38 A0 00 01 */	li r5, 1
/* 80190D58 0018DCB8  48 13 99 91 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 80190D5C 0018DCBC  80 7E 00 4C */	lwz r3, 0x4c(r30)
/* 80190D60 0018DCC0  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 80190D64 0018DCC4  38 A0 00 01 */	li r5, 1
/* 80190D68 0018DCC8  48 13 99 81 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 80190D6C 0018DCCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80190D70 0018DCD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80190D74 0018DCD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80190D78 0018DCD8  7C 08 03 A6 */	mtlr r0
/* 80190D7C 0018DCDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80190D80 0018DCE0  4E 80 00 20 */	blr

.global UpdateHelmetAlpha__19CHudHelmetInterfaceFv
UpdateHelmetAlpha__19CHudHelmetInterfaceFv:
/* 80190D84 0018DCE4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80190D88 0018DCE8  7C 08 02 A6 */	mflr r0
/* 80190D8C 0018DCEC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80190D90 0018DCF0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80190D94 0018DCF4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 80190D98 0018DCF8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80190D9C 0018DCFC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 80190DA0 0018DD00  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80190DA4 0018DD04  80 8D A0 80 */	lwz r4, gpGameState@sda21(r13)
/* 80190DA8 0018DD08  7C 7F 1B 78 */	mr r31, r3
/* 80190DAC 0018DD0C  38 64 01 7C */	addi r3, r4, 0x17c
/* 80190DB0 0018DD10  48 07 DF 91 */	bl GetHelmetAlpha__12CGameOptionsCFv
/* 80190DB4 0018DD14  FF E0 08 90 */	fmr f31, f1
/* 80190DB8 0018DD18  48 1B 91 F5 */	bl White__6CColorFv
/* 80190DBC 0018DD1C  C0 02 A5 1C */	lfs f0, lbl_805AC23C@sda21(r2)
/* 80190DC0 0018DD20  EF C0 07 F2 */	fmuls f30, f0, f31
/* 80190DC4 0018DD24  F3 C1 A0 08 */	psq_st f30, 8(r1), 1, qr2
/* 80190DC8 0018DD28  38 81 00 0C */	addi r4, r1, 0xc
/* 80190DCC 0018DD2C  80 63 00 00 */	lwz r3, 0(r3)
/* 80190DD0 0018DD30  88 01 00 08 */	lbz r0, 8(r1)
/* 80190DD4 0018DD34  50 60 00 2E */	rlwimi r0, r3, 0, 0, 0x17
/* 80190DD8 0018DD38  90 01 00 0C */	stw r0, 0xc(r1)
/* 80190DDC 0018DD3C  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 80190DE0 0018DD40  48 13 9A 8D */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80190DE4 0018DD44  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 80190DE8 0018DD48  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80190DEC 0018DD4C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 80190DF0 0018DD50  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80190DF4 0018DD54  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80190DF8 0018DD58  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80190DFC 0018DD5C  7C 08 03 A6 */	mtlr r0
/* 80190E00 0018DD60  38 21 00 40 */	addi r1, r1, 0x40
/* 80190E04 0018DD64  4E 80 00 20 */	blr

.global SetIsVisibleDebug__19CHudHelmetInterfaceFbb
SetIsVisibleDebug__19CHudHelmetInterfaceFbb:
/* 80190E08 0018DD68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80190E0C 0018DD6C  7C 08 02 A6 */	mflr r0
/* 80190E10 0018DD70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80190E14 0018DD74  88 03 00 3C */	lbz r0, 0x3c(r3)
/* 80190E18 0018DD78  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80190E1C 0018DD7C  98 03 00 3C */	stb r0, 0x3c(r3)
/* 80190E20 0018DD80  88 03 00 3C */	lbz r0, 0x3c(r3)
/* 80190E24 0018DD84  50 A0 2E B4 */	rlwimi r0, r5, 5, 0x1a, 0x1a
/* 80190E28 0018DD88  98 03 00 3C */	stb r0, 0x3c(r3)
/* 80190E2C 0018DD8C  4B FF FE D1 */	bl UpdateVisibility__19CHudHelmetInterfaceFv
/* 80190E30 0018DD90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80190E34 0018DD94  7C 08 03 A6 */	mtlr r0
/* 80190E38 0018DD98  38 21 00 10 */	addi r1, r1, 0x10
/* 80190E3C 0018DD9C  4E 80 00 20 */	blr

.global __ct__19CHudHelmetInterfaceFR9CGuiFrame
__ct__19CHudHelmetInterfaceFR9CGuiFrame:
/* 80190E40 0018DDA0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80190E44 0018DDA4  7C 08 02 A6 */	mflr r0
/* 80190E48 0018DDA8  3C A0 80 5A */	lis r5, lbl_805A65FC@ha
/* 80190E4C 0018DDAC  3C C0 80 3D */	lis r6, lbl_803D0BD8@ha
/* 80190E50 0018DDB0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80190E54 0018DDB4  38 05 65 FC */	addi r0, r5, lbl_805A65FC@l
/* 80190E58 0018DDB8  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80190E5C 0018DDBC  3B E6 0B D8 */	addi r31, r6, lbl_803D0BD8@l
/* 80190E60 0018DDC0  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80190E64 0018DDC4  7C 9E 23 78 */	mr r30, r4
/* 80190E68 0018DDC8  7C 04 03 78 */	mr r4, r0
/* 80190E6C 0018DDCC  93 A1 00 54 */	stw r29, 0x54(r1)
/* 80190E70 0018DDD0  7C 7D 1B 78 */	mr r29, r3
/* 80190E74 0018DDD4  48 17 F1 B1 */	bl __ct__9CMatrix3fFRC9CMatrix3f
/* 80190E78 0018DDD8  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80190E7C 0018DDDC  38 C0 00 01 */	li r6, 1
/* 80190E80 0018DDE0  38 E3 66 A0 */	addi r7, r3, sZeroVector__9CVector3f@l
/* 80190E84 0018DDE4  38 A0 00 00 */	li r5, 0
/* 80190E88 0018DDE8  C0 07 00 00 */	lfs f0, 0(r7)
/* 80190E8C 0018DDEC  38 61 00 38 */	addi r3, r1, 0x38
/* 80190E90 0018DDF0  38 9F 00 00 */	addi r4, r31, 0
/* 80190E94 0018DDF4  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 80190E98 0018DDF8  C0 07 00 04 */	lfs f0, 4(r7)
/* 80190E9C 0018DDFC  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 80190EA0 0018DE00  C0 07 00 08 */	lfs f0, 8(r7)
/* 80190EA4 0018DE04  D0 1D 00 2C */	stfs f0, 0x2c(r29)
/* 80190EA8 0018DE08  C0 07 00 00 */	lfs f0, 0(r7)
/* 80190EAC 0018DE0C  D0 1D 00 30 */	stfs f0, 0x30(r29)
/* 80190EB0 0018DE10  C0 07 00 04 */	lfs f0, 4(r7)
/* 80190EB4 0018DE14  D0 1D 00 34 */	stfs f0, 0x34(r29)
/* 80190EB8 0018DE18  C0 07 00 08 */	lfs f0, 8(r7)
/* 80190EBC 0018DE1C  D0 1D 00 38 */	stfs f0, 0x38(r29)
/* 80190EC0 0018DE20  88 1D 00 3C */	lbz r0, 0x3c(r29)
/* 80190EC4 0018DE24  50 C0 3E 30 */	rlwimi r0, r6, 7, 0x18, 0x18
/* 80190EC8 0018DE28  98 1D 00 3C */	stb r0, 0x3c(r29)
/* 80190ECC 0018DE2C  88 1D 00 3C */	lbz r0, 0x3c(r29)
/* 80190ED0 0018DE30  50 C0 36 72 */	rlwimi r0, r6, 6, 0x19, 0x19
/* 80190ED4 0018DE34  98 1D 00 3C */	stb r0, 0x3c(r29)
/* 80190ED8 0018DE38  88 1D 00 3C */	lbz r0, 0x3c(r29)
/* 80190EDC 0018DE3C  50 C0 2E B4 */	rlwimi r0, r6, 5, 0x1a, 0x1a
/* 80190EE0 0018DE40  98 1D 00 3C */	stb r0, 0x3c(r29)
/* 80190EE4 0018DE44  88 1D 00 3C */	lbz r0, 0x3c(r29)
/* 80190EE8 0018DE48  50 C0 26 F6 */	rlwimi r0, r6, 4, 0x1b, 0x1b
/* 80190EEC 0018DE4C  98 1D 00 3C */	stb r0, 0x3c(r29)
/* 80190EF0 0018DE50  88 1D 00 3C */	lbz r0, 0x3c(r29)
/* 80190EF4 0018DE54  50 A0 1F 38 */	rlwimi r0, r5, 3, 0x1c, 0x1c
/* 80190EF8 0018DE58  98 1D 00 3C */	stb r0, 0x3c(r29)
/* 80190EFC 0018DE5C  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 80190F00 0018DE60  90 1D 00 40 */	stw r0, 0x40(r29)
/* 80190F04 0018DE64  4B E7 3D B5 */	bl string_l__4rstlFPCc
/* 80190F08 0018DE68  7F C3 F3 78 */	mr r3, r30
/* 80190F0C 0018DE6C  38 81 00 38 */	addi r4, r1, 0x38
/* 80190F10 0018DE70  48 13 12 C5 */	bl "FindWidget__9CGuiFrameCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80190F14 0018DE74  90 7D 00 44 */	stw r3, 0x44(r29)
/* 80190F18 0018DE78  38 61 00 38 */	addi r3, r1, 0x38
/* 80190F1C 0018DE7C  48 1A CB C5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80190F20 0018DE80  38 61 00 28 */	addi r3, r1, 0x28
/* 80190F24 0018DE84  38 9F 00 14 */	addi r4, r31, 0x14
/* 80190F28 0018DE88  4B E7 3D 91 */	bl string_l__4rstlFPCc
/* 80190F2C 0018DE8C  7F C3 F3 78 */	mr r3, r30
/* 80190F30 0018DE90  38 81 00 28 */	addi r4, r1, 0x28
/* 80190F34 0018DE94  48 13 12 A1 */	bl "FindWidget__9CGuiFrameCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80190F38 0018DE98  90 7D 00 48 */	stw r3, 0x48(r29)
/* 80190F3C 0018DE9C  38 61 00 28 */	addi r3, r1, 0x28
/* 80190F40 0018DEA0  48 1A CB A1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80190F44 0018DEA4  38 61 00 18 */	addi r3, r1, 0x18
/* 80190F48 0018DEA8  38 9F 00 28 */	addi r4, r31, 0x28
/* 80190F4C 0018DEAC  4B E7 3D 6D */	bl string_l__4rstlFPCc
/* 80190F50 0018DEB0  7F C3 F3 78 */	mr r3, r30
/* 80190F54 0018DEB4  38 81 00 18 */	addi r4, r1, 0x18
/* 80190F58 0018DEB8  48 13 12 7D */	bl "FindWidget__9CGuiFrameCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80190F5C 0018DEBC  90 7D 00 4C */	stw r3, 0x4c(r29)
/* 80190F60 0018DEC0  38 61 00 18 */	addi r3, r1, 0x18
/* 80190F64 0018DEC4  48 1A CB 7D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80190F68 0018DEC8  38 61 00 08 */	addi r3, r1, 8
/* 80190F6C 0018DECC  38 9F 00 38 */	addi r4, r31, 0x38
/* 80190F70 0018DED0  4B E7 3D 49 */	bl string_l__4rstlFPCc
/* 80190F74 0018DED4  7F C3 F3 78 */	mr r3, r30
/* 80190F78 0018DED8  38 81 00 08 */	addi r4, r1, 8
/* 80190F7C 0018DEDC  48 13 12 59 */	bl "FindWidget__9CGuiFrameCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80190F80 0018DEE0  90 7D 00 50 */	stw r3, 0x50(r29)
/* 80190F84 0018DEE4  38 61 00 08 */	addi r3, r1, 8
/* 80190F88 0018DEE8  48 1A CB 59 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80190F8C 0018DEEC  80 7D 00 44 */	lwz r3, 0x44(r29)
/* 80190F90 0018DEF0  C0 43 00 A0 */	lfs f2, 0xa0(r3)
/* 80190F94 0018DEF4  C0 23 00 90 */	lfs f1, 0x90(r3)
/* 80190F98 0018DEF8  C0 03 00 80 */	lfs f0, 0x80(r3)
/* 80190F9C 0018DEFC  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 80190FA0 0018DF00  D0 3D 00 28 */	stfs f1, 0x28(r29)
/* 80190FA4 0018DF04  D0 5D 00 2C */	stfs f2, 0x2c(r29)
/* 80190FA8 0018DF08  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 80190FAC 0018DF0C  80 7D 00 50 */	lwz r3, 0x50(r29)
/* 80190FB0 0018DF10  38 84 00 8C */	addi r4, r4, 0x8c
/* 80190FB4 0018DF14  48 13 98 B9 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80190FB8 0018DF18  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80190FBC 0018DF1C  7F A3 EB 78 */	mr r3, r29
/* 80190FC0 0018DF20  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80190FC4 0018DF24  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80190FC8 0018DF28  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 80190FCC 0018DF2C  7C 08 03 A6 */	mtlr r0
/* 80190FD0 0018DF30  38 21 00 60 */	addi r1, r1, 0x60
/* 80190FD4 0018DF34  4E 80 00 20 */	blr

.global Update__20CHudMissileInterfaceFfRC13CStateManager
Update__20CHudMissileInterfaceFfRC13CStateManager:
/* 80190FD8 0018DF38  94 21 FE 60 */	stwu r1, -0x1a0(r1)
/* 80190FDC 0018DF3C  7C 08 02 A6 */	mflr r0
/* 80190FE0 0018DF40  90 01 01 A4 */	stw r0, 0x1a4(r1)
/* 80190FE4 0018DF44  DB E1 01 90 */	stfd f31, 0x190(r1)
/* 80190FE8 0018DF48  F3 E1 01 98 */	psq_st f31, 408(r1), 0, qr0
/* 80190FEC 0018DF4C  DB C1 01 80 */	stfd f30, 0x180(r1)
/* 80190FF0 0018DF50  F3 C1 01 88 */	psq_st f30, 392(r1), 0, qr0
/* 80190FF4 0018DF54  DB A1 01 70 */	stfd f29, 0x170(r1)
/* 80190FF8 0018DF58  F3 A1 01 78 */	psq_st f29, 376(r1), 0, qr0
/* 80190FFC 0018DF5C  DB 81 01 60 */	stfd f28, 0x160(r1)
/* 80191000 0018DF60  F3 81 01 68 */	psq_st f28, 360(r1), 0, qr0
/* 80191004 0018DF64  BF 61 01 4C */	stmw r27, 0x14c(r1)
/* 80191008 0018DF68  7C 7F 1B 78 */	mr r31, r3
/* 8019100C 0018DF6C  80 64 08 B8 */	lwz r3, 0x8b8(r4)
/* 80191010 0018DF70  80 1F 00 04 */	lwz r0, 4(r31)
/* 80191014 0018DF74  FF A0 08 90 */	fmr f29, f1
/* 80191018 0018DF78  83 C3 00 00 */	lwz r30, 0(r3)
/* 8019101C 0018DF7C  2C 00 00 01 */	cmpwi r0, 1
/* 80191020 0018DF80  40 80 00 14 */	bge lbl_80191034
/* 80191024 0018DF84  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 80191028 0018DF88  38 80 00 00 */	li r4, 0
/* 8019102C 0018DF8C  48 13 96 01 */	bl SetIsVisible__10CGuiWidgetFb
/* 80191030 0018DF90  48 00 00 10 */	b lbl_80191040
lbl_80191034:
/* 80191034 0018DF94  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 80191038 0018DF98  38 80 00 01 */	li r4, 1
/* 8019103C 0018DF9C  48 13 95 F1 */	bl SetIsVisible__10CGuiWidgetFb
lbl_80191040:
/* 80191040 0018DFA0  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 80191044 0018DFA4  C0 02 A5 20 */	lfs f0, lbl_805AC240@sda21(r2)
/* 80191048 0018DFA8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8019104C 0018DFAC  40 80 00 30 */	bge lbl_8019107C
/* 80191050 0018DFB0  C0 22 A5 24 */	lfs f1, lbl_805AC244@sda21(r2)
/* 80191054 0018DFB4  C0 02 A5 28 */	lfs f0, lbl_805AC248@sda21(r2)
/* 80191058 0018DFB8  EC 21 17 7C */	fnmsubs f1, f1, f29, f2
/* 8019105C 0018DFBC  D0 3F 00 54 */	stfs f1, 0x54(r31)
/* 80191060 0018DFC0  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80191064 0018DFC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80191068 0018DFC8  4C 40 13 82 */	cror 2, 0, 2
/* 8019106C 0018DFCC  40 82 00 3C */	bne lbl_801910A8
/* 80191070 0018DFD0  C0 02 A5 2C */	lfs f0, lbl_805AC24C@sda21(r2)
/* 80191074 0018DFD4  D0 1F 00 54 */	stfs f0, 0x54(r31)
/* 80191078 0018DFD8  48 00 00 30 */	b lbl_801910A8
lbl_8019107C:
/* 8019107C 0018DFDC  40 81 00 2C */	ble lbl_801910A8
/* 80191080 0018DFE0  EC 22 E8 28 */	fsubs f1, f2, f29
/* 80191084 0018DFE4  C0 0D 8F 38 */	lfs f0, lbl_805A7AF8@sda21(r13)
/* 80191088 0018DFE8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8019108C 0018DFEC  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 80191090 0018DFF0  40 80 00 0C */	bge lbl_8019109C
/* 80191094 0018DFF4  38 61 00 60 */	addi r3, r1, 0x60
/* 80191098 0018DFF8  48 00 00 08 */	b lbl_801910A0
lbl_8019109C:
/* 8019109C 0018DFFC  38 6D 8F 38 */	addi r3, r13, lbl_805A7AF8@sda21
lbl_801910A0:
/* 801910A0 0018E000  C0 03 00 00 */	lfs f0, 0(r3)
/* 801910A4 0018E004  D0 1F 00 54 */	stfs f0, 0x54(r31)
lbl_801910A8:
/* 801910A8 0018E008  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 801910AC 0018E00C  80 AD A1 3C */	lwz r5, gpTweakGuiColors@sda21(r13)
/* 801910B0 0018E010  FC 00 02 10 */	fabs f0, f0
/* 801910B4 0018E014  C0 22 A5 30 */	lfs f1, lbl_805AC250@sda21(r2)
/* 801910B8 0018E018  3B A5 00 94 */	addi r29, r5, 0x94
/* 801910BC 0018E01C  FC 00 00 18 */	frsp f0, f0
/* 801910C0 0018E020  EF 81 00 32 */	fmuls f28, f1, f0
/* 801910C4 0018E024  F3 81 A0 0B */	psq_st f28, 11(r1), 1, qr2
/* 801910C8 0018E028  38 61 00 5C */	addi r3, r1, 0x5c
/* 801910CC 0018E02C  38 81 00 7C */	addi r4, r1, 0x7c
/* 801910D0 0018E030  38 A5 00 28 */	addi r5, r5, 0x28
/* 801910D4 0018E034  88 01 00 0B */	lbz r0, 0xb(r1)
/* 801910D8 0018E038  98 01 00 7C */	stb r0, 0x7c(r1)
/* 801910DC 0018E03C  98 01 00 7D */	stb r0, 0x7d(r1)
/* 801910E0 0018E040  98 01 00 7E */	stb r0, 0x7e(r1)
/* 801910E4 0018E044  98 01 00 7F */	stb r0, 0x7f(r1)
/* 801910E8 0018E048  48 1D 20 91 */	bl Modulate__6CColorFRC6CColorRC6CColor
/* 801910EC 0018E04C  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 801910F0 0018E050  C0 42 A5 20 */	lfs f2, lbl_805AC240@sda21(r2)
/* 801910F4 0018E054  90 01 00 78 */	stw r0, 0x78(r1)
/* 801910F8 0018E058  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 801910FC 0018E05C  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80191100 0018E060  40 81 00 48 */	ble lbl_80191148
/* 80191104 0018E064  80 AD A1 3C */	lwz r5, gpTweakGuiColors@sda21(r13)
/* 80191108 0018E068  7F A4 EB 78 */	mr r4, r29
/* 8019110C 0018E06C  38 61 00 58 */	addi r3, r1, 0x58
/* 80191110 0018E070  38 A5 00 A0 */	addi r5, r5, 0xa0
/* 80191114 0018E074  48 1D 21 99 */	bl Lerp__6CColorFRC6CColorRC6CColorf
/* 80191118 0018E078  80 01 00 58 */	lwz r0, 0x58(r1)
/* 8019111C 0018E07C  38 61 00 54 */	addi r3, r1, 0x54
/* 80191120 0018E080  38 81 00 74 */	addi r4, r1, 0x74
/* 80191124 0018E084  38 A1 00 78 */	addi r5, r1, 0x78
/* 80191128 0018E088  90 01 00 74 */	stw r0, 0x74(r1)
/* 8019112C 0018E08C  48 1D 1F 85 */	bl Add__6CColorFRC6CColorRC6CColor
/* 80191130 0018E090  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80191134 0018E094  38 81 00 74 */	addi r4, r1, 0x74
/* 80191138 0018E098  90 01 00 74 */	stw r0, 0x74(r1)
/* 8019113C 0018E09C  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 80191140 0018E0A0  48 13 97 2D */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80191144 0018E0A4  48 00 01 40 */	b lbl_80191284
lbl_80191148:
/* 80191148 0018E0A8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8019114C 0018E0AC  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80191150 0018E0B0  40 81 00 D4 */	ble lbl_80191224
/* 80191154 0018E0B4  4B F0 00 A9 */	bl GetMissileComboChargeFactor__12CPlayerStateFv
/* 80191158 0018E0B8  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 8019115C 0018E0BC  C0 0D 8F 3C */	lfs f0, lbl_805A7AFC@sda21(r13)
/* 80191160 0018E0C0  EC 22 08 24 */	fdivs f1, f2, f1
/* 80191164 0018E0C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80191168 0018E0C8  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8019116C 0018E0CC  40 80 00 0C */	bge lbl_80191178
/* 80191170 0018E0D0  38 61 00 50 */	addi r3, r1, 0x50
/* 80191174 0018E0D4  48 00 00 08 */	b lbl_8019117C
lbl_80191178:
/* 80191178 0018E0D8  38 6D 8F 3C */	addi r3, r13, lbl_805A7AFC@sda21
lbl_8019117C:
/* 8019117C 0018E0DC  C3 83 00 00 */	lfs f28, 0(r3)
/* 80191180 0018E0E0  7F C3 F3 78 */	mr r3, r30
/* 80191184 0018E0E4  4B F0 00 99 */	bl GetMissileCostForAltAttack__12CPlayerStateCFv
/* 80191188 0018E0E8  80 1F 00 08 */	lwz r0, 8(r31)
/* 8019118C 0018E0EC  7C 00 18 00 */	cmpw r0, r3
/* 80191190 0018E0F0  41 80 00 4C */	blt lbl_801911DC
/* 80191194 0018E0F4  80 AD A1 3C */	lwz r5, gpTweakGuiColors@sda21(r13)
/* 80191198 0018E0F8  FC 20 E0 90 */	fmr f1, f28
/* 8019119C 0018E0FC  7F A4 EB 78 */	mr r4, r29
/* 801911A0 0018E100  38 61 00 4C */	addi r3, r1, 0x4c
/* 801911A4 0018E104  38 A5 00 98 */	addi r5, r5, 0x98
/* 801911A8 0018E108  48 1D 21 05 */	bl Lerp__6CColorFRC6CColorRC6CColorf
/* 801911AC 0018E10C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 801911B0 0018E110  38 61 00 48 */	addi r3, r1, 0x48
/* 801911B4 0018E114  38 81 00 70 */	addi r4, r1, 0x70
/* 801911B8 0018E118  38 A1 00 78 */	addi r5, r1, 0x78
/* 801911BC 0018E11C  90 01 00 70 */	stw r0, 0x70(r1)
/* 801911C0 0018E120  48 1D 1E F1 */	bl Add__6CColorFRC6CColorRC6CColor
/* 801911C4 0018E124  80 01 00 48 */	lwz r0, 0x48(r1)
/* 801911C8 0018E128  38 81 00 70 */	addi r4, r1, 0x70
/* 801911CC 0018E12C  90 01 00 70 */	stw r0, 0x70(r1)
/* 801911D0 0018E130  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 801911D4 0018E134  48 13 96 99 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 801911D8 0018E138  48 00 00 AC */	b lbl_80191284
lbl_801911DC:
/* 801911DC 0018E13C  80 AD A1 3C */	lwz r5, gpTweakGuiColors@sda21(r13)
/* 801911E0 0018E140  FC 20 E0 90 */	fmr f1, f28
/* 801911E4 0018E144  7F A4 EB 78 */	mr r4, r29
/* 801911E8 0018E148  38 61 00 44 */	addi r3, r1, 0x44
/* 801911EC 0018E14C  38 A5 00 9C */	addi r5, r5, 0x9c
/* 801911F0 0018E150  48 1D 20 BD */	bl Lerp__6CColorFRC6CColorRC6CColorf
/* 801911F4 0018E154  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801911F8 0018E158  38 61 00 40 */	addi r3, r1, 0x40
/* 801911FC 0018E15C  38 81 00 6C */	addi r4, r1, 0x6c
/* 80191200 0018E160  38 A1 00 78 */	addi r5, r1, 0x78
/* 80191204 0018E164  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80191208 0018E168  48 1D 1E A9 */	bl Add__6CColorFRC6CColorRC6CColor
/* 8019120C 0018E16C  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80191210 0018E170  38 81 00 6C */	addi r4, r1, 0x6c
/* 80191214 0018E174  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80191218 0018E178  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 8019121C 0018E17C  48 13 96 51 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80191220 0018E180  48 00 00 64 */	b lbl_80191284
lbl_80191224:
/* 80191224 0018E184  88 1F 00 58 */	lbz r0, 0x58(r31)
/* 80191228 0018E188  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8019122C 0018E18C  41 82 00 30 */	beq lbl_8019125C
/* 80191230 0018E190  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 80191234 0018E194  38 61 00 3C */	addi r3, r1, 0x3c
/* 80191238 0018E198  38 A1 00 78 */	addi r5, r1, 0x78
/* 8019123C 0018E19C  38 84 00 28 */	addi r4, r4, 0x28
/* 80191240 0018E1A0  48 1D 1E 71 */	bl Add__6CColorFRC6CColorRC6CColor
/* 80191244 0018E1A4  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80191248 0018E1A8  38 81 00 68 */	addi r4, r1, 0x68
/* 8019124C 0018E1AC  90 01 00 68 */	stw r0, 0x68(r1)
/* 80191250 0018E1B0  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 80191254 0018E1B4  48 13 96 19 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80191258 0018E1B8  48 00 00 2C */	b lbl_80191284
lbl_8019125C:
/* 8019125C 0018E1BC  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 80191260 0018E1C0  38 61 00 38 */	addi r3, r1, 0x38
/* 80191264 0018E1C4  38 A1 00 78 */	addi r5, r1, 0x78
/* 80191268 0018E1C8  38 84 00 94 */	addi r4, r4, 0x94
/* 8019126C 0018E1CC  48 1D 1E 45 */	bl Add__6CColorFRC6CColorRC6CColor
/* 80191270 0018E1D0  80 01 00 38 */	lwz r0, 0x38(r1)
/* 80191274 0018E1D4  38 81 00 64 */	addi r4, r1, 0x64
/* 80191278 0018E1D8  90 01 00 64 */	stw r0, 0x64(r1)
/* 8019127C 0018E1DC  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 80191280 0018E1E0  48 13 95 ED */	bl SetColor__10CGuiWidgetFRC6CColor
lbl_80191284:
/* 80191284 0018E1E4  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80191288 0018E1E8  C0 0D 8F 40 */	lfs f0, lbl_805A7B00@sda21(r13)
/* 8019128C 0018E1EC  EC 21 E8 28 */	fsubs f1, f1, f29
/* 80191290 0018E1F0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80191294 0018E1F4  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80191298 0018E1F8  40 80 00 0C */	bge lbl_801912A4
/* 8019129C 0018E1FC  38 61 00 34 */	addi r3, r1, 0x34
/* 801912A0 0018E200  48 00 00 08 */	b lbl_801912A8
lbl_801912A4:
/* 801912A4 0018E204  38 6D 8F 40 */	addi r3, r13, lbl_805A7B00@sda21
lbl_801912A8:
/* 801912A8 0018E208  C0 03 00 00 */	lfs f0, 0(r3)
/* 801912AC 0018E20C  3C 00 43 30 */	lis r0, 0x4330
/* 801912B0 0018E210  90 01 01 30 */	stw r0, 0x130(r1)
/* 801912B4 0018E214  C8 22 A5 48 */	lfd f1, lbl_805AC268@sda21(r2)
/* 801912B8 0018E218  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 801912BC 0018E21C  80 1F 00 04 */	lwz r0, 4(r31)
/* 801912C0 0018E220  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 801912C4 0018E224  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801912C8 0018E228  90 01 01 34 */	stw r0, 0x134(r1)
/* 801912CC 0018E22C  C8 01 01 30 */	lfd f0, 0x130(r1)
/* 801912D0 0018E230  EC 20 08 28 */	fsubs f1, f0, f1
/* 801912D4 0018E234  48 13 A6 95 */	bl SetMaxEnergy__16CAuiEnergyBarT01Ff
/* 801912D8 0018E238  80 7F 00 08 */	lwz r3, 8(r31)
/* 801912DC 0018E23C  3C 00 43 30 */	lis r0, 0x4330
/* 801912E0 0018E240  90 01 01 38 */	stw r0, 0x138(r1)
/* 801912E4 0018E244  38 80 00 00 */	li r4, 0
/* 801912E8 0018E248  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 801912EC 0018E24C  C8 22 A5 48 */	lfd f1, lbl_805AC268@sda21(r2)
/* 801912F0 0018E250  90 01 01 3C */	stw r0, 0x13c(r1)
/* 801912F4 0018E254  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 801912F8 0018E258  C8 01 01 38 */	lfd f0, 0x138(r1)
/* 801912FC 0018E25C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80191300 0018E260  48 13 A5 C9 */	bl SetCurrEnergy__16CAuiEnergyBarT01Ffb
/* 80191304 0018E264  88 1F 00 58 */	lbz r0, 0x58(r31)
/* 80191308 0018E268  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 8019130C 0018E26C  41 82 00 9C */	beq lbl_801913A8
/* 80191310 0018E270  80 9F 00 08 */	lwz r4, 8(r31)
/* 80191314 0018E274  3C E0 43 30 */	lis r7, 0x4330
/* 80191318 0018E278  80 1F 00 04 */	lwz r0, 4(r31)
/* 8019131C 0018E27C  3C 60 80 3D */	lis r3, lbl_803D0D08@ha
/* 80191320 0018E280  6C 85 80 00 */	xoris r5, r4, 0x8000
/* 80191324 0018E284  80 9F 00 00 */	lwz r4, 0(r31)
/* 80191328 0018E288  90 A1 01 3C */	stw r5, 0x13c(r1)
/* 8019132C 0018E28C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80191330 0018E290  C0 02 A5 20 */	lfs f0, lbl_805AC240@sda21(r2)
/* 80191334 0018E294  54 86 10 3A */	slwi r6, r4, 2
/* 80191338 0018E298  90 E1 01 38 */	stw r7, 0x138(r1)
/* 8019133C 0018E29C  38 A3 0D 08 */	addi r5, r3, lbl_803D0D08@l
/* 80191340 0018E2A0  C8 82 A5 48 */	lfd f4, lbl_805AC268@sda21(r2)
/* 80191344 0018E2A4  38 61 00 CC */	addi r3, r1, 0xcc
/* 80191348 0018E2A8  C8 21 01 38 */	lfd f1, 0x138(r1)
/* 8019134C 0018E2AC  38 81 00 B0 */	addi r4, r1, 0xb0
/* 80191350 0018E2B0  90 01 01 34 */	stw r0, 0x134(r1)
/* 80191354 0018E2B4  EC 61 20 28 */	fsubs f3, f1, f4
/* 80191358 0018E2B8  7C 45 34 2E */	lfsx f2, r5, r6
/* 8019135C 0018E2BC  90 E1 01 30 */	stw r7, 0x130(r1)
/* 80191360 0018E2C0  C8 21 01 30 */	lfd f1, 0x130(r1)
/* 80191364 0018E2C4  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80191368 0018E2C8  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8019136C 0018E2CC  EC 21 20 28 */	fsubs f1, f1, f4
/* 80191370 0018E2D0  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80191374 0018E2D4  EC 02 08 24 */	fdivs f0, f2, f1
/* 80191378 0018E2D8  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8019137C 0018E2DC  48 18 1D C5 */	bl Translate__12CTransform4fFRC9CVector3f
/* 80191380 0018E2E0  38 61 00 FC */	addi r3, r1, 0xfc
/* 80191384 0018E2E4  38 9F 00 10 */	addi r4, r31, 0x10
/* 80191388 0018E2E8  38 A1 00 CC */	addi r5, r1, 0xcc
/* 8019138C 0018E2EC  48 18 15 C5 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 80191390 0018E2F0  83 DF 00 74 */	lwz r30, 0x74(r31)
/* 80191394 0018E2F4  38 81 00 FC */	addi r4, r1, 0xfc
/* 80191398 0018E2F8  38 7E 00 04 */	addi r3, r30, 4
/* 8019139C 0018E2FC  48 18 17 A5 */	bl __as__12CTransform4fFRC12CTransform4f
/* 801913A0 0018E300  7F C3 F3 78 */	mr r3, r30
/* 801913A4 0018E304  48 13 34 45 */	bl RecalculateTransforms__10CGuiObjectFv
lbl_801913A8:
/* 801913A8 0018E308  88 1F 00 58 */	lbz r0, 0x58(r31)
/* 801913AC 0018E30C  83 CD A1 3C */	lwz r30, gpTweakGuiColors@sda21(r13)
/* 801913B0 0018E310  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 801913B4 0018E314  41 82 01 5C */	beq lbl_80191510
/* 801913B8 0018E318  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 801913BC 0018E31C  C0 02 A5 20 */	lfs f0, lbl_805AC240@sda21(r2)
/* 801913C0 0018E320  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801913C4 0018E324  40 81 00 98 */	ble lbl_8019145C
/* 801913C8 0018E328  EC 21 E8 28 */	fsubs f1, f1, f29
/* 801913CC 0018E32C  C0 0D 8F 44 */	lfs f0, lbl_805A7B04@sda21(r13)
/* 801913D0 0018E330  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801913D4 0018E334  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 801913D8 0018E338  40 80 00 0C */	bge lbl_801913E4
/* 801913DC 0018E33C  38 61 00 30 */	addi r3, r1, 0x30
/* 801913E0 0018E340  48 00 00 08 */	b lbl_801913E8
lbl_801913E4:
/* 801913E4 0018E344  38 6D 8F 44 */	addi r3, r13, lbl_805A7B04@sda21
lbl_801913E8:
/* 801913E8 0018E348  C0 03 00 00 */	lfs f0, 0(r3)
/* 801913EC 0018E34C  38 80 00 01 */	li r4, 1
/* 801913F0 0018E350  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 801913F4 0018E354  80 6D A1 38 */	lwz r3, gpTweakGui@sda21(r13)
/* 801913F8 0018E358  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 801913FC 0018E35C  C0 03 00 F4 */	lfs f0, 0xf4(r3)
/* 80191400 0018E360  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 80191404 0018E364  EF 81 00 24 */	fdivs f28, f1, f0
/* 80191408 0018E368  48 13 92 25 */	bl SetIsVisible__10CGuiWidgetFb
/* 8019140C 0018E36C  88 7E 00 2B */	lbz r3, 0x2b(r30)
/* 80191410 0018E370  3C 00 43 30 */	lis r0, 0x4330
/* 80191414 0018E374  90 01 01 38 */	stw r0, 0x138(r1)
/* 80191418 0018E378  C8 22 A5 50 */	lfd f1, lbl_805AC270@sda21(r2)
/* 8019141C 0018E37C  90 61 01 3C */	stw r3, 0x13c(r1)
/* 80191420 0018E380  C8 01 01 38 */	lfd f0, 0x138(r1)
/* 80191424 0018E384  EC 00 08 28 */	fsubs f0, f0, f1
/* 80191428 0018E388  EF FC 00 32 */	fmuls f31, f28, f0
/* 8019142C 0018E38C  F3 E1 A0 0A */	psq_st f31, 10(r1), 1, qr2
/* 80191430 0018E390  38 81 00 2C */	addi r4, r1, 0x2c
/* 80191434 0018E394  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80191438 0018E398  88 01 00 0A */	lbz r0, 0xa(r1)
/* 8019143C 0018E39C  50 60 00 2E */	rlwimi r0, r3, 0, 0, 0x17
/* 80191440 0018E3A0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80191444 0018E3A4  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 80191448 0018E3A8  48 13 94 25 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 8019144C 0018E3AC  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 80191450 0018E3B0  38 80 00 00 */	li r4, 0
/* 80191454 0018E3B4  48 13 91 D9 */	bl SetIsVisible__10CGuiWidgetFb
/* 80191458 0018E3B8  48 00 00 B8 */	b lbl_80191510
lbl_8019145C:
/* 8019145C 0018E3BC  40 80 00 9C */	bge lbl_801914F8
/* 80191460 0018E3C0  EC 21 E8 2A */	fadds f1, f1, f29
/* 80191464 0018E3C4  C0 0D 8F 48 */	lfs f0, lbl_805A7B08@sda21(r13)
/* 80191468 0018E3C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019146C 0018E3CC  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80191470 0018E3D0  40 80 00 0C */	bge lbl_8019147C
/* 80191474 0018E3D4  38 61 00 28 */	addi r3, r1, 0x28
/* 80191478 0018E3D8  48 00 00 08 */	b lbl_80191480
lbl_8019147C:
/* 8019147C 0018E3DC  38 6D 8F 48 */	addi r3, r13, lbl_805A7B08@sda21
lbl_80191480:
/* 80191480 0018E3E0  C0 03 00 00 */	lfs f0, 0(r3)
/* 80191484 0018E3E4  38 80 00 01 */	li r4, 1
/* 80191488 0018E3E8  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8019148C 0018E3EC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80191490 0018E3F0  80 AD A1 38 */	lwz r5, gpTweakGui@sda21(r13)
/* 80191494 0018E3F4  FC 20 00 50 */	fneg f1, f0
/* 80191498 0018E3F8  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 8019149C 0018E3FC  C0 05 00 F4 */	lfs f0, 0xf4(r5)
/* 801914A0 0018E400  EF 81 00 24 */	fdivs f28, f1, f0
/* 801914A4 0018E404  48 13 91 89 */	bl SetIsVisible__10CGuiWidgetFb
/* 801914A8 0018E408  88 7E 00 2B */	lbz r3, 0x2b(r30)
/* 801914AC 0018E40C  3C 00 43 30 */	lis r0, 0x4330
/* 801914B0 0018E410  90 01 01 38 */	stw r0, 0x138(r1)
/* 801914B4 0018E414  C8 22 A5 50 */	lfd f1, lbl_805AC270@sda21(r2)
/* 801914B8 0018E418  90 61 01 3C */	stw r3, 0x13c(r1)
/* 801914BC 0018E41C  C8 01 01 38 */	lfd f0, 0x138(r1)
/* 801914C0 0018E420  EC 00 08 28 */	fsubs f0, f0, f1
/* 801914C4 0018E424  EF FC 00 32 */	fmuls f31, f28, f0
/* 801914C8 0018E428  F3 E1 A0 09 */	psq_st f31, 9(r1), 1, qr2
/* 801914CC 0018E42C  38 81 00 24 */	addi r4, r1, 0x24
/* 801914D0 0018E430  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 801914D4 0018E434  88 01 00 09 */	lbz r0, 9(r1)
/* 801914D8 0018E438  50 60 00 2E */	rlwimi r0, r3, 0, 0, 0x17
/* 801914DC 0018E43C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801914E0 0018E440  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 801914E4 0018E444  48 13 93 89 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 801914E8 0018E448  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 801914EC 0018E44C  38 80 00 00 */	li r4, 0
/* 801914F0 0018E450  48 13 91 3D */	bl SetIsVisible__10CGuiWidgetFb
/* 801914F4 0018E454  48 00 00 1C */	b lbl_80191510
lbl_801914F8:
/* 801914F8 0018E458  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 801914FC 0018E45C  38 80 00 00 */	li r4, 0
/* 80191500 0018E460  48 13 91 2D */	bl SetIsVisible__10CGuiWidgetFb
/* 80191504 0018E464  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 80191508 0018E468  38 80 00 00 */	li r4, 0
/* 8019150C 0018E46C  48 13 91 21 */	bl SetIsVisible__10CGuiWidgetFb
lbl_80191510:
/* 80191510 0018E470  80 1F 00 68 */	lwz r0, 0x68(r31)
/* 80191514 0018E474  28 00 00 00 */	cmplwi r0, 0
/* 80191518 0018E478  41 82 02 BC */	beq lbl_801917D4
/* 8019151C 0018E47C  7F E3 FB 78 */	mr r3, r31
/* 80191520 0018E480  48 00 08 21 */	bl GetMissileInventoryStatus__20CHudMissileInterfaceFv
/* 80191524 0018E484  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 80191528 0018E488  7C 7E 1B 78 */	mr r30, r3
/* 8019152C 0018E48C  7C 1E 00 00 */	cmpw r30, r0
/* 80191530 0018E490  41 82 01 54 */	beq lbl_80191684
/* 80191534 0018E494  2C 1E 00 01 */	cmpwi r30, 1
/* 80191538 0018E498  3B A0 00 00 */	li r29, 0
/* 8019153C 0018E49C  3B 80 00 00 */	li r28, 0
/* 80191540 0018E4A0  3B 60 00 00 */	li r27, 0
/* 80191544 0018E4A4  40 82 00 28 */	bne lbl_8019156C
/* 80191548 0018E4A8  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8019154C 0018E4AC  38 80 00 0C */	li r4, 0xc
/* 80191550 0018E4B0  48 1C 51 AD */	bl GetString__12CStringTableCFi
/* 80191554 0018E4B4  7C 64 1B 78 */	mr r4, r3
/* 80191558 0018E4B8  38 61 00 A0 */	addi r3, r1, 0xa0
/* 8019155C 0018E4BC  4B E8 44 95 */	bl wstring_l__4rstlFPCw
/* 80191560 0018E4C0  38 81 00 A0 */	addi r4, r1, 0xa0
/* 80191564 0018E4C4  3B A0 00 01 */	li r29, 1
/* 80191568 0018E4C8  48 00 00 44 */	b lbl_801915AC
lbl_8019156C:
/* 8019156C 0018E4CC  2C 1E 00 02 */	cmpwi r30, 2
/* 80191570 0018E4D0  40 82 00 28 */	bne lbl_80191598
/* 80191574 0018E4D4  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 80191578 0018E4D8  38 80 00 0D */	li r4, 0xd
/* 8019157C 0018E4DC  48 1C 51 81 */	bl GetString__12CStringTableCFi
/* 80191580 0018E4E0  7C 64 1B 78 */	mr r4, r3
/* 80191584 0018E4E4  38 61 00 90 */	addi r3, r1, 0x90
/* 80191588 0018E4E8  4B E8 44 69 */	bl wstring_l__4rstlFPCw
/* 8019158C 0018E4EC  38 81 00 90 */	addi r4, r1, 0x90
/* 80191590 0018E4F0  3B 80 00 01 */	li r28, 1
/* 80191594 0018E4F4  48 00 00 18 */	b lbl_801915AC
lbl_80191598:
/* 80191598 0018E4F8  38 61 00 80 */	addi r3, r1, 0x80
/* 8019159C 0018E4FC  38 8D 8F 5C */	addi r4, r13, lbl_805A7B1C@sda21
/* 801915A0 0018E500  4B E8 44 51 */	bl wstring_l__4rstlFPCw
/* 801915A4 0018E504  3B 60 00 01 */	li r27, 1
/* 801915A8 0018E508  38 81 00 80 */	addi r4, r1, 0x80
lbl_801915AC:
/* 801915AC 0018E50C  38 61 00 BC */	addi r3, r1, 0xbc
/* 801915B0 0018E510  48 1A C1 D9 */	bl "__ct__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 801915B4 0018E514  7F 60 07 75 */	extsb. r0, r27
/* 801915B8 0018E518  41 82 00 0C */	beq lbl_801915C4
/* 801915BC 0018E51C  38 61 00 80 */	addi r3, r1, 0x80
/* 801915C0 0018E520  48 1A BB 75 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
lbl_801915C4:
/* 801915C4 0018E524  7F 80 07 75 */	extsb. r0, r28
/* 801915C8 0018E528  41 82 00 0C */	beq lbl_801915D4
/* 801915CC 0018E52C  38 61 00 90 */	addi r3, r1, 0x90
/* 801915D0 0018E530  48 1A BB 65 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
lbl_801915D4:
/* 801915D4 0018E534  7F A0 07 75 */	extsb. r0, r29
/* 801915D8 0018E538  41 82 00 0C */	beq lbl_801915E4
/* 801915DC 0018E53C  38 61 00 A0 */	addi r3, r1, 0xa0
/* 801915E0 0018E540  48 1A BB 55 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
lbl_801915E4:
/* 801915E4 0018E544  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 801915E8 0018E548  38 81 00 BC */	addi r4, r1, 0xbc
/* 801915EC 0018E54C  38 A0 00 00 */	li r5, 0
/* 801915F0 0018E550  38 63 00 D4 */	addi r3, r3, 0xd4
/* 801915F4 0018E554  48 13 82 91 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 801915F8 0018E558  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 801915FC 0018E55C  2C 00 00 00 */	cmpwi r0, 0
/* 80191600 0018E560  40 82 00 40 */	bne lbl_80191640
/* 80191604 0018E564  2C 1E 00 01 */	cmpwi r30, 1
/* 80191608 0018E568  40 82 00 38 */	bne lbl_80191640
/* 8019160C 0018E56C  A9 02 C5 FA */	lha r8, kMedPriority__11CSfxManager@sda21(r2)
/* 80191610 0018E570  38 61 00 20 */	addi r3, r1, 0x20
/* 80191614 0018E574  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 80191618 0018E578  38 80 05 75 */	li r4, 0x575
/* 8019161C 0018E57C  38 A0 00 7F */	li r5, 0x7f
/* 80191620 0018E580  38 C0 00 40 */	li r6, 0x40
/* 80191624 0018E584  38 E0 00 00 */	li r7, 0
/* 80191628 0018E588  39 20 00 00 */	li r9, 0
/* 8019162C 0018E58C  48 15 87 49 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 80191630 0018E590  80 6D A1 38 */	lwz r3, gpTweakGui@sda21(r13)
/* 80191634 0018E594  C0 03 01 A0 */	lfs f0, 0x1a0(r3)
/* 80191638 0018E598  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 8019163C 0018E59C  48 00 00 3C */	b lbl_80191678
lbl_80191640:
/* 80191640 0018E5A0  2C 1E 00 02 */	cmpwi r30, 2
/* 80191644 0018E5A4  40 82 00 34 */	bne lbl_80191678
/* 80191648 0018E5A8  A9 02 C5 FA */	lha r8, kMedPriority__11CSfxManager@sda21(r2)
/* 8019164C 0018E5AC  38 61 00 1C */	addi r3, r1, 0x1c
/* 80191650 0018E5B0  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 80191654 0018E5B4  38 80 05 75 */	li r4, 0x575
/* 80191658 0018E5B8  38 A0 00 7F */	li r5, 0x7f
/* 8019165C 0018E5BC  38 C0 00 40 */	li r6, 0x40
/* 80191660 0018E5C0  38 E0 00 00 */	li r7, 0
/* 80191664 0018E5C4  39 20 00 00 */	li r9, 0
/* 80191668 0018E5C8  48 15 87 0D */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 8019166C 0018E5CC  80 6D A1 38 */	lwz r3, gpTweakGui@sda21(r13)
/* 80191670 0018E5D0  C0 03 01 A0 */	lfs f0, 0x1a0(r3)
/* 80191674 0018E5D4  D0 1F 00 48 */	stfs f0, 0x48(r31)
lbl_80191678:
/* 80191678 0018E5D8  93 DF 00 44 */	stw r30, 0x44(r31)
/* 8019167C 0018E5DC  38 61 00 BC */	addi r3, r1, 0xbc
/* 80191680 0018E5E0  48 1A BA B5 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
lbl_80191684:
/* 80191684 0018E5E4  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80191688 0018E5E8  C0 0D 8F 4C */	lfs f0, lbl_805A7B0C@sda21(r13)
/* 8019168C 0018E5EC  EC 21 E8 28 */	fsubs f1, f1, f29
/* 80191690 0018E5F0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80191694 0018E5F4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80191698 0018E5F8  40 80 00 0C */	bge lbl_801916A4
/* 8019169C 0018E5FC  38 61 00 18 */	addi r3, r1, 0x18
/* 801916A0 0018E600  48 00 00 08 */	b lbl_801916A8
lbl_801916A4:
/* 801916A4 0018E604  38 6D 8F 4C */	addi r3, r13, lbl_805A7B0C@sda21
lbl_801916A8:
/* 801916A8 0018E608  C0 03 00 00 */	lfs f0, 0(r3)
/* 801916AC 0018E60C  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 801916B0 0018E610  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 801916B4 0018E614  C0 0D 8F 50 */	lfs f0, lbl_805A7B10@sda21(r13)
/* 801916B8 0018E618  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801916BC 0018E61C  40 80 00 0C */	bge lbl_801916C8
/* 801916C0 0018E620  38 7F 00 48 */	addi r3, r31, 0x48
/* 801916C4 0018E624  48 00 00 08 */	b lbl_801916CC
lbl_801916C8:
/* 801916C8 0018E628  38 6D 8F 50 */	addi r3, r13, lbl_805A7B10@sda21
lbl_801916CC:
/* 801916CC 0018E62C  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 801916D0 0018E630  C3 E3 00 00 */	lfs f31, 0(r3)
/* 801916D4 0018E634  2C 00 00 00 */	cmpwi r0, 0
/* 801916D8 0018E638  41 82 00 38 */	beq lbl_80191710
/* 801916DC 0018E63C  C0 42 A5 34 */	lfs f2, lbl_805AC254@sda21(r2)
/* 801916E0 0018E640  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 801916E4 0018E644  C0 0D 8F 54 */	lfs f0, lbl_805A7B14@sda21(r13)
/* 801916E8 0018E648  EC 22 0F 7A */	fmadds f1, f2, f29, f1
/* 801916EC 0018E64C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801916F0 0018E650  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 801916F4 0018E654  40 80 00 0C */	bge lbl_80191700
/* 801916F8 0018E658  38 61 00 14 */	addi r3, r1, 0x14
/* 801916FC 0018E65C  48 00 00 08 */	b lbl_80191704
lbl_80191700:
/* 80191700 0018E660  38 6D 8F 54 */	addi r3, r13, lbl_805A7B14@sda21
lbl_80191704:
/* 80191704 0018E664  C0 03 00 00 */	lfs f0, 0(r3)
/* 80191708 0018E668  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 8019170C 0018E66C  48 00 00 34 */	b lbl_80191740
lbl_80191710:
/* 80191710 0018E670  C0 42 A5 34 */	lfs f2, lbl_805AC254@sda21(r2)
/* 80191714 0018E674  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80191718 0018E678  C0 0D 8F 58 */	lfs f0, lbl_805A7B18@sda21(r13)
/* 8019171C 0018E67C  EC 22 0F 7C */	fnmsubs f1, f2, f29, f1
/* 80191720 0018E680  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80191724 0018E684  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80191728 0018E688  40 80 00 0C */	bge lbl_80191734
/* 8019172C 0018E68C  38 61 00 10 */	addi r3, r1, 0x10
/* 80191730 0018E690  48 00 00 08 */	b lbl_80191738
lbl_80191734:
/* 80191734 0018E694  38 6D 8F 58 */	addi r3, r13, lbl_805A7B18@sda21
lbl_80191738:
/* 80191738 0018E698  C0 03 00 00 */	lfs f0, 0(r3)
/* 8019173C 0018E69C  D0 1F 00 40 */	stfs f0, 0x40(r31)
lbl_80191740:
/* 80191740 0018E6A0  48 17 87 A1 */	bl GetSecondsMod900__9CGraphicsFv
/* 80191744 0018E6A4  C8 42 A5 38 */	lfd f2, lbl_805AC258@sda21(r2)
/* 80191748 0018E6A8  48 20 35 65 */	bl fmod
/* 8019174C 0018E6AC  FC 00 08 18 */	frsp f0, f1
/* 80191750 0018E6B0  C0 22 A5 40 */	lfs f1, lbl_805AC260@sda21(r2)
/* 80191754 0018E6B4  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 80191758 0018E6B8  FC 00 02 10 */	fabs f0, f0
/* 8019175C 0018E6BC  FC 60 00 18 */	frsp f3, f0
/* 80191760 0018E6C0  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80191764 0018E6C4  40 80 00 0C */	bge lbl_80191770
/* 80191768 0018E6C8  EC 03 08 24 */	fdivs f0, f3, f1
/* 8019176C 0018E6CC  48 00 00 10 */	b lbl_8019177C
lbl_80191770:
/* 80191770 0018E6D0  C0 02 A5 44 */	lfs f0, lbl_805AC264@sda21(r2)
/* 80191774 0018E6D4  EC 00 18 28 */	fsubs f0, f0, f3
/* 80191778 0018E6D8  EC 00 08 24 */	fdivs f0, f0, f1
lbl_8019177C:
/* 8019177C 0018E6DC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80191780 0018E6E0  EF 9F 00 32 */	fmuls f28, f31, f0
/* 80191784 0018E6E4  48 1B 88 29 */	bl White__6CColorFv
/* 80191788 0018E6E8  C0 02 A5 30 */	lfs f0, lbl_805AC250@sda21(r2)
/* 8019178C 0018E6EC  EF C0 07 32 */	fmuls f30, f0, f28
/* 80191790 0018E6F0  F3 C1 A0 08 */	psq_st f30, 8(r1), 1, qr2
/* 80191794 0018E6F4  38 81 00 0C */	addi r4, r1, 0xc
/* 80191798 0018E6F8  80 63 00 00 */	lwz r3, 0(r3)
/* 8019179C 0018E6FC  88 01 00 08 */	lbz r0, 8(r1)
/* 801917A0 0018E700  50 60 00 2E */	rlwimi r0, r3, 0, 0, 0x17
/* 801917A4 0018E704  90 01 00 0C */	stw r0, 0xc(r1)
/* 801917A8 0018E708  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 801917AC 0018E70C  48 13 90 C1 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 801917B0 0018E710  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 801917B4 0018E714  88 03 00 AB */	lbz r0, 0xab(r3)
/* 801917B8 0018E718  28 00 00 00 */	cmplwi r0, 0
/* 801917BC 0018E71C  41 82 00 10 */	beq lbl_801917CC
/* 801917C0 0018E720  38 80 00 01 */	li r4, 1
/* 801917C4 0018E724  48 13 8E 69 */	bl SetIsVisible__10CGuiWidgetFb
/* 801917C8 0018E728  48 00 00 0C */	b lbl_801917D4
lbl_801917CC:
/* 801917CC 0018E72C  38 80 00 00 */	li r4, 0
/* 801917D0 0018E730  48 13 8E 5D */	bl SetIsVisible__10CGuiWidgetFb
lbl_801917D4:
/* 801917D4 0018E734  E3 E1 01 98 */	psq_l f31, 408(r1), 0, qr0
/* 801917D8 0018E738  CB E1 01 90 */	lfd f31, 0x190(r1)
/* 801917DC 0018E73C  E3 C1 01 88 */	psq_l f30, 392(r1), 0, qr0
/* 801917E0 0018E740  CB C1 01 80 */	lfd f30, 0x180(r1)
/* 801917E4 0018E744  E3 A1 01 78 */	psq_l f29, 376(r1), 0, qr0
/* 801917E8 0018E748  CB A1 01 70 */	lfd f29, 0x170(r1)
/* 801917EC 0018E74C  E3 81 01 68 */	psq_l f28, 360(r1), 0, qr0
/* 801917F0 0018E750  CB 81 01 60 */	lfd f28, 0x160(r1)
/* 801917F4 0018E754  BB 61 01 4C */	lmw r27, 0x14c(r1)
/* 801917F8 0018E758  80 01 01 A4 */	lwz r0, 0x1a4(r1)
/* 801917FC 0018E75C  7C 08 03 A6 */	mtlr r0
/* 80191800 0018E760  38 21 01 A0 */	addi r1, r1, 0x1a0
/* 80191804 0018E764  4E 80 00 20 */	blr

.global UpdateVisibility__20CHudMissileInterfaceFRC13CStateManager
UpdateVisibility__20CHudMissileInterfaceFRC13CStateManager:
/* 80191808 0018E768  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8019180C 0018E76C  7C 08 02 A6 */	mflr r0
/* 80191810 0018E770  90 01 00 24 */	stw r0, 0x24(r1)
/* 80191814 0018E774  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80191818 0018E778  3B E0 00 00 */	li r31, 0
/* 8019181C 0018E77C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80191820 0018E780  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80191824 0018E784  7C 9D 23 78 */	mr r29, r4
/* 80191828 0018E788  93 81 00 10 */	stw r28, 0x10(r1)
/* 8019182C 0018E78C  7C 7C 1B 78 */	mr r28, r3
/* 80191830 0018E790  88 63 00 58 */	lbz r3, 0x58(r3)
/* 80191834 0018E794  54 60 DF FF */	rlwinm. r0, r3, 0x1b, 0x1f, 0x1f
/* 80191838 0018E798  41 82 00 10 */	beq lbl_80191848
/* 8019183C 0018E79C  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 80191840 0018E7A0  41 82 00 08 */	beq lbl_80191848
/* 80191844 0018E7A4  3B E0 00 01 */	li r31, 1
lbl_80191848:
/* 80191848 0018E7A8  57 FE 06 3E */	clrlwi r30, r31, 0x18
/* 8019184C 0018E7AC  80 7C 00 5C */	lwz r3, 0x5c(r28)
/* 80191850 0018E7B0  7F C4 F3 78 */	mr r4, r30
/* 80191854 0018E7B4  38 A0 00 01 */	li r5, 1
/* 80191858 0018E7B8  48 13 8E 91 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 8019185C 0018E7BC  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 80191860 0018E7C0  7F C4 F3 78 */	mr r4, r30
/* 80191864 0018E7C4  38 A0 00 01 */	li r5, 1
/* 80191868 0018E7C8  48 13 8E 81 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 8019186C 0018E7CC  7F C0 F3 79 */	or. r0, r30, r30
/* 80191870 0018E7D0  41 82 00 14 */	beq lbl_80191884
/* 80191874 0018E7D4  C0 22 A5 20 */	lfs f1, lbl_805AC240@sda21(r2)
/* 80191878 0018E7D8  7F 83 E3 78 */	mr r3, r28
/* 8019187C 0018E7DC  7F A4 EB 78 */	mr r4, r29
/* 80191880 0018E7E0  4B FF F7 59 */	bl Update__20CHudMissileInterfaceFfRC13CStateManager
lbl_80191884:
/* 80191884 0018E7E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80191888 0018E7E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8019188C 0018E7EC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80191890 0018E7F0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80191894 0018E7F4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80191898 0018E7F8  7C 08 03 A6 */	mtlr r0
/* 8019189C 0018E7FC  38 21 00 20 */	addi r1, r1, 0x20
/* 801918A0 0018E800  4E 80 00 20 */	blr

.global SetIsVisibleGame__20CHudMissileInterfaceFbRC13CStateManager
SetIsVisibleGame__20CHudMissileInterfaceFbRC13CStateManager:
/* 801918A4 0018E804  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801918A8 0018E808  7C 08 02 A6 */	mflr r0
/* 801918AC 0018E80C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801918B0 0018E810  88 03 00 58 */	lbz r0, 0x58(r3)
/* 801918B4 0018E814  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 801918B8 0018E818  7C A4 2B 78 */	mr r4, r5
/* 801918BC 0018E81C  98 03 00 58 */	stb r0, 0x58(r3)
/* 801918C0 0018E820  4B FF FF 49 */	bl UpdateVisibility__20CHudMissileInterfaceFRC13CStateManager
/* 801918C4 0018E824  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801918C8 0018E828  7C 08 03 A6 */	mtlr r0
/* 801918CC 0018E82C  38 21 00 10 */	addi r1, r1, 0x10
/* 801918D0 0018E830  4E 80 00 20 */	blr

.global SetIsMissilesActive__20CHudMissileInterfaceFb
SetIsMissilesActive__20CHudMissileInterfaceFb:
/* 801918D4 0018E834  88 03 00 58 */	lbz r0, 0x58(r3)
/* 801918D8 0018E838  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 801918DC 0018E83C  98 03 00 58 */	stb r0, 0x58(r3)
/* 801918E0 0018E840  4E 80 00 20 */	blr

.global SetChargeBeamFactor__20CHudMissileInterfaceFf
SetChargeBeamFactor__20CHudMissileInterfaceFf:
/* 801918E4 0018E844  D0 23 00 4C */	stfs f1, 0x4c(r3)
/* 801918E8 0018E848  4E 80 00 20 */	blr

.global SetNumMissiles__20CHudMissileInterfaceFiRC13CStateManager
SetNumMissiles__20CHudMissileInterfaceFiRC13CStateManager:
/* 801918EC 0018E84C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801918F0 0018E850  7C 08 02 A6 */	mflr r0
/* 801918F4 0018E854  90 01 00 34 */	stw r0, 0x34(r1)
/* 801918F8 0018E858  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801918FC 0018E85C  7C BF 2B 78 */	mr r31, r5
/* 80191900 0018E860  38 AD 8F 34 */	addi r5, r13, lbl_805A7AF4@sda21
/* 80191904 0018E864  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80191908 0018E868  7C 7E 1B 78 */	mr r30, r3
/* 8019190C 0018E86C  38 6D 8F 30 */	addi r3, r13, lbl_805A7AF0@sda21
/* 80191910 0018E870  90 81 00 08 */	stw r4, 8(r1)
/* 80191914 0018E874  38 81 00 08 */	addi r4, r1, 8
/* 80191918 0018E878  4B EC 87 4D */	bl "Clamp<i>__5CMathFRCiRCiRCi"
/* 8019191C 0018E87C  3C 80 80 3D */	lis r4, lbl_803D0D30@ha
/* 80191920 0018E880  80 A3 00 00 */	lwz r5, 0(r3)
/* 80191924 0018E884  38 84 0D 30 */	addi r4, r4, lbl_803D0D30@l
/* 80191928 0018E888  38 61 00 10 */	addi r3, r1, 0x10
/* 8019192C 0018E88C  4C C6 31 82 */	crclr 6
/* 80191930 0018E890  48 1F C3 AD */	bl sprintf
/* 80191934 0018E894  38 61 00 14 */	addi r3, r1, 0x14
/* 80191938 0018E898  38 81 00 10 */	addi r4, r1, 0x10
/* 8019193C 0018E89C  38 C1 00 0C */	addi r6, r1, 0xc
/* 80191940 0018E8A0  38 A0 FF FF */	li r5, -1
/* 80191944 0018E8A4  48 1A C8 51 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FPCciRCQ24rstl17rmemory_allocator"
/* 80191948 0018E8A8  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 8019194C 0018E8AC  38 81 00 14 */	addi r4, r1, 0x14
/* 80191950 0018E8B0  38 A0 00 00 */	li r5, 0
/* 80191954 0018E8B4  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80191958 0018E8B8  48 13 81 B1 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8019195C 0018E8BC  38 61 00 14 */	addi r3, r1, 0x14
/* 80191960 0018E8C0  48 1A C1 81 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80191964 0018E8C4  80 7E 00 08 */	lwz r3, 8(r30)
/* 80191968 0018E8C8  80 01 00 08 */	lwz r0, 8(r1)
/* 8019196C 0018E8CC  7C 03 00 00 */	cmpw r3, r0
/* 80191970 0018E8D0  40 80 00 1C */	bge lbl_8019198C
/* 80191974 0018E8D4  80 6D A1 38 */	lwz r3, gpTweakGui@sda21(r13)
/* 80191978 0018E8D8  C0 02 A5 58 */	lfs f0, lbl_805AC278@sda21(r2)
/* 8019197C 0018E8DC  C0 23 00 F4 */	lfs f1, 0xf4(r3)
/* 80191980 0018E8E0  D0 3E 00 0C */	stfs f1, 0xc(r30)
/* 80191984 0018E8E4  D0 1E 00 54 */	stfs f0, 0x54(r30)
/* 80191988 0018E8E8  48 00 00 1C */	b lbl_801919A4
lbl_8019198C:
/* 8019198C 0018E8EC  40 81 00 18 */	ble lbl_801919A4
/* 80191990 0018E8F0  80 6D A1 38 */	lwz r3, gpTweakGui@sda21(r13)
/* 80191994 0018E8F4  C0 22 A5 28 */	lfs f1, lbl_805AC248@sda21(r2)
/* 80191998 0018E8F8  C0 03 00 F4 */	lfs f0, 0xf4(r3)
/* 8019199C 0018E8FC  EC 01 00 32 */	fmuls f0, f1, f0
/* 801919A0 0018E900  D0 1E 00 0C */	stfs f0, 0xc(r30)
lbl_801919A4:
/* 801919A4 0018E904  80 7F 08 B8 */	lwz r3, 0x8b8(r31)
/* 801919A8 0018E908  80 63 00 00 */	lwz r3, 0(r3)
/* 801919AC 0018E90C  4B EF F8 71 */	bl GetMissileCostForAltAttack__12CPlayerStateCFv
/* 801919B0 0018E910  80 81 00 08 */	lwz r4, 8(r1)
/* 801919B4 0018E914  80 1E 00 08 */	lwz r0, 8(r30)
/* 801919B8 0018E918  7C 64 1A 14 */	add r3, r4, r3
/* 801919BC 0018E91C  7C 03 00 00 */	cmpw r3, r0
/* 801919C0 0018E920  41 81 00 0C */	bgt lbl_801919CC
/* 801919C4 0018E924  C0 02 A5 2C */	lfs f0, lbl_805AC24C@sda21(r2)
/* 801919C8 0018E928  D0 1E 00 50 */	stfs f0, 0x50(r30)
lbl_801919CC:
/* 801919CC 0018E92C  80 01 00 08 */	lwz r0, 8(r1)
/* 801919D0 0018E930  90 1E 00 08 */	stw r0, 8(r30)
/* 801919D4 0018E934  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801919D8 0018E938  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801919DC 0018E93C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801919E0 0018E940  7C 08 03 A6 */	mtlr r0
/* 801919E4 0018E944  38 21 00 30 */	addi r1, r1, 0x30
/* 801919E8 0018E948  4E 80 00 20 */	blr

.global SetMissileCapacity__20CHudMissileInterfaceFf
SetMissileCapacity__20CHudMissileInterfaceFf:
/* 801919EC 0018E94C  90 83 00 04 */	stw r4, 4(r3)
/* 801919F0 0018E950  4E 80 00 20 */	blr

.global __ct__20CHudMissileInterfaceFR9CGuiFrameiifbUiRC13CStateManager
__ct__20CHudMissileInterfaceFR9CGuiFrameiifbUiRC13CStateManager:
/* 801919F4 0018E954  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 801919F8 0018E958  7C 08 02 A6 */	mflr r0
/* 801919FC 0018E95C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80191A00 0018E960  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80191A04 0018E964  F3 E1 00 98 */	psq_st f31, 152(r1), 0, qr0
/* 80191A08 0018E968  BF 41 00 78 */	stmw r26, 0x78(r1)
/* 80191A0C 0018E96C  7C 7C 1B 78 */	mr r28, r3
/* 80191A10 0018E970  7D 1D 43 78 */	mr r29, r8
/* 80191A14 0018E974  93 A3 00 00 */	stw r29, 0(r3)
/* 80191A18 0018E978  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 80191A1C 0018E97C  3D 00 80 3D */	lis r8, lbl_803D0C28@ha
/* 80191A20 0018E980  C0 02 A5 20 */	lfs f0, lbl_805AC240@sda21(r2)
/* 80191A24 0018E984  90 BC 00 04 */	stw r5, 4(r28)
/* 80191A28 0018E988  FF E0 08 90 */	fmr f31, f1
/* 80191A2C 0018E98C  38 03 66 70 */	addi r0, r3, sIdentity__12CTransform4f@l
/* 80191A30 0018E990  7C 9A 23 78 */	mr r26, r4
/* 80191A34 0018E994  90 DC 00 08 */	stw r6, 8(r28)
/* 80191A38 0018E998  7C FB 3B 78 */	mr r27, r7
/* 80191A3C 0018E99C  7D 3E 4B 78 */	mr r30, r9
/* 80191A40 0018E9A0  D0 1C 00 0C */	stfs f0, 0xc(r28)
/* 80191A44 0018E9A4  7C 04 03 78 */	mr r4, r0
/* 80191A48 0018E9A8  3B E8 0C 28 */	addi r31, r8, lbl_803D0C28@l
/* 80191A4C 0018E9AC  38 7C 00 10 */	addi r3, r28, 0x10
/* 80191A50 0018E9B0  48 18 11 25 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80191A54 0018E9B4  C0 02 A5 20 */	lfs f0, lbl_805AC240@sda21(r2)
/* 80191A58 0018E9B8  38 00 00 00 */	li r0, 0
/* 80191A5C 0018E9BC  38 A0 00 01 */	li r5, 1
/* 80191A60 0018E9C0  38 61 00 68 */	addi r3, r1, 0x68
/* 80191A64 0018E9C4  D0 1C 00 40 */	stfs f0, 0x40(r28)
/* 80191A68 0018E9C8  38 9F 00 00 */	addi r4, r31, 0
/* 80191A6C 0018E9CC  90 1C 00 44 */	stw r0, 0x44(r28)
/* 80191A70 0018E9D0  D0 1C 00 48 */	stfs f0, 0x48(r28)
/* 80191A74 0018E9D4  D3 FC 00 4C */	stfs f31, 0x4c(r28)
/* 80191A78 0018E9D8  D0 1C 00 50 */	stfs f0, 0x50(r28)
/* 80191A7C 0018E9DC  D0 1C 00 54 */	stfs f0, 0x54(r28)
/* 80191A80 0018E9E0  88 1C 00 58 */	lbz r0, 0x58(r28)
/* 80191A84 0018E9E4  53 60 3E 30 */	rlwimi r0, r27, 7, 0x18, 0x18
/* 80191A88 0018E9E8  98 1C 00 58 */	stb r0, 0x58(r28)
/* 80191A8C 0018E9EC  88 1C 00 58 */	lbz r0, 0x58(r28)
/* 80191A90 0018E9F0  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 80191A94 0018E9F4  98 1C 00 58 */	stb r0, 0x58(r28)
/* 80191A98 0018E9F8  88 1C 00 58 */	lbz r0, 0x58(r28)
/* 80191A9C 0018E9FC  50 A0 2E B4 */	rlwimi r0, r5, 5, 0x1a, 0x1a
/* 80191AA0 0018EA00  98 1C 00 58 */	stb r0, 0x58(r28)
/* 80191AA4 0018EA04  4B E7 32 15 */	bl string_l__4rstlFPCc
/* 80191AA8 0018EA08  7F 43 D3 78 */	mr r3, r26
/* 80191AAC 0018EA0C  38 81 00 68 */	addi r4, r1, 0x68
/* 80191AB0 0018EA10  48 13 07 25 */	bl "FindWidget__9CGuiFrameCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80191AB4 0018EA14  90 7C 00 5C */	stw r3, 0x5c(r28)
/* 80191AB8 0018EA18  38 61 00 68 */	addi r3, r1, 0x68
/* 80191ABC 0018EA1C  48 1A C0 25 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80191AC0 0018EA20  38 61 00 58 */	addi r3, r1, 0x58
/* 80191AC4 0018EA24  38 9F 00 18 */	addi r4, r31, 0x18
/* 80191AC8 0018EA28  4B E7 31 F1 */	bl string_l__4rstlFPCc
/* 80191ACC 0018EA2C  7F 43 D3 78 */	mr r3, r26
/* 80191AD0 0018EA30  38 81 00 58 */	addi r4, r1, 0x58
/* 80191AD4 0018EA34  48 13 07 01 */	bl "FindWidget__9CGuiFrameCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80191AD8 0018EA38  90 7C 00 60 */	stw r3, 0x60(r28)
/* 80191ADC 0018EA3C  38 61 00 58 */	addi r3, r1, 0x58
/* 80191AE0 0018EA40  48 1A C0 01 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80191AE4 0018EA44  38 61 00 48 */	addi r3, r1, 0x48
/* 80191AE8 0018EA48  38 9F 00 30 */	addi r4, r31, 0x30
/* 80191AEC 0018EA4C  4B E7 31 CD */	bl string_l__4rstlFPCc
/* 80191AF0 0018EA50  7F 43 D3 78 */	mr r3, r26
/* 80191AF4 0018EA54  38 81 00 48 */	addi r4, r1, 0x48
/* 80191AF8 0018EA58  48 13 06 DD */	bl "FindWidget__9CGuiFrameCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80191AFC 0018EA5C  90 7C 00 64 */	stw r3, 0x64(r28)
/* 80191B00 0018EA60  38 61 00 48 */	addi r3, r1, 0x48
/* 80191B04 0018EA64  48 1A BF DD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80191B08 0018EA68  38 61 00 38 */	addi r3, r1, 0x38
/* 80191B0C 0018EA6C  38 9F 00 48 */	addi r4, r31, 0x48
/* 80191B10 0018EA70  4B E7 31 A9 */	bl string_l__4rstlFPCc
/* 80191B14 0018EA74  7F 43 D3 78 */	mr r3, r26
/* 80191B18 0018EA78  38 81 00 38 */	addi r4, r1, 0x38
/* 80191B1C 0018EA7C  48 13 06 B9 */	bl "FindWidget__9CGuiFrameCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80191B20 0018EA80  90 7C 00 68 */	stw r3, 0x68(r28)
/* 80191B24 0018EA84  38 61 00 38 */	addi r3, r1, 0x38
/* 80191B28 0018EA88  48 1A BF B9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80191B2C 0018EA8C  38 61 00 28 */	addi r3, r1, 0x28
/* 80191B30 0018EA90  38 9F 00 60 */	addi r4, r31, 0x60
/* 80191B34 0018EA94  4B E7 31 85 */	bl string_l__4rstlFPCc
/* 80191B38 0018EA98  7F 43 D3 78 */	mr r3, r26
/* 80191B3C 0018EA9C  38 81 00 28 */	addi r4, r1, 0x28
/* 80191B40 0018EAA0  48 13 06 95 */	bl "FindWidget__9CGuiFrameCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80191B44 0018EAA4  90 7C 00 6C */	stw r3, 0x6c(r28)
/* 80191B48 0018EAA8  38 61 00 28 */	addi r3, r1, 0x28
/* 80191B4C 0018EAAC  48 1A BF 95 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80191B50 0018EAB0  38 61 00 18 */	addi r3, r1, 0x18
/* 80191B54 0018EAB4  38 9F 00 78 */	addi r4, r31, 0x78
/* 80191B58 0018EAB8  4B E7 31 61 */	bl string_l__4rstlFPCc
/* 80191B5C 0018EABC  7F 43 D3 78 */	mr r3, r26
/* 80191B60 0018EAC0  38 81 00 18 */	addi r4, r1, 0x18
/* 80191B64 0018EAC4  48 13 06 71 */	bl "FindWidget__9CGuiFrameCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80191B68 0018EAC8  90 7C 00 70 */	stw r3, 0x70(r28)
/* 80191B6C 0018EACC  38 61 00 18 */	addi r3, r1, 0x18
/* 80191B70 0018EAD0  48 1A BF 71 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80191B74 0018EAD4  38 61 00 08 */	addi r3, r1, 8
/* 80191B78 0018EAD8  38 9F 00 90 */	addi r4, r31, 0x90
/* 80191B7C 0018EADC  4B E7 31 3D */	bl string_l__4rstlFPCc
/* 80191B80 0018EAE0  7F 43 D3 78 */	mr r3, r26
/* 80191B84 0018EAE4  38 81 00 08 */	addi r4, r1, 8
/* 80191B88 0018EAE8  48 13 06 4D */	bl "FindWidget__9CGuiFrameCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80191B8C 0018EAEC  90 7C 00 74 */	stw r3, 0x74(r28)
/* 80191B90 0018EAF0  38 61 00 08 */	addi r3, r1, 8
/* 80191B94 0018EAF4  48 1A BF 4D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80191B98 0018EAF8  80 1C 00 6C */	lwz r0, 0x6c(r28)
/* 80191B9C 0018EAFC  38 60 00 00 */	li r3, 0
/* 80191BA0 0018EB00  28 00 00 00 */	cmplwi r0, 0
/* 80191BA4 0018EB04  41 82 00 14 */	beq lbl_80191BB8
/* 80191BA8 0018EB08  80 1C 00 70 */	lwz r0, 0x70(r28)
/* 80191BAC 0018EB0C  28 00 00 00 */	cmplwi r0, 0
/* 80191BB0 0018EB10  41 82 00 08 */	beq lbl_80191BB8
/* 80191BB4 0018EB14  38 60 00 01 */	li r3, 1
lbl_80191BB8:
/* 80191BB8 0018EB18  88 9C 00 58 */	lbz r4, 0x58(r28)
/* 80191BBC 0018EB1C  50 64 26 F6 */	rlwimi r4, r3, 4, 0x1b, 0x1b
/* 80191BC0 0018EB20  20 7D 00 02 */	subfic r3, r29, 2
/* 80191BC4 0018EB24  38 1D FF FE */	addi r0, r29, -2
/* 80191BC8 0018EB28  98 9C 00 58 */	stb r4, 0x58(r28)
/* 80191BCC 0018EB2C  7C 60 03 78 */	or r0, r3, r0
/* 80191BD0 0018EB30  54 04 0F FE */	srwi r4, r0, 0x1f
/* 80191BD4 0018EB34  38 7C 00 10 */	addi r3, r28, 0x10
/* 80191BD8 0018EB38  88 1C 00 58 */	lbz r0, 0x58(r28)
/* 80191BDC 0018EB3C  50 80 1F 38 */	rlwimi r0, r4, 3, 0x1c, 0x1c
/* 80191BE0 0018EB40  98 1C 00 58 */	stb r0, 0x58(r28)
/* 80191BE4 0018EB44  80 9C 00 74 */	lwz r4, 0x74(r28)
/* 80191BE8 0018EB48  38 84 00 04 */	addi r4, r4, 4
/* 80191BEC 0018EB4C  48 18 0F 55 */	bl __as__12CTransform4fFRC12CTransform4f
/* 80191BF0 0018EB50  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 80191BF4 0018EB54  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 80191BF8 0018EB58  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80191BFC 0018EB5C  38 84 01 A4 */	addi r4, r4, 0x1a4
/* 80191C00 0018EB60  48 13 7A 69 */	bl SetFontColor__15CGuiTextSupportFRC6CColor
/* 80191C04 0018EB64  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 80191C08 0018EB68  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 80191C0C 0018EB6C  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80191C10 0018EB70  38 84 01 A8 */	addi r4, r4, 0x1a8
/* 80191C14 0018EB74  48 13 7A 05 */	bl SetOutlineColor__15CGuiTextSupportFRC6CColor
/* 80191C18 0018EB78  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 80191C1C 0018EB7C  80 7C 00 74 */	lwz r3, 0x74(r28)
/* 80191C20 0018EB80  38 84 00 94 */	addi r4, r4, 0x94
/* 80191C24 0018EB84  48 13 8C 49 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80191C28 0018EB88  80 AD A1 3C */	lwz r5, gpTweakGuiColors@sda21(r13)
/* 80191C2C 0018EB8C  38 9F 00 F4 */	addi r4, r31, 0xf4
/* 80191C30 0018EB90  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 80191C34 0018EB94  2C 1D 00 00 */	cmpwi r29, 0
/* 80191C38 0018EB98  80 05 00 7C */	lwz r0, 0x7c(r5)
/* 80191C3C 0018EB9C  90 03 00 CC */	stw r0, 0xcc(r3)
/* 80191C40 0018EBA0  80 AD A1 3C */	lwz r5, gpTweakGuiColors@sda21(r13)
/* 80191C44 0018EBA4  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 80191C48 0018EBA8  80 05 00 74 */	lwz r0, 0x74(r5)
/* 80191C4C 0018EBAC  90 03 00 D0 */	stw r0, 0xd0(r3)
/* 80191C50 0018EBB0  80 AD A1 3C */	lwz r5, gpTweakGuiColors@sda21(r13)
/* 80191C54 0018EBB4  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 80191C58 0018EBB8  80 05 00 78 */	lwz r0, 0x78(r5)
/* 80191C5C 0018EBBC  90 03 00 D4 */	stw r0, 0xd4(r3)
/* 80191C60 0018EBC0  80 1C 00 00 */	lwz r0, 0(r28)
/* 80191C64 0018EBC4  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 80191C68 0018EBC8  54 00 10 3A */	slwi r0, r0, 2
/* 80191C6C 0018EBCC  7C 04 00 2E */	lwzx r0, r4, r0
/* 80191C70 0018EBD0  90 03 00 D8 */	stw r0, 0xd8(r3)
/* 80191C74 0018EBD4  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 80191C78 0018EBD8  40 82 00 0C */	bne lbl_80191C84
/* 80191C7C 0018EBDC  C0 02 A5 2C */	lfs f0, lbl_805AC24C@sda21(r2)
/* 80191C80 0018EBE0  48 00 00 08 */	b lbl_80191C88
lbl_80191C84:
/* 80191C84 0018EBE4  C0 02 A5 5C */	lfs f0, lbl_805AC27C@sda21(r2)
lbl_80191C88:
/* 80191C88 0018EBE8  D0 03 00 DC */	stfs f0, 0xdc(r3)
/* 80191C8C 0018EBEC  C0 22 A5 60 */	lfs f1, lbl_805AC280@sda21(r2)
/* 80191C90 0018EBF0  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 80191C94 0018EBF4  48 13 9C D5 */	bl SetMaxEnergy__16CAuiEnergyBarT01Ff
/* 80191C98 0018EBF8  80 8D A1 38 */	lwz r4, gpTweakGui@sda21(r13)
/* 80191C9C 0018EBFC  38 00 00 01 */	li r0, 1
/* 80191CA0 0018EC00  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 80191CA4 0018EC04  C0 04 00 34 */	lfs f0, 0x34(r4)
/* 80191CA8 0018EC08  D0 03 00 E4 */	stfs f0, 0xe4(r3)
/* 80191CAC 0018EC0C  80 8D A1 38 */	lwz r4, gpTweakGui@sda21(r13)
/* 80191CB0 0018EC10  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 80191CB4 0018EC14  C0 04 00 38 */	lfs f0, 0x38(r4)
/* 80191CB8 0018EC18  D0 03 00 E8 */	stfs f0, 0xe8(r3)
/* 80191CBC 0018EC1C  80 8D A1 38 */	lwz r4, gpTweakGui@sda21(r13)
/* 80191CC0 0018EC20  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 80191CC4 0018EC24  C0 04 00 3C */	lfs f0, 0x3c(r4)
/* 80191CC8 0018EC28  D0 03 00 EC */	stfs f0, 0xec(r3)
/* 80191CCC 0018EC2C  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 80191CD0 0018EC30  98 03 00 F0 */	stb r0, 0xf0(r3)
/* 80191CD4 0018EC34  80 7C 00 68 */	lwz r3, 0x68(r28)
/* 80191CD8 0018EC38  28 03 00 00 */	cmplwi r3, 0
/* 80191CDC 0018EC3C  41 82 00 28 */	beq lbl_80191D04
/* 80191CE0 0018EC40  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 80191CE4 0018EC44  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80191CE8 0018EC48  38 84 00 64 */	addi r4, r4, 0x64
/* 80191CEC 0018EC4C  48 13 79 7D */	bl SetFontColor__15CGuiTextSupportFRC6CColor
/* 80191CF0 0018EC50  80 7C 00 68 */	lwz r3, 0x68(r28)
/* 80191CF4 0018EC54  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 80191CF8 0018EC58  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80191CFC 0018EC5C  38 84 00 BC */	addi r4, r4, 0xbc
/* 80191D00 0018EC60  48 13 79 19 */	bl SetOutlineColor__15CGuiTextSupportFRC6CColor
lbl_80191D04:
/* 80191D04 0018EC64  80 9C 00 08 */	lwz r4, 8(r28)
/* 80191D08 0018EC68  7F 83 E3 78 */	mr r3, r28
/* 80191D0C 0018EC6C  7F C5 F3 78 */	mr r5, r30
/* 80191D10 0018EC70  4B FF FB DD */	bl SetNumMissiles__20CHudMissileInterfaceFiRC13CStateManager
/* 80191D14 0018EC74  7F 83 E3 78 */	mr r3, r28
/* 80191D18 0018EC78  48 00 00 29 */	bl GetMissileInventoryStatus__20CHudMissileInterfaceFv
/* 80191D1C 0018EC7C  90 7C 00 44 */	stw r3, 0x44(r28)
/* 80191D20 0018EC80  7F 83 E3 78 */	mr r3, r28
/* 80191D24 0018EC84  E3 E1 00 98 */	psq_l f31, 152(r1), 0, qr0
/* 80191D28 0018EC88  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80191D2C 0018EC8C  BB 41 00 78 */	lmw r26, 0x78(r1)
/* 80191D30 0018EC90  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80191D34 0018EC94  7C 08 03 A6 */	mtlr r0
/* 80191D38 0018EC98  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80191D3C 0018EC9C  4E 80 00 20 */	blr

.global GetMissileInventoryStatus__20CHudMissileInterfaceFv
GetMissileInventoryStatus__20CHudMissileInterfaceFv:
/* 80191D40 0018ECA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80191D44 0018ECA4  7C 08 02 A6 */	mflr r0
/* 80191D48 0018ECA8  C0 02 A5 20 */	lfs f0, lbl_805AC240@sda21(r2)
/* 80191D4C 0018ECAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80191D50 0018ECB0  80 63 00 64 */	lwz r3, 0x64(r3)
/* 80191D54 0018ECB4  C0 23 00 F4 */	lfs f1, 0xf4(r3)
/* 80191D58 0018ECB8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80191D5C 0018ECBC  40 82 00 0C */	bne lbl_80191D68
/* 80191D60 0018ECC0  38 60 00 02 */	li r3, 2
/* 80191D64 0018ECC4  48 00 00 24 */	b lbl_80191D88
lbl_80191D68:
/* 80191D68 0018ECC8  48 13 94 75 */	bl GetActualFraction__16CAuiEnergyBarT01CFv
/* 80191D6C 0018ECCC  80 6D A1 38 */	lwz r3, gpTweakGui@sda21(r13)
/* 80191D70 0018ECD0  C0 03 01 14 */	lfs f0, 0x114(r3)
/* 80191D74 0018ECD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80191D78 0018ECD8  40 80 00 0C */	bge lbl_80191D84
/* 80191D7C 0018ECDC  38 60 00 01 */	li r3, 1
/* 80191D80 0018ECE0  48 00 00 08 */	b lbl_80191D88
lbl_80191D84:
/* 80191D84 0018ECE4  38 60 00 00 */	li r3, 0
lbl_80191D88:
/* 80191D88 0018ECE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80191D8C 0018ECEC  7C 08 03 A6 */	mtlr r0
/* 80191D90 0018ECF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80191D94 0018ECF4  4E 80 00 20 */	blr

.global XRayMissileBarCoordFunc__20CHudMissileInterfaceFf
XRayMissileBarCoordFunc__20CHudMissileInterfaceFf:
/* 80191D98 0018ECF8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80191D9C 0018ECFC  7C 08 02 A6 */	mflr r0
/* 80191DA0 0018ED00  90 01 00 34 */	stw r0, 0x34(r1)
/* 80191DA4 0018ED04  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80191DA8 0018ED08  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 80191DAC 0018ED0C  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 80191DB0 0018ED10  F3 C1 00 18 */	psq_st f30, 24(r1), 0, qr0
/* 80191DB4 0018ED14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80191DB8 0018ED18  C0 02 A5 44 */	lfs f0, lbl_805AC264@sda21(r2)
/* 80191DBC 0018ED1C  7C 7F 1B 78 */	mr r31, r3
/* 80191DC0 0018ED20  C0 42 A5 64 */	lfs f2, lbl_805AC284@sda21(r2)
/* 80191DC4 0018ED24  EC 01 00 28 */	fsubs f0, f1, f0
/* 80191DC8 0018ED28  EF E2 00 32 */	fmuls f31, f2, f0
/* 80191DCC 0018ED2C  FC 20 F8 90 */	fmr f1, f31
/* 80191DD0 0018ED30  48 18 2F 75 */	bl FastCosR__5CMathFf
/* 80191DD4 0018ED34  C0 02 A5 68 */	lfs f0, lbl_805AC288@sda21(r2)
/* 80191DD8 0018ED38  EF C0 00 72 */	fmuls f30, f0, f1
/* 80191DDC 0018ED3C  FC 20 F8 90 */	fmr f1, f31
/* 80191DE0 0018ED40  48 18 30 11 */	bl FastSinR__5CMathFf
/* 80191DE4 0018ED44  C0 02 A5 6C */	lfs f0, lbl_805AC28C@sda21(r2)
/* 80191DE8 0018ED48  C0 62 A5 68 */	lfs f3, lbl_805AC288@sda21(r2)
/* 80191DEC 0018ED4C  EC 5E 00 28 */	fsubs f2, f30, f0
/* 80191DF0 0018ED50  C0 02 A5 20 */	lfs f0, lbl_805AC240@sda21(r2)
/* 80191DF4 0018ED54  EC 23 00 72 */	fmuls f1, f3, f1
/* 80191DF8 0018ED58  D0 5F 00 00 */	stfs f2, 0(r31)
/* 80191DFC 0018ED5C  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80191E00 0018ED60  D0 3F 00 08 */	stfs f1, 8(r31)
/* 80191E04 0018ED64  D3 DF 00 0C */	stfs f30, 0xc(r31)
/* 80191E08 0018ED68  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 80191E0C 0018ED6C  D0 3F 00 14 */	stfs f1, 0x14(r31)
/* 80191E10 0018ED70  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80191E14 0018ED74  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80191E18 0018ED78  E3 C1 00 18 */	psq_l f30, 24(r1), 0, qr0
/* 80191E1C 0018ED7C  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 80191E20 0018ED80  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80191E24 0018ED84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80191E28 0018ED88  7C 08 03 A6 */	mtlr r0
/* 80191E2C 0018ED8C  38 21 00 30 */	addi r1, r1, 0x30
/* 80191E30 0018ED90  4E 80 00 20 */	blr

.global ThermalMissileBarCoordFunc__20CHudMissileInterfaceFf
ThermalMissileBarCoordFunc__20CHudMissileInterfaceFf:
/* 80191E34 0018ED94  3C 80 80 3D */	lis r4, lbl_803D0D08@ha
/* 80191E38 0018ED98  C0 02 A5 70 */	lfs f0, lbl_805AC290@sda21(r2)
/* 80191E3C 0018ED9C  38 84 0D 08 */	addi r4, r4, lbl_803D0D08@l
/* 80191E40 0018EDA0  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 80191E44 0018EDA4  EC 60 00 B2 */	fmuls f3, f0, f2
/* 80191E48 0018EDA8  EC 81 00 B2 */	fmuls f4, f1, f2
/* 80191E4C 0018EDAC  FC 04 18 40 */	fcmpo cr0, f4, f3
/* 80191E50 0018EDB0  40 80 00 0C */	bge lbl_80191E5C
/* 80191E54 0018EDB4  EC 64 18 24 */	fdivs f3, f4, f3
/* 80191E58 0018EDB8  48 00 00 28 */	b lbl_80191E80
lbl_80191E5C:
/* 80191E5C 0018EDBC  EC 02 18 28 */	fsubs f0, f2, f3
/* 80191E60 0018EDC0  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80191E64 0018EDC4  40 80 00 0C */	bge lbl_80191E70
/* 80191E68 0018EDC8  C0 62 A5 2C */	lfs f3, lbl_805AC24C@sda21(r2)
/* 80191E6C 0018EDCC  48 00 00 14 */	b lbl_80191E80
lbl_80191E70:
/* 80191E70 0018EDD0  EC 04 00 28 */	fsubs f0, f4, f0
/* 80191E74 0018EDD4  C0 22 A5 2C */	lfs f1, lbl_805AC24C@sda21(r2)
/* 80191E78 0018EDD8  EC 00 18 24 */	fdivs f0, f0, f3
/* 80191E7C 0018EDDC  EC 61 00 28 */	fsubs f3, f1, f0
lbl_80191E80:
/* 80191E80 0018EDE0  C0 42 A5 74 */	lfs f2, lbl_805AC294@sda21(r2)
/* 80191E84 0018EDE4  C0 02 A5 5C */	lfs f0, lbl_805AC27C@sda21(r2)
/* 80191E88 0018EDE8  C0 22 A5 20 */	lfs f1, lbl_805AC240@sda21(r2)
/* 80191E8C 0018EDEC  EC 42 00 F8 */	fmsubs f2, f2, f3, f0
/* 80191E90 0018EDF0  C0 02 A5 78 */	lfs f0, lbl_805AC298@sda21(r2)
/* 80191E94 0018EDF4  D0 43 00 00 */	stfs f2, 0(r3)
/* 80191E98 0018EDF8  D0 23 00 04 */	stfs f1, 4(r3)
/* 80191E9C 0018EDFC  D0 83 00 08 */	stfs f4, 8(r3)
/* 80191EA0 0018EE00  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80191EA4 0018EE04  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 80191EA8 0018EE08  D0 83 00 14 */	stfs f4, 0x14(r3)
/* 80191EAC 0018EE0C  4E 80 00 20 */	blr

.global CombatMissileBarCoordFunc__20CHudMissileInterfaceFf
CombatMissileBarCoordFunc__20CHudMissileInterfaceFf:
/* 80191EB0 0018EE10  3C 80 80 3D */	lis r4, lbl_803D0D08@ha
/* 80191EB4 0018EE14  C0 42 A5 20 */	lfs f2, lbl_805AC240@sda21(r2)
/* 80191EB8 0018EE18  C0 64 0D 08 */	lfs f3, lbl_803D0D08@l(r4)
/* 80191EBC 0018EE1C  D0 43 00 00 */	stfs f2, 0(r3)
/* 80191EC0 0018EE20  EC 21 00 F2 */	fmuls f1, f1, f3
/* 80191EC4 0018EE24  C0 02 A5 7C */	lfs f0, lbl_805AC29C@sda21(r2)
/* 80191EC8 0018EE28  D0 43 00 04 */	stfs f2, 4(r3)
/* 80191ECC 0018EE2C  D0 23 00 08 */	stfs f1, 8(r3)
/* 80191ED0 0018EE30  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80191ED4 0018EE34  D0 43 00 10 */	stfs f2, 0x10(r3)
/* 80191ED8 0018EE38  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 80191EDC 0018EE3C  4E 80 00 20 */	blr

.global DoDrawRadarPaint__18CHudRadarInterfaceCFf
DoDrawRadarPaint__18CHudRadarInterfaceCFf:
/* 80191EE0 0018EE40  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80191EE4 0018EE44  7C 08 02 A6 */	mflr r0
/* 80191EE8 0018EE48  90 01 00 64 */	stw r0, 0x64(r1)
/* 80191EEC 0018EE4C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80191EF0 0018EE50  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 80191EF4 0018EE54  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80191EF8 0018EE58  F3 C1 00 48 */	psq_st f30, 72(r1), 0, qr0
/* 80191EFC 0018EE5C  C0 02 A5 80 */	lfs f0, lbl_805AC2A0@sda21(r2)
/* 80191F00 0018EE60  38 60 00 98 */	li r3, 0x98
/* 80191F04 0018EE64  EF C0 00 72 */	fmuls f30, f0, f1
/* 80191F08 0018EE68  48 17 97 61 */	bl StreamBegin__9CGraphicsF13ERglPrimitive
/* 80191F0C 0018EE6C  C0 22 A5 84 */	lfs f1, lbl_805AC2A4@sda21(r2)
/* 80191F10 0018EE70  C0 42 A5 88 */	lfs f2, lbl_805AC2A8@sda21(r2)
/* 80191F14 0018EE74  48 17 95 51 */	bl StreamTexcoord__9CGraphicsFff
/* 80191F18 0018EE78  FF E0 F0 50 */	fneg f31, f30
/* 80191F1C 0018EE7C  C0 02 A5 84 */	lfs f0, lbl_805AC2A4@sda21(r2)
/* 80191F20 0018EE80  D3 C1 00 34 */	stfs f30, 0x34(r1)
/* 80191F24 0018EE84  38 61 00 2C */	addi r3, r1, 0x2c
/* 80191F28 0018EE88  D3 E1 00 2C */	stfs f31, 0x2c(r1)
/* 80191F2C 0018EE8C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80191F30 0018EE90  48 17 96 91 */	bl StreamVertex__9CGraphicsFRC9CVector3f
/* 80191F34 0018EE94  C0 22 A5 84 */	lfs f1, lbl_805AC2A4@sda21(r2)
/* 80191F38 0018EE98  FC 40 08 90 */	fmr f2, f1
/* 80191F3C 0018EE9C  48 17 95 29 */	bl StreamTexcoord__9CGraphicsFff
/* 80191F40 0018EEA0  C0 02 A5 84 */	lfs f0, lbl_805AC2A4@sda21(r2)
/* 80191F44 0018EEA4  38 61 00 20 */	addi r3, r1, 0x20
/* 80191F48 0018EEA8  D3 E1 00 20 */	stfs f31, 0x20(r1)
/* 80191F4C 0018EEAC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80191F50 0018EEB0  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 80191F54 0018EEB4  48 17 96 6D */	bl StreamVertex__9CGraphicsFRC9CVector3f
/* 80191F58 0018EEB8  C0 22 A5 88 */	lfs f1, lbl_805AC2A8@sda21(r2)
/* 80191F5C 0018EEBC  FC 40 08 90 */	fmr f2, f1
/* 80191F60 0018EEC0  48 17 95 05 */	bl StreamTexcoord__9CGraphicsFff
/* 80191F64 0018EEC4  C0 02 A5 84 */	lfs f0, lbl_805AC2A4@sda21(r2)
/* 80191F68 0018EEC8  38 61 00 14 */	addi r3, r1, 0x14
/* 80191F6C 0018EECC  D3 C1 00 14 */	stfs f30, 0x14(r1)
/* 80191F70 0018EED0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80191F74 0018EED4  D3 C1 00 1C */	stfs f30, 0x1c(r1)
/* 80191F78 0018EED8  48 17 96 49 */	bl StreamVertex__9CGraphicsFRC9CVector3f
/* 80191F7C 0018EEDC  C0 22 A5 88 */	lfs f1, lbl_805AC2A8@sda21(r2)
/* 80191F80 0018EEE0  C0 42 A5 84 */	lfs f2, lbl_805AC2A4@sda21(r2)
/* 80191F84 0018EEE4  48 17 94 E1 */	bl StreamTexcoord__9CGraphicsFff
/* 80191F88 0018EEE8  C0 02 A5 84 */	lfs f0, lbl_805AC2A4@sda21(r2)
/* 80191F8C 0018EEEC  38 61 00 08 */	addi r3, r1, 8
/* 80191F90 0018EEF0  D3 C1 00 08 */	stfs f30, 8(r1)
/* 80191F94 0018EEF4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80191F98 0018EEF8  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 80191F9C 0018EEFC  48 17 96 25 */	bl StreamVertex__9CGraphicsFRC9CVector3f
/* 80191FA0 0018EF00  48 17 94 71 */	bl StreamEnd__9CGraphicsFv
/* 80191FA4 0018EF04  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 80191FA8 0018EF08  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80191FAC 0018EF0C  E3 C1 00 48 */	psq_l f30, 72(r1), 0, qr0
/* 80191FB0 0018EF10  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80191FB4 0018EF14  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80191FB8 0018EF18  7C 08 03 A6 */	mtlr r0
/* 80191FBC 0018EF1C  38 21 00 60 */	addi r1, r1, 0x60
/* 80191FC0 0018EF20  4E 80 00 20 */	blr

.global DrawRadarPaint__18CHudRadarInterfaceCFRC9CVector3fffRCQ218CHudRadarInterface20SRadarPaintDrawParms
DrawRadarPaint__18CHudRadarInterfaceCFRC9CVector3fffRCQ218CHudRadarInterface20SRadarPaintDrawParms:
/* 80191FC4 0018EF24  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 80191FC8 0018EF28  7C 08 02 A6 */	mflr r0
/* 80191FCC 0018EF2C  90 01 01 24 */	stw r0, 0x124(r1)
/* 80191FD0 0018EF30  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 80191FD4 0018EF34  F3 E1 01 18 */	psq_st f31, 280(r1), 0, qr0
/* 80191FD8 0018EF38  DB C1 01 00 */	stfd f30, 0x100(r1)
/* 80191FDC 0018EF3C  F3 C1 01 08 */	psq_st f30, 264(r1), 0, qr0
/* 80191FE0 0018EF40  DB A1 00 F0 */	stfd f29, 0xf0(r1)
/* 80191FE4 0018EF44  F3 A1 00 F8 */	psq_st f29, 248(r1), 0, qr0
/* 80191FE8 0018EF48  DB 81 00 E0 */	stfd f28, 0xe0(r1)
/* 80191FEC 0018EF4C  F3 81 00 E8 */	psq_st f28, 232(r1), 0, qr0
/* 80191FF0 0018EF50  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 80191FF4 0018EF54  93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 80191FF8 0018EF58  93 A1 00 D4 */	stw r29, 0xd4(r1)
/* 80191FFC 0018EF5C  FF A0 08 90 */	fmr f29, f1
/* 80192000 0018EF60  7C BF 2B 78 */	mr r31, r5
/* 80192004 0018EF64  FF C0 10 90 */	fmr f30, f2
/* 80192008 0018EF68  C0 25 00 00 */	lfs f1, 0(r5)
/* 8019200C 0018EF6C  7C 7D 1B 78 */	mr r29, r3
/* 80192010 0018EF70  C0 45 00 04 */	lfs f2, 4(r5)
/* 80192014 0018EF74  7C 9E 23 78 */	mr r30, r4
/* 80192018 0018EF78  38 61 00 30 */	addi r3, r1, 0x30
/* 8019201C 0018EF7C  48 18 21 E5 */	bl __ct__9CVector2fFff
/* 80192020 0018EF80  C0 7E 00 00 */	lfs f3, 0(r30)
/* 80192024 0018EF84  38 61 00 28 */	addi r3, r1, 0x28
/* 80192028 0018EF88  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8019202C 0018EF8C  C0 5E 00 04 */	lfs f2, 4(r30)
/* 80192030 0018EF90  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80192034 0018EF94  EC 23 08 28 */	fsubs f1, f3, f1
/* 80192038 0018EF98  EC 42 00 28 */	fsubs f2, f2, f0
/* 8019203C 0018EF9C  48 18 21 C5 */	bl __ct__9CVector2fFff
/* 80192040 0018EFA0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80192044 0018EFA4  38 61 00 28 */	addi r3, r1, 0x28
/* 80192048 0018EFA8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8019204C 0018EFAC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80192050 0018EFB0  FC 00 02 10 */	fabs f0, f0
/* 80192054 0018EFB4  FF 80 00 18 */	frsp f28, f0
/* 80192058 0018EFB8  48 18 20 9D */	bl Magnitude__9CVector2fCFv
/* 8019205C 0018EFBC  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80192060 0018EFC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80192064 0018EFC4  4C 40 13 82 */	cror 2, 0, 2
/* 80192068 0018EFC8  40 82 01 30 */	bne lbl_80192198
/* 8019206C 0018EFCC  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80192070 0018EFD0  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 80192074 0018EFD4  4C 40 13 82 */	cror 2, 0, 2
/* 80192078 0018EFD8  40 82 01 20 */	bne lbl_80192198
/* 8019207C 0018EFDC  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 80192080 0018EFE0  FC 1C 18 40 */	fcmpo cr0, f28, f3
/* 80192084 0018EFE4  40 81 00 1C */	ble lbl_801920A0
/* 80192088 0018EFE8  EC 3C 18 28 */	fsubs f1, f28, f3
/* 8019208C 0018EFEC  C0 42 A5 88 */	lfs f2, lbl_805AC2A8@sda21(r2)
/* 80192090 0018EFF0  EC 00 18 28 */	fsubs f0, f0, f3
/* 80192094 0018EFF4  EC 01 00 24 */	fdivs f0, f1, f0
/* 80192098 0018EFF8  EC 02 00 28 */	fsubs f0, f2, f0
/* 8019209C 0018EFFC  EF DE 00 32 */	fmuls f30, f30, f0
lbl_801920A0:
/* 801920A0 0018F000  C0 3E 00 00 */	lfs f1, 0(r30)
/* 801920A4 0018F004  38 61 00 20 */	addi r3, r1, 0x20
/* 801920A8 0018F008  C0 5E 00 04 */	lfs f2, 4(r30)
/* 801920AC 0018F00C  48 18 21 55 */	bl __ct__9CVector2fFff
/* 801920B0 0018F010  38 61 00 10 */	addi r3, r1, 0x10
/* 801920B4 0018F014  38 81 00 20 */	addi r4, r1, 0x20
/* 801920B8 0018F018  38 A1 00 30 */	addi r5, r1, 0x30
/* 801920BC 0018F01C  48 18 1E 7D */	bl __mi__FRC9CVector2fRC9CVector2f
/* 801920C0 0018F020  38 61 00 18 */	addi r3, r1, 0x18
/* 801920C4 0018F024  38 81 00 10 */	addi r4, r1, 0x10
/* 801920C8 0018F028  38 BF 00 70 */	addi r5, r31, 0x70
/* 801920CC 0018F02C  48 18 1E 09 */	bl __ml__FRC9CVector2fRCf
/* 801920D0 0018F030  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 801920D4 0018F034  38 61 00 44 */	addi r3, r1, 0x44
/* 801920D8 0018F038  C0 22 A5 84 */	lfs f1, lbl_805AC2A4@sda21(r2)
/* 801920DC 0018F03C  38 9F 00 0C */	addi r4, r31, 0xc
/* 801920E0 0018F040  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 801920E4 0018F044  38 A1 00 38 */	addi r5, r1, 0x38
/* 801920E8 0018F048  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 801920EC 0018F04C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 801920F0 0018F050  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 801920F4 0018F054  48 18 09 F5 */	bl __ml__12CTransform4fCFRC9CVector3f
/* 801920F8 0018F058  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 801920FC 0018F05C  38 61 00 5C */	addi r3, r1, 0x5c
/* 80192100 0018F060  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 80192104 0018F064  38 81 00 50 */	addi r4, r1, 0x50
/* 80192108 0018F068  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8019210C 0018F06C  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 80192110 0018F070  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80192114 0018F074  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80192118 0018F078  48 18 10 29 */	bl Translate__12CTransform4fFRC9CVector3f
/* 8019211C 0018F07C  38 61 00 8C */	addi r3, r1, 0x8c
/* 80192120 0018F080  38 9F 00 3C */	addi r4, r31, 0x3c
/* 80192124 0018F084  38 A1 00 5C */	addi r5, r1, 0x5c
/* 80192128 0018F088  48 18 08 29 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 8019212C 0018F08C  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 80192130 0018F090  38 81 00 8C */	addi r4, r1, 0x8c
/* 80192134 0018F094  81 83 00 00 */	lwz r12, 0(r3)
/* 80192138 0018F098  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8019213C 0018F09C  7D 89 03 A6 */	mtctr r12
/* 80192140 0018F0A0  4E 80 04 21 */	bctrl
/* 80192144 0018F0A4  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 80192148 0018F0A8  3C 00 43 30 */	lis r0, 0x4330
/* 8019214C 0018F0AC  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80192150 0018F0B0  88 64 00 13 */	lbz r3, 0x13(r4)
/* 80192154 0018F0B4  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 80192158 0018F0B8  EC 5E 00 32 */	fmuls f2, f30, f0
/* 8019215C 0018F0BC  C8 22 A5 90 */	lfd f1, lbl_805AC2B0@sda21(r2)
/* 80192160 0018F0C0  90 61 00 C4 */	stw r3, 0xc4(r1)
/* 80192164 0018F0C4  C8 01 00 C0 */	lfd f0, 0xc0(r1)
/* 80192168 0018F0C8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8019216C 0018F0CC  EF E2 00 32 */	fmuls f31, f2, f0
/* 80192170 0018F0D0  F3 E1 A0 08 */	psq_st f31, 8(r1), 1, qr2
/* 80192174 0018F0D4  38 61 00 0C */	addi r3, r1, 0xc
/* 80192178 0018F0D8  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8019217C 0018F0DC  88 01 00 08 */	lbz r0, 8(r1)
/* 80192180 0018F0E0  50 80 00 2E */	rlwimi r0, r4, 0, 0, 0x17
/* 80192184 0018F0E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80192188 0018F0E8  48 17 93 C1 */	bl StreamColor__9CGraphicsFRC6CColor
/* 8019218C 0018F0EC  FC 20 E8 90 */	fmr f1, f29
/* 80192190 0018F0F0  7F A3 EB 78 */	mr r3, r29
/* 80192194 0018F0F4  4B FF FD 4D */	bl DoDrawRadarPaint__18CHudRadarInterfaceCFf
lbl_80192198:
/* 80192198 0018F0F8  E3 E1 01 18 */	psq_l f31, 280(r1), 0, qr0
/* 8019219C 0018F0FC  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 801921A0 0018F100  E3 C1 01 08 */	psq_l f30, 264(r1), 0, qr0
/* 801921A4 0018F104  CB C1 01 00 */	lfd f30, 0x100(r1)
/* 801921A8 0018F108  E3 A1 00 F8 */	psq_l f29, 248(r1), 0, qr0
/* 801921AC 0018F10C  CB A1 00 F0 */	lfd f29, 0xf0(r1)
/* 801921B0 0018F110  E3 81 00 E8 */	psq_l f28, 232(r1), 0, qr0
/* 801921B4 0018F114  CB 81 00 E0 */	lfd f28, 0xe0(r1)
/* 801921B8 0018F118  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 801921BC 0018F11C  83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 801921C0 0018F120  80 01 01 24 */	lwz r0, 0x124(r1)
/* 801921C4 0018F124  83 A1 00 D4 */	lwz r29, 0xd4(r1)
/* 801921C8 0018F128  7C 08 03 A6 */	mtlr r0
/* 801921CC 0018F12C  38 21 01 20 */	addi r1, r1, 0x120
/* 801921D0 0018F130  4E 80 00 20 */	blr

.global Draw__18CHudRadarInterfaceCFRC13CStateManagerf
Draw__18CHudRadarInterfaceCFRC13CStateManagerf:
/* 801921D4 0018F134  94 21 F5 10 */	stwu r1, -0xaf0(r1)
/* 801921D8 0018F138  7C 08 02 A6 */	mflr r0
/* 801921DC 0018F13C  90 01 0A F4 */	stw r0, 0xaf4(r1)
/* 801921E0 0018F140  DB E1 0A E0 */	stfd f31, 0xae0(r1)
/* 801921E4 0018F144  F3 E1 0A E8 */	psq_st f31, -1304(r1), 0, qr0
/* 801921E8 0018F148  DB C1 0A D0 */	stfd f30, 0xad0(r1)
/* 801921EC 0018F14C  F3 C1 0A D8 */	psq_st f30, -1320(r1), 0, qr0
/* 801921F0 0018F150  DB A1 0A C0 */	stfd f29, 0xac0(r1)
/* 801921F4 0018F154  F3 A1 0A C8 */	psq_st f29, -1336(r1), 0, qr0
/* 801921F8 0018F158  DB 81 0A B0 */	stfd f28, 0xab0(r1)
/* 801921FC 0018F15C  F3 81 0A B8 */	psq_st f28, -1352(r1), 0, qr0
/* 80192200 0018F160  DB 61 0A A0 */	stfd f27, 0xaa0(r1)
/* 80192204 0018F164  F3 61 0A A8 */	psq_st f27, -1368(r1), 0, qr0
/* 80192208 0018F168  DB 41 0A 90 */	stfd f26, 0xa90(r1)
/* 8019220C 0018F16C  F3 41 0A 98 */	psq_st f26, -1384(r1), 0, qr0
/* 80192210 0018F170  DB 21 0A 80 */	stfd f25, 0xa80(r1)
/* 80192214 0018F174  F3 21 0A 88 */	psq_st f25, -1400(r1), 0, qr0
/* 80192218 0018F178  DB 01 0A 70 */	stfd f24, 0xa70(r1)
/* 8019221C 0018F17C  F3 01 0A 78 */	psq_st f24, -1416(r1), 0, qr0
/* 80192220 0018F180  DA E1 0A 60 */	stfd f23, 0xa60(r1)
/* 80192224 0018F184  F2 E1 0A 68 */	psq_st f23, -1432(r1), 0, qr0
/* 80192228 0018F188  DA C1 0A 50 */	stfd f22, 0xa50(r1)
/* 8019222C 0018F18C  F2 C1 0A 58 */	psq_st f22, -1448(r1), 0, qr0
/* 80192230 0018F190  DA A1 0A 40 */	stfd f21, 0xa40(r1)
/* 80192234 0018F194  F2 A1 0A 48 */	psq_st f21, -1464(r1), 0, qr0
/* 80192238 0018F198  DA 81 0A 30 */	stfd f20, 0xa30(r1)
/* 8019223C 0018F19C  F2 81 0A 38 */	psq_st f20, -1480(r1), 0, qr0
/* 80192240 0018F1A0  BE E1 0A 0C */	stmw r23, 0xa0c(r1)
/* 80192244 0018F1A4  FE 80 08 90 */	fmr f20, f1
/* 80192248 0018F1A8  80 AD A0 80 */	lwz r5, gpGameState@sda21(r13)
/* 8019224C 0018F1AC  7C 78 1B 78 */	mr r24, r3
/* 80192250 0018F1B0  7C 99 23 78 */	mr r25, r4
/* 80192254 0018F1B4  38 65 01 7C */	addi r3, r5, 0x17c
/* 80192258 0018F1B8  48 07 CB 1D */	bl GetHudAlpha__12CGameOptionsCFv
/* 8019225C 0018F1BC  80 AD A1 38 */	lwz r5, gpTweakGui@sda21(r13)
/* 80192260 0018F1C0  EF 14 00 72 */	fmuls f24, f20, f1
/* 80192264 0018F1C4  80 05 00 F8 */	lwz r0, 0xf8(r5)
/* 80192268 0018F1C8  2C 00 00 00 */	cmpwi r0, 0
/* 8019226C 0018F1CC  41 82 05 40 */	beq lbl_801927AC
/* 80192270 0018F1D0  88 18 00 3C */	lbz r0, 0x3c(r24)
/* 80192274 0018F1D4  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80192278 0018F1D8  40 82 00 08 */	bne lbl_80192280
/* 8019227C 0018F1DC  48 00 05 30 */	b lbl_801927AC
lbl_80192280:
/* 80192280 0018F1E0  83 D8 00 08 */	lwz r30, 8(r24)
/* 80192284 0018F1E4  28 1E 00 00 */	cmplwi r30, 0
/* 80192288 0018F1E8  41 82 05 24 */	beq lbl_801927AC
/* 8019228C 0018F1EC  80 79 08 4C */	lwz r3, 0x84c(r25)
/* 80192290 0018F1F0  88 03 09 C6 */	lbz r0, 0x9c6(r3)
/* 80192294 0018F1F4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80192298 0018F1F8  41 82 00 0C */	beq lbl_801922A4
/* 8019229C 0018F1FC  C3 63 0A 20 */	lfs f27, 0xa20(r3)
/* 801922A0 0018F200  48 00 00 08 */	b lbl_801922A8
lbl_801922A4:
/* 801922A4 0018F204  C3 65 00 10 */	lfs f27, 0x10(r5)
lbl_801922A8:
/* 801922A8 0018F208  88 03 09 C6 */	lbz r0, 0x9c6(r3)
/* 801922AC 0018F20C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801922B0 0018F210  41 82 00 0C */	beq lbl_801922BC
/* 801922B4 0018F214  C3 43 0A 24 */	lfs f26, 0xa24(r3)
/* 801922B8 0018F218  48 00 00 08 */	b lbl_801922C0
lbl_801922BC:
/* 801922BC 0018F21C  C3 45 00 24 */	lfs f26, 0x24(r5)
lbl_801922C0:
/* 801922C0 0018F220  28 00 00 00 */	cmplwi r0, 0
/* 801922C4 0018F224  41 82 00 10 */	beq lbl_801922D4
/* 801922C8 0018F228  C0 02 A5 98 */	lfs f0, lbl_805AC2B8@sda21(r2)
/* 801922CC 0018F22C  EF 20 06 B2 */	fmuls f25, f0, f26
/* 801922D0 0018F230  48 00 00 08 */	b lbl_801922D8
lbl_801922D4:
/* 801922D4 0018F234  C3 25 00 28 */	lfs f25, 0x28(r5)
lbl_801922D8:
/* 801922D8 0018F238  C2 E5 00 E8 */	lfs f23, 0xe8(r5)
/* 801922DC 0018F23C  7F 24 CB 78 */	mr r4, r25
/* 801922E0 0018F240  C2 A5 00 EC */	lfs f21, 0xec(r5)
/* 801922E4 0018F244  EE D7 D8 24 */	fdivs f22, f23, f27
/* 801922E8 0018F248  C2 85 00 F0 */	lfs f20, 0xf0(r5)
/* 801922EC 0018F24C  80 79 08 70 */	lwz r3, 0x870(r25)
/* 801922F0 0018F250  4B E7 98 29 */	bl GetCurrentCamera__14CCameraManagerCFR13CStateManager
/* 801922F4 0018F254  7C 64 1B 78 */	mr r4, r3
/* 801922F8 0018F258  38 61 00 5C */	addi r3, r1, 0x5c
/* 801922FC 0018F25C  38 84 00 34 */	addi r4, r4, 0x34
/* 80192300 0018F260  48 17 FE 29 */	bl FromMatrix__11CQuaternionFRC12CTransform4f
/* 80192304 0018F264  38 61 00 6C */	addi r3, r1, 0x6c
/* 80192308 0018F268  38 81 00 5C */	addi r4, r1, 0x5c
/* 8019230C 0018F26C  4B E8 92 B9 */	bl FromQuaternion__12CEulerAnglesFRC11CQuaternion
/* 80192310 0018F270  C0 81 00 74 */	lfs f4, 0x74(r1)
/* 80192314 0018F274  3C 00 43 30 */	lis r0, 0x4330
/* 80192318 0018F278  C0 02 A5 9C */	lfs f0, lbl_805AC2BC@sda21(r2)
/* 8019231C 0018F27C  90 01 09 F8 */	stw r0, 0x9f8(r1)
/* 80192320 0018F280  EC 44 00 32 */	fmuls f2, f4, f0
/* 80192324 0018F284  C8 62 A5 A8 */	lfd f3, lbl_805AC2C8@sda21(r2)
/* 80192328 0018F288  C0 22 A5 A0 */	lfs f1, lbl_805AC2C0@sda21(r2)
/* 8019232C 0018F28C  C0 02 A5 84 */	lfs f0, lbl_805AC2A4@sda21(r2)
/* 80192330 0018F290  FC 40 10 1E */	fctiwz f2, f2
/* 80192334 0018F294  D8 41 09 F0 */	stfd f2, 0x9f0(r1)
/* 80192338 0018F298  80 01 09 F4 */	lwz r0, 0x9f4(r1)
/* 8019233C 0018F29C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80192340 0018F2A0  90 01 09 FC */	stw r0, 0x9fc(r1)
/* 80192344 0018F2A4  C8 41 09 F8 */	lfd f2, 0x9f8(r1)
/* 80192348 0018F2A8  EC 42 18 28 */	fsubs f2, f2, f3
/* 8019234C 0018F2AC  EC 42 20 7C */	fnmsubs f2, f2, f1, f4
/* 80192350 0018F2B0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80192354 0018F2B4  40 80 00 08 */	bge lbl_8019235C
/* 80192358 0018F2B8  EC 42 08 2A */	fadds f2, f2, f1
lbl_8019235C:
/* 8019235C 0018F2BC  C0 02 A5 84 */	lfs f0, lbl_805AC2A4@sda21(r2)
/* 80192360 0018F2C0  38 61 00 D0 */	addi r3, r1, 0xd0
/* 80192364 0018F2C4  38 81 00 14 */	addi r4, r1, 0x14
/* 80192368 0018F2C8  EC 02 00 28 */	fsubs f0, f2, f0
/* 8019236C 0018F2CC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80192370 0018F2D0  48 18 15 39 */	bl RotateY__12CTransform4fFRC9CRelAngle
/* 80192374 0018F2D4  38 61 01 30 */	addi r3, r1, 0x130
/* 80192378 0018F2D8  38 81 00 D0 */	addi r4, r1, 0xd0
/* 8019237C 0018F2DC  48 18 07 F9 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80192380 0018F2E0  80 B9 08 4C */	lwz r5, 0x84c(r25)
/* 80192384 0018F2E4  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 80192388 0018F2E8  38 83 66 70 */	addi r4, r3, sIdentity__12CTransform4f@l
/* 8019238C 0018F2EC  C3 85 00 60 */	lfs f28, 0x60(r5)
/* 80192390 0018F2F0  38 61 01 00 */	addi r3, r1, 0x100
/* 80192394 0018F2F4  C3 A5 00 50 */	lfs f29, 0x50(r5)
/* 80192398 0018F2F8  C3 C5 00 40 */	lfs f30, 0x40(r5)
/* 8019239C 0018F2FC  48 18 07 D9 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801923A0 0018F300  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801923A4 0018F304  C0 62 A5 84 */	lfs f3, lbl_805AC2A4@sda21(r2)
/* 801923A8 0018F308  38 A3 66 A0 */	addi r5, r3, sZeroVector__9CVector3f@l
/* 801923AC 0018F30C  80 78 00 44 */	lwz r3, 0x44(r24)
/* 801923B0 0018F310  C0 45 00 00 */	lfs f2, 0(r5)
/* 801923B4 0018F314  38 81 00 4C */	addi r4, r1, 0x4c
/* 801923B8 0018F318  C0 25 00 04 */	lfs f1, 4(r5)
/* 801923BC 0018F31C  C0 05 00 08 */	lfs f0, 8(r5)
/* 801923C0 0018F320  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 801923C4 0018F324  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 801923C8 0018F328  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 801923CC 0018F32C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 801923D0 0018F330  81 83 00 00 */	lwz r12, 0(r3)
/* 801923D4 0018F334  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801923D8 0018F338  7D 89 03 A6 */	mtctr r12
/* 801923DC 0018F33C  4E 80 04 21 */	bctrl
/* 801923E0 0018F340  80 98 00 40 */	lwz r4, 0x40(r24)
/* 801923E4 0018F344  38 61 01 00 */	addi r3, r1, 0x100
/* 801923E8 0018F348  38 84 00 34 */	addi r4, r4, 0x34
/* 801923EC 0018F34C  48 18 07 55 */	bl __as__12CTransform4fFRC12CTransform4f
/* 801923F0 0018F350  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 801923F4 0018F354  38 81 01 00 */	addi r4, r1, 0x100
/* 801923F8 0018F358  81 83 00 00 */	lwz r12, 0(r3)
/* 801923FC 0018F35C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80192400 0018F360  7D 89 03 A6 */	mtctr r12
/* 80192404 0018F364  4E 80 04 21 */	bctrl
/* 80192408 0018F368  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 8019240C 0018F36C  81 83 00 00 */	lwz r12, 0(r3)
/* 80192410 0018F370  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 80192414 0018F374  7D 89 03 A6 */	mtctr r12
/* 80192418 0018F378  4E 80 04 21 */	bctrl
/* 8019241C 0018F37C  7F C3 F3 78 */	mr r3, r30
/* 80192420 0018F380  38 80 00 00 */	li r4, 0
/* 80192424 0018F384  38 A0 00 01 */	li r5, 1
/* 80192428 0018F388  48 17 D3 15 */	bl Load__8CTextureCF11_GXTexMapIDQ28CTexture10EClampMode
/* 8019242C 0018F38C  3C 80 80 5A */	lis r4, kEnvModulate__9CGraphics@ha
/* 80192430 0018F390  38 60 00 00 */	li r3, 0
/* 80192434 0018F394  38 84 5E BC */	addi r4, r4, kEnvModulate__9CGraphics@l
/* 80192438 0018F398  48 17 7E 81 */	bl SetTevOp__9CGraphicsF12ERglTevStageRCQ213CTevCombiners8CTevPass
/* 8019243C 0018F39C  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 80192440 0018F3A0  38 80 00 00 */	li r4, 0
/* 80192444 0018F3A4  38 A0 00 00 */	li r5, 0
/* 80192448 0018F3A8  81 83 00 00 */	lwz r12, 0(r3)
/* 8019244C 0018F3AC  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80192450 0018F3B0  7D 89 03 A6 */	mtctr r12
/* 80192454 0018F3B4  4E 80 04 21 */	bctrl
/* 80192458 0018F3B8  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 8019245C 0018F3BC  3C 00 43 30 */	lis r0, 0x4330
/* 80192460 0018F3C0  90 01 0A 00 */	stw r0, 0xa00(r1)
/* 80192464 0018F3C4  88 04 00 0F */	lbz r0, 0xf(r4)
/* 80192468 0018F3C8  C8 22 A5 90 */	lfd f1, lbl_805AC2B0@sda21(r2)
/* 8019246C 0018F3CC  90 01 0A 04 */	stw r0, 0xa04(r1)
/* 80192470 0018F3D0  C8 01 0A 00 */	lfd f0, 0xa00(r1)
/* 80192474 0018F3D4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80192478 0018F3D8  EF F8 00 32 */	fmuls f31, f24, f0
/* 8019247C 0018F3DC  F3 E1 A0 08 */	psq_st f31, 8(r1), 1, qr2
/* 80192480 0018F3E0  38 61 00 10 */	addi r3, r1, 0x10
/* 80192484 0018F3E4  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80192488 0018F3E8  88 01 00 08 */	lbz r0, 8(r1)
/* 8019248C 0018F3EC  50 80 00 2E */	rlwimi r0, r4, 0, 0, 0x17
/* 80192490 0018F3F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80192494 0018F3F4  48 17 90 B5 */	bl StreamColor__9CGraphicsFRC6CColor
/* 80192498 0018F3F8  FC 20 A8 90 */	fmr f1, f21
/* 8019249C 0018F3FC  7F 03 C3 78 */	mr r3, r24
/* 801924A0 0018F400  4B FF FA 41 */	bl DoDrawRadarPaint__18CHudRadarInterfaceCFf
/* 801924A4 0018F404  80 AD 8F 68 */	lwz r5, lbl_805A7B28@sda21(r13)
/* 801924A8 0018F408  38 60 00 00 */	li r3, 0
/* 801924AC 0018F40C  38 80 00 01 */	li r4, 1
/* 801924B0 0018F410  48 1F 7A 45 */	bl __shl2i
/* 801924B4 0018F414  80 AD 8F 60 */	lwz r5, lbl_805A7B20@sda21(r13)
/* 801924B8 0018F418  7C 9A 23 78 */	mr r26, r4
/* 801924BC 0018F41C  7C 77 1B 78 */	mr r23, r3
/* 801924C0 0018F420  38 60 00 00 */	li r3, 0
/* 801924C4 0018F424  38 80 00 01 */	li r4, 1
/* 801924C8 0018F428  48 1F 7A 2D */	bl __shl2i
/* 801924CC 0018F42C  80 AD 8F 64 */	lwz r5, lbl_805A7B24@sda21(r13)
/* 801924D0 0018F430  7C 9C 23 78 */	mr r28, r4
/* 801924D4 0018F434  7C 7B 1B 78 */	mr r27, r3
/* 801924D8 0018F438  38 60 00 00 */	li r3, 0
/* 801924DC 0018F43C  38 80 00 01 */	li r4, 1
/* 801924E0 0018F440  48 1F 7A 15 */	bl __shl2i
/* 801924E4 0018F444  FC 20 D8 50 */	fneg f1, f27
/* 801924E8 0018F448  7F 9C 23 78 */	or r28, r28, r4
/* 801924EC 0018F44C  FC 00 D0 50 */	fneg f0, f26
/* 801924F0 0018F450  7F 7B 1B 78 */	or r27, r27, r3
/* 801924F4 0018F454  3C 60 80 5A */	lis r3, mskInvertedBox__6CAABox@ha
/* 801924F8 0018F458  38 00 00 03 */	li r0, 3
/* 801924FC 0018F45C  38 83 67 54 */	addi r4, r3, mskInvertedBox__6CAABox@l
/* 80192500 0018F460  EC 5E 08 2A */	fadds f2, f30, f1
/* 80192504 0018F464  EC 3D 08 2A */	fadds f1, f29, f1
/* 80192508 0018F468  C1 04 00 00 */	lfs f8, 0(r4)
/* 8019250C 0018F46C  EC 1C 00 2A */	fadds f0, f28, f0
/* 80192510 0018F470  C0 E4 00 04 */	lfs f7, 4(r4)
/* 80192514 0018F474  C0 C4 00 08 */	lfs f6, 8(r4)
/* 80192518 0018F478  C0 A4 00 0C */	lfs f5, 0xc(r4)
/* 8019251C 0018F47C  C0 84 00 10 */	lfs f4, 0x10(r4)
/* 80192520 0018F480  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80192524 0018F484  C0 64 00 14 */	lfs f3, 0x14(r4)
/* 80192528 0018F488  38 81 00 40 */	addi r4, r1, 0x40
/* 8019252C 0018F48C  90 01 00 98 */	stw r0, 0x98(r1)
/* 80192530 0018F490  93 81 00 BC */	stw r28, 0xbc(r1)
/* 80192534 0018F494  93 61 00 B8 */	stw r27, 0xb8(r1)
/* 80192538 0018F498  93 41 00 C4 */	stw r26, 0xc4(r1)
/* 8019253C 0018F49C  92 E1 00 C0 */	stw r23, 0xc0(r1)
/* 80192540 0018F4A0  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 80192544 0018F4A4  D1 01 00 A0 */	stfs f8, 0xa0(r1)
/* 80192548 0018F4A8  D0 E1 00 A4 */	stfs f7, 0xa4(r1)
/* 8019254C 0018F4AC  D0 C1 00 A8 */	stfs f6, 0xa8(r1)
/* 80192550 0018F4B0  D0 A1 00 AC */	stfs f5, 0xac(r1)
/* 80192554 0018F4B4  D0 81 00 B0 */	stfs f4, 0xb0(r1)
/* 80192558 0018F4B8  D0 61 00 B4 */	stfs f3, 0xb4(r1)
/* 8019255C 0018F4BC  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80192560 0018F4C0  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80192564 0018F4C4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80192568 0018F4C8  48 1A 55 A1 */	bl AccumulateBounds__6CAABoxFRC9CVector3f
/* 8019256C 0018F4CC  EC 5E D8 2A */	fadds f2, f30, f27
/* 80192570 0018F4D0  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80192574 0018F4D4  EC 3D D8 2A */	fadds f1, f29, f27
/* 80192578 0018F4D8  38 81 00 34 */	addi r4, r1, 0x34
/* 8019257C 0018F4DC  EC 1C D0 2A */	fadds f0, f28, f26
/* 80192580 0018F4E0  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80192584 0018F4E4  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80192588 0018F4E8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8019258C 0018F4EC  48 1A 55 7D */	bl AccumulateBounds__6CAABoxFRC9CVector3f
/* 80192590 0018F4F0  38 00 00 00 */	li r0, 0
/* 80192594 0018F4F4  7F 23 CB 78 */	mr r3, r25
/* 80192598 0018F4F8  90 01 01 E8 */	stw r0, 0x1e8(r1)
/* 8019259C 0018F4FC  38 81 01 E8 */	addi r4, r1, 0x1e8
/* 801925A0 0018F500  38 A1 00 A0 */	addi r5, r1, 0xa0
/* 801925A4 0018F504  38 C1 00 B8 */	addi r6, r1, 0xb8
/* 801925A8 0018F508  38 E0 00 00 */	li r7, 0
/* 801925AC 0018F50C  4B EB A1 75 */	bl "BuildNearList__13CStateManagerCFRQ24rstl32reserved_vector<9TUniqueId,1024>RC6CAABoxRC15CMaterialFilterPC6CActor"
/* 801925B0 0018F510  D3 C1 01 60 */	stfs f30, 0x160(r1)
/* 801925B4 0018F514  38 61 01 6C */	addi r3, r1, 0x16c
/* 801925B8 0018F518  38 81 01 30 */	addi r4, r1, 0x130
/* 801925BC 0018F51C  D3 A1 01 64 */	stfs f29, 0x164(r1)
/* 801925C0 0018F520  D3 81 01 68 */	stfs f28, 0x168(r1)
/* 801925C4 0018F524  48 18 05 B1 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801925C8 0018F528  38 61 01 9C */	addi r3, r1, 0x19c
/* 801925CC 0018F52C  38 81 01 00 */	addi r4, r1, 0x100
/* 801925D0 0018F530  48 18 05 A5 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801925D4 0018F534  3B C1 01 EC */	addi r30, r1, 0x1ec
/* 801925D8 0018F538  D2 E1 01 CC */	stfs f23, 0x1cc(r1)
/* 801925DC 0018F53C  7F DC F3 78 */	mr r28, r30
/* 801925E0 0018F540  3B A0 00 00 */	li r29, 0
/* 801925E4 0018F544  D2 C1 01 D0 */	stfs f22, 0x1d0(r1)
/* 801925E8 0018F548  D3 01 01 D4 */	stfs f24, 0x1d4(r1)
/* 801925EC 0018F54C  D3 61 01 D8 */	stfs f27, 0x1d8(r1)
/* 801925F0 0018F550  D3 41 01 DC */	stfs f26, 0x1dc(r1)
/* 801925F4 0018F554  D3 21 01 E0 */	stfs f25, 0x1e0(r1)
/* 801925F8 0018F558  48 00 01 30 */	b lbl_80192728
lbl_801925FC:
/* 801925FC 0018F55C  A0 1C 00 00 */	lhz r0, 0(r28)
/* 80192600 0018F560  7F 23 CB 78 */	mr r3, r25
/* 80192604 0018F564  38 81 00 0C */	addi r4, r1, 0xc
/* 80192608 0018F568  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8019260C 0018F56C  4B EB 9F 99 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80192610 0018F570  7C 64 1B 78 */	mr r4, r3
/* 80192614 0018F574  38 61 00 20 */	addi r3, r1, 0x20
/* 80192618 0018F578  4B F1 D6 79 */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 8019261C 0018F57C  82 E3 00 04 */	lwz r23, 4(r3)
/* 80192620 0018F580  28 17 00 00 */	cmplwi r23, 0
/* 80192624 0018F584  41 82 01 00 */	beq lbl_80192724
/* 80192628 0018F588  88 17 00 30 */	lbz r0, 0x30(r23)
/* 8019262C 0018F58C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80192630 0018F590  41 82 00 F4 */	beq lbl_80192724
/* 80192634 0018F594  7E E4 BB 78 */	mr r4, r23
/* 80192638 0018F598  38 61 00 18 */	addi r3, r1, 0x18
/* 8019263C 0018F59C  4B F1 35 D5 */	bl "__ct__31TCastToPtr<17CWallCrawlerSwarm>FP7CEntity"
/* 80192640 0018F5A0  83 63 00 04 */	lwz r27, 4(r3)
/* 80192644 0018F5A4  28 1B 00 00 */	cmplwi r27, 0
/* 80192648 0018F5A8  41 82 00 A0 */	beq lbl_801926E8
/* 8019264C 0018F5AC  C0 02 A5 A4 */	lfs f0, lbl_805AC2C4@sda21(r2)
/* 80192650 0018F5B0  3B 40 00 00 */	li r26, 0
/* 80192654 0018F5B4  82 FB 01 0C */	lwz r23, 0x10c(r27)
/* 80192658 0018F5B8  3B E0 00 00 */	li r31, 0
/* 8019265C 0018F5BC  EE B4 00 32 */	fmuls f21, f20, f0
/* 80192660 0018F5C0  48 00 00 7C */	b lbl_801926DC
lbl_80192664:
/* 80192664 0018F5C4  2C 1A FF FF */	cmpwi r26, -1
/* 80192668 0018F5C8  38 80 00 00 */	li r4, 0
/* 8019266C 0018F5CC  40 81 00 28 */	ble lbl_80192694
/* 80192670 0018F5D0  80 1B 01 0C */	lwz r0, 0x10c(r27)
/* 80192674 0018F5D4  7C 1A 00 00 */	cmpw r26, r0
/* 80192678 0018F5D8  40 80 00 1C */	bge lbl_80192694
/* 8019267C 0018F5DC  80 7B 01 14 */	lwz r3, 0x114(r27)
/* 80192680 0018F5E0  38 1F 00 80 */	addi r0, r31, 0x80
/* 80192684 0018F5E4  7C 03 00 AE */	lbzx r0, r3, r0
/* 80192688 0018F5E8  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8019268C 0018F5EC  41 82 00 08 */	beq lbl_80192694
/* 80192690 0018F5F0  38 80 00 01 */	li r4, 1
lbl_80192694:
/* 80192694 0018F5F4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80192698 0018F5F8  41 82 00 3C */	beq lbl_801926D4
/* 8019269C 0018F5FC  80 1B 01 14 */	lwz r0, 0x114(r27)
/* 801926A0 0018F600  FC 20 A8 90 */	fmr f1, f21
/* 801926A4 0018F604  C0 42 A5 A4 */	lfs f2, lbl_805AC2C4@sda21(r2)
/* 801926A8 0018F608  7F 03 C3 78 */	mr r3, r24
/* 801926AC 0018F60C  7C C0 FA 14 */	add r6, r0, r31
/* 801926B0 0018F610  38 81 00 78 */	addi r4, r1, 0x78
/* 801926B4 0018F614  C0 86 00 2C */	lfs f4, 0x2c(r6)
/* 801926B8 0018F618  C0 66 00 1C */	lfs f3, 0x1c(r6)
/* 801926BC 0018F61C  38 A1 01 60 */	addi r5, r1, 0x160
/* 801926C0 0018F620  C0 06 00 0C */	lfs f0, 0xc(r6)
/* 801926C4 0018F624  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 801926C8 0018F628  D0 61 00 7C */	stfs f3, 0x7c(r1)
/* 801926CC 0018F62C  D0 81 00 80 */	stfs f4, 0x80(r1)
/* 801926D0 0018F630  4B FF F8 F5 */	bl DrawRadarPaint__18CHudRadarInterfaceCFRC9CVector3fffRCQ218CHudRadarInterface20SRadarPaintDrawParms
lbl_801926D4:
/* 801926D4 0018F634  3B FF 00 84 */	addi r31, r31, 0x84
/* 801926D8 0018F638  3B 5A 00 01 */	addi r26, r26, 1
lbl_801926DC:
/* 801926DC 0018F63C  7C 1A B8 00 */	cmpw r26, r23
/* 801926E0 0018F640  41 80 FF 84 */	blt lbl_80192664
/* 801926E4 0018F644  48 00 00 34 */	b lbl_80192718
lbl_801926E8:
/* 801926E8 0018F648  C0 97 00 60 */	lfs f4, 0x60(r23)
/* 801926EC 0018F64C  FC 20 A0 90 */	fmr f1, f20
/* 801926F0 0018F650  C0 77 00 50 */	lfs f3, 0x50(r23)
/* 801926F4 0018F654  7F 03 C3 78 */	mr r3, r24
/* 801926F8 0018F658  C0 17 00 40 */	lfs f0, 0x40(r23)
/* 801926FC 0018F65C  38 81 00 28 */	addi r4, r1, 0x28
/* 80192700 0018F660  C0 42 A5 88 */	lfs f2, lbl_805AC2A8@sda21(r2)
/* 80192704 0018F664  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80192708 0018F668  38 A1 01 60 */	addi r5, r1, 0x160
/* 8019270C 0018F66C  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 80192710 0018F670  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 80192714 0018F674  4B FF F8 B1 */	bl DrawRadarPaint__18CHudRadarInterfaceCFRC9CVector3fffRCQ218CHudRadarInterface20SRadarPaintDrawParms
lbl_80192718:
/* 80192718 0018F678  3B BD 00 01 */	addi r29, r29, 1
/* 8019271C 0018F67C  2C 1D 00 80 */	cmpwi r29, 0x80
/* 80192720 0018F680  40 80 00 1C */	bge lbl_8019273C
lbl_80192724:
/* 80192724 0018F684  3B 9C 00 02 */	addi r28, r28, 2
lbl_80192728:
/* 80192728 0018F688  80 01 01 E8 */	lwz r0, 0x1e8(r1)
/* 8019272C 0018F68C  54 00 08 3C */	slwi r0, r0, 1
/* 80192730 0018F690  7C 1E 02 14 */	add r0, r30, r0
/* 80192734 0018F694  7C 1C 00 40 */	cmplw r28, r0
/* 80192738 0018F698  40 82 FE C4 */	bne lbl_801925FC
lbl_8019273C:
/* 8019273C 0018F69C  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 80192740 0018F6A0  38 80 00 01 */	li r4, 1
/* 80192744 0018F6A4  38 A0 00 01 */	li r5, 1
/* 80192748 0018F6A8  81 83 00 00 */	lwz r12, 0(r3)
/* 8019274C 0018F6AC  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80192750 0018F6B0  7D 89 03 A6 */	mtctr r12
/* 80192754 0018F6B4  4E 80 04 21 */	bctrl
/* 80192758 0018F6B8  80 A1 01 E8 */	lwz r5, 0x1e8(r1)
/* 8019275C 0018F6BC  38 60 00 00 */	li r3, 0
/* 80192760 0018F6C0  2C 05 00 00 */	cmpwi r5, 0
/* 80192764 0018F6C4  40 81 00 40 */	ble lbl_801927A4
/* 80192768 0018F6C8  2C 05 00 08 */	cmpwi r5, 8
/* 8019276C 0018F6CC  38 85 FF F8 */	addi r4, r5, -8
/* 80192770 0018F6D0  40 81 00 20 */	ble lbl_80192790
/* 80192774 0018F6D4  38 04 00 07 */	addi r0, r4, 7
/* 80192778 0018F6D8  54 00 E8 FE */	srwi r0, r0, 3
/* 8019277C 0018F6DC  7C 09 03 A6 */	mtctr r0
/* 80192780 0018F6E0  2C 04 00 00 */	cmpwi r4, 0
/* 80192784 0018F6E4  40 81 00 0C */	ble lbl_80192790
lbl_80192788:
/* 80192788 0018F6E8  38 63 00 08 */	addi r3, r3, 8
/* 8019278C 0018F6EC  42 00 FF FC */	bdnz lbl_80192788
lbl_80192790:
/* 80192790 0018F6F0  7C 03 28 50 */	subf r0, r3, r5
/* 80192794 0018F6F4  7C 09 03 A6 */	mtctr r0
/* 80192798 0018F6F8  7C 03 28 00 */	cmpw r3, r5
/* 8019279C 0018F6FC  40 80 00 08 */	bge lbl_801927A4
lbl_801927A0:
/* 801927A0 0018F700  42 00 00 00 */	bdnz lbl_801927A0
lbl_801927A4:
/* 801927A4 0018F704  38 00 00 00 */	li r0, 0
/* 801927A8 0018F708  90 01 01 E8 */	stw r0, 0x1e8(r1)
lbl_801927AC:
/* 801927AC 0018F70C  E3 E1 0A E8 */	psq_l f31, -1304(r1), 0, qr0
/* 801927B0 0018F710  CB E1 0A E0 */	lfd f31, 0xae0(r1)
/* 801927B4 0018F714  E3 C1 0A D8 */	psq_l f30, -1320(r1), 0, qr0
/* 801927B8 0018F718  CB C1 0A D0 */	lfd f30, 0xad0(r1)
/* 801927BC 0018F71C  E3 A1 0A C8 */	psq_l f29, -1336(r1), 0, qr0
/* 801927C0 0018F720  CB A1 0A C0 */	lfd f29, 0xac0(r1)
/* 801927C4 0018F724  E3 81 0A B8 */	psq_l f28, -1352(r1), 0, qr0
/* 801927C8 0018F728  CB 81 0A B0 */	lfd f28, 0xab0(r1)
/* 801927CC 0018F72C  E3 61 0A A8 */	psq_l f27, -1368(r1), 0, qr0
/* 801927D0 0018F730  CB 61 0A A0 */	lfd f27, 0xaa0(r1)
/* 801927D4 0018F734  E3 41 0A 98 */	psq_l f26, -1384(r1), 0, qr0
/* 801927D8 0018F738  CB 41 0A 90 */	lfd f26, 0xa90(r1)
/* 801927DC 0018F73C  E3 21 0A 88 */	psq_l f25, -1400(r1), 0, qr0
/* 801927E0 0018F740  CB 21 0A 80 */	lfd f25, 0xa80(r1)
/* 801927E4 0018F744  E3 01 0A 78 */	psq_l f24, -1416(r1), 0, qr0
/* 801927E8 0018F748  CB 01 0A 70 */	lfd f24, 0xa70(r1)
/* 801927EC 0018F74C  E2 E1 0A 68 */	psq_l f23, -1432(r1), 0, qr0
/* 801927F0 0018F750  CA E1 0A 60 */	lfd f23, 0xa60(r1)
/* 801927F4 0018F754  E2 C1 0A 58 */	psq_l f22, -1448(r1), 0, qr0
/* 801927F8 0018F758  CA C1 0A 50 */	lfd f22, 0xa50(r1)
/* 801927FC 0018F75C  E2 A1 0A 48 */	psq_l f21, -1464(r1), 0, qr0
/* 80192800 0018F760  CA A1 0A 40 */	lfd f21, 0xa40(r1)
/* 80192804 0018F764  E2 81 0A 38 */	psq_l f20, -1480(r1), 0, qr0
/* 80192808 0018F768  CA 81 0A 30 */	lfd f20, 0xa30(r1)
/* 8019280C 0018F76C  BA E1 0A 0C */	lmw r23, 0xa0c(r1)
/* 80192810 0018F770  80 01 0A F4 */	lwz r0, 0xaf4(r1)
/* 80192814 0018F774  7C 08 03 A6 */	mtlr r0
/* 80192818 0018F778  38 21 0A F0 */	addi r1, r1, 0xaf0
/* 8019281C 0018F77C  4E 80 00 20 */	blr

.global Update__18CHudRadarInterfaceFfRC13CStateManager
Update__18CHudRadarInterfaceFfRC13CStateManager:
/* 80192820 0018F780  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80192824 0018F784  7C 08 02 A6 */	mflr r0
/* 80192828 0018F788  90 01 00 44 */	stw r0, 0x44(r1)
/* 8019282C 0018F78C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80192830 0018F790  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 80192834 0018F794  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80192838 0018F798  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 8019283C 0018F79C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80192840 0018F7A0  80 84 08 B8 */	lwz r4, 0x8b8(r4)
/* 80192844 0018F7A4  7C 7F 1B 78 */	mr r31, r3
/* 80192848 0018F7A8  80 64 00 00 */	lwz r3, 0(r4)
/* 8019284C 0018F7AC  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80192850 0018F7B0  2C 00 00 00 */	cmpwi r0, 0
/* 80192854 0018F7B4  40 82 00 10 */	bne lbl_80192864
/* 80192858 0018F7B8  4B EF F0 0D */	bl GetVisorTransitionFactor__12CPlayerStateCFv
/* 8019285C 0018F7BC  FF E0 08 90 */	fmr f31, f1
/* 80192860 0018F7C0  48 00 00 08 */	b lbl_80192868
lbl_80192864:
/* 80192864 0018F7C4  C3 E2 A5 84 */	lfs f31, lbl_805AC2A4@sda21(r2)
lbl_80192868:
/* 80192868 0018F7C8  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 8019286C 0018F7CC  38 63 01 7C */	addi r3, r3, 0x17c
/* 80192870 0018F7D0  48 07 C5 05 */	bl GetHudAlpha__12CGameOptionsCFv
/* 80192874 0018F7D4  80 6D A1 3C */	lwz r3, gpTweakGuiColors@sda21(r13)
/* 80192878 0018F7D8  3C 00 43 30 */	lis r0, 0x4330
/* 8019287C 0018F7DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80192880 0018F7E0  EC 5F 00 72 */	fmuls f2, f31, f1
/* 80192884 0018F7E4  88 03 00 0B */	lbz r0, 0xb(r3)
/* 80192888 0018F7E8  C8 22 A5 90 */	lfd f1, lbl_805AC2B0@sda21(r2)
/* 8019288C 0018F7EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80192890 0018F7F0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80192894 0018F7F4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80192898 0018F7F8  EF C2 00 32 */	fmuls f30, f2, f0
/* 8019289C 0018F7FC  F3 C1 A0 08 */	psq_st f30, 8(r1), 1, qr2
/* 801928A0 0018F800  38 81 00 0C */	addi r4, r1, 0xc
/* 801928A4 0018F804  80 63 00 08 */	lwz r3, 8(r3)
/* 801928A8 0018F808  88 01 00 08 */	lbz r0, 8(r1)
/* 801928AC 0018F80C  50 60 00 2E */	rlwimi r0, r3, 0, 0, 0x17
/* 801928B0 0018F810  90 01 00 0C */	stw r0, 0xc(r1)
/* 801928B4 0018F814  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 801928B8 0018F818  48 13 7F B5 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 801928BC 0018F81C  80 6D A1 38 */	lwz r3, gpTweakGui@sda21(r13)
/* 801928C0 0018F820  38 80 00 01 */	li r4, 1
/* 801928C4 0018F824  80 63 00 F8 */	lwz r3, 0xf8(r3)
/* 801928C8 0018F828  38 63 FF FD */	addi r3, r3, -3
/* 801928CC 0018F82C  20 03 00 01 */	subfic r0, r3, 1
/* 801928D0 0018F830  7C 83 1B 38 */	orc r3, r4, r3
/* 801928D4 0018F834  54 00 F8 7E */	srwi r0, r0, 1
/* 801928D8 0018F838  7C 00 18 50 */	subf r0, r0, r3
/* 801928DC 0018F83C  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 801928E0 0018F840  40 82 00 08 */	bne lbl_801928E8
/* 801928E4 0018F844  38 80 00 00 */	li r4, 0
lbl_801928E8:
/* 801928E8 0018F848  88 7F 00 3C */	lbz r3, 0x3c(r31)
/* 801928EC 0018F84C  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 801928F0 0018F850  54 64 D7 FE */	rlwinm r4, r3, 0x1a, 0x1f, 0x1f
/* 801928F4 0018F854  7C 04 00 40 */	cmplw r4, r0
/* 801928F8 0018F858  41 82 00 38 */	beq lbl_80192930
/* 801928FC 0018F85C  7C 80 00 34 */	cntlzw r0, r4
/* 80192900 0018F860  38 80 00 00 */	li r4, 0
/* 80192904 0018F864  50 03 0E 72 */	rlwimi r3, r0, 1, 0x19, 0x19
/* 80192908 0018F868  98 7F 00 3C */	stb r3, 0x3c(r31)
/* 8019290C 0018F86C  88 BF 00 3C */	lbz r5, 0x3c(r31)
/* 80192910 0018F870  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 80192914 0018F874  54 A0 D7 FF */	rlwinm. r0, r5, 0x1a, 0x1f, 0x1f
/* 80192918 0018F878  41 82 00 10 */	beq lbl_80192928
/* 8019291C 0018F87C  54 A0 CF FF */	rlwinm. r0, r5, 0x19, 0x1f, 0x1f
/* 80192920 0018F880  41 82 00 08 */	beq lbl_80192928
/* 80192924 0018F884  38 80 00 01 */	li r4, 1
lbl_80192928:
/* 80192928 0018F888  38 A0 00 01 */	li r5, 1
/* 8019292C 0018F88C  48 13 7D BD */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
lbl_80192930:
/* 80192930 0018F890  80 1F 00 08 */	lwz r0, 8(r31)
/* 80192934 0018F894  28 00 00 00 */	cmplwi r0, 0
/* 80192938 0018F898  40 82 00 30 */	bne lbl_80192968
/* 8019293C 0018F89C  88 1F 00 04 */	lbz r0, 4(r31)
/* 80192940 0018F8A0  28 00 00 00 */	cmplwi r0, 0
/* 80192944 0018F8A4  41 82 00 24 */	beq lbl_80192968
/* 80192948 0018F8A8  80 7F 00 00 */	lwz r3, 0(r31)
/* 8019294C 0018F8AC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80192950 0018F8B0  28 00 00 00 */	cmplwi r0, 0
/* 80192954 0018F8B4  41 82 00 14 */	beq lbl_80192968
/* 80192958 0018F8B8  7F E3 FB 78 */	mr r3, r31
/* 8019295C 0018F8BC  48 1A E4 B1 */	bl GetObj__6CTokenFv
/* 80192960 0018F8C0  80 03 00 04 */	lwz r0, 4(r3)
/* 80192964 0018F8C4  90 1F 00 08 */	stw r0, 8(r31)
lbl_80192968:
/* 80192968 0018F8C8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 8019296C 0018F8CC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80192970 0018F8D0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 80192974 0018F8D4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80192978 0018F8D8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8019297C 0018F8DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80192980 0018F8E0  7C 08 03 A6 */	mtlr r0
/* 80192984 0018F8E4  38 21 00 40 */	addi r1, r1, 0x40
/* 80192988 0018F8E8  4E 80 00 20 */	blr

.global SetIsVisibleGame__18CHudRadarInterfaceFb
SetIsVisibleGame__18CHudRadarInterfaceFb:
/* 8019298C 0018F8EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80192990 0018F8F0  7C 08 02 A6 */	mflr r0
/* 80192994 0018F8F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80192998 0018F8F8  88 03 00 3C */	lbz r0, 0x3c(r3)
/* 8019299C 0018F8FC  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 801929A0 0018F900  38 80 00 00 */	li r4, 0
/* 801929A4 0018F904  98 03 00 3C */	stb r0, 0x3c(r3)
/* 801929A8 0018F908  88 A3 00 3C */	lbz r5, 0x3c(r3)
/* 801929AC 0018F90C  80 63 00 40 */	lwz r3, 0x40(r3)
/* 801929B0 0018F910  54 A0 D7 FF */	rlwinm. r0, r5, 0x1a, 0x1f, 0x1f
/* 801929B4 0018F914  41 82 00 10 */	beq lbl_801929C4
/* 801929B8 0018F918  54 A0 CF FF */	rlwinm. r0, r5, 0x19, 0x1f, 0x1f
/* 801929BC 0018F91C  41 82 00 08 */	beq lbl_801929C4
/* 801929C0 0018F920  38 80 00 01 */	li r4, 1
lbl_801929C4:
/* 801929C4 0018F924  38 A0 00 01 */	li r5, 1
/* 801929C8 0018F928  48 13 7D 21 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 801929CC 0018F92C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801929D0 0018F930  7C 08 03 A6 */	mtlr r0
/* 801929D4 0018F934  38 21 00 10 */	addi r1, r1, 0x10
/* 801929D8 0018F938  4E 80 00 20 */	blr

.global __ct__18CHudRadarInterfaceFR9CGuiFrameRC13CStateManager
__ct__18CHudRadarInterfaceFR9CGuiFrameRC13CStateManager:
/* 801929DC 0018F93C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801929E0 0018F940  7C 08 02 A6 */	mflr r0
/* 801929E4 0018F944  3C A0 80 3D */	lis r5, lbl_803D0D50@ha
/* 801929E8 0018F948  90 01 00 34 */	stw r0, 0x34(r1)
/* 801929EC 0018F94C  38 A5 0D 50 */	addi r5, r5, lbl_803D0D50@l
/* 801929F0 0018F950  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801929F4 0018F954  7C 9F 23 78 */	mr r31, r4
/* 801929F8 0018F958  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801929FC 0018F95C  7C 7E 1B 78 */	mr r30, r3
/* 80192A00 0018F960  38 61 00 08 */	addi r3, r1, 8
/* 80192A04 0018F964  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 80192A08 0018F968  81 84 00 00 */	lwz r12, 0(r4)
/* 80192A0C 0018F96C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80192A10 0018F970  7D 89 03 A6 */	mtctr r12
/* 80192A14 0018F974  4E 80 04 21 */	bctrl
/* 80192A18 0018F978  7F C3 F3 78 */	mr r3, r30
/* 80192A1C 0018F97C  38 81 00 08 */	addi r4, r1, 8
/* 80192A20 0018F980  48 1A E4 89 */	bl __ct__6CTokenFRC6CToken
/* 80192A24 0018F984  38 00 00 00 */	li r0, 0
/* 80192A28 0018F988  38 61 00 08 */	addi r3, r1, 8
/* 80192A2C 0018F98C  90 1E 00 08 */	stw r0, 8(r30)
/* 80192A30 0018F990  38 80 FF FF */	li r4, -1
/* 80192A34 0018F994  48 1A E4 0D */	bl __dt__6CTokenFv
/* 80192A38 0018F998  3C 80 80 5A */	lis r4, sIdentity__12CTransform4f@ha
/* 80192A3C 0018F99C  38 7E 00 0C */	addi r3, r30, 0xc
/* 80192A40 0018F9A0  38 84 66 70 */	addi r4, r4, sIdentity__12CTransform4f@l
/* 80192A44 0018F9A4  48 18 01 31 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80192A48 0018F9A8  88 1E 00 3C */	lbz r0, 0x3c(r30)
/* 80192A4C 0018F9AC  38 A0 00 01 */	li r5, 1
/* 80192A50 0018F9B0  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 80192A54 0018F9B4  3C 60 80 3D */	lis r3, lbl_803D0D38@ha
/* 80192A58 0018F9B8  98 1E 00 3C */	stb r0, 0x3c(r30)
/* 80192A5C 0018F9BC  38 83 0D 38 */	addi r4, r3, lbl_803D0D38@l
/* 80192A60 0018F9C0  38 61 00 10 */	addi r3, r1, 0x10
/* 80192A64 0018F9C4  88 1E 00 3C */	lbz r0, 0x3c(r30)
/* 80192A68 0018F9C8  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 80192A6C 0018F9CC  98 1E 00 3C */	stb r0, 0x3c(r30)
/* 80192A70 0018F9D0  4B E7 22 49 */	bl string_l__4rstlFPCc
/* 80192A74 0018F9D4  7F E3 FB 78 */	mr r3, r31
/* 80192A78 0018F9D8  38 81 00 10 */	addi r4, r1, 0x10
/* 80192A7C 0018F9DC  48 12 F7 59 */	bl "FindWidget__9CGuiFrameCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80192A80 0018F9E0  90 7E 00 40 */	stw r3, 0x40(r30)
/* 80192A84 0018F9E4  38 61 00 10 */	addi r3, r1, 0x10
/* 80192A88 0018F9E8  48 1A B0 59 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80192A8C 0018F9EC  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 80192A90 0018F9F0  38 7E 00 0C */	addi r3, r30, 0xc
/* 80192A94 0018F9F4  90 1E 00 44 */	stw r0, 0x44(r30)
/* 80192A98 0018F9F8  80 9E 00 40 */	lwz r4, 0x40(r30)
/* 80192A9C 0018F9FC  38 84 00 04 */	addi r4, r4, 4
/* 80192AA0 0018FA00  48 18 00 A1 */	bl __as__12CTransform4fFRC12CTransform4f
/* 80192AA4 0018FA04  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 80192AA8 0018FA08  80 7E 00 40 */	lwz r3, 0x40(r30)
/* 80192AAC 0018FA0C  38 84 00 08 */	addi r4, r4, 8
/* 80192AB0 0018FA10  48 13 7D BD */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80192AB4 0018FA14  7F C3 F3 78 */	mr r3, r30
/* 80192AB8 0018FA18  48 1A E2 CD */	bl Lock__6CTokenFv
/* 80192ABC 0018FA1C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80192AC0 0018FA20  7F C3 F3 78 */	mr r3, r30
/* 80192AC4 0018FA24  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80192AC8 0018FA28  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80192ACC 0018FA2C  7C 08 03 A6 */	mtlr r0
/* 80192AD0 0018FA30  38 21 00 30 */	addi r1, r1, 0x30
/* 80192AD4 0018FA34  4E 80 00 20 */	blr

.global __dt__19CHudThreatInterfaceFv
__dt__19CHudThreatInterfaceFv:
/* 80192AD8 0018FA38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80192ADC 0018FA3C  7C 08 02 A6 */	mflr r0
/* 80192AE0 0018FA40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80192AE4 0018FA44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80192AE8 0018FA48  7C 7F 1B 79 */	or. r31, r3, r3
/* 80192AEC 0018FA4C  41 82 00 30 */	beq lbl_80192B1C
/* 80192AF0 0018FA50  3C 60 80 3E */	lis r3, lbl_803E44A8@ha
/* 80192AF4 0018FA54  38 03 44 A8 */	addi r0, r3, lbl_803E44A8@l
/* 80192AF8 0018FA58  90 1F 00 00 */	stw r0, 0(r31)
/* 80192AFC 0018FA5C  41 82 00 10 */	beq lbl_80192B0C
/* 80192B00 0018FA60  3C 60 80 3E */	lis r3, lbl_803DA304@ha
/* 80192B04 0018FA64  38 03 A3 04 */	addi r0, r3, lbl_803DA304@l
/* 80192B08 0018FA68  90 1F 00 00 */	stw r0, 0(r31)
lbl_80192B0C:
/* 80192B0C 0018FA6C  7C 80 07 35 */	extsh. r0, r4
/* 80192B10 0018FA70  40 81 00 0C */	ble lbl_80192B1C
/* 80192B14 0018FA74  7F E3 FB 78 */	mr r3, r31
/* 80192B18 0018FA78  48 18 2E 19 */	bl Free__7CMemoryFPCv
lbl_80192B1C:
/* 80192B1C 0018FA7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80192B20 0018FA80  7F E3 FB 78 */	mr r3, r31
/* 80192B24 0018FA84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80192B28 0018FA88  7C 08 03 A6 */	mtlr r0
/* 80192B2C 0018FA8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80192B30 0018FA90  4E 80 00 20 */	blr

.global Update__19CHudThreatInterfaceFf
Update__19CHudThreatInterfaceFf:
/* 80192B34 0018FA94  94 21 FE 60 */	stwu r1, -0x1a0(r1)
/* 80192B38 0018FA98  7C 08 02 A6 */	mflr r0
/* 80192B3C 0018FA9C  90 01 01 A4 */	stw r0, 0x1a4(r1)
/* 80192B40 0018FAA0  DB E1 01 90 */	stfd f31, 0x190(r1)
/* 80192B44 0018FAA4  F3 E1 01 98 */	psq_st f31, 408(r1), 0, qr0
/* 80192B48 0018FAA8  DB C1 01 80 */	stfd f30, 0x180(r1)
/* 80192B4C 0018FAAC  F3 C1 01 88 */	psq_st f30, 392(r1), 0, qr0
/* 80192B50 0018FAB0  DB A1 01 70 */	stfd f29, 0x170(r1)
/* 80192B54 0018FAB4  F3 A1 01 78 */	psq_st f29, 376(r1), 0, qr0
/* 80192B58 0018FAB8  DB 81 01 60 */	stfd f28, 0x160(r1)
/* 80192B5C 0018FABC  F3 81 01 68 */	psq_st f28, 360(r1), 0, qr0
/* 80192B60 0018FAC0  DB 61 01 50 */	stfd f27, 0x150(r1)
/* 80192B64 0018FAC4  F3 61 01 58 */	psq_st f27, 344(r1), 0, qr0
/* 80192B68 0018FAC8  DB 41 01 40 */	stfd f26, 0x140(r1)
/* 80192B6C 0018FACC  F3 41 01 48 */	psq_st f26, 328(r1), 0, qr0
/* 80192B70 0018FAD0  BF 61 01 2C */	stmw r27, 0x12c(r1)
/* 80192B74 0018FAD4  80 AD A1 3C */	lwz r5, gpTweakGuiColors@sda21(r13)
/* 80192B78 0018FAD8  7C 7F 1B 78 */	mr r31, r3
/* 80192B7C 0018FADC  FF 60 08 90 */	fmr f27, f1
/* 80192B80 0018FAE0  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 80192B84 0018FAE4  38 61 00 48 */	addi r3, r1, 0x48
/* 80192B88 0018FAE8  38 85 00 80 */	addi r4, r5, 0x80
/* 80192B8C 0018FAEC  38 A5 01 7C */	addi r5, r5, 0x17c
/* 80192B90 0018FAF0  48 1D 07 1D */	bl Lerp__6CColorFRC6CColorRC6CColorf
/* 80192B94 0018FAF4  80 01 00 48 */	lwz r0, 0x48(r1)
/* 80192B98 0018FAF8  80 AD A1 38 */	lwz r5, gpTweakGui@sda21(r13)
/* 80192B9C 0018FAFC  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80192BA0 0018FB00  80 9F 00 6C */	lwz r4, 0x6c(r31)
/* 80192BA4 0018FB04  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 80192BA8 0018FB08  C3 A5 00 E4 */	lfs f29, 0xe4(r5)
/* 80192BAC 0018FB0C  C0 04 00 F4 */	lfs f0, 0xf4(r4)
/* 80192BB0 0018FB10  28 03 00 00 */	cmplwi r3, 0
/* 80192BB4 0018FB14  EF 9D 00 28 */	fsubs f28, f29, f0
/* 80192BB8 0018FB18  41 82 00 88 */	beq lbl_80192C40
/* 80192BBC 0018FB1C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80192BC0 0018FB20  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 80192BC4 0018FB24  40 80 00 74 */	bge lbl_80192C38
/* 80192BC8 0018FB28  38 80 00 01 */	li r4, 1
/* 80192BCC 0018FB2C  48 13 7A 61 */	bl SetIsVisible__10CGuiWidgetFb
/* 80192BD0 0018FB30  C0 2D 8F 70 */	lfs f1, lbl_805A7B30@sda21(r13)
/* 80192BD4 0018FB34  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80192BD8 0018FB38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80192BDC 0018FB3C  40 80 00 0C */	bge lbl_80192BE8
/* 80192BE0 0018FB40  38 9F 00 10 */	addi r4, r31, 0x10
/* 80192BE4 0018FB44  48 00 00 08 */	b lbl_80192BEC
lbl_80192BE8:
/* 80192BE8 0018FB48  38 8D 8F 70 */	addi r4, r13, lbl_805A7B30@sda21
lbl_80192BEC:
/* 80192BEC 0018FB4C  3C 60 80 3D */	lis r3, lbl_803D0E2C@ha
/* 80192BF0 0018FB50  C0 24 00 00 */	lfs f1, 0(r4)
/* 80192BF4 0018FB54  38 83 0E 2C */	addi r4, r3, lbl_803D0E2C@l
/* 80192BF8 0018FB58  38 61 00 50 */	addi r3, r1, 0x50
/* 80192BFC 0018FB5C  4C C6 32 42 */	crset 6
/* 80192C00 0018FB60  48 1F B0 DD */	bl sprintf
/* 80192C04 0018FB64  38 61 00 94 */	addi r3, r1, 0x94
/* 80192C08 0018FB68  38 81 00 50 */	addi r4, r1, 0x50
/* 80192C0C 0018FB6C  38 C1 00 0C */	addi r6, r1, 0xc
/* 80192C10 0018FB70  38 A0 FF FF */	li r5, -1
/* 80192C14 0018FB74  48 1A B5 81 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FPCciRCQ24rstl17rmemory_allocator"
/* 80192C18 0018FB78  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 80192C1C 0018FB7C  38 81 00 94 */	addi r4, r1, 0x94
/* 80192C20 0018FB80  38 A0 00 00 */	li r5, 0
/* 80192C24 0018FB84  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80192C28 0018FB88  48 13 6E E1 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80192C2C 0018FB8C  38 61 00 94 */	addi r3, r1, 0x94
/* 80192C30 0018FB90  48 1A AE B1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80192C34 0018FB94  48 00 00 0C */	b lbl_80192C40
lbl_80192C38:
/* 80192C38 0018FB98  38 80 00 00 */	li r4, 0
/* 80192C3C 0018FB9C  48 13 79 F1 */	bl SetIsVisible__10CGuiWidgetFb
lbl_80192C40:
/* 80192C40 0018FBA0  88 1F 00 54 */	lbz r0, 0x54(r31)
/* 80192C44 0018FBA4  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80192C48 0018FBA8  41 82 01 5C */	beq lbl_80192DA4
/* 80192C4C 0018FBAC  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80192C50 0018FBB0  C0 02 A5 B0 */	lfs f0, lbl_805AC2D0@sda21(r2)
/* 80192C54 0018FBB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80192C58 0018FBB8  40 81 00 98 */	ble lbl_80192CF0
/* 80192C5C 0018FBBC  EC 21 D8 28 */	fsubs f1, f1, f27
/* 80192C60 0018FBC0  C0 0D 8F 74 */	lfs f0, lbl_805A7B34@sda21(r13)
/* 80192C64 0018FBC4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80192C68 0018FBC8  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80192C6C 0018FBCC  40 80 00 0C */	bge lbl_80192C78
/* 80192C70 0018FBD0  38 61 00 44 */	addi r3, r1, 0x44
/* 80192C74 0018FBD4  48 00 00 08 */	b lbl_80192C7C
lbl_80192C78:
/* 80192C78 0018FBD8  38 6D 8F 74 */	addi r3, r13, lbl_805A7B34@sda21
lbl_80192C7C:
/* 80192C7C 0018FBDC  C0 03 00 00 */	lfs f0, 0(r3)
/* 80192C80 0018FBE0  38 80 00 01 */	li r4, 1
/* 80192C84 0018FBE4  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 80192C88 0018FBE8  80 6D A1 38 */	lwz r3, gpTweakGui@sda21(r13)
/* 80192C8C 0018FBEC  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80192C90 0018FBF0  C0 03 00 F4 */	lfs f0, 0xf4(r3)
/* 80192C94 0018FBF4  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 80192C98 0018FBF8  EF 41 00 24 */	fdivs f26, f1, f0
/* 80192C9C 0018FBFC  48 13 79 91 */	bl SetIsVisible__10CGuiWidgetFb
/* 80192CA0 0018FC00  88 61 00 4F */	lbz r3, 0x4f(r1)
/* 80192CA4 0018FC04  3C 00 43 30 */	lis r0, 0x4330
/* 80192CA8 0018FC08  90 01 01 18 */	stw r0, 0x118(r1)
/* 80192CAC 0018FC0C  C8 22 A5 D8 */	lfd f1, lbl_805AC2F8@sda21(r2)
/* 80192CB0 0018FC10  90 61 01 1C */	stw r3, 0x11c(r1)
/* 80192CB4 0018FC14  C8 01 01 18 */	lfd f0, 0x118(r1)
/* 80192CB8 0018FC18  EC 00 08 28 */	fsubs f0, f0, f1
/* 80192CBC 0018FC1C  EF FA 00 32 */	fmuls f31, f26, f0
/* 80192CC0 0018FC20  F3 E1 A0 0B */	psq_st f31, 11(r1), 1, qr2
/* 80192CC4 0018FC24  38 81 00 40 */	addi r4, r1, 0x40
/* 80192CC8 0018FC28  80 61 00 4C */	lwz r3, 0x4c(r1)
/* 80192CCC 0018FC2C  88 01 00 0B */	lbz r0, 0xb(r1)
/* 80192CD0 0018FC30  50 60 00 2E */	rlwimi r0, r3, 0, 0, 0x17
/* 80192CD4 0018FC34  90 01 00 40 */	stw r0, 0x40(r1)
/* 80192CD8 0018FC38  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 80192CDC 0018FC3C  48 13 7B 91 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80192CE0 0018FC40  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 80192CE4 0018FC44  38 80 00 00 */	li r4, 0
/* 80192CE8 0018FC48  48 13 79 45 */	bl SetIsVisible__10CGuiWidgetFb
/* 80192CEC 0018FC4C  48 00 00 B8 */	b lbl_80192DA4
lbl_80192CF0:
/* 80192CF0 0018FC50  40 80 00 9C */	bge lbl_80192D8C
/* 80192CF4 0018FC54  EC 21 D8 2A */	fadds f1, f1, f27
/* 80192CF8 0018FC58  C0 0D 8F 78 */	lfs f0, lbl_805A7B38@sda21(r13)
/* 80192CFC 0018FC5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80192D00 0018FC60  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80192D04 0018FC64  40 80 00 0C */	bge lbl_80192D10
/* 80192D08 0018FC68  38 61 00 3C */	addi r3, r1, 0x3c
/* 80192D0C 0018FC6C  48 00 00 08 */	b lbl_80192D14
lbl_80192D10:
/* 80192D10 0018FC70  38 6D 8F 78 */	addi r3, r13, lbl_805A7B38@sda21
lbl_80192D14:
/* 80192D14 0018FC74  C0 03 00 00 */	lfs f0, 0(r3)
/* 80192D18 0018FC78  38 80 00 01 */	li r4, 1
/* 80192D1C 0018FC7C  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 80192D20 0018FC80  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80192D24 0018FC84  80 AD A1 38 */	lwz r5, gpTweakGui@sda21(r13)
/* 80192D28 0018FC88  FC 20 00 50 */	fneg f1, f0
/* 80192D2C 0018FC8C  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 80192D30 0018FC90  C0 05 00 F4 */	lfs f0, 0xf4(r5)
/* 80192D34 0018FC94  EF 41 00 24 */	fdivs f26, f1, f0
/* 80192D38 0018FC98  48 13 78 F5 */	bl SetIsVisible__10CGuiWidgetFb
/* 80192D3C 0018FC9C  88 61 00 4F */	lbz r3, 0x4f(r1)
/* 80192D40 0018FCA0  3C 00 43 30 */	lis r0, 0x4330
/* 80192D44 0018FCA4  90 01 01 18 */	stw r0, 0x118(r1)
/* 80192D48 0018FCA8  C8 22 A5 D8 */	lfd f1, lbl_805AC2F8@sda21(r2)
/* 80192D4C 0018FCAC  90 61 01 1C */	stw r3, 0x11c(r1)
/* 80192D50 0018FCB0  C8 01 01 18 */	lfd f0, 0x118(r1)
/* 80192D54 0018FCB4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80192D58 0018FCB8  EF FA 00 32 */	fmuls f31, f26, f0
/* 80192D5C 0018FCBC  F3 E1 A0 0A */	psq_st f31, 10(r1), 1, qr2
/* 80192D60 0018FCC0  38 81 00 38 */	addi r4, r1, 0x38
/* 80192D64 0018FCC4  80 61 00 4C */	lwz r3, 0x4c(r1)
/* 80192D68 0018FCC8  88 01 00 0A */	lbz r0, 0xa(r1)
/* 80192D6C 0018FCCC  50 60 00 2E */	rlwimi r0, r3, 0, 0, 0x17
/* 80192D70 0018FCD0  90 01 00 38 */	stw r0, 0x38(r1)
/* 80192D74 0018FCD4  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 80192D78 0018FCD8  48 13 7A F5 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80192D7C 0018FCDC  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 80192D80 0018FCE0  38 80 00 00 */	li r4, 0
/* 80192D84 0018FCE4  48 13 78 A9 */	bl SetIsVisible__10CGuiWidgetFb
/* 80192D88 0018FCE8  48 00 00 1C */	b lbl_80192DA4
lbl_80192D8C:
/* 80192D8C 0018FCEC  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 80192D90 0018FCF0  38 80 00 00 */	li r4, 0
/* 80192D94 0018FCF4  48 13 78 99 */	bl SetIsVisible__10CGuiWidgetFb
/* 80192D98 0018FCF8  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 80192D9C 0018FCFC  38 80 00 00 */	li r4, 0
/* 80192DA0 0018FD00  48 13 78 8D */	bl SetIsVisible__10CGuiWidgetFb
lbl_80192DA4:
/* 80192DA4 0018FD04  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80192DA8 0018FD08  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 80192DAC 0018FD0C  4C 40 13 82 */	cror 2, 0, 2
/* 80192DB0 0018FD10  40 82 00 48 */	bne lbl_80192DF8
/* 80192DB4 0018FD14  EC 20 E0 28 */	fsubs f1, f0, f28
/* 80192DB8 0018FD18  C0 02 A5 B4 */	lfs f0, lbl_805AC2D4@sda21(r2)
/* 80192DBC 0018FD1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80192DC0 0018FD20  40 80 00 14 */	bge lbl_80192DD4
/* 80192DC4 0018FD24  80 6D A1 38 */	lwz r3, gpTweakGui@sda21(r13)
/* 80192DC8 0018FD28  C0 03 00 F4 */	lfs f0, 0xf4(r3)
/* 80192DCC 0018FD2C  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 80192DD0 0018FD30  48 00 00 30 */	b lbl_80192E00
lbl_80192DD4:
/* 80192DD4 0018FD34  C0 02 A5 B8 */	lfs f0, lbl_805AC2D8@sda21(r2)
/* 80192DD8 0018FD38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80192DDC 0018FD3C  40 81 00 24 */	ble lbl_80192E00
/* 80192DE0 0018FD40  80 6D A1 38 */	lwz r3, gpTweakGui@sda21(r13)
/* 80192DE4 0018FD44  C0 22 A5 BC */	lfs f1, lbl_805AC2DC@sda21(r2)
/* 80192DE8 0018FD48  C0 03 00 F4 */	lfs f0, 0xf4(r3)
/* 80192DEC 0018FD4C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80192DF0 0018FD50  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 80192DF4 0018FD54  48 00 00 0C */	b lbl_80192E00
lbl_80192DF8:
/* 80192DF8 0018FD58  C0 02 A5 B0 */	lfs f0, lbl_805AC2D0@sda21(r2)
/* 80192DFC 0018FD5C  D0 1F 00 14 */	stfs f0, 0x14(r31)
lbl_80192E00:
/* 80192E00 0018FD60  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80192E04 0018FD64  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 80192E08 0018FD68  4C 40 13 82 */	cror 2, 0, 2
/* 80192E0C 0018FD6C  40 82 00 28 */	bne lbl_80192E34
/* 80192E10 0018FD70  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 80192E14 0018FD74  38 80 00 00 */	li r4, 0
/* 80192E18 0018FD78  C0 03 00 E0 */	lfs f0, 0xe0(r3)
/* 80192E1C 0018FD7C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80192E20 0018FD80  48 13 8A A9 */	bl SetCurrEnergy__16CAuiEnergyBarT01Ffb
/* 80192E24 0018FD84  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 80192E28 0018FD88  38 81 00 4C */	addi r4, r1, 0x4c
/* 80192E2C 0018FD8C  48 13 7A 41 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80192E30 0018FD90  48 00 00 24 */	b lbl_80192E54
lbl_80192E34:
/* 80192E34 0018FD94  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 80192E38 0018FD98  38 80 00 00 */	li r4, 0
/* 80192E3C 0018FD9C  C0 22 A5 B0 */	lfs f1, lbl_805AC2D0@sda21(r2)
/* 80192E40 0018FDA0  48 13 8A 89 */	bl SetCurrEnergy__16CAuiEnergyBarT01Ffb
/* 80192E44 0018FDA4  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 80192E48 0018FDA8  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 80192E4C 0018FDAC  38 84 00 90 */	addi r4, r4, 0x90
/* 80192E50 0018FDB0  48 13 7A 1D */	bl SetColor__10CGuiWidgetFRC6CColor
lbl_80192E54:
/* 80192E54 0018FDB4  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80192E58 0018FDB8  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 80192E5C 0018FDBC  90 03 00 D0 */	stw r0, 0xd0(r3)
/* 80192E60 0018FDC0  88 1F 00 54 */	lbz r0, 0x54(r31)
/* 80192E64 0018FDC4  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80192E68 0018FDC8  41 82 00 8C */	beq lbl_80192EF4
/* 80192E6C 0018FDCC  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80192E70 0018FDD0  C0 0D 8F 7C */	lfs f0, lbl_805A7B3C@sda21(r13)
/* 80192E74 0018FDD4  EC 3D 08 28 */	fsubs f1, f29, f1
/* 80192E78 0018FDD8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80192E7C 0018FDDC  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80192E80 0018FDE0  40 80 00 0C */	bge lbl_80192E8C
/* 80192E84 0018FDE4  38 81 00 34 */	addi r4, r1, 0x34
/* 80192E88 0018FDE8  48 00 00 08 */	b lbl_80192E90
lbl_80192E8C:
/* 80192E8C 0018FDEC  38 8D 8F 7C */	addi r4, r13, lbl_805A7B3C@sda21
lbl_80192E90:
/* 80192E90 0018FDF0  80 1F 00 04 */	lwz r0, 4(r31)
/* 80192E94 0018FDF4  3C 60 80 3D */	lis r3, lbl_803D0E04@ha
/* 80192E98 0018FDF8  38 63 0E 04 */	addi r3, r3, lbl_803D0E04@l
/* 80192E9C 0018FDFC  C0 24 00 00 */	lfs f1, 0(r4)
/* 80192EA0 0018FE00  54 00 10 3A */	slwi r0, r0, 2
/* 80192EA4 0018FE04  C0 02 A5 B0 */	lfs f0, lbl_805AC2D0@sda21(r2)
/* 80192EA8 0018FE08  7C 43 04 2E */	lfsx f2, r3, r0
/* 80192EAC 0018FE0C  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80192EB0 0018FE10  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80192EB4 0018FE14  38 81 00 88 */	addi r4, r1, 0x88
/* 80192EB8 0018FE18  EC 22 00 72 */	fmuls f1, f2, f1
/* 80192EBC 0018FE1C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80192EC0 0018FE20  EC 01 E8 24 */	fdivs f0, f1, f29
/* 80192EC4 0018FE24  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80192EC8 0018FE28  48 18 02 79 */	bl Translate__12CTransform4fFRC9CVector3f
/* 80192ECC 0018FE2C  38 61 00 E4 */	addi r3, r1, 0xe4
/* 80192ED0 0018FE30  38 9F 00 18 */	addi r4, r31, 0x18
/* 80192ED4 0018FE34  38 A1 00 B4 */	addi r5, r1, 0xb4
/* 80192ED8 0018FE38  48 17 FA 79 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 80192EDC 0018FE3C  83 DF 00 5C */	lwz r30, 0x5c(r31)
/* 80192EE0 0018FE40  38 81 00 E4 */	addi r4, r1, 0xe4
/* 80192EE4 0018FE44  38 7E 00 04 */	addi r3, r30, 4
/* 80192EE8 0018FE48  48 17 FC 59 */	bl __as__12CTransform4fFRC12CTransform4f
/* 80192EEC 0018FE4C  7F C3 F3 78 */	mr r3, r30
/* 80192EF0 0018FE50  48 13 18 F9 */	bl RecalculateTransforms__10CGuiObjectFv
lbl_80192EF4:
/* 80192EF4 0018FE54  80 1F 00 68 */	lwz r0, 0x68(r31)
/* 80192EF8 0018FE58  28 00 00 00 */	cmplwi r0, 0
/* 80192EFC 0018FE5C  41 82 01 B4 */	beq lbl_801930B0
/* 80192F00 0018FE60  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 80192F04 0018FE64  48 13 82 D9 */	bl GetActualFraction__16CAuiEnergyBarT01CFv
/* 80192F08 0018FE68  80 6D A1 38 */	lwz r3, gpTweakGui@sda21(r13)
/* 80192F0C 0018FE6C  C0 03 01 10 */	lfs f0, 0x110(r3)
/* 80192F10 0018FE70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80192F14 0018FE74  40 81 00 14 */	ble lbl_80192F28
/* 80192F18 0018FE78  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 80192F1C 0018FE7C  38 80 00 01 */	li r4, 1
/* 80192F20 0018FE80  48 13 77 0D */	bl SetIsVisible__10CGuiWidgetFb
/* 80192F24 0018FE84  48 00 00 10 */	b lbl_80192F34
lbl_80192F28:
/* 80192F28 0018FE88  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 80192F2C 0018FE8C  38 80 00 00 */	li r4, 0
/* 80192F30 0018FE90  48 13 76 FD */	bl SetIsVisible__10CGuiWidgetFb
lbl_80192F34:
/* 80192F34 0018FE94  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 80192F38 0018FE98  C0 03 00 F4 */	lfs f0, 0xf4(r3)
/* 80192F3C 0018FE9C  FC 1D 00 00 */	fcmpu cr0, f29, f0
/* 80192F40 0018FEA0  40 82 00 0C */	bne lbl_80192F4C
/* 80192F44 0018FEA4  3B C0 00 02 */	li r30, 2
/* 80192F48 0018FEA8  48 00 00 24 */	b lbl_80192F6C
lbl_80192F4C:
/* 80192F4C 0018FEAC  48 13 82 91 */	bl GetActualFraction__16CAuiEnergyBarT01CFv
/* 80192F50 0018FEB0  80 6D A1 38 */	lwz r3, gpTweakGui@sda21(r13)
/* 80192F54 0018FEB4  C0 03 01 10 */	lfs f0, 0x110(r3)
/* 80192F58 0018FEB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80192F5C 0018FEBC  40 81 00 0C */	ble lbl_80192F68
/* 80192F60 0018FEC0  3B C0 00 01 */	li r30, 1
/* 80192F64 0018FEC4  48 00 00 08 */	b lbl_80192F6C
lbl_80192F68:
/* 80192F68 0018FEC8  3B C0 00 00 */	li r30, 0
lbl_80192F6C:
/* 80192F6C 0018FECC  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 80192F70 0018FED0  7C 1E 00 00 */	cmpw r30, r0
/* 80192F74 0018FED4  41 82 01 3C */	beq lbl_801930B0
/* 80192F78 0018FED8  2C 1E 00 01 */	cmpwi r30, 1
/* 80192F7C 0018FEDC  3B A0 00 00 */	li r29, 0
/* 80192F80 0018FEE0  3B 80 00 00 */	li r28, 0
/* 80192F84 0018FEE4  3B 60 00 00 */	li r27, 0
/* 80192F88 0018FEE8  40 82 00 28 */	bne lbl_80192FB0
/* 80192F8C 0018FEEC  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 80192F90 0018FEF0  38 80 00 0A */	li r4, 0xa
/* 80192F94 0018FEF4  48 1C 37 69 */	bl GetString__12CStringTableCFi
/* 80192F98 0018FEF8  7C 64 1B 78 */	mr r4, r3
/* 80192F9C 0018FEFC  38 61 00 78 */	addi r3, r1, 0x78
/* 80192FA0 0018FF00  4B E8 2A 51 */	bl wstring_l__4rstlFPCw
/* 80192FA4 0018FF04  38 81 00 78 */	addi r4, r1, 0x78
/* 80192FA8 0018FF08  3B A0 00 01 */	li r29, 1
/* 80192FAC 0018FF0C  48 00 00 44 */	b lbl_80192FF0
lbl_80192FB0:
/* 80192FB0 0018FF10  2C 1E 00 02 */	cmpwi r30, 2
/* 80192FB4 0018FF14  40 82 00 28 */	bne lbl_80192FDC
/* 80192FB8 0018FF18  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 80192FBC 0018FF1C  38 80 00 0B */	li r4, 0xb
/* 80192FC0 0018FF20  48 1C 37 3D */	bl GetString__12CStringTableCFi
/* 80192FC4 0018FF24  7C 64 1B 78 */	mr r4, r3
/* 80192FC8 0018FF28  38 61 00 68 */	addi r3, r1, 0x68
/* 80192FCC 0018FF2C  4B E8 2A 25 */	bl wstring_l__4rstlFPCw
/* 80192FD0 0018FF30  38 81 00 68 */	addi r4, r1, 0x68
/* 80192FD4 0018FF34  3B 80 00 01 */	li r28, 1
/* 80192FD8 0018FF38  48 00 00 18 */	b lbl_80192FF0
lbl_80192FDC:
/* 80192FDC 0018FF3C  38 61 00 58 */	addi r3, r1, 0x58
/* 80192FE0 0018FF40  38 8D 8F 90 */	addi r4, r13, lbl_805A7B50@sda21
/* 80192FE4 0018FF44  4B E8 2A 0D */	bl wstring_l__4rstlFPCw
/* 80192FE8 0018FF48  3B 60 00 01 */	li r27, 1
/* 80192FEC 0018FF4C  38 81 00 58 */	addi r4, r1, 0x58
lbl_80192FF0:
/* 80192FF0 0018FF50  38 61 00 A4 */	addi r3, r1, 0xa4
/* 80192FF4 0018FF54  48 1A A7 95 */	bl "__ct__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80192FF8 0018FF58  7F 60 07 75 */	extsb. r0, r27
/* 80192FFC 0018FF5C  41 82 00 0C */	beq lbl_80193008
/* 80193000 0018FF60  38 61 00 58 */	addi r3, r1, 0x58
/* 80193004 0018FF64  48 1A A1 31 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
lbl_80193008:
/* 80193008 0018FF68  7F 80 07 75 */	extsb. r0, r28
/* 8019300C 0018FF6C  41 82 00 0C */	beq lbl_80193018
/* 80193010 0018FF70  38 61 00 68 */	addi r3, r1, 0x68
/* 80193014 0018FF74  48 1A A1 21 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
lbl_80193018:
/* 80193018 0018FF78  7F A0 07 75 */	extsb. r0, r29
/* 8019301C 0018FF7C  41 82 00 0C */	beq lbl_80193028
/* 80193020 0018FF80  38 61 00 78 */	addi r3, r1, 0x78
/* 80193024 0018FF84  48 1A A1 11 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
lbl_80193028:
/* 80193028 0018FF88  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 8019302C 0018FF8C  38 81 00 A4 */	addi r4, r1, 0xa4
/* 80193030 0018FF90  38 A0 00 00 */	li r5, 0
/* 80193034 0018FF94  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80193038 0018FF98  48 13 68 4D */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 8019303C 0018FF9C  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 80193040 0018FFA0  2C 00 00 00 */	cmpwi r0, 0
/* 80193044 0018FFA4  40 82 00 34 */	bne lbl_80193078
/* 80193048 0018FFA8  2C 1E 00 01 */	cmpwi r30, 1
/* 8019304C 0018FFAC  40 82 00 2C */	bne lbl_80193078
/* 80193050 0018FFB0  A9 02 C5 FA */	lha r8, kMedPriority__11CSfxManager@sda21(r2)
/* 80193054 0018FFB4  38 61 00 30 */	addi r3, r1, 0x30
/* 80193058 0018FFB8  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 8019305C 0018FFBC  38 80 05 74 */	li r4, 0x574
/* 80193060 0018FFC0  38 A0 00 7F */	li r5, 0x7f
/* 80193064 0018FFC4  38 C0 00 40 */	li r6, 0x40
/* 80193068 0018FFC8  38 E0 00 00 */	li r7, 0
/* 8019306C 0018FFCC  39 20 00 00 */	li r9, 0
/* 80193070 0018FFD0  48 15 6D 05 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 80193074 0018FFD4  48 00 00 30 */	b lbl_801930A4
lbl_80193078:
/* 80193078 0018FFD8  2C 1E 00 02 */	cmpwi r30, 2
/* 8019307C 0018FFDC  40 82 00 28 */	bne lbl_801930A4
/* 80193080 0018FFE0  A9 02 C5 FA */	lha r8, kMedPriority__11CSfxManager@sda21(r2)
/* 80193084 0018FFE4  38 61 00 2C */	addi r3, r1, 0x2c
/* 80193088 0018FFE8  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 8019308C 0018FFEC  38 80 05 77 */	li r4, 0x577
/* 80193090 0018FFF0  38 A0 00 7F */	li r5, 0x7f
/* 80193094 0018FFF4  38 C0 00 40 */	li r6, 0x40
/* 80193098 0018FFF8  38 E0 00 00 */	li r7, 0
/* 8019309C 0018FFFC  39 20 00 00 */	li r9, 0
/* 801930A0 00190000  48 15 6C D5 */	bl SfxStart__11CSfxManagerFUsssbsbi
lbl_801930A4:
/* 801930A4 00190004  93 DF 00 4C */	stw r30, 0x4c(r31)
/* 801930A8 00190008  38 61 00 A4 */	addi r3, r1, 0xa4
/* 801930AC 0019000C  48 1A A0 89 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
lbl_801930B0:
/* 801930B0 00190010  C3 9F 00 08 */	lfs f28, 8(r31)
/* 801930B4 00190014  C8 42 A5 C0 */	lfd f2, lbl_805AC2E0@sda21(r2)
/* 801930B8 00190018  EC 3C D8 2A */	fadds f1, f28, f27
/* 801930BC 0019001C  48 20 1B F1 */	bl fmod
/* 801930C0 00190020  FC 00 08 18 */	frsp f0, f1
/* 801930C4 00190024  C0 22 A5 C8 */	lfs f1, lbl_805AC2E8@sda21(r2)
/* 801930C8 00190028  D0 1F 00 08 */	stfs f0, 8(r31)
/* 801930CC 0019002C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 801930D0 00190030  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 801930D4 00190034  40 80 00 0C */	bge lbl_801930E0
/* 801930D8 00190038  EC 02 08 24 */	fdivs f0, f2, f1
/* 801930DC 0019003C  48 00 00 10 */	b lbl_801930EC
lbl_801930E0:
/* 801930E0 00190040  C0 02 A5 CC */	lfs f0, lbl_805AC2EC@sda21(r2)
/* 801930E4 00190044  EC 00 10 28 */	fsubs f0, f0, f2
/* 801930E8 00190048  EC 00 08 24 */	fdivs f0, f0, f1
lbl_801930EC:
/* 801930EC 0019004C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 801930F0 00190050  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 801930F4 00190054  2C 00 00 02 */	cmpwi r0, 2
/* 801930F8 00190058  40 82 00 34 */	bne lbl_8019312C
/* 801930FC 0019005C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80193100 00190060  FC 00 E0 40 */	fcmpo cr0, f0, f28
/* 80193104 00190064  40 80 00 28 */	bge lbl_8019312C
/* 80193108 00190068  A9 02 C5 FA */	lha r8, kMedPriority__11CSfxManager@sda21(r2)
/* 8019310C 0019006C  38 61 00 28 */	addi r3, r1, 0x28
/* 80193110 00190070  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 80193114 00190074  38 80 05 77 */	li r4, 0x577
/* 80193118 00190078  38 A0 00 7F */	li r5, 0x7f
/* 8019311C 0019007C  38 C0 00 40 */	li r6, 0x40
/* 80193120 00190080  38 E0 00 00 */	li r7, 0
/* 80193124 00190084  39 20 00 00 */	li r9, 0
/* 80193128 00190088  48 15 6C 4D */	bl SfxStart__11CSfxManagerFUsssbsbi
lbl_8019312C:
/* 8019312C 0019008C  80 1F 00 68 */	lwz r0, 0x68(r31)
/* 80193130 00190090  28 00 00 00 */	cmplwi r0, 0
/* 80193134 00190094  41 82 01 08 */	beq lbl_8019323C
/* 80193138 00190098  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 8019313C 0019009C  2C 00 00 00 */	cmpwi r0, 0
/* 80193140 001900A0  41 82 00 70 */	beq lbl_801931B0
/* 80193144 001900A4  C0 42 A5 D0 */	lfs f2, lbl_805AC2F0@sda21(r2)
/* 80193148 001900A8  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8019314C 001900AC  C0 0D 8F 80 */	lfs f0, lbl_805A7B40@sda21(r13)
/* 80193150 001900B0  EC 22 0E FA */	fmadds f1, f2, f27, f1
/* 80193154 001900B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80193158 001900B8  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8019315C 001900BC  40 80 00 0C */	bge lbl_80193168
/* 80193160 001900C0  38 61 00 24 */	addi r3, r1, 0x24
/* 80193164 001900C4  48 00 00 08 */	b lbl_8019316C
lbl_80193168:
/* 80193168 001900C8  38 6D 8F 80 */	addi r3, r13, lbl_805A7B40@sda21
lbl_8019316C:
/* 8019316C 001900CC  C0 03 00 00 */	lfs f0, 0(r3)
/* 80193170 001900D0  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 80193174 001900D4  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80193178 001900D8  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8019317C 001900DC  EF 81 00 32 */	fmuls f28, f1, f0
/* 80193180 001900E0  48 1B 6E 2D */	bl White__6CColorFv
/* 80193184 001900E4  C0 02 A5 D4 */	lfs f0, lbl_805AC2F4@sda21(r2)
/* 80193188 001900E8  EF C0 07 32 */	fmuls f30, f0, f28
/* 8019318C 001900EC  F3 C1 A0 09 */	psq_st f30, 9(r1), 1, qr2
/* 80193190 001900F0  38 81 00 20 */	addi r4, r1, 0x20
/* 80193194 001900F4  80 63 00 00 */	lwz r3, 0(r3)
/* 80193198 001900F8  88 01 00 09 */	lbz r0, 9(r1)
/* 8019319C 001900FC  50 60 00 2E */	rlwimi r0, r3, 0, 0, 0x17
/* 801931A0 00190100  90 01 00 20 */	stw r0, 0x20(r1)
/* 801931A4 00190104  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 801931A8 00190108  48 13 76 C5 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 801931AC 0019010C  48 00 00 6C */	b lbl_80193218
lbl_801931B0:
/* 801931B0 00190110  C0 42 A5 D0 */	lfs f2, lbl_805AC2F0@sda21(r2)
/* 801931B4 00190114  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 801931B8 00190118  C0 0D 8F 84 */	lfs f0, lbl_805A7B44@sda21(r13)
/* 801931BC 0019011C  EC 22 0E FC */	fnmsubs f1, f2, f27, f1
/* 801931C0 00190120  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801931C4 00190124  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 801931C8 00190128  40 80 00 0C */	bge lbl_801931D4
/* 801931CC 0019012C  38 61 00 1C */	addi r3, r1, 0x1c
/* 801931D0 00190130  48 00 00 08 */	b lbl_801931D8
lbl_801931D4:
/* 801931D4 00190134  38 6D 8F 84 */	addi r3, r13, lbl_805A7B44@sda21
lbl_801931D8:
/* 801931D8 00190138  C0 03 00 00 */	lfs f0, 0(r3)
/* 801931DC 0019013C  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 801931E0 00190140  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 801931E4 00190144  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 801931E8 00190148  EF 81 00 32 */	fmuls f28, f1, f0
/* 801931EC 0019014C  48 1B 6D C1 */	bl White__6CColorFv
/* 801931F0 00190150  C0 02 A5 D4 */	lfs f0, lbl_805AC2F4@sda21(r2)
/* 801931F4 00190154  EF C0 07 32 */	fmuls f30, f0, f28
/* 801931F8 00190158  F3 C1 A0 08 */	psq_st f30, 8(r1), 1, qr2
/* 801931FC 0019015C  38 81 00 18 */	addi r4, r1, 0x18
/* 80193200 00190160  80 63 00 00 */	lwz r3, 0(r3)
/* 80193204 00190164  88 01 00 08 */	lbz r0, 8(r1)
/* 80193208 00190168  50 60 00 2E */	rlwimi r0, r3, 0, 0, 0x17
/* 8019320C 0019016C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80193210 00190170  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 80193214 00190174  48 13 76 59 */	bl SetColor__10CGuiWidgetFRC6CColor
lbl_80193218:
/* 80193218 00190178  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 8019321C 0019017C  88 03 00 AB */	lbz r0, 0xab(r3)
/* 80193220 00190180  28 00 00 00 */	cmplwi r0, 0
/* 80193224 00190184  41 82 00 10 */	beq lbl_80193234
/* 80193228 00190188  38 80 00 01 */	li r4, 1
/* 8019322C 0019018C  48 13 74 01 */	bl SetIsVisible__10CGuiWidgetFb
/* 80193230 00190190  48 00 00 0C */	b lbl_8019323C
lbl_80193234:
/* 80193234 00190194  38 80 00 00 */	li r4, 0
/* 80193238 00190198  48 13 73 F5 */	bl SetIsVisible__10CGuiWidgetFb
lbl_8019323C:
/* 8019323C 0019019C  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 80193240 001901A0  2C 00 00 02 */	cmpwi r0, 2
/* 80193244 001901A4  40 82 00 38 */	bne lbl_8019327C
/* 80193248 001901A8  C0 42 A5 D0 */	lfs f2, lbl_805AC2F0@sda21(r2)
/* 8019324C 001901AC  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80193250 001901B0  C0 0D 8F 88 */	lfs f0, lbl_805A7B48@sda21(r13)
/* 80193254 001901B4  EC 22 0E FA */	fmadds f1, f2, f27, f1
/* 80193258 001901B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019325C 001901BC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80193260 001901C0  40 80 00 0C */	bge lbl_8019326C
/* 80193264 001901C4  38 61 00 14 */	addi r3, r1, 0x14
/* 80193268 001901C8  48 00 00 08 */	b lbl_80193270
lbl_8019326C:
/* 8019326C 001901CC  38 6D 8F 88 */	addi r3, r13, lbl_805A7B48@sda21
lbl_80193270:
/* 80193270 001901D0  C0 03 00 00 */	lfs f0, 0(r3)
/* 80193274 001901D4  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 80193278 001901D8  48 00 00 34 */	b lbl_801932AC
lbl_8019327C:
/* 8019327C 001901DC  C0 42 A5 D0 */	lfs f2, lbl_805AC2F0@sda21(r2)
/* 80193280 001901E0  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80193284 001901E4  C0 0D 8F 8C */	lfs f0, lbl_805A7B4C@sda21(r13)
/* 80193288 001901E8  EC 22 0E FC */	fnmsubs f1, f2, f27, f1
/* 8019328C 001901EC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80193290 001901F0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80193294 001901F4  40 80 00 0C */	bge lbl_801932A0
/* 80193298 001901F8  38 61 00 10 */	addi r3, r1, 0x10
/* 8019329C 001901FC  48 00 00 08 */	b lbl_801932A4
lbl_801932A0:
/* 801932A0 00190200  38 6D 8F 8C */	addi r3, r13, lbl_805A7B4C@sda21
lbl_801932A4:
/* 801932A4 00190204  C0 03 00 00 */	lfs f0, 0(r3)
/* 801932A8 00190208  D0 1F 00 50 */	stfs f0, 0x50(r31)
lbl_801932AC:
/* 801932AC 0019020C  E3 E1 01 98 */	psq_l f31, 408(r1), 0, qr0
/* 801932B0 00190210  CB E1 01 90 */	lfd f31, 0x190(r1)
/* 801932B4 00190214  E3 C1 01 88 */	psq_l f30, 392(r1), 0, qr0
/* 801932B8 00190218  CB C1 01 80 */	lfd f30, 0x180(r1)
/* 801932BC 0019021C  E3 A1 01 78 */	psq_l f29, 376(r1), 0, qr0
/* 801932C0 00190220  CB A1 01 70 */	lfd f29, 0x170(r1)
/* 801932C4 00190224  E3 81 01 68 */	psq_l f28, 360(r1), 0, qr0
/* 801932C8 00190228  CB 81 01 60 */	lfd f28, 0x160(r1)
/* 801932CC 0019022C  E3 61 01 58 */	psq_l f27, 344(r1), 0, qr0
/* 801932D0 00190230  CB 61 01 50 */	lfd f27, 0x150(r1)
/* 801932D4 00190234  E3 41 01 48 */	psq_l f26, 328(r1), 0, qr0
/* 801932D8 00190238  CB 41 01 40 */	lfd f26, 0x140(r1)
/* 801932DC 0019023C  BB 61 01 2C */	lmw r27, 0x12c(r1)
/* 801932E0 00190240  80 01 01 A4 */	lwz r0, 0x1a4(r1)
/* 801932E4 00190244  7C 08 03 A6 */	mtlr r0
/* 801932E8 00190248  38 21 01 A0 */	addi r1, r1, 0x1a0
/* 801932EC 0019024C  4E 80 00 20 */	blr

.global UpdateVisibility__19CHudThreatInterfaceFv
UpdateVisibility__19CHudThreatInterfaceFv:
/* 801932F0 00190250  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801932F4 00190254  7C 08 02 A6 */	mflr r0
/* 801932F8 00190258  90 01 00 14 */	stw r0, 0x14(r1)
/* 801932FC 0019025C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80193300 00190260  3B E0 00 00 */	li r31, 0
/* 80193304 00190264  93 C1 00 08 */	stw r30, 8(r1)
/* 80193308 00190268  7C 7E 1B 78 */	mr r30, r3
/* 8019330C 0019026C  88 63 00 54 */	lbz r3, 0x54(r3)
/* 80193310 00190270  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 80193314 00190274  41 82 00 10 */	beq lbl_80193324
/* 80193318 00190278  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 8019331C 0019027C  41 82 00 08 */	beq lbl_80193324
/* 80193320 00190280  3B E0 00 01 */	li r31, 1
lbl_80193324:
/* 80193324 00190284  80 7E 00 58 */	lwz r3, 0x58(r30)
/* 80193328 00190288  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 8019332C 0019028C  38 A0 00 01 */	li r5, 1
/* 80193330 00190290  48 13 73 B9 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 80193334 00190294  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80193338 00190298  41 82 00 1C */	beq lbl_80193354
/* 8019333C 0019029C  7F C3 F3 78 */	mr r3, r30
/* 80193340 001902A0  C0 22 A5 B0 */	lfs f1, lbl_805AC2D0@sda21(r2)
/* 80193344 001902A4  81 9E 00 00 */	lwz r12, 0(r30)
/* 80193348 001902A8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8019334C 001902AC  7D 89 03 A6 */	mtctr r12
/* 80193350 001902B0  4E 80 04 21 */	bctrl
lbl_80193354:
/* 80193354 001902B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80193358 001902B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8019335C 001902BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80193360 001902C0  7C 08 03 A6 */	mtlr r0
/* 80193364 001902C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80193368 001902C8  4E 80 00 20 */	blr

.global SetIsVisibleGame__19CHudThreatInterfaceFb
SetIsVisibleGame__19CHudThreatInterfaceFb:
/* 8019336C 001902CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80193370 001902D0  7C 08 02 A6 */	mflr r0
/* 80193374 001902D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80193378 001902D8  88 03 00 54 */	lbz r0, 0x54(r3)
/* 8019337C 001902DC  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 80193380 001902E0  98 03 00 54 */	stb r0, 0x54(r3)
/* 80193384 001902E4  4B FF FF 6D */	bl UpdateVisibility__19CHudThreatInterfaceFv
/* 80193388 001902E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019338C 001902EC  7C 08 03 A6 */	mtlr r0
/* 80193390 001902F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80193394 001902F4  4E 80 00 20 */	blr

.global SetIsVisibleDebug__19CHudThreatInterfaceFb
SetIsVisibleDebug__19CHudThreatInterfaceFb:
/* 80193398 001902F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019339C 001902FC  7C 08 02 A6 */	mflr r0
/* 801933A0 00190300  90 01 00 14 */	stw r0, 0x14(r1)
/* 801933A4 00190304  88 03 00 54 */	lbz r0, 0x54(r3)
/* 801933A8 00190308  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 801933AC 0019030C  98 03 00 54 */	stb r0, 0x54(r3)
/* 801933B0 00190310  4B FF FF 41 */	bl UpdateVisibility__19CHudThreatInterfaceFv
/* 801933B4 00190314  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801933B8 00190318  7C 08 03 A6 */	mtlr r0
/* 801933BC 0019031C  38 21 00 10 */	addi r1, r1, 0x10
/* 801933C0 00190320  4E 80 00 20 */	blr

.global SetThreatDistance__19CHudThreatInterfaceFf
SetThreatDistance__19CHudThreatInterfaceFf:
/* 801933C4 00190324  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 801933C8 00190328  4E 80 00 20 */	blr

.global __ct__19CHudThreatInterfaceFR9CGuiFramef
__ct__19CHudThreatInterfaceFR9CGuiFramef:
/* 801933CC 0019032C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801933D0 00190330  7C 08 02 A6 */	mflr r0
/* 801933D4 00190334  3C C0 80 3E */	lis r6, lbl_803DA304@ha
/* 801933D8 00190338  C0 02 A5 B0 */	lfs f0, lbl_805AC2D0@sda21(r2)
/* 801933DC 0019033C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801933E0 00190340  38 06 A3 04 */	addi r0, r6, lbl_803DA304@l
/* 801933E4 00190344  3C C0 80 3D */	lis r6, lbl_803D0D60@ha
/* 801933E8 00190348  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801933EC 0019034C  3B E6 0D 60 */	addi r31, r6, lbl_803D0D60@l
/* 801933F0 00190350  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801933F4 00190354  7C BE 2B 78 */	mr r30, r5
/* 801933F8 00190358  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801933FC 0019035C  7C 7D 1B 78 */	mr r29, r3
/* 80193400 00190360  3C 60 80 3E */	lis r3, lbl_803E44A8@ha
/* 80193404 00190364  93 81 00 20 */	stw r28, 0x20(r1)
/* 80193408 00190368  7C 9C 23 78 */	mr r28, r4
/* 8019340C 0019036C  90 1D 00 00 */	stw r0, 0(r29)
/* 80193410 00190370  38 03 44 A8 */	addi r0, r3, lbl_803E44A8@l
/* 80193414 00190374  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 80193418 00190378  90 1D 00 00 */	stw r0, 0(r29)
/* 8019341C 0019037C  38 03 66 70 */	addi r0, r3, sIdentity__12CTransform4f@l
/* 80193420 00190380  7C 04 03 78 */	mr r4, r0
/* 80193424 00190384  38 7D 00 18 */	addi r3, r29, 0x18
/* 80193428 00190388  93 DD 00 04 */	stw r30, 4(r29)
/* 8019342C 0019038C  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80193430 00190390  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 80193434 00190394  D0 3D 00 10 */	stfs f1, 0x10(r29)
/* 80193438 00190398  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 8019343C 0019039C  48 17 F7 39 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80193440 001903A0  C0 02 A5 B0 */	lfs f0, lbl_805AC2D0@sda21(r2)
/* 80193444 001903A4  38 00 00 00 */	li r0, 0
/* 80193448 001903A8  38 A0 00 01 */	li r5, 1
/* 8019344C 001903AC  7F 83 E3 78 */	mr r3, r28
/* 80193450 001903B0  D0 1D 00 48 */	stfs f0, 0x48(r29)
/* 80193454 001903B4  38 9F 00 00 */	addi r4, r31, 0
/* 80193458 001903B8  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 8019345C 001903BC  D0 1D 00 50 */	stfs f0, 0x50(r29)
/* 80193460 001903C0  88 1D 00 54 */	lbz r0, 0x54(r29)
/* 80193464 001903C4  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 80193468 001903C8  98 1D 00 54 */	stb r0, 0x54(r29)
/* 8019346C 001903CC  88 1D 00 54 */	lbz r0, 0x54(r29)
/* 80193470 001903D0  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 80193474 001903D4  98 1D 00 54 */	stb r0, 0x54(r29)
/* 80193478 001903D8  48 12 EC DD */	bl FindWidget__9CGuiFrameCFPCc
/* 8019347C 001903DC  90 7D 00 58 */	stw r3, 0x58(r29)
/* 80193480 001903E0  7F 83 E3 78 */	mr r3, r28
/* 80193484 001903E4  38 9F 00 18 */	addi r4, r31, 0x18
/* 80193488 001903E8  48 12 EC CD */	bl FindWidget__9CGuiFrameCFPCc
/* 8019348C 001903EC  90 7D 00 5C */	stw r3, 0x5c(r29)
/* 80193490 001903F0  7F 83 E3 78 */	mr r3, r28
/* 80193494 001903F4  38 9F 00 30 */	addi r4, r31, 0x30
/* 80193498 001903F8  48 12 EC BD */	bl FindWidget__9CGuiFrameCFPCc
/* 8019349C 001903FC  90 7D 00 60 */	stw r3, 0x60(r29)
/* 801934A0 00190400  7F 83 E3 78 */	mr r3, r28
/* 801934A4 00190404  38 9F 00 44 */	addi r4, r31, 0x44
/* 801934A8 00190408  48 12 EC AD */	bl FindWidget__9CGuiFrameCFPCc
/* 801934AC 0019040C  90 7D 00 64 */	stw r3, 0x64(r29)
/* 801934B0 00190410  7F 83 E3 78 */	mr r3, r28
/* 801934B4 00190414  38 9F 00 5C */	addi r4, r31, 0x5c
/* 801934B8 00190418  48 12 EC 9D */	bl FindWidget__9CGuiFrameCFPCc
/* 801934BC 0019041C  90 7D 00 68 */	stw r3, 0x68(r29)
/* 801934C0 00190420  7F 83 E3 78 */	mr r3, r28
/* 801934C4 00190424  38 9F 00 74 */	addi r4, r31, 0x74
/* 801934C8 00190428  48 12 EC 8D */	bl FindWidget__9CGuiFrameCFPCc
/* 801934CC 0019042C  90 7D 00 6C */	stw r3, 0x6c(r29)
/* 801934D0 00190430  38 61 00 08 */	addi r3, r1, 8
/* 801934D4 00190434  38 9F 00 8C */	addi r4, r31, 0x8c
/* 801934D8 00190438  4B E7 17 E1 */	bl string_l__4rstlFPCc
/* 801934DC 0019043C  7F 83 E3 78 */	mr r3, r28
/* 801934E0 00190440  38 81 00 08 */	addi r4, r1, 8
/* 801934E4 00190444  48 12 EC F1 */	bl "FindWidget__9CGuiFrameCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801934E8 00190448  90 7D 00 70 */	stw r3, 0x70(r29)
/* 801934EC 0019044C  38 61 00 08 */	addi r3, r1, 8
/* 801934F0 00190450  48 1A A5 F1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801934F4 00190454  80 7D 00 70 */	lwz r3, 0x70(r29)
/* 801934F8 00190458  28 03 00 00 */	cmplwi r3, 0
/* 801934FC 0019045C  41 82 00 28 */	beq lbl_80193524
/* 80193500 00190460  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 80193504 00190464  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80193508 00190468  38 84 01 9C */	addi r4, r4, 0x19c
/* 8019350C 0019046C  48 13 61 5D */	bl SetFontColor__15CGuiTextSupportFRC6CColor
/* 80193510 00190470  80 7D 00 70 */	lwz r3, 0x70(r29)
/* 80193514 00190474  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 80193518 00190478  38 63 00 D4 */	addi r3, r3, 0xd4
/* 8019351C 0019047C  38 84 01 A0 */	addi r4, r4, 0x1a0
/* 80193520 00190480  48 13 60 F9 */	bl SetOutlineColor__15CGuiTextSupportFRC6CColor
lbl_80193524:
/* 80193524 00190484  80 1D 00 60 */	lwz r0, 0x60(r29)
/* 80193528 00190488  38 60 00 00 */	li r3, 0
/* 8019352C 0019048C  28 00 00 00 */	cmplwi r0, 0
/* 80193530 00190490  41 82 00 14 */	beq lbl_80193544
/* 80193534 00190494  80 1D 00 64 */	lwz r0, 0x64(r29)
/* 80193538 00190498  28 00 00 00 */	cmplwi r0, 0
/* 8019353C 0019049C  41 82 00 08 */	beq lbl_80193544
/* 80193540 001904A0  38 60 00 01 */	li r3, 1
lbl_80193544:
/* 80193544 001904A4  88 9D 00 54 */	lbz r4, 0x54(r29)
/* 80193548 001904A8  50 64 2E B4 */	rlwimi r4, r3, 5, 0x1a, 0x1a
/* 8019354C 001904AC  20 7E 00 02 */	subfic r3, r30, 2
/* 80193550 001904B0  38 1E FF FE */	addi r0, r30, -2
/* 80193554 001904B4  98 9D 00 54 */	stb r4, 0x54(r29)
/* 80193558 001904B8  7C 60 03 78 */	or r0, r3, r0
/* 8019355C 001904BC  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80193560 001904C0  88 1D 00 54 */	lbz r0, 0x54(r29)
/* 80193564 001904C4  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 80193568 001904C8  98 1D 00 54 */	stb r0, 0x54(r29)
/* 8019356C 001904CC  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 80193570 001904D0  80 7D 00 5C */	lwz r3, 0x5c(r29)
/* 80193574 001904D4  38 84 00 80 */	addi r4, r4, 0x80
/* 80193578 001904D8  48 13 72 F5 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 8019357C 001904DC  80 9D 00 5C */	lwz r4, 0x5c(r29)
/* 80193580 001904E0  38 7D 00 18 */	addi r3, r29, 0x18
/* 80193584 001904E4  38 84 00 04 */	addi r4, r4, 4
/* 80193588 001904E8  48 17 F5 B9 */	bl __as__12CTransform4fFRC12CTransform4f
/* 8019358C 001904EC  80 AD A1 3C */	lwz r5, gpTweakGuiColors@sda21(r13)
/* 80193590 001904F0  57 C0 10 3A */	slwi r0, r30, 2
/* 80193594 001904F4  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 80193598 001904F8  80 9D 00 6C */	lwz r4, 0x6c(r29)
/* 8019359C 001904FC  80 A5 00 68 */	lwz r5, 0x68(r5)
/* 801935A0 00190500  2C 1E 00 00 */	cmpwi r30, 0
/* 801935A4 00190504  7C 03 00 2E */	lwzx r0, r3, r0
/* 801935A8 00190508  90 A4 00 D0 */	stw r5, 0xd0(r4)
/* 801935AC 0019050C  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 801935B0 00190510  80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 801935B4 00190514  80 84 00 70 */	lwz r4, 0x70(r4)
/* 801935B8 00190518  90 83 00 CC */	stw r4, 0xcc(r3)
/* 801935BC 0019051C  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 801935C0 00190520  80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 801935C4 00190524  80 84 00 6C */	lwz r4, 0x6c(r4)
/* 801935C8 00190528  90 83 00 D4 */	stw r4, 0xd4(r3)
/* 801935CC 0019052C  80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 801935D0 00190530  90 03 00 D8 */	stw r0, 0xd8(r3)
/* 801935D4 00190534  80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 801935D8 00190538  40 82 00 0C */	bne lbl_801935E4
/* 801935DC 0019053C  C0 02 A5 E0 */	lfs f0, lbl_805AC300@sda21(r2)
/* 801935E0 00190540  48 00 00 08 */	b lbl_801935E8
lbl_801935E4:
/* 801935E4 00190544  C0 02 A5 E4 */	lfs f0, lbl_805AC304@sda21(r2)
lbl_801935E8:
/* 801935E8 00190548  D0 03 00 DC */	stfs f0, 0xdc(r3)
/* 801935EC 0019054C  80 8D A1 38 */	lwz r4, gpTweakGui@sda21(r13)
/* 801935F0 00190550  80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 801935F4 00190554  C0 24 00 E4 */	lfs f1, 0xe4(r4)
/* 801935F8 00190558  48 13 83 71 */	bl SetMaxEnergy__16CAuiEnergyBarT01Ff
/* 801935FC 0019055C  C0 22 A5 E8 */	lfs f1, lbl_805AC308@sda21(r2)
/* 80193600 00190560  38 00 00 00 */	li r0, 0
/* 80193604 00190564  80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 80193608 00190568  C0 02 A5 B0 */	lfs f0, lbl_805AC2D0@sda21(r2)
/* 8019360C 0019056C  D0 23 00 E4 */	stfs f1, 0xe4(r3)
/* 80193610 00190570  80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 80193614 00190574  D0 23 00 E8 */	stfs f1, 0xe8(r3)
/* 80193618 00190578  80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 8019361C 0019057C  D0 03 00 EC */	stfs f0, 0xec(r3)
/* 80193620 00190580  80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 80193624 00190584  98 03 00 F0 */	stb r0, 0xf0(r3)
/* 80193628 00190588  80 7D 00 68 */	lwz r3, 0x68(r29)
/* 8019362C 0019058C  28 03 00 00 */	cmplwi r3, 0
/* 80193630 00190590  41 82 00 28 */	beq lbl_80193658
/* 80193634 00190594  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 80193638 00190598  38 63 00 D4 */	addi r3, r3, 0xd4
/* 8019363C 0019059C  38 84 00 60 */	addi r4, r4, 0x60
/* 80193640 001905A0  48 13 60 29 */	bl SetFontColor__15CGuiTextSupportFRC6CColor
/* 80193644 001905A4  80 7D 00 68 */	lwz r3, 0x68(r29)
/* 80193648 001905A8  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 8019364C 001905AC  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80193650 001905B0  38 84 00 B8 */	addi r4, r4, 0xb8
/* 80193654 001905B4  48 13 5F C5 */	bl SetOutlineColor__15CGuiTextSupportFRC6CColor
lbl_80193658:
/* 80193658 001905B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8019365C 001905BC  7F A3 EB 78 */	mr r3, r29
/* 80193660 001905C0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80193664 001905C4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80193668 001905C8  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8019366C 001905CC  83 81 00 20 */	lwz r28, 0x20(r1)
/* 80193670 001905D0  7C 08 03 A6 */	mtlr r0
/* 80193674 001905D4  38 21 00 30 */	addi r1, r1, 0x30
/* 80193678 001905D8  4E 80 00 20 */	blr

.global XRayThreatBarCoordFunc__19CHudThreatInterfaceFf
XRayThreatBarCoordFunc__19CHudThreatInterfaceFf:
/* 8019367C 001905DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80193680 001905E0  7C 08 02 A6 */	mflr r0
/* 80193684 001905E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80193688 001905E8  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8019368C 001905EC  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 80193690 001905F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80193694 001905F4  C0 02 A5 CC */	lfs f0, lbl_805AC2EC@sda21(r2)
/* 80193698 001905F8  7C 7F 1B 78 */	mr r31, r3
/* 8019369C 001905FC  C0 42 A5 EC */	lfs f2, lbl_805AC30C@sda21(r2)
/* 801936A0 00190600  EC 01 00 28 */	fsubs f0, f1, f0
/* 801936A4 00190604  EF E2 00 32 */	fmuls f31, f2, f0
/* 801936A8 00190608  FC 20 F8 90 */	fmr f1, f31
/* 801936AC 0019060C  48 18 16 99 */	bl FastCosR__5CMathFf
/* 801936B0 00190610  C0 42 A5 F0 */	lfs f2, lbl_805AC310@sda21(r2)
/* 801936B4 00190614  C0 02 A5 BC */	lfs f0, lbl_805AC2DC@sda21(r2)
/* 801936B8 00190618  EC 42 00 72 */	fmuls f2, f2, f1
/* 801936BC 0019061C  FC 20 F8 90 */	fmr f1, f31
/* 801936C0 00190620  EF E0 00 B2 */	fmuls f31, f0, f2
/* 801936C4 00190624  48 18 17 2D */	bl FastSinR__5CMathFf
/* 801936C8 00190628  C0 02 A5 F4 */	lfs f0, lbl_805AC314@sda21(r2)
/* 801936CC 0019062C  C0 62 A5 F0 */	lfs f3, lbl_805AC310@sda21(r2)
/* 801936D0 00190630  EC 40 F8 2A */	fadds f2, f0, f31
/* 801936D4 00190634  C0 02 A5 B0 */	lfs f0, lbl_805AC2D0@sda21(r2)
/* 801936D8 00190638  EC 23 00 72 */	fmuls f1, f3, f1
/* 801936DC 0019063C  D0 5F 00 00 */	stfs f2, 0(r31)
/* 801936E0 00190640  D0 1F 00 04 */	stfs f0, 4(r31)
/* 801936E4 00190644  D0 3F 00 08 */	stfs f1, 8(r31)
/* 801936E8 00190648  D3 FF 00 0C */	stfs f31, 0xc(r31)
/* 801936EC 0019064C  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 801936F0 00190650  D0 3F 00 14 */	stfs f1, 0x14(r31)
/* 801936F4 00190654  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 801936F8 00190658  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801936FC 0019065C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80193700 00190660  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80193704 00190664  7C 08 03 A6 */	mtlr r0
/* 80193708 00190668  38 21 00 20 */	addi r1, r1, 0x20
/* 8019370C 0019066C  4E 80 00 20 */	blr

.global ThermalThreatBarCoordFunc__19CHudThreatInterfaceFf
ThermalThreatBarCoordFunc__19CHudThreatInterfaceFf:
/* 80193710 00190670  3C 80 80 3D */	lis r4, lbl_803D0E04@ha
/* 80193714 00190674  C0 02 A5 F8 */	lfs f0, lbl_805AC318@sda21(r2)
/* 80193718 00190678  38 84 0E 04 */	addi r4, r4, lbl_803D0E04@l
/* 8019371C 0019067C  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 80193720 00190680  EC 60 00 B2 */	fmuls f3, f0, f2
/* 80193724 00190684  EC 81 00 B2 */	fmuls f4, f1, f2
/* 80193728 00190688  FC 04 18 40 */	fcmpo cr0, f4, f3
/* 8019372C 0019068C  40 80 00 0C */	bge lbl_80193738
/* 80193730 00190690  EC 64 18 24 */	fdivs f3, f4, f3
/* 80193734 00190694  48 00 00 28 */	b lbl_8019375C
lbl_80193738:
/* 80193738 00190698  EC 02 18 28 */	fsubs f0, f2, f3
/* 8019373C 0019069C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80193740 001906A0  40 80 00 0C */	bge lbl_8019374C
/* 80193744 001906A4  C0 62 A5 E0 */	lfs f3, lbl_805AC300@sda21(r2)
/* 80193748 001906A8  48 00 00 14 */	b lbl_8019375C
lbl_8019374C:
/* 8019374C 001906AC  EC 04 00 28 */	fsubs f0, f4, f0
/* 80193750 001906B0  C0 22 A5 E0 */	lfs f1, lbl_805AC300@sda21(r2)
/* 80193754 001906B4  EC 00 18 24 */	fdivs f0, f0, f3
/* 80193758 001906B8  EC 61 00 28 */	fsubs f3, f1, f0
lbl_8019375C:
/* 8019375C 001906BC  C0 42 A5 E4 */	lfs f2, lbl_805AC304@sda21(r2)
/* 80193760 001906C0  C0 02 A5 CC */	lfs f0, lbl_805AC2EC@sda21(r2)
/* 80193764 001906C4  D0 43 00 00 */	stfs f2, 0(r3)
/* 80193768 001906C8  C0 22 A5 B0 */	lfs f1, lbl_805AC2D0@sda21(r2)
/* 8019376C 001906CC  EC 00 10 FA */	fmadds f0, f0, f3, f2
/* 80193770 001906D0  D0 23 00 04 */	stfs f1, 4(r3)
/* 80193774 001906D4  D0 83 00 08 */	stfs f4, 8(r3)
/* 80193778 001906D8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8019377C 001906DC  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 80193780 001906E0  D0 83 00 14 */	stfs f4, 0x14(r3)
/* 80193784 001906E4  4E 80 00 20 */	blr

.global CombatThreatBarCoordFunc__19CHudThreatInterfaceFf
CombatThreatBarCoordFunc__19CHudThreatInterfaceFf:
/* 80193788 001906E8  3C 80 80 3D */	lis r4, lbl_803D0E04@ha
/* 8019378C 001906EC  C0 42 A5 FC */	lfs f2, lbl_805AC31C@sda21(r2)
/* 80193790 001906F0  C0 64 0E 04 */	lfs f3, lbl_803D0E04@l(r4)
/* 80193794 001906F4  C0 02 A5 B0 */	lfs f0, lbl_805AC2D0@sda21(r2)
/* 80193798 001906F8  D0 43 00 00 */	stfs f2, 0(r3)
/* 8019379C 001906FC  EC 21 00 F2 */	fmuls f1, f1, f3
/* 801937A0 00190700  D0 03 00 04 */	stfs f0, 4(r3)
/* 801937A4 00190704  D0 23 00 08 */	stfs f1, 8(r3)
/* 801937A8 00190708  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 801937AC 0019070C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 801937B0 00190710  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 801937B4 00190714  4E 80 00 20 */	blr

.global UpdateMenuWidgetTransform__17CHudVisorBeamMenuFiR10CGuiWidgetf
UpdateMenuWidgetTransform__17CHudVisorBeamMenuFiR10CGuiWidgetf:
/* 801937B8 00190718  94 21 FC E0 */	stwu r1, -0x320(r1)
/* 801937BC 0019071C  7C 08 02 A6 */	mflr r0
/* 801937C0 00190720  90 01 03 24 */	stw r0, 0x324(r1)
/* 801937C4 00190724  DB E1 03 10 */	stfd f31, 0x310(r1)
/* 801937C8 00190728  F3 E1 03 18 */	psq_st f31, 792(r1), 0, qr0
/* 801937CC 0019072C  93 E1 03 0C */	stw r31, 0x30c(r1)
/* 801937D0 00190730  93 C1 03 08 */	stw r30, 0x308(r1)
/* 801937D4 00190734  FC 00 0A 10 */	fabs f0, f1
/* 801937D8 00190738  80 CD A1 38 */	lwz r6, gpTweakGui@sda21(r13)
/* 801937DC 0019073C  80 03 00 04 */	lwz r0, 4(r3)
/* 801937E0 00190740  7C BE 2B 78 */	mr r30, r5
/* 801937E4 00190744  C0 22 A6 40 */	lfs f1, lbl_805AC360@sda21(r2)
/* 801937E8 00190748  FC 60 00 18 */	frsp f3, f0
/* 801937EC 0019074C  C0 86 00 CC */	lfs f4, 0xcc(r6)
/* 801937F0 00190750  2C 00 00 00 */	cmpwi r0, 0
/* 801937F4 00190754  C0 06 00 C4 */	lfs f0, 0xc4(r6)
/* 801937F8 00190758  EC 21 18 28 */	fsubs f1, f1, f3
/* 801937FC 0019075C  C0 46 00 C8 */	lfs f2, 0xc8(r6)
/* 80193800 00190760  EF E3 01 32 */	fmuls f31, f3, f4
/* 80193804 00190764  EC 01 00 32 */	fmuls f0, f1, f0
/* 80193808 00190768  EC 23 00 BA */	fmadds f1, f3, f2, f0
/* 8019380C 0019076C  40 82 00 24 */	bne lbl_80193830
/* 80193810 00190770  2C 04 00 02 */	cmpwi r4, 2
/* 80193814 00190774  40 82 00 0C */	bne lbl_80193820
/* 80193818 00190778  38 80 00 03 */	li r4, 3
/* 8019381C 0019077C  48 00 00 30 */	b lbl_8019384C
lbl_80193820:
/* 80193820 00190780  2C 04 00 03 */	cmpwi r4, 3
/* 80193824 00190784  40 82 00 28 */	bne lbl_8019384C
/* 80193828 00190788  38 80 00 02 */	li r4, 2
/* 8019382C 0019078C  48 00 00 20 */	b lbl_8019384C
lbl_80193830:
/* 80193830 00190790  2C 04 00 01 */	cmpwi r4, 1
/* 80193834 00190794  40 82 00 0C */	bne lbl_80193840
/* 80193838 00190798  38 80 00 02 */	li r4, 2
/* 8019383C 0019079C  48 00 00 10 */	b lbl_8019384C
lbl_80193840:
/* 80193840 001907A0  2C 04 00 02 */	cmpwi r4, 2
/* 80193844 001907A4  40 82 00 08 */	bne lbl_8019384C
/* 80193848 001907A8  38 80 00 01 */	li r4, 1
lbl_8019384C:
/* 8019384C 001907AC  2C 04 00 02 */	cmpwi r4, 2
/* 80193850 001907B0  41 82 00 CC */	beq lbl_8019391C
/* 80193854 001907B4  40 80 00 14 */	bge lbl_80193868
/* 80193858 001907B8  2C 04 00 00 */	cmpwi r4, 0
/* 8019385C 001907BC  41 82 00 18 */	beq lbl_80193874
/* 80193860 001907C0  40 80 00 68 */	bge lbl_801938C8
/* 80193864 001907C4  48 00 01 5C */	b lbl_801939C0
lbl_80193868:
/* 80193868 001907C8  2C 04 00 04 */	cmpwi r4, 4
/* 8019386C 001907CC  40 80 01 54 */	bge lbl_801939C0
/* 80193870 001907D0  48 00 01 00 */	b lbl_80193970
lbl_80193874:
/* 80193874 001907D4  80 83 00 18 */	lwz r4, 0x18(r3)
/* 80193878 001907D8  38 61 02 48 */	addi r3, r1, 0x248
/* 8019387C 001907DC  3B E4 00 34 */	addi r31, r4, 0x34
/* 80193880 001907E0  48 17 F9 C1 */	bl Scale__12CTransform4fFf
/* 80193884 001907E4  C0 22 A6 44 */	lfs f1, lbl_805AC364@sda21(r2)
/* 80193888 001907E8  FC 60 F8 90 */	fmr f3, f31
/* 8019388C 001907EC  38 61 02 78 */	addi r3, r1, 0x278
/* 80193890 001907F0  FC 40 08 90 */	fmr f2, f1
/* 80193894 001907F4  48 17 F8 F5 */	bl Translate__12CTransform4fFfff
/* 80193898 001907F8  7F E4 FB 78 */	mr r4, r31
/* 8019389C 001907FC  38 61 02 A8 */	addi r3, r1, 0x2a8
/* 801938A0 00190800  38 A1 02 78 */	addi r5, r1, 0x278
/* 801938A4 00190804  48 17 F0 AD */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 801938A8 00190808  38 61 02 D8 */	addi r3, r1, 0x2d8
/* 801938AC 0019080C  38 81 02 A8 */	addi r4, r1, 0x2a8
/* 801938B0 00190810  38 A1 02 48 */	addi r5, r1, 0x248
/* 801938B4 00190814  48 17 F0 9D */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 801938B8 00190818  7F C3 F3 78 */	mr r3, r30
/* 801938BC 0019081C  38 81 02 D8 */	addi r4, r1, 0x2d8
/* 801938C0 00190820  48 13 0E 79 */	bl SetO2WTransform__10CGuiObjectFRC12CTransform4f
/* 801938C4 00190824  48 00 00 FC */	b lbl_801939C0
lbl_801938C8:
/* 801938C8 00190828  80 83 00 18 */	lwz r4, 0x18(r3)
/* 801938CC 0019082C  38 61 01 88 */	addi r3, r1, 0x188
/* 801938D0 00190830  3B E4 00 34 */	addi r31, r4, 0x34
/* 801938D4 00190834  48 17 F9 6D */	bl Scale__12CTransform4fFf
/* 801938D8 00190838  C0 42 A6 44 */	lfs f2, lbl_805AC364@sda21(r2)
/* 801938DC 0019083C  FC 20 F8 90 */	fmr f1, f31
/* 801938E0 00190840  38 61 01 B8 */	addi r3, r1, 0x1b8
/* 801938E4 00190844  FC 60 10 90 */	fmr f3, f2
/* 801938E8 00190848  48 17 F8 A1 */	bl Translate__12CTransform4fFfff
/* 801938EC 0019084C  7F E4 FB 78 */	mr r4, r31
/* 801938F0 00190850  38 61 01 E8 */	addi r3, r1, 0x1e8
/* 801938F4 00190854  38 A1 01 B8 */	addi r5, r1, 0x1b8
/* 801938F8 00190858  48 17 F0 59 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 801938FC 0019085C  38 61 02 18 */	addi r3, r1, 0x218
/* 80193900 00190860  38 81 01 E8 */	addi r4, r1, 0x1e8
/* 80193904 00190864  38 A1 01 88 */	addi r5, r1, 0x188
/* 80193908 00190868  48 17 F0 49 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 8019390C 0019086C  7F C3 F3 78 */	mr r3, r30
/* 80193910 00190870  38 81 02 18 */	addi r4, r1, 0x218
/* 80193914 00190874  48 13 0E 25 */	bl SetO2WTransform__10CGuiObjectFRC12CTransform4f
/* 80193918 00190878  48 00 00 A8 */	b lbl_801939C0
lbl_8019391C:
/* 8019391C 0019087C  80 83 00 18 */	lwz r4, 0x18(r3)
/* 80193920 00190880  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80193924 00190884  3B E4 00 34 */	addi r31, r4, 0x34
/* 80193928 00190888  48 17 F9 19 */	bl Scale__12CTransform4fFf
/* 8019392C 0019088C  C0 22 A6 44 */	lfs f1, lbl_805AC364@sda21(r2)
/* 80193930 00190890  FC 60 F8 50 */	fneg f3, f31
/* 80193934 00190894  38 61 00 F8 */	addi r3, r1, 0xf8
/* 80193938 00190898  FC 40 08 90 */	fmr f2, f1
/* 8019393C 0019089C  48 17 F8 4D */	bl Translate__12CTransform4fFfff
/* 80193940 001908A0  7F E4 FB 78 */	mr r4, r31
/* 80193944 001908A4  38 61 01 28 */	addi r3, r1, 0x128
/* 80193948 001908A8  38 A1 00 F8 */	addi r5, r1, 0xf8
/* 8019394C 001908AC  48 17 F0 05 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 80193950 001908B0  38 61 01 58 */	addi r3, r1, 0x158
/* 80193954 001908B4  38 81 01 28 */	addi r4, r1, 0x128
/* 80193958 001908B8  38 A1 00 C8 */	addi r5, r1, 0xc8
/* 8019395C 001908BC  48 17 EF F5 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 80193960 001908C0  7F C3 F3 78 */	mr r3, r30
/* 80193964 001908C4  38 81 01 58 */	addi r4, r1, 0x158
/* 80193968 001908C8  48 13 0D D1 */	bl SetO2WTransform__10CGuiObjectFRC12CTransform4f
/* 8019396C 001908CC  48 00 00 54 */	b lbl_801939C0
lbl_80193970:
/* 80193970 001908D0  80 83 00 18 */	lwz r4, 0x18(r3)
/* 80193974 001908D4  38 61 00 08 */	addi r3, r1, 8
/* 80193978 001908D8  3B E4 00 34 */	addi r31, r4, 0x34
/* 8019397C 001908DC  48 17 F8 C5 */	bl Scale__12CTransform4fFf
/* 80193980 001908E0  C0 42 A6 44 */	lfs f2, lbl_805AC364@sda21(r2)
/* 80193984 001908E4  FC 20 F8 50 */	fneg f1, f31
/* 80193988 001908E8  38 61 00 38 */	addi r3, r1, 0x38
/* 8019398C 001908EC  FC 60 10 90 */	fmr f3, f2
/* 80193990 001908F0  48 17 F7 F9 */	bl Translate__12CTransform4fFfff
/* 80193994 001908F4  7F E4 FB 78 */	mr r4, r31
/* 80193998 001908F8  38 61 00 68 */	addi r3, r1, 0x68
/* 8019399C 001908FC  38 A1 00 38 */	addi r5, r1, 0x38
/* 801939A0 00190900  48 17 EF B1 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 801939A4 00190904  38 61 00 98 */	addi r3, r1, 0x98
/* 801939A8 00190908  38 81 00 68 */	addi r4, r1, 0x68
/* 801939AC 0019090C  38 A1 00 08 */	addi r5, r1, 8
/* 801939B0 00190910  48 17 EF A1 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 801939B4 00190914  7F C3 F3 78 */	mr r3, r30
/* 801939B8 00190918  38 81 00 98 */	addi r4, r1, 0x98
/* 801939BC 0019091C  48 13 0D 7D */	bl SetO2WTransform__10CGuiObjectFRC12CTransform4f
lbl_801939C0:
/* 801939C0 00190920  E3 E1 03 18 */	psq_l f31, 792(r1), 0, qr0
/* 801939C4 00190924  80 01 03 24 */	lwz r0, 0x324(r1)
/* 801939C8 00190928  CB E1 03 10 */	lfd f31, 0x310(r1)
/* 801939CC 0019092C  83 E1 03 0C */	lwz r31, 0x30c(r1)
/* 801939D0 00190930  83 C1 03 08 */	lwz r30, 0x308(r1)
/* 801939D4 00190934  7C 08 03 A6 */	mtlr r0
/* 801939D8 00190938  38 21 03 20 */	addi r1, r1, 0x320
/* 801939DC 0019093C  4E 80 00 20 */	blr

.global SetIsVisibleGame__17CHudVisorBeamMenuFb
SetIsVisibleGame__17CHudVisorBeamMenuFb:
/* 801939E0 00190940  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801939E4 00190944  7C 08 02 A6 */	mflr r0
/* 801939E8 00190948  90 01 00 14 */	stw r0, 0x14(r1)
/* 801939EC 0019094C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801939F0 00190950  3B E0 00 00 */	li r31, 0
/* 801939F4 00190954  93 C1 00 08 */	stw r30, 8(r1)
/* 801939F8 00190958  7C 7E 1B 78 */	mr r30, r3
/* 801939FC 0019095C  88 03 00 14 */	lbz r0, 0x14(r3)
/* 80193A00 00190960  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 80193A04 00190964  98 1E 00 14 */	stb r0, 0x14(r30)
/* 80193A08 00190968  88 7E 00 14 */	lbz r3, 0x14(r30)
/* 80193A0C 0019096C  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 80193A10 00190970  41 82 00 10 */	beq lbl_80193A20
/* 80193A14 00190974  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 80193A18 00190978  41 82 00 08 */	beq lbl_80193A20
/* 80193A1C 0019097C  3B E0 00 01 */	li r31, 1
lbl_80193A20:
/* 80193A20 00190980  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 80193A24 00190984  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 80193A28 00190988  38 A0 00 01 */	li r5, 1
/* 80193A2C 0019098C  48 13 6C BD */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 80193A30 00190990  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80193A34 00190994  41 82 00 14 */	beq lbl_80193A48
/* 80193A38 00190998  C0 22 A6 44 */	lfs f1, lbl_805AC364@sda21(r2)
/* 80193A3C 0019099C  7F C3 F3 78 */	mr r3, r30
/* 80193A40 001909A0  38 80 00 01 */	li r4, 1
/* 80193A44 001909A4  48 00 00 1D */	bl Update__17CHudVisorBeamMenuFfb
lbl_80193A48:
/* 80193A48 001909A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80193A4C 001909AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80193A50 001909B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80193A54 001909B4  7C 08 03 A6 */	mtlr r0
/* 80193A58 001909B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80193A5C 001909BC  4E 80 00 20 */	blr

.global Update__17CHudVisorBeamMenuFfb
Update__17CHudVisorBeamMenuFfb:
/* 80193A60 001909C0  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 80193A64 001909C4  7C 08 02 A6 */	mflr r0
/* 80193A68 001909C8  90 01 01 04 */	stw r0, 0x104(r1)
/* 80193A6C 001909CC  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 80193A70 001909D0  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, qr0
/* 80193A74 001909D4  DB C1 00 E0 */	stfd f30, 0xe0(r1)
/* 80193A78 001909D8  F3 C1 00 E8 */	psq_st f30, 232(r1), 0, qr0
/* 80193A7C 001909DC  DB A1 00 D0 */	stfd f29, 0xd0(r1)
/* 80193A80 001909E0  F3 A1 00 D8 */	psq_st f29, 216(r1), 0, qr0
/* 80193A84 001909E4  DB 81 00 C0 */	stfd f28, 0xc0(r1)
/* 80193A88 001909E8  F3 81 00 C8 */	psq_st f28, 200(r1), 0, qr0
/* 80193A8C 001909EC  BE C1 00 98 */	stmw r22, 0x98(r1)
/* 80193A90 001909F0  80 AD A0 80 */	lwz r5, gpGameState@sda21(r13)
/* 80193A94 001909F4  7C 7E 1B 78 */	mr r30, r3
/* 80193A98 001909F8  88 63 00 80 */	lbz r3, 0x80(r3)
/* 80193A9C 001909FC  FF C0 08 90 */	fmr f30, f1
/* 80193AA0 00190A00  88 A5 01 E4 */	lbz r5, 0x1e4(r5)
/* 80193AA4 00190A04  7C 9F 23 78 */	mr r31, r4
/* 80193AA8 00190A08  54 60 CF FE */	rlwinm r0, r3, 0x19, 0x1f, 0x1f
/* 80193AAC 00190A0C  54 A4 E7 FE */	rlwinm r4, r5, 0x1c, 0x1f, 0x1f
/* 80193AB0 00190A10  7C 04 00 40 */	cmplw r4, r0
/* 80193AB4 00190A14  41 82 01 30 */	beq lbl_80193BE4
/* 80193AB8 00190A18  50 83 3E 30 */	rlwimi r3, r4, 7, 0x18, 0x18
/* 80193ABC 00190A1C  98 7E 00 80 */	stb r3, 0x80(r30)
/* 80193AC0 00190A20  88 1E 00 80 */	lbz r0, 0x80(r30)
/* 80193AC4 00190A24  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80193AC8 00190A28  41 82 00 10 */	beq lbl_80193AD8
/* 80193ACC 00190A2C  80 1E 00 04 */	lwz r0, 4(r30)
/* 80193AD0 00190A30  20 00 00 01 */	subfic r0, r0, 1
/* 80193AD4 00190A34  48 00 00 08 */	b lbl_80193ADC
lbl_80193AD8:
/* 80193AD8 00190A38  80 1E 00 04 */	lwz r0, 4(r30)
lbl_80193ADC:
/* 80193ADC 00190A3C  54 00 10 3A */	slwi r0, r0, 2
/* 80193AE0 00190A40  38 82 A6 00 */	addi r4, r2, lbl_805AC320@sda21
/* 80193AE4 00190A44  80 7E 00 00 */	lwz r3, 0(r30)
/* 80193AE8 00190A48  7C 84 00 2E */	lwzx r4, r4, r0
/* 80193AEC 00190A4C  48 12 E6 69 */	bl FindWidget__9CGuiFrameCFPCc
/* 80193AF0 00190A50  90 7E 00 18 */	stw r3, 0x18(r30)
/* 80193AF4 00190A54  38 61 00 6C */	addi r3, r1, 0x6c
/* 80193AF8 00190A58  38 8D 8F A0 */	addi r4, r13, lbl_805A7B60@sda21
/* 80193AFC 00190A5C  4B E8 1E F5 */	bl wstring_l__4rstlFPCw
/* 80193B00 00190A60  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 80193B04 00190A64  38 81 00 6C */	addi r4, r1, 0x6c
/* 80193B08 00190A68  38 A0 00 00 */	li r5, 0
/* 80193B0C 00190A6C  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80193B10 00190A70  48 13 5D 75 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80193B14 00190A74  38 61 00 6C */	addi r3, r1, 0x6c
/* 80193B18 00190A78  48 1A 96 1D */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 80193B1C 00190A7C  88 1E 00 80 */	lbz r0, 0x80(r30)
/* 80193B20 00190A80  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80193B24 00190A84  41 82 00 10 */	beq lbl_80193B34
/* 80193B28 00190A88  80 1E 00 04 */	lwz r0, 4(r30)
/* 80193B2C 00190A8C  20 00 00 01 */	subfic r0, r0, 1
/* 80193B30 00190A90  48 00 00 08 */	b lbl_80193B38
lbl_80193B34:
/* 80193B34 00190A94  80 1E 00 04 */	lwz r0, 4(r30)
lbl_80193B38:
/* 80193B38 00190A98  54 00 10 3A */	slwi r0, r0, 2
/* 80193B3C 00190A9C  38 82 A6 08 */	addi r4, r2, lbl_805AC328@sda21
/* 80193B40 00190AA0  80 7E 00 00 */	lwz r3, 0(r30)
/* 80193B44 00190AA4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80193B48 00190AA8  48 12 E6 0D */	bl FindWidget__9CGuiFrameCFPCc
/* 80193B4C 00190AAC  90 7E 00 20 */	stw r3, 0x20(r30)
/* 80193B50 00190AB0  88 1E 00 80 */	lbz r0, 0x80(r30)
/* 80193B54 00190AB4  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80193B58 00190AB8  41 82 00 10 */	beq lbl_80193B68
/* 80193B5C 00190ABC  80 1E 00 04 */	lwz r0, 4(r30)
/* 80193B60 00190AC0  20 00 00 01 */	subfic r0, r0, 1
/* 80193B64 00190AC4  48 00 00 08 */	b lbl_80193B6C
lbl_80193B68:
/* 80193B68 00190AC8  80 1E 00 04 */	lwz r0, 4(r30)
lbl_80193B6C:
/* 80193B6C 00190ACC  54 00 10 3A */	slwi r0, r0, 2
/* 80193B70 00190AD0  38 82 A6 10 */	addi r4, r2, lbl_805AC330@sda21
/* 80193B74 00190AD4  80 7E 00 00 */	lwz r3, 0(r30)
/* 80193B78 00190AD8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80193B7C 00190ADC  48 12 E5 D9 */	bl FindWidget__9CGuiFrameCFPCc
/* 80193B80 00190AE0  3A FE 00 2C */	addi r23, r30, 0x2c
/* 80193B84 00190AE4  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 80193B88 00190AE8  7E F6 BB 78 */	mr r22, r23
/* 80193B8C 00190AEC  3B 00 00 00 */	li r24, 0
lbl_80193B90:
/* 80193B90 00190AF0  80 B6 00 04 */	lwz r5, 4(r22)
/* 80193B94 00190AF4  7F C3 F3 78 */	mr r3, r30
/* 80193B98 00190AF8  C0 36 00 08 */	lfs f1, 8(r22)
/* 80193B9C 00190AFC  7F 04 C3 78 */	mr r4, r24
/* 80193BA0 00190B00  4B FF FC 19 */	bl UpdateMenuWidgetTransform__17CHudVisorBeamMenuFiR10CGuiWidgetf
/* 80193BA4 00190B04  80 B6 00 00 */	lwz r5, 0(r22)
/* 80193BA8 00190B08  7F C3 F3 78 */	mr r3, r30
/* 80193BAC 00190B0C  C0 22 A6 40 */	lfs f1, lbl_805AC360@sda21(r2)
/* 80193BB0 00190B10  7F 04 C3 78 */	mr r4, r24
/* 80193BB4 00190B14  4B FF FC 05 */	bl UpdateMenuWidgetTransform__17CHudVisorBeamMenuFiR10CGuiWidgetf
/* 80193BB8 00190B18  3B 18 00 01 */	addi r24, r24, 1
/* 80193BBC 00190B1C  3A D6 00 10 */	addi r22, r22, 0x10
/* 80193BC0 00190B20  2C 18 00 04 */	cmpwi r24, 4
/* 80193BC4 00190B24  41 80 FF CC */	blt lbl_80193B90
/* 80193BC8 00190B28  80 9E 00 08 */	lwz r4, 8(r30)
/* 80193BCC 00190B2C  7F C3 F3 78 */	mr r3, r30
/* 80193BD0 00190B30  80 BE 00 24 */	lwz r5, 0x24(r30)
/* 80193BD4 00190B34  54 80 20 36 */	slwi r0, r4, 4
/* 80193BD8 00190B38  7C D7 02 14 */	add r6, r23, r0
/* 80193BDC 00190B3C  C0 26 00 08 */	lfs f1, 8(r6)
/* 80193BE0 00190B40  4B FF FB D9 */	bl UpdateMenuWidgetTransform__17CHudVisorBeamMenuFiR10CGuiWidgetf
lbl_80193BE4:
/* 80193BE4 00190B44  80 6D A1 3C */	lwz r3, gpTweakGuiColors@sda21(r13)
/* 80193BE8 00190B48  38 00 00 00 */	li r0, 0
/* 80193BEC 00190B4C  3B 7E 00 2C */	addi r27, r30, 0x2c
/* 80193BF0 00190B50  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80193BF4 00190B54  C3 A2 A6 44 */	lfs f29, lbl_805AC364@sda21(r2)
/* 80193BF8 00190B58  7F 7D DB 78 */	mr r29, r27
/* 80193BFC 00190B5C  3B 43 00 2C */	addi r26, r3, 0x2c
/* 80193C00 00190B60  3B 23 00 30 */	addi r25, r3, 0x30
/* 80193C04 00190B64  3B 03 00 B0 */	addi r24, r3, 0xb0
/* 80193C08 00190B68  3B 81 00 80 */	addi r28, r1, 0x80
/* 80193C0C 00190B6C  3A E0 00 00 */	li r23, 0
lbl_80193C10:
/* 80193C10 00190B70  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80193C14 00190B74  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 80193C18 00190B78  40 81 00 2C */	ble lbl_80193C44
/* 80193C1C 00190B7C  EC 20 F0 2A */	fadds f1, f0, f30
/* 80193C20 00190B80  C0 0D 8F 98 */	lfs f0, lbl_805A7B58@sda21(r13)
/* 80193C24 00190B84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80193C28 00190B88  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80193C2C 00190B8C  40 80 00 0C */	bge lbl_80193C38
/* 80193C30 00190B90  38 61 00 48 */	addi r3, r1, 0x48
/* 80193C34 00190B94  48 00 00 08 */	b lbl_80193C3C
lbl_80193C38:
/* 80193C38 00190B98  38 6D 8F 98 */	addi r3, r13, lbl_805A7B58@sda21
lbl_80193C3C:
/* 80193C3C 00190B9C  C0 03 00 00 */	lfs f0, 0(r3)
/* 80193C40 00190BA0  D0 1D 00 0C */	stfs f0, 0xc(r29)
lbl_80193C44:
/* 80193C44 00190BA4  38 00 00 00 */	li r0, 0
/* 80193C48 00190BA8  7F 44 D3 78 */	mr r4, r26
/* 80193C4C 00190BAC  90 01 00 40 */	stw r0, 0x40(r1)
/* 80193C50 00190BB0  38 61 00 44 */	addi r3, r1, 0x44
/* 80193C54 00190BB4  38 A1 00 40 */	addi r5, r1, 0x40
/* 80193C58 00190BB8  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 80193C5C 00190BBC  48 1C F6 51 */	bl Lerp__6CColorFRC6CColorRC6CColorf
/* 80193C60 00190BC0  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 80193C64 00190BC4  54 00 10 3A */	slwi r0, r0, 2
/* 80193C68 00190BC8  7C 7C 02 15 */	add. r3, r28, r0
/* 80193C6C 00190BCC  41 82 00 0C */	beq lbl_80193C78
/* 80193C70 00190BD0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80193C74 00190BD4  90 03 00 00 */	stw r0, 0(r3)
lbl_80193C78:
/* 80193C78 00190BD8  80 61 00 7C */	lwz r3, 0x7c(r1)
/* 80193C7C 00190BDC  3A F7 00 01 */	addi r23, r23, 1
/* 80193C80 00190BE0  2C 17 00 04 */	cmpwi r23, 4
/* 80193C84 00190BE4  3B BD 00 10 */	addi r29, r29, 0x10
/* 80193C88 00190BE8  38 03 00 01 */	addi r0, r3, 1
/* 80193C8C 00190BEC  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80193C90 00190BF0  41 80 FF 80 */	blt lbl_80193C10
/* 80193C94 00190BF4  80 1E 00 6C */	lwz r0, 0x6c(r30)
/* 80193C98 00190BF8  2C 00 00 02 */	cmpwi r0, 2
/* 80193C9C 00190BFC  41 82 01 20 */	beq lbl_80193DBC
/* 80193CA0 00190C00  40 80 00 14 */	bge lbl_80193CB4
/* 80193CA4 00190C04  2C 00 00 00 */	cmpwi r0, 0
/* 80193CA8 00190C08  41 82 03 EC */	beq lbl_80194094
/* 80193CAC 00190C0C  40 80 00 14 */	bge lbl_80193CC0
/* 80193CB0 00190C10  48 00 03 E4 */	b lbl_80194094
lbl_80193CB4:
/* 80193CB4 00190C14  2C 00 00 04 */	cmpwi r0, 4
/* 80193CB8 00190C18  40 80 03 DC */	bge lbl_80194094
/* 80193CBC 00190C1C  48 00 02 C4 */	b lbl_80193F80
lbl_80193CC0:
/* 80193CC0 00190C20  80 19 00 00 */	lwz r0, 0(r25)
/* 80193CC4 00190C24  7F 7D DB 78 */	mr r29, r27
/* 80193CC8 00190C28  C3 A2 A6 44 */	lfs f29, lbl_805AC364@sda21(r2)
/* 80193CCC 00190C2C  3A E0 00 00 */	li r23, 0
/* 80193CD0 00190C30  90 01 00 68 */	stw r0, 0x68(r1)
lbl_80193CD4:
/* 80193CD4 00190C34  80 1E 00 08 */	lwz r0, 8(r30)
/* 80193CD8 00190C38  7C 17 00 00 */	cmpw r23, r0
/* 80193CDC 00190C3C  40 82 00 0C */	bne lbl_80193CE8
/* 80193CE0 00190C40  7F 44 D3 78 */	mr r4, r26
/* 80193CE4 00190C44  48 00 00 08 */	b lbl_80193CEC
lbl_80193CE8:
/* 80193CE8 00190C48  38 81 00 68 */	addi r4, r1, 0x68
lbl_80193CEC:
/* 80193CEC 00190C4C  7C 17 00 00 */	cmpw r23, r0
/* 80193CF0 00190C50  40 82 00 0C */	bne lbl_80193CFC
/* 80193CF4 00190C54  7F 16 C3 78 */	mr r22, r24
/* 80193CF8 00190C58  48 00 00 08 */	b lbl_80193D00
lbl_80193CFC:
/* 80193CFC 00190C5C  7F 36 CB 78 */	mr r22, r25
lbl_80193D00:
/* 80193D00 00190C60  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80193D04 00190C64  FC 1D 00 00 */	fcmpu cr0, f29, f0
/* 80193D08 00190C68  40 82 00 14 */	bne lbl_80193D1C
/* 80193D0C 00190C6C  38 00 00 00 */	li r0, 0
/* 80193D10 00190C70  38 61 00 3C */	addi r3, r1, 0x3c
/* 80193D14 00190C74  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80193D18 00190C78  48 00 00 14 */	b lbl_80193D2C
lbl_80193D1C:
/* 80193D1C 00190C7C  7F 85 E3 78 */	mr r5, r28
/* 80193D20 00190C80  38 61 00 38 */	addi r3, r1, 0x38
/* 80193D24 00190C84  48 1C F3 8D */	bl Add__6CColorFRC6CColorRC6CColor
/* 80193D28 00190C88  38 61 00 38 */	addi r3, r1, 0x38
lbl_80193D2C:
/* 80193D2C 00190C8C  80 03 00 00 */	lwz r0, 0(r3)
/* 80193D30 00190C90  90 01 00 64 */	stw r0, 0x64(r1)
/* 80193D34 00190C94  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80193D38 00190C98  FC 1D 00 00 */	fcmpu cr0, f29, f0
/* 80193D3C 00190C9C  40 82 00 0C */	bne lbl_80193D48
/* 80193D40 00190CA0  7F 03 C3 78 */	mr r3, r24
/* 80193D44 00190CA4  48 00 00 18 */	b lbl_80193D5C
lbl_80193D48:
/* 80193D48 00190CA8  7E C4 B3 78 */	mr r4, r22
/* 80193D4C 00190CAC  7F 85 E3 78 */	mr r5, r28
/* 80193D50 00190CB0  38 61 00 34 */	addi r3, r1, 0x34
/* 80193D54 00190CB4  48 1C F3 5D */	bl Add__6CColorFRC6CColorRC6CColor
/* 80193D58 00190CB8  38 61 00 34 */	addi r3, r1, 0x34
lbl_80193D5C:
/* 80193D5C 00190CBC  80 03 00 00 */	lwz r0, 0(r3)
/* 80193D60 00190CC0  38 81 00 64 */	addi r4, r1, 0x64
/* 80193D64 00190CC4  90 01 00 60 */	stw r0, 0x60(r1)
/* 80193D68 00190CC8  80 7D 00 04 */	lwz r3, 4(r29)
/* 80193D6C 00190CCC  48 13 6B 01 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80193D70 00190CD0  80 7D 00 00 */	lwz r3, 0(r29)
/* 80193D74 00190CD4  38 81 00 60 */	addi r4, r1, 0x60
/* 80193D78 00190CD8  48 13 6A F5 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80193D7C 00190CDC  80 1E 00 08 */	lwz r0, 8(r30)
/* 80193D80 00190CE0  7C 17 00 00 */	cmpw r23, r0
/* 80193D84 00190CE4  40 82 00 0C */	bne lbl_80193D90
/* 80193D88 00190CE8  C0 02 A6 44 */	lfs f0, lbl_805AC364@sda21(r2)
/* 80193D8C 00190CEC  48 00 00 08 */	b lbl_80193D94
lbl_80193D90:
/* 80193D90 00190CF0  C0 02 A6 40 */	lfs f0, lbl_805AC360@sda21(r2)
lbl_80193D94:
/* 80193D94 00190CF4  3A F7 00 01 */	addi r23, r23, 1
/* 80193D98 00190CF8  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80193D9C 00190CFC  2C 17 00 04 */	cmpwi r23, 4
/* 80193DA0 00190D00  3B BD 00 10 */	addi r29, r29, 0x10
/* 80193DA4 00190D04  3B 9C 00 04 */	addi r28, r28, 4
/* 80193DA8 00190D08  41 80 FF 2C */	blt lbl_80193CD4
/* 80193DAC 00190D0C  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 80193DB0 00190D10  7F 44 D3 78 */	mr r4, r26
/* 80193DB4 00190D14  48 13 6A B9 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80193DB8 00190D18  48 00 02 DC */	b lbl_80194094
lbl_80193DBC:
/* 80193DBC 00190D1C  48 1B 61 F1 */	bl White__6CColorFv
/* 80193DC0 00190D20  C3 82 A6 44 */	lfs f28, lbl_805AC364@sda21(r2)
/* 80193DC4 00190D24  F3 81 A0 09 */	psq_st f28, 9(r1), 1, qr2
/* 80193DC8 00190D28  38 81 00 30 */	addi r4, r1, 0x30
/* 80193DCC 00190D2C  80 63 00 00 */	lwz r3, 0(r3)
/* 80193DD0 00190D30  88 01 00 09 */	lbz r0, 9(r1)
/* 80193DD4 00190D34  50 60 00 2E */	rlwimi r0, r3, 0, 0, 0x17
/* 80193DD8 00190D38  90 01 00 30 */	stw r0, 0x30(r1)
/* 80193DDC 00190D3C  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 80193DE0 00190D40  48 13 6A 8D */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80193DE4 00190D44  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80193DE8 00190D48  C8 42 A6 48 */	lfd f2, lbl_805AC368@sda21(r2)
/* 80193DEC 00190D4C  48 20 0E C1 */	bl fmod
/* 80193DF0 00190D50  FC 20 08 18 */	frsp f1, f1
/* 80193DF4 00190D54  C0 02 A6 50 */	lfs f0, lbl_805AC370@sda21(r2)
/* 80193DF8 00190D58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80193DFC 00190D5C  40 81 00 0C */	ble lbl_80193E08
/* 80193E00 00190D60  7F 44 D3 78 */	mr r4, r26
/* 80193E04 00190D64  48 00 00 08 */	b lbl_80193E0C
lbl_80193E08:
/* 80193E08 00190D68  7F 24 CB 78 */	mr r4, r25
lbl_80193E0C:
/* 80193E0C 00190D6C  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80193E10 00190D70  38 61 00 2C */	addi r3, r1, 0x2c
/* 80193E14 00190D74  54 00 10 3A */	slwi r0, r0, 2
/* 80193E18 00190D78  7C BC 02 14 */	add r5, r28, r0
/* 80193E1C 00190D7C  48 1C F2 95 */	bl Add__6CColorFRC6CColorRC6CColor
/* 80193E20 00190D80  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80193E24 00190D84  38 81 00 5C */	addi r4, r1, 0x5c
/* 80193E28 00190D88  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80193E2C 00190D8C  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80193E30 00190D90  54 03 20 36 */	slwi r3, r0, 4
/* 80193E34 00190D94  38 03 00 04 */	addi r0, r3, 4
/* 80193E38 00190D98  7C 7B 00 2E */	lwzx r3, r27, r0
/* 80193E3C 00190D9C  48 13 6A 31 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80193E40 00190DA0  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80193E44 00190DA4  38 81 00 5C */	addi r4, r1, 0x5c
/* 80193E48 00190DA8  54 00 20 36 */	slwi r0, r0, 4
/* 80193E4C 00190DAC  7C 7B 00 2E */	lwzx r3, r27, r0
/* 80193E50 00190DB0  48 13 6A 1D */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80193E54 00190DB4  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80193E58 00190DB8  7F 24 CB 78 */	mr r4, r25
/* 80193E5C 00190DBC  7F 45 D3 78 */	mr r5, r26
/* 80193E60 00190DC0  38 61 00 28 */	addi r3, r1, 0x28
/* 80193E64 00190DC4  48 1C F4 49 */	bl Lerp__6CColorFRC6CColorRC6CColorf
/* 80193E68 00190DC8  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80193E6C 00190DCC  38 61 00 24 */	addi r3, r1, 0x24
/* 80193E70 00190DD0  38 81 00 58 */	addi r4, r1, 0x58
/* 80193E74 00190DD4  90 01 00 58 */	stw r0, 0x58(r1)
/* 80193E78 00190DD8  80 1E 00 08 */	lwz r0, 8(r30)
/* 80193E7C 00190DDC  54 00 10 3A */	slwi r0, r0, 2
/* 80193E80 00190DE0  7C BC 02 14 */	add r5, r28, r0
/* 80193E84 00190DE4  48 1C F2 2D */	bl Add__6CColorFRC6CColorRC6CColor
/* 80193E88 00190DE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80193E8C 00190DEC  38 81 00 54 */	addi r4, r1, 0x54
/* 80193E90 00190DF0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80193E94 00190DF4  80 1E 00 08 */	lwz r0, 8(r30)
/* 80193E98 00190DF8  54 03 20 36 */	slwi r3, r0, 4
/* 80193E9C 00190DFC  38 03 00 04 */	addi r0, r3, 4
/* 80193EA0 00190E00  7C 7B 00 2E */	lwzx r3, r27, r0
/* 80193EA4 00190E04  48 13 69 C9 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80193EA8 00190E08  80 1E 00 08 */	lwz r0, 8(r30)
/* 80193EAC 00190E0C  7F 04 C3 78 */	mr r4, r24
/* 80193EB0 00190E10  54 00 20 36 */	slwi r0, r0, 4
/* 80193EB4 00190E14  7C 7B 00 2E */	lwzx r3, r27, r0
/* 80193EB8 00190E18  48 13 69 B5 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80193EBC 00190E1C  80 1E 00 08 */	lwz r0, 8(r30)
/* 80193EC0 00190E20  38 60 00 00 */	li r3, 0
/* 80193EC4 00190E24  C0 22 A6 40 */	lfs f1, lbl_805AC360@sda21(r2)
/* 80193EC8 00190E28  7C 03 00 00 */	cmpw r3, r0
/* 80193ECC 00190E2C  40 82 00 10 */	bne lbl_80193EDC
/* 80193ED0 00190E30  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80193ED4 00190E34  EC 01 00 28 */	fsubs f0, f1, f0
/* 80193ED8 00190E38  48 00 00 08 */	b lbl_80193EE0
lbl_80193EDC:
/* 80193EDC 00190E3C  FC 00 08 90 */	fmr f0, f1
lbl_80193EE0:
/* 80193EE0 00190E40  D0 1B 00 08 */	stfs f0, 8(r27)
/* 80193EE4 00190E44  38 60 00 01 */	li r3, 1
/* 80193EE8 00190E48  80 1E 00 08 */	lwz r0, 8(r30)
/* 80193EEC 00190E4C  7C 03 00 00 */	cmpw r3, r0
/* 80193EF0 00190E50  40 82 00 10 */	bne lbl_80193F00
/* 80193EF4 00190E54  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80193EF8 00190E58  EC 01 00 28 */	fsubs f0, f1, f0
/* 80193EFC 00190E5C  48 00 00 08 */	b lbl_80193F04
lbl_80193F00:
/* 80193F00 00190E60  C0 02 A6 40 */	lfs f0, lbl_805AC360@sda21(r2)
lbl_80193F04:
/* 80193F04 00190E64  D0 1B 00 18 */	stfs f0, 0x18(r27)
/* 80193F08 00190E68  38 60 00 02 */	li r3, 2
/* 80193F0C 00190E6C  80 1E 00 08 */	lwz r0, 8(r30)
/* 80193F10 00190E70  7C 03 00 00 */	cmpw r3, r0
/* 80193F14 00190E74  40 82 00 10 */	bne lbl_80193F24
/* 80193F18 00190E78  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80193F1C 00190E7C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80193F20 00190E80  48 00 00 08 */	b lbl_80193F28
lbl_80193F24:
/* 80193F24 00190E84  C0 02 A6 40 */	lfs f0, lbl_805AC360@sda21(r2)
lbl_80193F28:
/* 80193F28 00190E88  D0 1B 00 28 */	stfs f0, 0x28(r27)
/* 80193F2C 00190E8C  38 60 00 03 */	li r3, 3
/* 80193F30 00190E90  80 1E 00 08 */	lwz r0, 8(r30)
/* 80193F34 00190E94  7C 03 00 00 */	cmpw r3, r0
/* 80193F38 00190E98  40 82 00 10 */	bne lbl_80193F48
/* 80193F3C 00190E9C  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80193F40 00190EA0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80193F44 00190EA4  48 00 00 08 */	b lbl_80193F4C
lbl_80193F48:
/* 80193F48 00190EA8  C0 02 A6 40 */	lfs f0, lbl_805AC360@sda21(r2)
lbl_80193F4C:
/* 80193F4C 00190EAC  D0 1B 00 38 */	stfs f0, 0x38(r27)
/* 80193F50 00190EB0  7F 44 D3 78 */	mr r4, r26
/* 80193F54 00190EB4  7F 25 CB 78 */	mr r5, r25
/* 80193F58 00190EB8  38 61 00 20 */	addi r3, r1, 0x20
/* 80193F5C 00190EBC  80 1E 00 08 */	lwz r0, 8(r30)
/* 80193F60 00190EC0  54 06 20 36 */	slwi r6, r0, 4
/* 80193F64 00190EC4  38 06 00 08 */	addi r0, r6, 8
/* 80193F68 00190EC8  7C 3B 04 2E */	lfsx f1, r27, r0
/* 80193F6C 00190ECC  48 1C F3 41 */	bl Lerp__6CColorFRC6CColorRC6CColorf
/* 80193F70 00190ED0  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 80193F74 00190ED4  38 81 00 20 */	addi r4, r1, 0x20
/* 80193F78 00190ED8  48 13 68 F5 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80193F7C 00190EDC  48 00 01 18 */	b lbl_80194094
lbl_80193F80:
/* 80193F80 00190EE0  C3 A2 A6 44 */	lfs f29, lbl_805AC364@sda21(r2)
/* 80193F84 00190EE4  7F 7D DB 78 */	mr r29, r27
/* 80193F88 00190EE8  3A E0 00 00 */	li r23, 0
lbl_80193F8C:
/* 80193F8C 00190EEC  80 1E 00 08 */	lwz r0, 8(r30)
/* 80193F90 00190EF0  7C 17 00 00 */	cmpw r23, r0
/* 80193F94 00190EF4  40 82 00 0C */	bne lbl_80193FA0
/* 80193F98 00190EF8  7F 44 D3 78 */	mr r4, r26
/* 80193F9C 00190EFC  48 00 00 08 */	b lbl_80193FA4
lbl_80193FA0:
/* 80193FA0 00190F00  7F 24 CB 78 */	mr r4, r25
lbl_80193FA4:
/* 80193FA4 00190F04  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80193FA8 00190F08  82 DD 00 04 */	lwz r22, 4(r29)
/* 80193FAC 00190F0C  FC 1D 00 00 */	fcmpu cr0, f29, f0
/* 80193FB0 00190F10  40 82 00 14 */	bne lbl_80193FC4
/* 80193FB4 00190F14  38 00 00 00 */	li r0, 0
/* 80193FB8 00190F18  38 61 00 1C */	addi r3, r1, 0x1c
/* 80193FBC 00190F1C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80193FC0 00190F20  48 00 00 14 */	b lbl_80193FD4
lbl_80193FC4:
/* 80193FC4 00190F24  7F 85 E3 78 */	mr r5, r28
/* 80193FC8 00190F28  38 61 00 18 */	addi r3, r1, 0x18
/* 80193FCC 00190F2C  48 1C F0 E5 */	bl Add__6CColorFRC6CColorRC6CColor
/* 80193FD0 00190F30  38 61 00 18 */	addi r3, r1, 0x18
lbl_80193FD4:
/* 80193FD4 00190F34  80 03 00 00 */	lwz r0, 0(r3)
/* 80193FD8 00190F38  7E C3 B3 78 */	mr r3, r22
/* 80193FDC 00190F3C  38 81 00 50 */	addi r4, r1, 0x50
/* 80193FE0 00190F40  90 01 00 50 */	stw r0, 0x50(r1)
/* 80193FE4 00190F44  48 13 68 89 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80193FE8 00190F48  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80193FEC 00190F4C  38 60 00 00 */	li r3, 0
/* 80193FF0 00190F50  FC 1D 00 00 */	fcmpu cr0, f29, f0
/* 80193FF4 00190F54  41 82 00 10 */	beq lbl_80194004
/* 80193FF8 00190F58  80 1E 00 08 */	lwz r0, 8(r30)
/* 80193FFC 00190F5C  7C 17 00 00 */	cmpw r23, r0
/* 80194000 00190F60  40 82 00 08 */	bne lbl_80194008
lbl_80194004:
/* 80194004 00190F64  38 60 00 01 */	li r3, 1
lbl_80194008:
/* 80194008 00190F68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8019400C 00190F6C  41 82 00 0C */	beq lbl_80194018
/* 80194010 00190F70  7F 03 C3 78 */	mr r3, r24
/* 80194014 00190F74  48 00 00 08 */	b lbl_8019401C
lbl_80194018:
/* 80194018 00190F78  7F 23 CB 78 */	mr r3, r25
lbl_8019401C:
/* 8019401C 00190F7C  80 03 00 00 */	lwz r0, 0(r3)
/* 80194020 00190F80  38 81 00 4C */	addi r4, r1, 0x4c
/* 80194024 00190F84  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80194028 00190F88  80 7D 00 00 */	lwz r3, 0(r29)
/* 8019402C 00190F8C  48 13 68 41 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80194030 00190F90  80 1E 00 08 */	lwz r0, 8(r30)
/* 80194034 00190F94  7C 17 00 00 */	cmpw r23, r0
/* 80194038 00190F98  40 82 00 14 */	bne lbl_8019404C
/* 8019403C 00190F9C  C0 22 A6 40 */	lfs f1, lbl_805AC360@sda21(r2)
/* 80194040 00190FA0  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80194044 00190FA4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80194048 00190FA8  48 00 00 08 */	b lbl_80194050
lbl_8019404C:
/* 8019404C 00190FAC  C0 02 A6 40 */	lfs f0, lbl_805AC360@sda21(r2)
lbl_80194050:
/* 80194050 00190FB0  3A F7 00 01 */	addi r23, r23, 1
/* 80194054 00190FB4  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80194058 00190FB8  2C 17 00 04 */	cmpwi r23, 4
/* 8019405C 00190FBC  3B BD 00 10 */	addi r29, r29, 0x10
/* 80194060 00190FC0  3B 9C 00 04 */	addi r28, r28, 4
/* 80194064 00190FC4  41 80 FF 28 */	blt lbl_80193F8C
/* 80194068 00190FC8  80 1E 00 08 */	lwz r0, 8(r30)
/* 8019406C 00190FCC  7F 44 D3 78 */	mr r4, r26
/* 80194070 00190FD0  7F 25 CB 78 */	mr r5, r25
/* 80194074 00190FD4  38 61 00 14 */	addi r3, r1, 0x14
/* 80194078 00190FD8  54 06 20 36 */	slwi r6, r0, 4
/* 8019407C 00190FDC  38 06 00 08 */	addi r0, r6, 8
/* 80194080 00190FE0  7C 3B 04 2E */	lfsx f1, r27, r0
/* 80194084 00190FE4  48 1C F2 29 */	bl Lerp__6CColorFRC6CColorRC6CColorf
/* 80194088 00190FE8  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 8019408C 00190FEC  38 81 00 14 */	addi r4, r1, 0x14
/* 80194090 00190FF0  48 13 67 DD */	bl SetColor__10CGuiWidgetFRC6CColor
lbl_80194094:
/* 80194094 00190FF4  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 80194098 00190FF8  C0 02 A6 44 */	lfs f0, lbl_805AC364@sda21(r2)
/* 8019409C 00190FFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801940A0 00191000  40 81 00 64 */	ble lbl_80194104
/* 801940A4 00191004  EC 21 F0 28 */	fsubs f1, f1, f30
/* 801940A8 00191008  C0 0D 8F 9C */	lfs f0, lbl_805A7B5C@sda21(r13)
/* 801940AC 0019100C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801940B0 00191010  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 801940B4 00191014  40 80 00 0C */	bge lbl_801940C0
/* 801940B8 00191018  38 61 00 10 */	addi r3, r1, 0x10
/* 801940BC 0019101C  48 00 00 08 */	b lbl_801940C4
lbl_801940C0:
/* 801940C0 00191020  38 6D 8F 9C */	addi r3, r13, lbl_805A7B5C@sda21
lbl_801940C4:
/* 801940C4 00191024  C0 03 00 00 */	lfs f0, 0(r3)
/* 801940C8 00191028  D0 1E 00 78 */	stfs f0, 0x78(r30)
/* 801940CC 0019102C  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 801940D0 00191030  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 801940D4 00191034  EF 81 00 24 */	fdivs f28, f1, f0
/* 801940D8 00191038  48 1B 5E D5 */	bl White__6CColorFv
/* 801940DC 0019103C  C0 02 A6 54 */	lfs f0, lbl_805AC374@sda21(r2)
/* 801940E0 00191040  EF E0 07 32 */	fmuls f31, f0, f28
/* 801940E4 00191044  F3 E1 A0 08 */	psq_st f31, 8(r1), 1, qr2
/* 801940E8 00191048  38 81 00 0C */	addi r4, r1, 0xc
/* 801940EC 0019104C  80 63 00 00 */	lwz r3, 0(r3)
/* 801940F0 00191050  88 01 00 08 */	lbz r0, 8(r1)
/* 801940F4 00191054  50 60 00 2E */	rlwimi r0, r3, 0, 0, 0x17
/* 801940F8 00191058  90 01 00 0C */	stw r0, 0xc(r1)
/* 801940FC 0019105C  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 80194100 00191060  48 13 67 6D */	bl SetColor__10CGuiWidgetFRC6CColor
lbl_80194104:
/* 80194104 00191064  88 1E 00 14 */	lbz r0, 0x14(r30)
/* 80194108 00191068  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8019410C 0019106C  40 82 00 0C */	bne lbl_80194118
/* 80194110 00191070  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80194114 00191074  41 82 00 5C */	beq lbl_80194170
lbl_80194118:
/* 80194118 00191078  88 1E 00 14 */	lbz r0, 0x14(r30)
/* 8019411C 0019107C  38 60 00 00 */	li r3, 0
/* 80194120 00191080  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 80194124 00191084  7F 76 DB 78 */	mr r22, r27
/* 80194128 00191088  98 1E 00 14 */	stb r0, 0x14(r30)
/* 8019412C 0019108C  3A E0 00 00 */	li r23, 0
lbl_80194130:
/* 80194130 00191090  80 B6 00 04 */	lwz r5, 4(r22)
/* 80194134 00191094  7F C3 F3 78 */	mr r3, r30
/* 80194138 00191098  C0 36 00 08 */	lfs f1, 8(r22)
/* 8019413C 0019109C  7E E4 BB 78 */	mr r4, r23
/* 80194140 001910A0  4B FF F6 79 */	bl UpdateMenuWidgetTransform__17CHudVisorBeamMenuFiR10CGuiWidgetf
/* 80194144 001910A4  3A F7 00 01 */	addi r23, r23, 1
/* 80194148 001910A8  3A D6 00 10 */	addi r22, r22, 0x10
/* 8019414C 001910AC  2C 17 00 04 */	cmpwi r23, 4
/* 80194150 001910B0  41 80 FF E0 */	blt lbl_80194130
/* 80194154 001910B4  80 9E 00 08 */	lwz r4, 8(r30)
/* 80194158 001910B8  7F C3 F3 78 */	mr r3, r30
/* 8019415C 001910BC  80 BE 00 24 */	lwz r5, 0x24(r30)
/* 80194160 001910C0  54 80 20 36 */	slwi r0, r4, 4
/* 80194164 001910C4  7C DB 02 14 */	add r6, r27, r0
/* 80194168 001910C8  C0 26 00 08 */	lfs f1, 8(r6)
/* 8019416C 001910CC  4B FF F6 4D */	bl UpdateMenuWidgetTransform__17CHudVisorBeamMenuFiR10CGuiWidgetf
lbl_80194170:
/* 80194170 001910D0  88 7E 00 14 */	lbz r3, 0x14(r30)
/* 80194174 001910D4  38 80 00 00 */	li r4, 0
/* 80194178 001910D8  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 8019417C 001910DC  41 82 00 10 */	beq lbl_8019418C
/* 80194180 001910E0  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 80194184 001910E4  41 82 00 08 */	beq lbl_8019418C
/* 80194188 001910E8  38 80 00 01 */	li r4, 1
lbl_8019418C:
/* 8019418C 001910EC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80194190 001910F0  40 82 00 5C */	bne lbl_801941EC
/* 80194194 001910F4  80 A1 00 7C */	lwz r5, 0x7c(r1)
/* 80194198 001910F8  38 60 00 00 */	li r3, 0
/* 8019419C 001910FC  2C 05 00 00 */	cmpwi r5, 0
/* 801941A0 00191100  40 81 00 40 */	ble lbl_801941E0
/* 801941A4 00191104  2C 05 00 08 */	cmpwi r5, 8
/* 801941A8 00191108  38 85 FF F8 */	addi r4, r5, -8
/* 801941AC 0019110C  40 81 00 20 */	ble lbl_801941CC
/* 801941B0 00191110  38 04 00 07 */	addi r0, r4, 7
/* 801941B4 00191114  54 00 E8 FE */	srwi r0, r0, 3
/* 801941B8 00191118  7C 09 03 A6 */	mtctr r0
/* 801941BC 0019111C  2C 04 00 00 */	cmpwi r4, 0
/* 801941C0 00191120  40 81 00 0C */	ble lbl_801941CC
lbl_801941C4:
/* 801941C4 00191124  38 63 00 08 */	addi r3, r3, 8
/* 801941C8 00191128  42 00 FF FC */	bdnz lbl_801941C4
lbl_801941CC:
/* 801941CC 0019112C  7C 03 28 50 */	subf r0, r3, r5
/* 801941D0 00191130  7C 09 03 A6 */	mtctr r0
/* 801941D4 00191134  7C 03 28 00 */	cmpw r3, r5
/* 801941D8 00191138  40 80 00 08 */	bge lbl_801941E0
lbl_801941DC:
/* 801941DC 0019113C  42 00 00 00 */	bdnz lbl_801941DC
lbl_801941E0:
/* 801941E0 00191140  38 00 00 00 */	li r0, 0
/* 801941E4 00191144  90 01 00 7C */	stw r0, 0x7c(r1)
/* 801941E8 00191148  48 00 00 BC */	b lbl_801942A4
lbl_801941EC:
/* 801941EC 0019114C  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 801941F0 00191150  88 03 00 AB */	lbz r0, 0xab(r3)
/* 801941F4 00191154  28 00 00 00 */	cmplwi r0, 0
/* 801941F8 00191158  41 82 00 14 */	beq lbl_8019420C
/* 801941FC 0019115C  38 80 00 01 */	li r4, 1
/* 80194200 00191160  38 A0 00 01 */	li r5, 1
/* 80194204 00191164  48 13 64 E5 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 80194208 00191168  48 00 00 10 */	b lbl_80194218
lbl_8019420C:
/* 8019420C 0019116C  38 80 00 00 */	li r4, 0
/* 80194210 00191170  38 A0 00 01 */	li r5, 1
/* 80194214 00191174  48 13 64 D5 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
lbl_80194218:
/* 80194218 00191178  3A C0 00 00 */	li r22, 0
lbl_8019421C:
/* 8019421C 0019117C  80 7B 00 04 */	lwz r3, 4(r27)
/* 80194220 00191180  88 03 00 AB */	lbz r0, 0xab(r3)
/* 80194224 00191184  28 00 00 00 */	cmplwi r0, 0
/* 80194228 00191188  41 82 00 10 */	beq lbl_80194238
/* 8019422C 0019118C  38 80 00 01 */	li r4, 1
/* 80194230 00191190  48 13 63 FD */	bl SetIsVisible__10CGuiWidgetFb
/* 80194234 00191194  48 00 00 0C */	b lbl_80194240
lbl_80194238:
/* 80194238 00191198  38 80 00 00 */	li r4, 0
/* 8019423C 0019119C  48 13 63 F1 */	bl SetIsVisible__10CGuiWidgetFb
lbl_80194240:
/* 80194240 001911A0  3A D6 00 01 */	addi r22, r22, 1
/* 80194244 001911A4  3B 7B 00 10 */	addi r27, r27, 0x10
/* 80194248 001911A8  2C 16 00 04 */	cmpwi r22, 4
/* 8019424C 001911AC  41 80 FF D0 */	blt lbl_8019421C
/* 80194250 001911B0  80 A1 00 7C */	lwz r5, 0x7c(r1)
/* 80194254 001911B4  38 60 00 00 */	li r3, 0
/* 80194258 001911B8  2C 05 00 00 */	cmpwi r5, 0
/* 8019425C 001911BC  40 81 00 40 */	ble lbl_8019429C
/* 80194260 001911C0  2C 05 00 08 */	cmpwi r5, 8
/* 80194264 001911C4  38 85 FF F8 */	addi r4, r5, -8
/* 80194268 001911C8  40 81 00 20 */	ble lbl_80194288
/* 8019426C 001911CC  38 04 00 07 */	addi r0, r4, 7
/* 80194270 001911D0  54 00 E8 FE */	srwi r0, r0, 3
/* 80194274 001911D4  7C 09 03 A6 */	mtctr r0
/* 80194278 001911D8  2C 04 00 00 */	cmpwi r4, 0
/* 8019427C 001911DC  40 81 00 0C */	ble lbl_80194288
lbl_80194280:
/* 80194280 001911E0  38 63 00 08 */	addi r3, r3, 8
/* 80194284 001911E4  42 00 FF FC */	bdnz lbl_80194280
lbl_80194288:
/* 80194288 001911E8  7C 03 28 50 */	subf r0, r3, r5
/* 8019428C 001911EC  7C 09 03 A6 */	mtctr r0
/* 80194290 001911F0  7C 03 28 00 */	cmpw r3, r5
/* 80194294 001911F4  40 80 00 08 */	bge lbl_8019429C
lbl_80194298:
/* 80194298 001911F8  42 00 00 00 */	bdnz lbl_80194298
lbl_8019429C:
/* 8019429C 001911FC  38 00 00 00 */	li r0, 0
/* 801942A0 00191200  90 01 00 7C */	stw r0, 0x7c(r1)
lbl_801942A4:
/* 801942A4 00191204  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, qr0
/* 801942A8 00191208  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 801942AC 0019120C  E3 C1 00 E8 */	psq_l f30, 232(r1), 0, qr0
/* 801942B0 00191210  CB C1 00 E0 */	lfd f30, 0xe0(r1)
/* 801942B4 00191214  E3 A1 00 D8 */	psq_l f29, 216(r1), 0, qr0
/* 801942B8 00191218  CB A1 00 D0 */	lfd f29, 0xd0(r1)
/* 801942BC 0019121C  E3 81 00 C8 */	psq_l f28, 200(r1), 0, qr0
/* 801942C0 00191220  CB 81 00 C0 */	lfd f28, 0xc0(r1)
/* 801942C4 00191224  BA C1 00 98 */	lmw r22, 0x98(r1)
/* 801942C8 00191228  80 01 01 04 */	lwz r0, 0x104(r1)
/* 801942CC 0019122C  7C 08 03 A6 */	mtlr r0
/* 801942D0 00191230  38 21 01 00 */	addi r1, r1, 0x100
/* 801942D4 00191234  4E 80 00 20 */	blr

.global UpdateHudAlpha__17CHudVisorBeamMenuFf
UpdateHudAlpha__17CHudVisorBeamMenuFf:
/* 801942D8 00191238  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801942DC 0019123C  7C 08 02 A6 */	mflr r0
/* 801942E0 00191240  90 01 00 54 */	stw r0, 0x54(r1)
/* 801942E4 00191244  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 801942E8 00191248  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 801942EC 0019124C  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 801942F0 00191250  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 801942F4 00191254  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 801942F8 00191258  F3 A1 00 28 */	psq_st f29, 40(r1), 0, qr0
/* 801942FC 0019125C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80194300 00191260  FF A0 08 90 */	fmr f29, f1
/* 80194304 00191264  80 8D A0 80 */	lwz r4, gpGameState@sda21(r13)
/* 80194308 00191268  7C 7F 1B 78 */	mr r31, r3
/* 8019430C 0019126C  38 64 01 7C */	addi r3, r4, 0x17c
/* 80194310 00191270  48 07 AA 65 */	bl GetHudAlpha__12CGameOptionsCFv
/* 80194314 00191274  FF E0 08 90 */	fmr f31, f1
/* 80194318 00191278  48 1B 5C 95 */	bl White__6CColorFv
/* 8019431C 0019127C  EC 1D 07 F2 */	fmuls f0, f29, f31
/* 80194320 00191280  C0 22 A6 54 */	lfs f1, lbl_805AC374@sda21(r2)
/* 80194324 00191284  EF C1 00 32 */	fmuls f30, f1, f0
/* 80194328 00191288  F3 C1 A0 08 */	psq_st f30, 8(r1), 1, qr2
/* 8019432C 0019128C  38 81 00 0C */	addi r4, r1, 0xc
/* 80194330 00191290  80 63 00 00 */	lwz r3, 0(r3)
/* 80194334 00191294  88 01 00 08 */	lbz r0, 8(r1)
/* 80194338 00191298  50 60 00 2E */	rlwimi r0, r3, 0, 0, 0x17
/* 8019433C 0019129C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80194340 001912A0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 80194344 001912A4  48 13 65 29 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80194348 001912A8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 8019434C 001912AC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80194350 001912B0  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 80194354 001912B4  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80194358 001912B8  E3 A1 00 28 */	psq_l f29, 40(r1), 0, qr0
/* 8019435C 001912BC  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 80194360 001912C0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80194364 001912C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80194368 001912C8  7C 08 03 A6 */	mtlr r0
/* 8019436C 001912CC  38 21 00 50 */	addi r1, r1, 0x50
/* 80194370 001912D0  4E 80 00 20 */	blr

.global "SetPlayerHas__17CHudVisorBeamMenuFRCQ24rstl20reserved_vector<b,4>"
"SetPlayerHas__17CHudVisorBeamMenuFRCQ24rstl20reserved_vector<b,4>":
/* 80194374 001912D4  C0 42 A6 44 */	lfs f2, lbl_805AC364@sda21(r2)
/* 80194378 001912D8  C0 23 00 38 */	lfs f1, 0x38(r3)
/* 8019437C 001912DC  C0 02 A6 58 */	lfs f0, lbl_805AC378@sda21(r2)
/* 80194380 001912E0  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 80194384 001912E4  40 82 00 14 */	bne lbl_80194398
/* 80194388 001912E8  88 04 00 04 */	lbz r0, 4(r4)
/* 8019438C 001912EC  28 00 00 00 */	cmplwi r0, 0
/* 80194390 001912F0  41 82 00 08 */	beq lbl_80194398
/* 80194394 001912F4  D0 03 00 38 */	stfs f0, 0x38(r3)
lbl_80194398:
/* 80194398 001912F8  C0 23 00 48 */	lfs f1, 0x48(r3)
/* 8019439C 001912FC  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 801943A0 00191300  40 82 00 14 */	bne lbl_801943B4
/* 801943A4 00191304  88 04 00 05 */	lbz r0, 5(r4)
/* 801943A8 00191308  28 00 00 00 */	cmplwi r0, 0
/* 801943AC 0019130C  41 82 00 08 */	beq lbl_801943B4
/* 801943B0 00191310  D0 03 00 48 */	stfs f0, 0x48(r3)
lbl_801943B4:
/* 801943B4 00191314  C0 23 00 58 */	lfs f1, 0x58(r3)
/* 801943B8 00191318  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 801943BC 0019131C  40 82 00 14 */	bne lbl_801943D0
/* 801943C0 00191320  88 04 00 06 */	lbz r0, 6(r4)
/* 801943C4 00191324  28 00 00 00 */	cmplwi r0, 0
/* 801943C8 00191328  41 82 00 08 */	beq lbl_801943D0
/* 801943CC 0019132C  D0 03 00 58 */	stfs f0, 0x58(r3)
lbl_801943D0:
/* 801943D0 00191330  C0 23 00 68 */	lfs f1, 0x68(r3)
/* 801943D4 00191334  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 801943D8 00191338  4C 82 00 20 */	bnelr
/* 801943DC 0019133C  88 04 00 07 */	lbz r0, 7(r4)
/* 801943E0 00191340  28 00 00 00 */	cmplwi r0, 0
/* 801943E4 00191344  4D 82 00 20 */	beqlr
/* 801943E8 00191348  D0 03 00 68 */	stfs f0, 0x68(r3)
/* 801943EC 0019134C  4E 80 00 20 */	blr

.global SetSelection__17CHudVisorBeamMenuFiif
SetSelection__17CHudVisorBeamMenuFiif:
/* 801943F0 00191350  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801943F4 00191354  7C 08 02 A6 */	mflr r0
/* 801943F8 00191358  90 01 00 44 */	stw r0, 0x44(r1)
/* 801943FC 0019135C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80194400 00191360  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 80194404 00191364  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80194408 00191368  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8019440C 0019136C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80194410 00191370  7C 7D 1B 78 */	mr r29, r3
/* 80194414 00191374  7C 9E 23 78 */	mr r30, r4
/* 80194418 00191378  80 03 00 08 */	lwz r0, 8(r3)
/* 8019441C 0019137C  FF E0 08 90 */	fmr f31, f1
/* 80194420 00191380  7C BF 2B 78 */	mr r31, r5
/* 80194424 00191384  7C 00 F0 00 */	cmpw r0, r30
/* 80194428 00191388  40 82 00 1C */	bne lbl_80194444
/* 8019442C 0019138C  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 80194430 00191390  7C 00 F8 00 */	cmpw r0, r31
/* 80194434 00191394  40 82 00 10 */	bne lbl_80194444
/* 80194438 00191398  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 8019443C 0019139C  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 80194440 001913A0  41 82 01 0C */	beq lbl_8019454C
lbl_80194444:
/* 80194444 001913A4  7C 1F F0 00 */	cmpw r31, r30
/* 80194448 001913A8  41 82 00 4C */	beq lbl_80194494
/* 8019444C 001913AC  80 1D 00 6C */	lwz r0, 0x6c(r29)
/* 80194450 001913B0  2C 00 00 02 */	cmpwi r0, 2
/* 80194454 001913B4  41 82 00 34 */	beq lbl_80194488
/* 80194458 001913B8  80 1D 00 04 */	lwz r0, 4(r29)
/* 8019445C 001913BC  38 82 A6 3C */	addi r4, r2, lbl_805AC35C@sda21
/* 80194460 001913C0  A9 02 C5 FA */	lha r8, kMedPriority__11CSfxManager@sda21(r2)
/* 80194464 001913C4  38 61 00 08 */	addi r3, r1, 8
/* 80194468 001913C8  54 00 08 3C */	slwi r0, r0, 1
/* 8019446C 001913CC  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 80194470 001913D0  7C 84 02 2E */	lhzx r4, r4, r0
/* 80194474 001913D4  38 A0 00 7F */	li r5, 0x7f
/* 80194478 001913D8  38 C0 00 40 */	li r6, 0x40
/* 8019447C 001913DC  38 E0 00 00 */	li r7, 0
/* 80194480 001913E0  39 20 00 00 */	li r9, 0
/* 80194484 001913E4  48 15 58 F1 */	bl SfxStart__11CSfxManagerFUsssbsbi
lbl_80194488:
/* 80194488 001913E8  38 00 00 02 */	li r0, 2
/* 8019448C 001913EC  90 1D 00 6C */	stw r0, 0x6c(r29)
/* 80194490 001913F0  48 00 00 A0 */	b lbl_80194530
lbl_80194494:
/* 80194494 001913F4  C0 02 A6 40 */	lfs f0, lbl_805AC360@sda21(r2)
/* 80194498 001913F8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8019449C 001913FC  40 80 00 78 */	bge lbl_80194514
/* 801944A0 00191400  38 00 00 03 */	li r0, 3
/* 801944A4 00191404  3C 60 80 3D */	lis r3, lbl_803D0E38@ha
/* 801944A8 00191408  90 1D 00 6C */	stw r0, 0x6c(r29)
/* 801944AC 0019140C  38 83 0E 38 */	addi r4, r3, lbl_803D0E38@l
/* 801944B0 00191410  80 7D 00 04 */	lwz r3, 4(r29)
/* 801944B4 00191414  80 1D 00 08 */	lwz r0, 8(r29)
/* 801944B8 00191418  54 65 20 36 */	slwi r5, r3, 4
/* 801944BC 0019141C  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 801944C0 00191420  7C 84 2A 14 */	add r4, r4, r5
/* 801944C4 00191424  54 00 10 3A */	slwi r0, r0, 2
/* 801944C8 00191428  7C 84 00 2E */	lwzx r4, r4, r0
/* 801944CC 0019142C  48 1C 22 31 */	bl GetString__12CStringTableCFi
/* 801944D0 00191430  7C 64 1B 78 */	mr r4, r3
/* 801944D4 00191434  38 61 00 0C */	addi r3, r1, 0xc
/* 801944D8 00191438  4B E8 15 19 */	bl wstring_l__4rstlFPCw
/* 801944DC 0019143C  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 801944E0 00191440  38 81 00 0C */	addi r4, r1, 0xc
/* 801944E4 00191444  38 A0 00 00 */	li r5, 0
/* 801944E8 00191448  38 63 00 D4 */	addi r3, r3, 0xd4
/* 801944EC 0019144C  48 13 53 99 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 801944F0 00191450  38 61 00 0C */	addi r3, r1, 0xc
/* 801944F4 00191454  48 1A 8C 41 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 801944F8 00191458  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 801944FC 0019145C  38 80 00 01 */	li r4, 1
/* 80194500 00191460  C0 22 A6 5C */	lfs f1, lbl_805AC37C@sda21(r2)
/* 80194504 00191464  C0 42 A6 60 */	lfs f2, lbl_805AC380@sda21(r2)
/* 80194508 00191468  38 63 00 D4 */	addi r3, r3, 0xd4
/* 8019450C 0019146C  48 13 3C 0D */	bl SetTypeWriteEffectOptions__15CGuiTextSupportFbff
/* 80194510 00191470  48 00 00 20 */	b lbl_80194530
lbl_80194514:
/* 80194514 00191474  80 1D 00 6C */	lwz r0, 0x6c(r29)
/* 80194518 00191478  2C 00 00 01 */	cmpwi r0, 1
/* 8019451C 0019147C  41 82 00 0C */	beq lbl_80194528
/* 80194520 00191480  C0 1D 00 7C */	lfs f0, 0x7c(r29)
/* 80194524 00191484  D0 1D 00 78 */	stfs f0, 0x78(r29)
lbl_80194528:
/* 80194528 00191488  38 00 00 01 */	li r0, 1
/* 8019452C 0019148C  90 1D 00 6C */	stw r0, 0x6c(r29)
lbl_80194530:
/* 80194530 00191490  88 1D 00 14 */	lbz r0, 0x14(r29)
/* 80194534 00191494  38 60 00 01 */	li r3, 1
/* 80194538 00191498  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8019453C 0019149C  98 1D 00 14 */	stb r0, 0x14(r29)
/* 80194540 001914A0  93 DD 00 08 */	stw r30, 8(r29)
/* 80194544 001914A4  93 FD 00 0C */	stw r31, 0xc(r29)
/* 80194548 001914A8  D3 FD 00 10 */	stfs f31, 0x10(r29)
lbl_8019454C:
/* 8019454C 001914AC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 80194550 001914B0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80194554 001914B4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80194558 001914B8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8019455C 001914BC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80194560 001914C0  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80194564 001914C4  7C 08 03 A6 */	mtlr r0
/* 80194568 001914C8  38 21 00 40 */	addi r1, r1, 0x40
/* 8019456C 001914CC  4E 80 00 20 */	blr

.global "__ct__17CHudVisorBeamMenuFR9CGuiFrameQ217CHudVisorBeamMenu14EVisorBeamMenuRCQ24rstl20reserved_vector<b,4>"
"__ct__17CHudVisorBeamMenuFR9CGuiFrameQ217CHudVisorBeamMenu14EVisorBeamMenuRCQ24rstl20reserved_vector<b,4>":
/* 80194570 001914D0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80194574 001914D4  7C 08 02 A6 */	mflr r0
/* 80194578 001914D8  90 01 00 64 */	stw r0, 0x64(r1)
/* 8019457C 001914DC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80194580 001914E0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 80194584 001914E4  BE E1 00 2C */	stmw r23, 0x2c(r1)
/* 80194588 001914E8  7C 9D 23 78 */	mr r29, r4
/* 8019458C 001914EC  7C 7C 1B 78 */	mr r28, r3
/* 80194590 001914F0  93 A3 00 00 */	stw r29, 0(r3)
/* 80194594 001914F4  38 E0 00 00 */	li r7, 0
/* 80194598 001914F8  C0 22 A6 40 */	lfs f1, lbl_805AC360@sda21(r2)
/* 8019459C 001914FC  38 80 00 01 */	li r4, 1
/* 801945A0 00191500  90 A3 00 04 */	stw r5, 4(r3)
/* 801945A4 00191504  35 1C 00 2C */	addic. r8, r28, 0x2c
/* 801945A8 00191508  38 00 00 04 */	li r0, 4
/* 801945AC 0019150C  C0 02 A6 44 */	lfs f0, lbl_805AC364@sda21(r2)
/* 801945B0 00191510  90 E3 00 08 */	stw r7, 8(r3)
/* 801945B4 00191514  7C DE 33 78 */	mr r30, r6
/* 801945B8 00191518  90 E3 00 0C */	stw r7, 0xc(r3)
/* 801945BC 0019151C  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 801945C0 00191520  88 63 00 14 */	lbz r3, 0x14(r3)
/* 801945C4 00191524  50 83 3E 30 */	rlwimi r3, r4, 7, 0x18, 0x18
/* 801945C8 00191528  98 7C 00 14 */	stb r3, 0x14(r28)
/* 801945CC 0019152C  88 7C 00 14 */	lbz r3, 0x14(r28)
/* 801945D0 00191530  50 83 36 72 */	rlwimi r3, r4, 6, 0x19, 0x19
/* 801945D4 00191534  98 7C 00 14 */	stb r3, 0x14(r28)
/* 801945D8 00191538  88 7C 00 14 */	lbz r3, 0x14(r28)
/* 801945DC 0019153C  50 83 2E B4 */	rlwimi r3, r4, 5, 0x1a, 0x1a
/* 801945E0 00191540  98 7C 00 14 */	stb r3, 0x14(r28)
/* 801945E4 00191544  90 1C 00 28 */	stw r0, 0x28(r28)
/* 801945E8 00191548  41 82 00 14 */	beq lbl_801945FC
/* 801945EC 0019154C  90 E8 00 00 */	stw r7, 0(r8)
/* 801945F0 00191550  90 E8 00 04 */	stw r7, 4(r8)
/* 801945F4 00191554  D0 08 00 08 */	stfs f0, 8(r8)
/* 801945F8 00191558  D0 08 00 0C */	stfs f0, 0xc(r8)
lbl_801945FC:
/* 801945FC 0019155C  35 08 00 10 */	addic. r8, r8, 0x10
/* 80194600 00191560  41 82 00 14 */	beq lbl_80194614
/* 80194604 00191564  90 E8 00 00 */	stw r7, 0(r8)
/* 80194608 00191568  90 E8 00 04 */	stw r7, 4(r8)
/* 8019460C 0019156C  D0 08 00 08 */	stfs f0, 8(r8)
/* 80194610 00191570  D0 08 00 0C */	stfs f0, 0xc(r8)
lbl_80194614:
/* 80194614 00191574  35 08 00 10 */	addic. r8, r8, 0x10
/* 80194618 00191578  41 82 00 14 */	beq lbl_8019462C
/* 8019461C 0019157C  90 E8 00 00 */	stw r7, 0(r8)
/* 80194620 00191580  90 E8 00 04 */	stw r7, 4(r8)
/* 80194624 00191584  D0 08 00 08 */	stfs f0, 8(r8)
/* 80194628 00191588  D0 08 00 0C */	stfs f0, 0xc(r8)
lbl_8019462C:
/* 8019462C 0019158C  35 08 00 10 */	addic. r8, r8, 0x10
/* 80194630 00191590  41 82 00 14 */	beq lbl_80194644
/* 80194634 00191594  90 E8 00 00 */	stw r7, 0(r8)
/* 80194638 00191598  90 E8 00 04 */	stw r7, 4(r8)
/* 8019463C 0019159C  D0 08 00 08 */	stfs f0, 8(r8)
/* 80194640 001915A0  D0 08 00 0C */	stfs f0, 0xc(r8)
lbl_80194644:
/* 80194644 001915A4  38 00 00 01 */	li r0, 1
/* 80194648 001915A8  C0 22 A6 58 */	lfs f1, lbl_805AC378@sda21(r2)
/* 8019464C 001915AC  90 1C 00 6C */	stw r0, 0x6c(r28)
/* 80194650 001915B0  C0 02 A6 44 */	lfs f0, lbl_805AC364@sda21(r2)
/* 80194654 001915B4  D0 3C 00 70 */	stfs f1, 0x70(r28)
/* 80194658 001915B8  D0 3C 00 74 */	stfs f1, 0x74(r28)
/* 8019465C 001915BC  D0 1C 00 78 */	stfs f0, 0x78(r28)
/* 80194660 001915C0  80 6D A1 38 */	lwz r3, gpTweakGui@sda21(r13)
/* 80194664 001915C4  C0 03 00 C0 */	lfs f0, 0xc0(r3)
/* 80194668 001915C8  D0 1C 00 7C */	stfs f0, 0x7c(r28)
/* 8019466C 001915CC  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 80194670 001915D0  88 1C 00 80 */	lbz r0, 0x80(r28)
/* 80194674 001915D4  88 63 01 E4 */	lbz r3, 0x1e4(r3)
/* 80194678 001915D8  50 60 1E 30 */	rlwimi r0, r3, 3, 0x18, 0x18
/* 8019467C 001915DC  98 1C 00 80 */	stb r0, 0x80(r28)
/* 80194680 001915E0  88 1C 00 80 */	lbz r0, 0x80(r28)
/* 80194684 001915E4  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80194688 001915E8  41 82 00 10 */	beq lbl_80194698
/* 8019468C 001915EC  80 1C 00 04 */	lwz r0, 4(r28)
/* 80194690 001915F0  20 00 00 01 */	subfic r0, r0, 1
/* 80194694 001915F4  48 00 00 08 */	b lbl_8019469C
lbl_80194698:
/* 80194698 001915F8  80 1C 00 04 */	lwz r0, 4(r28)
lbl_8019469C:
/* 8019469C 001915FC  54 00 10 3A */	slwi r0, r0, 2
/* 801946A0 00191600  38 62 A6 08 */	addi r3, r2, lbl_805AC328@sda21
/* 801946A4 00191604  7C 83 00 2E */	lwzx r4, r3, r0
/* 801946A8 00191608  7F A3 EB 78 */	mr r3, r29
/* 801946AC 0019160C  48 12 DA A9 */	bl FindWidget__9CGuiFrameCFPCc
/* 801946B0 00191610  90 7C 00 20 */	stw r3, 0x20(r28)
/* 801946B4 00191614  88 1C 00 80 */	lbz r0, 0x80(r28)
/* 801946B8 00191618  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801946BC 0019161C  41 82 00 10 */	beq lbl_801946CC
/* 801946C0 00191620  80 1C 00 04 */	lwz r0, 4(r28)
/* 801946C4 00191624  20 00 00 01 */	subfic r0, r0, 1
/* 801946C8 00191628  48 00 00 08 */	b lbl_801946D0
lbl_801946CC:
/* 801946CC 0019162C  80 1C 00 04 */	lwz r0, 4(r28)
lbl_801946D0:
/* 801946D0 00191630  54 00 10 3A */	slwi r0, r0, 2
/* 801946D4 00191634  38 62 A6 10 */	addi r3, r2, lbl_805AC330@sda21
/* 801946D8 00191638  7C 83 00 2E */	lwzx r4, r3, r0
/* 801946DC 0019163C  7F A3 EB 78 */	mr r3, r29
/* 801946E0 00191640  48 12 DA 75 */	bl FindWidget__9CGuiFrameCFPCc
/* 801946E4 00191644  90 7C 00 1C */	stw r3, 0x1c(r28)
/* 801946E8 00191648  88 1C 00 80 */	lbz r0, 0x80(r28)
/* 801946EC 0019164C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801946F0 00191650  41 82 00 10 */	beq lbl_80194700
/* 801946F4 00191654  80 1C 00 04 */	lwz r0, 4(r28)
/* 801946F8 00191658  20 00 00 01 */	subfic r0, r0, 1
/* 801946FC 0019165C  48 00 00 08 */	b lbl_80194704
lbl_80194700:
/* 80194700 00191660  80 1C 00 04 */	lwz r0, 4(r28)
lbl_80194704:
/* 80194704 00191664  54 00 10 3A */	slwi r0, r0, 2
/* 80194708 00191668  38 62 A6 00 */	addi r3, r2, lbl_805AC320@sda21
/* 8019470C 0019166C  7C 83 00 2E */	lwzx r4, r3, r0
/* 80194710 00191670  7F A3 EB 78 */	mr r3, r29
/* 80194714 00191674  48 12 DA 41 */	bl FindWidget__9CGuiFrameCFPCc
/* 80194718 00191678  90 7C 00 18 */	stw r3, 0x18(r28)
/* 8019471C 0019167C  3C 60 80 3D */	lis r3, lbl_803D0E58@ha
/* 80194720 00191680  38 63 0E 58 */	addi r3, r3, lbl_803D0E58@l
/* 80194724 00191684  80 1C 00 04 */	lwz r0, 4(r28)
/* 80194728 00191688  38 63 00 A7 */	addi r3, r3, 0xa7
/* 8019472C 0019168C  2C 00 00 00 */	cmpwi r0, 0
/* 80194730 00191690  40 82 00 0C */	bne lbl_8019473C
/* 80194734 00191694  80 82 A6 18 */	lwz r4, lbl_805AC338@sda21(r2)
/* 80194738 00191698  48 00 00 08 */	b lbl_80194740
lbl_8019473C:
/* 8019473C 0019169C  80 82 A6 1C */	lwz r4, lbl_805AC33C@sda21(r2)
lbl_80194740:
/* 80194740 001916A0  80 A2 A6 28 */	lwz r5, lbl_805AC348@sda21(r2)
/* 80194744 001916A4  4C C6 31 82 */	crclr 6
/* 80194748 001916A8  48 14 1A 69 */	bl Stringize__7CBasicsFPCce
/* 8019474C 001916AC  7C 60 1B 78 */	mr r0, r3
/* 80194750 001916B0  7F A3 EB 78 */	mr r3, r29
/* 80194754 001916B4  7C 04 03 78 */	mr r4, r0
/* 80194758 001916B8  48 12 D9 FD */	bl FindWidget__9CGuiFrameCFPCc
/* 8019475C 001916BC  3C 80 80 3D */	lis r4, lbl_803D0E58@ha
/* 80194760 001916C0  90 7C 00 24 */	stw r3, 0x24(r28)
/* 80194764 001916C4  3B 44 0E 58 */	addi r26, r4, lbl_803D0E58@l
/* 80194768 001916C8  3B E0 00 00 */	li r31, 0
/* 8019476C 001916CC  3A E0 00 00 */	li r23, 0
lbl_80194770:
/* 80194770 001916D0  80 1C 00 04 */	lwz r0, 4(r28)
/* 80194774 001916D4  2C 00 00 00 */	cmpwi r0, 0
/* 80194778 001916D8  40 82 00 0C */	bne lbl_80194784
/* 8019477C 001916DC  83 22 A6 18 */	lwz r25, lbl_805AC338@sda21(r2)
/* 80194780 001916E0  48 00 00 08 */	b lbl_80194788
lbl_80194784:
/* 80194784 001916E4  83 22 A6 1C */	lwz r25, lbl_805AC33C@sda21(r2)
lbl_80194788:
/* 80194788 001916E8  2C 00 00 00 */	cmpwi r0, 0
/* 8019478C 001916EC  80 A2 A6 20 */	lwz r5, lbl_805AC340@sda21(r2)
/* 80194790 001916F0  7F 24 CB 78 */	mr r4, r25
/* 80194794 001916F4  38 7A 00 AC */	addi r3, r26, 0xac
/* 80194798 001916F8  3B 62 A6 34 */	addi r27, r2, lbl_805AC354@sda21
/* 8019479C 001916FC  40 82 00 08 */	bne lbl_801947A4
/* 801947A0 00191700  3B 62 A6 2C */	addi r27, r2, lbl_805AC34C@sda21
lbl_801947A4:
/* 801947A4 00191704  7C DB F8 AE */	lbzx r6, r27, r31
/* 801947A8 00191708  7C C6 07 74 */	extsb r6, r6
/* 801947AC 0019170C  4C C6 31 82 */	crclr 6
/* 801947B0 00191710  48 14 1A 01 */	bl Stringize__7CBasicsFPCce
/* 801947B4 00191714  7C 60 1B 78 */	mr r0, r3
/* 801947B8 00191718  7F A3 EB 78 */	mr r3, r29
/* 801947BC 0019171C  7C 04 03 78 */	mr r4, r0
/* 801947C0 00191720  7F 1C BA 14 */	add r24, r28, r23
/* 801947C4 00191724  48 12 D9 91 */	bl FindWidget__9CGuiFrameCFPCc
/* 801947C8 00191728  90 78 00 2C */	stw r3, 0x2c(r24)
/* 801947CC 0019172C  7F 24 CB 78 */	mr r4, r25
/* 801947D0 00191730  80 A2 A6 24 */	lwz r5, lbl_805AC344@sda21(r2)
/* 801947D4 00191734  38 7A 00 AC */	addi r3, r26, 0xac
/* 801947D8 00191738  7C DB F8 AE */	lbzx r6, r27, r31
/* 801947DC 0019173C  7C C6 07 74 */	extsb r6, r6
/* 801947E0 00191740  4C C6 31 82 */	crclr 6
/* 801947E4 00191744  48 14 19 CD */	bl Stringize__7CBasicsFPCce
/* 801947E8 00191748  7C 60 1B 78 */	mr r0, r3
/* 801947EC 0019174C  7F A3 EB 78 */	mr r3, r29
/* 801947F0 00191750  7C 04 03 78 */	mr r4, r0
/* 801947F4 00191754  48 12 D9 61 */	bl FindWidget__9CGuiFrameCFPCc
/* 801947F8 00191758  90 78 00 30 */	stw r3, 0x30(r24)
/* 801947FC 0019175C  7C 7E FA 14 */	add r3, r30, r31
/* 80194800 00191760  88 03 00 04 */	lbz r0, 4(r3)
/* 80194804 00191764  28 00 00 00 */	cmplwi r0, 0
/* 80194808 00191768  41 82 00 0C */	beq lbl_80194814
/* 8019480C 0019176C  C0 02 A6 40 */	lfs f0, lbl_805AC360@sda21(r2)
/* 80194810 00191770  48 00 00 08 */	b lbl_80194818
lbl_80194814:
/* 80194814 00191774  C0 02 A6 44 */	lfs f0, lbl_805AC364@sda21(r2)
lbl_80194818:
/* 80194818 00191778  3B FF 00 01 */	addi r31, r31, 1
/* 8019481C 0019177C  7C 7C BA 14 */	add r3, r28, r23
/* 80194820 00191780  2C 1F 00 04 */	cmpwi r31, 4
/* 80194824 00191784  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 80194828 00191788  3A F7 00 10 */	addi r23, r23, 0x10
/* 8019482C 0019178C  41 80 FF 44 */	blt lbl_80194770
/* 80194830 00191790  80 1C 00 04 */	lwz r0, 4(r28)
/* 80194834 00191794  2C 00 00 00 */	cmpwi r0, 0
/* 80194838 00191798  40 82 00 30 */	bne lbl_80194868
/* 8019483C 0019179C  80 7C 00 20 */	lwz r3, 0x20(r28)
/* 80194840 001917A0  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 80194844 001917A4  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80194848 001917A8  38 84 00 4C */	addi r4, r4, 0x4c
/* 8019484C 001917AC  48 13 4E 1D */	bl SetFontColor__15CGuiTextSupportFRC6CColor
/* 80194850 001917B0  80 7C 00 20 */	lwz r3, 0x20(r28)
/* 80194854 001917B4  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 80194858 001917B8  38 63 00 D4 */	addi r3, r3, 0xd4
/* 8019485C 001917BC  38 84 00 50 */	addi r4, r4, 0x50
/* 80194860 001917C0  48 13 4D B9 */	bl SetOutlineColor__15CGuiTextSupportFRC6CColor
/* 80194864 001917C4  48 00 00 2C */	b lbl_80194890
lbl_80194868:
/* 80194868 001917C8  80 7C 00 20 */	lwz r3, 0x20(r28)
/* 8019486C 001917CC  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 80194870 001917D0  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80194874 001917D4  38 84 00 54 */	addi r4, r4, 0x54
/* 80194878 001917D8  48 13 4D F1 */	bl SetFontColor__15CGuiTextSupportFRC6CColor
/* 8019487C 001917DC  80 7C 00 20 */	lwz r3, 0x20(r28)
/* 80194880 001917E0  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 80194884 001917E4  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80194888 001917E8  38 84 00 58 */	addi r4, r4, 0x58
/* 8019488C 001917EC  48 13 4D 8D */	bl SetOutlineColor__15CGuiTextSupportFRC6CColor
lbl_80194890:
/* 80194890 001917F0  48 1B 57 1D */	bl White__6CColorFv
/* 80194894 001917F4  C3 E2 A6 44 */	lfs f31, lbl_805AC364@sda21(r2)
/* 80194898 001917F8  F3 E1 A0 08 */	psq_st f31, 8(r1), 1, qr2
/* 8019489C 001917FC  38 81 00 0C */	addi r4, r1, 0xc
/* 801948A0 00191800  80 63 00 00 */	lwz r3, 0(r3)
/* 801948A4 00191804  88 01 00 08 */	lbz r0, 8(r1)
/* 801948A8 00191808  50 60 00 2E */	rlwimi r0, r3, 0, 0, 0x17
/* 801948AC 0019180C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801948B0 00191810  80 7C 00 1C */	lwz r3, 0x1c(r28)
/* 801948B4 00191814  48 13 5F B9 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 801948B8 00191818  80 BC 00 04 */	lwz r5, 4(r28)
/* 801948BC 0019181C  3C 60 80 3D */	lis r3, lbl_803D0E38@ha
/* 801948C0 00191820  80 1C 00 08 */	lwz r0, 8(r28)
/* 801948C4 00191824  38 83 0E 38 */	addi r4, r3, lbl_803D0E38@l
/* 801948C8 00191828  54 A5 20 36 */	slwi r5, r5, 4
/* 801948CC 0019182C  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 801948D0 00191830  7C 84 2A 14 */	add r4, r4, r5
/* 801948D4 00191834  54 00 10 3A */	slwi r0, r0, 2
/* 801948D8 00191838  7C 84 00 2E */	lwzx r4, r4, r0
/* 801948DC 0019183C  48 1C 1E 21 */	bl GetString__12CStringTableCFi
/* 801948E0 00191840  7C 64 1B 78 */	mr r4, r3
/* 801948E4 00191844  38 61 00 10 */	addi r3, r1, 0x10
/* 801948E8 00191848  4B E8 11 09 */	bl wstring_l__4rstlFPCw
/* 801948EC 0019184C  80 7C 00 20 */	lwz r3, 0x20(r28)
/* 801948F0 00191850  38 81 00 10 */	addi r4, r1, 0x10
/* 801948F4 00191854  38 A0 00 00 */	li r5, 0
/* 801948F8 00191858  38 63 00 D4 */	addi r3, r3, 0xd4
/* 801948FC 0019185C  48 13 4F 89 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80194900 00191860  38 61 00 10 */	addi r3, r1, 0x10
/* 80194904 00191864  48 1A 88 31 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 80194908 00191868  3B 00 00 00 */	li r24, 0
/* 8019490C 0019186C  3A E0 00 00 */	li r23, 0
lbl_80194910:
/* 80194910 00191870  7C 7C BA 14 */	add r3, r28, r23
/* 80194914 00191874  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 80194918 00191878  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 8019491C 0019187C  38 84 00 B0 */	addi r4, r4, 0xb0
/* 80194920 00191880  48 13 5F 4D */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80194924 00191884  7C 7C BA 14 */	add r3, r28, r23
/* 80194928 00191888  C0 22 A6 40 */	lfs f1, lbl_805AC360@sda21(r2)
/* 8019492C 0019188C  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 80194930 00191890  7F 83 E3 78 */	mr r3, r28
/* 80194934 00191894  7F 04 C3 78 */	mr r4, r24
/* 80194938 00191898  4B FF EE 81 */	bl UpdateMenuWidgetTransform__17CHudVisorBeamMenuFiR10CGuiWidgetf
/* 8019493C 0019189C  3B 18 00 01 */	addi r24, r24, 1
/* 80194940 001918A0  3A F7 00 10 */	addi r23, r23, 0x10
/* 80194944 001918A4  2C 18 00 04 */	cmpwi r24, 4
/* 80194948 001918A8  41 80 FF C8 */	blt lbl_80194910
/* 8019494C 001918AC  C0 22 A6 44 */	lfs f1, lbl_805AC364@sda21(r2)
/* 80194950 001918B0  7F 83 E3 78 */	mr r3, r28
/* 80194954 001918B4  38 80 00 01 */	li r4, 1
/* 80194958 001918B8  4B FF F1 09 */	bl Update__17CHudVisorBeamMenuFfb
/* 8019495C 001918BC  7F 83 E3 78 */	mr r3, r28
/* 80194960 001918C0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 80194964 001918C4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80194968 001918C8  BA E1 00 2C */	lmw r23, 0x2c(r1)
/* 8019496C 001918CC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80194970 001918D0  7C 08 03 A6 */	mtlr r0
/* 80194974 001918D4  38 21 00 60 */	addi r1, r1, 0x60
/* 80194978 001918D8  4E 80 00 20 */	blr

.global __dt__24CHudDecoInterfaceThermalFv
__dt__24CHudDecoInterfaceThermalFv:
/* 8019497C 001918DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80194980 001918E0  7C 08 02 A6 */	mflr r0
/* 80194984 001918E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80194988 001918E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8019498C 001918EC  7C 9F 23 78 */	mr r31, r4
/* 80194990 001918F0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80194994 001918F4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80194998 001918F8  41 82 00 7C */	beq lbl_80194A14
/* 8019499C 001918FC  3C 60 80 3E */	lis r3, lbl_803E44C8@ha
/* 801949A0 00191900  34 1E 00 84 */	addic. r0, r30, 0x84
/* 801949A4 00191904  38 03 44 C8 */	addi r0, r3, lbl_803E44C8@l
/* 801949A8 00191908  90 1E 00 00 */	stw r0, 0(r30)
/* 801949AC 0019190C  41 82 00 44 */	beq lbl_801949F0
/* 801949B0 00191910  80 1E 00 88 */	lwz r0, 0x88(r30)
/* 801949B4 00191914  80 7E 00 90 */	lwz r3, 0x90(r30)
/* 801949B8 00191918  1C 00 00 34 */	mulli r0, r0, 0x34
/* 801949BC 0019191C  90 61 00 0C */	stw r3, 0xc(r1)
/* 801949C0 00191920  7C 64 1B 78 */	mr r4, r3
/* 801949C4 00191924  7C 03 02 14 */	add r0, r3, r0
/* 801949C8 00191928  90 61 00 08 */	stw r3, 8(r1)
/* 801949CC 0019192C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801949D0 00191930  90 01 00 10 */	stw r0, 0x10(r1)
/* 801949D4 00191934  48 00 00 08 */	b lbl_801949DC
lbl_801949D8:
/* 801949D8 00191938  38 84 00 34 */	addi r4, r4, 0x34
lbl_801949DC:
/* 801949DC 0019193C  7C 04 00 40 */	cmplw r4, r0
/* 801949E0 00191940  40 82 FF F8 */	bne lbl_801949D8
/* 801949E4 00191944  28 03 00 00 */	cmplwi r3, 0
/* 801949E8 00191948  41 82 00 08 */	beq lbl_801949F0
/* 801949EC 0019194C  48 18 0F 45 */	bl Free__7CMemoryFPCv
lbl_801949F0:
/* 801949F0 00191950  28 1E 00 00 */	cmplwi r30, 0
/* 801949F4 00191954  41 82 00 10 */	beq lbl_80194A04
/* 801949F8 00191958  3C 60 80 3E */	lis r3, lbl_803DA2A4@ha
/* 801949FC 0019195C  38 03 A2 A4 */	addi r0, r3, lbl_803DA2A4@l
/* 80194A00 00191960  90 1E 00 00 */	stw r0, 0(r30)
lbl_80194A04:
/* 80194A04 00191964  7F E0 07 35 */	extsh. r0, r31
/* 80194A08 00191968  40 81 00 0C */	ble lbl_80194A14
/* 80194A0C 0019196C  7F C3 F3 78 */	mr r3, r30
/* 80194A10 00191970  48 18 0F 21 */	bl Free__7CMemoryFPCv
lbl_80194A14:
/* 80194A14 00191974  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80194A18 00191978  7F C3 F3 78 */	mr r3, r30
/* 80194A1C 0019197C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80194A20 00191980  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80194A24 00191984  7C 08 03 A6 */	mtlr r0
/* 80194A28 00191988  38 21 00 20 */	addi r1, r1, 0x20
/* 80194A2C 0019198C  4E 80 00 20 */	blr

.global UpdateCameraDebugSettings__24CHudDecoInterfaceThermalFfff
UpdateCameraDebugSettings__24CHudDecoInterfaceThermalFfff:
/* 80194A30 00191990  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80194A34 00191994  C0 02 A6 6C */	lfs f0, lbl_805AC38C@sda21(r2)
/* 80194A38 00191998  81 43 00 74 */	lwz r10, 0x74(r3)
/* 80194A3C 0019199C  81 2A 00 BC */	lwz r9, 0xbc(r10)
/* 80194A40 001919A0  81 0A 00 C0 */	lwz r8, 0xc0(r10)
/* 80194A44 001919A4  91 21 00 20 */	stw r9, 0x20(r1)
/* 80194A48 001919A8  80 EA 00 C4 */	lwz r7, 0xc4(r10)
/* 80194A4C 001919AC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80194A50 001919B0  80 CA 00 C8 */	lwz r6, 0xc8(r10)
/* 80194A54 001919B4  80 AA 00 CC */	lwz r5, 0xcc(r10)
/* 80194A58 001919B8  80 8A 00 D0 */	lwz r4, 0xd0(r10)
/* 80194A5C 001919BC  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80194A60 001919C0  91 21 00 08 */	stw r9, 8(r1)
/* 80194A64 001919C4  90 0A 00 BC */	stw r0, 0xbc(r10)
/* 80194A68 001919C8  91 0A 00 C0 */	stw r8, 0xc0(r10)
/* 80194A6C 001919CC  90 EA 00 C4 */	stw r7, 0xc4(r10)
/* 80194A70 001919D0  90 CA 00 C8 */	stw r6, 0xc8(r10)
/* 80194A74 001919D4  90 AA 00 CC */	stw r5, 0xcc(r10)
/* 80194A78 001919D8  90 8A 00 D0 */	stw r4, 0xd0(r10)
/* 80194A7C 001919DC  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80194A80 001919E0  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 80194A84 001919E4  91 01 00 0C */	stw r8, 0xc(r1)
/* 80194A88 001919E8  90 E1 00 10 */	stw r7, 0x10(r1)
/* 80194A8C 001919EC  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80194A90 001919F0  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80194A94 001919F4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80194A98 001919F8  91 01 00 24 */	stw r8, 0x24(r1)
/* 80194A9C 001919FC  90 E1 00 28 */	stw r7, 0x28(r1)
/* 80194AA0 00191A00  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 80194AA4 00191A04  90 A1 00 30 */	stw r5, 0x30(r1)
/* 80194AA8 00191A08  90 81 00 34 */	stw r4, 0x34(r1)
/* 80194AAC 00191A0C  D0 63 00 34 */	stfs f3, 0x34(r3)
/* 80194AB0 00191A10  38 21 00 40 */	addi r1, r1, 0x40
/* 80194AB4 00191A14  4E 80 00 20 */	blr

.global Update__24CHudDecoInterfaceThermalFfRC13CStateManager
Update__24CHudDecoInterfaceThermalFfRC13CStateManager:
/* 80194AB8 00191A18  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 80194ABC 00191A1C  7C 08 02 A6 */	mflr r0
/* 80194AC0 00191A20  90 01 01 24 */	stw r0, 0x124(r1)
/* 80194AC4 00191A24  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 80194AC8 00191A28  F3 E1 01 18 */	psq_st f31, 280(r1), 0, qr0
/* 80194ACC 00191A2C  DB C1 01 00 */	stfd f30, 0x100(r1)
/* 80194AD0 00191A30  F3 C1 01 08 */	psq_st f30, 264(r1), 0, qr0
/* 80194AD4 00191A34  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 80194AD8 00191A38  93 C1 00 F8 */	stw r30, 0xf8(r1)
/* 80194ADC 00191A3C  93 A1 00 F4 */	stw r29, 0xf4(r1)
/* 80194AE0 00191A40  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 80194AE4 00191A44  7C 7D 1B 78 */	mr r29, r3
/* 80194AE8 00191A48  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80194AEC 00191A4C  FF C0 08 90 */	fmr f30, f1
/* 80194AF0 00191A50  A0 64 03 10 */	lhz r3, 0x310(r4)
/* 80194AF4 00191A54  C0 5D 00 68 */	lfs f2, 0x68(r29)
/* 80194AF8 00191A58  7C 03 00 40 */	cmplw r3, r0
/* 80194AFC 00191A5C  41 82 00 34 */	beq lbl_80194B30
/* 80194B00 00191A60  C0 22 A6 74 */	lfs f1, lbl_805AC394@sda21(r2)
/* 80194B04 00191A64  C0 0D 8F C8 */	lfs f0, lbl_805A7B88@sda21(r13)
/* 80194B08 00191A68  EC 21 17 BC */	fnmsubs f1, f1, f30, f2
/* 80194B0C 00191A6C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80194B10 00191A70  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80194B14 00191A74  40 80 00 0C */	bge lbl_80194B20
/* 80194B18 00191A78  38 61 00 14 */	addi r3, r1, 0x14
/* 80194B1C 00191A7C  48 00 00 08 */	b lbl_80194B24
lbl_80194B20:
/* 80194B20 00191A80  38 6D 8F C8 */	addi r3, r13, lbl_805A7B88@sda21
lbl_80194B24:
/* 80194B24 00191A84  C0 03 00 00 */	lfs f0, 0(r3)
/* 80194B28 00191A88  D0 1D 00 68 */	stfs f0, 0x68(r29)
/* 80194B2C 00191A8C  48 00 00 30 */	b lbl_80194B5C
lbl_80194B30:
/* 80194B30 00191A90  C0 22 A6 74 */	lfs f1, lbl_805AC394@sda21(r2)
/* 80194B34 00191A94  C0 02 A6 70 */	lfs f0, lbl_805AC390@sda21(r2)
/* 80194B38 00191A98  EC 21 17 BA */	fmadds f1, f1, f30, f2
/* 80194B3C 00191A9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80194B40 00191AA0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80194B44 00191AA4  40 80 00 0C */	bge lbl_80194B50
/* 80194B48 00191AA8  38 61 00 10 */	addi r3, r1, 0x10
/* 80194B4C 00191AAC  48 00 00 08 */	b lbl_80194B54
lbl_80194B50:
/* 80194B50 00191AB0  38 62 A6 70 */	addi r3, r2, lbl_805AC390@sda21
lbl_80194B54:
/* 80194B54 00191AB4  C0 03 00 00 */	lfs f0, 0(r3)
/* 80194B58 00191AB8  D0 1D 00 68 */	stfs f0, 0x68(r29)
lbl_80194B5C:
/* 80194B5C 00191ABC  C0 1D 00 68 */	lfs f0, 0x68(r29)
/* 80194B60 00191AC0  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 80194B64 00191AC4  41 82 00 5C */	beq lbl_80194BC0
/* 80194B68 00191AC8  83 DD 00 90 */	lwz r30, 0x90(r29)
/* 80194B6C 00191ACC  48 00 00 3C */	b lbl_80194BA8
lbl_80194B70:
/* 80194B70 00191AD0  C0 3D 00 68 */	lfs f1, 0x68(r29)
/* 80194B74 00191AD4  38 61 00 84 */	addi r3, r1, 0x84
/* 80194B78 00191AD8  48 17 E6 C9 */	bl Scale__12CTransform4fFf
/* 80194B7C 00191ADC  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80194B80 00191AE0  38 9E 00 04 */	addi r4, r30, 4
/* 80194B84 00191AE4  38 A1 00 84 */	addi r5, r1, 0x84
/* 80194B88 00191AE8  48 17 DD C9 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 80194B8C 00191AEC  83 FE 00 00 */	lwz r31, 0(r30)
/* 80194B90 00191AF0  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80194B94 00191AF4  38 7F 00 04 */	addi r3, r31, 4
/* 80194B98 00191AF8  48 17 DF A9 */	bl __as__12CTransform4fFRC12CTransform4f
/* 80194B9C 00191AFC  7F E3 FB 78 */	mr r3, r31
/* 80194BA0 00191B00  48 12 FC 49 */	bl RecalculateTransforms__10CGuiObjectFv
/* 80194BA4 00191B04  3B DE 00 34 */	addi r30, r30, 0x34
lbl_80194BA8:
/* 80194BA8 00191B08  80 1D 00 88 */	lwz r0, 0x88(r29)
/* 80194BAC 00191B0C  80 7D 00 90 */	lwz r3, 0x90(r29)
/* 80194BB0 00191B10  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80194BB4 00191B14  7C 03 02 14 */	add r0, r3, r0
/* 80194BB8 00191B18  7C 1E 00 40 */	cmplw r30, r0
/* 80194BBC 00191B1C  40 82 FF B4 */	bne lbl_80194B70
lbl_80194BC0:
/* 80194BC0 00191B20  C0 3D 00 6C */	lfs f1, 0x6c(r29)
/* 80194BC4 00191B24  C0 02 A6 68 */	lfs f0, lbl_805AC388@sda21(r2)
/* 80194BC8 00191B28  EC 21 F0 2A */	fadds f1, f1, f30
/* 80194BCC 00191B2C  D0 3D 00 6C */	stfs f1, 0x6c(r29)
/* 80194BD0 00191B30  C0 3D 00 6C */	lfs f1, 0x6c(r29)
/* 80194BD4 00191B34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80194BD8 00191B38  40 81 00 10 */	ble lbl_80194BE8
/* 80194BDC 00191B3C  C0 02 A6 78 */	lfs f0, lbl_805AC398@sda21(r2)
/* 80194BE0 00191B40  EC 01 00 28 */	fsubs f0, f1, f0
/* 80194BE4 00191B44  D0 1D 00 6C */	stfs f0, 0x6c(r29)
lbl_80194BE8:
/* 80194BE8 00191B48  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 80194BEC 00191B4C  FF C0 02 10 */	fabs f30, f0
/* 80194BF0 00191B50  48 1B 53 BD */	bl White__6CColorFv
/* 80194BF4 00191B54  FC 00 F0 18 */	frsp f0, f30
/* 80194BF8 00191B58  C0 22 A6 80 */	lfs f1, lbl_805AC3A0@sda21(r2)
/* 80194BFC 00191B5C  C0 42 A6 7C */	lfs f2, lbl_805AC39C@sda21(r2)
/* 80194C00 00191B60  EC 01 08 3A */	fmadds f0, f1, f0, f1
/* 80194C04 00191B64  EF E2 00 32 */	fmuls f31, f2, f0
/* 80194C08 00191B68  F3 E1 A0 08 */	psq_st f31, 8(r1), 1, qr2
/* 80194C0C 00191B6C  38 81 00 0C */	addi r4, r1, 0xc
/* 80194C10 00191B70  80 63 00 00 */	lwz r3, 0(r3)
/* 80194C14 00191B74  88 01 00 08 */	lbz r0, 8(r1)
/* 80194C18 00191B78  50 60 00 2E */	rlwimi r0, r3, 0, 0, 0x17
/* 80194C1C 00191B7C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80194C20 00191B80  80 7D 00 80 */	lwz r3, 0x80(r29)
/* 80194C24 00191B84  48 13 5C 49 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80194C28 00191B88  C0 3D 00 18 */	lfs f1, 0x18(r29)
/* 80194C2C 00191B8C  38 61 00 54 */	addi r3, r1, 0x54
/* 80194C30 00191B90  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 80194C34 00191B94  38 9D 00 04 */	addi r4, r29, 4
/* 80194C38 00191B98  C0 7D 00 1C */	lfs f3, 0x1c(r29)
/* 80194C3C 00191B9C  38 A1 00 18 */	addi r5, r1, 0x18
/* 80194C40 00191BA0  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 80194C44 00191BA4  EC 81 00 2A */	fadds f4, f1, f0
/* 80194C48 00191BA8  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 80194C4C 00191BAC  38 DD 00 2C */	addi r6, r29, 0x2c
/* 80194C50 00191BB0  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 80194C54 00191BB4  EC 43 10 2A */	fadds f2, f3, f2
/* 80194C58 00191BB8  EC 01 00 2A */	fadds f0, f1, f0
/* 80194C5C 00191BBC  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 80194C60 00191BC0  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80194C64 00191BC4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80194C68 00191BC8  4B ED 89 39 */	bl BuildFinalCameraTransform__9CSamusHudFRC11CQuaternionRC9CVector3fRC9CVector3f
/* 80194C6C 00191BCC  80 7D 00 74 */	lwz r3, 0x74(r29)
/* 80194C70 00191BD0  38 81 00 54 */	addi r4, r1, 0x54
/* 80194C74 00191BD4  48 12 FA C5 */	bl SetO2WTransform__10CGuiObjectFRC12CTransform4f
/* 80194C78 00191BD8  38 61 00 24 */	addi r3, r1, 0x24
/* 80194C7C 00191BDC  38 9D 00 38 */	addi r4, r29, 0x38
/* 80194C80 00191BE0  38 BD 00 5C */	addi r5, r29, 0x5c
/* 80194C84 00191BE4  48 17 E5 F5 */	bl __ct__12CTransform4fFRC9CMatrix3fRC9CVector3f
/* 80194C88 00191BE8  83 FD 00 7C */	lwz r31, 0x7c(r29)
/* 80194C8C 00191BEC  38 81 00 24 */	addi r4, r1, 0x24
/* 80194C90 00191BF0  38 7F 00 04 */	addi r3, r31, 4
/* 80194C94 00191BF4  48 17 DE AD */	bl __as__12CTransform4fFRC12CTransform4f
/* 80194C98 00191BF8  7F E3 FB 78 */	mr r3, r31
/* 80194C9C 00191BFC  48 12 FB 4D */	bl RecalculateTransforms__10CGuiObjectFv
/* 80194CA0 00191C00  E3 E1 01 18 */	psq_l f31, 280(r1), 0, qr0
/* 80194CA4 00191C04  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 80194CA8 00191C08  E3 C1 01 08 */	psq_l f30, 264(r1), 0, qr0
/* 80194CAC 00191C0C  CB C1 01 00 */	lfd f30, 0x100(r1)
/* 80194CB0 00191C10  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 80194CB4 00191C14  83 C1 00 F8 */	lwz r30, 0xf8(r1)
/* 80194CB8 00191C18  80 01 01 24 */	lwz r0, 0x124(r1)
/* 80194CBC 00191C1C  83 A1 00 F4 */	lwz r29, 0xf4(r1)
/* 80194CC0 00191C20  7C 08 03 A6 */	mtlr r0
/* 80194CC4 00191C24  38 21 01 20 */	addi r1, r1, 0x120
/* 80194CC8 00191C28  4E 80 00 20 */	blr

.global SetDamageTransform__24CHudDecoInterfaceThermalFRC9CMatrix3fRC9CVector3f
SetDamageTransform__24CHudDecoInterfaceThermalFRC9CMatrix3fRC9CVector3f:
/* 80194CCC 00191C2C  4E 80 00 20 */	blr

.global SetHudOffset__24CHudDecoInterfaceThermalFRC9CVector3f
SetHudOffset__24CHudDecoInterfaceThermalFRC9CVector3f:
/* 80194CD0 00191C30  C0 04 00 00 */	lfs f0, 0(r4)
/* 80194CD4 00191C34  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80194CD8 00191C38  C0 04 00 04 */	lfs f0, 4(r4)
/* 80194CDC 00191C3C  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 80194CE0 00191C40  C0 04 00 08 */	lfs f0, 8(r4)
/* 80194CE4 00191C44  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80194CE8 00191C48  4E 80 00 20 */	blr

.global SetReticuleTransform__24CHudDecoInterfaceThermalFRC9CMatrix3f
SetReticuleTransform__24CHudDecoInterfaceThermalFRC9CMatrix3f:
/* 80194CEC 00191C4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80194CF0 00191C50  7C 08 02 A6 */	mflr r0
/* 80194CF4 00191C54  38 63 00 38 */	addi r3, r3, 0x38
/* 80194CF8 00191C58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80194CFC 00191C5C  48 17 B2 FD */	bl __as__9CMatrix3fFRC9CMatrix3f
/* 80194D00 00191C60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80194D04 00191C64  7C 08 03 A6 */	mtlr r0
/* 80194D08 00191C68  38 21 00 10 */	addi r1, r1, 0x10
/* 80194D0C 00191C6C  4E 80 00 20 */	blr

.global SetHudRotation__24CHudDecoInterfaceThermalFRC11CQuaternion
SetHudRotation__24CHudDecoInterfaceThermalFRC11CQuaternion:
/* 80194D10 00191C70  C0 04 00 00 */	lfs f0, 0(r4)
/* 80194D14 00191C74  D0 03 00 04 */	stfs f0, 4(r3)
/* 80194D18 00191C78  80 A4 00 04 */	lwz r5, 4(r4)
/* 80194D1C 00191C7C  80 04 00 08 */	lwz r0, 8(r4)
/* 80194D20 00191C80  90 A3 00 08 */	stw r5, 8(r3)
/* 80194D24 00191C84  90 03 00 0C */	stw r0, 0xc(r3)
/* 80194D28 00191C88  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80194D2C 00191C8C  90 03 00 10 */	stw r0, 0x10(r3)
/* 80194D30 00191C90  4E 80 00 20 */	blr

.global UpdateVisibility__24CHudDecoInterfaceThermalFv
UpdateVisibility__24CHudDecoInterfaceThermalFv:
/* 80194D34 00191C94  4E 80 00 20 */	blr

.global UpdateHudAlpha__24CHudDecoInterfaceThermalFv
UpdateHudAlpha__24CHudDecoInterfaceThermalFv:
/* 80194D38 00191C98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80194D3C 00191C9C  7C 08 02 A6 */	mflr r0
/* 80194D40 00191CA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80194D44 00191CA4  38 00 00 FF */	li r0, 0xff
/* 80194D48 00191CA8  38 81 00 08 */	addi r4, r1, 8
/* 80194D4C 00191CAC  80 AD A0 80 */	lwz r5, gpGameState@sda21(r13)
/* 80194D50 00191CB0  80 A5 01 DC */	lwz r5, 0x1dc(r5)
/* 80194D54 00191CB4  98 01 00 08 */	stb r0, 8(r1)
/* 80194D58 00191CB8  98 01 00 09 */	stb r0, 9(r1)
/* 80194D5C 00191CBC  98 01 00 0A */	stb r0, 0xa(r1)
/* 80194D60 00191CC0  98 A1 00 0B */	stb r5, 0xb(r1)
/* 80194D64 00191CC4  80 63 00 78 */	lwz r3, 0x78(r3)
/* 80194D68 00191CC8  48 13 5B 05 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80194D6C 00191CCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80194D70 00191CD0  7C 08 03 A6 */	mtlr r0
/* 80194D74 00191CD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80194D78 00191CD8  4E 80 00 20 */	blr

.global SetIsVisibleGame__24CHudDecoInterfaceThermalFb
SetIsVisibleGame__24CHudDecoInterfaceThermalFb:
/* 80194D7C 00191CDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80194D80 00191CE0  7C 08 02 A6 */	mflr r0
/* 80194D84 00191CE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80194D88 00191CE8  88 03 00 70 */	lbz r0, 0x70(r3)
/* 80194D8C 00191CEC  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 80194D90 00191CF0  98 03 00 70 */	stb r0, 0x70(r3)
/* 80194D94 00191CF4  4B FF FF A1 */	bl UpdateVisibility__24CHudDecoInterfaceThermalFv
/* 80194D98 00191CF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80194D9C 00191CFC  7C 08 03 A6 */	mtlr r0
/* 80194DA0 00191D00  38 21 00 10 */	addi r1, r1, 0x10
/* 80194DA4 00191D04  4E 80 00 20 */	blr

.global SetIsVisibleDebug__24CHudDecoInterfaceThermalFb
SetIsVisibleDebug__24CHudDecoInterfaceThermalFb:
/* 80194DA8 00191D08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80194DAC 00191D0C  7C 08 02 A6 */	mflr r0
/* 80194DB0 00191D10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80194DB4 00191D14  88 03 00 70 */	lbz r0, 0x70(r3)
/* 80194DB8 00191D18  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80194DBC 00191D1C  98 03 00 70 */	stb r0, 0x70(r3)
/* 80194DC0 00191D20  4B FF FF 75 */	bl UpdateVisibility__24CHudDecoInterfaceThermalFv
/* 80194DC4 00191D24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80194DC8 00191D28  7C 08 03 A6 */	mtlr r0
/* 80194DCC 00191D2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80194DD0 00191D30  4E 80 00 20 */	blr

.global __ct__24CHudDecoInterfaceThermalFR9CGuiFrame
__ct__24CHudDecoInterfaceThermalFR9CGuiFrame:
/* 80194DD4 00191D34  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80194DD8 00191D38  7C 08 02 A6 */	mflr r0
/* 80194DDC 00191D3C  3C A0 80 3E */	lis r5, lbl_803DA2A4@ha
/* 80194DE0 00191D40  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80194DE4 00191D44  38 05 A2 A4 */	addi r0, r5, lbl_803DA2A4@l
/* 80194DE8 00191D48  3C A0 80 5A */	lis r5, sZeroVector__9CVector3f@ha
/* 80194DEC 00191D4C  BF 61 00 AC */	stmw r27, 0xac(r1)
/* 80194DF0 00191D50  7C 7D 1B 78 */	mr r29, r3
/* 80194DF4 00191D54  3C 60 80 3E */	lis r3, lbl_803E44C8@ha
/* 80194DF8 00191D58  3B E5 66 A0 */	addi r31, r5, sZeroVector__9CVector3f@l
/* 80194DFC 00191D5C  7C 9E 23 78 */	mr r30, r4
/* 80194E00 00191D60  90 1D 00 00 */	stw r0, 0(r29)
/* 80194E04 00191D64  38 03 44 C8 */	addi r0, r3, lbl_803E44C8@l
/* 80194E08 00191D68  3C 60 80 5A */	lis r3, sNoRotation__11CQuaternion@ha
/* 80194E0C 00191D6C  90 1D 00 00 */	stw r0, 0(r29)
/* 80194E10 00191D70  38 C3 66 60 */	addi r6, r3, sNoRotation__11CQuaternion@l
/* 80194E14 00191D74  3C 60 80 5A */	lis r3, lbl_805A65FC@ha
/* 80194E18 00191D78  C0 06 00 00 */	lfs f0, 0(r6)
/* 80194E1C 00191D7C  38 03 65 FC */	addi r0, r3, lbl_805A65FC@l
/* 80194E20 00191D80  38 7D 00 38 */	addi r3, r29, 0x38
/* 80194E24 00191D84  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80194E28 00191D88  7C 04 03 78 */	mr r4, r0
/* 80194E2C 00191D8C  C0 06 00 04 */	lfs f0, 4(r6)
/* 80194E30 00191D90  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80194E34 00191D94  C0 06 00 08 */	lfs f0, 8(r6)
/* 80194E38 00191D98  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 80194E3C 00191D9C  C0 06 00 0C */	lfs f0, 0xc(r6)
/* 80194E40 00191DA0  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 80194E44 00191DA4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80194E48 00191DA8  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 80194E4C 00191DAC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80194E50 00191DB0  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 80194E54 00191DB4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80194E58 00191DB8  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 80194E5C 00191DBC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80194E60 00191DC0  D0 1D 00 20 */	stfs f0, 0x20(r29)
/* 80194E64 00191DC4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80194E68 00191DC8  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 80194E6C 00191DCC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80194E70 00191DD0  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 80194E74 00191DD4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80194E78 00191DD8  D0 1D 00 2C */	stfs f0, 0x2c(r29)
/* 80194E7C 00191DDC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80194E80 00191DE0  D0 1D 00 30 */	stfs f0, 0x30(r29)
/* 80194E84 00191DE4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80194E88 00191DE8  D0 1D 00 34 */	stfs f0, 0x34(r29)
/* 80194E8C 00191DEC  48 17 B1 99 */	bl __ct__9CMatrix3fFRC9CMatrix3f
/* 80194E90 00191DF0  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80194E94 00191DF4  C0 22 A6 84 */	lfs f1, lbl_805AC3A4@sda21(r2)
/* 80194E98 00191DF8  C0 43 66 A0 */	lfs f2, sZeroVector__9CVector3f@l(r3)
/* 80194E9C 00191DFC  38 A0 00 01 */	li r5, 1
/* 80194EA0 00191E00  C0 02 A6 6C */	lfs f0, lbl_805AC38C@sda21(r2)
/* 80194EA4 00191E04  38 00 00 00 */	li r0, 0
/* 80194EA8 00191E08  D0 5D 00 5C */	stfs f2, 0x5c(r29)
/* 80194EAC 00191E0C  38 61 00 08 */	addi r3, r1, 8
/* 80194EB0 00191E10  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80194EB4 00191E14  D0 5D 00 60 */	stfs f2, 0x60(r29)
/* 80194EB8 00191E18  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80194EBC 00191E1C  D0 5D 00 64 */	stfs f2, 0x64(r29)
/* 80194EC0 00191E20  D0 3D 00 68 */	stfs f1, 0x68(r29)
/* 80194EC4 00191E24  D0 1D 00 6C */	stfs f0, 0x6c(r29)
/* 80194EC8 00191E28  88 9D 00 70 */	lbz r4, 0x70(r29)
/* 80194ECC 00191E2C  50 A4 3E 30 */	rlwimi r4, r5, 7, 0x18, 0x18
/* 80194ED0 00191E30  98 9D 00 70 */	stb r4, 0x70(r29)
/* 80194ED4 00191E34  88 9D 00 70 */	lbz r4, 0x70(r29)
/* 80194ED8 00191E38  50 A4 36 72 */	rlwimi r4, r5, 6, 0x19, 0x19
/* 80194EDC 00191E3C  98 9D 00 70 */	stb r4, 0x70(r29)
/* 80194EE0 00191E40  90 1D 00 88 */	stw r0, 0x88(r29)
/* 80194EE4 00191E44  90 1D 00 8C */	stw r0, 0x8c(r29)
/* 80194EE8 00191E48  90 1D 00 90 */	stw r0, 0x90(r29)
/* 80194EEC 00191E4C  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 80194EF0 00191E50  90 1D 00 74 */	stw r0, 0x74(r29)
/* 80194EF4 00191E54  80 9D 00 74 */	lwz r4, 0x74(r29)
/* 80194EF8 00191E58  48 13 03 25 */	bl GetLocalPosition__10CGuiObjectCFv
/* 80194EFC 00191E5C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80194F00 00191E60  3C 60 80 3D */	lis r3, lbl_803D0F38@ha
/* 80194F04 00191E64  38 83 0F 38 */	addi r4, r3, lbl_803D0F38@l
/* 80194F08 00191E68  D0 1D 00 2C */	stfs f0, 0x2c(r29)
/* 80194F0C 00191E6C  7F C3 F3 78 */	mr r3, r30
/* 80194F10 00191E70  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80194F14 00191E74  D0 1D 00 30 */	stfs f0, 0x30(r29)
/* 80194F18 00191E78  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80194F1C 00191E7C  D0 1D 00 34 */	stfs f0, 0x34(r29)
/* 80194F20 00191E80  48 12 D2 35 */	bl FindWidget__9CGuiFrameCFPCc
/* 80194F24 00191E84  3C 80 80 3D */	lis r4, lbl_803D10E4@ha
/* 80194F28 00191E88  90 7D 00 78 */	stw r3, 0x78(r29)
/* 80194F2C 00191E8C  38 84 10 E4 */	addi r4, r4, lbl_803D10E4@l
/* 80194F30 00191E90  7F C3 F3 78 */	mr r3, r30
/* 80194F34 00191E94  7C 9C 23 78 */	mr r28, r4
/* 80194F38 00191E98  48 12 D2 1D */	bl FindWidget__9CGuiFrameCFPCc
/* 80194F3C 00191E9C  3C 80 80 3D */	lis r4, lbl_803D10E4@ha
/* 80194F40 00191EA0  90 7D 00 7C */	stw r3, 0x7c(r29)
/* 80194F44 00191EA4  38 84 10 E4 */	addi r4, r4, lbl_803D10E4@l
/* 80194F48 00191EA8  7F C3 F3 78 */	mr r3, r30
/* 80194F4C 00191EAC  38 84 00 13 */	addi r4, r4, 0x13
/* 80194F50 00191EB0  48 12 D2 05 */	bl FindWidget__9CGuiFrameCFPCc
/* 80194F54 00191EB4  90 7D 00 80 */	stw r3, 0x80(r29)
/* 80194F58 00191EB8  3C 60 80 3D */	lis r3, lbl_803D10E4@ha
/* 80194F5C 00191EBC  38 83 10 E4 */	addi r4, r3, lbl_803D10E4@l
/* 80194F60 00191EC0  7F C3 F3 78 */	mr r3, r30
/* 80194F64 00191EC4  80 BD 00 78 */	lwz r5, 0x78(r29)
/* 80194F68 00191EC8  3B E4 00 22 */	addi r31, r4, 0x22
/* 80194F6C 00191ECC  3B 64 00 32 */	addi r27, r4, 0x32
/* 80194F70 00191ED0  38 84 00 44 */	addi r4, r4, 0x44
/* 80194F74 00191ED4  C0 45 00 A0 */	lfs f2, 0xa0(r5)
/* 80194F78 00191ED8  C0 25 00 90 */	lfs f1, 0x90(r5)
/* 80194F7C 00191EDC  C0 05 00 80 */	lfs f0, 0x80(r5)
/* 80194F80 00191EE0  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 80194F84 00191EE4  D0 3D 00 18 */	stfs f1, 0x18(r29)
/* 80194F88 00191EE8  D0 5D 00 1C */	stfs f2, 0x1c(r29)
/* 80194F8C 00191EEC  80 BD 00 7C */	lwz r5, 0x7c(r29)
/* 80194F90 00191EF0  C0 45 00 A0 */	lfs f2, 0xa0(r5)
/* 80194F94 00191EF4  C0 25 00 90 */	lfs f1, 0x90(r5)
/* 80194F98 00191EF8  C0 05 00 80 */	lfs f0, 0x80(r5)
/* 80194F9C 00191EFC  D0 1D 00 5C */	stfs f0, 0x5c(r29)
/* 80194FA0 00191F00  D0 3D 00 60 */	stfs f1, 0x60(r29)
/* 80194FA4 00191F04  D0 5D 00 64 */	stfs f2, 0x64(r29)
/* 80194FA8 00191F08  48 12 D1 AD */	bl FindWidget__9CGuiFrameCFPCc
/* 80194FAC 00191F0C  28 03 00 00 */	cmplwi r3, 0
/* 80194FB0 00191F10  41 82 00 10 */	beq lbl_80194FC0
/* 80194FB4 00191F14  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 80194FB8 00191F18  38 84 01 AC */	addi r4, r4, 0x1ac
/* 80194FBC 00191F1C  48 13 58 B1 */	bl SetColor__10CGuiWidgetFRC6CColor
lbl_80194FC0:
/* 80194FC0 00191F20  3C 80 80 3D */	lis r4, lbl_803D10E4@ha
/* 80194FC4 00191F24  7F C3 F3 78 */	mr r3, r30
/* 80194FC8 00191F28  38 84 10 E4 */	addi r4, r4, lbl_803D10E4@l
/* 80194FCC 00191F2C  38 84 00 54 */	addi r4, r4, 0x54
/* 80194FD0 00191F30  48 12 D1 85 */	bl FindWidget__9CGuiFrameCFPCc
/* 80194FD4 00191F34  28 03 00 00 */	cmplwi r3, 0
/* 80194FD8 00191F38  41 82 00 10 */	beq lbl_80194FE8
/* 80194FDC 00191F3C  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 80194FE0 00191F40  38 84 01 B0 */	addi r4, r4, 0x1b0
/* 80194FE4 00191F44  48 13 58 89 */	bl SetColor__10CGuiWidgetFRC6CColor
lbl_80194FE8:
/* 80194FE8 00191F48  7F C3 F3 78 */	mr r3, r30
/* 80194FEC 00191F4C  7F E4 FB 78 */	mr r4, r31
/* 80194FF0 00191F50  48 12 D1 65 */	bl FindWidget__9CGuiFrameCFPCc
/* 80194FF4 00191F54  28 03 00 00 */	cmplwi r3, 0
/* 80194FF8 00191F58  41 82 00 10 */	beq lbl_80195008
/* 80194FFC 00191F5C  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 80195000 00191F60  38 84 01 B8 */	addi r4, r4, 0x1b8
/* 80195004 00191F64  48 13 58 69 */	bl SetColor__10CGuiWidgetFRC6CColor
lbl_80195008:
/* 80195008 00191F68  7F C3 F3 78 */	mr r3, r30
/* 8019500C 00191F6C  7F 84 E3 78 */	mr r4, r28
/* 80195010 00191F70  48 12 D1 45 */	bl FindWidget__9CGuiFrameCFPCc
/* 80195014 00191F74  28 03 00 00 */	cmplwi r3, 0
/* 80195018 00191F78  41 82 00 10 */	beq lbl_80195028
/* 8019501C 00191F7C  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 80195020 00191F80  38 84 01 B0 */	addi r4, r4, 0x1b0
/* 80195024 00191F84  48 13 58 49 */	bl SetColor__10CGuiWidgetFRC6CColor
lbl_80195028:
/* 80195028 00191F88  7F C3 F3 78 */	mr r3, r30
/* 8019502C 00191F8C  7F 64 DB 78 */	mr r4, r27
/* 80195030 00191F90  48 12 D1 25 */	bl FindWidget__9CGuiFrameCFPCc
/* 80195034 00191F94  28 03 00 00 */	cmplwi r3, 0
/* 80195038 00191F98  41 82 00 10 */	beq lbl_80195048
/* 8019503C 00191F9C  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 80195040 00191FA0  38 84 01 B0 */	addi r4, r4, 0x1b0
/* 80195044 00191FA4  48 13 58 29 */	bl SetColor__10CGuiWidgetFRC6CColor
lbl_80195048:
/* 80195048 00191FA8  3C 80 80 3D */	lis r4, lbl_803D10E4@ha
/* 8019504C 00191FAC  7F C3 F3 78 */	mr r3, r30
/* 80195050 00191FB0  38 84 10 E4 */	addi r4, r4, lbl_803D10E4@l
/* 80195054 00191FB4  38 84 00 6A */	addi r4, r4, 0x6a
/* 80195058 00191FB8  48 12 D0 FD */	bl FindWidget__9CGuiFrameCFPCc
/* 8019505C 00191FBC  28 03 00 00 */	cmplwi r3, 0
/* 80195060 00191FC0  41 82 00 10 */	beq lbl_80195070
/* 80195064 00191FC4  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 80195068 00191FC8  38 84 01 B0 */	addi r4, r4, 0x1b0
/* 8019506C 00191FCC  48 13 58 01 */	bl SetColor__10CGuiWidgetFRC6CColor
lbl_80195070:
/* 80195070 00191FD0  3C 80 80 3D */	lis r4, lbl_803D10E4@ha
/* 80195074 00191FD4  7F C3 F3 78 */	mr r3, r30
/* 80195078 00191FD8  38 84 10 E4 */	addi r4, r4, lbl_803D10E4@l
/* 8019507C 00191FDC  38 84 00 7B */	addi r4, r4, 0x7b
/* 80195080 00191FE0  48 12 D0 D5 */	bl FindWidget__9CGuiFrameCFPCc
/* 80195084 00191FE4  28 03 00 00 */	cmplwi r3, 0
/* 80195088 00191FE8  41 82 00 10 */	beq lbl_80195098
/* 8019508C 00191FEC  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 80195090 00191FF0  38 84 01 B0 */	addi r4, r4, 0x1b0
/* 80195094 00191FF4  48 13 57 D9 */	bl SetColor__10CGuiWidgetFRC6CColor
lbl_80195098:
/* 80195098 00191FF8  7F C3 F3 78 */	mr r3, r30
/* 8019509C 00191FFC  7F E4 FB 78 */	mr r4, r31
/* 801950A0 00192000  48 12 D0 B5 */	bl FindWidget__9CGuiFrameCFPCc
/* 801950A4 00192004  28 03 00 00 */	cmplwi r3, 0
/* 801950A8 00192008  41 82 00 D0 */	beq lbl_80195178
/* 801950AC 0019200C  48 12 FC 85 */	bl GetChildObject__10CGuiObjectFv
/* 801950B0 00192010  3B C1 00 78 */	addi r30, r1, 0x78
/* 801950B4 00192014  7C 7B 1B 78 */	mr r27, r3
/* 801950B8 00192018  48 00 00 B8 */	b lbl_80195170
lbl_801950BC:
/* 801950BC 0019201C  80 9D 00 88 */	lwz r4, 0x88(r29)
/* 801950C0 00192020  38 7D 00 84 */	addi r3, r29, 0x84
/* 801950C4 00192024  38 84 00 01 */	addi r4, r4, 1
/* 801950C8 00192028  48 00 23 05 */	bl sub_801973cc
/* 801950CC 0019202C  7F 64 DB 78 */	mr r4, r27
/* 801950D0 00192030  38 61 00 74 */	addi r3, r1, 0x74
/* 801950D4 00192034  48 00 00 ED */	bl sub_801951c0
/* 801950D8 00192038  80 1D 00 88 */	lwz r0, 0x88(r29)
/* 801950DC 0019203C  80 BD 00 8C */	lwz r5, 0x8c(r29)
/* 801950E0 00192040  7C 00 28 00 */	cmpw r0, r5
/* 801950E4 00192044  41 80 00 1C */	blt lbl_80195100
/* 801950E8 00192048  2C 05 00 00 */	cmpwi r5, 0
/* 801950EC 0019204C  38 7D 00 84 */	addi r3, r29, 0x84
/* 801950F0 00192050  38 80 00 04 */	li r4, 4
/* 801950F4 00192054  41 82 00 08 */	beq lbl_801950FC
/* 801950F8 00192058  54 A4 08 3C */	slwi r4, r5, 1
lbl_801950FC:
/* 801950FC 0019205C  48 00 22 D1 */	bl sub_801973cc
lbl_80195100:
/* 80195100 00192060  80 1D 00 88 */	lwz r0, 0x88(r29)
/* 80195104 00192064  80 7D 00 90 */	lwz r3, 0x90(r29)
/* 80195108 00192068  1C 00 00 34 */	mulli r0, r0, 0x34
/* 8019510C 0019206C  7C A3 02 15 */	add. r5, r3, r0
/* 80195110 00192070  41 82 00 18 */	beq lbl_80195128
/* 80195114 00192074  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80195118 00192078  7F C4 F3 78 */	mr r4, r30
/* 8019511C 0019207C  38 65 00 04 */	addi r3, r5, 4
/* 80195120 00192080  90 05 00 00 */	stw r0, 0(r5)
/* 80195124 00192084  48 17 DA 51 */	bl __ct__12CTransform4fFRC12CTransform4f
lbl_80195128:
/* 80195128 00192088  80 9D 00 88 */	lwz r4, 0x88(r29)
/* 8019512C 0019208C  38 61 00 14 */	addi r3, r1, 0x14
/* 80195130 00192090  38 04 00 01 */	addi r0, r4, 1
/* 80195134 00192094  90 1D 00 88 */	stw r0, 0x88(r29)
/* 80195138 00192098  C0 3D 00 68 */	lfs f1, 0x68(r29)
/* 8019513C 0019209C  48 17 E1 05 */	bl Scale__12CTransform4fFf
/* 80195140 001920A0  38 61 00 44 */	addi r3, r1, 0x44
/* 80195144 001920A4  38 9B 00 04 */	addi r4, r27, 4
/* 80195148 001920A8  38 A1 00 14 */	addi r5, r1, 0x14
/* 8019514C 001920AC  48 17 D8 05 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 80195150 001920B0  38 7B 00 04 */	addi r3, r27, 4
/* 80195154 001920B4  38 81 00 44 */	addi r4, r1, 0x44
/* 80195158 001920B8  48 17 D9 E9 */	bl __as__12CTransform4fFRC12CTransform4f
/* 8019515C 001920BC  7F 63 DB 78 */	mr r3, r27
/* 80195160 001920C0  48 12 F6 89 */	bl RecalculateTransforms__10CGuiObjectFv
/* 80195164 001920C4  7F 63 DB 78 */	mr r3, r27
/* 80195168 001920C8  48 12 FB B9 */	bl GetNextSibling__10CGuiObjectFv
/* 8019516C 001920CC  7C 7B 1B 78 */	mr r27, r3
lbl_80195170:
/* 80195170 001920D0  28 1B 00 00 */	cmplwi r27, 0
/* 80195174 001920D4  40 82 FF 48 */	bne lbl_801950BC
lbl_80195178:
/* 80195178 001920D8  80 9D 00 78 */	lwz r4, 0x78(r29)
/* 8019517C 001920DC  7F A3 EB 78 */	mr r3, r29
/* 80195180 001920E0  C0 44 00 A0 */	lfs f2, 0xa0(r4)
/* 80195184 001920E4  C0 24 00 90 */	lfs f1, 0x90(r4)
/* 80195188 001920E8  C0 04 00 80 */	lfs f0, 0x80(r4)
/* 8019518C 001920EC  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 80195190 001920F0  D0 3D 00 18 */	stfs f1, 0x18(r29)
/* 80195194 001920F4  D0 5D 00 1C */	stfs f2, 0x1c(r29)
/* 80195198 001920F8  81 9D 00 00 */	lwz r12, 0(r29)
/* 8019519C 001920FC  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 801951A0 00192100  7D 89 03 A6 */	mtctr r12
/* 801951A4 00192104  4E 80 04 21 */	bctrl
/* 801951A8 00192108  7F A3 EB 78 */	mr r3, r29
/* 801951AC 0019210C  BB 61 00 AC */	lmw r27, 0xac(r1)
/* 801951B0 00192110  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 801951B4 00192114  7C 08 03 A6 */	mtlr r0
/* 801951B8 00192118  38 21 00 C0 */	addi r1, r1, 0xc0
/* 801951BC 0019211C  4E 80 00 20 */	blr

.global sub_801951c0
sub_801951c0:
/* 801951C0 00192120  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801951C4 00192124  7C 08 02 A6 */	mflr r0
/* 801951C8 00192128  90 01 00 14 */	stw r0, 0x14(r1)
/* 801951CC 0019212C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801951D0 00192130  7C 7F 1B 78 */	mr r31, r3
/* 801951D4 00192134  90 83 00 00 */	stw r4, 0(r3)
/* 801951D8 00192138  38 7F 00 04 */	addi r3, r31, 4
/* 801951DC 0019213C  38 84 00 04 */	addi r4, r4, 4
/* 801951E0 00192140  48 17 D9 95 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801951E4 00192144  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801951E8 00192148  7F E3 FB 78 */	mr r3, r31
/* 801951EC 0019214C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801951F0 00192150  7C 08 03 A6 */	mtlr r0
/* 801951F4 00192154  38 21 00 10 */	addi r1, r1, 0x10
/* 801951F8 00192158  4E 80 00 20 */	blr

.global GetMessageTextAlpha__21CHudDecoInterfaceScanCFv
GetMessageTextAlpha__21CHudDecoInterfaceScanCFv:
/* 801951FC 0019215C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80195200 00192160  C0 23 02 38 */	lfs f1, 0x238(r3)
/* 80195204 00192164  C0 0D 8F C4 */	lfs f0, lbl_805A7B84@sda21(r13)
/* 80195208 00192168  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019520C 0019216C  40 80 00 0C */	bge lbl_80195218
/* 80195210 00192170  38 83 02 38 */	addi r4, r3, 0x238
/* 80195214 00192174  48 00 00 08 */	b lbl_8019521C
lbl_80195218:
/* 80195218 00192178  38 8D 8F C4 */	addi r4, r13, lbl_805A7B84@sda21
lbl_8019521C:
/* 8019521C 0019217C  C0 04 00 00 */	lfs f0, 0(r4)
/* 80195220 00192180  C0 23 01 C0 */	lfs f1, 0x1c0(r3)
/* 80195224 00192184  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80195228 00192188  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8019522C 0019218C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80195230 00192190  40 80 00 0C */	bge lbl_8019523C
/* 80195234 00192194  38 61 00 08 */	addi r3, r1, 8
/* 80195238 00192198  48 00 00 08 */	b lbl_80195240
lbl_8019523C:
/* 8019523C 0019219C  38 61 00 0C */	addi r3, r1, 0xc
lbl_80195240:
/* 80195240 001921A0  C0 22 A6 68 */	lfs f1, lbl_805AC388@sda21(r2)
/* 80195244 001921A4  C0 03 00 00 */	lfs f0, 0(r3)
/* 80195248 001921A8  EC 21 00 28 */	fsubs f1, f1, f0
/* 8019524C 001921AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80195250 001921B0  4E 80 00 20 */	blr

.global GetCurrScanInfo__21CHudDecoInterfaceScanCFRC13CStateManager
GetCurrScanInfo__21CHudDecoInterfaceScanCFRC13CStateManager:
/* 80195254 001921B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80195258 001921B8  7C 08 02 A6 */	mflr r0
/* 8019525C 001921BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80195260 001921C0  80 03 01 D4 */	lwz r0, 0x1d4(r3)
/* 80195264 001921C4  2C 00 00 00 */	cmpwi r0, 0
/* 80195268 001921C8  40 82 00 0C */	bne lbl_80195274
/* 8019526C 001921CC  38 60 00 00 */	li r3, 0
/* 80195270 001921D0  48 00 00 3C */	b lbl_801952AC
lbl_80195274:
/* 80195274 001921D4  A0 03 01 D2 */	lhz r0, 0x1d2(r3)
/* 80195278 001921D8  7C 83 23 78 */	mr r3, r4
/* 8019527C 001921DC  38 81 00 08 */	addi r4, r1, 8
/* 80195280 001921E0  B0 01 00 08 */	sth r0, 8(r1)
/* 80195284 001921E4  4B EB 73 21 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80195288 001921E8  7C 64 1B 78 */	mr r4, r3
/* 8019528C 001921EC  38 61 00 0C */	addi r3, r1, 0xc
/* 80195290 001921F0  4B F1 AA 01 */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 80195294 001921F4  80 63 00 04 */	lwz r3, 4(r3)
/* 80195298 001921F8  28 03 00 00 */	cmplwi r3, 0
/* 8019529C 001921FC  41 82 00 0C */	beq lbl_801952A8
/* 801952A0 00192200  4B EB E2 29 */	bl GetScannableObjectInfo__6CActorCFv
/* 801952A4 00192204  48 00 00 08 */	b lbl_801952AC
lbl_801952A8:
/* 801952A8 00192208  38 60 00 00 */	li r3, 0
lbl_801952AC:
/* 801952AC 0019220C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801952B0 00192210  7C 08 03 A6 */	mtlr r0
/* 801952B4 00192214  38 21 00 20 */	addi r1, r1, 0x20
/* 801952B8 00192218  4E 80 00 20 */	blr

.global UpdateScanDisplay__21CHudDecoInterfaceScanFRC13CStateManagerf
UpdateScanDisplay__21CHudDecoInterfaceScanFRC13CStateManagerf:
/* 801952BC 0019221C  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 801952C0 00192220  7C 08 02 A6 */	mflr r0
/* 801952C4 00192224  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 801952C8 00192228  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 801952CC 0019222C  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, qr0
/* 801952D0 00192230  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 801952D4 00192234  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, qr0
/* 801952D8 00192238  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 801952DC 0019223C  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, qr0
/* 801952E0 00192240  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 801952E4 00192244  F3 81 00 A8 */	psq_st f28, 168(r1), 0, qr0
/* 801952E8 00192248  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 801952EC 0019224C  93 C1 00 98 */	stw r30, 0x98(r1)
/* 801952F0 00192250  93 A1 00 94 */	stw r29, 0x94(r1)
/* 801952F4 00192254  93 81 00 90 */	stw r28, 0x90(r1)
/* 801952F8 00192258  7C 9F 23 78 */	mr r31, r4
/* 801952FC 0019225C  7C 7E 1B 78 */	mr r30, r3
/* 80195300 00192260  80 64 08 4C */	lwz r3, 0x84c(r4)
/* 80195304 00192264  FF C0 08 90 */	fmr f30, f1
/* 80195308 00192268  80 9E 01 D4 */	lwz r4, 0x1d4(r30)
/* 8019530C 0019226C  83 A3 03 A8 */	lwz r29, 0x3a8(r3)
/* 80195310 00192270  A0 03 03 10 */	lhz r0, 0x310(r3)
/* 80195314 00192274  7C 1D 20 00 */	cmpw r29, r4
/* 80195318 00192278  A3 83 03 B4 */	lhz r28, 0x3b4(r3)
/* 8019531C 0019227C  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80195320 00192280  C3 A3 03 AC */	lfs f29, 0x3ac(r3)
/* 80195324 00192284  41 82 00 D8 */	beq lbl_801953FC
/* 80195328 00192288  88 03 09 C6 */	lbz r0, 0x9c6(r3)
/* 8019532C 0019228C  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 80195330 00192290  41 82 00 C8 */	beq lbl_801953F8
/* 80195334 00192294  2C 1D 00 02 */	cmpwi r29, 2
/* 80195338 00192298  40 82 00 64 */	bne lbl_8019539C
/* 8019533C 0019229C  2C 04 00 01 */	cmpwi r4, 1
/* 80195340 001922A0  40 82 00 B8 */	bne lbl_801953F8
/* 80195344 001922A4  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 80195348 001922A8  38 80 00 0F */	li r4, 0xf
/* 8019534C 001922AC  48 1C 13 B1 */	bl GetString__12CStringTableCFi
/* 80195350 001922B0  7C 64 1B 78 */	mr r4, r3
/* 80195354 001922B4  38 61 00 74 */	addi r3, r1, 0x74
/* 80195358 001922B8  4B E8 06 99 */	bl wstring_l__4rstlFPCw
/* 8019535C 001922BC  80 7E 02 54 */	lwz r3, 0x254(r30)
/* 80195360 001922C0  38 81 00 74 */	addi r4, r1, 0x74
/* 80195364 001922C4  38 A0 00 00 */	li r5, 0
/* 80195368 001922C8  38 63 00 D4 */	addi r3, r3, 0xd4
/* 8019536C 001922CC  48 13 45 19 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80195370 001922D0  38 61 00 74 */	addi r3, r1, 0x74
/* 80195374 001922D4  48 1A 7D C1 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 80195378 001922D8  80 7E 02 54 */	lwz r3, 0x254(r30)
/* 8019537C 001922DC  38 80 00 00 */	li r4, 0
/* 80195380 001922E0  C0 22 A6 6C */	lfs f1, lbl_805AC38C@sda21(r2)
/* 80195384 001922E4  C0 42 A6 88 */	lfs f2, lbl_805AC3A8@sda21(r2)
/* 80195388 001922E8  38 63 00 D4 */	addi r3, r3, 0xd4
/* 8019538C 001922EC  48 13 2D 8D */	bl SetTypeWriteEffectOptions__15CGuiTextSupportFbff
/* 80195390 001922F0  C0 02 A6 78 */	lfs f0, lbl_805AC398@sda21(r2)
/* 80195394 001922F4  D0 1E 02 38 */	stfs f0, 0x238(r30)
/* 80195398 001922F8  48 00 00 60 */	b lbl_801953F8
lbl_8019539C:
/* 8019539C 001922FC  2C 1D 00 01 */	cmpwi r29, 1
/* 801953A0 00192300  40 82 00 58 */	bne lbl_801953F8
/* 801953A4 00192304  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 801953A8 00192308  38 80 00 0E */	li r4, 0xe
/* 801953AC 0019230C  48 1C 13 51 */	bl GetString__12CStringTableCFi
/* 801953B0 00192310  7C 64 1B 78 */	mr r4, r3
/* 801953B4 00192314  38 61 00 64 */	addi r3, r1, 0x64
/* 801953B8 00192318  4B E8 06 39 */	bl wstring_l__4rstlFPCw
/* 801953BC 0019231C  80 7E 02 54 */	lwz r3, 0x254(r30)
/* 801953C0 00192320  38 81 00 64 */	addi r4, r1, 0x64
/* 801953C4 00192324  38 A0 00 00 */	li r5, 0
/* 801953C8 00192328  38 63 00 D4 */	addi r3, r3, 0xd4
/* 801953CC 0019232C  48 13 44 B9 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 801953D0 00192330  38 61 00 64 */	addi r3, r1, 0x64
/* 801953D4 00192334  48 1A 7D 61 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 801953D8 00192338  80 7E 02 54 */	lwz r3, 0x254(r30)
/* 801953DC 0019233C  38 80 00 00 */	li r4, 0
/* 801953E0 00192340  C0 22 A6 6C */	lfs f1, lbl_805AC38C@sda21(r2)
/* 801953E4 00192344  C0 42 A6 88 */	lfs f2, lbl_805AC3A8@sda21(r2)
/* 801953E8 00192348  38 63 00 D4 */	addi r3, r3, 0xd4
/* 801953EC 0019234C  48 13 2D 2D */	bl SetTypeWriteEffectOptions__15CGuiTextSupportFbff
/* 801953F0 00192350  C0 02 A6 68 */	lfs f0, lbl_805AC388@sda21(r2)
/* 801953F4 00192354  D0 1E 02 38 */	stfs f0, 0x238(r30)
lbl_801953F8:
/* 801953F8 00192358  93 BE 01 D4 */	stw r29, 0x1d4(r30)
lbl_801953FC:
/* 801953FC 0019235C  A0 1E 01 D2 */	lhz r0, 0x1d2(r30)
/* 80195400 00192360  7C 1C 00 40 */	cmplw r28, r0
/* 80195404 00192364  41 82 00 08 */	beq lbl_8019540C
/* 80195408 00192368  B3 9E 01 D2 */	sth r28, 0x1d2(r30)
lbl_8019540C:
/* 8019540C 0019236C  A0 61 00 24 */	lhz r3, 0x24(r1)
/* 80195410 00192370  A0 1E 01 D0 */	lhz r0, 0x1d0(r30)
/* 80195414 00192374  7C 03 00 40 */	cmplw r3, r0
/* 80195418 00192378  41 82 00 AC */	beq lbl_801954C4
/* 8019541C 0019237C  B0 7E 01 D0 */	sth r3, 0x1d0(r30)
/* 80195420 00192380  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80195424 00192384  7C 03 00 40 */	cmplw r3, r0
/* 80195428 00192388  41 82 00 9C */	beq lbl_801954C4
/* 8019542C 0019238C  B0 61 00 20 */	sth r3, 0x20(r1)
/* 80195430 00192390  7F E5 FB 78 */	mr r5, r31
/* 80195434 00192394  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 80195438 00192398  38 81 00 20 */	addi r4, r1, 0x20
/* 8019543C 0019239C  4B E7 CB 65 */	bl ObjectInScanningRange__7CPlayerF9TUniqueIdRC13CStateManager
/* 80195440 001923A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80195444 001923A4  40 82 00 80 */	bne lbl_801954C4
/* 80195448 001923A8  38 61 00 54 */	addi r3, r1, 0x54
/* 8019544C 001923AC  38 8D 8F CC */	addi r4, r13, lbl_805A7B8C@sda21
/* 80195450 001923B0  4B E8 05 A1 */	bl wstring_l__4rstlFPCw
/* 80195454 001923B4  80 7E 02 54 */	lwz r3, 0x254(r30)
/* 80195458 001923B8  38 81 00 54 */	addi r4, r1, 0x54
/* 8019545C 001923BC  38 A0 00 00 */	li r5, 0
/* 80195460 001923C0  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80195464 001923C4  48 13 44 21 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80195468 001923C8  38 61 00 54 */	addi r3, r1, 0x54
/* 8019546C 001923CC  48 1A 7C C9 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 80195470 001923D0  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 80195474 001923D4  38 80 00 10 */	li r4, 0x10
/* 80195478 001923D8  48 1C 12 85 */	bl GetString__12CStringTableCFi
/* 8019547C 001923DC  7C 64 1B 78 */	mr r4, r3
/* 80195480 001923E0  38 61 00 44 */	addi r3, r1, 0x44
/* 80195484 001923E4  4B E8 05 6D */	bl wstring_l__4rstlFPCw
/* 80195488 001923E8  80 7E 02 54 */	lwz r3, 0x254(r30)
/* 8019548C 001923EC  38 81 00 44 */	addi r4, r1, 0x44
/* 80195490 001923F0  38 A0 00 00 */	li r5, 0
/* 80195494 001923F4  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80195498 001923F8  48 13 43 ED */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 8019549C 001923FC  38 61 00 44 */	addi r3, r1, 0x44
/* 801954A0 00192400  48 1A 7C 95 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 801954A4 00192404  80 7E 02 54 */	lwz r3, 0x254(r30)
/* 801954A8 00192408  38 80 00 01 */	li r4, 1
/* 801954AC 0019240C  C0 22 A6 6C */	lfs f1, lbl_805AC38C@sda21(r2)
/* 801954B0 00192410  C0 42 A6 88 */	lfs f2, lbl_805AC3A8@sda21(r2)
/* 801954B4 00192414  38 63 00 D4 */	addi r3, r3, 0xd4
/* 801954B8 00192418  48 13 2C 61 */	bl SetTypeWriteEffectOptions__15CGuiTextSupportFbff
/* 801954BC 0019241C  C0 02 A6 68 */	lfs f0, lbl_805AC388@sda21(r2)
/* 801954C0 00192420  D0 1E 02 38 */	stfs f0, 0x238(r30)
lbl_801954C4:
/* 801954C4 00192424  7F C3 F3 78 */	mr r3, r30
/* 801954C8 00192428  7F E4 FB 78 */	mr r4, r31
/* 801954CC 0019242C  4B FF FD 89 */	bl GetCurrScanInfo__21CHudDecoInterfaceScanCFRC13CStateManager
/* 801954D0 00192430  A0 9E 01 D2 */	lhz r4, 0x1d2(r30)
/* 801954D4 00192434  7C 7C 1B 78 */	mr r28, r3
/* 801954D8 00192438  A0 1E 00 28 */	lhz r0, 0x28(r30)
/* 801954DC 0019243C  7C 04 00 40 */	cmplw r4, r0
/* 801954E0 00192440  40 82 00 0C */	bne lbl_801954EC
/* 801954E4 00192444  28 1C 00 00 */	cmplwi r28, 0
/* 801954E8 00192448  40 82 00 58 */	bne lbl_80195540
lbl_801954EC:
/* 801954EC 0019244C  38 7E 00 18 */	addi r3, r30, 0x18
/* 801954F0 00192450  4B FD EB AD */	bl StopScan__12CScanDisplayFv
/* 801954F4 00192454  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 801954F8 00192458  2C 00 00 00 */	cmpwi r0, 0
/* 801954FC 0019245C  40 82 00 44 */	bne lbl_80195540
/* 80195500 00192460  28 1C 00 00 */	cmplwi r28, 0
/* 80195504 00192464  41 82 00 3C */	beq lbl_80195540
/* 80195508 00192468  A0 1E 01 D2 */	lhz r0, 0x1d2(r30)
/* 8019550C 0019246C  FC 20 E8 90 */	fmr f1, f29
/* 80195510 00192470  7F 85 E3 78 */	mr r5, r28
/* 80195514 00192474  38 7E 00 18 */	addi r3, r30, 0x18
/* 80195518 00192478  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 8019551C 0019247C  38 81 00 1C */	addi r4, r1, 0x1c
/* 80195520 00192480  80 1E 02 74 */	lwz r0, 0x274(r30)
/* 80195524 00192484  90 01 00 08 */	stw r0, 8(r1)
/* 80195528 00192488  80 DE 02 64 */	lwz r6, 0x264(r30)
/* 8019552C 0019248C  80 FE 02 68 */	lwz r7, 0x268(r30)
/* 80195530 00192490  81 1E 02 60 */	lwz r8, 0x260(r30)
/* 80195534 00192494  81 3E 02 6C */	lwz r9, 0x26c(r30)
/* 80195538 00192498  81 5E 02 70 */	lwz r10, 0x270(r30)
/* 8019553C 0019249C  4B FD EB A5 */	bl StartScan__12CScanDisplayF9TUniqueIdRC20CScannableObjectInfoP12CGuiTextPaneP10CGuiWidgetf
lbl_80195540:
/* 80195540 001924A0  FC 20 F0 90 */	fmr f1, f30
/* 80195544 001924A4  38 7E 00 18 */	addi r3, r30, 0x18
/* 80195548 001924A8  FC 40 E8 90 */	fmr f2, f29
/* 8019554C 001924AC  4B FD DC 09 */	bl Update__12CScanDisplayFff
/* 80195550 001924B0  A0 7E 01 D2 */	lhz r3, 0x1d2(r30)
/* 80195554 001924B4  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80195558 001924B8  7C 03 00 40 */	cmplw r3, r0
/* 8019555C 001924BC  41 82 00 68 */	beq lbl_801955C4
/* 80195560 001924C0  7F C3 F3 78 */	mr r3, r30
/* 80195564 001924C4  7F E4 FB 78 */	mr r4, r31
/* 80195568 001924C8  4B FF FC ED */	bl GetCurrScanInfo__21CHudDecoInterfaceScanCFRC13CStateManager
/* 8019556C 001924CC  28 03 00 00 */	cmplwi r3, 0
/* 80195570 001924D0  41 82 00 54 */	beq lbl_801955C4
/* 80195574 001924D4  A0 1E 01 D2 */	lhz r0, 0x1d2(r30)
/* 80195578 001924D8  7F E3 FB 78 */	mr r3, r31
/* 8019557C 001924DC  38 81 00 18 */	addi r4, r1, 0x18
/* 80195580 001924E0  B0 01 00 18 */	sth r0, 0x18(r1)
/* 80195584 001924E4  4B EB 70 21 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80195588 001924E8  7C 64 1B 78 */	mr r4, r3
/* 8019558C 001924EC  38 61 00 3C */	addi r3, r1, 0x3c
/* 80195590 001924F0  4B F1 A7 01 */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 80195594 001924F4  80 63 00 04 */	lwz r3, 4(r3)
/* 80195598 001924F8  28 03 00 00 */	cmplwi r3, 0
/* 8019559C 001924FC  41 82 00 28 */	beq lbl_801955C4
/* 801955A0 00192500  4B EB DF 29 */	bl GetScannableObjectInfo__6CActorCFv
/* 801955A4 00192504  28 03 00 00 */	cmplwi r3, 0
/* 801955A8 00192508  41 82 00 1C */	beq lbl_801955C4
/* 801955AC 0019250C  C0 3E 01 D8 */	lfs f1, 0x1d8(r30)
/* 801955B0 00192510  38 80 00 00 */	li r4, 0
/* 801955B4 00192514  C0 03 00 08 */	lfs f0, 8(r3)
/* 801955B8 00192518  80 7E 02 5C */	lwz r3, 0x25c(r30)
/* 801955BC 0019251C  EC 21 00 24 */	fdivs f1, f1, f0
/* 801955C0 00192520  48 13 63 09 */	bl SetCurrEnergy__16CAuiEnergyBarT01Ffb
lbl_801955C4:
/* 801955C4 00192524  80 1E 01 D4 */	lwz r0, 0x1d4(r30)
/* 801955C8 00192528  2C 00 00 01 */	cmpwi r0, 1
/* 801955CC 0019252C  41 82 00 60 */	beq lbl_8019562C
/* 801955D0 00192530  A0 7E 01 D0 */	lhz r3, 0x1d0(r30)
/* 801955D4 00192534  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801955D8 00192538  7C 03 00 40 */	cmplw r3, r0
/* 801955DC 0019253C  41 82 00 24 */	beq lbl_80195600
/* 801955E0 00192540  A0 1E 01 D0 */	lhz r0, 0x1d0(r30)
/* 801955E4 00192544  7F E5 FB 78 */	mr r5, r31
/* 801955E8 00192548  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 801955EC 0019254C  38 81 00 14 */	addi r4, r1, 0x14
/* 801955F0 00192550  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801955F4 00192554  4B E7 C9 AD */	bl ObjectInScanningRange__7CPlayerF9TUniqueIdRC13CStateManager
/* 801955F8 00192558  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801955FC 0019255C  41 82 00 30 */	beq lbl_8019562C
lbl_80195600:
/* 80195600 00192560  C0 3E 02 38 */	lfs f1, 0x238(r30)
/* 80195604 00192564  C0 0D 8F B0 */	lfs f0, lbl_805A7B70@sda21(r13)
/* 80195608 00192568  EC 21 F0 28 */	fsubs f1, f1, f30
/* 8019560C 0019256C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80195610 00192570  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80195614 00192574  40 80 00 0C */	bge lbl_80195620
/* 80195618 00192578  38 61 00 38 */	addi r3, r1, 0x38
/* 8019561C 0019257C  48 00 00 08 */	b lbl_80195624
lbl_80195620:
/* 80195620 00192580  38 6D 8F B0 */	addi r3, r13, lbl_805A7B70@sda21
lbl_80195624:
/* 80195624 00192584  C0 03 00 00 */	lfs f0, 0(r3)
/* 80195628 00192588  D0 1E 02 38 */	stfs f0, 0x238(r30)
lbl_8019562C:
/* 8019562C 0019258C  C0 3E 02 38 */	lfs f1, 0x238(r30)
/* 80195630 00192590  C0 02 A6 6C */	lfs f0, lbl_805AC38C@sda21(r2)
/* 80195634 00192594  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80195638 00192598  40 81 00 5C */	ble lbl_80195694
/* 8019563C 0019259C  C0 0D 8F B4 */	lfs f0, lbl_805A7B74@sda21(r13)
/* 80195640 001925A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80195644 001925A4  40 80 00 0C */	bge lbl_80195650
/* 80195648 001925A8  38 7E 02 38 */	addi r3, r30, 0x238
/* 8019564C 001925AC  48 00 00 08 */	b lbl_80195654
lbl_80195650:
/* 80195650 001925B0  38 6D 8F B4 */	addi r3, r13, lbl_805A7B74@sda21
lbl_80195654:
/* 80195654 001925B4  C3 A3 00 00 */	lfs f29, 0(r3)
/* 80195658 001925B8  48 1B 49 55 */	bl White__6CColorFv
/* 8019565C 001925BC  C0 02 A6 7C */	lfs f0, lbl_805AC39C@sda21(r2)
/* 80195660 001925C0  EF 80 07 72 */	fmuls f28, f0, f29
/* 80195664 001925C4  F3 81 A0 11 */	psq_st f28, 17(r1), 1, qr2
/* 80195668 001925C8  38 81 00 34 */	addi r4, r1, 0x34
/* 8019566C 001925CC  80 63 00 00 */	lwz r3, 0(r3)
/* 80195670 001925D0  88 01 00 11 */	lbz r0, 0x11(r1)
/* 80195674 001925D4  50 60 00 2E */	rlwimi r0, r3, 0, 0, 0x17
/* 80195678 001925D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8019567C 001925DC  80 7E 02 54 */	lwz r3, 0x254(r30)
/* 80195680 001925E0  48 13 51 ED */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80195684 001925E4  80 7E 02 54 */	lwz r3, 0x254(r30)
/* 80195688 001925E8  38 80 00 01 */	li r4, 1
/* 8019568C 001925EC  48 13 4F A1 */	bl SetIsVisible__10CGuiWidgetFb
/* 80195690 001925F0  48 00 00 10 */	b lbl_801956A0
lbl_80195694:
/* 80195694 001925F4  80 7E 02 54 */	lwz r3, 0x254(r30)
/* 80195698 001925F8  38 80 00 00 */	li r4, 0
/* 8019569C 001925FC  48 13 4F 91 */	bl SetIsVisible__10CGuiWidgetFb
lbl_801956A0:
/* 801956A0 00192600  7F C3 F3 78 */	mr r3, r30
/* 801956A4 00192604  7F E4 FB 78 */	mr r4, r31
/* 801956A8 00192608  4B FF FB AD */	bl GetCurrScanInfo__21CHudDecoInterfaceScanCFRC13CStateManager
/* 801956AC 0019260C  28 03 00 00 */	cmplwi r3, 0
/* 801956B0 00192610  41 82 00 38 */	beq lbl_801956E8
/* 801956B4 00192614  C0 42 A6 78 */	lfs f2, lbl_805AC398@sda21(r2)
/* 801956B8 00192618  C0 3E 02 3C */	lfs f1, 0x23c(r30)
/* 801956BC 0019261C  C0 0D 8F B8 */	lfs f0, lbl_805A7B78@sda21(r13)
/* 801956C0 00192620  EC 22 0F BA */	fmadds f1, f2, f30, f1
/* 801956C4 00192624  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801956C8 00192628  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 801956CC 0019262C  40 80 00 0C */	bge lbl_801956D8
/* 801956D0 00192630  38 61 00 30 */	addi r3, r1, 0x30
/* 801956D4 00192634  48 00 00 08 */	b lbl_801956DC
lbl_801956D8:
/* 801956D8 00192638  38 6D 8F B8 */	addi r3, r13, lbl_805A7B78@sda21
lbl_801956DC:
/* 801956DC 0019263C  C0 03 00 00 */	lfs f0, 0(r3)
/* 801956E0 00192640  D0 1E 02 3C */	stfs f0, 0x23c(r30)
/* 801956E4 00192644  48 00 00 34 */	b lbl_80195718
lbl_801956E8:
/* 801956E8 00192648  C0 42 A6 78 */	lfs f2, lbl_805AC398@sda21(r2)
/* 801956EC 0019264C  C0 3E 02 3C */	lfs f1, 0x23c(r30)
/* 801956F0 00192650  C0 0D 8F BC */	lfs f0, lbl_805A7B7C@sda21(r13)
/* 801956F4 00192654  EC 22 0F BC */	fnmsubs f1, f2, f30, f1
/* 801956F8 00192658  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801956FC 0019265C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80195700 00192660  40 80 00 0C */	bge lbl_8019570C
/* 80195704 00192664  38 61 00 2C */	addi r3, r1, 0x2c
/* 80195708 00192668  48 00 00 08 */	b lbl_80195710
lbl_8019570C:
/* 8019570C 0019266C  38 6D 8F BC */	addi r3, r13, lbl_805A7B7C@sda21
lbl_80195710:
/* 80195710 00192670  C0 03 00 00 */	lfs f0, 0(r3)
/* 80195714 00192674  D0 1E 02 3C */	stfs f0, 0x23c(r30)
lbl_80195718:
/* 80195718 00192678  C0 3E 02 3C */	lfs f1, 0x23c(r30)
/* 8019571C 0019267C  C0 02 A6 6C */	lfs f0, lbl_805AC38C@sda21(r2)
/* 80195720 00192680  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80195724 00192684  40 81 00 60 */	ble lbl_80195784
/* 80195728 00192688  C0 0D 8F C0 */	lfs f0, lbl_805A7B80@sda21(r13)
/* 8019572C 0019268C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80195730 00192690  40 80 00 0C */	bge lbl_8019573C
/* 80195734 00192694  38 7E 02 3C */	addi r3, r30, 0x23c
/* 80195738 00192698  48 00 00 08 */	b lbl_80195740
lbl_8019573C:
/* 8019573C 0019269C  38 6D 8F C0 */	addi r3, r13, lbl_805A7B80@sda21
lbl_80195740:
/* 80195740 001926A0  C3 A3 00 00 */	lfs f29, 0(r3)
/* 80195744 001926A4  48 1B 48 69 */	bl White__6CColorFv
/* 80195748 001926A8  C0 02 A6 7C */	lfs f0, lbl_805AC39C@sda21(r2)
/* 8019574C 001926AC  EF E0 07 72 */	fmuls f31, f0, f29
/* 80195750 001926B0  F3 E1 A0 10 */	psq_st f31, 16(r1), 1, qr2
/* 80195754 001926B4  38 81 00 28 */	addi r4, r1, 0x28
/* 80195758 001926B8  80 63 00 00 */	lwz r3, 0(r3)
/* 8019575C 001926BC  88 01 00 10 */	lbz r0, 0x10(r1)
/* 80195760 001926C0  50 60 00 2E */	rlwimi r0, r3, 0, 0, 0x17
/* 80195764 001926C4  90 01 00 28 */	stw r0, 0x28(r1)
/* 80195768 001926C8  80 7E 02 58 */	lwz r3, 0x258(r30)
/* 8019576C 001926CC  48 13 51 01 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80195770 001926D0  80 7E 02 58 */	lwz r3, 0x258(r30)
/* 80195774 001926D4  38 80 00 01 */	li r4, 1
/* 80195778 001926D8  38 A0 00 01 */	li r5, 1
/* 8019577C 001926DC  48 13 4F 6D */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 80195780 001926E0  48 00 00 14 */	b lbl_80195794
lbl_80195784:
/* 80195784 001926E4  80 7E 02 58 */	lwz r3, 0x258(r30)
/* 80195788 001926E8  38 80 00 00 */	li r4, 0
/* 8019578C 001926EC  38 A0 00 01 */	li r5, 1
/* 80195790 001926F0  48 13 4F 59 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
lbl_80195794:
/* 80195794 001926F4  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, qr0
/* 80195798 001926F8  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 8019579C 001926FC  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, qr0
/* 801957A0 00192700  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 801957A4 00192704  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, qr0
/* 801957A8 00192708  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 801957AC 0019270C  E3 81 00 A8 */	psq_l f28, 168(r1), 0, qr0
/* 801957B0 00192710  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 801957B4 00192714  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 801957B8 00192718  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 801957BC 0019271C  83 A1 00 94 */	lwz r29, 0x94(r1)
/* 801957C0 00192720  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 801957C4 00192724  83 81 00 90 */	lwz r28, 0x90(r1)
/* 801957C8 00192728  7C 08 03 A6 */	mtlr r0
/* 801957CC 0019272C  38 21 00 E0 */	addi r1, r1, 0xe0
/* 801957D0 00192730  4E 80 00 20 */	blr

.global UpdateCameraDebugSettings__21CHudDecoInterfaceScanFfff
UpdateCameraDebugSettings__21CHudDecoInterfaceScanFfff:
/* 801957D4 00192734  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801957D8 00192738  C0 02 A6 6C */	lfs f0, lbl_805AC38C@sda21(r2)
/* 801957DC 0019273C  81 43 02 44 */	lwz r10, 0x244(r3)
/* 801957E0 00192740  81 2A 00 BC */	lwz r9, 0xbc(r10)
/* 801957E4 00192744  81 0A 00 C0 */	lwz r8, 0xc0(r10)
/* 801957E8 00192748  91 21 00 20 */	stw r9, 0x20(r1)
/* 801957EC 0019274C  80 EA 00 C4 */	lwz r7, 0xc4(r10)
/* 801957F0 00192750  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 801957F4 00192754  80 CA 00 C8 */	lwz r6, 0xc8(r10)
/* 801957F8 00192758  80 AA 00 CC */	lwz r5, 0xcc(r10)
/* 801957FC 0019275C  80 8A 00 D0 */	lwz r4, 0xd0(r10)
/* 80195800 00192760  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80195804 00192764  91 21 00 08 */	stw r9, 8(r1)
/* 80195808 00192768  90 0A 00 BC */	stw r0, 0xbc(r10)
/* 8019580C 0019276C  91 0A 00 C0 */	stw r8, 0xc0(r10)
/* 80195810 00192770  90 EA 00 C4 */	stw r7, 0xc4(r10)
/* 80195814 00192774  90 CA 00 C8 */	stw r6, 0xc8(r10)
/* 80195818 00192778  90 AA 00 CC */	stw r5, 0xcc(r10)
/* 8019581C 0019277C  90 8A 00 D0 */	stw r4, 0xd0(r10)
/* 80195820 00192780  D0 03 02 0C */	stfs f0, 0x20c(r3)
/* 80195824 00192784  D0 43 02 10 */	stfs f2, 0x210(r3)
/* 80195828 00192788  91 01 00 0C */	stw r8, 0xc(r1)
/* 8019582C 0019278C  90 E1 00 10 */	stw r7, 0x10(r1)
/* 80195830 00192790  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80195834 00192794  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80195838 00192798  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8019583C 0019279C  91 01 00 24 */	stw r8, 0x24(r1)
/* 80195840 001927A0  90 E1 00 28 */	stw r7, 0x28(r1)
/* 80195844 001927A4  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 80195848 001927A8  90 A1 00 30 */	stw r5, 0x30(r1)
/* 8019584C 001927AC  90 81 00 34 */	stw r4, 0x34(r1)
/* 80195850 001927B0  D0 63 02 14 */	stfs f3, 0x214(r3)
/* 80195854 001927B4  38 21 00 40 */	addi r1, r1, 0x40
/* 80195858 001927B8  4E 80 00 20 */	blr

.global ProcessInput__21CHudDecoInterfaceScanFRC11CFinalInput
ProcessInput__21CHudDecoInterfaceScanFRC11CFinalInput:
/* 8019585C 001927BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80195860 001927C0  7C 08 02 A6 */	mflr r0
/* 80195864 001927C4  38 63 00 18 */	addi r3, r3, 0x18
/* 80195868 001927C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019586C 001927CC  4B FD D4 D9 */	bl ProcessInput__12CScanDisplayFRC11CFinalInput
/* 80195870 001927D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80195874 001927D4  7C 08 03 A6 */	mtlr r0
/* 80195878 001927D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8019587C 001927DC  4E 80 00 20 */	blr

.global Draw__21CHudDecoInterfaceScanCFv
Draw__21CHudDecoInterfaceScanCFv:
/* 80195880 001927E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80195884 001927E4  7C 08 02 A6 */	mflr r0
/* 80195888 001927E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019588C 001927EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80195890 001927F0  7C 7F 1B 78 */	mr r31, r3
/* 80195894 001927F4  38 7F 00 18 */	addi r3, r31, 0x18
/* 80195898 001927F8  4B FD D3 A9 */	bl Draw__12CScanDisplayCFv
/* 8019589C 001927FC  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801958A0 00192800  28 03 00 00 */	cmplwi r3, 0
/* 801958A4 00192804  41 82 00 10 */	beq lbl_801958B4
/* 801958A8 00192808  3C 80 80 5A */	lis r4, lbl_8059FD08@ha
/* 801958AC 0019280C  38 84 FD 08 */	addi r4, r4, lbl_8059FD08@l
/* 801958B0 00192810  48 12 CE 85 */	bl Draw__9CGuiFrameCFRC19CGuiWidgetDrawParms
lbl_801958B4:
/* 801958B4 00192814  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801958B8 00192818  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801958BC 0019281C  7C 08 03 A6 */	mtlr r0
/* 801958C0 00192820  38 21 00 10 */	addi r1, r1, 0x10
/* 801958C4 00192824  4E 80 00 20 */	blr

.global Update__21CHudDecoInterfaceScanFfRC13CStateManager
Update__21CHudDecoInterfaceScanFfRC13CStateManager:
/* 801958C8 00192828  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 801958CC 0019282C  7C 08 02 A6 */	mflr r0
/* 801958D0 00192830  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 801958D4 00192834  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 801958D8 00192838  F3 E1 00 98 */	psq_st f31, 152(r1), 0, qr0
/* 801958DC 0019283C  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 801958E0 00192840  93 C1 00 88 */	stw r30, 0x88(r1)
/* 801958E4 00192844  7C 9F 23 78 */	mr r31, r4
/* 801958E8 00192848  FF E0 08 90 */	fmr f31, f1
/* 801958EC 0019284C  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 801958F0 00192850  7C 7E 1B 78 */	mr r30, r3
/* 801958F4 00192854  80 04 03 A8 */	lwz r0, 0x3a8(r4)
/* 801958F8 00192858  2C 00 00 00 */	cmpwi r0, 0
/* 801958FC 0019285C  41 82 00 0C */	beq lbl_80195908
/* 80195900 00192860  C0 04 03 AC */	lfs f0, 0x3ac(r4)
/* 80195904 00192864  D0 1E 01 D8 */	stfs f0, 0x1d8(r30)
lbl_80195908:
/* 80195908 00192868  2C 00 00 01 */	cmpwi r0, 1
/* 8019590C 0019286C  41 82 00 0C */	beq lbl_80195918
/* 80195910 00192870  2C 00 00 02 */	cmpwi r0, 2
/* 80195914 00192874  40 82 00 30 */	bne lbl_80195944
lbl_80195918:
/* 80195918 00192878  C0 1E 02 30 */	lfs f0, 0x230(r30)
/* 8019591C 0019287C  80 6D A1 38 */	lwz r3, gpTweakGui@sda21(r13)
/* 80195920 00192880  EC 20 F8 2A */	fadds f1, f0, f31
/* 80195924 00192884  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80195928 00192888  C4 03 02 28 */	lfsu f0, 0x228(r3)
/* 8019592C 0019288C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80195930 00192890  40 80 00 08 */	bge lbl_80195938
/* 80195934 00192894  38 61 00 0C */	addi r3, r1, 0xc
lbl_80195938:
/* 80195938 00192898  C0 03 00 00 */	lfs f0, 0(r3)
/* 8019593C 0019289C  D0 1E 02 30 */	stfs f0, 0x230(r30)
/* 80195940 001928A0  48 00 00 30 */	b lbl_80195970
lbl_80195944:
/* 80195944 001928A4  C0 3E 02 30 */	lfs f1, 0x230(r30)
/* 80195948 001928A8  C0 0D 8F AC */	lfs f0, lbl_805A7B6C@sda21(r13)
/* 8019594C 001928AC  EC 21 F8 28 */	fsubs f1, f1, f31
/* 80195950 001928B0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80195954 001928B4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80195958 001928B8  40 80 00 0C */	bge lbl_80195964
/* 8019595C 001928BC  38 61 00 08 */	addi r3, r1, 8
/* 80195960 001928C0  48 00 00 08 */	b lbl_80195968
lbl_80195964:
/* 80195964 001928C4  38 6D 8F AC */	addi r3, r13, lbl_805A7B6C@sda21
lbl_80195968:
/* 80195968 001928C8  C0 03 00 00 */	lfs f0, 0(r3)
/* 8019596C 001928CC  D0 1E 02 30 */	stfs f0, 0x230(r30)
lbl_80195970:
/* 80195970 001928D0  80 6D A1 38 */	lwz r3, gpTweakGui@sda21(r13)
/* 80195974 001928D4  C0 1E 02 30 */	lfs f0, 0x230(r30)
/* 80195978 001928D8  C0 23 02 24 */	lfs f1, 0x224(r3)
/* 8019597C 001928DC  C0 9E 02 34 */	lfs f4, 0x234(r30)
/* 80195980 001928E0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80195984 001928E4  C0 43 02 20 */	lfs f2, 0x220(r3)
/* 80195988 001928E8  40 80 00 0C */	bge lbl_80195994
/* 8019598C 001928EC  C0 62 A6 6C */	lfs f3, lbl_805AC38C@sda21(r2)
/* 80195990 001928F0  48 00 00 0C */	b lbl_8019599C
lbl_80195994:
/* 80195994 001928F4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80195998 001928F8  EC 60 10 24 */	fdivs f3, f0, f2
lbl_8019599C:
/* 8019599C 001928FC  C0 22 A6 68 */	lfs f1, lbl_805AC388@sda21(r2)
/* 801959A0 00192900  C0 03 02 18 */	lfs f0, 0x218(r3)
/* 801959A4 00192904  EC 41 18 28 */	fsubs f2, f1, f3
/* 801959A8 00192908  C0 23 02 70 */	lfs f1, 0x270(r3)
/* 801959AC 0019290C  EC 03 00 32 */	fmuls f0, f3, f0
/* 801959B0 00192910  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 801959B4 00192914  D0 1E 02 34 */	stfs f0, 0x234(r30)
/* 801959B8 00192918  C0 3E 02 34 */	lfs f1, 0x234(r30)
/* 801959BC 0019291C  FC 04 08 00 */	fcmpu cr0, f4, f1
/* 801959C0 00192920  41 82 00 AC */	beq lbl_80195A6C
/* 801959C4 00192924  C0 02 A6 6C */	lfs f0, lbl_805AC38C@sda21(r2)
/* 801959C8 00192928  38 61 00 34 */	addi r3, r1, 0x34
/* 801959CC 0019292C  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 801959D0 00192930  38 A1 00 4C */	addi r5, r1, 0x4c
/* 801959D4 00192934  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 801959D8 00192938  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 801959DC 0019293C  80 9E 02 4C */	lwz r4, 0x24c(r30)
/* 801959E0 00192940  48 12 F7 15 */	bl RotateO2P__10CGuiObjectCFRC9CVector3f
/* 801959E4 00192944  C0 3E 02 1C */	lfs f1, 0x21c(r30)
/* 801959E8 00192948  38 81 00 40 */	addi r4, r1, 0x40
/* 801959EC 0019294C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 801959F0 00192950  C0 7E 02 20 */	lfs f3, 0x220(r30)
/* 801959F4 00192954  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 801959F8 00192958  EC 81 00 2A */	fadds f4, f1, f0
/* 801959FC 0019295C  C0 3E 02 18 */	lfs f1, 0x218(r30)
/* 80195A00 00192960  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80195A04 00192964  EC 43 10 2A */	fadds f2, f3, f2
/* 80195A08 00192968  D0 81 00 44 */	stfs f4, 0x44(r1)
/* 80195A0C 0019296C  EC 01 00 2A */	fadds f0, f1, f0
/* 80195A10 00192970  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80195A14 00192974  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80195A18 00192978  80 7E 02 4C */	lwz r3, 0x24c(r30)
/* 80195A1C 0019297C  48 12 F7 AD */	bl SetLocalPosition__10CGuiObjectFRC9CVector3f
/* 80195A20 00192980  80 9E 02 50 */	lwz r4, 0x250(r30)
/* 80195A24 00192984  38 61 00 1C */	addi r3, r1, 0x1c
/* 80195A28 00192988  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80195A2C 0019298C  48 12 F6 C9 */	bl RotateO2P__10CGuiObjectCFRC9CVector3f
/* 80195A30 00192990  C0 3E 02 28 */	lfs f1, 0x228(r30)
/* 80195A34 00192994  38 81 00 28 */	addi r4, r1, 0x28
/* 80195A38 00192998  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80195A3C 0019299C  C0 7E 02 2C */	lfs f3, 0x22c(r30)
/* 80195A40 001929A0  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 80195A44 001929A4  EC 81 00 28 */	fsubs f4, f1, f0
/* 80195A48 001929A8  C0 3E 02 24 */	lfs f1, 0x224(r30)
/* 80195A4C 001929AC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80195A50 001929B0  EC 43 10 28 */	fsubs f2, f3, f2
/* 80195A54 001929B4  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 80195A58 001929B8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80195A5C 001929BC  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80195A60 001929C0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80195A64 001929C4  80 7E 02 50 */	lwz r3, 0x250(r30)
/* 80195A68 001929C8  48 12 F7 61 */	bl SetLocalPosition__10CGuiObjectFRC9CVector3f
lbl_80195A6C:
/* 80195A6C 001929CC  C0 3E 01 F8 */	lfs f1, 0x1f8(r30)
/* 80195A70 001929D0  38 61 00 58 */	addi r3, r1, 0x58
/* 80195A74 001929D4  C0 1E 02 04 */	lfs f0, 0x204(r30)
/* 80195A78 001929D8  38 9E 01 E4 */	addi r4, r30, 0x1e4
/* 80195A7C 001929DC  C0 7E 01 FC */	lfs f3, 0x1fc(r30)
/* 80195A80 001929E0  38 A1 00 10 */	addi r5, r1, 0x10
/* 80195A84 001929E4  C0 5E 02 08 */	lfs f2, 0x208(r30)
/* 80195A88 001929E8  EC 81 00 2A */	fadds f4, f1, f0
/* 80195A8C 001929EC  C0 3E 01 F4 */	lfs f1, 0x1f4(r30)
/* 80195A90 001929F0  38 DE 02 0C */	addi r6, r30, 0x20c
/* 80195A94 001929F4  C0 1E 02 00 */	lfs f0, 0x200(r30)
/* 80195A98 001929F8  EC 43 10 2A */	fadds f2, f3, f2
/* 80195A9C 001929FC  EC 01 00 2A */	fadds f0, f1, f0
/* 80195AA0 00192A00  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 80195AA4 00192A04  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80195AA8 00192A08  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80195AAC 00192A0C  4B ED 7A F5 */	bl BuildFinalCameraTransform__9CSamusHudFRC11CQuaternionRC9CVector3fRC9CVector3f
/* 80195AB0 00192A10  80 7E 02 44 */	lwz r3, 0x244(r30)
/* 80195AB4 00192A14  38 81 00 58 */	addi r4, r1, 0x58
/* 80195AB8 00192A18  48 12 EC 81 */	bl SetO2WTransform__10CGuiObjectFRC12CTransform4f
/* 80195ABC 00192A1C  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 80195AC0 00192A20  28 00 00 00 */	cmplwi r0, 0
/* 80195AC4 00192A24  40 82 00 78 */	bne lbl_80195B3C
/* 80195AC8 00192A28  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80195ACC 00192A2C  28 00 00 00 */	cmplwi r0, 0
/* 80195AD0 00192A30  41 82 00 0C */	beq lbl_80195ADC
/* 80195AD4 00192A34  38 60 00 01 */	li r3, 1
/* 80195AD8 00192A38  48 00 00 3C */	b lbl_80195B14
lbl_80195ADC:
/* 80195ADC 00192A3C  88 1E 00 08 */	lbz r0, 8(r30)
/* 80195AE0 00192A40  28 00 00 00 */	cmplwi r0, 0
/* 80195AE4 00192A44  41 82 00 2C */	beq lbl_80195B10
/* 80195AE8 00192A48  80 7E 00 04 */	lwz r3, 4(r30)
/* 80195AEC 00192A4C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80195AF0 00192A50  28 00 00 00 */	cmplwi r0, 0
/* 80195AF4 00192A54  41 82 00 1C */	beq lbl_80195B10
/* 80195AF8 00192A58  38 7E 00 04 */	addi r3, r30, 4
/* 80195AFC 00192A5C  48 1A B3 11 */	bl GetObj__6CTokenFv
/* 80195B00 00192A60  80 03 00 04 */	lwz r0, 4(r3)
/* 80195B04 00192A64  38 60 00 01 */	li r3, 1
/* 80195B08 00192A68  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80195B0C 00192A6C  48 00 00 08 */	b lbl_80195B14
lbl_80195B10:
/* 80195B10 00192A70  38 60 00 00 */	li r3, 0
lbl_80195B14:
/* 80195B14 00192A74  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80195B18 00192A78  41 82 00 40 */	beq lbl_80195B58
/* 80195B1C 00192A7C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80195B20 00192A80  48 12 CA 31 */	bl GetIsFinishedLoading__9CGuiFrameCFv
/* 80195B24 00192A84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80195B28 00192A88  41 82 00 30 */	beq lbl_80195B58
/* 80195B2C 00192A8C  7F C3 F3 78 */	mr r3, r30
/* 80195B30 00192A90  48 00 00 49 */	bl InitializeFlatFrame__21CHudDecoInterfaceScanFv
/* 80195B34 00192A94  48 00 00 08 */	b lbl_80195B3C
/* 80195B38 00192A98  48 00 00 20 */	b lbl_80195B58
lbl_80195B3C:
/* 80195B3C 00192A9C  FC 20 F8 90 */	fmr f1, f31
/* 80195B40 00192AA0  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80195B44 00192AA4  48 12 CB C1 */	bl Update__9CGuiFrameFf
/* 80195B48 00192AA8  FC 20 F8 90 */	fmr f1, f31
/* 80195B4C 00192AAC  7F C3 F3 78 */	mr r3, r30
/* 80195B50 00192AB0  7F E4 FB 78 */	mr r4, r31
/* 80195B54 00192AB4  4B FF F7 69 */	bl UpdateScanDisplay__21CHudDecoInterfaceScanFRC13CStateManagerf
lbl_80195B58:
/* 80195B58 00192AB8  E3 E1 00 98 */	psq_l f31, 152(r1), 0, qr0
/* 80195B5C 00192ABC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80195B60 00192AC0  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80195B64 00192AC4  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 80195B68 00192AC8  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 80195B6C 00192ACC  7C 08 03 A6 */	mtlr r0
/* 80195B70 00192AD0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80195B74 00192AD4  4E 80 00 20 */	blr

.global InitializeFlatFrame__21CHudDecoInterfaceScanFv
InitializeFlatFrame__21CHudDecoInterfaceScanFv:
/* 80195B78 00192AD8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80195B7C 00192ADC  7C 08 02 A6 */	mflr r0
/* 80195B80 00192AE0  90 01 00 94 */	stw r0, 0x94(r1)
/* 80195B84 00192AE4  BF 61 00 7C */	stmw r27, 0x7c(r1)
/* 80195B88 00192AE8  7C 7E 1B 78 */	mr r30, r3
/* 80195B8C 00192AEC  3C 60 80 3D */	lis r3, lbl_803D0F10@ha
/* 80195B90 00192AF0  3B E3 0F 10 */	addi r31, r3, lbl_803D0F10@l
/* 80195B94 00192AF4  38 9E 02 0C */	addi r4, r30, 0x20c
/* 80195B98 00192AF8  38 61 00 3C */	addi r3, r1, 0x3c
/* 80195B9C 00192AFC  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80195BA0 00192B00  90 1E 00 10 */	stw r0, 0x10(r30)
/* 80195BA4 00192B04  80 BE 02 44 */	lwz r5, 0x244(r30)
/* 80195BA8 00192B08  80 DE 00 10 */	lwz r6, 0x10(r30)
/* 80195BAC 00192B0C  80 05 00 BC */	lwz r0, 0xbc(r5)
/* 80195BB0 00192B10  83 66 00 14 */	lwz r27, 0x14(r6)
/* 80195BB4 00192B14  90 01 00 0C */	stw r0, 0xc(r1)
/* 80195BB8 00192B18  80 1B 00 BC */	lwz r0, 0xbc(r27)
/* 80195BBC 00192B1C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80195BC0 00192B20  90 01 00 24 */	stw r0, 0x24(r1)
/* 80195BC4 00192B24  83 9B 00 C0 */	lwz r28, 0xc0(r27)
/* 80195BC8 00192B28  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80195BCC 00192B2C  83 BB 00 C4 */	lwz r29, 0xc4(r27)
/* 80195BD0 00192B30  81 9B 00 C8 */	lwz r12, 0xc8(r27)
/* 80195BD4 00192B34  81 7B 00 CC */	lwz r11, 0xcc(r27)
/* 80195BD8 00192B38  81 5B 00 D0 */	lwz r10, 0xd0(r27)
/* 80195BDC 00192B3C  81 25 00 C0 */	lwz r9, 0xc0(r5)
/* 80195BE0 00192B40  81 05 00 C4 */	lwz r8, 0xc4(r5)
/* 80195BE4 00192B44  80 E5 00 C8 */	lwz r7, 0xc8(r5)
/* 80195BE8 00192B48  80 C5 00 CC */	lwz r6, 0xcc(r5)
/* 80195BEC 00192B4C  80 A5 00 D0 */	lwz r5, 0xd0(r5)
/* 80195BF0 00192B50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80195BF4 00192B54  93 81 00 28 */	stw r28, 0x28(r1)
/* 80195BF8 00192B58  90 1B 00 BC */	stw r0, 0xbc(r27)
/* 80195BFC 00192B5C  93 9B 00 C0 */	stw r28, 0xc0(r27)
/* 80195C00 00192B60  93 BB 00 C4 */	stw r29, 0xc4(r27)
/* 80195C04 00192B64  91 9B 00 C8 */	stw r12, 0xc8(r27)
/* 80195C08 00192B68  91 7B 00 CC */	stw r11, 0xcc(r27)
/* 80195C0C 00192B6C  93 A1 00 2C */	stw r29, 0x2c(r1)
/* 80195C10 00192B70  91 81 00 30 */	stw r12, 0x30(r1)
/* 80195C14 00192B74  91 61 00 34 */	stw r11, 0x34(r1)
/* 80195C18 00192B78  91 41 00 38 */	stw r10, 0x38(r1)
/* 80195C1C 00192B7C  91 21 00 10 */	stw r9, 0x10(r1)
/* 80195C20 00192B80  91 01 00 14 */	stw r8, 0x14(r1)
/* 80195C24 00192B84  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80195C28 00192B88  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 80195C2C 00192B8C  90 A1 00 20 */	stw r5, 0x20(r1)
/* 80195C30 00192B90  91 5B 00 D0 */	stw r10, 0xd0(r27)
/* 80195C34 00192B94  48 17 D5 0D */	bl Translate__12CTransform4fFRC9CVector3f
/* 80195C38 00192B98  7F 63 DB 78 */	mr r3, r27
/* 80195C3C 00192B9C  38 81 00 3C */	addi r4, r1, 0x3c
/* 80195C40 00192BA0  48 12 EA F9 */	bl SetO2WTransform__10CGuiObjectFRC12CTransform4f
/* 80195C44 00192BA4  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80195C48 00192BA8  38 9F 01 50 */	addi r4, r31, 0x150
/* 80195C4C 00192BAC  48 12 C5 09 */	bl FindWidget__9CGuiFrameCFPCc
/* 80195C50 00192BB0  90 7E 02 58 */	stw r3, 0x258(r30)
/* 80195C54 00192BB4  38 80 00 00 */	li r4, 0
/* 80195C58 00192BB8  38 A0 00 01 */	li r5, 1
/* 80195C5C 00192BBC  80 7E 02 58 */	lwz r3, 0x258(r30)
/* 80195C60 00192BC0  48 13 4A 89 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 80195C64 00192BC4  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80195C68 00192BC8  38 9F 01 24 */	addi r4, r31, 0x124
/* 80195C6C 00192BCC  48 12 C4 E9 */	bl FindWidget__9CGuiFrameCFPCc
/* 80195C70 00192BD0  90 7E 02 54 */	stw r3, 0x254(r30)
/* 80195C74 00192BD4  38 9F 01 38 */	addi r4, r31, 0x138
/* 80195C78 00192BD8  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80195C7C 00192BDC  48 12 C4 D9 */	bl FindWidget__9CGuiFrameCFPCc
/* 80195C80 00192BE0  90 7E 02 5C */	stw r3, 0x25c(r30)
/* 80195C84 00192BE4  38 9F 01 80 */	addi r4, r31, 0x180
/* 80195C88 00192BE8  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80195C8C 00192BEC  48 12 C4 C9 */	bl FindWidget__9CGuiFrameCFPCc
/* 80195C90 00192BF0  90 7E 02 64 */	stw r3, 0x264(r30)
/* 80195C94 00192BF4  38 9F 01 94 */	addi r4, r31, 0x194
/* 80195C98 00192BF8  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80195C9C 00192BFC  48 12 C4 B9 */	bl FindWidget__9CGuiFrameCFPCc
/* 80195CA0 00192C00  90 7E 02 68 */	stw r3, 0x268(r30)
/* 80195CA4 00192C04  38 9F 01 68 */	addi r4, r31, 0x168
/* 80195CA8 00192C08  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80195CAC 00192C0C  48 12 C4 A9 */	bl FindWidget__9CGuiFrameCFPCc
/* 80195CB0 00192C10  90 7E 02 60 */	stw r3, 0x260(r30)
/* 80195CB4 00192C14  38 9F 01 AC */	addi r4, r31, 0x1ac
/* 80195CB8 00192C18  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80195CBC 00192C1C  48 12 C4 99 */	bl FindWidget__9CGuiFrameCFPCc
/* 80195CC0 00192C20  90 7E 02 6C */	stw r3, 0x26c(r30)
/* 80195CC4 00192C24  38 9F 01 B8 */	addi r4, r31, 0x1b8
/* 80195CC8 00192C28  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80195CCC 00192C2C  48 12 C4 89 */	bl FindWidget__9CGuiFrameCFPCc
/* 80195CD0 00192C30  90 7E 02 70 */	stw r3, 0x270(r30)
/* 80195CD4 00192C34  38 9F 01 C8 */	addi r4, r31, 0x1c8
/* 80195CD8 00192C38  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80195CDC 00192C3C  48 12 C4 79 */	bl FindWidget__9CGuiFrameCFPCc
/* 80195CE0 00192C40  90 7E 02 74 */	stw r3, 0x274(r30)
/* 80195CE4 00192C44  38 80 00 00 */	li r4, 0
/* 80195CE8 00192C48  38 A0 00 01 */	li r5, 1
/* 80195CEC 00192C4C  80 7E 02 60 */	lwz r3, 0x260(r30)
/* 80195CF0 00192C50  48 13 49 F9 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 80195CF4 00192C54  80 7E 02 54 */	lwz r3, 0x254(r30)
/* 80195CF8 00192C58  38 80 00 00 */	li r4, 0
/* 80195CFC 00192C5C  48 13 49 31 */	bl SetIsVisible__10CGuiWidgetFb
/* 80195D00 00192C60  80 7E 02 54 */	lwz r3, 0x254(r30)
/* 80195D04 00192C64  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 80195D08 00192C68  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80195D0C 00192C6C  38 84 00 14 */	addi r4, r4, 0x14
/* 80195D10 00192C70  48 13 39 59 */	bl SetFontColor__15CGuiTextSupportFRC6CColor
/* 80195D14 00192C74  80 7E 02 54 */	lwz r3, 0x254(r30)
/* 80195D18 00192C78  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 80195D1C 00192C7C  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80195D20 00192C80  38 84 00 18 */	addi r4, r4, 0x18
/* 80195D24 00192C84  48 13 38 F5 */	bl SetOutlineColor__15CGuiTextSupportFRC6CColor
/* 80195D28 00192C88  3C 80 80 2D */	lis r4, DownloadBarCoordFunc__16CAuiEnergyBarT01Ff@ha
/* 80195D2C 00192C8C  80 7E 02 5C */	lwz r3, 0x25c(r30)
/* 80195D30 00192C90  38 04 B6 30 */	addi r0, r4, DownloadBarCoordFunc__16CAuiEnergyBarT01Ff@l
/* 80195D34 00192C94  C0 22 A6 68 */	lfs f1, lbl_805AC388@sda21(r2)
/* 80195D38 00192C98  90 03 00 D8 */	stw r0, 0xd8(r3)
/* 80195D3C 00192C9C  80 7E 02 5C */	lwz r3, 0x25c(r30)
/* 80195D40 00192CA0  D0 23 00 DC */	stfs f1, 0xdc(r3)
/* 80195D44 00192CA4  80 7E 02 5C */	lwz r3, 0x25c(r30)
/* 80195D48 00192CA8  48 13 5C 21 */	bl SetMaxEnergy__16CAuiEnergyBarT01Ff
/* 80195D4C 00192CAC  38 00 00 67 */	li r0, 0x67
/* 80195D50 00192CB0  38 A0 00 AE */	li r5, 0xae
/* 80195D54 00192CB4  38 E0 00 E1 */	li r7, 0xe1
/* 80195D58 00192CB8  38 C0 00 FF */	li r6, 0xff
/* 80195D5C 00192CBC  98 01 00 08 */	stb r0, 8(r1)
/* 80195D60 00192CC0  38 00 00 00 */	li r0, 0
/* 80195D64 00192CC4  80 7E 02 5C */	lwz r3, 0x25c(r30)
/* 80195D68 00192CC8  38 80 00 00 */	li r4, 0
/* 80195D6C 00192CCC  98 A1 00 09 */	stb r5, 9(r1)
/* 80195D70 00192CD0  38 A0 00 01 */	li r5, 1
/* 80195D74 00192CD4  C0 22 A6 8C */	lfs f1, lbl_805AC3AC@sda21(r2)
/* 80195D78 00192CD8  98 E1 00 0A */	stb r7, 0xa(r1)
/* 80195D7C 00192CDC  C0 02 A6 6C */	lfs f0, lbl_805AC38C@sda21(r2)
/* 80195D80 00192CE0  98 C1 00 0B */	stb r6, 0xb(r1)
/* 80195D84 00192CE4  80 C1 00 08 */	lwz r6, 8(r1)
/* 80195D88 00192CE8  90 C3 00 D0 */	stw r6, 0xd0(r3)
/* 80195D8C 00192CEC  80 7E 02 5C */	lwz r3, 0x25c(r30)
/* 80195D90 00192CF0  90 03 00 D4 */	stw r0, 0xd4(r3)
/* 80195D94 00192CF4  80 7E 02 5C */	lwz r3, 0x25c(r30)
/* 80195D98 00192CF8  90 03 00 CC */	stw r0, 0xcc(r3)
/* 80195D9C 00192CFC  80 7E 02 5C */	lwz r3, 0x25c(r30)
/* 80195DA0 00192D00  D0 23 00 E4 */	stfs f1, 0xe4(r3)
/* 80195DA4 00192D04  80 7E 02 5C */	lwz r3, 0x25c(r30)
/* 80195DA8 00192D08  D0 23 00 E8 */	stfs f1, 0xe8(r3)
/* 80195DAC 00192D0C  80 7E 02 5C */	lwz r3, 0x25c(r30)
/* 80195DB0 00192D10  D0 03 00 EC */	stfs f0, 0xec(r3)
/* 80195DB4 00192D14  80 7E 02 5C */	lwz r3, 0x25c(r30)
/* 80195DB8 00192D18  98 03 00 F0 */	stb r0, 0xf0(r3)
/* 80195DBC 00192D1C  80 7E 02 6C */	lwz r3, 0x26c(r30)
/* 80195DC0 00192D20  48 13 49 29 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 80195DC4 00192D24  80 7E 02 70 */	lwz r3, 0x270(r30)
/* 80195DC8 00192D28  38 80 00 00 */	li r4, 0
/* 80195DCC 00192D2C  38 A0 00 01 */	li r5, 1
/* 80195DD0 00192D30  48 13 49 19 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 80195DD4 00192D34  80 7E 02 74 */	lwz r3, 0x274(r30)
/* 80195DD8 00192D38  38 80 00 00 */	li r4, 0
/* 80195DDC 00192D3C  38 A0 00 01 */	li r5, 1
/* 80195DE0 00192D40  48 13 49 09 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 80195DE4 00192D44  BB 61 00 7C */	lmw r27, 0x7c(r1)
/* 80195DE8 00192D48  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80195DEC 00192D4C  7C 08 03 A6 */	mtlr r0
/* 80195DF0 00192D50  38 21 00 90 */	addi r1, r1, 0x90
/* 80195DF4 00192D54  4E 80 00 20 */	blr

.global SetFrameColorValue__21CHudDecoInterfaceScanFf
SetFrameColorValue__21CHudDecoInterfaceScanFf:
/* 80195DF8 00192D58  4E 80 00 20 */	blr

.global SetDamageTransform__21CHudDecoInterfaceScanFRC9CMatrix3fRC9CVector3f
SetDamageTransform__21CHudDecoInterfaceScanFRC9CMatrix3fRC9CVector3f:
/* 80195DFC 00192D5C  4E 80 00 20 */	blr

.global SetHudOffset__21CHudDecoInterfaceScanFRC9CVector3f
SetHudOffset__21CHudDecoInterfaceScanFRC9CVector3f:
/* 80195E00 00192D60  C0 04 00 00 */	lfs f0, 0(r4)
/* 80195E04 00192D64  D0 03 02 00 */	stfs f0, 0x200(r3)
/* 80195E08 00192D68  C0 04 00 04 */	lfs f0, 4(r4)
/* 80195E0C 00192D6C  D0 03 02 04 */	stfs f0, 0x204(r3)
/* 80195E10 00192D70  C0 04 00 08 */	lfs f0, 8(r4)
/* 80195E14 00192D74  D0 03 02 08 */	stfs f0, 0x208(r3)
/* 80195E18 00192D78  4E 80 00 20 */	blr

.global SetReticuleTransform__21CHudDecoInterfaceScanFRC9CMatrix3f
SetReticuleTransform__21CHudDecoInterfaceScanFRC9CMatrix3f:
/* 80195E1C 00192D7C  4E 80 00 20 */	blr

.global SetHudRotation__21CHudDecoInterfaceScanFRC11CQuaternion
SetHudRotation__21CHudDecoInterfaceScanFRC11CQuaternion:
/* 80195E20 00192D80  C0 04 00 00 */	lfs f0, 0(r4)
/* 80195E24 00192D84  D0 03 01 E4 */	stfs f0, 0x1e4(r3)
/* 80195E28 00192D88  80 A4 00 04 */	lwz r5, 4(r4)
/* 80195E2C 00192D8C  80 04 00 08 */	lwz r0, 8(r4)
/* 80195E30 00192D90  90 A3 01 E8 */	stw r5, 0x1e8(r3)
/* 80195E34 00192D94  90 03 01 EC */	stw r0, 0x1ec(r3)
/* 80195E38 00192D98  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80195E3C 00192D9C  90 03 01 F0 */	stw r0, 0x1f0(r3)
/* 80195E40 00192DA0  4E 80 00 20 */	blr

.global UpdateVisibility__21CHudDecoInterfaceScanFv
UpdateVisibility__21CHudDecoInterfaceScanFv:
/* 80195E44 00192DA4  4E 80 00 20 */	blr

.global SetIsVisibleGame__21CHudDecoInterfaceScanFb
SetIsVisibleGame__21CHudDecoInterfaceScanFb:
/* 80195E48 00192DA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80195E4C 00192DAC  7C 08 02 A6 */	mflr r0
/* 80195E50 00192DB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80195E54 00192DB4  88 03 02 40 */	lbz r0, 0x240(r3)
/* 80195E58 00192DB8  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 80195E5C 00192DBC  98 03 02 40 */	stb r0, 0x240(r3)
/* 80195E60 00192DC0  4B FF FF E5 */	bl UpdateVisibility__21CHudDecoInterfaceScanFv
/* 80195E64 00192DC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80195E68 00192DC8  7C 08 03 A6 */	mtlr r0
/* 80195E6C 00192DCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80195E70 00192DD0  4E 80 00 20 */	blr

.global SetIsVisibleDebug__21CHudDecoInterfaceScanFb
SetIsVisibleDebug__21CHudDecoInterfaceScanFb:
/* 80195E74 00192DD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80195E78 00192DD8  7C 08 02 A6 */	mflr r0
/* 80195E7C 00192DDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80195E80 00192DE0  88 03 02 40 */	lbz r0, 0x240(r3)
/* 80195E84 00192DE4  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80195E88 00192DE8  98 03 02 40 */	stb r0, 0x240(r3)
/* 80195E8C 00192DEC  4B FF FF B9 */	bl UpdateVisibility__21CHudDecoInterfaceScanFv
/* 80195E90 00192DF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80195E94 00192DF4  7C 08 03 A6 */	mtlr r0
/* 80195E98 00192DF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80195E9C 00192DFC  4E 80 00 20 */	blr

.global UpdateHudAlpha__21CHudDecoInterfaceScanFv
UpdateHudAlpha__21CHudDecoInterfaceScanFv:
/* 80195EA0 00192E00  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80195EA4 00192E04  7C 08 02 A6 */	mflr r0
/* 80195EA8 00192E08  90 01 00 44 */	stw r0, 0x44(r1)
/* 80195EAC 00192E0C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80195EB0 00192E10  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 80195EB4 00192E14  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80195EB8 00192E18  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 80195EBC 00192E1C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80195EC0 00192E20  80 8D A0 80 */	lwz r4, gpGameState@sda21(r13)
/* 80195EC4 00192E24  7C 7F 1B 78 */	mr r31, r3
/* 80195EC8 00192E28  38 64 01 7C */	addi r3, r4, 0x17c
/* 80195ECC 00192E2C  48 07 8E A9 */	bl GetHudAlpha__12CGameOptionsCFv
/* 80195ED0 00192E30  FF E0 08 90 */	fmr f31, f1
/* 80195ED4 00192E34  48 1B 40 D9 */	bl White__6CColorFv
/* 80195ED8 00192E38  C0 02 A6 7C */	lfs f0, lbl_805AC39C@sda21(r2)
/* 80195EDC 00192E3C  EF C0 07 F2 */	fmuls f30, f0, f31
/* 80195EE0 00192E40  F3 C1 A0 08 */	psq_st f30, 8(r1), 1, qr2
/* 80195EE4 00192E44  38 81 00 0C */	addi r4, r1, 0xc
/* 80195EE8 00192E48  80 63 00 00 */	lwz r3, 0(r3)
/* 80195EEC 00192E4C  88 01 00 08 */	lbz r0, 8(r1)
/* 80195EF0 00192E50  50 60 00 2E */	rlwimi r0, r3, 0, 0, 0x17
/* 80195EF4 00192E54  90 01 00 0C */	stw r0, 0xc(r1)
/* 80195EF8 00192E58  80 7F 02 48 */	lwz r3, 0x248(r31)
/* 80195EFC 00192E5C  48 13 49 71 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80195F00 00192E60  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 80195F04 00192E64  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80195F08 00192E68  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 80195F0C 00192E6C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80195F10 00192E70  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80195F14 00192E74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80195F18 00192E78  7C 08 03 A6 */	mtlr r0
/* 80195F1C 00192E7C  38 21 00 40 */	addi r1, r1, 0x40
/* 80195F20 00192E80  4E 80 00 20 */	blr

.global __ct__21CHudDecoInterfaceScanFR9CGuiFrame
__ct__21CHudDecoInterfaceScanFR9CGuiFrame:
/* 80195F24 00192E84  94 21 FD 60 */	stwu r1, -0x2a0(r1)
/* 80195F28 00192E88  7C 08 02 A6 */	mflr r0
/* 80195F2C 00192E8C  3C A0 80 3E */	lis r5, lbl_803DA2A4@ha
/* 80195F30 00192E90  3C C0 80 3D */	lis r6, lbl_803D0F10@ha
/* 80195F34 00192E94  90 01 02 A4 */	stw r0, 0x2a4(r1)
/* 80195F38 00192E98  38 05 A2 A4 */	addi r0, r5, lbl_803DA2A4@l
/* 80195F3C 00192E9C  93 E1 02 9C */	stw r31, 0x29c(r1)
/* 80195F40 00192EA0  3B E6 0F 10 */	addi r31, r6, lbl_803D0F10@l
/* 80195F44 00192EA4  93 C1 02 98 */	stw r30, 0x298(r1)
/* 80195F48 00192EA8  7C 9E 23 78 */	mr r30, r4
/* 80195F4C 00192EAC  93 A1 02 94 */	stw r29, 0x294(r1)
/* 80195F50 00192EB0  7C 7D 1B 78 */	mr r29, r3
/* 80195F54 00192EB4  3C 60 80 3E */	lis r3, lbl_803E450C@ha
/* 80195F58 00192EB8  93 81 02 90 */	stw r28, 0x290(r1)
/* 80195F5C 00192EBC  90 1D 00 00 */	stw r0, 0(r29)
/* 80195F60 00192EC0  38 03 45 0C */	addi r0, r3, lbl_803E450C@l
/* 80195F64 00192EC4  3C 60 80 3D */	lis r3, lbl_803D10E4@ha
/* 80195F68 00192EC8  90 1D 00 00 */	stw r0, 0(r29)
/* 80195F6C 00192ECC  38 A3 10 E4 */	addi r5, r3, lbl_803D10E4@l
/* 80195F70 00192ED0  38 61 00 18 */	addi r3, r1, 0x18
/* 80195F74 00192ED4  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 80195F78 00192ED8  38 A5 00 8D */	addi r5, r5, 0x8d
/* 80195F7C 00192EDC  81 84 00 00 */	lwz r12, 0(r4)
/* 80195F80 00192EE0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80195F84 00192EE4  7D 89 03 A6 */	mtctr r12
/* 80195F88 00192EE8  4E 80 04 21 */	bctrl
/* 80195F8C 00192EEC  3B 9D 00 04 */	addi r28, r29, 4
/* 80195F90 00192EF0  38 81 00 18 */	addi r4, r1, 0x18
/* 80195F94 00192EF4  7F 83 E3 78 */	mr r3, r28
/* 80195F98 00192EF8  48 1A AF 11 */	bl __ct__6CTokenFRC6CToken
/* 80195F9C 00192EFC  38 00 00 00 */	li r0, 0
/* 80195FA0 00192F00  38 61 00 18 */	addi r3, r1, 0x18
/* 80195FA4 00192F04  90 1C 00 08 */	stw r0, 8(r28)
/* 80195FA8 00192F08  38 80 FF FF */	li r4, -1
/* 80195FAC 00192F0C  48 1A AE 95 */	bl __dt__6CTokenFv
/* 80195FB0 00192F10  38 00 00 00 */	li r0, 0
/* 80195FB4 00192F14  7F C4 F3 78 */	mr r4, r30
/* 80195FB8 00192F18  90 1D 00 10 */	stw r0, 0x10(r29)
/* 80195FBC 00192F1C  38 7D 00 18 */	addi r3, r29, 0x18
/* 80195FC0 00192F20  93 DD 00 14 */	stw r30, 0x14(r29)
/* 80195FC4 00192F24  4B FD E5 81 */	bl __ct__12CScanDisplayFv
/* 80195FC8 00192F28  A0 AD A3 8C */	lhz r5, kInvalidUniqueId@sda21(r13)
/* 80195FCC 00192F2C  3C 80 80 5A */	lis r4, sNoRotation__11CQuaternion@ha
/* 80195FD0 00192F30  38 C4 66 60 */	addi r6, r4, sNoRotation__11CQuaternion@l
/* 80195FD4 00192F34  38 00 00 00 */	li r0, 0
/* 80195FD8 00192F38  B0 BD 01 D0 */	sth r5, 0x1d0(r29)
/* 80195FDC 00192F3C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80195FE0 00192F40  38 A3 66 A0 */	addi r5, r3, sZeroVector__9CVector3f@l
/* 80195FE4 00192F44  C0 22 A6 6C */	lfs f1, lbl_805AC38C@sda21(r2)
/* 80195FE8 00192F48  A0 ED A3 8C */	lhz r7, kInvalidUniqueId@sda21(r13)
/* 80195FEC 00192F4C  38 80 00 01 */	li r4, 1
/* 80195FF0 00192F50  C0 02 A6 68 */	lfs f0, lbl_805AC388@sda21(r2)
/* 80195FF4 00192F54  7F 83 E3 78 */	mr r3, r28
/* 80195FF8 00192F58  B0 FD 01 D2 */	sth r7, 0x1d2(r29)
/* 80195FFC 00192F5C  90 1D 01 D4 */	stw r0, 0x1d4(r29)
/* 80196000 00192F60  D0 3D 01 D8 */	stfs f1, 0x1d8(r29)
/* 80196004 00192F64  D0 3D 01 DC */	stfs f1, 0x1dc(r29)
/* 80196008 00192F68  D0 1D 01 E0 */	stfs f0, 0x1e0(r29)
/* 8019600C 00192F6C  C0 06 00 00 */	lfs f0, 0(r6)
/* 80196010 00192F70  D0 1D 01 E4 */	stfs f0, 0x1e4(r29)
/* 80196014 00192F74  C0 06 00 04 */	lfs f0, 4(r6)
/* 80196018 00192F78  D0 1D 01 E8 */	stfs f0, 0x1e8(r29)
/* 8019601C 00192F7C  C0 06 00 08 */	lfs f0, 8(r6)
/* 80196020 00192F80  D0 1D 01 EC */	stfs f0, 0x1ec(r29)
/* 80196024 00192F84  C0 06 00 0C */	lfs f0, 0xc(r6)
/* 80196028 00192F88  D0 1D 01 F0 */	stfs f0, 0x1f0(r29)
/* 8019602C 00192F8C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80196030 00192F90  D0 1D 01 F4 */	stfs f0, 0x1f4(r29)
/* 80196034 00192F94  C0 05 00 04 */	lfs f0, 4(r5)
/* 80196038 00192F98  D0 1D 01 F8 */	stfs f0, 0x1f8(r29)
/* 8019603C 00192F9C  C0 05 00 08 */	lfs f0, 8(r5)
/* 80196040 00192FA0  D0 1D 01 FC */	stfs f0, 0x1fc(r29)
/* 80196044 00192FA4  C0 05 00 00 */	lfs f0, 0(r5)
/* 80196048 00192FA8  D0 1D 02 00 */	stfs f0, 0x200(r29)
/* 8019604C 00192FAC  C0 05 00 04 */	lfs f0, 4(r5)
/* 80196050 00192FB0  D0 1D 02 04 */	stfs f0, 0x204(r29)
/* 80196054 00192FB4  C0 05 00 08 */	lfs f0, 8(r5)
/* 80196058 00192FB8  D0 1D 02 08 */	stfs f0, 0x208(r29)
/* 8019605C 00192FBC  C0 05 00 00 */	lfs f0, 0(r5)
/* 80196060 00192FC0  D0 1D 02 0C */	stfs f0, 0x20c(r29)
/* 80196064 00192FC4  C0 05 00 04 */	lfs f0, 4(r5)
/* 80196068 00192FC8  D0 1D 02 10 */	stfs f0, 0x210(r29)
/* 8019606C 00192FCC  C0 05 00 08 */	lfs f0, 8(r5)
/* 80196070 00192FD0  D0 1D 02 14 */	stfs f0, 0x214(r29)
/* 80196074 00192FD4  C0 05 00 00 */	lfs f0, 0(r5)
/* 80196078 00192FD8  D0 1D 02 18 */	stfs f0, 0x218(r29)
/* 8019607C 00192FDC  C0 05 00 04 */	lfs f0, 4(r5)
/* 80196080 00192FE0  D0 1D 02 1C */	stfs f0, 0x21c(r29)
/* 80196084 00192FE4  C0 05 00 08 */	lfs f0, 8(r5)
/* 80196088 00192FE8  D0 1D 02 20 */	stfs f0, 0x220(r29)
/* 8019608C 00192FEC  C0 05 00 00 */	lfs f0, 0(r5)
/* 80196090 00192FF0  D0 1D 02 24 */	stfs f0, 0x224(r29)
/* 80196094 00192FF4  C0 05 00 04 */	lfs f0, 4(r5)
/* 80196098 00192FF8  D0 1D 02 28 */	stfs f0, 0x228(r29)
/* 8019609C 00192FFC  C0 05 00 08 */	lfs f0, 8(r5)
/* 801960A0 00193000  D0 1D 02 2C */	stfs f0, 0x22c(r29)
/* 801960A4 00193004  D0 3D 02 30 */	stfs f1, 0x230(r29)
/* 801960A8 00193008  80 AD A1 38 */	lwz r5, gpTweakGui@sda21(r13)
/* 801960AC 0019300C  C0 05 02 70 */	lfs f0, 0x270(r5)
/* 801960B0 00193010  D0 1D 02 34 */	stfs f0, 0x234(r29)
/* 801960B4 00193014  D0 3D 02 38 */	stfs f1, 0x238(r29)
/* 801960B8 00193018  D0 3D 02 3C */	stfs f1, 0x23c(r29)
/* 801960BC 0019301C  88 1D 02 40 */	lbz r0, 0x240(r29)
/* 801960C0 00193020  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 801960C4 00193024  98 1D 02 40 */	stb r0, 0x240(r29)
/* 801960C8 00193028  88 1D 02 40 */	lbz r0, 0x240(r29)
/* 801960CC 0019302C  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 801960D0 00193030  98 1D 02 40 */	stb r0, 0x240(r29)
/* 801960D4 00193034  48 1A AC B1 */	bl Lock__6CTokenFv
/* 801960D8 00193038  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 801960DC 0019303C  38 61 00 50 */	addi r3, r1, 0x50
/* 801960E0 00193040  90 1D 02 44 */	stw r0, 0x244(r29)
/* 801960E4 00193044  80 9D 02 44 */	lwz r4, 0x244(r29)
/* 801960E8 00193048  48 12 F1 35 */	bl GetLocalPosition__10CGuiObjectCFv
/* 801960EC 0019304C  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 801960F0 00193050  7F C3 F3 78 */	mr r3, r30
/* 801960F4 00193054  38 9F 00 28 */	addi r4, r31, 0x28
/* 801960F8 00193058  D0 1D 02 0C */	stfs f0, 0x20c(r29)
/* 801960FC 0019305C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80196100 00193060  D0 1D 02 10 */	stfs f0, 0x210(r29)
/* 80196104 00193064  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80196108 00193068  D0 1D 02 14 */	stfs f0, 0x214(r29)
/* 8019610C 0019306C  48 12 C0 49 */	bl FindWidget__9CGuiFrameCFPCc
/* 80196110 00193070  90 7D 02 48 */	stw r3, 0x248(r29)
/* 80196114 00193074  7F C3 F3 78 */	mr r3, r30
/* 80196118 00193078  38 9F 00 64 */	addi r4, r31, 0x64
/* 8019611C 0019307C  48 12 C0 39 */	bl FindWidget__9CGuiFrameCFPCc
/* 80196120 00193080  90 7D 02 4C */	stw r3, 0x24c(r29)
/* 80196124 00193084  7F C3 F3 78 */	mr r3, r30
/* 80196128 00193088  38 9F 00 A8 */	addi r4, r31, 0xa8
/* 8019612C 0019308C  48 12 C0 29 */	bl FindWidget__9CGuiFrameCFPCc
/* 80196130 00193090  90 7D 02 50 */	stw r3, 0x250(r29)
/* 80196134 00193094  3C 60 80 3D */	lis r3, lbl_803D10E4@ha
/* 80196138 00193098  38 83 10 E4 */	addi r4, r3, lbl_803D10E4@l
/* 8019613C 0019309C  7F C3 F3 78 */	mr r3, r30
/* 80196140 001930A0  80 BD 02 48 */	lwz r5, 0x248(r29)
/* 80196144 001930A4  38 84 00 44 */	addi r4, r4, 0x44
/* 80196148 001930A8  C0 45 00 A0 */	lfs f2, 0xa0(r5)
/* 8019614C 001930AC  C0 25 00 90 */	lfs f1, 0x90(r5)
/* 80196150 001930B0  C0 05 00 80 */	lfs f0, 0x80(r5)
/* 80196154 001930B4  D0 1D 01 F4 */	stfs f0, 0x1f4(r29)
/* 80196158 001930B8  D0 3D 01 F8 */	stfs f1, 0x1f8(r29)
/* 8019615C 001930BC  D0 5D 01 FC */	stfs f2, 0x1fc(r29)
/* 80196160 001930C0  48 12 BF F5 */	bl FindWidget__9CGuiFrameCFPCc
/* 80196164 001930C4  28 03 00 00 */	cmplwi r3, 0
/* 80196168 001930C8  41 82 00 10 */	beq lbl_80196178
/* 8019616C 001930CC  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 80196170 001930D0  38 84 00 1C */	addi r4, r4, 0x1c
/* 80196174 001930D4  48 13 46 F9 */	bl SetColor__10CGuiWidgetFRC6CColor
lbl_80196178:
/* 80196178 001930D8  80 BD 02 4C */	lwz r5, 0x24c(r29)
/* 8019617C 001930DC  38 61 02 3C */	addi r3, r1, 0x23c
/* 80196180 001930E0  38 81 00 14 */	addi r4, r1, 0x14
/* 80196184 001930E4  C0 45 00 30 */	lfs f2, 0x30(r5)
/* 80196188 001930E8  C0 25 00 20 */	lfs f1, 0x20(r5)
/* 8019618C 001930EC  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 80196190 001930F0  D0 1D 02 18 */	stfs f0, 0x218(r29)
/* 80196194 001930F4  D0 3D 02 1C */	stfs f1, 0x21c(r29)
/* 80196198 001930F8  D0 5D 02 20 */	stfs f2, 0x220(r29)
/* 8019619C 001930FC  80 AD A1 38 */	lwz r5, gpTweakGui@sda21(r13)
/* 801961A0 00193100  C0 05 02 10 */	lfs f0, 0x210(r5)
/* 801961A4 00193104  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801961A8 00193108  48 17 A2 61 */	bl RotateZ__9CMatrix3fFRC9CRelAngle
/* 801961AC 0019310C  38 61 02 60 */	addi r3, r1, 0x260
/* 801961B0 00193110  38 81 02 3C */	addi r4, r1, 0x23c
/* 801961B4 00193114  38 BD 02 18 */	addi r5, r29, 0x218
/* 801961B8 00193118  48 17 D0 C1 */	bl __ct__12CTransform4fFRC9CMatrix3fRC9CVector3f
/* 801961BC 0019311C  83 9D 02 4C */	lwz r28, 0x24c(r29)
/* 801961C0 00193120  38 81 02 60 */	addi r4, r1, 0x260
/* 801961C4 00193124  38 7C 00 04 */	addi r3, r28, 4
/* 801961C8 00193128  48 17 C9 79 */	bl __as__12CTransform4fFRC12CTransform4f
/* 801961CC 0019312C  7F 83 E3 78 */	mr r3, r28
/* 801961D0 00193130  48 12 E6 19 */	bl RecalculateTransforms__10CGuiObjectFv
/* 801961D4 00193134  7F C3 F3 78 */	mr r3, r30
/* 801961D8 00193138  38 9F 00 90 */	addi r4, r31, 0x90
/* 801961DC 0019313C  48 12 BF 79 */	bl FindWidget__9CGuiFrameCFPCc
/* 801961E0 00193140  7C 7C 1B 79 */	or. r28, r3, r3
/* 801961E4 00193144  41 82 00 60 */	beq lbl_80196244
/* 801961E8 00193148  C0 7C 00 30 */	lfs f3, 0x30(r28)
/* 801961EC 0019314C  38 61 01 E8 */	addi r3, r1, 0x1e8
/* 801961F0 00193150  C0 5C 00 20 */	lfs f2, 0x20(r28)
/* 801961F4 00193154  38 81 00 10 */	addi r4, r1, 0x10
/* 801961F8 00193158  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 801961FC 0019315C  80 AD A1 38 */	lwz r5, gpTweakGui@sda21(r13)
/* 80196200 00193160  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80196204 00193164  C0 22 A6 90 */	lfs f1, lbl_805AC3B0@sda21(r2)
/* 80196208 00193168  D0 41 00 90 */	stfs f2, 0x90(r1)
/* 8019620C 0019316C  D0 61 00 94 */	stfs f3, 0x94(r1)
/* 80196210 00193170  C0 05 02 10 */	lfs f0, 0x210(r5)
/* 80196214 00193174  EC 01 00 32 */	fmuls f0, f1, f0
/* 80196218 00193178  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8019621C 0019317C  48 17 A1 ED */	bl RotateZ__9CMatrix3fFRC9CRelAngle
/* 80196220 00193180  38 61 02 0C */	addi r3, r1, 0x20c
/* 80196224 00193184  38 81 01 E8 */	addi r4, r1, 0x1e8
/* 80196228 00193188  38 A1 00 8C */	addi r5, r1, 0x8c
/* 8019622C 0019318C  48 17 D0 4D */	bl __ct__12CTransform4fFRC9CMatrix3fRC9CVector3f
/* 80196230 00193190  38 7C 00 04 */	addi r3, r28, 4
/* 80196234 00193194  38 81 02 0C */	addi r4, r1, 0x20c
/* 80196238 00193198  48 17 C9 09 */	bl __as__12CTransform4fFRC12CTransform4f
/* 8019623C 0019319C  7F 83 E3 78 */	mr r3, r28
/* 80196240 001931A0  48 12 E5 A9 */	bl RecalculateTransforms__10CGuiObjectFv
lbl_80196244:
/* 80196244 001931A4  7F C3 F3 78 */	mr r3, r30
/* 80196248 001931A8  38 9F 00 78 */	addi r4, r31, 0x78
/* 8019624C 001931AC  48 12 BF 09 */	bl FindWidget__9CGuiFrameCFPCc
/* 80196250 001931B0  7C 7C 1B 79 */	or. r28, r3, r3
/* 80196254 001931B4  41 82 00 74 */	beq lbl_801962C8
/* 80196258 001931B8  C0 7C 00 30 */	lfs f3, 0x30(r28)
/* 8019625C 001931BC  38 61 01 B8 */	addi r3, r1, 0x1b8
/* 80196260 001931C0  C0 5C 00 20 */	lfs f2, 0x20(r28)
/* 80196264 001931C4  38 81 01 94 */	addi r4, r1, 0x194
/* 80196268 001931C8  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 8019626C 001931CC  38 A1 00 80 */	addi r5, r1, 0x80
/* 80196270 001931D0  80 CD A1 38 */	lwz r6, gpTweakGui@sda21(r13)
/* 80196274 001931D4  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80196278 001931D8  C0 22 A6 6C */	lfs f1, lbl_805AC38C@sda21(r2)
/* 8019627C 001931DC  D0 41 00 84 */	stfs f2, 0x84(r1)
/* 80196280 001931E0  C0 02 A6 68 */	lfs f0, lbl_805AC388@sda21(r2)
/* 80196284 001931E4  D0 61 00 88 */	stfs f3, 0x88(r1)
/* 80196288 001931E8  C0 46 02 14 */	lfs f2, 0x214(r6)
/* 8019628C 001931EC  D0 41 01 94 */	stfs f2, 0x194(r1)
/* 80196290 001931F0  D0 21 01 98 */	stfs f1, 0x198(r1)
/* 80196294 001931F4  D0 21 01 9C */	stfs f1, 0x19c(r1)
/* 80196298 001931F8  D0 21 01 A0 */	stfs f1, 0x1a0(r1)
/* 8019629C 001931FC  D0 01 01 A4 */	stfs f0, 0x1a4(r1)
/* 801962A0 00193200  D0 21 01 A8 */	stfs f1, 0x1a8(r1)
/* 801962A4 00193204  D0 21 01 AC */	stfs f1, 0x1ac(r1)
/* 801962A8 00193208  D0 21 01 B0 */	stfs f1, 0x1b0(r1)
/* 801962AC 0019320C  D0 01 01 B4 */	stfs f0, 0x1b4(r1)
/* 801962B0 00193210  48 17 CF C9 */	bl __ct__12CTransform4fFRC9CMatrix3fRC9CVector3f
/* 801962B4 00193214  38 7C 00 04 */	addi r3, r28, 4
/* 801962B8 00193218  38 81 01 B8 */	addi r4, r1, 0x1b8
/* 801962BC 0019321C  48 17 C8 85 */	bl __as__12CTransform4fFRC12CTransform4f
/* 801962C0 00193220  7F 83 E3 78 */	mr r3, r28
/* 801962C4 00193224  48 12 E5 25 */	bl RecalculateTransforms__10CGuiObjectFv
lbl_801962C8:
/* 801962C8 00193228  80 BD 02 50 */	lwz r5, 0x250(r29)
/* 801962CC 0019322C  38 61 01 40 */	addi r3, r1, 0x140
/* 801962D0 00193230  C0 22 A6 90 */	lfs f1, lbl_805AC3B0@sda21(r2)
/* 801962D4 00193234  38 81 00 0C */	addi r4, r1, 0xc
/* 801962D8 00193238  C0 65 00 30 */	lfs f3, 0x30(r5)
/* 801962DC 0019323C  C0 45 00 20 */	lfs f2, 0x20(r5)
/* 801962E0 00193240  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 801962E4 00193244  D0 1D 02 24 */	stfs f0, 0x224(r29)
/* 801962E8 00193248  D0 5D 02 28 */	stfs f2, 0x228(r29)
/* 801962EC 0019324C  D0 7D 02 2C */	stfs f3, 0x22c(r29)
/* 801962F0 00193250  80 AD A1 38 */	lwz r5, gpTweakGui@sda21(r13)
/* 801962F4 00193254  C0 05 02 10 */	lfs f0, 0x210(r5)
/* 801962F8 00193258  EC 01 00 32 */	fmuls f0, f1, f0
/* 801962FC 0019325C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80196300 00193260  48 17 A1 09 */	bl RotateZ__9CMatrix3fFRC9CRelAngle
/* 80196304 00193264  38 61 01 64 */	addi r3, r1, 0x164
/* 80196308 00193268  38 81 01 40 */	addi r4, r1, 0x140
/* 8019630C 0019326C  38 BD 02 24 */	addi r5, r29, 0x224
/* 80196310 00193270  48 17 CF 69 */	bl __ct__12CTransform4fFRC9CMatrix3fRC9CVector3f
/* 80196314 00193274  83 9D 02 50 */	lwz r28, 0x250(r29)
/* 80196318 00193278  38 81 01 64 */	addi r4, r1, 0x164
/* 8019631C 0019327C  38 7C 00 04 */	addi r3, r28, 4
/* 80196320 00193280  48 17 C8 21 */	bl __as__12CTransform4fFRC12CTransform4f
/* 80196324 00193284  7F 83 E3 78 */	mr r3, r28
/* 80196328 00193288  48 12 E4 C1 */	bl RecalculateTransforms__10CGuiObjectFv
/* 8019632C 0019328C  7F C3 F3 78 */	mr r3, r30
/* 80196330 00193290  38 9F 00 D8 */	addi r4, r31, 0xd8
/* 80196334 00193294  48 12 BE 21 */	bl FindWidget__9CGuiFrameCFPCc
/* 80196338 00193298  7C 7C 1B 79 */	or. r28, r3, r3
/* 8019633C 0019329C  41 82 00 58 */	beq lbl_80196394
/* 80196340 001932A0  C0 5C 00 30 */	lfs f2, 0x30(r28)
/* 80196344 001932A4  38 61 00 EC */	addi r3, r1, 0xec
/* 80196348 001932A8  C0 3C 00 20 */	lfs f1, 0x20(r28)
/* 8019634C 001932AC  38 81 00 08 */	addi r4, r1, 8
/* 80196350 001932B0  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 80196354 001932B4  80 AD A1 38 */	lwz r5, gpTweakGui@sda21(r13)
/* 80196358 001932B8  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8019635C 001932BC  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 80196360 001932C0  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 80196364 001932C4  C0 05 02 10 */	lfs f0, 0x210(r5)
/* 80196368 001932C8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8019636C 001932CC  48 17 A0 9D */	bl RotateZ__9CMatrix3fFRC9CRelAngle
/* 80196370 001932D0  38 61 01 10 */	addi r3, r1, 0x110
/* 80196374 001932D4  38 81 00 EC */	addi r4, r1, 0xec
/* 80196378 001932D8  38 A1 00 74 */	addi r5, r1, 0x74
/* 8019637C 001932DC  48 17 CE FD */	bl __ct__12CTransform4fFRC9CMatrix3fRC9CVector3f
/* 80196380 001932E0  38 7C 00 04 */	addi r3, r28, 4
/* 80196384 001932E4  38 81 01 10 */	addi r4, r1, 0x110
/* 80196388 001932E8  48 17 C7 B9 */	bl __as__12CTransform4fFRC12CTransform4f
/* 8019638C 001932EC  7F 83 E3 78 */	mr r3, r28
/* 80196390 001932F0  48 12 E4 59 */	bl RecalculateTransforms__10CGuiObjectFv
lbl_80196394:
/* 80196394 001932F4  7F C3 F3 78 */	mr r3, r30
/* 80196398 001932F8  38 9F 00 C0 */	addi r4, r31, 0xc0
/* 8019639C 001932FC  48 12 BD B9 */	bl FindWidget__9CGuiFrameCFPCc
/* 801963A0 00193300  7C 7C 1B 79 */	or. r28, r3, r3
/* 801963A4 00193304  41 82 00 74 */	beq lbl_80196418
/* 801963A8 00193308  C0 7C 00 30 */	lfs f3, 0x30(r28)
/* 801963AC 0019330C  38 61 00 BC */	addi r3, r1, 0xbc
/* 801963B0 00193310  C0 5C 00 20 */	lfs f2, 0x20(r28)
/* 801963B4 00193314  38 81 00 98 */	addi r4, r1, 0x98
/* 801963B8 00193318  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 801963BC 0019331C  38 A1 00 68 */	addi r5, r1, 0x68
/* 801963C0 00193320  80 CD A1 38 */	lwz r6, gpTweakGui@sda21(r13)
/* 801963C4 00193324  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 801963C8 00193328  C0 22 A6 6C */	lfs f1, lbl_805AC38C@sda21(r2)
/* 801963CC 0019332C  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 801963D0 00193330  C0 02 A6 68 */	lfs f0, lbl_805AC388@sda21(r2)
/* 801963D4 00193334  D0 61 00 70 */	stfs f3, 0x70(r1)
/* 801963D8 00193338  C0 46 02 14 */	lfs f2, 0x214(r6)
/* 801963DC 0019333C  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 801963E0 00193340  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 801963E4 00193344  D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 801963E8 00193348  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 801963EC 0019334C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 801963F0 00193350  D0 21 00 AC */	stfs f1, 0xac(r1)
/* 801963F4 00193354  D0 21 00 B0 */	stfs f1, 0xb0(r1)
/* 801963F8 00193358  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 801963FC 0019335C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80196400 00193360  48 17 CE 79 */	bl __ct__12CTransform4fFRC9CMatrix3fRC9CVector3f
/* 80196404 00193364  38 7C 00 04 */	addi r3, r28, 4
/* 80196408 00193368  38 81 00 BC */	addi r4, r1, 0xbc
/* 8019640C 0019336C  48 17 C7 35 */	bl __as__12CTransform4fFRC12CTransform4f
/* 80196410 00193370  7F 83 E3 78 */	mr r3, r28
/* 80196414 00193374  48 12 E3 D5 */	bl RecalculateTransforms__10CGuiObjectFv
lbl_80196418:
/* 80196418 00193378  C0 3D 02 34 */	lfs f1, 0x234(r29)
/* 8019641C 0019337C  38 61 00 38 */	addi r3, r1, 0x38
/* 80196420 00193380  C0 02 A6 6C */	lfs f0, lbl_805AC38C@sda21(r2)
/* 80196424 00193384  38 A1 00 5C */	addi r5, r1, 0x5c
/* 80196428 00193388  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 8019642C 0019338C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80196430 00193390  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80196434 00193394  80 9D 02 4C */	lwz r4, 0x24c(r29)
/* 80196438 00193398  48 12 EC BD */	bl RotateO2P__10CGuiObjectCFRC9CVector3f
/* 8019643C 0019339C  C0 3D 02 18 */	lfs f1, 0x218(r29)
/* 80196440 001933A0  38 81 00 44 */	addi r4, r1, 0x44
/* 80196444 001933A4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80196448 001933A8  C0 7D 02 1C */	lfs f3, 0x21c(r29)
/* 8019644C 001933AC  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 80196450 001933B0  EC 81 00 2A */	fadds f4, f1, f0
/* 80196454 001933B4  C0 3D 02 20 */	lfs f1, 0x220(r29)
/* 80196458 001933B8  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8019645C 001933BC  EC 43 10 2A */	fadds f2, f3, f2
/* 80196460 001933C0  D0 81 00 44 */	stfs f4, 0x44(r1)
/* 80196464 001933C4  EC 01 00 2A */	fadds f0, f1, f0
/* 80196468 001933C8  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8019646C 001933CC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80196470 001933D0  80 7D 02 4C */	lwz r3, 0x24c(r29)
/* 80196474 001933D4  48 12 ED 55 */	bl SetLocalPosition__10CGuiObjectFRC9CVector3f
/* 80196478 001933D8  80 9D 02 50 */	lwz r4, 0x250(r29)
/* 8019647C 001933DC  38 61 00 20 */	addi r3, r1, 0x20
/* 80196480 001933E0  38 A1 00 5C */	addi r5, r1, 0x5c
/* 80196484 001933E4  48 12 EC 71 */	bl RotateO2P__10CGuiObjectCFRC9CVector3f
/* 80196488 001933E8  C0 3D 02 24 */	lfs f1, 0x224(r29)
/* 8019648C 001933EC  38 81 00 2C */	addi r4, r1, 0x2c
/* 80196490 001933F0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80196494 001933F4  C0 7D 02 28 */	lfs f3, 0x228(r29)
/* 80196498 001933F8  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 8019649C 001933FC  EC 81 00 28 */	fsubs f4, f1, f0
/* 801964A0 00193400  C0 3D 02 2C */	lfs f1, 0x22c(r29)
/* 801964A4 00193404  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 801964A8 00193408  EC 43 10 28 */	fsubs f2, f3, f2
/* 801964AC 0019340C  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 801964B0 00193410  EC 01 00 28 */	fsubs f0, f1, f0
/* 801964B4 00193414  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 801964B8 00193418  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801964BC 0019341C  80 7D 02 50 */	lwz r3, 0x250(r29)
/* 801964C0 00193420  48 12 ED 09 */	bl SetLocalPosition__10CGuiObjectFRC9CVector3f
/* 801964C4 00193424  7F A3 EB 78 */	mr r3, r29
/* 801964C8 00193428  81 9D 00 00 */	lwz r12, 0(r29)
/* 801964CC 0019342C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 801964D0 00193430  7D 89 03 A6 */	mtctr r12
/* 801964D4 00193434  4E 80 04 21 */	bctrl
/* 801964D8 00193438  80 01 02 A4 */	lwz r0, 0x2a4(r1)
/* 801964DC 0019343C  7F A3 EB 78 */	mr r3, r29
/* 801964E0 00193440  83 E1 02 9C */	lwz r31, 0x29c(r1)
/* 801964E4 00193444  83 C1 02 98 */	lwz r30, 0x298(r1)
/* 801964E8 00193448  83 A1 02 94 */	lwz r29, 0x294(r1)
/* 801964EC 0019344C  83 81 02 90 */	lwz r28, 0x290(r1)
/* 801964F0 00193450  7C 08 03 A6 */	mtlr r0
/* 801964F4 00193454  38 21 02 A0 */	addi r1, r1, 0x2a0
/* 801964F8 00193458  4E 80 00 20 */	blr

.global __dt__12CScanDisplayFv
__dt__12CScanDisplayFv:
/* 801964FC 0019345C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80196500 00193460  7C 08 02 A6 */	mflr r0
/* 80196504 00193464  90 01 00 14 */	stw r0, 0x14(r1)
/* 80196508 00193468  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8019650C 0019346C  7C 9F 23 78 */	mr r31, r4
/* 80196510 00193470  93 C1 00 08 */	stw r30, 8(r1)
/* 80196514 00193474  7C 7E 1B 79 */	or. r30, r3, r3
/* 80196518 00193478  41 82 01 98 */	beq lbl_801966B0
/* 8019651C 0019347C  34 1E 01 94 */	addic. r0, r30, 0x194
/* 80196520 00193480  41 82 00 30 */	beq lbl_80196550
/* 80196524 00193484  88 1E 01 A0 */	lbz r0, 0x1a0(r30)
/* 80196528 00193488  28 00 00 00 */	cmplwi r0, 0
/* 8019652C 0019348C  41 82 00 1C */	beq lbl_80196548
/* 80196530 00193490  34 7E 01 94 */	addic. r3, r30, 0x194
/* 80196534 00193494  41 82 00 14 */	beq lbl_80196548
/* 80196538 00193498  28 03 00 00 */	cmplwi r3, 0
/* 8019653C 0019349C  41 82 00 0C */	beq lbl_80196548
/* 80196540 001934A0  38 80 00 00 */	li r4, 0
/* 80196544 001934A4  48 1A A8 FD */	bl __dt__6CTokenFv
lbl_80196548:
/* 80196548 001934A8  38 00 00 00 */	li r0, 0
/* 8019654C 001934AC  98 1E 01 A0 */	stb r0, 0x1a0(r30)
lbl_80196550:
/* 80196550 001934B0  34 1E 01 70 */	addic. r0, r30, 0x170
/* 80196554 001934B4  41 82 00 58 */	beq lbl_801965AC
/* 80196558 001934B8  80 BE 01 70 */	lwz r5, 0x170(r30)
/* 8019655C 001934BC  38 60 00 00 */	li r3, 0
/* 80196560 001934C0  2C 05 00 00 */	cmpwi r5, 0
/* 80196564 001934C4  40 81 00 40 */	ble lbl_801965A4
/* 80196568 001934C8  2C 05 00 08 */	cmpwi r5, 8
/* 8019656C 001934CC  38 85 FF F8 */	addi r4, r5, -8
/* 80196570 001934D0  40 81 00 20 */	ble lbl_80196590
/* 80196574 001934D4  38 04 00 07 */	addi r0, r4, 7
/* 80196578 001934D8  54 00 E8 FE */	srwi r0, r0, 3
/* 8019657C 001934DC  7C 09 03 A6 */	mtctr r0
/* 80196580 001934E0  2C 04 00 00 */	cmpwi r4, 0
/* 80196584 001934E4  40 81 00 0C */	ble lbl_80196590
lbl_80196588:
/* 80196588 001934E8  38 63 00 08 */	addi r3, r3, 8
/* 8019658C 001934EC  42 00 FF FC */	bdnz lbl_80196588
lbl_80196590:
/* 80196590 001934F0  7C 03 28 50 */	subf r0, r3, r5
/* 80196594 001934F4  7C 09 03 A6 */	mtctr r0
/* 80196598 001934F8  7C 03 28 00 */	cmpw r3, r5
/* 8019659C 001934FC  40 80 00 08 */	bge lbl_801965A4
lbl_801965A0:
/* 801965A0 00193500  42 00 00 00 */	bdnz lbl_801965A0
lbl_801965A4:
/* 801965A4 00193504  38 00 00 00 */	li r0, 0
/* 801965A8 00193508  90 1E 01 70 */	stw r0, 0x170(r30)
lbl_801965AC:
/* 801965AC 0019350C  34 1E 00 BC */	addic. r0, r30, 0xbc
/* 801965B0 00193510  41 82 00 58 */	beq lbl_80196608
/* 801965B4 00193514  80 BE 00 BC */	lwz r5, 0xbc(r30)
/* 801965B8 00193518  38 60 00 00 */	li r3, 0
/* 801965BC 0019351C  2C 05 00 00 */	cmpwi r5, 0
/* 801965C0 00193520  40 81 00 40 */	ble lbl_80196600
/* 801965C4 00193524  2C 05 00 08 */	cmpwi r5, 8
/* 801965C8 00193528  38 85 FF F8 */	addi r4, r5, -8
/* 801965CC 0019352C  40 81 00 20 */	ble lbl_801965EC
/* 801965D0 00193530  38 04 00 07 */	addi r0, r4, 7
/* 801965D4 00193534  54 00 E8 FE */	srwi r0, r0, 3
/* 801965D8 00193538  7C 09 03 A6 */	mtctr r0
/* 801965DC 0019353C  2C 04 00 00 */	cmpwi r4, 0
/* 801965E0 00193540  40 81 00 0C */	ble lbl_801965EC
lbl_801965E4:
/* 801965E4 00193544  38 63 00 08 */	addi r3, r3, 8
/* 801965E8 00193548  42 00 FF FC */	bdnz lbl_801965E4
lbl_801965EC:
/* 801965EC 0019354C  7C 03 28 50 */	subf r0, r3, r5
/* 801965F0 00193550  7C 09 03 A6 */	mtctr r0
/* 801965F4 00193554  7C 03 28 00 */	cmpw r3, r5
/* 801965F8 00193558  40 80 00 08 */	bge lbl_80196600
lbl_801965FC:
/* 801965FC 0019355C  42 00 00 00 */	bdnz lbl_801965FC
lbl_80196600:
/* 80196600 00193560  38 00 00 00 */	li r0, 0
/* 80196604 00193564  90 1E 00 BC */	stw r0, 0xbc(r30)
lbl_80196608:
/* 80196608 00193568  34 1E 00 14 */	addic. r0, r30, 0x14
/* 8019660C 0019356C  41 82 00 7C */	beq lbl_80196688
/* 80196610 00193570  88 1E 00 9C */	lbz r0, 0x9c(r30)
/* 80196614 00193574  28 00 00 00 */	cmplwi r0, 0
/* 80196618 00193578  41 82 00 68 */	beq lbl_80196680
/* 8019661C 0019357C  34 9E 00 14 */	addic. r4, r30, 0x14
/* 80196620 00193580  41 82 00 60 */	beq lbl_80196680
/* 80196624 00193584  34 04 00 14 */	addic. r0, r4, 0x14
/* 80196628 00193588  41 82 00 58 */	beq lbl_80196680
/* 8019662C 0019358C  80 C4 00 14 */	lwz r6, 0x14(r4)
/* 80196630 00193590  38 60 00 00 */	li r3, 0
/* 80196634 00193594  2C 06 00 00 */	cmpwi r6, 0
/* 80196638 00193598  40 81 00 40 */	ble lbl_80196678
/* 8019663C 0019359C  2C 06 00 08 */	cmpwi r6, 8
/* 80196640 001935A0  38 A6 FF F8 */	addi r5, r6, -8
/* 80196644 001935A4  40 81 00 20 */	ble lbl_80196664
/* 80196648 001935A8  38 05 00 07 */	addi r0, r5, 7
/* 8019664C 001935AC  54 00 E8 FE */	srwi r0, r0, 3
/* 80196650 001935B0  7C 09 03 A6 */	mtctr r0
/* 80196654 001935B4  2C 05 00 00 */	cmpwi r5, 0
/* 80196658 001935B8  40 81 00 0C */	ble lbl_80196664
lbl_8019665C:
/* 8019665C 001935BC  38 63 00 08 */	addi r3, r3, 8
/* 80196660 001935C0  42 00 FF FC */	bdnz lbl_8019665C
lbl_80196664:
/* 80196664 001935C4  7C 03 30 50 */	subf r0, r3, r6
/* 80196668 001935C8  7C 09 03 A6 */	mtctr r0
/* 8019666C 001935CC  7C 03 30 00 */	cmpw r3, r6
/* 80196670 001935D0  40 80 00 08 */	bge lbl_80196678
lbl_80196674:
/* 80196674 001935D4  42 00 00 00 */	bdnz lbl_80196674
lbl_80196678:
/* 80196678 001935D8  38 00 00 00 */	li r0, 0
/* 8019667C 001935DC  90 04 00 14 */	stw r0, 0x14(r4)
lbl_80196680:
/* 80196680 001935E0  38 00 00 00 */	li r0, 0
/* 80196684 001935E4  98 1E 00 9C */	stb r0, 0x9c(r30)
lbl_80196688:
/* 80196688 001935E8  28 1E 00 00 */	cmplwi r30, 0
/* 8019668C 001935EC  41 82 00 14 */	beq lbl_801966A0
/* 80196690 001935F0  41 82 00 10 */	beq lbl_801966A0
/* 80196694 001935F4  7F C3 F3 78 */	mr r3, r30
/* 80196698 001935F8  38 80 00 00 */	li r4, 0
/* 8019669C 001935FC  48 1A A7 A5 */	bl __dt__6CTokenFv
lbl_801966A0:
/* 801966A0 00193600  7F E0 07 35 */	extsh. r0, r31
/* 801966A4 00193604  40 81 00 0C */	ble lbl_801966B0
/* 801966A8 00193608  7F C3 F3 78 */	mr r3, r30
/* 801966AC 0019360C  48 17 F2 85 */	bl Free__7CMemoryFPCv
lbl_801966B0:
/* 801966B0 00193610  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801966B4 00193614  7F C3 F3 78 */	mr r3, r30
/* 801966B8 00193618  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801966BC 0019361C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801966C0 00193620  7C 08 03 A6 */	mtlr r0
/* 801966C4 00193624  38 21 00 10 */	addi r1, r1, 0x10
/* 801966C8 00193628  4E 80 00 20 */	blr

.global UpdateCameraDebugSettings__21CHudDecoInterfaceXrayFfff
UpdateCameraDebugSettings__21CHudDecoInterfaceXrayFfff:
/* 801966CC 0019362C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801966D0 00193630  C0 02 A6 6C */	lfs f0, lbl_805AC38C@sda21(r2)
/* 801966D4 00193634  81 43 00 A0 */	lwz r10, 0xa0(r3)
/* 801966D8 00193638  81 2A 00 BC */	lwz r9, 0xbc(r10)
/* 801966DC 0019363C  81 0A 00 C0 */	lwz r8, 0xc0(r10)
/* 801966E0 00193640  91 21 00 20 */	stw r9, 0x20(r1)
/* 801966E4 00193644  80 EA 00 C4 */	lwz r7, 0xc4(r10)
/* 801966E8 00193648  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 801966EC 0019364C  80 CA 00 C8 */	lwz r6, 0xc8(r10)
/* 801966F0 00193650  80 AA 00 CC */	lwz r5, 0xcc(r10)
/* 801966F4 00193654  80 8A 00 D0 */	lwz r4, 0xd0(r10)
/* 801966F8 00193658  80 01 00 20 */	lwz r0, 0x20(r1)
/* 801966FC 0019365C  91 21 00 08 */	stw r9, 8(r1)
/* 80196700 00193660  90 0A 00 BC */	stw r0, 0xbc(r10)
/* 80196704 00193664  91 0A 00 C0 */	stw r8, 0xc0(r10)
/* 80196708 00193668  90 EA 00 C4 */	stw r7, 0xc4(r10)
/* 8019670C 0019366C  90 CA 00 C8 */	stw r6, 0xc8(r10)
/* 80196710 00193670  90 AA 00 CC */	stw r5, 0xcc(r10)
/* 80196714 00193674  90 8A 00 D0 */	stw r4, 0xd0(r10)
/* 80196718 00193678  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 8019671C 0019367C  D0 43 00 34 */	stfs f2, 0x34(r3)
/* 80196720 00193680  91 01 00 0C */	stw r8, 0xc(r1)
/* 80196724 00193684  90 E1 00 10 */	stw r7, 0x10(r1)
/* 80196728 00193688  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8019672C 0019368C  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80196730 00193690  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80196734 00193694  91 01 00 24 */	stw r8, 0x24(r1)
/* 80196738 00193698  90 E1 00 28 */	stw r7, 0x28(r1)
/* 8019673C 0019369C  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 80196740 001936A0  90 A1 00 30 */	stw r5, 0x30(r1)
/* 80196744 001936A4  90 81 00 34 */	stw r4, 0x34(r1)
/* 80196748 001936A8  D0 63 00 38 */	stfs f3, 0x38(r3)
/* 8019674C 001936AC  38 21 00 40 */	addi r1, r1, 0x40
/* 80196750 001936B0  4E 80 00 20 */	blr

.global Update__21CHudDecoInterfaceXrayFfRC13CStateManager
Update__21CHudDecoInterfaceXrayFfRC13CStateManager:
/* 80196754 001936B4  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80196758 001936B8  7C 08 02 A6 */	mflr r0
/* 8019675C 001936BC  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80196760 001936C0  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 80196764 001936C4  7C 7F 1B 78 */	mr r31, r3
/* 80196768 001936C8  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 8019676C 001936CC  80 04 03 04 */	lwz r0, 0x304(r4)
/* 80196770 001936D0  2C 00 00 01 */	cmpwi r0, 1
/* 80196774 001936D4  40 82 00 38 */	bne lbl_801967AC
/* 80196778 001936D8  C0 62 A6 98 */	lfs f3, lbl_805AC3B8@sda21(r2)
/* 8019677C 001936DC  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80196780 001936E0  C0 02 A6 94 */	lfs f0, lbl_805AC3B4@sda21(r2)
/* 80196784 001936E4  EC 23 10 7C */	fnmsubs f1, f3, f1, f2
/* 80196788 001936E8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8019678C 001936EC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80196790 001936F0  40 80 00 0C */	bge lbl_8019679C
/* 80196794 001936F4  38 61 00 0C */	addi r3, r1, 0xc
/* 80196798 001936F8  48 00 00 08 */	b lbl_801967A0
lbl_8019679C:
/* 8019679C 001936FC  38 62 A6 94 */	addi r3, r2, lbl_805AC3B4@sda21
lbl_801967A0:
/* 801967A0 00193700  C0 03 00 00 */	lfs f0, 0(r3)
/* 801967A4 00193704  D0 1F 00 04 */	stfs f0, 4(r31)
/* 801967A8 00193708  48 00 00 34 */	b lbl_801967DC
lbl_801967AC:
/* 801967AC 0019370C  C0 62 A6 98 */	lfs f3, lbl_805AC3B8@sda21(r2)
/* 801967B0 00193710  C0 5F 00 04 */	lfs f2, 4(r31)
/* 801967B4 00193714  C0 0D 8F A8 */	lfs f0, lbl_805A7B68@sda21(r13)
/* 801967B8 00193718  EC 23 10 7A */	fmadds f1, f3, f1, f2
/* 801967BC 0019371C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801967C0 00193720  D0 21 00 08 */	stfs f1, 8(r1)
/* 801967C4 00193724  40 80 00 0C */	bge lbl_801967D0
/* 801967C8 00193728  38 61 00 08 */	addi r3, r1, 8
/* 801967CC 0019372C  48 00 00 08 */	b lbl_801967D4
lbl_801967D0:
/* 801967D0 00193730  38 6D 8F A8 */	addi r3, r13, lbl_805A7B68@sda21
lbl_801967D4:
/* 801967D4 00193734  C0 03 00 00 */	lfs f0, 0(r3)
/* 801967D8 00193738  D0 1F 00 04 */	stfs f0, 4(r31)
lbl_801967DC:
/* 801967DC 0019373C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 801967E0 00193740  38 61 00 94 */	addi r3, r1, 0x94
/* 801967E4 00193744  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 801967E8 00193748  38 9F 00 08 */	addi r4, r31, 8
/* 801967EC 0019374C  C0 7F 00 20 */	lfs f3, 0x20(r31)
/* 801967F0 00193750  38 A1 00 10 */	addi r5, r1, 0x10
/* 801967F4 00193754  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 801967F8 00193758  EC 81 00 2A */	fadds f4, f1, f0
/* 801967FC 0019375C  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80196800 00193760  38 DF 00 30 */	addi r6, r31, 0x30
/* 80196804 00193764  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80196808 00193768  EC 43 10 2A */	fadds f2, f3, f2
/* 8019680C 0019376C  EC 01 00 2A */	fadds f0, f1, f0
/* 80196810 00193770  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 80196814 00193774  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80196818 00193778  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8019681C 0019377C  4B ED 6D 85 */	bl BuildFinalCameraTransform__9CSamusHudFRC11CQuaternionRC9CVector3fRC9CVector3f
/* 80196820 00193780  80 7F 00 A0 */	lwz r3, 0xa0(r31)
/* 80196824 00193784  38 81 00 94 */	addi r4, r1, 0x94
/* 80196828 00193788  48 12 DF 11 */	bl SetO2WTransform__10CGuiObjectFRC12CTransform4f
/* 8019682C 0019378C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80196830 00193790  38 61 00 40 */	addi r3, r1, 0x40
/* 80196834 00193794  C0 02 A6 6C */	lfs f0, lbl_805AC38C@sda21(r2)
/* 80196838 00193798  38 81 00 1C */	addi r4, r1, 0x1c
/* 8019683C 0019379C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80196840 001937A0  38 BF 00 3C */	addi r5, r31, 0x3c
/* 80196844 001937A4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80196848 001937A8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8019684C 001937AC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80196850 001937B0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80196854 001937B4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80196858 001937B8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8019685C 001937BC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80196860 001937C0  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80196864 001937C4  48 17 98 CD */	bl __ml__9CMatrix3fCFRC9CMatrix3f
/* 80196868 001937C8  38 61 00 64 */	addi r3, r1, 0x64
/* 8019686C 001937CC  38 81 00 40 */	addi r4, r1, 0x40
/* 80196870 001937D0  38 BF 00 60 */	addi r5, r31, 0x60
/* 80196874 001937D4  48 17 CA 05 */	bl __ct__12CTransform4fFRC9CMatrix3fRC9CVector3f
/* 80196878 001937D8  83 FF 00 A8 */	lwz r31, 0xa8(r31)
/* 8019687C 001937DC  38 81 00 64 */	addi r4, r1, 0x64
/* 80196880 001937E0  38 7F 00 04 */	addi r3, r31, 4
/* 80196884 001937E4  48 17 C2 BD */	bl __as__12CTransform4fFRC12CTransform4f
/* 80196888 001937E8  7F E3 FB 78 */	mr r3, r31
/* 8019688C 001937EC  48 12 DF 5D */	bl RecalculateTransforms__10CGuiObjectFv
/* 80196890 001937F0  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80196894 001937F4  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 80196898 001937F8  7C 08 03 A6 */	mtlr r0
/* 8019689C 001937FC  38 21 00 D0 */	addi r1, r1, 0xd0
/* 801968A0 00193800  4E 80 00 20 */	blr

.global SetFrameColorValue__21CHudDecoInterfaceXrayFf
SetFrameColorValue__21CHudDecoInterfaceXrayFf:
/* 801968A4 00193804  4E 80 00 20 */	blr

.global SetDamageTransform__21CHudDecoInterfaceXrayFRC9CMatrix3fRC9CVector3f
SetDamageTransform__21CHudDecoInterfaceXrayFRC9CMatrix3fRC9CVector3f:
/* 801968A8 00193808  4E 80 00 20 */	blr

.global SetHudOffset__21CHudDecoInterfaceXrayFRC9CVector3f
SetHudOffset__21CHudDecoInterfaceXrayFRC9CVector3f:
/* 801968AC 0019380C  C0 04 00 00 */	lfs f0, 0(r4)
/* 801968B0 00193810  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 801968B4 00193814  C0 04 00 04 */	lfs f0, 4(r4)
/* 801968B8 00193818  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 801968BC 0019381C  C0 04 00 08 */	lfs f0, 8(r4)
/* 801968C0 00193820  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 801968C4 00193824  4E 80 00 20 */	blr

.global SetDecoRotation__21CHudDecoInterfaceXrayFf
SetDecoRotation__21CHudDecoInterfaceXrayFf:
/* 801968C8 00193828  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801968CC 0019382C  7C 08 02 A6 */	mflr r0
/* 801968D0 00193830  90 01 00 84 */	stw r0, 0x84(r1)
/* 801968D4 00193834  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 801968D8 00193838  7C 7F 1B 78 */	mr r31, r3
/* 801968DC 0019383C  38 61 00 0C */	addi r3, r1, 0xc
/* 801968E0 00193840  D0 21 00 08 */	stfs f1, 8(r1)
/* 801968E4 00193844  80 9F 00 AC */	lwz r4, 0xac(r31)
/* 801968E8 00193848  48 12 E9 35 */	bl GetLocalPosition__10CGuiObjectCFv
/* 801968EC 0019384C  38 61 00 18 */	addi r3, r1, 0x18
/* 801968F0 00193850  38 81 00 08 */	addi r4, r1, 8
/* 801968F4 00193854  48 17 9B A1 */	bl RotateY__9CMatrix3fFRC9CRelAngle
/* 801968F8 00193858  38 61 00 3C */	addi r3, r1, 0x3c
/* 801968FC 0019385C  38 81 00 18 */	addi r4, r1, 0x18
/* 80196900 00193860  38 A1 00 0C */	addi r5, r1, 0xc
/* 80196904 00193864  48 17 C9 75 */	bl __ct__12CTransform4fFRC9CMatrix3fRC9CVector3f
/* 80196908 00193868  83 FF 00 AC */	lwz r31, 0xac(r31)
/* 8019690C 0019386C  38 81 00 3C */	addi r4, r1, 0x3c
/* 80196910 00193870  38 7F 00 04 */	addi r3, r31, 4
/* 80196914 00193874  48 17 C2 2D */	bl __as__12CTransform4fFRC12CTransform4f
/* 80196918 00193878  7F E3 FB 78 */	mr r3, r31
/* 8019691C 0019387C  48 12 DE CD */	bl RecalculateTransforms__10CGuiObjectFv
/* 80196920 00193880  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80196924 00193884  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 80196928 00193888  7C 08 03 A6 */	mtlr r0
/* 8019692C 0019388C  38 21 00 80 */	addi r1, r1, 0x80
/* 80196930 00193890  4E 80 00 20 */	blr

.global SetReticuleTransform__21CHudDecoInterfaceXrayFRC9CMatrix3f
SetReticuleTransform__21CHudDecoInterfaceXrayFRC9CMatrix3f:
/* 80196934 00193894  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80196938 00193898  7C 08 02 A6 */	mflr r0
/* 8019693C 0019389C  38 63 00 3C */	addi r3, r3, 0x3c
/* 80196940 001938A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80196944 001938A4  48 17 96 B5 */	bl __as__9CMatrix3fFRC9CMatrix3f
/* 80196948 001938A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019694C 001938AC  7C 08 03 A6 */	mtlr r0
/* 80196950 001938B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80196954 001938B4  4E 80 00 20 */	blr

.global SetHudRotation__21CHudDecoInterfaceXrayFRC11CQuaternion
SetHudRotation__21CHudDecoInterfaceXrayFRC11CQuaternion:
/* 80196958 001938B8  C0 04 00 00 */	lfs f0, 0(r4)
/* 8019695C 001938BC  D0 03 00 08 */	stfs f0, 8(r3)
/* 80196960 001938C0  80 A4 00 04 */	lwz r5, 4(r4)
/* 80196964 001938C4  80 04 00 08 */	lwz r0, 8(r4)
/* 80196968 001938C8  90 A3 00 0C */	stw r5, 0xc(r3)
/* 8019696C 001938CC  90 03 00 10 */	stw r0, 0x10(r3)
/* 80196970 001938D0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80196974 001938D4  90 03 00 14 */	stw r0, 0x14(r3)
/* 80196978 001938D8  4E 80 00 20 */	blr

.global UpdateVisibility__21CHudDecoInterfaceXrayFv
UpdateVisibility__21CHudDecoInterfaceXrayFv:
/* 8019697C 001938DC  4E 80 00 20 */	blr

.global SetIsVisibleGame__21CHudDecoInterfaceXrayFb
SetIsVisibleGame__21CHudDecoInterfaceXrayFb:
/* 80196980 001938E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80196984 001938E4  7C 08 02 A6 */	mflr r0
/* 80196988 001938E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019698C 001938EC  88 03 00 9C */	lbz r0, 0x9c(r3)
/* 80196990 001938F0  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 80196994 001938F4  98 03 00 9C */	stb r0, 0x9c(r3)
/* 80196998 001938F8  4B FF FF E5 */	bl UpdateVisibility__21CHudDecoInterfaceXrayFv
/* 8019699C 001938FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801969A0 00193900  7C 08 03 A6 */	mtlr r0
/* 801969A4 00193904  38 21 00 10 */	addi r1, r1, 0x10
/* 801969A8 00193908  4E 80 00 20 */	blr

.global SetIsVisibleDebug__21CHudDecoInterfaceXrayFb
SetIsVisibleDebug__21CHudDecoInterfaceXrayFb:
/* 801969AC 0019390C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801969B0 00193910  7C 08 02 A6 */	mflr r0
/* 801969B4 00193914  90 01 00 14 */	stw r0, 0x14(r1)
/* 801969B8 00193918  88 03 00 9C */	lbz r0, 0x9c(r3)
/* 801969BC 0019391C  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 801969C0 00193920  98 03 00 9C */	stb r0, 0x9c(r3)
/* 801969C4 00193924  4B FF FF B9 */	bl UpdateVisibility__21CHudDecoInterfaceXrayFv
/* 801969C8 00193928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801969CC 0019392C  7C 08 03 A6 */	mtlr r0
/* 801969D0 00193930  38 21 00 10 */	addi r1, r1, 0x10
/* 801969D4 00193934  4E 80 00 20 */	blr

.global UpdateHudAlpha__21CHudDecoInterfaceXrayFv
UpdateHudAlpha__21CHudDecoInterfaceXrayFv:
/* 801969D8 00193938  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801969DC 0019393C  7C 08 02 A6 */	mflr r0
/* 801969E0 00193940  90 01 00 14 */	stw r0, 0x14(r1)
/* 801969E4 00193944  38 00 00 FF */	li r0, 0xff
/* 801969E8 00193948  38 81 00 08 */	addi r4, r1, 8
/* 801969EC 0019394C  80 AD A0 80 */	lwz r5, gpGameState@sda21(r13)
/* 801969F0 00193950  80 A5 01 DC */	lwz r5, 0x1dc(r5)
/* 801969F4 00193954  98 01 00 08 */	stb r0, 8(r1)
/* 801969F8 00193958  98 01 00 09 */	stb r0, 9(r1)
/* 801969FC 0019395C  98 01 00 0A */	stb r0, 0xa(r1)
/* 80196A00 00193960  98 A1 00 0B */	stb r5, 0xb(r1)
/* 80196A04 00193964  80 63 00 A4 */	lwz r3, 0xa4(r3)
/* 80196A08 00193968  48 13 3E 65 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80196A0C 0019396C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80196A10 00193970  7C 08 03 A6 */	mtlr r0
/* 80196A14 00193974  38 21 00 10 */	addi r1, r1, 0x10
/* 80196A18 00193978  4E 80 00 20 */	blr

.global __ct__21CHudDecoInterfaceXRayFR9CGuiFrame
__ct__21CHudDecoInterfaceXRayFR9CGuiFrame:
/* 80196A1C 0019397C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80196A20 00193980  7C 08 02 A6 */	mflr r0
/* 80196A24 00193984  3C A0 80 3E */	lis r5, lbl_803DA2A4@ha
/* 80196A28 00193988  C0 02 A6 68 */	lfs f0, lbl_805AC388@sda21(r2)
/* 80196A2C 0019398C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80196A30 00193990  38 05 A2 A4 */	addi r0, r5, lbl_803DA2A4@l
/* 80196A34 00193994  3C C0 80 5A */	lis r6, sNoRotation__11CQuaternion@ha
/* 80196A38 00193998  3C A0 80 5A */	lis r5, sZeroVector__9CVector3f@ha
/* 80196A3C 0019399C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80196A40 001939A0  7C 9F 23 78 */	mr r31, r4
/* 80196A44 001939A4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80196A48 001939A8  7C 7E 1B 78 */	mr r30, r3
/* 80196A4C 001939AC  3C 60 80 3E */	lis r3, lbl_803E4550@ha
/* 80196A50 001939B0  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80196A54 001939B4  3B A5 66 A0 */	addi r29, r5, sZeroVector__9CVector3f@l
/* 80196A58 001939B8  90 1E 00 00 */	stw r0, 0(r30)
/* 80196A5C 001939BC  38 03 45 50 */	addi r0, r3, lbl_803E4550@l
/* 80196A60 001939C0  3C 60 80 5A */	lis r3, lbl_805A65FC@ha
/* 80196A64 001939C4  90 1E 00 00 */	stw r0, 0(r30)
/* 80196A68 001939C8  38 03 65 FC */	addi r0, r3, lbl_805A65FC@l
/* 80196A6C 001939CC  7C 04 03 78 */	mr r4, r0
/* 80196A70 001939D0  38 7E 00 3C */	addi r3, r30, 0x3c
/* 80196A74 001939D4  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80196A78 001939D8  C4 06 66 60 */	lfsu f0, sNoRotation__11CQuaternion@l(r6)
/* 80196A7C 001939DC  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80196A80 001939E0  C0 06 00 04 */	lfs f0, 4(r6)
/* 80196A84 001939E4  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 80196A88 001939E8  C0 06 00 08 */	lfs f0, 8(r6)
/* 80196A8C 001939EC  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 80196A90 001939F0  C0 06 00 0C */	lfs f0, 0xc(r6)
/* 80196A94 001939F4  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 80196A98 001939F8  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80196A9C 001939FC  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 80196AA0 00193A00  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80196AA4 00193A04  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 80196AA8 00193A08  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80196AAC 00193A0C  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 80196AB0 00193A10  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80196AB4 00193A14  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 80196AB8 00193A18  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80196ABC 00193A1C  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 80196AC0 00193A20  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80196AC4 00193A24  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 80196AC8 00193A28  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80196ACC 00193A2C  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 80196AD0 00193A30  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80196AD4 00193A34  D0 1E 00 34 */	stfs f0, 0x34(r30)
/* 80196AD8 00193A38  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80196ADC 00193A3C  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 80196AE0 00193A40  48 17 95 45 */	bl __ct__9CMatrix3fFRC9CMatrix3f
/* 80196AE4 00193A44  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80196AE8 00193A48  3C 80 80 5A */	lis r4, lbl_805A65FC@ha
/* 80196AEC 00193A4C  38 A3 66 A0 */	addi r5, r3, sZeroVector__9CVector3f@l
/* 80196AF0 00193A50  C0 05 00 00 */	lfs f0, 0(r5)
/* 80196AF4 00193A54  38 7E 00 78 */	addi r3, r30, 0x78
/* 80196AF8 00193A58  38 84 65 FC */	addi r4, r4, lbl_805A65FC@l
/* 80196AFC 00193A5C  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 80196B00 00193A60  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80196B04 00193A64  D0 1E 00 64 */	stfs f0, 0x64(r30)
/* 80196B08 00193A68  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80196B0C 00193A6C  D0 1E 00 68 */	stfs f0, 0x68(r30)
/* 80196B10 00193A70  C0 05 00 00 */	lfs f0, 0(r5)
/* 80196B14 00193A74  D0 1E 00 6C */	stfs f0, 0x6c(r30)
/* 80196B18 00193A78  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80196B1C 00193A7C  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 80196B20 00193A80  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80196B24 00193A84  D0 1E 00 74 */	stfs f0, 0x74(r30)
/* 80196B28 00193A88  48 17 94 FD */	bl __ct__9CMatrix3fFRC9CMatrix3f
/* 80196B2C 00193A8C  88 1E 00 9C */	lbz r0, 0x9c(r30)
/* 80196B30 00193A90  38 80 00 01 */	li r4, 1
/* 80196B34 00193A94  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80196B38 00193A98  38 61 00 08 */	addi r3, r1, 8
/* 80196B3C 00193A9C  98 1E 00 9C */	stb r0, 0x9c(r30)
/* 80196B40 00193AA0  88 1E 00 9C */	lbz r0, 0x9c(r30)
/* 80196B44 00193AA4  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 80196B48 00193AA8  98 1E 00 9C */	stb r0, 0x9c(r30)
/* 80196B4C 00193AAC  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 80196B50 00193AB0  90 1E 00 A0 */	stw r0, 0xa0(r30)
/* 80196B54 00193AB4  80 9E 00 A0 */	lwz r4, 0xa0(r30)
/* 80196B58 00193AB8  48 12 E6 C5 */	bl GetLocalPosition__10CGuiObjectCFv
/* 80196B5C 00193ABC  C0 01 00 08 */	lfs f0, 8(r1)
/* 80196B60 00193AC0  3C 60 80 3D */	lis r3, lbl_803D0F38@ha
/* 80196B64 00193AC4  38 83 0F 38 */	addi r4, r3, lbl_803D0F38@l
/* 80196B68 00193AC8  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 80196B6C 00193ACC  7F E3 FB 78 */	mr r3, r31
/* 80196B70 00193AD0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80196B74 00193AD4  D0 1E 00 34 */	stfs f0, 0x34(r30)
/* 80196B78 00193AD8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80196B7C 00193ADC  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 80196B80 00193AE0  48 12 B5 D5 */	bl FindWidget__9CGuiFrameCFPCc
/* 80196B84 00193AE4  3C 80 80 3D */	lis r4, lbl_803D0F60@ha
/* 80196B88 00193AE8  90 7E 00 A4 */	stw r3, 0xa4(r30)
/* 80196B8C 00193AEC  38 84 0F 60 */	addi r4, r4, lbl_803D0F60@l
/* 80196B90 00193AF0  7F E3 FB 78 */	mr r3, r31
/* 80196B94 00193AF4  48 12 B5 C1 */	bl FindWidget__9CGuiFrameCFPCc
/* 80196B98 00193AF8  3C 80 80 3D */	lis r4, lbl_803D10E4@ha
/* 80196B9C 00193AFC  90 7E 00 A8 */	stw r3, 0xa8(r30)
/* 80196BA0 00193B00  38 84 10 E4 */	addi r4, r4, lbl_803D10E4@l
/* 80196BA4 00193B04  7F E3 FB 78 */	mr r3, r31
/* 80196BA8 00193B08  38 84 00 9E */	addi r4, r4, 0x9e
/* 80196BAC 00193B0C  48 12 B5 A9 */	bl FindWidget__9CGuiFrameCFPCc
/* 80196BB0 00193B10  90 7E 00 AC */	stw r3, 0xac(r30)
/* 80196BB4 00193B14  3C 60 80 3D */	lis r3, lbl_803D10E4@ha
/* 80196BB8 00193B18  38 83 10 E4 */	addi r4, r3, lbl_803D10E4@l
/* 80196BBC 00193B1C  7F E3 FB 78 */	mr r3, r31
/* 80196BC0 00193B20  80 BE 00 A4 */	lwz r5, 0xa4(r30)
/* 80196BC4 00193B24  38 84 00 B0 */	addi r4, r4, 0xb0
/* 80196BC8 00193B28  C0 45 00 A0 */	lfs f2, 0xa0(r5)
/* 80196BCC 00193B2C  C0 25 00 90 */	lfs f1, 0x90(r5)
/* 80196BD0 00193B30  C0 05 00 80 */	lfs f0, 0x80(r5)
/* 80196BD4 00193B34  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 80196BD8 00193B38  D0 3E 00 1C */	stfs f1, 0x1c(r30)
/* 80196BDC 00193B3C  D0 5E 00 20 */	stfs f2, 0x20(r30)
/* 80196BE0 00193B40  80 BE 00 A8 */	lwz r5, 0xa8(r30)
/* 80196BE4 00193B44  C0 45 00 A0 */	lfs f2, 0xa0(r5)
/* 80196BE8 00193B48  C0 25 00 90 */	lfs f1, 0x90(r5)
/* 80196BEC 00193B4C  C0 05 00 80 */	lfs f0, 0x80(r5)
/* 80196BF0 00193B50  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 80196BF4 00193B54  D0 3E 00 64 */	stfs f1, 0x64(r30)
/* 80196BF8 00193B58  D0 5E 00 68 */	stfs f2, 0x68(r30)
/* 80196BFC 00193B5C  48 12 B5 59 */	bl FindWidget__9CGuiFrameCFPCc
/* 80196C00 00193B60  28 03 00 00 */	cmplwi r3, 0
/* 80196C04 00193B64  41 82 00 10 */	beq lbl_80196C14
/* 80196C08 00193B68  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 80196C0C 00193B6C  38 84 01 00 */	addi r4, r4, 0x100
/* 80196C10 00193B70  48 13 3C 5D */	bl SetColor__10CGuiWidgetFRC6CColor
lbl_80196C14:
/* 80196C14 00193B74  3C 80 80 3D */	lis r4, lbl_803D10E4@ha
/* 80196C18 00193B78  7F E3 FB 78 */	mr r3, r31
/* 80196C1C 00193B7C  38 84 10 E4 */	addi r4, r4, lbl_803D10E4@l
/* 80196C20 00193B80  38 84 00 C6 */	addi r4, r4, 0xc6
/* 80196C24 00193B84  48 12 B5 31 */	bl FindWidget__9CGuiFrameCFPCc
/* 80196C28 00193B88  28 03 00 00 */	cmplwi r3, 0
/* 80196C2C 00193B8C  41 82 00 14 */	beq lbl_80196C40
/* 80196C30 00193B90  88 03 00 B7 */	lbz r0, 0xb7(r3)
/* 80196C34 00193B94  38 80 00 01 */	li r4, 1
/* 80196C38 00193B98  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80196C3C 00193B9C  98 03 00 B7 */	stb r0, 0xb7(r3)
lbl_80196C40:
/* 80196C40 00193BA0  3C 80 80 3D */	lis r4, lbl_803D10E4@ha
/* 80196C44 00193BA4  7F E3 FB 78 */	mr r3, r31
/* 80196C48 00193BA8  38 84 10 E4 */	addi r4, r4, lbl_803D10E4@l
/* 80196C4C 00193BAC  38 84 00 D2 */	addi r4, r4, 0xd2
/* 80196C50 00193BB0  48 12 B5 05 */	bl FindWidget__9CGuiFrameCFPCc
/* 80196C54 00193BB4  28 03 00 00 */	cmplwi r3, 0
/* 80196C58 00193BB8  41 82 00 14 */	beq lbl_80196C6C
/* 80196C5C 00193BBC  88 03 00 B7 */	lbz r0, 0xb7(r3)
/* 80196C60 00193BC0  38 80 00 01 */	li r4, 1
/* 80196C64 00193BC4  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80196C68 00193BC8  98 03 00 B7 */	stb r0, 0xb7(r3)
lbl_80196C6C:
/* 80196C6C 00193BCC  3C 80 80 3D */	lis r4, lbl_803D10E4@ha
/* 80196C70 00193BD0  7F E3 FB 78 */	mr r3, r31
/* 80196C74 00193BD4  38 84 10 E4 */	addi r4, r4, lbl_803D10E4@l
/* 80196C78 00193BD8  38 84 00 DF */	addi r4, r4, 0xdf
/* 80196C7C 00193BDC  48 12 B4 D9 */	bl FindWidget__9CGuiFrameCFPCc
/* 80196C80 00193BE0  28 03 00 00 */	cmplwi r3, 0
/* 80196C84 00193BE4  41 82 00 14 */	beq lbl_80196C98
/* 80196C88 00193BE8  88 03 00 B7 */	lbz r0, 0xb7(r3)
/* 80196C8C 00193BEC  38 80 00 01 */	li r4, 1
/* 80196C90 00193BF0  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80196C94 00193BF4  98 03 00 B7 */	stb r0, 0xb7(r3)
lbl_80196C98:
/* 80196C98 00193BF8  3C 80 80 3D */	lis r4, lbl_803D10E4@ha
/* 80196C9C 00193BFC  7F E3 FB 78 */	mr r3, r31
/* 80196CA0 00193C00  38 84 10 E4 */	addi r4, r4, lbl_803D10E4@l
/* 80196CA4 00193C04  38 84 00 EC */	addi r4, r4, 0xec
/* 80196CA8 00193C08  48 12 B4 AD */	bl FindWidget__9CGuiFrameCFPCc
/* 80196CAC 00193C0C  28 03 00 00 */	cmplwi r3, 0
/* 80196CB0 00193C10  41 82 00 14 */	beq lbl_80196CC4
/* 80196CB4 00193C14  88 03 00 B7 */	lbz r0, 0xb7(r3)
/* 80196CB8 00193C18  38 80 00 01 */	li r4, 1
/* 80196CBC 00193C1C  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80196CC0 00193C20  98 03 00 B7 */	stb r0, 0xb7(r3)
lbl_80196CC4:
/* 80196CC4 00193C24  3C 80 80 3D */	lis r4, lbl_803D10E4@ha
/* 80196CC8 00193C28  7F E3 FB 78 */	mr r3, r31
/* 80196CCC 00193C2C  38 84 10 E4 */	addi r4, r4, lbl_803D10E4@l
/* 80196CD0 00193C30  38 84 00 F9 */	addi r4, r4, 0xf9
/* 80196CD4 00193C34  48 12 B4 81 */	bl FindWidget__9CGuiFrameCFPCc
/* 80196CD8 00193C38  28 03 00 00 */	cmplwi r3, 0
/* 80196CDC 00193C3C  41 82 00 14 */	beq lbl_80196CF0
/* 80196CE0 00193C40  88 03 00 B7 */	lbz r0, 0xb7(r3)
/* 80196CE4 00193C44  38 80 00 01 */	li r4, 1
/* 80196CE8 00193C48  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80196CEC 00193C4C  98 03 00 B7 */	stb r0, 0xb7(r3)
lbl_80196CF0:
/* 80196CF0 00193C50  3C 80 80 3D */	lis r4, lbl_803D10E4@ha
/* 80196CF4 00193C54  7F E3 FB 78 */	mr r3, r31
/* 80196CF8 00193C58  38 84 10 E4 */	addi r4, r4, lbl_803D10E4@l
/* 80196CFC 00193C5C  38 84 01 0D */	addi r4, r4, 0x10d
/* 80196D00 00193C60  48 12 B4 55 */	bl FindWidget__9CGuiFrameCFPCc
/* 80196D04 00193C64  28 03 00 00 */	cmplwi r3, 0
/* 80196D08 00193C68  41 82 00 14 */	beq lbl_80196D1C
/* 80196D0C 00193C6C  88 03 00 B7 */	lbz r0, 0xb7(r3)
/* 80196D10 00193C70  38 80 00 01 */	li r4, 1
/* 80196D14 00193C74  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80196D18 00193C78  98 03 00 B7 */	stb r0, 0xb7(r3)
lbl_80196D1C:
/* 80196D1C 00193C7C  7F C3 F3 78 */	mr r3, r30
/* 80196D20 00193C80  81 9E 00 00 */	lwz r12, 0(r30)
/* 80196D24 00193C84  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80196D28 00193C88  7D 89 03 A6 */	mtctr r12
/* 80196D2C 00193C8C  4E 80 04 21 */	bctrl
/* 80196D30 00193C90  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80196D34 00193C94  7F C3 F3 78 */	mr r3, r30
/* 80196D38 00193C98  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80196D3C 00193C9C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80196D40 00193CA0  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80196D44 00193CA4  7C 08 03 A6 */	mtlr r0
/* 80196D48 00193CA8  38 21 00 30 */	addi r1, r1, 0x30
/* 80196D4C 00193CAC  4E 80 00 20 */	blr

.global UpdateCameraDebugSettings__23CHudDecoInterfaceCombatFfff
UpdateCameraDebugSettings__23CHudDecoInterfaceCombatFfff:
/* 80196D50 00193CB0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80196D54 00193CB4  C0 02 A6 6C */	lfs f0, lbl_805AC38C@sda21(r2)
/* 80196D58 00193CB8  81 43 00 6C */	lwz r10, 0x6c(r3)
/* 80196D5C 00193CBC  81 2A 00 BC */	lwz r9, 0xbc(r10)
/* 80196D60 00193CC0  81 0A 00 C0 */	lwz r8, 0xc0(r10)
/* 80196D64 00193CC4  91 21 00 20 */	stw r9, 0x20(r1)
/* 80196D68 00193CC8  80 EA 00 C4 */	lwz r7, 0xc4(r10)
/* 80196D6C 00193CCC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80196D70 00193CD0  80 CA 00 C8 */	lwz r6, 0xc8(r10)
/* 80196D74 00193CD4  80 AA 00 CC */	lwz r5, 0xcc(r10)
/* 80196D78 00193CD8  80 8A 00 D0 */	lwz r4, 0xd0(r10)
/* 80196D7C 00193CDC  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80196D80 00193CE0  91 21 00 08 */	stw r9, 8(r1)
/* 80196D84 00193CE4  90 0A 00 BC */	stw r0, 0xbc(r10)
/* 80196D88 00193CE8  91 0A 00 C0 */	stw r8, 0xc0(r10)
/* 80196D8C 00193CEC  90 EA 00 C4 */	stw r7, 0xc4(r10)
/* 80196D90 00193CF0  90 CA 00 C8 */	stw r6, 0xc8(r10)
/* 80196D94 00193CF4  90 AA 00 CC */	stw r5, 0xcc(r10)
/* 80196D98 00193CF8  90 8A 00 D0 */	stw r4, 0xd0(r10)
/* 80196D9C 00193CFC  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80196DA0 00193D00  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 80196DA4 00193D04  91 01 00 0C */	stw r8, 0xc(r1)
/* 80196DA8 00193D08  90 E1 00 10 */	stw r7, 0x10(r1)
/* 80196DAC 00193D0C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80196DB0 00193D10  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80196DB4 00193D14  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80196DB8 00193D18  91 01 00 24 */	stw r8, 0x24(r1)
/* 80196DBC 00193D1C  90 E1 00 28 */	stw r7, 0x28(r1)
/* 80196DC0 00193D20  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 80196DC4 00193D24  90 A1 00 30 */	stw r5, 0x30(r1)
/* 80196DC8 00193D28  90 81 00 34 */	stw r4, 0x34(r1)
/* 80196DCC 00193D2C  D0 63 00 34 */	stfs f3, 0x34(r3)
/* 80196DD0 00193D30  38 21 00 40 */	addi r1, r1, 0x40
/* 80196DD4 00193D34  4E 80 00 20 */	blr

.global Update__23CHudDecoInterfaceCombatFfRC13CStateManager
Update__23CHudDecoInterfaceCombatFfRC13CStateManager:
/* 80196DD8 00193D38  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80196DDC 00193D3C  7C 08 02 A6 */	mflr r0
/* 80196DE0 00193D40  90 01 00 54 */	stw r0, 0x54(r1)
/* 80196DE4 00193D44  38 A1 00 08 */	addi r5, r1, 8
/* 80196DE8 00193D48  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80196DEC 00193D4C  7C 7F 1B 78 */	mr r31, r3
/* 80196DF0 00193D50  38 61 00 14 */	addi r3, r1, 0x14
/* 80196DF4 00193D54  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80196DF8 00193D58  38 9F 00 04 */	addi r4, r31, 4
/* 80196DFC 00193D5C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80196E00 00193D60  38 DF 00 2C */	addi r6, r31, 0x2c
/* 80196E04 00193D64  C0 7F 00 1C */	lfs f3, 0x1c(r31)
/* 80196E08 00193D68  EC 81 00 2A */	fadds f4, f1, f0
/* 80196E0C 00193D6C  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80196E10 00193D70  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80196E14 00193D74  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80196E18 00193D78  EC 43 10 2A */	fadds f2, f3, f2
/* 80196E1C 00193D7C  EC 01 00 2A */	fadds f0, f1, f0
/* 80196E20 00193D80  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 80196E24 00193D84  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80196E28 00193D88  D0 01 00 08 */	stfs f0, 8(r1)
/* 80196E2C 00193D8C  4B ED 67 75 */	bl BuildFinalCameraTransform__9CSamusHudFRC11CQuaternionRC9CVector3fRC9CVector3f
/* 80196E30 00193D90  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 80196E34 00193D94  38 81 00 14 */	addi r4, r1, 0x14
/* 80196E38 00193D98  48 12 D9 01 */	bl SetO2WTransform__10CGuiObjectFRC12CTransform4f
/* 80196E3C 00193D9C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80196E40 00193DA0  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80196E44 00193DA4  7C 08 03 A6 */	mtlr r0
/* 80196E48 00193DA8  38 21 00 50 */	addi r1, r1, 0x50
/* 80196E4C 00193DAC  4E 80 00 20 */	blr

.global SetFrameColorValue__23CHudDecoInterfaceCombatFf
SetFrameColorValue__23CHudDecoInterfaceCombatFf:
/* 80196E50 00193DB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80196E54 00193DB4  7C 08 02 A6 */	mflr r0
/* 80196E58 00193DB8  C0 02 A6 6C */	lfs f0, lbl_805AC38C@sda21(r2)
/* 80196E5C 00193DBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80196E60 00193DC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80196E64 00193DC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80196E68 00193DC8  7C 7F 1B 78 */	mr r31, r3
/* 80196E6C 00193DCC  40 81 00 0C */	ble lbl_80196E78
/* 80196E70 00193DD0  48 1B 31 3D */	bl White__6CColorFv
/* 80196E74 00193DD4  48 00 00 0C */	b lbl_80196E80
lbl_80196E78:
/* 80196E78 00193DD8  80 6D A1 3C */	lwz r3, gpTweakGuiColors@sda21(r13)
/* 80196E7C 00193DDC  38 63 00 1C */	addi r3, r3, 0x1c
lbl_80196E80:
/* 80196E80 00193DE0  80 03 00 00 */	lwz r0, 0(r3)
/* 80196E84 00193DE4  38 81 00 08 */	addi r4, r1, 8
/* 80196E88 00193DE8  90 01 00 08 */	stw r0, 8(r1)
/* 80196E8C 00193DEC  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 80196E90 00193DF0  48 13 39 DD */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80196E94 00193DF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80196E98 00193DF8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80196E9C 00193DFC  7C 08 03 A6 */	mtlr r0
/* 80196EA0 00193E00  38 21 00 20 */	addi r1, r1, 0x20
/* 80196EA4 00193E04  4E 80 00 20 */	blr

.global SetDamageTransform__23CHudDecoInterfaceCombatFRC9CMatrix3fRC9CVector3f
SetDamageTransform__23CHudDecoInterfaceCombatFRC9CMatrix3fRC9CVector3f:
/* 80196EA8 00193E08  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80196EAC 00193E0C  7C 08 02 A6 */	mflr r0
/* 80196EB0 00193E10  90 01 00 74 */	stw r0, 0x74(r1)
/* 80196EB4 00193E14  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80196EB8 00193E18  7C 7F 1B 78 */	mr r31, r3
/* 80196EBC 00193E1C  C0 23 00 3C */	lfs f1, 0x3c(r3)
/* 80196EC0 00193E20  38 61 00 14 */	addi r3, r1, 0x14
/* 80196EC4 00193E24  C0 05 00 04 */	lfs f0, 4(r5)
/* 80196EC8 00193E28  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 80196ECC 00193E2C  EC 81 00 2A */	fadds f4, f1, f0
/* 80196ED0 00193E30  C0 45 00 08 */	lfs f2, 8(r5)
/* 80196ED4 00193E34  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80196ED8 00193E38  C0 05 00 00 */	lfs f0, 0(r5)
/* 80196EDC 00193E3C  EC 43 10 2A */	fadds f2, f3, f2
/* 80196EE0 00193E40  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 80196EE4 00193E44  EC 01 00 2A */	fadds f0, f1, f0
/* 80196EE8 00193E48  38 BF 00 44 */	addi r5, r31, 0x44
/* 80196EEC 00193E4C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80196EF0 00193E50  D0 01 00 08 */	stfs f0, 8(r1)
/* 80196EF4 00193E54  48 17 92 3D */	bl __ml__9CMatrix3fCFRC9CMatrix3f
/* 80196EF8 00193E58  38 61 00 38 */	addi r3, r1, 0x38
/* 80196EFC 00193E5C  38 81 00 14 */	addi r4, r1, 0x14
/* 80196F00 00193E60  38 A1 00 08 */	addi r5, r1, 8
/* 80196F04 00193E64  48 17 C3 75 */	bl __ct__12CTransform4fFRC9CMatrix3fRC9CVector3f
/* 80196F08 00193E68  83 FF 00 7C */	lwz r31, 0x7c(r31)
/* 80196F0C 00193E6C  38 81 00 38 */	addi r4, r1, 0x38
/* 80196F10 00193E70  38 7F 00 04 */	addi r3, r31, 4
/* 80196F14 00193E74  48 17 BC 2D */	bl __as__12CTransform4fFRC12CTransform4f
/* 80196F18 00193E78  7F E3 FB 78 */	mr r3, r31
/* 80196F1C 00193E7C  48 12 D8 CD */	bl RecalculateTransforms__10CGuiObjectFv
/* 80196F20 00193E80  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80196F24 00193E84  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80196F28 00193E88  7C 08 03 A6 */	mtlr r0
/* 80196F2C 00193E8C  38 21 00 70 */	addi r1, r1, 0x70
/* 80196F30 00193E90  4E 80 00 20 */	blr

.global SetHudOffset__23CHudDecoInterfaceCombatFRC9CVector3f
SetHudOffset__23CHudDecoInterfaceCombatFRC9CVector3f:
/* 80196F34 00193E94  C0 04 00 00 */	lfs f0, 0(r4)
/* 80196F38 00193E98  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80196F3C 00193E9C  C0 04 00 04 */	lfs f0, 4(r4)
/* 80196F40 00193EA0  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 80196F44 00193EA4  C0 04 00 08 */	lfs f0, 8(r4)
/* 80196F48 00193EA8  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80196F4C 00193EAC  4E 80 00 20 */	blr

.global SetHudRotation__23CHudDecoInterfaceCombatFRC11CQuaternion
SetHudRotation__23CHudDecoInterfaceCombatFRC11CQuaternion:
/* 80196F50 00193EB0  C0 04 00 00 */	lfs f0, 0(r4)
/* 80196F54 00193EB4  D0 03 00 04 */	stfs f0, 4(r3)
/* 80196F58 00193EB8  80 A4 00 04 */	lwz r5, 4(r4)
/* 80196F5C 00193EBC  80 04 00 08 */	lwz r0, 8(r4)
/* 80196F60 00193EC0  90 A3 00 08 */	stw r5, 8(r3)
/* 80196F64 00193EC4  90 03 00 0C */	stw r0, 0xc(r3)
/* 80196F68 00193EC8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80196F6C 00193ECC  90 03 00 10 */	stw r0, 0x10(r3)
/* 80196F70 00193ED0  4E 80 00 20 */	blr

.global UpdateVisibility__23CHudDecoInterfaceCombatFv
UpdateVisibility__23CHudDecoInterfaceCombatFv:
/* 80196F74 00193ED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80196F78 00193ED8  7C 08 02 A6 */	mflr r0
/* 80196F7C 00193EDC  38 A0 00 00 */	li r5, 0
/* 80196F80 00193EE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80196F84 00193EE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80196F88 00193EE8  93 C1 00 08 */	stw r30, 8(r1)
/* 80196F8C 00193EEC  7C 7E 1B 78 */	mr r30, r3
/* 80196F90 00193EF0  88 83 00 68 */	lbz r4, 0x68(r3)
/* 80196F94 00193EF4  80 63 00 74 */	lwz r3, 0x74(r3)
/* 80196F98 00193EF8  54 80 CF FF */	rlwinm. r0, r4, 0x19, 0x1f, 0x1f
/* 80196F9C 00193EFC  41 82 00 10 */	beq lbl_80196FAC
/* 80196FA0 00193F00  54 80 D7 FF */	rlwinm. r0, r4, 0x1a, 0x1f, 0x1f
/* 80196FA4 00193F04  41 82 00 08 */	beq lbl_80196FAC
/* 80196FA8 00193F08  38 A0 00 01 */	li r5, 1
lbl_80196FAC:
/* 80196FAC 00193F0C  54 BF 06 3E */	clrlwi r31, r5, 0x18
/* 80196FB0 00193F10  38 A0 00 01 */	li r5, 1
/* 80196FB4 00193F14  7F E4 FB 78 */	mr r4, r31
/* 80196FB8 00193F18  48 13 37 31 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 80196FBC 00193F1C  80 7E 00 78 */	lwz r3, 0x78(r30)
/* 80196FC0 00193F20  7F E4 FB 78 */	mr r4, r31
/* 80196FC4 00193F24  38 A0 00 01 */	li r5, 1
/* 80196FC8 00193F28  48 13 37 21 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 80196FCC 00193F2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80196FD0 00193F30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80196FD4 00193F34  83 C1 00 08 */	lwz r30, 8(r1)
/* 80196FD8 00193F38  7C 08 03 A6 */	mtlr r0
/* 80196FDC 00193F3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80196FE0 00193F40  4E 80 00 20 */	blr

.global UpdateHudAlpha__23CHudDecoInterfaceCombatFv
UpdateHudAlpha__23CHudDecoInterfaceCombatFv:
/* 80196FE4 00193F44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80196FE8 00193F48  7C 08 02 A6 */	mflr r0
/* 80196FEC 00193F4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80196FF0 00193F50  38 00 00 FF */	li r0, 0xff
/* 80196FF4 00193F54  38 81 00 08 */	addi r4, r1, 8
/* 80196FF8 00193F58  80 AD A0 80 */	lwz r5, gpGameState@sda21(r13)
/* 80196FFC 00193F5C  80 A5 01 DC */	lwz r5, 0x1dc(r5)
/* 80197000 00193F60  98 01 00 08 */	stb r0, 8(r1)
/* 80197004 00193F64  98 01 00 09 */	stb r0, 9(r1)
/* 80197008 00193F68  98 01 00 0A */	stb r0, 0xa(r1)
/* 8019700C 00193F6C  98 A1 00 0B */	stb r5, 0xb(r1)
/* 80197010 00193F70  80 63 00 70 */	lwz r3, 0x70(r3)
/* 80197014 00193F74  48 13 38 59 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80197018 00193F78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019701C 00193F7C  7C 08 03 A6 */	mtlr r0
/* 80197020 00193F80  38 21 00 10 */	addi r1, r1, 0x10
/* 80197024 00193F84  4E 80 00 20 */	blr

.global SetIsVisibleGame__23CHudDecoInterfaceCombatFb
SetIsVisibleGame__23CHudDecoInterfaceCombatFb:
/* 80197028 00193F88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019702C 00193F8C  7C 08 02 A6 */	mflr r0
/* 80197030 00193F90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80197034 00193F94  88 03 00 68 */	lbz r0, 0x68(r3)
/* 80197038 00193F98  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 8019703C 00193F9C  98 03 00 68 */	stb r0, 0x68(r3)
/* 80197040 00193FA0  4B FF FF 35 */	bl UpdateVisibility__23CHudDecoInterfaceCombatFv
/* 80197044 00193FA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80197048 00193FA8  7C 08 03 A6 */	mtlr r0
/* 8019704C 00193FAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80197050 00193FB0  4E 80 00 20 */	blr

.global SetIsVisibleDebug__23CHudDecoInterfaceCombatFb
SetIsVisibleDebug__23CHudDecoInterfaceCombatFb:
/* 80197054 00193FB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80197058 00193FB8  7C 08 02 A6 */	mflr r0
/* 8019705C 00193FBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80197060 00193FC0  88 03 00 68 */	lbz r0, 0x68(r3)
/* 80197064 00193FC4  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80197068 00193FC8  98 03 00 68 */	stb r0, 0x68(r3)
/* 8019706C 00193FCC  4B FF FF 09 */	bl UpdateVisibility__23CHudDecoInterfaceCombatFv
/* 80197070 00193FD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80197074 00193FD4  7C 08 03 A6 */	mtlr r0
/* 80197078 00193FD8  38 21 00 10 */	addi r1, r1, 0x10
/* 8019707C 00193FDC  4E 80 00 20 */	blr

.global __ct__23CHudDecoInterfaceCombatFR9CGuiFrame
__ct__23CHudDecoInterfaceCombatFR9CGuiFrame:
/* 80197080 00193FE0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80197084 00193FE4  7C 08 02 A6 */	mflr r0
/* 80197088 00193FE8  3C A0 80 3E */	lis r5, lbl_803DA2A4@ha
/* 8019708C 00193FEC  3C E0 80 3D */	lis r7, lbl_803D0F10@ha
/* 80197090 00193FF0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80197094 00193FF4  38 05 A2 A4 */	addi r0, r5, lbl_803DA2A4@l
/* 80197098 00193FF8  3C A0 80 5A */	lis r5, sZeroVector__9CVector3f@ha
/* 8019709C 00193FFC  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801970A0 00194000  7C 7F 1B 78 */	mr r31, r3
/* 801970A4 00194004  3C 60 80 3E */	lis r3, lbl_803E4594@ha
/* 801970A8 00194008  93 C1 00 48 */	stw r30, 0x48(r1)
/* 801970AC 0019400C  3B C7 0F 10 */	addi r30, r7, lbl_803D0F10@l
/* 801970B0 00194010  93 A1 00 44 */	stw r29, 0x44(r1)
/* 801970B4 00194014  7C 9D 23 78 */	mr r29, r4
/* 801970B8 00194018  90 1F 00 00 */	stw r0, 0(r31)
/* 801970BC 0019401C  38 03 45 94 */	addi r0, r3, lbl_803E4594@l
/* 801970C0 00194020  3C 60 80 5A */	lis r3, sNoRotation__11CQuaternion@ha
/* 801970C4 00194024  90 1F 00 00 */	stw r0, 0(r31)
/* 801970C8 00194028  38 C3 66 60 */	addi r6, r3, sNoRotation__11CQuaternion@l
/* 801970CC 0019402C  3C 60 80 5A */	lis r3, lbl_805A65FC@ha
/* 801970D0 00194030  C0 06 00 00 */	lfs f0, 0(r6)
/* 801970D4 00194034  38 03 65 FC */	addi r0, r3, lbl_805A65FC@l
/* 801970D8 00194038  7C 04 03 78 */	mr r4, r0
/* 801970DC 0019403C  38 7F 00 44 */	addi r3, r31, 0x44
/* 801970E0 00194040  D0 1F 00 04 */	stfs f0, 4(r31)
/* 801970E4 00194044  C0 06 00 04 */	lfs f0, 4(r6)
/* 801970E8 00194048  D0 1F 00 08 */	stfs f0, 8(r31)
/* 801970EC 0019404C  C0 06 00 08 */	lfs f0, 8(r6)
/* 801970F0 00194050  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 801970F4 00194054  C0 06 00 0C */	lfs f0, 0xc(r6)
/* 801970F8 00194058  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 801970FC 0019405C  C4 05 66 A0 */	lfsu f0, sZeroVector__9CVector3f@l(r5)
/* 80197100 00194060  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 80197104 00194064  C0 05 00 04 */	lfs f0, 4(r5)
/* 80197108 00194068  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 8019710C 0019406C  C0 05 00 08 */	lfs f0, 8(r5)
/* 80197110 00194070  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 80197114 00194074  C0 05 00 00 */	lfs f0, 0(r5)
/* 80197118 00194078  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8019711C 0019407C  C0 05 00 04 */	lfs f0, 4(r5)
/* 80197120 00194080  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 80197124 00194084  C0 05 00 08 */	lfs f0, 8(r5)
/* 80197128 00194088  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8019712C 0019408C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80197130 00194090  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 80197134 00194094  C0 05 00 04 */	lfs f0, 4(r5)
/* 80197138 00194098  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8019713C 0019409C  C0 05 00 08 */	lfs f0, 8(r5)
/* 80197140 001940A0  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 80197144 001940A4  C0 05 00 00 */	lfs f0, 0(r5)
/* 80197148 001940A8  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 8019714C 001940AC  C0 05 00 04 */	lfs f0, 4(r5)
/* 80197150 001940B0  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 80197154 001940B4  C0 05 00 08 */	lfs f0, 8(r5)
/* 80197158 001940B8  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 8019715C 001940BC  48 17 8E C9 */	bl __ct__9CMatrix3fFRC9CMatrix3f
/* 80197160 001940C0  88 1F 00 68 */	lbz r0, 0x68(r31)
/* 80197164 001940C4  38 80 00 01 */	li r4, 1
/* 80197168 001940C8  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 8019716C 001940CC  38 61 00 08 */	addi r3, r1, 8
/* 80197170 001940D0  98 1F 00 68 */	stb r0, 0x68(r31)
/* 80197174 001940D4  88 1F 00 68 */	lbz r0, 0x68(r31)
/* 80197178 001940D8  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 8019717C 001940DC  98 1F 00 68 */	stb r0, 0x68(r31)
/* 80197180 001940E0  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 80197184 001940E4  90 1F 00 6C */	stw r0, 0x6c(r31)
/* 80197188 001940E8  80 9F 00 6C */	lwz r4, 0x6c(r31)
/* 8019718C 001940EC  48 12 E0 91 */	bl GetLocalPosition__10CGuiObjectCFv
/* 80197190 001940F0  C0 01 00 08 */	lfs f0, 8(r1)
/* 80197194 001940F4  7F A3 EB 78 */	mr r3, r29
/* 80197198 001940F8  38 9E 00 28 */	addi r4, r30, 0x28
/* 8019719C 001940FC  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 801971A0 00194100  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801971A4 00194104  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 801971A8 00194108  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801971AC 0019410C  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 801971B0 00194110  48 12 AF A5 */	bl FindWidget__9CGuiFrameCFPCc
/* 801971B4 00194114  90 7F 00 70 */	stw r3, 0x70(r31)
/* 801971B8 00194118  7F A3 EB 78 */	mr r3, r29
/* 801971BC 0019411C  38 9E 00 00 */	addi r4, r30, 0
/* 801971C0 00194120  48 12 AF 95 */	bl FindWidget__9CGuiFrameCFPCc
/* 801971C4 00194124  90 7F 00 74 */	stw r3, 0x74(r31)
/* 801971C8 00194128  7F A3 EB 78 */	mr r3, r29
/* 801971CC 0019412C  38 9E 00 10 */	addi r4, r30, 0x10
/* 801971D0 00194130  48 12 AF 85 */	bl FindWidget__9CGuiFrameCFPCc
/* 801971D4 00194134  90 7F 00 78 */	stw r3, 0x78(r31)
/* 801971D8 00194138  7F A3 EB 78 */	mr r3, r29
/* 801971DC 0019413C  38 9E 00 3C */	addi r4, r30, 0x3c
/* 801971E0 00194140  48 12 AF 75 */	bl FindWidget__9CGuiFrameCFPCc
/* 801971E4 00194144  90 7F 00 7C */	stw r3, 0x7c(r31)
/* 801971E8 00194148  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 801971EC 0019414C  C0 43 00 A0 */	lfs f2, 0xa0(r3)
/* 801971F0 00194150  C0 23 00 90 */	lfs f1, 0x90(r3)
/* 801971F4 00194154  C0 03 00 80 */	lfs f0, 0x80(r3)
/* 801971F8 00194158  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 801971FC 0019415C  D0 3F 00 18 */	stfs f1, 0x18(r31)
/* 80197200 00194160  D0 5F 00 1C */	stfs f2, 0x1c(r31)
/* 80197204 00194164  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 80197208 00194168  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 8019720C 0019416C  38 84 00 88 */	addi r4, r4, 0x88
/* 80197210 00194170  48 13 36 5D */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80197214 00194174  80 9F 00 7C */	lwz r4, 0x7c(r31)
/* 80197218 00194178  38 61 00 14 */	addi r3, r1, 0x14
/* 8019721C 0019417C  C0 44 00 30 */	lfs f2, 0x30(r4)
/* 80197220 00194180  C0 24 00 20 */	lfs f1, 0x20(r4)
/* 80197224 00194184  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80197228 00194188  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 8019722C 0019418C  D0 3F 00 3C */	stfs f1, 0x3c(r31)
/* 80197230 00194190  D0 5F 00 40 */	stfs f2, 0x40(r31)
/* 80197234 00194194  80 9F 00 7C */	lwz r4, 0x7c(r31)
/* 80197238 00194198  38 84 00 04 */	addi r4, r4, 4
/* 8019723C 0019419C  48 17 BE B9 */	bl BuildMatrix3f__12CTransform4fCFv
/* 80197240 001941A0  38 7F 00 44 */	addi r3, r31, 0x44
/* 80197244 001941A4  38 81 00 14 */	addi r4, r1, 0x14
/* 80197248 001941A8  48 17 8D B1 */	bl __as__9CMatrix3fFRC9CMatrix3f
/* 8019724C 001941AC  7F E3 FB 78 */	mr r3, r31
/* 80197250 001941B0  81 9F 00 00 */	lwz r12, 0(r31)
/* 80197254 001941B4  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80197258 001941B8  7D 89 03 A6 */	mtctr r12
/* 8019725C 001941BC  4E 80 04 21 */	bctrl
/* 80197260 001941C0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80197264 001941C4  7F E3 FB 78 */	mr r3, r31
/* 80197268 001941C8  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8019726C 001941CC  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80197270 001941D0  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 80197274 001941D4  7C 08 03 A6 */	mtlr r0
/* 80197278 001941D8  38 21 00 50 */	addi r1, r1, 0x50
/* 8019727C 001941DC  4E 80 00 20 */	blr

.global __dt__21CHudDecoInterfaceScanFv
__dt__21CHudDecoInterfaceScanFv:
/* 80197280 001941E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80197284 001941E4  7C 08 02 A6 */	mflr r0
/* 80197288 001941E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019728C 001941EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80197290 001941F0  7C 9F 23 78 */	mr r31, r4
/* 80197294 001941F4  93 C1 00 08 */	stw r30, 8(r1)
/* 80197298 001941F8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8019729C 001941FC  41 82 00 5C */	beq lbl_801972F8
/* 801972A0 00194200  3C 80 80 3E */	lis r4, lbl_803E450C@ha
/* 801972A4 00194204  38 7E 00 18 */	addi r3, r30, 0x18
/* 801972A8 00194208  38 04 45 0C */	addi r0, r4, lbl_803E450C@l
/* 801972AC 0019420C  38 80 FF FF */	li r4, -1
/* 801972B0 00194210  90 1E 00 00 */	stw r0, 0(r30)
/* 801972B4 00194214  4B FF F2 49 */	bl __dt__12CScanDisplayFv
/* 801972B8 00194218  34 1E 00 04 */	addic. r0, r30, 4
/* 801972BC 0019421C  41 82 00 18 */	beq lbl_801972D4
/* 801972C0 00194220  34 1E 00 04 */	addic. r0, r30, 4
/* 801972C4 00194224  41 82 00 10 */	beq lbl_801972D4
/* 801972C8 00194228  38 7E 00 04 */	addi r3, r30, 4
/* 801972CC 0019422C  38 80 00 00 */	li r4, 0
/* 801972D0 00194230  48 1A 9B 71 */	bl __dt__6CTokenFv
lbl_801972D4:
/* 801972D4 00194234  28 1E 00 00 */	cmplwi r30, 0
/* 801972D8 00194238  41 82 00 10 */	beq lbl_801972E8
/* 801972DC 0019423C  3C 60 80 3E */	lis r3, lbl_803DA2A4@ha
/* 801972E0 00194240  38 03 A2 A4 */	addi r0, r3, lbl_803DA2A4@l
/* 801972E4 00194244  90 1E 00 00 */	stw r0, 0(r30)
lbl_801972E8:
/* 801972E8 00194248  7F E0 07 35 */	extsh. r0, r31
/* 801972EC 0019424C  40 81 00 0C */	ble lbl_801972F8
/* 801972F0 00194250  7F C3 F3 78 */	mr r3, r30
/* 801972F4 00194254  48 17 E6 3D */	bl Free__7CMemoryFPCv
lbl_801972F8:
/* 801972F8 00194258  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801972FC 0019425C  7F C3 F3 78 */	mr r3, r30
/* 80197300 00194260  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80197304 00194264  83 C1 00 08 */	lwz r30, 8(r1)
/* 80197308 00194268  7C 08 03 A6 */	mtlr r0
/* 8019730C 0019426C  38 21 00 10 */	addi r1, r1, 0x10
/* 80197310 00194270  4E 80 00 20 */	blr

.global __dt__21CHudDecoInterfaceXrayFv
__dt__21CHudDecoInterfaceXrayFv:
/* 80197314 00194274  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80197318 00194278  7C 08 02 A6 */	mflr r0
/* 8019731C 0019427C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80197320 00194280  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80197324 00194284  7C 7F 1B 79 */	or. r31, r3, r3
/* 80197328 00194288  41 82 00 30 */	beq lbl_80197358
/* 8019732C 0019428C  3C 60 80 3E */	lis r3, lbl_803E4550@ha
/* 80197330 00194290  38 03 45 50 */	addi r0, r3, lbl_803E4550@l
/* 80197334 00194294  90 1F 00 00 */	stw r0, 0(r31)
/* 80197338 00194298  41 82 00 10 */	beq lbl_80197348
/* 8019733C 0019429C  3C 60 80 3E */	lis r3, lbl_803DA2A4@ha
/* 80197340 001942A0  38 03 A2 A4 */	addi r0, r3, lbl_803DA2A4@l
/* 80197344 001942A4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80197348:
/* 80197348 001942A8  7C 80 07 35 */	extsh. r0, r4
/* 8019734C 001942AC  40 81 00 0C */	ble lbl_80197358
/* 80197350 001942B0  7F E3 FB 78 */	mr r3, r31
/* 80197354 001942B4  48 17 E5 DD */	bl Free__7CMemoryFPCv
lbl_80197358:
/* 80197358 001942B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019735C 001942BC  7F E3 FB 78 */	mr r3, r31
/* 80197360 001942C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80197364 001942C4  7C 08 03 A6 */	mtlr r0
/* 80197368 001942C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8019736C 001942CC  4E 80 00 20 */	blr

.global __dt__23CHudDecoInterfaceCombatFv
__dt__23CHudDecoInterfaceCombatFv:
/* 80197370 001942D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80197374 001942D4  7C 08 02 A6 */	mflr r0
/* 80197378 001942D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019737C 001942DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80197380 001942E0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80197384 001942E4  41 82 00 30 */	beq lbl_801973B4
/* 80197388 001942E8  3C 60 80 3E */	lis r3, lbl_803E4594@ha
/* 8019738C 001942EC  38 03 45 94 */	addi r0, r3, lbl_803E4594@l
/* 80197390 001942F0  90 1F 00 00 */	stw r0, 0(r31)
/* 80197394 001942F4  41 82 00 10 */	beq lbl_801973A4
/* 80197398 001942F8  3C 60 80 3E */	lis r3, lbl_803DA2A4@ha
/* 8019739C 001942FC  38 03 A2 A4 */	addi r0, r3, lbl_803DA2A4@l
/* 801973A0 00194300  90 1F 00 00 */	stw r0, 0(r31)
lbl_801973A4:
/* 801973A4 00194304  7C 80 07 35 */	extsh. r0, r4
/* 801973A8 00194308  40 81 00 0C */	ble lbl_801973B4
/* 801973AC 0019430C  7F E3 FB 78 */	mr r3, r31
/* 801973B0 00194310  48 17 E5 81 */	bl Free__7CMemoryFPCv
lbl_801973B4:
/* 801973B4 00194314  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801973B8 00194318  7F E3 FB 78 */	mr r3, r31
/* 801973BC 0019431C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801973C0 00194320  7C 08 03 A6 */	mtlr r0
/* 801973C4 00194324  38 21 00 10 */	addi r1, r1, 0x10
/* 801973C8 00194328  4E 80 00 20 */	blr

.global sub_801973cc
sub_801973cc:
/* 801973CC 0019432C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801973D0 00194330  7C 08 02 A6 */	mflr r0
/* 801973D4 00194334  90 01 00 34 */	stw r0, 0x34(r1)
/* 801973D8 00194338  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 801973DC 0019433C  7C 9F 23 78 */	mr r31, r4
/* 801973E0 00194340  7C 7E 1B 78 */	mr r30, r3
/* 801973E4 00194344  80 03 00 08 */	lwz r0, 8(r3)
/* 801973E8 00194348  7C 1F 00 00 */	cmpw r31, r0
/* 801973EC 0019434C  40 81 00 BC */	ble lbl_801974A8
/* 801973F0 00194350  1C 7F 00 34 */	mulli r3, r31, 0x34
/* 801973F4 00194354  2C 03 00 00 */	cmpwi r3, 0
/* 801973F8 00194358  40 82 00 0C */	bne lbl_80197404
/* 801973FC 0019435C  3B 80 00 00 */	li r28, 0
/* 80197400 00194360  48 00 00 1C */	b lbl_8019741C
lbl_80197404:
/* 80197404 00194364  3C 80 80 3D */	lis r4, lbl_803D10E4@ha
/* 80197408 00194368  38 A0 00 00 */	li r5, 0
/* 8019740C 0019436C  38 84 10 E4 */	addi r4, r4, lbl_803D10E4@l
/* 80197410 00194370  38 84 01 20 */	addi r4, r4, 0x120
/* 80197414 00194374  48 17 E4 05 */	bl __nwa__FUlPCcPCc
/* 80197418 00194378  7C 7C 1B 78 */	mr r28, r3
lbl_8019741C:
/* 8019741C 0019437C  80 1E 00 04 */	lwz r0, 4(r30)
/* 80197420 00194380  7F 9B E3 78 */	mr r27, r28
/* 80197424 00194384  83 5E 00 0C */	lwz r26, 0xc(r30)
/* 80197428 00194388  1C 00 00 34 */	mulli r0, r0, 0x34
/* 8019742C 0019438C  93 41 00 10 */	stw r26, 0x10(r1)
/* 80197430 00194390  7F BA 02 14 */	add r29, r26, r0
/* 80197434 00194394  93 41 00 14 */	stw r26, 0x14(r1)
/* 80197438 00194398  93 A1 00 08 */	stw r29, 8(r1)
/* 8019743C 0019439C  93 A1 00 0C */	stw r29, 0xc(r1)
/* 80197440 001943A0  48 00 00 28 */	b lbl_80197468
lbl_80197444:
/* 80197444 001943A4  28 1B 00 00 */	cmplwi r27, 0
/* 80197448 001943A8  41 82 00 18 */	beq lbl_80197460
/* 8019744C 001943AC  80 1A 00 00 */	lwz r0, 0(r26)
/* 80197450 001943B0  38 7B 00 04 */	addi r3, r27, 4
/* 80197454 001943B4  38 9A 00 04 */	addi r4, r26, 4
/* 80197458 001943B8  90 1B 00 00 */	stw r0, 0(r27)
/* 8019745C 001943BC  48 17 B7 19 */	bl __ct__12CTransform4fFRC12CTransform4f
lbl_80197460:
/* 80197460 001943C0  3B 7B 00 34 */	addi r27, r27, 0x34
/* 80197464 001943C4  3B 5A 00 34 */	addi r26, r26, 0x34
lbl_80197468:
/* 80197468 001943C8  7C 1A E8 40 */	cmplw r26, r29
/* 8019746C 001943CC  40 82 FF D8 */	bne lbl_80197444
/* 80197470 001943D0  80 1E 00 04 */	lwz r0, 4(r30)
/* 80197474 001943D4  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80197478 001943D8  1C 00 00 34 */	mulli r0, r0, 0x34
/* 8019747C 001943DC  7C 64 1B 78 */	mr r4, r3
/* 80197480 001943E0  7C 03 02 14 */	add r0, r3, r0
/* 80197484 001943E4  48 00 00 08 */	b lbl_8019748C
lbl_80197488:
/* 80197488 001943E8  38 84 00 34 */	addi r4, r4, 0x34
lbl_8019748C:
/* 8019748C 001943EC  7C 04 00 40 */	cmplw r4, r0
/* 80197490 001943F0  40 82 FF F8 */	bne lbl_80197488
/* 80197494 001943F4  28 03 00 00 */	cmplwi r3, 0
/* 80197498 001943F8  41 82 00 08 */	beq lbl_801974A0
/* 8019749C 001943FC  48 17 E4 95 */	bl Free__7CMemoryFPCv
lbl_801974A0:
/* 801974A0 00194400  93 9E 00 0C */	stw r28, 0xc(r30)
/* 801974A4 00194404  93 FE 00 08 */	stw r31, 8(r30)
lbl_801974A8:
/* 801974A8 00194408  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 801974AC 0019440C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801974B0 00194410  7C 08 03 A6 */	mtlr r0
/* 801974B4 00194414  38 21 00 30 */	addi r1, r1, 0x30
/* 801974B8 00194418  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805AC1B8
lbl_805AC1B8:
	# ROM: 0x3F8A58
	.4byte 0

.global lbl_805AC1BC
lbl_805AC1BC:
	# ROM: 0x3F8A5C
	.float 255.0

.global lbl_805AC1C0
lbl_805AC1C0:
	# ROM: 0x3F8A60
	.4byte 0x447A0000

.global lbl_805AC1C4
lbl_805AC1C4:
	# ROM: 0x3F8A64
	.float 0.001

.global lbl_805AC1C8
lbl_805AC1C8:
	# ROM: 0x3F8A68
	.float 1.0

.global lbl_805AC1CC
lbl_805AC1CC:
	# ROM: 0x3F8A6C
	.float 0.2

.global lbl_805AC1D0
lbl_805AC1D0:
	# ROM: 0x3F8A70
	.float 2.0

.global lbl_805AC1D4
lbl_805AC1D4:
	# ROM: 0x3F8A74
	.4byte 0x3F4CCCCD

.global lbl_805AC1D8
lbl_805AC1D8:
	# ROM: 0x3F8A78
	.float 0.4

.global lbl_805AC1DC
lbl_805AC1DC:
	# ROM: 0x3F8A7C
	.4byte 0x3FE90FDB

.global lbl_805AC1E0
lbl_805AC1E0:
	# ROM: 0x3F8A80
	.4byte 0x3F30A3D7

.global lbl_805AC1E4
lbl_805AC1E4:
	# ROM: 0x3F8A84
	.4byte 0x41166666

.global lbl_805AC1E8
lbl_805AC1E8:
	# ROM: 0x3F8A88
	.4byte 0x41100000

.global lbl_805AC1EC
lbl_805AC1EC:
	# ROM: 0x3F8A8C
	.4byte 0x4102A954

.global lbl_805AC1F0
lbl_805AC1F0:
	# ROM: 0x3F8A90
	.4byte 0x3EDF0091

.global lbl_805AC1F4
lbl_805AC1F4:
	# ROM: 0x3F8A94
	.4byte 0x3FD55326

.global lbl_805AC1F8
lbl_805AC1F8:
	# ROM: 0x3F8A98
	.4byte 0x3DB60AE9

.global lbl_805AC1FC
lbl_805AC1FC:
	# ROM: 0x3F8A9C
	.4byte 0x41140000

.global lbl_805AC200
lbl_805AC200:
	# ROM: 0x3F8AA0
	.4byte 0x40940000

.global lbl_805AC204
lbl_805AC204:
	# ROM: 0x3F8AA4
	.4byte 0xBE22A2A3

.global lbl_805AC208
lbl_805AC208:
	# ROM: 0x3F8AA8
	.4byte 0x3EEF6F6F

.global lbl_805AC20C
lbl_805AC20C:
	# ROM: 0x3F8AAC
	.4byte 0x41880000

.global lbl_805AC210
lbl_805AC210:
	# ROM: 0x3F8AB0
	.4byte 0xC1880000
	.4byte 0

.global lbl_805AC218
lbl_805AC218:
	# ROM: 0x3F8AB8
	.float 2.0

.global lbl_805AC21C
lbl_805AC21C:
	# ROM: 0x3F8ABC
	.4byte 0

.global lbl_805AC220
lbl_805AC220:
	# ROM: 0x3F8AC0
	.float 8.0

.global lbl_805AC224
lbl_805AC224:
	# ROM: 0x3F8AC4
	.float 1.0

.global lbl_805AC228
lbl_805AC228:
	# ROM: 0x3F8AC8
	.float 255.0

.global lbl_805AC22C
lbl_805AC22C:
	# ROM: 0x3F8ACC
	.float 0.3

.global lbl_805AC230
lbl_805AC230:
	# ROM: 0x3F8AD0
	.asciz "?333"
	.balign 4

.global lbl_805AC238
lbl_805AC238:
	# ROM: 0x3F8AD8
	.4byte 0

.global lbl_805AC23C
lbl_805AC23C:
	# ROM: 0x3F8ADC
	.float 255.0

.global lbl_805AC240
lbl_805AC240:
	# ROM: 0x3F8AE0
	.4byte 0

.global lbl_805AC244
lbl_805AC244:
	# ROM: 0x3F8AE4
	.4byte 0x40400000

.global lbl_805AC248
lbl_805AC248:
	# ROM: 0x3F8AE8
	.float -1.0

.global lbl_805AC24C
lbl_805AC24C:
	# ROM: 0x3F8AEC
	.float 1.0

.global lbl_805AC250
lbl_805AC250:
	# ROM: 0x3F8AF0
	.float 255.0

.global lbl_805AC254
lbl_805AC254:
	# ROM: 0x3F8AF4
	.float 2.0

.global lbl_805AC258
lbl_805AC258:
	# ROM: 0x3F8AF8
	.4byte 0x3FE00000
	.4byte 0

.global lbl_805AC260
lbl_805AC260:
	# ROM: 0x3F8B00
	.float 0.25

.global lbl_805AC264
lbl_805AC264:
	# ROM: 0x3F8B04
	.float 0.5

.global lbl_805AC268
lbl_805AC268:
	# ROM: 0x3F8B08
	.double 4.503601774854144E15

.global lbl_805AC270
lbl_805AC270:
	# ROM: 0x3F8B10
	.4byte 0x43300000
	.4byte 0

.global lbl_805AC278
lbl_805AC278:
	# ROM: 0x3F8B18
	.4byte 0xB4000000

.global lbl_805AC27C
lbl_805AC27C:
	# ROM: 0x3F8B1C
	.float 0.1

.global lbl_805AC280
lbl_805AC280:
	# ROM: 0x3F8B20
	.float 5.0

.global lbl_805AC284
lbl_805AC284:
	# ROM: 0x3F8B24
	.4byte 0x3F4CCCCD

.global lbl_805AC288
lbl_805AC288:
	# ROM: 0x3F8B28
	.4byte 0x4118CCCD

.global lbl_805AC28C
lbl_805AC28C:
	# ROM: 0x3F8B2C
	.float 0.4

.global lbl_805AC290
lbl_805AC290:
	# ROM: 0x3F8B30
	.4byte 0x3DA3D70A

.global lbl_805AC294
lbl_805AC294:
	# ROM: 0x3F8B34
	.4byte 0xBF000000

.global lbl_805AC298
lbl_805AC298:
	# ROM: 0x3F8B38
	.4byte 0xBDCCCCCD

.global lbl_805AC29C
lbl_805AC29C:
	# ROM: 0x3F8B3C
	.float 0.3

.global lbl_805AC2A0
lbl_805AC2A0:
	# ROM: 0x3F8B40
	.float 4.0

.global lbl_805AC2A4
lbl_805AC2A4:
	# ROM: 0x3F8B44
	.4byte 0

.global lbl_805AC2A8
lbl_805AC2A8:
	# ROM: 0x3F8B48
	.float 1.0
	.4byte 0

.global lbl_805AC2B0
lbl_805AC2B0:
	# ROM: 0x3F8B50
	.4byte 0x43300000
	.4byte 0

.global lbl_805AC2B8
lbl_805AC2B8:
	# ROM: 0x3F8B58
	.4byte 0x3F2AC083

.global lbl_805AC2BC
lbl_805AC2BC:
	# ROM: 0x3F8B5C
	.4byte 0x3E22F983

.global lbl_805AC2C0
lbl_805AC2C0:
	# ROM: 0x3F8B60
	.float 6.2831855

.global lbl_805AC2C4
lbl_805AC2C4:
	# ROM: 0x3F8B64
	.float 0.5

.global lbl_805AC2C8
lbl_805AC2C8:
	# ROM: 0x3F8B68
	.double 4.503601774854144E15

.global lbl_805AC2D0
lbl_805AC2D0:
	# ROM: 0x3F8B70
	.4byte 0

.global lbl_805AC2D4
lbl_805AC2D4:
	# ROM: 0x3F8B74
	.4byte 0xBC23D70A

.global lbl_805AC2D8
lbl_805AC2D8:
	# ROM: 0x3F8B78
	.float 0.01

.global lbl_805AC2DC
lbl_805AC2DC:
	# ROM: 0x3F8B7C
	.float -1.0

.global lbl_805AC2E0
lbl_805AC2E0:
	# ROM: 0x3F8B80
	.4byte 0x3FE00000
	.4byte 0

.global lbl_805AC2E8
lbl_805AC2E8:
	# ROM: 0x3F8B88
	.float 0.25

.global lbl_805AC2EC
lbl_805AC2EC:
	# ROM: 0x3F8B8C
	.float 0.5

.global lbl_805AC2F0
lbl_805AC2F0:
	# ROM: 0x3F8B90
	.float 2.0

.global lbl_805AC2F4
lbl_805AC2F4:
	# ROM: 0x3F8B94
	.float 255.0

.global lbl_805AC2F8
lbl_805AC2F8:
	# ROM: 0x3F8B98
	.4byte 0x43300000
	.4byte 0

.global lbl_805AC300
lbl_805AC300:
	# ROM: 0x3F8BA0
	.float 1.0

.global lbl_805AC304
lbl_805AC304:
	# ROM: 0x3F8BA4
	.float 0.1

.global lbl_805AC308
lbl_805AC308:
	# ROM: 0x3F8BA8
	.float 9999.0

.global lbl_805AC30C
lbl_805AC30C:
	# ROM: 0x3F8BAC
	.4byte 0x3F4CCCCD

.global lbl_805AC310
lbl_805AC310:
	# ROM: 0x3F8BB0
	.4byte 0x4118CCCD

.global lbl_805AC314
lbl_805AC314:
	# ROM: 0x3F8BB4
	.float 0.4

.global lbl_805AC318
lbl_805AC318:
	# ROM: 0x3F8BB8
	.4byte 0x3DA3D70A

.global lbl_805AC31C
lbl_805AC31C:
	# ROM: 0x3F8BBC
	.4byte 0xBE99999A

.global lbl_805AC320
lbl_805AC320:
	# ROM: 0x3F8BC0
	.4byte lbl_803D0E58
	.4byte lbl_803D0E6D

.global lbl_805AC328
lbl_805AC328:
	# ROM: 0x3F8BC8
	.4byte lbl_803D0E81
	.4byte lbl_803D0E94

.global lbl_805AC330
lbl_805AC330:
	# ROM: 0x3F8BD0
	.4byte lbl_803D0EA6
	.4byte lbl_803D0EC0

.global lbl_805AC338
lbl_805AC338:
	# ROM: 0x3F8BD8
	.4byte lbl_803D0ED9

.global lbl_805AC33C
lbl_805AC33C:
	# ROM: 0x3F8BDC
	.4byte lbl_803D0EE5

.global lbl_805AC340
lbl_805AC340:
	# ROM: 0x3F8BE0
	.4byte lbl_803D0EF0

.global lbl_805AC344
lbl_805AC344:
	# ROM: 0x3F8BE4
	.4byte lbl_803D0EF4

.global lbl_805AC348
lbl_805AC348:
	# ROM: 0x3F8BE8
	.4byte lbl_803D0EF9

.global lbl_805AC34C
lbl_805AC34C:
	# ROM: 0x3F8BEC
	.asciz "1032"
	.balign 4

.global lbl_805AC354
lbl_805AC354:
	# ROM: 0x3F8BF4
	.asciz "3210"
	.balign 4

.global lbl_805AC35C
lbl_805AC35C:
	# ROM: 0x3F8BFC
	.4byte 0x05730576

.global lbl_805AC360
lbl_805AC360:
	# ROM: 0x3F8C00
	.float 1.0

.global lbl_805AC364
lbl_805AC364:
	# ROM: 0x3F8C04
	.4byte 0

.global lbl_805AC368
lbl_805AC368:
	# ROM: 0x3F8C08
	.4byte 0x3FB99999
	.4byte 0xA0000000

.global lbl_805AC370
lbl_805AC370:
	# ROM: 0x3F8C10
	.4byte 0x3D4CCCCD

.global lbl_805AC374
lbl_805AC374:
	# ROM: 0x3F8C14
	.float 255.0

.global lbl_805AC378
lbl_805AC378:
	# ROM: 0x3F8C18
	.float 1.1920929E-7

.global lbl_805AC37C
lbl_805AC37C:
	# ROM: 0x3F8C1C
	.float 0.1

.global lbl_805AC380
lbl_805AC380:
	# ROM: 0x3F8C20
	.4byte 0x41800000
	.4byte 0

.global lbl_805AC388
lbl_805AC388:
	# ROM: 0x3F8C28
	.float 1.0

.global lbl_805AC38C
lbl_805AC38C:
	# ROM: 0x3F8C2C
	.4byte 0

.global lbl_805AC390
lbl_805AC390:
	# ROM: 0x3F8C30
	.float 5.0

.global lbl_805AC394
lbl_805AC394:
	# ROM: 0x3F8C34
	.float 15.0

.global lbl_805AC398
lbl_805AC398:
	# ROM: 0x3F8C38
	.float 2.0

.global lbl_805AC39C
lbl_805AC39C:
	# ROM: 0x3F8C3C
	.float 255.0

.global lbl_805AC3A0
lbl_805AC3A0:
	# ROM: 0x3F8C40
	.float 0.5

.global lbl_805AC3A4
lbl_805AC3A4:
	# ROM: 0x3F8C44
	.float 5.0

.global lbl_805AC3A8
lbl_805AC3A8:
	# ROM: 0x3F8C48
	.4byte 0x42200000

.global lbl_805AC3AC
lbl_805AC3AC:
	# ROM: 0x3F8C4C
	.4byte 0x4479C000

.global lbl_805AC3B0
lbl_805AC3B0:
	# ROM: 0x3F8C50
	.float -1.0

.global lbl_805AC3B4
lbl_805AC3B4:
	# ROM: 0x3F8C54
	.float 0.35

.global lbl_805AC3B8
lbl_805AC3B8:
	# ROM: 0x3F8C58
	.4byte 0x40400000
	.4byte 0


.section .rodata
.balign 8
.global lbl_803D0948
lbl_803D0948:
	# ROM: 0x3CD948
	.asciz "basewidget_energystuff"
	.balign 4
	.asciz "textpane_energydigits"
	.balign 4
	.asciz "meter_energytanks"
	.balign 4
	.asciz "textpane_energywarning"
	.balign 4
	.asciz "energybart01_energybar"
	.balign 4
	.asciz "basewidget_energydeco0"
	.balign 4

.global lbl_803D09D4
lbl_803D09D4:
	# ROM: 0x3CD9D4
	.asciz "basewidget_bossenergystuff"
	.balign 4

.global lbl_803D09F0
lbl_803D09F0:
	# ROM: 0x3CD9F0
	.asciz "energybart01_bossbar"
	.balign 4
	.4byte CombatEnergyCoordFunc__19CHudEnergyInterfaceFf
	.4byte CombatEnergyCoordFunc__19CHudEnergyInterfaceFf
	.4byte XRayEnergyCoordFunc__19CHudEnergyInterfaceFf
	.4byte ThermalEnergyCoordFunc__19CHudEnergyInterfaceFf
	.4byte BallEnergyCoordFunc__19CHudEnergyInterfaceFf
	.float 0.2
	.float 0.2
	.float 0.1
	.float 0.2
	.float 1.0

.global lbl_803D0A30
lbl_803D0A30:
	# ROM: 0x3CDA30
	.asciz "textpane_boss"
	.byte 0x25, 0x30
	.4byte 0x32640000
	.4byte 0

.global lbl_803D0A48
lbl_803D0A48:
	# ROM: 0x3CDA48
	.asciz "basewidget_freelook"
	.asciz "model_freelookleft"
	.balign 4
	.asciz "model_freelookright"
	.asciz "basewidget_freelookleft"
	.asciz "model_shieldleft"
	.balign 4
	.asciz "model_freetickaleft"
	.asciz "model_freetickbleft"
	.asciz "textpane_freelookleftdigits"
	.asciz "basewidget_freelookleftdeco0"
	.balign 4
	.asciz "basewidget_freelookright"
	.balign 4
	.asciz "model_shieldright"
	.balign 4
	.asciz "model_freetickaright"
	.balign 4
	.asciz "model_freetickbright"
	.balign 4
	.asciz "textpane_freelookrightdigits"
	.balign 4
	.asciz "basewidget_freelookrightdeco0"
	.balign 4

.global lbl_803D0BB4
lbl_803D0BB4:
	# ROM: 0x3CDBB4
	.asciz "basewidget_outlinesb"
	.byte 0x6D, 0x6F, 0x64
	.asciz "el_shield"
	.balign 4

.global lbl_803D0BD8
lbl_803D0BD8:
	# ROM: 0x3CDBD8
	.asciz "BaseWidget_Pivot"
	.balign 4
	.asciz "BaseWidget_Helmet"
	.balign 4
	.asciz "BaseWidget_Glow"
	.asciz "BaseWidget_HelmetLight"
	.balign 4

.global lbl_803D0C28
lbl_803D0C28:
	# ROM: 0x3CDC28
	.asciz "basewidget_missileicon"
	.balign 4
	.asciz "textpane_missiledigits"
	.balign 4
	.asciz "energybart01_missilebar"
	.asciz "textpane_missilewarning"
	.asciz "model_missilearrowup"
	.balign 4
	.asciz "model_missilearrowdown"
	.balign 4
	.asciz "basewidget_missileicon"
	.balign 4
	.asciz "basewidget_missilestuff"
	.asciz "meter_mistop"
	.balign 4
	.asciz "meter_misbot"
	.balign 4

.global lbl_803D0D08
lbl_803D0D08:
	# ROM: 0x3CDD08
	.4byte 0x40C1999A
	.4byte 0
	.4byte 0
	.4byte 0x41066666
	.4byte 0
	.4byte CombatMissileBarCoordFunc__20CHudMissileInterfaceFf
	.4byte 0
	.4byte XRayMissileBarCoordFunc__20CHudMissileInterfaceFf
	.4byte ThermalMissileBarCoordFunc__20CHudMissileInterfaceFf
	.4byte 0

.global lbl_803D0D30
lbl_803D0D30:
	# ROM: 0x3CDD30
	.4byte 0x25336400
	.4byte 0

.global lbl_803D0D38
lbl_803D0D38:
	# ROM: 0x3CDD38
	.asciz "BaseWidget_RadarStuff"
	.balign 4

.global lbl_803D0D50
lbl_803D0D50:
	# ROM: 0x3CDD50
	.asciz "TXTR_RadarPaint"

.global lbl_803D0D60
lbl_803D0D60:
	# ROM: 0x3CDD60
	.asciz "basewidget_threatstuff"
	.balign 4
	.asciz "basewidget_threaticon"
	.balign 4
	.asciz "model_threatarrowup"
	.asciz "model_threatarrowdown"
	.balign 4
	.asciz "textpane_threatwarning"
	.balign 4
	.asciz "energybart01_threatbar"
	.balign 4
	.asciz "textpane_threatdigits"
	.balign 4

.global lbl_803D0E04
lbl_803D0E04:
	# ROM: 0x3CDE04
	.4byte 0x40C1999A
	.4byte 0
	.4byte 0
	.4byte 0x41066666
	.4byte 0
	.4byte CombatThreatBarCoordFunc__19CHudThreatInterfaceFf
	.4byte 0
	.4byte XRayThreatBarCoordFunc__19CHudThreatInterfaceFf
	.4byte ThermalThreatBarCoordFunc__19CHudThreatInterfaceFf
	.4byte 0

.global lbl_803D0E2C
lbl_803D0E2C:
	# ROM: 0x3CDE2C
	.asciz "%01.1f"
	.balign 4
	.4byte 0

.global lbl_803D0E38
lbl_803D0E38:
	# ROM: 0x3CDE38
	.4byte 0
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000007

.global lbl_803D0E58
lbl_803D0E58:

	# ROM: 0x3CDE58
	.asciz "BaseWidget_VisorMenu"

.global lbl_803D0E6D
lbl_803D0E6D:

	# ROM: 0x3CDE6D
	.byte 0x42, 0x61, 0x73
	.asciz "eWidget_BeamMenu"

.global lbl_803D0E81
lbl_803D0E81:

	# ROM: 0x3CDE81
	.byte 0x54, 0x65, 0x78
	.asciz "tPane_VisorMenu"

.global lbl_803D0E94
lbl_803D0E94:

	# ROM: 0x3CDE94
	.asciz "TextPane_BeamMenu"

.global lbl_803D0EA6
lbl_803D0EA6:

	# ROM: 0x3CDEA6
	.byte 0x62, 0x61
	.asciz "sewidget_visormenutitle"

.global lbl_803D0EC0
lbl_803D0EC0:

	# ROM: 0x3CDEC0
	.asciz "basewidget_beammenutitle"

.global lbl_803D0ED9
lbl_803D0ED9:

	# ROM: 0x3CDED9
	.byte 0x6D, 0x6F, 0x64
	.asciz "el_visor"

.global lbl_803D0EE5
lbl_803D0EE5:

	# ROM: 0x3CDEE5
	.byte 0x6D, 0x6F, 0x64
	.asciz "el_beam"

.global lbl_803D0EF0
lbl_803D0EF0:

	# ROM: 0x3CDEF0
	.4byte 0x6C6F7A00

.global lbl_803D0EF4
lbl_803D0EF4:

	# ROM: 0x3CDEF4
	.asciz "icon"

.global lbl_803D0EF9
lbl_803D0EF9:

	# ROM: 0x3CDEF9
	.byte 0x67, 0x68, 0x6F
	.4byte 0x73740025
	.4byte 0x73257300
	.asciz "%s%s%c"
	.balign 4
	.4byte 0

.global lbl_803D0F10
lbl_803D0F10:
	# ROM: 0x3CDF10
	.asciz "basewidget_deco"
	.asciz "basewidget_tickdeco0"
	.balign 4

.global lbl_803D0F38
lbl_803D0F38:
	# ROM: 0x3CDF38
	.asciz "basewidget_pivot"
	.balign 4
	.asciz "basewidget_frame"
	.balign 4

.global lbl_803D0F60
lbl_803D0F60:
	# ROM: 0x3CDF60
	.asciz "basewidget_seeker"
	.balign 4
	.asciz "basewidget_leftside"
	.asciz "basewidget_leftguages"
	.balign 4
	.asciz "basewidget_databankl"
	.balign 4
	.asciz "basewidget_rightside"
	.balign 4
	.asciz "basewidget_rightguages"
	.balign 4
	.asciz "basewidget_databankr"
	.balign 4
	.asciz "basewidget_leftsidedeco"
	.asciz "basewidget_rightsidedeco"
	.balign 4
	.asciz "textpane_scanning"
	.balign 4
	.asciz "energybart01_scanbar"
	.balign 4
	.asciz "basewidget_scanguage"
	.balign 4
	.asciz "basewidget_textgroup"
	.balign 4
	.asciz "textpane_message"
	.balign 4
	.asciz "textpane_scrollmessage"
	.balign 4
	.asciz "model_xmark"
	.asciz "model_abutton"
	.balign 4
	.asciz "model_dash"
	.balign 4

.global lbl_803D10E4
lbl_803D10E4:
	# ROM: 0x3CE0E4
	.asciz "basewidget_reticle"
	.byte 0x6D
	.asciz "odel_retflash"
	.byte 0x62, 0x61
	.asciz "sewidget_lock"
	.byte 0x62, 0x61
	.asciz "sewidget_lockon"
	.asciz "basewidget_deco"
	.asciz "basewidget_oultlinesa"
	.byte 0x6D, 0x6F
	.asciz "del_threaticon"
	.byte 0x6D
	.asciz "odel_missileicon"
	.byte 0x46, 0x52, 0x4D
	.asciz "E_ScanHudFlat"
	.byte 0x62, 0x61
	.asciz "sewidget_rotate"
	.asciz "basewidget_energydeco"
	.byte 0x6D, 0x6F
	.asciz "del_frame"
	.byte 0x6D, 0x6F
	.asciz "del_frame1"
	.byte 0x6D
	.asciz "odel_frame2"
	.asciz "model_frame3"
	.byte 0x6D, 0x6F, 0x64
	.asciz "el_misslieslider"
	.byte 0x6D, 0x6F, 0x64
	.asciz "el_threatslider"
	.asciz "??(??)"
	.balign 4
	.4byte 0
