.include "macros.inc"

.section .data
.balign 8
.global lbl_803E23C8
lbl_803E23C8:
	# ROM: 0x3DF3C8
	.4byte 0
	.4byte 0
	.4byte __dt__26CScriptDebugCameraWaypointFv
	.4byte Accept__26CScriptDebugCameraWaypointFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__7CEntityFfR13CStateManager
	.4byte AcceptScriptMsg__6CActorF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__6CActorFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__6CActorCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__6CActorCFRC13CStateManager
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

.global lbl_805A77A8
lbl_805A77A8:
	# ROM: 0x3F5148
	.4byte 0
	.4byte 0

.section .text, "ax"

.global __dt__26CScriptDebugCameraWaypointFv
__dt__26CScriptDebugCameraWaypointFv:
/* 8014ABE4 00147B44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014ABE8 00147B48  7C 08 02 A6 */	mflr r0
/* 8014ABEC 00147B4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014ABF0 00147B50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014ABF4 00147B54  7C 9F 23 78 */	mr r31, r4
/* 8014ABF8 00147B58  93 C1 00 08 */	stw r30, 8(r1)
/* 8014ABFC 00147B5C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8014AC00 00147B60  41 82 00 28 */	beq lbl_8014AC28
/* 8014AC04 00147B64  3C A0 80 3E */	lis r5, lbl_803E23C8@ha
/* 8014AC08 00147B68  38 80 00 00 */	li r4, 0
/* 8014AC0C 00147B6C  38 05 23 C8 */	addi r0, r5, lbl_803E23C8@l
/* 8014AC10 00147B70  90 1E 00 00 */	stw r0, 0(r30)
/* 8014AC14 00147B74  4B F0 AA DD */	bl __dt__6CActorFv
/* 8014AC18 00147B78  7F E0 07 35 */	extsh. r0, r31
/* 8014AC1C 00147B7C  40 81 00 0C */	ble lbl_8014AC28
/* 8014AC20 00147B80  7F C3 F3 78 */	mr r3, r30
/* 8014AC24 00147B84  48 1C AD 0D */	bl Free__7CMemoryFPCv
lbl_8014AC28:
/* 8014AC28 00147B88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014AC2C 00147B8C  7F C3 F3 78 */	mr r3, r30
/* 8014AC30 00147B90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014AC34 00147B94  83 C1 00 08 */	lwz r30, 8(r1)
/* 8014AC38 00147B98  7C 08 03 A6 */	mtlr r0
/* 8014AC3C 00147B9C  38 21 00 10 */	addi r1, r1, 0x10
/* 8014AC40 00147BA0  4E 80 00 20 */	blr

.global Accept__26CScriptDebugCameraWaypointFR8IVisitor
Accept__26CScriptDebugCameraWaypointFR8IVisitor:
/* 8014AC44 00147BA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014AC48 00147BA8  7C 08 02 A6 */	mflr r0
/* 8014AC4C 00147BAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014AC50 00147BB0  7C 60 1B 78 */	mr r0, r3
/* 8014AC54 00147BB4  7C 83 23 78 */	mr r3, r4
/* 8014AC58 00147BB8  81 84 00 00 */	lwz r12, 0(r4)
/* 8014AC5C 00147BBC  7C 04 03 78 */	mr r4, r0
/* 8014AC60 00147BC0  81 8C 00 78 */	lwz r12, 0x78(r12)
/* 8014AC64 00147BC4  7D 89 03 A6 */	mtctr r12
/* 8014AC68 00147BC8  4E 80 04 21 */	bctrl
/* 8014AC6C 00147BCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014AC70 00147BD0  7C 08 03 A6 */	mtlr r0
/* 8014AC74 00147BD4  38 21 00 10 */	addi r1, r1, 0x10
/* 8014AC78 00147BD8  4E 80 00 20 */	blr

