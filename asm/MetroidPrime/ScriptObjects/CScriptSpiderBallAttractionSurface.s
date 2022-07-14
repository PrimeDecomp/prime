.include "macros.inc"

.section .data

.global lbl_803E2438
lbl_803E2438:
	# ROM: 0x3DF438
	.4byte 0
	.4byte 0
	.4byte __dt__34CScriptSpiderBallAttractionSurfaceFv
	.4byte Accept__34CScriptSpiderBallAttractionSurfaceFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__34CScriptSpiderBallAttractionSurfaceFfR13CStateManager
	.4byte AcceptScriptMsg__34CScriptSpiderBallAttractionSurfaceF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__6CActorFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__6CActorCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__6CActorCFRC13CStateManager
	.4byte CanRenderUnsorted__6CActorCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__6CActorFR13CStateManager
	.4byte GetDamageVulnerability__6CActorCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__34CScriptSpiderBallAttractionSurfaceCFv
	.4byte Touch__34CScriptSpiderBallAttractionSurfaceFR6CActorR13CStateManager
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

.global lbl_805A77B0
lbl_805A77B0:
	# ROM: 0x3F5150
	.4byte 0
	.4byte 0


.section .text, "ax"

.global Accept__34CScriptSpiderBallAttractionSurfaceFR8IVisitor
Accept__34CScriptSpiderBallAttractionSurfaceFR8IVisitor:
/* 8014AD6C 00147CCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014AD70 00147CD0  7C 08 02 A6 */	mflr r0
/* 8014AD74 00147CD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014AD78 00147CD8  7C 60 1B 78 */	mr r0, r3
/* 8014AD7C 00147CDC  7C 83 23 78 */	mr r3, r4
/* 8014AD80 00147CE0  81 84 00 00 */	lwz r12, 0(r4)
/* 8014AD84 00147CE4  7C 04 03 78 */	mr r4, r0
/* 8014AD88 00147CE8  81 8C 00 B8 */	lwz r12, 0xb8(r12)
/* 8014AD8C 00147CEC  7D 89 03 A6 */	mtctr r12
/* 8014AD90 00147CF0  4E 80 04 21 */	bctrl
/* 8014AD94 00147CF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014AD98 00147CF8  7C 08 03 A6 */	mtlr r0
/* 8014AD9C 00147CFC  38 21 00 10 */	addi r1, r1, 0x10
/* 8014ADA0 00147D00  4E 80 00 20 */	blr

.global Think__34CScriptSpiderBallAttractionSurfaceFfR13CStateManager
Think__34CScriptSpiderBallAttractionSurfaceFfR13CStateManager:
/* 8014ADA4 00147D04  4E 80 00 20 */	blr

.global AcceptScriptMsg__34CScriptSpiderBallAttractionSurfaceF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__34CScriptSpiderBallAttractionSurfaceF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 8014ADA8 00147D08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014ADAC 00147D0C  7C 08 02 A6 */	mflr r0
/* 8014ADB0 00147D10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014ADB4 00147D14  A0 05 00 00 */	lhz r0, 0(r5)
/* 8014ADB8 00147D18  38 A1 00 08 */	addi r5, r1, 8
/* 8014ADBC 00147D1C  B0 01 00 08 */	sth r0, 8(r1)
/* 8014ADC0 00147D20  4B F0 88 55 */	bl AcceptScriptMsg__6CActorF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 8014ADC4 00147D24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014ADC8 00147D28  7C 08 03 A6 */	mtlr r0
/* 8014ADCC 00147D2C  38 21 00 10 */	addi r1, r1, 0x10
/* 8014ADD0 00147D30  4E 80 00 20 */	blr

