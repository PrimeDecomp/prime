.include "macros.inc"

.section .data
.balign 8

.global lbl_803DA118
lbl_803DA118:
	# ROM: 0x3D7118
	.4byte 0
	.4byte 0
	.4byte __dt__7CEffectFv
	.4byte 0
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__7CEntityFfR13CStateManager
	.4byte AcceptScriptMsg__6CActorF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__6CActorFR13CStateManagerRC14CFrustumPlanes
	.4byte nullsub_83
	.4byte nullsub_84
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

.global lbl_805A6E78
lbl_805A6E78:
	# ROM: 0x3F4818
	.4byte 0
	.4byte 0


.section .text, "ax"

.global __dt__12CParticleGenFv
__dt__12CParticleGenFv:
/* 8005ACD0 00057C30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8005ACD4 00057C34  7C 08 02 A6 */	mflr r0
/* 8005ACD8 00057C38  90 01 00 24 */	stw r0, 0x24(r1)
/* 8005ACDC 00057C3C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8005ACE0 00057C40  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8005ACE4 00057C44  7C 9E 23 78 */	mr r30, r4
/* 8005ACE8 00057C48  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8005ACEC 00057C4C  7C 7D 1B 79 */	or. r29, r3, r3
/* 8005ACF0 00057C50  41 82 00 38 */	beq lbl_8005AD28
/* 8005ACF4 00057C54  83 FD 00 04 */	lwz r31, 4(r29)
/* 8005ACF8 00057C58  48 00 00 14 */	b lbl_8005AD0C
lbl_8005ACFC:
/* 8005ACFC 00057C5C  7F E3 FB 79 */	or. r3, r31, r31
/* 8005AD00 00057C60  83 FF 00 04 */	lwz r31, 4(r31)
/* 8005AD04 00057C64  41 82 00 08 */	beq lbl_8005AD0C
/* 8005AD08 00057C68  48 2B AC 29 */	bl Free__7CMemoryFPCv
lbl_8005AD0C:
/* 8005AD0C 00057C6C  80 1D 00 08 */	lwz r0, 8(r29)
/* 8005AD10 00057C70  7C 1F 00 40 */	cmplw r31, r0
/* 8005AD14 00057C74  40 82 FF E8 */	bne lbl_8005ACFC
/* 8005AD18 00057C78  7F C0 07 35 */	extsh. r0, r30
/* 8005AD1C 00057C7C  40 81 00 0C */	ble lbl_8005AD28
/* 8005AD20 00057C80  7F A3 EB 78 */	mr r3, r29
/* 8005AD24 00057C84  48 2B AC 0D */	bl Free__7CMemoryFPCv
lbl_8005AD28:
/* 8005AD28 00057C88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8005AD2C 00057C8C  7F A3 EB 78 */	mr r3, r29
/* 8005AD30 00057C90  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8005AD34 00057C94  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8005AD38 00057C98  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8005AD3C 00057C9C  7C 08 03 A6 */	mtlr r0
/* 8005AD40 00057CA0  38 21 00 20 */	addi r1, r1, 0x20
/* 8005AD44 00057CA4  4E 80 00 20 */	blr

.global nullsub_83
nullsub_83:
/* 8005AD48 00057CA8  4E 80 00 20 */	blr

.global nullsub_84
nullsub_84:
/* 8005AD4C 00057CAC  4E 80 00 20 */	blr