.global "__ct__26CScriptDebugCameraWaypointF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fUi"
"__ct__26CScriptDebugCameraWaypointF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fUi":
/* 8014AC7C 00147BDC  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 8014AC80 00147BE0  7C 08 02 A6 */	mflr r0
/* 8014AC84 00147BE4  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8014AC88 00147BE8  BF 41 00 D8 */	stmw r26, 0xd8(r1)
/* 8014AC8C 00147BEC  7C 7F 1B 78 */	mr r31, r3
/* 8014AC90 00147BF0  7C 9A 23 78 */	mr r26, r4
/* 8014AC94 00147BF4  7C BB 2B 78 */	mr r27, r5
/* 8014AC98 00147BF8  7C DC 33 78 */	mr r28, r6
/* 8014AC9C 00147BFC  7C FD 3B 78 */	mr r29, r7
/* 8014ACA0 00147C00  7D 1E 43 78 */	mr r30, r8
/* 8014ACA4 00147C04  38 61 00 88 */	addi r3, r1, 0x88
/* 8014ACA8 00147C08  4B EE FA FD */	bl CModelDataNull__10CModelDataFv
/* 8014ACAC 00147C0C  38 61 00 20 */	addi r3, r1, 0x20
/* 8014ACB0 00147C10  4B ED 01 89 */	bl None__16CActorParametersFv
/* 8014ACB4 00147C14  A0 8D A3 8C */	lhz r4, kInvalidUniqueId@sda21(r13)
/* 8014ACB8 00147C18  38 00 00 00 */	li r0, 0
/* 8014ACBC 00147C1C  80 AD 8B E8 */	lwz r5, lbl_805A77A8@sda21(r13)
/* 8014ACC0 00147C20  38 60 00 00 */	li r3, 0
/* 8014ACC4 00147C24  B0 81 00 10 */	sth r4, 0x10(r1)
/* 8014ACC8 00147C28  38 80 00 01 */	li r4, 1
/* 8014ACCC 00147C2C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8014ACD0 00147C30  90 01 00 18 */	stw r0, 0x18(r1)
/* 8014ACD4 00147C34  48 23 F2 21 */	bl __shl2i
/* 8014ACD8 00147C38  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 8014ACDC 00147C3C  39 61 00 20 */	addi r11, r1, 0x20
/* 8014ACE0 00147C40  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 8014ACE4 00147C44  38 01 00 10 */	addi r0, r1, 0x10
/* 8014ACE8 00147C48  7C A3 1B 78 */	or r3, r5, r3
/* 8014ACEC 00147C4C  A0 BA 00 00 */	lhz r5, 0(r26)
/* 8014ACF0 00147C50  7C C4 23 78 */	or r4, r6, r4
/* 8014ACF4 00147C54  90 61 00 18 */	stw r3, 0x18(r1)
/* 8014ACF8 00147C58  7F E3 FB 78 */	mr r3, r31
/* 8014ACFC 00147C5C  7F 66 DB 78 */	mr r6, r27
/* 8014AD00 00147C60  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8014AD04 00147C64  7F 87 E3 78 */	mr r7, r28
/* 8014AD08 00147C68  7F A8 EB 78 */	mr r8, r29
/* 8014AD0C 00147C6C  38 81 00 14 */	addi r4, r1, 0x14
/* 8014AD10 00147C70  B0 A1 00 14 */	sth r5, 0x14(r1)
/* 8014AD14 00147C74  39 21 00 88 */	addi r9, r1, 0x88
/* 8014AD18 00147C78  39 41 00 18 */	addi r10, r1, 0x18
/* 8014AD1C 00147C7C  38 A0 00 01 */	li r5, 1
/* 8014AD20 00147C80  91 61 00 08 */	stw r11, 8(r1)
/* 8014AD24 00147C84  90 01 00 0C */	stw r0, 0xc(r1)
/* 8014AD28 00147C88  4B F0 AA F9 */	bl "__ct__6CActorF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC13CMaterialListRC16CActorParameters9TUniqueId"
/* 8014AD2C 00147C8C  38 61 00 20 */	addi r3, r1, 0x20
/* 8014AD30 00147C90  38 80 FF FF */	li r4, -1
/* 8014AD34 00147C94  4B FB B8 D5 */	bl __dt__16CLightParametersFv
/* 8014AD38 00147C98  38 61 00 88 */	addi r3, r1, 0x88
/* 8014AD3C 00147C9C  38 80 FF FF */	li r4, -1
/* 8014AD40 00147CA0  4B FC BD 0D */	bl __dt__10CModelDataFv
/* 8014AD44 00147CA4  3C 80 80 3E */	lis r4, lbl_803E23C8@ha
/* 8014AD48 00147CA8  7F E3 FB 78 */	mr r3, r31
/* 8014AD4C 00147CAC  38 04 23 C8 */	addi r0, r4, lbl_803E23C8@l
/* 8014AD50 00147CB0  90 1F 00 00 */	stw r0, 0(r31)
/* 8014AD54 00147CB4  93 DF 00 E8 */	stw r30, 0xe8(r31)
/* 8014AD58 00147CB8  BB 41 00 D8 */	lmw r26, 0xd8(r1)
/* 8014AD5C 00147CBC  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8014AD60 00147CC0  7C 08 03 A6 */	mtlr r0
/* 8014AD64 00147CC4  38 21 00 F0 */	addi r1, r1, 0xf0
/* 8014AD68 00147CC8  4E 80 00 20 */	blr