.global GetTouchBounds__34CScriptSpiderBallAttractionSurfaceCFv
GetTouchBounds__34CScriptSpiderBallAttractionSurfaceCFv:
/* 8014ADD4 00147D34  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8014ADD8 00147D38  7C 08 02 A6 */	mflr r0
/* 8014ADDC 00147D3C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8014ADE0 00147D40  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8014ADE4 00147D44  7C 7F 1B 78 */	mr r31, r3
/* 8014ADE8 00147D48  88 04 00 30 */	lbz r0, 0x30(r4)
/* 8014ADEC 00147D4C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8014ADF0 00147D50  41 82 00 AC */	beq lbl_8014AE9C
/* 8014ADF4 00147D54  C0 24 01 04 */	lfs f1, 0x104(r4)
/* 8014ADF8 00147D58  38 61 00 20 */	addi r3, r1, 0x20
/* 8014ADFC 00147D5C  C0 64 00 50 */	lfs f3, 0x50(r4)
/* 8014AE00 00147D60  38 A1 00 08 */	addi r5, r1, 8
/* 8014AE04 00147D64  C0 04 00 F8 */	lfs f0, 0xf8(r4)
/* 8014AE08 00147D68  EC C1 18 2A */	fadds f6, f1, f3
/* 8014AE0C 00147D6C  C0 44 01 08 */	lfs f2, 0x108(r4)
/* 8014AE10 00147D70  C0 24 00 60 */	lfs f1, 0x60(r4)
/* 8014AE14 00147D74  EC 80 18 2A */	fadds f4, f0, f3
/* 8014AE18 00147D78  C0 04 00 FC */	lfs f0, 0xfc(r4)
/* 8014AE1C 00147D7C  EC A2 08 2A */	fadds f5, f2, f1
/* 8014AE20 00147D80  EC 60 08 2A */	fadds f3, f0, f1
/* 8014AE24 00147D84  C0 24 01 00 */	lfs f1, 0x100(r4)
/* 8014AE28 00147D88  C0 44 00 40 */	lfs f2, 0x40(r4)
/* 8014AE2C 00147D8C  C0 04 00 F4 */	lfs f0, 0xf4(r4)
/* 8014AE30 00147D90  38 81 00 14 */	addi r4, r1, 0x14
/* 8014AE34 00147D94  EC 21 10 2A */	fadds f1, f1, f2
/* 8014AE38 00147D98  EC 00 10 2A */	fadds f0, f0, f2
/* 8014AE3C 00147D9C  D0 C1 00 0C */	stfs f6, 0xc(r1)
/* 8014AE40 00147DA0  D0 21 00 08 */	stfs f1, 8(r1)
/* 8014AE44 00147DA4  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 8014AE48 00147DA8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8014AE4C 00147DAC  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 8014AE50 00147DB0  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 8014AE54 00147DB4  48 1E D6 B5 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 8014AE58 00147DB8  38 00 00 01 */	li r0, 1
/* 8014AE5C 00147DBC  28 1F 00 00 */	cmplwi r31, 0
/* 8014AE60 00147DC0  98 1F 00 18 */	stb r0, 0x18(r31)
/* 8014AE64 00147DC4  41 82 00 40 */	beq lbl_8014AEA4
/* 8014AE68 00147DC8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8014AE6C 00147DCC  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8014AE70 00147DD0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8014AE74 00147DD4  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8014AE78 00147DD8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8014AE7C 00147DDC  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8014AE80 00147DE0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8014AE84 00147DE4  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8014AE88 00147DE8  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8014AE8C 00147DEC  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8014AE90 00147DF0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8014AE94 00147DF4  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 8014AE98 00147DF8  48 00 00 0C */	b lbl_8014AEA4
lbl_8014AE9C:
/* 8014AE9C 00147DFC  38 00 00 00 */	li r0, 0
/* 8014AEA0 00147E00  98 1F 00 18 */	stb r0, 0x18(r31)
lbl_8014AEA4:
/* 8014AEA4 00147E04  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8014AEA8 00147E08  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8014AEAC 00147E0C  7C 08 03 A6 */	mtlr r0
/* 8014AEB0 00147E10  38 21 00 40 */	addi r1, r1, 0x40
/* 8014AEB4 00147E14  4E 80 00 20 */	blr

.global Touch__34CScriptSpiderBallAttractionSurfaceFR6CActorR13CStateManager
Touch__34CScriptSpiderBallAttractionSurfaceFR6CActorR13CStateManager:
/* 8014AEB8 00147E18  4E 80 00 20 */	blr

.global __dt__34CScriptSpiderBallAttractionSurfaceFv
__dt__34CScriptSpiderBallAttractionSurfaceFv:
/* 8014AEBC 00147E1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014AEC0 00147E20  7C 08 02 A6 */	mflr r0
/* 8014AEC4 00147E24  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014AEC8 00147E28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014AECC 00147E2C  7C 9F 23 78 */	mr r31, r4
/* 8014AED0 00147E30  93 C1 00 08 */	stw r30, 8(r1)
/* 8014AED4 00147E34  7C 7E 1B 79 */	or. r30, r3, r3
/* 8014AED8 00147E38  41 82 00 28 */	beq lbl_8014AF00
/* 8014AEDC 00147E3C  3C A0 80 3E */	lis r5, lbl_803E2438@ha
/* 8014AEE0 00147E40  38 80 00 00 */	li r4, 0
/* 8014AEE4 00147E44  38 05 24 38 */	addi r0, r5, lbl_803E2438@l
/* 8014AEE8 00147E48  90 1E 00 00 */	stw r0, 0(r30)
/* 8014AEEC 00147E4C  4B F0 A8 05 */	bl __dt__6CActorFv
/* 8014AEF0 00147E50  7F E0 07 35 */	extsh. r0, r31
/* 8014AEF4 00147E54  40 81 00 0C */	ble lbl_8014AF00
/* 8014AEF8 00147E58  7F C3 F3 78 */	mr r3, r30
/* 8014AEFC 00147E5C  48 1C AA 35 */	bl Free__7CMemoryFPCv
lbl_8014AF00:
/* 8014AF00 00147E60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014AF04 00147E64  7F C3 F3 78 */	mr r3, r30
/* 8014AF08 00147E68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014AF0C 00147E6C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8014AF10 00147E70  7C 08 03 A6 */	mtlr r0
/* 8014AF14 00147E74  38 21 00 10 */	addi r1, r1, 0x10
/* 8014AF18 00147E78  4E 80 00 20 */	blr