.global "__ct__7CEffectF9TUniqueIdRC11CEntityInfobRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC12CTransform4f"
"__ct__7CEffectF9TUniqueIdRC11CEntityInfobRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC12CTransform4f":
/* 8005AD50 00057CB0  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 8005AD54 00057CB4  7C 08 02 A6 */	mflr r0
/* 8005AD58 00057CB8  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8005AD5C 00057CBC  BF 41 00 D8 */	stmw r26, 0xd8(r1)
/* 8005AD60 00057CC0  7C 7F 1B 78 */	mr r31, r3
/* 8005AD64 00057CC4  7C 9A 23 78 */	mr r26, r4
/* 8005AD68 00057CC8  7C BB 2B 78 */	mr r27, r5
/* 8005AD6C 00057CCC  7C DC 33 78 */	mr r28, r6
/* 8005AD70 00057CD0  7C FD 3B 78 */	mr r29, r7
/* 8005AD74 00057CD4  7D 1E 43 78 */	mr r30, r8
/* 8005AD78 00057CD8  38 61 00 88 */	addi r3, r1, 0x88
/* 8005AD7C 00057CDC  4B FD FA 29 */	bl CModelDataNull__10CModelDataFv
/* 8005AD80 00057CE0  38 61 00 20 */	addi r3, r1, 0x20
/* 8005AD84 00057CE4  4B FC 00 B5 */	bl None__16CActorParametersFv
/* 8005AD88 00057CE8  A0 8D A3 8C */	lhz r4, kInvalidUniqueId@sda21(r13)
/* 8005AD8C 00057CEC  38 00 00 00 */	li r0, 0
/* 8005AD90 00057CF0  80 AD 82 B8 */	lwz r5, lbl_805A6E78@sda21(r13)
/* 8005AD94 00057CF4  38 60 00 00 */	li r3, 0
/* 8005AD98 00057CF8  B0 81 00 10 */	sth r4, 0x10(r1)
/* 8005AD9C 00057CFC  38 80 00 01 */	li r4, 1
/* 8005ADA0 00057D00  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8005ADA4 00057D04  90 01 00 18 */	stw r0, 0x18(r1)
/* 8005ADA8 00057D08  48 32 F1 4D */	bl __shl2i
/* 8005ADAC 00057D0C  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 8005ADB0 00057D10  39 61 00 20 */	addi r11, r1, 0x20
/* 8005ADB4 00057D14  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 8005ADB8 00057D18  38 01 00 10 */	addi r0, r1, 0x10
/* 8005ADBC 00057D1C  7C A3 1B 78 */	or r3, r5, r3
/* 8005ADC0 00057D20  A1 3A 00 00 */	lhz r9, 0(r26)
/* 8005ADC4 00057D24  7C C4 23 78 */	or r4, r6, r4
/* 8005ADC8 00057D28  90 61 00 18 */	stw r3, 0x18(r1)
/* 8005ADCC 00057D2C  7F E3 FB 78 */	mr r3, r31
/* 8005ADD0 00057D30  7F 85 E3 78 */	mr r5, r28
/* 8005ADD4 00057D34  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8005ADD8 00057D38  7F A6 EB 78 */	mr r6, r29
/* 8005ADDC 00057D3C  7F 67 DB 78 */	mr r7, r27
/* 8005ADE0 00057D40  7F C8 F3 78 */	mr r8, r30
/* 8005ADE4 00057D44  B1 21 00 14 */	sth r9, 0x14(r1)
/* 8005ADE8 00057D48  38 81 00 14 */	addi r4, r1, 0x14
/* 8005ADEC 00057D4C  39 21 00 88 */	addi r9, r1, 0x88
/* 8005ADF0 00057D50  39 41 00 18 */	addi r10, r1, 0x18
/* 8005ADF4 00057D54  91 61 00 08 */	stw r11, 8(r1)
/* 8005ADF8 00057D58  90 01 00 0C */	stw r0, 0xc(r1)
/* 8005ADFC 00057D5C  4B FF AA 25 */	bl "__ct__6CActorF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC13CMaterialListRC16CActorParameters9TUniqueId"
/* 8005AE00 00057D60  38 61 00 20 */	addi r3, r1, 0x20
/* 8005AE04 00057D64  38 80 FF FF */	li r4, -1
/* 8005AE08 00057D68  48 0A B8 01 */	bl __dt__16CActorParametersFv
/* 8005AE0C 00057D6C  38 61 00 88 */	addi r3, r1, 0x88
/* 8005AE10 00057D70  38 80 FF FF */	li r4, -1
/* 8005AE14 00057D74  48 0B BC 39 */	bl __dt__10CModelDataFv
/* 8005AE18 00057D78  3C 80 80 3E */	lis r4, lbl_803DA118@ha
/* 8005AE1C 00057D7C  7F E3 FB 78 */	mr r3, r31
/* 8005AE20 00057D80  38 04 A1 18 */	addi r0, r4, lbl_803DA118@l
/* 8005AE24 00057D84  90 1F 00 00 */	stw r0, 0(r31)
/* 8005AE28 00057D88  BB 41 00 D8 */	lmw r26, 0xd8(r1)
/* 8005AE2C 00057D8C  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8005AE30 00057D90  7C 08 03 A6 */	mtlr r0
/* 8005AE34 00057D94  38 21 00 F0 */	addi r1, r1, 0xf0
/* 8005AE38 00057D98  4E 80 00 20 */	blr