.global "__ct__34CScriptSpiderBallAttractionSurfaceF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC9CVector3fb"
"__ct__34CScriptSpiderBallAttractionSurfaceF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC9CVector3fb":
/* 8014AF1C 00147E7C  94 21 FE 90 */	stwu r1, -0x170(r1)
/* 8014AF20 00147E80  7C 08 02 A6 */	mflr r0
/* 8014AF24 00147E84  90 01 01 74 */	stw r0, 0x174(r1)
/* 8014AF28 00147E88  BF 21 01 54 */	stmw r25, 0x154(r1)
/* 8014AF2C 00147E8C  7C 7F 1B 78 */	mr r31, r3
/* 8014AF30 00147E90  7C 99 23 78 */	mr r25, r4
/* 8014AF34 00147E94  7C BA 2B 78 */	mr r26, r5
/* 8014AF38 00147E98  7C DB 33 78 */	mr r27, r6
/* 8014AF3C 00147E9C  7C FC 3B 78 */	mr r28, r7
/* 8014AF40 00147EA0  7D 1D 43 78 */	mr r29, r8
/* 8014AF44 00147EA4  7D 3E 4B 78 */	mr r30, r9
/* 8014AF48 00147EA8  38 61 01 00 */	addi r3, r1, 0x100
/* 8014AF4C 00147EAC  4B EE F8 59 */	bl CModelDataNull__10CModelDataFv
/* 8014AF50 00147EB0  38 61 00 98 */	addi r3, r1, 0x98
/* 8014AF54 00147EB4  4B EC FE E5 */	bl None__16CActorParametersFv
/* 8014AF58 00147EB8  A0 8D A3 8C */	lhz r4, kInvalidUniqueId@sda21(r13)
/* 8014AF5C 00147EBC  38 00 00 00 */	li r0, 0
/* 8014AF60 00147EC0  80 AD 8B F0 */	lwz r5, lbl_805A77B0@sda21(r13)
/* 8014AF64 00147EC4  38 60 00 00 */	li r3, 0
/* 8014AF68 00147EC8  B0 81 00 10 */	sth r4, 0x10(r1)
/* 8014AF6C 00147ECC  38 80 00 01 */	li r4, 1
/* 8014AF70 00147ED0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8014AF74 00147ED4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8014AF78 00147ED8  48 23 EF 7D */	bl __shl2i
/* 8014AF7C 00147EDC  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 8014AF80 00147EE0  39 61 00 98 */	addi r11, r1, 0x98
/* 8014AF84 00147EE4  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 8014AF88 00147EE8  38 01 00 10 */	addi r0, r1, 0x10
/* 8014AF8C 00147EEC  7C A3 1B 78 */	or r3, r5, r3
/* 8014AF90 00147EF0  A1 39 00 00 */	lhz r9, 0(r25)
/* 8014AF94 00147EF4  7C C4 23 78 */	or r4, r6, r4
/* 8014AF98 00147EF8  90 61 00 18 */	stw r3, 0x18(r1)
/* 8014AF9C 00147EFC  7F E3 FB 78 */	mr r3, r31
/* 8014AFA0 00147F00  7F C5 F3 78 */	mr r5, r30
/* 8014AFA4 00147F04  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8014AFA8 00147F08  7F 46 D3 78 */	mr r6, r26
/* 8014AFAC 00147F0C  7F 67 DB 78 */	mr r7, r27
/* 8014AFB0 00147F10  7F 88 E3 78 */	mr r8, r28
/* 8014AFB4 00147F14  B1 21 00 14 */	sth r9, 0x14(r1)
/* 8014AFB8 00147F18  38 81 00 14 */	addi r4, r1, 0x14
/* 8014AFBC 00147F1C  39 21 01 00 */	addi r9, r1, 0x100
/* 8014AFC0 00147F20  39 41 00 18 */	addi r10, r1, 0x18
/* 8014AFC4 00147F24  91 61 00 08 */	stw r11, 8(r1)
/* 8014AFC8 00147F28  90 01 00 0C */	stw r0, 0xc(r1)
/* 8014AFCC 00147F2C  4B F0 A8 55 */	bl "__ct__6CActorF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC13CMaterialListRC16CActorParameters9TUniqueId"
/* 8014AFD0 00147F30  38 61 00 98 */	addi r3, r1, 0x98
/* 8014AFD4 00147F34  38 80 FF FF */	li r4, -1
/* 8014AFD8 00147F38  4B FB B6 31 */	bl __dt__16CActorParametersFv
/* 8014AFDC 00147F3C  38 61 01 00 */	addi r3, r1, 0x100
/* 8014AFE0 00147F40  38 80 FF FF */	li r4, -1
/* 8014AFE4 00147F44  4B FC BA 69 */	bl __dt__10CModelDataFv
/* 8014AFE8 00147F48  3C 60 80 3E */	lis r3, lbl_803E2438@ha
/* 8014AFEC 00147F4C  C0 42 9C E0 */	lfs f2, lbl_805ABA00@sda21(r2)
/* 8014AFF0 00147F50  38 03 24 38 */	addi r0, r3, lbl_803E2438@l
/* 8014AFF4 00147F54  7F 84 E3 78 */	mr r4, r28
/* 8014AFF8 00147F58  90 1F 00 00 */	stw r0, 0(r31)
/* 8014AFFC 00147F5C  38 61 00 68 */	addi r3, r1, 0x68
/* 8014B000 00147F60  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8014B004 00147F64  D0 1F 00 E8 */	stfs f0, 0xe8(r31)
/* 8014B008 00147F68  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8014B00C 00147F6C  D0 1F 00 EC */	stfs f0, 0xec(r31)
/* 8014B010 00147F70  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8014B014 00147F74  D0 1F 00 F0 */	stfs f0, 0xf0(r31)
/* 8014B018 00147F78  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8014B01C 00147F7C  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8014B020 00147F80  EC A2 00 32 */	fmuls f5, f2, f0
/* 8014B024 00147F84  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8014B028 00147F88  EC 82 00 72 */	fmuls f4, f2, f1
/* 8014B02C 00147F8C  EC 22 00 32 */	fmuls f1, f2, f0
/* 8014B030 00147F90  FC 60 28 50 */	fneg f3, f5
/* 8014B034 00147F94  D0 A1 00 28 */	stfs f5, 0x28(r1)
/* 8014B038 00147F98  FC 40 20 50 */	fneg f2, f4
/* 8014B03C 00147F9C  FC 00 08 50 */	fneg f0, f1
/* 8014B040 00147FA0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8014B044 00147FA4  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 8014B048 00147FA8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8014B04C 00147FAC  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8014B050 00147FB0  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 8014B054 00147FB4  48 1C 7B ED */	bl GetRotation__12CTransform4fCFv
/* 8014B058 00147FB8  38 61 00 38 */	addi r3, r1, 0x38
/* 8014B05C 00147FBC  38 81 00 2C */	addi r4, r1, 0x2c
/* 8014B060 00147FC0  38 A1 00 20 */	addi r5, r1, 0x20
/* 8014B064 00147FC4  48 1E D4 A5 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 8014B068 00147FC8  7C 64 1B 78 */	mr r4, r3
/* 8014B06C 00147FCC  38 61 00 50 */	addi r3, r1, 0x50
/* 8014B070 00147FD0  38 A1 00 68 */	addi r5, r1, 0x68
/* 8014B074 00147FD4  48 1E C8 89 */	bl GetTransformedAABox__6CAABoxCFRC12CTransform4f
/* 8014B078 00147FD8  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8014B07C 00147FDC  7F E3 FB 78 */	mr r3, r31
/* 8014B080 00147FE0  D0 1F 00 F4 */	stfs f0, 0xf4(r31)
/* 8014B084 00147FE4  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8014B088 00147FE8  D0 1F 00 F8 */	stfs f0, 0xf8(r31)
/* 8014B08C 00147FEC  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8014B090 00147FF0  D0 1F 00 FC */	stfs f0, 0xfc(r31)
/* 8014B094 00147FF4  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8014B098 00147FF8  D0 1F 01 00 */	stfs f0, 0x100(r31)
/* 8014B09C 00147FFC  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8014B0A0 00148000  D0 1F 01 04 */	stfs f0, 0x104(r31)
/* 8014B0A4 00148004  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8014B0A8 00148008  D0 1F 01 08 */	stfs f0, 0x108(r31)
/* 8014B0AC 0014800C  BB 21 01 54 */	lmw r25, 0x154(r1)
/* 8014B0B0 00148010  80 01 01 74 */	lwz r0, 0x174(r1)
/* 8014B0B4 00148014  7C 08 03 A6 */	mtlr r0
/* 8014B0B8 00148018  38 21 01 70 */	addi r1, r1, 0x170
/* 8014B0BC 0014801C  4E 80 00 20 */	blr
