.include "macros.inc"

.section .data
.balign 8

.global lbl_803E02C8
lbl_803E02C8:
	# ROM: 0x3DD2C8
	.4byte 0
	.4byte 0
	.4byte __dt__25CScriptSpiderBallWaypointFv
	.4byte Accept__25CScriptSpiderBallWaypointFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__7CEntityFfR13CStateManager
	.4byte AcceptScriptMsg__25CScriptSpiderBallWaypointF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__6CActorFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__25CScriptSpiderBallWaypointCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__25CScriptSpiderBallWaypointCFRC13CStateManager
	.4byte CanRenderUnsorted__6CActorCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__6CActorFR13CStateManager
	.4byte GetDamageVulnerability__6CActorCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__25CScriptSpiderBallWaypointCFv
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

.global lbl_805A7620
lbl_805A7620:
	# ROM: 0x3F4FC0
	.4byte 0
	.4byte 0

.section .sdata2, "a"
.balign 8

.global lbl_805AB388
lbl_805AB388:
	# ROM: 0x3F7C28
	.float 0.5

.global lbl_805AB38C
lbl_805AB38C:
	# ROM: 0x3F7C2C
	.4byte 0

.global lbl_805AB390
lbl_805AB390:
	# ROM: 0x3F7C30
	.float 1.0
	.4byte 0

.section .text, "ax"

.global GetTouchBounds__25CScriptSpiderBallWaypointCFv
GetTouchBounds__25CScriptSpiderBallWaypointCFv:
/* 80117C70 00114BD0  88 04 01 14 */	lbz r0, 0x114(r4)
/* 80117C74 00114BD4  98 03 00 18 */	stb r0, 0x18(r3)
/* 80117C78 00114BD8  88 04 01 14 */	lbz r0, 0x114(r4)
/* 80117C7C 00114BDC  28 00 00 00 */	cmplwi r0, 0
/* 80117C80 00114BE0  4D 82 00 20 */	beqlr
/* 80117C84 00114BE4  28 03 00 00 */	cmplwi r3, 0
/* 80117C88 00114BE8  4D 82 00 20 */	beqlr
/* 80117C8C 00114BEC  C0 04 00 FC */	lfs f0, 0xfc(r4)
/* 80117C90 00114BF0  D0 03 00 00 */	stfs f0, 0(r3)
/* 80117C94 00114BF4  C0 04 01 00 */	lfs f0, 0x100(r4)
/* 80117C98 00114BF8  D0 03 00 04 */	stfs f0, 4(r3)
/* 80117C9C 00114BFC  C0 04 01 04 */	lfs f0, 0x104(r4)
/* 80117CA0 00114C00  D0 03 00 08 */	stfs f0, 8(r3)
/* 80117CA4 00114C04  C0 04 01 08 */	lfs f0, 0x108(r4)
/* 80117CA8 00114C08  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80117CAC 00114C0C  C0 04 01 0C */	lfs f0, 0x10c(r4)
/* 80117CB0 00114C10  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80117CB4 00114C14  C0 04 01 10 */	lfs f0, 0x110(r4)
/* 80117CB8 00114C18  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80117CBC 00114C1C  4E 80 00 20 */	blr

.global Accept__25CScriptSpiderBallWaypointFR8IVisitor
Accept__25CScriptSpiderBallWaypointFR8IVisitor:
/* 80117CC0 00114C20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80117CC4 00114C24  7C 08 02 A6 */	mflr r0
/* 80117CC8 00114C28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80117CCC 00114C2C  7C 60 1B 78 */	mr r0, r3
/* 80117CD0 00114C30  7C 83 23 78 */	mr r3, r4
/* 80117CD4 00114C34  81 84 00 00 */	lwz r12, 0(r4)
/* 80117CD8 00114C38  7C 04 03 78 */	mr r4, r0
/* 80117CDC 00114C3C  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 80117CE0 00114C40  7D 89 03 A6 */	mtctr r12
/* 80117CE4 00114C44  4E 80 04 21 */	bctrl
/* 80117CE8 00114C48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80117CEC 00114C4C  7C 08 03 A6 */	mtlr r0
/* 80117CF0 00114C50  38 21 00 10 */	addi r1, r1, 0x10
/* 80117CF4 00114C54  4E 80 00 20 */	blr

.global Render__25CScriptSpiderBallWaypointCFRC13CStateManager
Render__25CScriptSpiderBallWaypointCFRC13CStateManager:
/* 80117CF8 00114C58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80117CFC 00114C5C  7C 08 02 A6 */	mflr r0
/* 80117D00 00114C60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80117D04 00114C64  4B F3 CA A1 */	bl Render__6CActorCFRC13CStateManager
/* 80117D08 00114C68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80117D0C 00114C6C  7C 08 03 A6 */	mtlr r0
/* 80117D10 00114C70  38 21 00 10 */	addi r1, r1, 0x10
/* 80117D14 00114C74  4E 80 00 20 */	blr

.global AddToRenderer__25CScriptSpiderBallWaypointCFRC14CFrustumPlanesRC13CStateManager
AddToRenderer__25CScriptSpiderBallWaypointCFRC14CFrustumPlanesRC13CStateManager:
/* 80117D18 00114C78  4E 80 00 20 */	blr

.global GetClosestPointAlongWaypoints__25CScriptSpiderBallWaypointCFR13CStateManagerRC9CVector3ffPPC25CScriptSpiderBallWaypointR9CVector3fR9CVector3ffR9CVector3f
GetClosestPointAlongWaypoints__25CScriptSpiderBallWaypointCFR13CStateManagerRC9CVector3ffPPC25CScriptSpiderBallWaypointR9CVector3fR9CVector3ffR9CVector3f:
/* 80117D1C 00114C7C  94 21 FE 10 */	stwu r1, -0x1f0(r1)
/* 80117D20 00114C80  7C 08 02 A6 */	mflr r0
/* 80117D24 00114C84  90 01 01 F4 */	stw r0, 0x1f4(r1)
/* 80117D28 00114C88  DB E1 01 E0 */	stfd f31, 0x1e0(r1)
/* 80117D2C 00114C8C  F3 E1 01 E8 */	psq_st f31, 488(r1), 0, qr0
/* 80117D30 00114C90  DB C1 01 D0 */	stfd f30, 0x1d0(r1)
/* 80117D34 00114C94  F3 C1 01 D8 */	psq_st f30, 472(r1), 0, qr0
/* 80117D38 00114C98  DB A1 01 C0 */	stfd f29, 0x1c0(r1)
/* 80117D3C 00114C9C  F3 A1 01 C8 */	psq_st f29, 456(r1), 0, qr0
/* 80117D40 00114CA0  DB 81 01 B0 */	stfd f28, 0x1b0(r1)
/* 80117D44 00114CA4  F3 81 01 B8 */	psq_st f28, 440(r1), 0, qr0
/* 80117D48 00114CA8  DB 61 01 A0 */	stfd f27, 0x1a0(r1)
/* 80117D4C 00114CAC  F3 61 01 A8 */	psq_st f27, 424(r1), 0, qr0
/* 80117D50 00114CB0  DB 41 01 90 */	stfd f26, 0x190(r1)
/* 80117D54 00114CB4  F3 41 01 98 */	psq_st f26, 408(r1), 0, qr0
/* 80117D58 00114CB8  DB 21 01 80 */	stfd f25, 0x180(r1)
/* 80117D5C 00114CBC  F3 21 01 88 */	psq_st f25, 392(r1), 0, qr0
/* 80117D60 00114CC0  DB 01 01 70 */	stfd f24, 0x170(r1)
/* 80117D64 00114CC4  F3 01 01 78 */	psq_st f24, 376(r1), 0, qr0
/* 80117D68 00114CC8  DA E1 01 60 */	stfd f23, 0x160(r1)
/* 80117D6C 00114CCC  F2 E1 01 68 */	psq_st f23, 360(r1), 0, qr0
/* 80117D70 00114CD0  DA C1 01 50 */	stfd f22, 0x150(r1)
/* 80117D74 00114CD4  F2 C1 01 58 */	psq_st f22, 344(r1), 0, qr0
/* 80117D78 00114CD8  DA A1 01 40 */	stfd f21, 0x140(r1)
/* 80117D7C 00114CDC  F2 A1 01 48 */	psq_st f21, 328(r1), 0, qr0
/* 80117D80 00114CE0  DA 81 01 30 */	stfd f20, 0x130(r1)
/* 80117D84 00114CE4  F2 81 01 38 */	psq_st f20, 312(r1), 0, qr0
/* 80117D88 00114CE8  BE E1 01 0C */	stmw r23, 0x10c(r1)
/* 80117D8C 00114CEC  FE A0 08 90 */	fmr f21, f1
/* 80117D90 00114CF0  7C 98 23 78 */	mr r24, r4
/* 80117D94 00114CF4  FE 80 10 90 */	fmr f20, f2
/* 80117D98 00114CF8  7C B9 2B 78 */	mr r25, r5
/* 80117D9C 00114CFC  7C DA 33 78 */	mr r26, r6
/* 80117DA0 00114D00  7C FB 3B 78 */	mr r27, r7
/* 80117DA4 00114D04  7D 1C 43 78 */	mr r28, r8
/* 80117DA8 00114D08  7D 3D 4B 78 */	mr r29, r9
/* 80117DAC 00114D0C  7C 7F 1B 78 */	mr r31, r3
/* 80117DB0 00114D10  48 00 00 30 */	b lbl_80117DE0
lbl_80117DB4:
/* 80117DB4 00114D14  7F E4 FB 78 */	mr r4, r31
/* 80117DB8 00114D18  7F 05 C3 78 */	mr r5, r24
/* 80117DBC 00114D1C  38 61 00 48 */	addi r3, r1, 0x48
/* 80117DC0 00114D20  38 C0 00 01 */	li r6, 1
/* 80117DC4 00114D24  48 00 07 91 */	bl PreviousWaypoint__25CScriptSpiderBallWaypointCFRC13CStateManagerQ225CScriptSpiderBallWaypoint20ECheckActiveWaypoint
/* 80117DC8 00114D28  A0 01 00 48 */	lhz r0, 0x48(r1)
/* 80117DCC 00114D2C  7F 03 C3 78 */	mr r3, r24
/* 80117DD0 00114D30  38 81 00 4C */	addi r4, r1, 0x4c
/* 80117DD4 00114D34  B0 01 00 4C */	sth r0, 0x4c(r1)
/* 80117DD8 00114D38  4B F3 47 CD */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80117DDC 00114D3C  7C 7F 1B 78 */	mr r31, r3
lbl_80117DE0:
/* 80117DE0 00114D40  7F E4 FB 78 */	mr r4, r31
/* 80117DE4 00114D44  7F 05 C3 78 */	mr r5, r24
/* 80117DE8 00114D48  38 61 00 44 */	addi r3, r1, 0x44
/* 80117DEC 00114D4C  38 C0 00 01 */	li r6, 1
/* 80117DF0 00114D50  48 00 07 65 */	bl PreviousWaypoint__25CScriptSpiderBallWaypointCFRC13CStateManagerQ225CScriptSpiderBallWaypoint20ECheckActiveWaypoint
/* 80117DF4 00114D54  A0 61 00 44 */	lhz r3, 0x44(r1)
/* 80117DF8 00114D58  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80117DFC 00114D5C  7C 03 00 40 */	cmplw r3, r0
/* 80117E00 00114D60  40 82 FF B4 */	bne lbl_80117DB4
/* 80117E04 00114D64  3C 60 80 5A */	lis r3, skZero3f@ha
/* 80117E08 00114D68  C4 43 66 A0 */	lfsu f2, skZero3f@l(r3)
/* 80117E0C 00114D6C  EE D5 05 72 */	fmuls f22, f21, f21
/* 80117E10 00114D70  C3 3F 00 40 */	lfs f25, 0x40(r31)
/* 80117E14 00114D74  C3 1F 00 50 */	lfs f24, 0x50(r31)
/* 80117E18 00114D78  EE B4 05 32 */	fmuls f21, f20, f20
/* 80117E1C 00114D7C  C2 FF 00 60 */	lfs f23, 0x60(r31)
/* 80117E20 00114D80  3B C0 00 00 */	li r30, 0
/* 80117E24 00114D84  C0 23 00 04 */	lfs f1, 4(r3)
/* 80117E28 00114D88  C0 03 00 08 */	lfs f0, 8(r3)
/* 80117E2C 00114D8C  D0 41 00 F8 */	stfs f2, 0xf8(r1)
/* 80117E30 00114D90  D0 21 00 FC */	stfs f1, 0xfc(r1)
/* 80117E34 00114D94  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80117E38 00114D98  88 1F 00 30 */	lbz r0, 0x30(r31)
/* 80117E3C 00114D9C  54 17 CF FE */	rlwinm r23, r0, 0x19, 0x1f, 0x1f
/* 80117E40 00114DA0  48 00 05 10 */	b lbl_80118350
lbl_80117E44:
/* 80117E44 00114DA4  7F E4 FB 78 */	mr r4, r31
/* 80117E48 00114DA8  7F 05 C3 78 */	mr r5, r24
/* 80117E4C 00114DAC  38 61 00 40 */	addi r3, r1, 0x40
/* 80117E50 00114DB0  38 C0 00 00 */	li r6, 0
/* 80117E54 00114DB4  48 00 07 B9 */	bl NextWaypoint__25CScriptSpiderBallWaypointCFRC13CStateManagerQ225CScriptSpiderBallWaypoint20ECheckActiveWaypoint
/* 80117E58 00114DB8  A0 61 00 40 */	lhz r3, 0x40(r1)
/* 80117E5C 00114DBC  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80117E60 00114DC0  7C 03 00 40 */	cmplw r3, r0
/* 80117E64 00114DC4  41 82 04 90 */	beq lbl_801182F4
/* 80117E68 00114DC8  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 80117E6C 00114DCC  41 82 04 48 */	beq lbl_801182B4
/* 80117E70 00114DD0  7F F7 FB 78 */	mr r23, r31
/* 80117E74 00114DD4  7F E4 FB 78 */	mr r4, r31
/* 80117E78 00114DD8  7F 05 C3 78 */	mr r5, r24
/* 80117E7C 00114DDC  38 61 00 38 */	addi r3, r1, 0x38
/* 80117E80 00114DE0  38 C0 00 00 */	li r6, 0
/* 80117E84 00114DE4  48 00 07 89 */	bl NextWaypoint__25CScriptSpiderBallWaypointCFRC13CStateManagerQ225CScriptSpiderBallWaypoint20ECheckActiveWaypoint
/* 80117E88 00114DE8  A0 01 00 38 */	lhz r0, 0x38(r1)
/* 80117E8C 00114DEC  7F 03 C3 78 */	mr r3, r24
/* 80117E90 00114DF0  38 81 00 3C */	addi r4, r1, 0x3c
/* 80117E94 00114DF4  B0 01 00 3C */	sth r0, 0x3c(r1)
/* 80117E98 00114DF8  4B F3 47 0D */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80117E9C 00114DFC  C0 39 00 00 */	lfs f1, 0(r25)
/* 80117EA0 00114E00  7C 7F 1B 78 */	mr r31, r3
/* 80117EA4 00114E04  C0 19 00 04 */	lfs f0, 4(r25)
/* 80117EA8 00114E08  7E E4 BB 78 */	mr r4, r23
/* 80117EAC 00114E0C  C3 83 00 40 */	lfs f28, 0x40(r3)
/* 80117EB0 00114E10  EF A1 C8 28 */	fsubs f29, f1, f25
/* 80117EB4 00114E14  C3 63 00 50 */	lfs f27, 0x50(r3)
/* 80117EB8 00114E18  EF C0 C0 28 */	fsubs f30, f0, f24
/* 80117EBC 00114E1C  C3 43 00 60 */	lfs f26, 0x60(r3)
/* 80117EC0 00114E20  EC 5C C8 28 */	fsubs f2, f28, f25
/* 80117EC4 00114E24  EC 3B C0 28 */	fsubs f1, f27, f24
/* 80117EC8 00114E28  EC 1A B8 28 */	fsubs f0, f26, f23
/* 80117ECC 00114E2C  C0 79 00 08 */	lfs f3, 8(r25)
/* 80117ED0 00114E30  D0 41 00 EC */	stfs f2, 0xec(r1)
/* 80117ED4 00114E34  7F 05 C3 78 */	mr r5, r24
/* 80117ED8 00114E38  EF E3 B8 28 */	fsubs f31, f3, f23
/* 80117EDC 00114E3C  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 80117EE0 00114E40  38 61 00 34 */	addi r3, r1, 0x34
/* 80117EE4 00114E44  38 C0 00 00 */	li r6, 0
/* 80117EE8 00114E48  D0 21 00 F0 */	stfs f1, 0xf0(r1)
/* 80117EEC 00114E4C  48 00 06 69 */	bl PreviousWaypoint__25CScriptSpiderBallWaypointCFRC13CStateManagerQ225CScriptSpiderBallWaypoint20ECheckActiveWaypoint
/* 80117EF0 00114E50  A0 61 00 34 */	lhz r3, 0x34(r1)
/* 80117EF4 00114E54  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80117EF8 00114E58  7C 03 00 40 */	cmplw r3, r0
/* 80117EFC 00114E5C  40 82 00 1C */	bne lbl_80117F18
/* 80117F00 00114E60  C0 41 00 EC */	lfs f2, 0xec(r1)
/* 80117F04 00114E64  C0 21 00 F0 */	lfs f1, 0xf0(r1)
/* 80117F08 00114E68  C0 01 00 F4 */	lfs f0, 0xf4(r1)
/* 80117F0C 00114E6C  D0 41 00 F8 */	stfs f2, 0xf8(r1)
/* 80117F10 00114E70  D0 21 00 FC */	stfs f1, 0xfc(r1)
/* 80117F14 00114E74  D0 01 01 00 */	stfs f0, 0x100(r1)
lbl_80117F18:
/* 80117F18 00114E78  EC 1E 07 B2 */	fmuls f0, f30, f30
/* 80117F1C 00114E7C  EC 1D 07 7A */	fmadds f0, f29, f29, f0
/* 80117F20 00114E80  EC 1F 07 FA */	fmadds f0, f31, f31, f0
/* 80117F24 00114E84  FC 00 B0 40 */	fcmpo cr0, f0, f22
/* 80117F28 00114E88  40 80 00 88 */	bge lbl_80117FB0
/* 80117F2C 00114E8C  D3 3B 00 00 */	stfs f25, 0(r27)
/* 80117F30 00114E90  FE C0 00 90 */	fmr f22, f0
/* 80117F34 00114E94  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80117F38 00114E98  38 81 00 EC */	addi r4, r1, 0xec
/* 80117F3C 00114E9C  D3 1B 00 04 */	stfs f24, 4(r27)
/* 80117F40 00114EA0  D2 FB 00 08 */	stfs f23, 8(r27)
/* 80117F44 00114EA4  C0 01 00 EC */	lfs f0, 0xec(r1)
/* 80117F48 00114EA8  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80117F4C 00114EAC  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 80117F50 00114EB0  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80117F54 00114EB4  C0 01 00 F4 */	lfs f0, 0xf4(r1)
/* 80117F58 00114EB8  D0 1C 00 08 */	stfs f0, 8(r28)
/* 80117F5C 00114EBC  48 1F C8 F5 */	bl AsNormalized__9CVector3fCFv
/* 80117F60 00114EC0  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80117F64 00114EC4  38 81 00 F8 */	addi r4, r1, 0xf8
/* 80117F68 00114EC8  48 1F C8 E9 */	bl AsNormalized__9CVector3fCFv
/* 80117F6C 00114ECC  C0 21 00 D4 */	lfs f1, 0xd4(r1)
/* 80117F70 00114ED0  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 80117F74 00114ED4  C0 61 00 D8 */	lfs f3, 0xd8(r1)
/* 80117F78 00114ED8  C0 41 00 CC */	lfs f2, 0xcc(r1)
/* 80117F7C 00114EDC  EC 01 00 2A */	fadds f0, f1, f0
/* 80117F80 00114EE0  C0 82 96 68 */	lfs f4, lbl_805AB388@sda21(r2)
/* 80117F84 00114EE4  EC 63 10 2A */	fadds f3, f3, f2
/* 80117F88 00114EE8  C0 41 00 DC */	lfs f2, 0xdc(r1)
/* 80117F8C 00114EEC  C0 21 00 D0 */	lfs f1, 0xd0(r1)
/* 80117F90 00114EF0  EC 04 00 32 */	fmuls f0, f4, f0
/* 80117F94 00114EF4  EC 22 08 2A */	fadds f1, f2, f1
/* 80117F98 00114EF8  EC 44 00 F2 */	fmuls f2, f4, f3
/* 80117F9C 00114EFC  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80117FA0 00114F00  EC 04 00 72 */	fmuls f0, f4, f1
/* 80117FA4 00114F04  D0 5D 00 04 */	stfs f2, 4(r29)
/* 80117FA8 00114F08  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80117FAC 00114F0C  93 FA 00 00 */	stw r31, 0(r26)
lbl_80117FB0:
/* 80117FB0 00114F10  C0 61 00 F0 */	lfs f3, 0xf0(r1)
/* 80117FB4 00114F14  C0 81 00 EC */	lfs f4, 0xec(r1)
/* 80117FB8 00114F18  EC 3E 00 F2 */	fmuls f1, f30, f3
/* 80117FBC 00114F1C  C0 A1 00 F4 */	lfs f5, 0xf4(r1)
/* 80117FC0 00114F20  C0 02 96 6C */	lfs f0, lbl_805AB38C@sda21(r2)
/* 80117FC4 00114F24  EC 3D 09 3A */	fmadds f1, f29, f4, f1
/* 80117FC8 00114F28  EC 5F 09 7A */	fmadds f2, f31, f5, f1
/* 80117FCC 00114F2C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80117FD0 00114F30  4C 41 13 82 */	cror 2, 1, 2
/* 80117FD4 00114F34  40 82 02 B4 */	bne lbl_80118288
/* 80117FD8 00114F38  EC 23 00 F2 */	fmuls f1, f3, f3
/* 80117FDC 00114F3C  C0 02 96 70 */	lfs f0, lbl_805AB390@sda21(r2)
/* 80117FE0 00114F40  EC 24 09 3A */	fmadds f1, f4, f4, f1
/* 80117FE4 00114F44  EC 25 09 7A */	fmadds f1, f5, f5, f1
/* 80117FE8 00114F48  EC C2 08 24 */	fdivs f6, f2, f1
/* 80117FEC 00114F4C  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 80117FF0 00114F50  40 80 02 98 */	bge lbl_80118288
/* 80117FF4 00114F54  EC A0 30 28 */	fsubs f5, f0, f6
/* 80117FF8 00114F58  C0 39 00 04 */	lfs f1, 4(r25)
/* 80117FFC 00114F5C  EC 9C 01 B2 */	fmuls f4, f28, f6
/* 80118000 00114F60  C0 19 00 00 */	lfs f0, 0(r25)
/* 80118004 00114F64  EC 7B 01 B2 */	fmuls f3, f27, f6
/* 80118008 00114F68  C0 59 00 08 */	lfs f2, 8(r25)
/* 8011800C 00114F6C  EF F9 21 7A */	fmadds f31, f25, f5, f4
/* 80118010 00114F70  EF D8 19 7A */	fmadds f30, f24, f5, f3
/* 80118014 00114F74  EC 7A 01 B2 */	fmuls f3, f26, f6
/* 80118018 00114F78  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8011801C 00114F7C  EC 81 F0 28 */	fsubs f4, f1, f30
/* 80118020 00114F80  EF B7 19 7A */	fmadds f29, f23, f5, f3
/* 80118024 00114F84  EC 20 00 32 */	fmuls f1, f0, f0
/* 80118028 00114F88  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8011802C 00114F8C  EC 04 01 32 */	fmuls f0, f4, f4
/* 80118030 00114F90  EC 42 E8 28 */	fsubs f2, f2, f29
/* 80118034 00114F94  D0 81 00 C0 */	stfs f4, 0xc0(r1)
/* 80118038 00114F98  EC 01 00 2A */	fadds f0, f1, f0
/* 8011803C 00114F9C  EC 22 00 B2 */	fmuls f1, f2, f2
/* 80118040 00114FA0  D0 41 00 C4 */	stfs f2, 0xc4(r1)
/* 80118044 00114FA4  EC 61 00 2A */	fadds f3, f1, f0
/* 80118048 00114FA8  FC 03 B0 40 */	fcmpo cr0, f3, f22
/* 8011804C 00114FAC  40 80 02 3C */	bge lbl_80118288
/* 80118050 00114FB0  D3 FB 00 00 */	stfs f31, 0(r27)
/* 80118054 00114FB4  EC 59 F8 28 */	fsubs f2, f25, f31
/* 80118058 00114FB8  EC 38 F0 28 */	fsubs f1, f24, f30
/* 8011805C 00114FBC  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80118060 00114FC0  D3 DB 00 04 */	stfs f30, 4(r27)
/* 80118064 00114FC4  EC 17 E8 28 */	fsubs f0, f23, f29
/* 80118068 00114FC8  FE C0 18 90 */	fmr f22, f3
/* 8011806C 00114FCC  D3 BB 00 08 */	stfs f29, 8(r27)
/* 80118070 00114FD0  C0 61 00 EC */	lfs f3, 0xec(r1)
/* 80118074 00114FD4  D0 7C 00 00 */	stfs f3, 0(r28)
/* 80118078 00114FD8  C0 61 00 F0 */	lfs f3, 0xf0(r1)
/* 8011807C 00114FDC  D0 7C 00 04 */	stfs f3, 4(r28)
/* 80118080 00114FE0  C0 61 00 F4 */	lfs f3, 0xf4(r1)
/* 80118084 00114FE4  D0 7C 00 08 */	stfs f3, 8(r28)
/* 80118088 00114FE8  93 FA 00 00 */	stw r31, 0(r26)
/* 8011808C 00114FEC  C0 7C 00 00 */	lfs f3, 0(r28)
/* 80118090 00114FF0  D0 7D 00 00 */	stfs f3, 0(r29)
/* 80118094 00114FF4  C0 7C 00 04 */	lfs f3, 4(r28)
/* 80118098 00114FF8  D0 7D 00 04 */	stfs f3, 4(r29)
/* 8011809C 00114FFC  C0 7C 00 08 */	lfs f3, 8(r28)
/* 801180A0 00115000  D0 7D 00 08 */	stfs f3, 8(r29)
/* 801180A4 00115004  D0 41 00 B0 */	stfs f2, 0xb0(r1)
/* 801180A8 00115008  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 801180AC 0011500C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 801180B0 00115010  48 1F C8 09 */	bl Magnitude__9CVector3fCFv
/* 801180B4 00115014  FE E0 08 90 */	fmr f23, f1
/* 801180B8 00115018  FC 17 A8 40 */	fcmpo cr0, f23, f21
/* 801180BC 0011501C  40 80 00 9C */	bge lbl_80118158
/* 801180C0 00115020  38 61 00 8C */	addi r3, r1, 0x8c
/* 801180C4 00115024  38 81 00 EC */	addi r4, r1, 0xec
/* 801180C8 00115028  48 1F C7 89 */	bl AsNormalized__9CVector3fCFv
/* 801180CC 0011502C  38 61 00 98 */	addi r3, r1, 0x98
/* 801180D0 00115030  38 81 00 EC */	addi r4, r1, 0xec
/* 801180D4 00115034  48 1F C7 7D */	bl AsNormalized__9CVector3fCFv
/* 801180D8 00115038  38 61 00 A4 */	addi r3, r1, 0xa4
/* 801180DC 0011503C  38 81 00 F8 */	addi r4, r1, 0xf8
/* 801180E0 00115040  48 1F C7 71 */	bl AsNormalized__9CVector3fCFv
/* 801180E4 00115044  ED 37 A0 24 */	fdivs f9, f23, f20
/* 801180E8 00115048  C0 82 96 70 */	lfs f4, lbl_805AB390@sda21(r2)
/* 801180EC 0011504C  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 801180F0 00115050  C0 A1 00 90 */	lfs f5, 0x90(r1)
/* 801180F4 00115054  C0 61 00 94 */	lfs f3, 0x94(r1)
/* 801180F8 00115058  C0 41 00 A4 */	lfs f2, 0xa4(r1)
/* 801180FC 0011505C  C0 21 00 98 */	lfs f1, 0x98(r1)
/* 80118100 00115060  ED 04 48 28 */	fsubs f8, f4, f9
/* 80118104 00115064  C0 C1 00 A8 */	lfs f6, 0xa8(r1)
/* 80118108 00115068  EC 00 02 72 */	fmuls f0, f0, f9
/* 8011810C 0011506C  C0 81 00 9C */	lfs f4, 0x9c(r1)
/* 80118110 00115070  EC 22 08 2A */	fadds f1, f2, f1
/* 80118114 00115074  C0 E2 96 68 */	lfs f7, lbl_805AB388@sda21(r2)
/* 80118118 00115078  EC C6 20 2A */	fadds f6, f6, f4
/* 8011811C 0011507C  C0 81 00 AC */	lfs f4, 0xac(r1)
/* 80118120 00115080  C0 41 00 A0 */	lfs f2, 0xa0(r1)
/* 80118124 00115084  EC 27 00 72 */	fmuls f1, f7, f1
/* 80118128 00115088  EC A5 02 72 */	fmuls f5, f5, f9
/* 8011812C 0011508C  EC 44 10 2A */	fadds f2, f4, f2
/* 80118130 00115090  EC 87 01 B2 */	fmuls f4, f7, f6
/* 80118134 00115094  EC 01 02 3A */	fmadds f0, f1, f8, f0
/* 80118138 00115098  EC 47 00 B2 */	fmuls f2, f7, f2
/* 8011813C 0011509C  EC 23 02 72 */	fmuls f1, f3, f9
/* 80118140 001150A0  EC 64 2A 3A */	fmadds f3, f4, f8, f5
/* 80118144 001150A4  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80118148 001150A8  EC 02 0A 3A */	fmadds f0, f2, f8, f1
/* 8011814C 001150AC  D0 7D 00 04 */	stfs f3, 4(r29)
/* 80118150 001150B0  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80118154 001150B4  48 00 01 34 */	b lbl_80118288
lbl_80118158:
/* 80118158 001150B8  7F E4 FB 78 */	mr r4, r31
/* 8011815C 001150BC  7F 05 C3 78 */	mr r5, r24
/* 80118160 001150C0  38 61 00 30 */	addi r3, r1, 0x30
/* 80118164 001150C4  38 C0 00 00 */	li r6, 0
/* 80118168 001150C8  48 00 04 A5 */	bl NextWaypoint__25CScriptSpiderBallWaypointCFRC13CStateManagerQ225CScriptSpiderBallWaypoint20ECheckActiveWaypoint
/* 8011816C 001150CC  A0 61 00 30 */	lhz r3, 0x30(r1)
/* 80118170 001150D0  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80118174 001150D4  7C 03 00 40 */	cmplw r3, r0
/* 80118178 001150D8  41 82 01 10 */	beq lbl_80118288
/* 8011817C 001150DC  EC 5F E0 28 */	fsubs f2, f31, f28
/* 80118180 001150E0  38 61 00 80 */	addi r3, r1, 0x80
/* 80118184 001150E4  EC 3E D8 28 */	fsubs f1, f30, f27
/* 80118188 001150E8  EC 1D D0 28 */	fsubs f0, f29, f26
/* 8011818C 001150EC  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 80118190 001150F0  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 80118194 001150F4  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80118198 001150F8  48 1F C7 21 */	bl Magnitude__9CVector3fCFv
/* 8011819C 001150FC  FE E0 08 90 */	fmr f23, f1
/* 801181A0 00115100  FC 17 A0 40 */	fcmpo cr0, f23, f20
/* 801181A4 00115104  40 80 00 E4 */	bge lbl_80118288
/* 801181A8 00115108  7F E4 FB 78 */	mr r4, r31
/* 801181AC 0011510C  7F 05 C3 78 */	mr r5, r24
/* 801181B0 00115110  38 61 00 28 */	addi r3, r1, 0x28
/* 801181B4 00115114  38 C0 00 00 */	li r6, 0
/* 801181B8 00115118  48 00 04 55 */	bl NextWaypoint__25CScriptSpiderBallWaypointCFRC13CStateManagerQ225CScriptSpiderBallWaypoint20ECheckActiveWaypoint
/* 801181BC 0011511C  A0 01 00 28 */	lhz r0, 0x28(r1)
/* 801181C0 00115120  7F 03 C3 78 */	mr r3, r24
/* 801181C4 00115124  38 81 00 2C */	addi r4, r1, 0x2c
/* 801181C8 00115128  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 801181CC 0011512C  4B F3 43 D9 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801181D0 00115130  C0 43 00 50 */	lfs f2, 0x50(r3)
/* 801181D4 00115134  38 81 00 EC */	addi r4, r1, 0xec
/* 801181D8 00115138  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 801181DC 0011513C  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801181E0 00115140  EC 42 D8 28 */	fsubs f2, f2, f27
/* 801181E4 00115144  EC 21 D0 28 */	fsubs f1, f1, f26
/* 801181E8 00115148  38 61 00 5C */	addi r3, r1, 0x5c
/* 801181EC 0011514C  EC 00 E0 28 */	fsubs f0, f0, f28
/* 801181F0 00115150  D0 41 00 E4 */	stfs f2, 0xe4(r1)
/* 801181F4 00115154  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 801181F8 00115158  D0 21 00 E8 */	stfs f1, 0xe8(r1)
/* 801181FC 0011515C  48 1F C6 55 */	bl AsNormalized__9CVector3fCFv
/* 80118200 00115160  38 61 00 68 */	addi r3, r1, 0x68
/* 80118204 00115164  38 81 00 EC */	addi r4, r1, 0xec
/* 80118208 00115168  48 1F C6 49 */	bl AsNormalized__9CVector3fCFv
/* 8011820C 0011516C  38 61 00 74 */	addi r3, r1, 0x74
/* 80118210 00115170  38 81 00 E0 */	addi r4, r1, 0xe0
/* 80118214 00115174  48 1F C6 3D */	bl AsNormalized__9CVector3fCFv
/* 80118218 00115178  ED 37 A0 24 */	fdivs f9, f23, f20
/* 8011821C 0011517C  C0 82 96 70 */	lfs f4, lbl_805AB390@sda21(r2)
/* 80118220 00115180  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80118224 00115184  C0 A1 00 60 */	lfs f5, 0x60(r1)
/* 80118228 00115188  C0 61 00 64 */	lfs f3, 0x64(r1)
/* 8011822C 0011518C  C0 41 00 74 */	lfs f2, 0x74(r1)
/* 80118230 00115190  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 80118234 00115194  ED 04 48 28 */	fsubs f8, f4, f9
/* 80118238 00115198  C0 C1 00 78 */	lfs f6, 0x78(r1)
/* 8011823C 0011519C  EC 00 02 72 */	fmuls f0, f0, f9
/* 80118240 001151A0  C0 81 00 6C */	lfs f4, 0x6c(r1)
/* 80118244 001151A4  EC 22 08 2A */	fadds f1, f2, f1
/* 80118248 001151A8  C0 E2 96 68 */	lfs f7, lbl_805AB388@sda21(r2)
/* 8011824C 001151AC  EC C6 20 2A */	fadds f6, f6, f4
/* 80118250 001151B0  C0 81 00 7C */	lfs f4, 0x7c(r1)
/* 80118254 001151B4  C0 41 00 70 */	lfs f2, 0x70(r1)
/* 80118258 001151B8  EC 27 00 72 */	fmuls f1, f7, f1
/* 8011825C 001151BC  EC A5 02 72 */	fmuls f5, f5, f9
/* 80118260 001151C0  EC 44 10 2A */	fadds f2, f4, f2
/* 80118264 001151C4  EC 87 01 B2 */	fmuls f4, f7, f6
/* 80118268 001151C8  EC 01 02 3A */	fmadds f0, f1, f8, f0
/* 8011826C 001151CC  EC 47 00 B2 */	fmuls f2, f7, f2
/* 80118270 001151D0  EC 23 02 72 */	fmuls f1, f3, f9
/* 80118274 001151D4  EC 64 2A 3A */	fmadds f3, f4, f8, f5
/* 80118278 001151D8  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8011827C 001151DC  EC 02 0A 3A */	fmadds f0, f2, f8, f1
/* 80118280 001151E0  D0 7D 00 04 */	stfs f3, 4(r29)
/* 80118284 001151E4  D0 1D 00 08 */	stfs f0, 8(r29)
lbl_80118288:
/* 80118288 001151E8  C0 41 00 EC */	lfs f2, 0xec(r1)
/* 8011828C 001151EC  FF 20 E0 90 */	fmr f25, f28
/* 80118290 001151F0  C0 21 00 F0 */	lfs f1, 0xf0(r1)
/* 80118294 001151F4  FF 00 D8 90 */	fmr f24, f27
/* 80118298 001151F8  C0 01 00 F4 */	lfs f0, 0xf4(r1)
/* 8011829C 001151FC  FE E0 D0 90 */	fmr f23, f26
/* 801182A0 00115200  D0 41 00 F8 */	stfs f2, 0xf8(r1)
/* 801182A4 00115204  3A E0 00 01 */	li r23, 1
/* 801182A8 00115208  D0 21 00 FC */	stfs f1, 0xfc(r1)
/* 801182AC 0011520C  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 801182B0 00115210  48 00 00 A0 */	b lbl_80118350
lbl_801182B4:
/* 801182B4 00115214  7F E4 FB 78 */	mr r4, r31
/* 801182B8 00115218  7F 05 C3 78 */	mr r5, r24
/* 801182BC 0011521C  38 61 00 20 */	addi r3, r1, 0x20
/* 801182C0 00115220  3A E0 00 01 */	li r23, 1
/* 801182C4 00115224  38 C0 00 00 */	li r6, 0
/* 801182C8 00115228  48 00 03 45 */	bl NextWaypoint__25CScriptSpiderBallWaypointCFRC13CStateManagerQ225CScriptSpiderBallWaypoint20ECheckActiveWaypoint
/* 801182CC 0011522C  A0 01 00 20 */	lhz r0, 0x20(r1)
/* 801182D0 00115230  7F 03 C3 78 */	mr r3, r24
/* 801182D4 00115234  38 81 00 24 */	addi r4, r1, 0x24
/* 801182D8 00115238  B0 01 00 24 */	sth r0, 0x24(r1)
/* 801182DC 0011523C  4B F3 42 C9 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801182E0 00115240  C3 23 00 40 */	lfs f25, 0x40(r3)
/* 801182E4 00115244  7C 7F 1B 78 */	mr r31, r3
/* 801182E8 00115248  C3 03 00 50 */	lfs f24, 0x50(r3)
/* 801182EC 0011524C  C2 E3 00 60 */	lfs f23, 0x60(r3)
/* 801182F0 00115250  48 00 00 60 */	b lbl_80118350
lbl_801182F4:
/* 801182F4 00115254  7F E4 FB 78 */	mr r4, r31
/* 801182F8 00115258  7F 05 C3 78 */	mr r5, r24
/* 801182FC 0011525C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80118300 00115260  38 C0 00 01 */	li r6, 1
/* 80118304 00115264  48 00 03 09 */	bl NextWaypoint__25CScriptSpiderBallWaypointCFRC13CStateManagerQ225CScriptSpiderBallWaypoint20ECheckActiveWaypoint
/* 80118308 00115268  A0 61 00 1C */	lhz r3, 0x1c(r1)
/* 8011830C 0011526C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80118310 00115270  7C 03 00 40 */	cmplw r3, r0
/* 80118314 00115274  41 82 00 38 */	beq lbl_8011834C
/* 80118318 00115278  7F E4 FB 78 */	mr r4, r31
/* 8011831C 0011527C  7F 05 C3 78 */	mr r5, r24
/* 80118320 00115280  38 61 00 14 */	addi r3, r1, 0x14
/* 80118324 00115284  38 C0 00 01 */	li r6, 1
/* 80118328 00115288  48 00 02 E5 */	bl NextWaypoint__25CScriptSpiderBallWaypointCFRC13CStateManagerQ225CScriptSpiderBallWaypoint20ECheckActiveWaypoint
/* 8011832C 0011528C  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 80118330 00115290  7F 03 C3 78 */	mr r3, r24
/* 80118334 00115294  38 81 00 18 */	addi r4, r1, 0x18
/* 80118338 00115298  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8011833C 0011529C  4B F3 42 69 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80118340 001152A0  3A E0 00 00 */	li r23, 0
/* 80118344 001152A4  7C 7F 1B 78 */	mr r31, r3
/* 80118348 001152A8  48 00 00 08 */	b lbl_80118350
lbl_8011834C:
/* 8011834C 001152AC  3B C0 00 01 */	li r30, 1
lbl_80118350:
/* 80118350 001152B0  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80118354 001152B4  41 82 FA F0 */	beq lbl_80117E44
/* 80118358 001152B8  C0 39 00 04 */	lfs f1, 4(r25)
/* 8011835C 001152BC  C0 19 00 00 */	lfs f0, 0(r25)
/* 80118360 001152C0  EC 41 C0 28 */	fsubs f2, f1, f24
/* 80118364 001152C4  C0 39 00 08 */	lfs f1, 8(r25)
/* 80118368 001152C8  EC 60 C8 28 */	fsubs f3, f0, f25
/* 8011836C 001152CC  EC 81 B8 28 */	fsubs f4, f1, f23
/* 80118370 001152D0  EC 02 00 B2 */	fmuls f0, f2, f2
/* 80118374 001152D4  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 80118378 001152D8  EC 23 00 F2 */	fmuls f1, f3, f3
/* 8011837C 001152DC  EC 44 01 32 */	fmuls f2, f4, f4
/* 80118380 001152E0  D0 61 00 50 */	stfs f3, 0x50(r1)
/* 80118384 001152E4  EC 01 00 2A */	fadds f0, f1, f0
/* 80118388 001152E8  D0 81 00 58 */	stfs f4, 0x58(r1)
/* 8011838C 001152EC  EC 02 00 2A */	fadds f0, f2, f0
/* 80118390 001152F0  FC 00 B0 40 */	fcmpo cr0, f0, f22
/* 80118394 001152F4  40 80 00 A0 */	bge lbl_80118434
/* 80118398 001152F8  D3 3B 00 00 */	stfs f25, 0(r27)
/* 8011839C 001152FC  7F E4 FB 78 */	mr r4, r31
/* 801183A0 00115300  7F 05 C3 78 */	mr r5, r24
/* 801183A4 00115304  38 61 00 10 */	addi r3, r1, 0x10
/* 801183A8 00115308  D3 1B 00 04 */	stfs f24, 4(r27)
/* 801183AC 0011530C  38 C0 00 00 */	li r6, 0
/* 801183B0 00115310  D2 FB 00 08 */	stfs f23, 8(r27)
/* 801183B4 00115314  48 00 01 A1 */	bl PreviousWaypoint__25CScriptSpiderBallWaypointCFRC13CStateManagerQ225CScriptSpiderBallWaypoint20ECheckActiveWaypoint
/* 801183B8 00115318  A0 61 00 10 */	lhz r3, 0x10(r1)
/* 801183BC 0011531C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801183C0 00115320  7C 03 00 40 */	cmplw r3, r0
/* 801183C4 00115324  41 82 00 6C */	beq lbl_80118430
/* 801183C8 00115328  7F E4 FB 78 */	mr r4, r31
/* 801183CC 0011532C  7F 05 C3 78 */	mr r5, r24
/* 801183D0 00115330  38 61 00 08 */	addi r3, r1, 8
/* 801183D4 00115334  38 C0 00 00 */	li r6, 0
/* 801183D8 00115338  48 00 01 7D */	bl PreviousWaypoint__25CScriptSpiderBallWaypointCFRC13CStateManagerQ225CScriptSpiderBallWaypoint20ECheckActiveWaypoint
/* 801183DC 0011533C  A0 01 00 08 */	lhz r0, 8(r1)
/* 801183E0 00115340  7F 03 C3 78 */	mr r3, r24
/* 801183E4 00115344  38 81 00 0C */	addi r4, r1, 0xc
/* 801183E8 00115348  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801183EC 0011534C  4B F3 41 B9 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801183F0 00115350  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801183F4 00115354  7C 7F 1B 78 */	mr r31, r3
/* 801183F8 00115358  C0 43 00 50 */	lfs f2, 0x50(r3)
/* 801183FC 0011535C  EC 19 00 28 */	fsubs f0, f25, f0
/* 80118400 00115360  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 80118404 00115364  EC 58 10 28 */	fsubs f2, f24, f2
/* 80118408 00115368  EC 37 08 28 */	fsubs f1, f23, f1
/* 8011840C 0011536C  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80118410 00115370  D0 5C 00 04 */	stfs f2, 4(r28)
/* 80118414 00115374  D0 3C 00 08 */	stfs f1, 8(r28)
/* 80118418 00115378  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8011841C 0011537C  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80118420 00115380  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80118424 00115384  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80118428 00115388  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8011842C 0011538C  D0 1D 00 08 */	stfs f0, 8(r29)
lbl_80118430:
/* 80118430 00115390  93 FA 00 00 */	stw r31, 0(r26)
lbl_80118434:
/* 80118434 00115394  E3 E1 01 E8 */	psq_l f31, 488(r1), 0, qr0
/* 80118438 00115398  CB E1 01 E0 */	lfd f31, 0x1e0(r1)
/* 8011843C 0011539C  E3 C1 01 D8 */	psq_l f30, 472(r1), 0, qr0
/* 80118440 001153A0  CB C1 01 D0 */	lfd f30, 0x1d0(r1)
/* 80118444 001153A4  E3 A1 01 C8 */	psq_l f29, 456(r1), 0, qr0
/* 80118448 001153A8  CB A1 01 C0 */	lfd f29, 0x1c0(r1)
/* 8011844C 001153AC  E3 81 01 B8 */	psq_l f28, 440(r1), 0, qr0
/* 80118450 001153B0  CB 81 01 B0 */	lfd f28, 0x1b0(r1)
/* 80118454 001153B4  E3 61 01 A8 */	psq_l f27, 424(r1), 0, qr0
/* 80118458 001153B8  CB 61 01 A0 */	lfd f27, 0x1a0(r1)
/* 8011845C 001153BC  E3 41 01 98 */	psq_l f26, 408(r1), 0, qr0
/* 80118460 001153C0  CB 41 01 90 */	lfd f26, 0x190(r1)
/* 80118464 001153C4  E3 21 01 88 */	psq_l f25, 392(r1), 0, qr0
/* 80118468 001153C8  CB 21 01 80 */	lfd f25, 0x180(r1)
/* 8011846C 001153CC  E3 01 01 78 */	psq_l f24, 376(r1), 0, qr0
/* 80118470 001153D0  CB 01 01 70 */	lfd f24, 0x170(r1)
/* 80118474 001153D4  E2 E1 01 68 */	psq_l f23, 360(r1), 0, qr0
/* 80118478 001153D8  CA E1 01 60 */	lfd f23, 0x160(r1)
/* 8011847C 001153DC  E2 C1 01 58 */	psq_l f22, 344(r1), 0, qr0
/* 80118480 001153E0  CA C1 01 50 */	lfd f22, 0x150(r1)
/* 80118484 001153E4  E2 A1 01 48 */	psq_l f21, 328(r1), 0, qr0
/* 80118488 001153E8  CA A1 01 40 */	lfd f21, 0x140(r1)
/* 8011848C 001153EC  E2 81 01 38 */	psq_l f20, 312(r1), 0, qr0
/* 80118490 001153F0  CA 81 01 30 */	lfd f20, 0x130(r1)
/* 80118494 001153F4  BA E1 01 0C */	lmw r23, 0x10c(r1)
/* 80118498 001153F8  80 01 01 F4 */	lwz r0, 0x1f4(r1)
/* 8011849C 001153FC  7C 08 03 A6 */	mtlr r0
/* 801184A0 00115400  38 21 01 F0 */	addi r1, r1, 0x1f0
/* 801184A4 00115404  4E 80 00 20 */	blr

.global AddPreviousWaypoint__25CScriptSpiderBallWaypointF9TUniqueId
AddPreviousWaypoint__25CScriptSpiderBallWaypointF9TUniqueId:
/* 801184A8 00115408  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801184AC 0011540C  7C 08 02 A6 */	mflr r0
/* 801184B0 00115410  90 01 00 14 */	stw r0, 0x14(r1)
/* 801184B4 00115414  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801184B8 00115418  7C 9F 23 78 */	mr r31, r4
/* 801184BC 0011541C  93 C1 00 08 */	stw r30, 8(r1)
/* 801184C0 00115420  7C 7E 1B 78 */	mr r30, r3
/* 801184C4 00115424  80 03 00 F0 */	lwz r0, 0xf0(r3)
/* 801184C8 00115428  80 A3 00 F4 */	lwz r5, 0xf4(r3)
/* 801184CC 0011542C  7C 00 28 00 */	cmpw r0, r5
/* 801184D0 00115430  40 82 00 1C */	bne lbl_801184EC
/* 801184D4 00115434  2C 05 00 00 */	cmpwi r5, 0
/* 801184D8 00115438  38 7E 00 EC */	addi r3, r30, 0xec
/* 801184DC 0011543C  38 80 00 04 */	li r4, 4
/* 801184E0 00115440  41 82 00 08 */	beq lbl_801184E8
/* 801184E4 00115444  54 A4 08 3C */	slwi r4, r5, 1
lbl_801184E8:
/* 801184E8 00115448  4B EF 3F 21 */	bl "reserve__Q24rstl45vector<9TUniqueId,Q24rstl17rmemory_allocator>Fi"
lbl_801184EC:
/* 801184EC 0011544C  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 801184F0 00115450  80 BE 00 F4 */	lwz r5, 0xf4(r30)
/* 801184F4 00115454  7C 00 28 00 */	cmpw r0, r5
/* 801184F8 00115458  41 80 00 1C */	blt lbl_80118514
/* 801184FC 0011545C  2C 05 00 00 */	cmpwi r5, 0
/* 80118500 00115460  38 7E 00 EC */	addi r3, r30, 0xec
/* 80118504 00115464  38 80 00 04 */	li r4, 4
/* 80118508 00115468  41 82 00 08 */	beq lbl_80118510
/* 8011850C 0011546C  54 A4 08 3C */	slwi r4, r5, 1
lbl_80118510:
/* 80118510 00115470  4B EF 3E F9 */	bl "reserve__Q24rstl45vector<9TUniqueId,Q24rstl17rmemory_allocator>Fi"
lbl_80118514:
/* 80118514 00115474  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80118518 00115478  80 7E 00 F8 */	lwz r3, 0xf8(r30)
/* 8011851C 0011547C  54 00 08 3C */	slwi r0, r0, 1
/* 80118520 00115480  7C 63 02 15 */	add. r3, r3, r0
/* 80118524 00115484  41 82 00 0C */	beq lbl_80118530
/* 80118528 00115488  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8011852C 0011548C  B0 03 00 00 */	sth r0, 0(r3)
lbl_80118530:
/* 80118530 00115490  80 7E 00 F0 */	lwz r3, 0xf0(r30)
/* 80118534 00115494  38 03 00 01 */	addi r0, r3, 1
/* 80118538 00115498  90 1E 00 F0 */	stw r0, 0xf0(r30)
/* 8011853C 0011549C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80118540 001154A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80118544 001154A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80118548 001154A8  7C 08 03 A6 */	mtlr r0
/* 8011854C 001154AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80118550 001154B0  4E 80 00 20 */	blr

.global PreviousWaypoint__25CScriptSpiderBallWaypointCFRC13CStateManagerQ225CScriptSpiderBallWaypoint20ECheckActiveWaypoint
PreviousWaypoint__25CScriptSpiderBallWaypointCFRC13CStateManagerQ225CScriptSpiderBallWaypoint20ECheckActiveWaypoint:
/* 80118554 001154B4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80118558 001154B8  7C 08 02 A6 */	mflr r0
/* 8011855C 001154BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80118560 001154C0  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 80118564 001154C4  7C 7F 1B 78 */	mr r31, r3
/* 80118568 001154C8  7C 9A 23 78 */	mr r26, r4
/* 8011856C 001154CC  7C BB 2B 78 */	mr r27, r5
/* 80118570 001154D0  7C DC 33 78 */	mr r28, r6
/* 80118574 001154D4  3B A0 00 00 */	li r29, 0
/* 80118578 001154D8  3B C0 00 00 */	li r30, 0
/* 8011857C 001154DC  48 00 00 68 */	b lbl_801185E4
lbl_80118580:
/* 80118580 001154E0  80 BA 00 F8 */	lwz r5, 0xf8(r26)
/* 80118584 001154E4  7F 63 DB 78 */	mr r3, r27
/* 80118588 001154E8  38 81 00 08 */	addi r4, r1, 8
/* 8011858C 001154EC  7C 05 F2 2E */	lhzx r0, r5, r30
/* 80118590 001154F0  B0 01 00 08 */	sth r0, 8(r1)
/* 80118594 001154F4  4B F3 40 11 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80118598 001154F8  28 03 00 00 */	cmplwi r3, 0
/* 8011859C 001154FC  41 82 00 40 */	beq lbl_801185DC
/* 801185A0 00115500  2C 1C 00 01 */	cmpwi r28, 1
/* 801185A4 00115504  40 82 00 18 */	bne lbl_801185BC
/* 801185A8 00115508  80 7A 00 F8 */	lwz r3, 0xf8(r26)
/* 801185AC 0011550C  57 A0 08 3C */	slwi r0, r29, 1
/* 801185B0 00115510  7C 03 02 2E */	lhzx r0, r3, r0
/* 801185B4 00115514  B0 1F 00 00 */	sth r0, 0(r31)
/* 801185B8 00115518  48 00 00 40 */	b lbl_801185F8
lbl_801185BC:
/* 801185BC 0011551C  88 03 00 30 */	lbz r0, 0x30(r3)
/* 801185C0 00115520  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801185C4 00115524  41 82 00 18 */	beq lbl_801185DC
/* 801185C8 00115528  80 7A 00 F8 */	lwz r3, 0xf8(r26)
/* 801185CC 0011552C  57 A0 08 3C */	slwi r0, r29, 1
/* 801185D0 00115530  7C 03 02 2E */	lhzx r0, r3, r0
/* 801185D4 00115534  B0 1F 00 00 */	sth r0, 0(r31)
/* 801185D8 00115538  48 00 00 20 */	b lbl_801185F8
lbl_801185DC:
/* 801185DC 0011553C  3B DE 00 02 */	addi r30, r30, 2
/* 801185E0 00115540  3B BD 00 01 */	addi r29, r29, 1
lbl_801185E4:
/* 801185E4 00115544  80 1A 00 F0 */	lwz r0, 0xf0(r26)
/* 801185E8 00115548  7C 1D 00 00 */	cmpw r29, r0
/* 801185EC 0011554C  41 80 FF 94 */	blt lbl_80118580
/* 801185F0 00115550  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801185F4 00115554  B0 1F 00 00 */	sth r0, 0(r31)
lbl_801185F8:
/* 801185F8 00115558  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 801185FC 0011555C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80118600 00115560  7C 08 03 A6 */	mtlr r0
/* 80118604 00115564  38 21 00 30 */	addi r1, r1, 0x30
/* 80118608 00115568  4E 80 00 20 */	blr

.global NextWaypoint__25CScriptSpiderBallWaypointCFRC13CStateManagerQ225CScriptSpiderBallWaypoint20ECheckActiveWaypoint
NextWaypoint__25CScriptSpiderBallWaypointCFRC13CStateManagerQ225CScriptSpiderBallWaypoint20ECheckActiveWaypoint:
/* 8011860C 0011556C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80118610 00115570  7C 08 02 A6 */	mflr r0
/* 80118614 00115574  90 01 00 34 */	stw r0, 0x34(r1)
/* 80118618 00115578  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 8011861C 0011557C  7C 9B 23 78 */	mr r27, r4
/* 80118620 00115580  7C 7F 1B 78 */	mr r31, r3
/* 80118624 00115584  7C BC 2B 78 */	mr r28, r5
/* 80118628 00115588  7C DD 33 78 */	mr r29, r6
/* 8011862C 0011558C  83 C4 00 2C */	lwz r30, 0x2c(r4)
/* 80118630 00115590  48 00 00 84 */	b lbl_801186B4
lbl_80118634:
/* 80118634 00115594  80 1E 00 00 */	lwz r0, 0(r30)
/* 80118638 00115598  2C 00 00 01 */	cmpwi r0, 1
/* 8011863C 0011559C  40 82 00 74 */	bne lbl_801186B0
/* 80118640 001155A0  80 1E 00 04 */	lwz r0, 4(r30)
/* 80118644 001155A4  2C 00 00 08 */	cmpwi r0, 8
/* 80118648 001155A8  40 82 00 68 */	bne lbl_801186B0
/* 8011864C 001155AC  80 1E 00 08 */	lwz r0, 8(r30)
/* 80118650 001155B0  7F 84 E3 78 */	mr r4, r28
/* 80118654 001155B4  38 61 00 0C */	addi r3, r1, 0xc
/* 80118658 001155B8  38 A1 00 14 */	addi r5, r1, 0x14
/* 8011865C 001155BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80118660 001155C0  4B F2 F8 BD */	bl GetIdForScript__13CStateManagerCF9TEditorId
/* 80118664 001155C4  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 80118668 001155C8  7F 83 E3 78 */	mr r3, r28
/* 8011866C 001155CC  38 81 00 08 */	addi r4, r1, 8
/* 80118670 001155D0  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80118674 001155D4  B0 01 00 08 */	sth r0, 8(r1)
/* 80118678 001155D8  4B F3 3F 2D */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8011867C 001155DC  28 03 00 00 */	cmplwi r3, 0
/* 80118680 001155E0  41 82 00 30 */	beq lbl_801186B0
/* 80118684 001155E4  2C 1D 00 01 */	cmpwi r29, 1
/* 80118688 001155E8  40 82 00 10 */	bne lbl_80118698
/* 8011868C 001155EC  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 80118690 001155F0  B0 1F 00 00 */	sth r0, 0(r31)
/* 80118694 001155F4  48 00 00 40 */	b lbl_801186D4
lbl_80118698:
/* 80118698 001155F8  88 03 00 30 */	lbz r0, 0x30(r3)
/* 8011869C 001155FC  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801186A0 00115600  41 82 00 10 */	beq lbl_801186B0
/* 801186A4 00115604  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 801186A8 00115608  B0 1F 00 00 */	sth r0, 0(r31)
/* 801186AC 0011560C  48 00 00 28 */	b lbl_801186D4
lbl_801186B0:
/* 801186B0 00115610  3B DE 00 0C */	addi r30, r30, 0xc
lbl_801186B4:
/* 801186B4 00115614  80 1B 00 24 */	lwz r0, 0x24(r27)
/* 801186B8 00115618  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 801186BC 0011561C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801186C0 00115620  7C 03 02 14 */	add r0, r3, r0
/* 801186C4 00115624  7C 1E 00 40 */	cmplw r30, r0
/* 801186C8 00115628  40 82 FF 6C */	bne lbl_80118634
/* 801186CC 0011562C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801186D0 00115630  B0 1F 00 00 */	sth r0, 0(r31)
lbl_801186D4:
/* 801186D4 00115634  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 801186D8 00115638  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801186DC 0011563C  7C 08 03 A6 */	mtlr r0
/* 801186E0 00115640  38 21 00 30 */	addi r1, r1, 0x30
/* 801186E4 00115644  4E 80 00 20 */	blr

.global AddPointToTouchBounds__25CScriptSpiderBallWaypointFRC9CVector3f
AddPointToTouchBounds__25CScriptSpiderBallWaypointFRC9CVector3f:
/* 801186E8 00115648  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801186EC 0011564C  7C 08 02 A6 */	mflr r0
/* 801186F0 00115650  90 01 00 34 */	stw r0, 0x34(r1)
/* 801186F4 00115654  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801186F8 00115658  7C 7F 1B 78 */	mr r31, r3
/* 801186FC 0011565C  88 03 01 14 */	lbz r0, 0x114(r3)
/* 80118700 00115660  28 00 00 00 */	cmplwi r0, 0
/* 80118704 00115664  40 82 00 94 */	bne lbl_80118798
/* 80118708 00115668  7C 85 23 78 */	mr r5, r4
/* 8011870C 0011566C  38 61 00 08 */	addi r3, r1, 8
/* 80118710 00115670  48 21 FD F9 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 80118714 00115674  88 1F 01 14 */	lbz r0, 0x114(r31)
/* 80118718 00115678  28 00 00 00 */	cmplwi r0, 0
/* 8011871C 0011567C  40 82 00 48 */	bne lbl_80118764
/* 80118720 00115680  34 7F 00 FC */	addic. r3, r31, 0xfc
/* 80118724 00115684  41 82 00 34 */	beq lbl_80118758
/* 80118728 00115688  C0 01 00 08 */	lfs f0, 8(r1)
/* 8011872C 0011568C  D0 03 00 00 */	stfs f0, 0(r3)
/* 80118730 00115690  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80118734 00115694  D0 03 00 04 */	stfs f0, 4(r3)
/* 80118738 00115698  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8011873C 0011569C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80118740 001156A0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80118744 001156A4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80118748 001156A8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8011874C 001156AC  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80118750 001156B0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80118754 001156B4  D0 03 00 14 */	stfs f0, 0x14(r3)
lbl_80118758:
/* 80118758 001156B8  38 00 00 01 */	li r0, 1
/* 8011875C 001156BC  98 1F 01 14 */	stb r0, 0x114(r31)
/* 80118760 001156C0  48 00 00 40 */	b lbl_801187A0
lbl_80118764:
/* 80118764 001156C4  80 61 00 08 */	lwz r3, 8(r1)
/* 80118768 001156C8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8011876C 001156CC  90 7F 00 FC */	stw r3, 0xfc(r31)
/* 80118770 001156D0  90 1F 01 00 */	stw r0, 0x100(r31)
/* 80118774 001156D4  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80118778 001156D8  90 1F 01 04 */	stw r0, 0x104(r31)
/* 8011877C 001156DC  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80118780 001156E0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80118784 001156E4  90 7F 01 08 */	stw r3, 0x108(r31)
/* 80118788 001156E8  90 1F 01 0C */	stw r0, 0x10c(r31)
/* 8011878C 001156EC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80118790 001156F0  90 1F 01 10 */	stw r0, 0x110(r31)
/* 80118794 001156F4  48 00 00 0C */	b lbl_801187A0
lbl_80118798:
/* 80118798 001156F8  38 7F 00 FC */	addi r3, r31, 0xfc
/* 8011879C 001156FC  48 21 F3 6D */	bl AccumulateBounds__6CAABoxFRC9CVector3f
lbl_801187A0:
/* 801187A0 00115700  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801187A4 00115704  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801187A8 00115708  7C 08 03 A6 */	mtlr r0
/* 801187AC 0011570C  38 21 00 30 */	addi r1, r1, 0x30
/* 801187B0 00115710  4E 80 00 20 */	blr

.global BuildWaypointListAndBounds__25CScriptSpiderBallWaypointFR13CStateManager
BuildWaypointListAndBounds__25CScriptSpiderBallWaypointFR13CStateManager:
/* 801187B4 00115714  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801187B8 00115718  7C 08 02 A6 */	mflr r0
/* 801187BC 0011571C  90 01 00 64 */	stw r0, 0x64(r1)
/* 801187C0 00115720  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 801187C4 00115724  7C 9F 23 78 */	mr r31, r4
/* 801187C8 00115728  93 C1 00 58 */	stw r30, 0x58(r1)
/* 801187CC 0011572C  7C 7E 1B 78 */	mr r30, r3
/* 801187D0 00115730  93 A1 00 54 */	stw r29, 0x54(r1)
/* 801187D4 00115734  93 81 00 50 */	stw r28, 0x50(r1)
/* 801187D8 00115738  3B 80 00 00 */	li r28, 0
/* 801187DC 0011573C  83 A3 00 2C */	lwz r29, 0x2c(r3)
/* 801187E0 00115740  48 00 00 74 */	b lbl_80118854
lbl_801187E4:
/* 801187E4 00115744  80 1D 00 00 */	lwz r0, 0(r29)
/* 801187E8 00115748  2C 00 00 01 */	cmpwi r0, 1
/* 801187EC 0011574C  40 82 00 64 */	bne lbl_80118850
/* 801187F0 00115750  80 1D 00 04 */	lwz r0, 4(r29)
/* 801187F4 00115754  2C 00 00 08 */	cmpwi r0, 8
/* 801187F8 00115758  40 82 00 58 */	bne lbl_80118850
/* 801187FC 0011575C  80 1D 00 08 */	lwz r0, 8(r29)
/* 80118800 00115760  7F E4 FB 78 */	mr r4, r31
/* 80118804 00115764  38 61 00 20 */	addi r3, r1, 0x20
/* 80118808 00115768  38 A1 00 28 */	addi r5, r1, 0x28
/* 8011880C 0011576C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80118810 00115770  4B F2 F7 0D */	bl GetIdForScript__13CStateManagerCF9TEditorId
/* 80118814 00115774  A0 61 00 20 */	lhz r3, 0x20(r1)
/* 80118818 00115778  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8011881C 0011577C  B0 61 00 24 */	sth r3, 0x24(r1)
/* 80118820 00115780  7C 03 00 40 */	cmplw r3, r0
/* 80118824 00115784  41 82 00 2C */	beq lbl_80118850
/* 80118828 00115788  B0 61 00 1C */	sth r3, 0x1c(r1)
/* 8011882C 0011578C  7F E3 FB 78 */	mr r3, r31
/* 80118830 00115790  38 81 00 1C */	addi r4, r1, 0x1c
/* 80118834 00115794  4B F3 3D 41 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80118838 00115798  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8011883C 0011579C  38 81 00 18 */	addi r4, r1, 0x18
/* 80118840 001157A0  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80118844 001157A4  B0 01 00 18 */	sth r0, 0x18(r1)
/* 80118848 001157A8  4B FF FC 61 */	bl AddPreviousWaypoint__25CScriptSpiderBallWaypointF9TUniqueId
/* 8011884C 001157AC  3B 9C 00 01 */	addi r28, r28, 1
lbl_80118850:
/* 80118850 001157B0  3B BD 00 0C */	addi r29, r29, 0xc
lbl_80118854:
/* 80118854 001157B4  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 80118858 001157B8  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 8011885C 001157BC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80118860 001157C0  7C 03 02 14 */	add r0, r3, r0
/* 80118864 001157C4  7C 1D 00 40 */	cmplw r29, r0
/* 80118868 001157C8  40 82 FF 7C */	bne lbl_801187E4
/* 8011886C 001157CC  2C 1C 00 00 */	cmpwi r28, 0
/* 80118870 001157D0  40 82 00 2C */	bne lbl_8011889C
/* 80118874 001157D4  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80118878 001157D8  7F C3 F3 78 */	mr r3, r30
/* 8011887C 001157DC  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80118880 001157E0  38 81 00 38 */	addi r4, r1, 0x38
/* 80118884 001157E4  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80118888 001157E8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8011888C 001157EC  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80118890 001157F0  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80118894 001157F4  4B FF FE 55 */	bl AddPointToTouchBounds__25CScriptSpiderBallWaypointFRC9CVector3f
/* 80118898 001157F8  48 00 00 80 */	b lbl_80118918
lbl_8011889C:
/* 8011889C 001157FC  7F DC F3 78 */	mr r28, r30
/* 801188A0 00115800  48 00 00 30 */	b lbl_801188D0
lbl_801188A4:
/* 801188A4 00115804  7F 84 E3 78 */	mr r4, r28
/* 801188A8 00115808  7F E5 FB 78 */	mr r5, r31
/* 801188AC 0011580C  38 61 00 0C */	addi r3, r1, 0xc
/* 801188B0 00115810  38 C0 00 01 */	li r6, 1
/* 801188B4 00115814  4B FF FD 59 */	bl NextWaypoint__25CScriptSpiderBallWaypointCFRC13CStateManagerQ225CScriptSpiderBallWaypoint20ECheckActiveWaypoint
/* 801188B8 00115818  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 801188BC 0011581C  7F E3 FB 78 */	mr r3, r31
/* 801188C0 00115820  38 81 00 10 */	addi r4, r1, 0x10
/* 801188C4 00115824  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801188C8 00115828  4B F3 3C AD */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801188CC 0011582C  7C 7C 1B 78 */	mr r28, r3
lbl_801188D0:
/* 801188D0 00115830  7F 84 E3 78 */	mr r4, r28
/* 801188D4 00115834  7F E5 FB 78 */	mr r5, r31
/* 801188D8 00115838  38 61 00 08 */	addi r3, r1, 8
/* 801188DC 0011583C  38 C0 00 01 */	li r6, 1
/* 801188E0 00115840  4B FF FD 2D */	bl NextWaypoint__25CScriptSpiderBallWaypointCFRC13CStateManagerQ225CScriptSpiderBallWaypoint20ECheckActiveWaypoint
/* 801188E4 00115844  A0 61 00 08 */	lhz r3, 8(r1)
/* 801188E8 00115848  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801188EC 0011584C  7C 03 00 40 */	cmplw r3, r0
/* 801188F0 00115850  40 82 FF B4 */	bne lbl_801188A4
/* 801188F4 00115854  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 801188F8 00115858  7F 83 E3 78 */	mr r3, r28
/* 801188FC 0011585C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80118900 00115860  38 81 00 2C */	addi r4, r1, 0x2c
/* 80118904 00115864  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80118908 00115868  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8011890C 0011586C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80118910 00115870  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80118914 00115874  4B FF FD D5 */	bl AddPointToTouchBounds__25CScriptSpiderBallWaypointFRC9CVector3f
lbl_80118918:
/* 80118918 00115878  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8011891C 0011587C  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80118920 00115880  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80118924 00115884  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 80118928 00115888  83 81 00 50 */	lwz r28, 0x50(r1)
/* 8011892C 0011588C  7C 08 03 A6 */	mtlr r0
/* 80118930 00115890  38 21 00 60 */	addi r1, r1, 0x60
/* 80118934 00115894  4E 80 00 20 */	blr

.global ClearWaypoints__25CScriptSpiderBallWaypointFv
ClearWaypoints__25CScriptSpiderBallWaypointFv:
/* 80118938 00115898  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8011893C 0011589C  38 00 00 00 */	li r0, 0
/* 80118940 001158A0  98 03 01 14 */	stb r0, 0x114(r3)
/* 80118944 001158A4  80 03 00 F0 */	lwz r0, 0xf0(r3)
/* 80118948 001158A8  80 83 00 F8 */	lwz r4, 0xf8(r3)
/* 8011894C 001158AC  54 00 08 3C */	slwi r0, r0, 1
/* 80118950 001158B0  7C 04 02 14 */	add r0, r4, r0
/* 80118954 001158B4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80118958 001158B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011895C 001158BC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80118960 001158C0  90 81 00 08 */	stw r4, 8(r1)
/* 80118964 001158C4  48 00 00 08 */	b lbl_8011896C
lbl_80118968:
/* 80118968 001158C8  38 84 00 02 */	addi r4, r4, 2
lbl_8011896C:
/* 8011896C 001158CC  7C 04 00 40 */	cmplw r4, r0
/* 80118970 001158D0  40 82 FF F8 */	bne lbl_80118968
/* 80118974 001158D4  38 00 00 00 */	li r0, 0
/* 80118978 001158D8  90 03 00 F0 */	stw r0, 0xf0(r3)
/* 8011897C 001158DC  38 21 00 20 */	addi r1, r1, 0x20
/* 80118980 001158E0  4E 80 00 20 */	blr

.global AcceptScriptMsg__25CScriptSpiderBallWaypointF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__25CScriptSpiderBallWaypointF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 80118984 001158E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80118988 001158E8  7C 08 02 A6 */	mflr r0
/* 8011898C 001158EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80118990 001158F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80118994 001158F4  7C DF 33 78 */	mr r31, r6
/* 80118998 001158F8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8011899C 001158FC  7C 9E 23 78 */	mr r30, r4
/* 801189A0 00115900  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801189A4 00115904  7C 7D 1B 78 */	mr r29, r3
/* 801189A8 00115908  A0 05 00 00 */	lhz r0, 0(r5)
/* 801189AC 0011590C  38 A1 00 08 */	addi r5, r1, 8
/* 801189B0 00115910  B0 01 00 08 */	sth r0, 8(r1)
/* 801189B4 00115914  4B F3 AC 61 */	bl AcceptScriptMsg__6CActorF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 801189B8 00115918  2C 1E 00 23 */	cmpwi r30, 0x23
/* 801189BC 0011591C  41 82 00 14 */	beq lbl_801189D0
/* 801189C0 00115920  40 80 00 40 */	bge lbl_80118A00
/* 801189C4 00115924  2C 1E 00 02 */	cmpwi r30, 2
/* 801189C8 00115928  41 82 00 18 */	beq lbl_801189E0
/* 801189CC 0011592C  48 00 00 34 */	b lbl_80118A00
lbl_801189D0:
/* 801189D0 00115930  7F A3 EB 78 */	mr r3, r29
/* 801189D4 00115934  7F E4 FB 78 */	mr r4, r31
/* 801189D8 00115938  4B FF FD DD */	bl BuildWaypointListAndBounds__25CScriptSpiderBallWaypointFR13CStateManager
/* 801189DC 0011593C  48 00 00 24 */	b lbl_80118A00
lbl_801189E0:
/* 801189E0 00115940  88 1D 00 30 */	lbz r0, 0x30(r29)
/* 801189E4 00115944  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801189E8 00115948  41 82 00 18 */	beq lbl_80118A00
/* 801189EC 0011594C  7F A3 EB 78 */	mr r3, r29
/* 801189F0 00115950  7F E5 FB 78 */	mr r5, r31
/* 801189F4 00115954  38 80 00 01 */	li r4, 1
/* 801189F8 00115958  38 C0 FF FF */	li r6, -1
/* 801189FC 0011595C  4B F3 86 C5 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
lbl_80118A00:
/* 80118A00 00115960  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80118A04 00115964  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80118A08 00115968  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80118A0C 0011596C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80118A10 00115970  7C 08 03 A6 */	mtlr r0
/* 80118A14 00115974  38 21 00 20 */	addi r1, r1, 0x20
/* 80118A18 00115978  4E 80 00 20 */	blr

.global __dt__25CScriptSpiderBallWaypointFv
__dt__25CScriptSpiderBallWaypointFv:
/* 80118A1C 0011597C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80118A20 00115980  7C 08 02 A6 */	mflr r0
/* 80118A24 00115984  90 01 00 24 */	stw r0, 0x24(r1)
/* 80118A28 00115988  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80118A2C 0011598C  7C 9F 23 78 */	mr r31, r4
/* 80118A30 00115990  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80118A34 00115994  7C 7E 1B 79 */	or. r30, r3, r3
/* 80118A38 00115998  41 82 00 84 */	beq lbl_80118ABC
/* 80118A3C 0011599C  3C 60 80 3E */	lis r3, lbl_803E02C8@ha
/* 80118A40 001159A0  34 1E 00 FC */	addic. r0, r30, 0xfc
/* 80118A44 001159A4  38 03 02 C8 */	addi r0, r3, lbl_803E02C8@l
/* 80118A48 001159A8  90 1E 00 00 */	stw r0, 0(r30)
/* 80118A4C 001159AC  41 82 00 0C */	beq lbl_80118A58
/* 80118A50 001159B0  38 00 00 00 */	li r0, 0
/* 80118A54 001159B4  98 1E 01 14 */	stb r0, 0x114(r30)
lbl_80118A58:
/* 80118A58 001159B8  34 1E 00 EC */	addic. r0, r30, 0xec
/* 80118A5C 001159BC  41 82 00 44 */	beq lbl_80118AA0
/* 80118A60 001159C0  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80118A64 001159C4  80 7E 00 F8 */	lwz r3, 0xf8(r30)
/* 80118A68 001159C8  54 00 08 3C */	slwi r0, r0, 1
/* 80118A6C 001159CC  7C 03 02 14 */	add r0, r3, r0
/* 80118A70 001159D0  90 61 00 0C */	stw r3, 0xc(r1)
/* 80118A74 001159D4  7C 64 1B 78 */	mr r4, r3
/* 80118A78 001159D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80118A7C 001159DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80118A80 001159E0  90 61 00 08 */	stw r3, 8(r1)
/* 80118A84 001159E4  48 00 00 08 */	b lbl_80118A8C
lbl_80118A88:
/* 80118A88 001159E8  38 84 00 02 */	addi r4, r4, 2
lbl_80118A8C:
/* 80118A8C 001159EC  7C 04 00 40 */	cmplw r4, r0
/* 80118A90 001159F0  40 82 FF F8 */	bne lbl_80118A88
/* 80118A94 001159F4  28 03 00 00 */	cmplwi r3, 0
/* 80118A98 001159F8  41 82 00 08 */	beq lbl_80118AA0
/* 80118A9C 001159FC  48 1F CE 95 */	bl Free__7CMemoryFPCv
lbl_80118AA0:
/* 80118AA0 00115A00  7F C3 F3 78 */	mr r3, r30
/* 80118AA4 00115A04  38 80 00 00 */	li r4, 0
/* 80118AA8 00115A08  4B F3 CC 49 */	bl __dt__6CActorFv
/* 80118AAC 00115A0C  7F E0 07 35 */	extsh. r0, r31
/* 80118AB0 00115A10  40 81 00 0C */	ble lbl_80118ABC
/* 80118AB4 00115A14  7F C3 F3 78 */	mr r3, r30
/* 80118AB8 00115A18  48 1F CE 79 */	bl Free__7CMemoryFPCv
lbl_80118ABC:
/* 80118ABC 00115A1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80118AC0 00115A20  7F C3 F3 78 */	mr r3, r30
/* 80118AC4 00115A24  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80118AC8 00115A28  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80118ACC 00115A2C  7C 08 03 A6 */	mtlr r0
/* 80118AD0 00115A30  38 21 00 20 */	addi r1, r1, 0x20
/* 80118AD4 00115A34  4E 80 00 20 */	blr

.global "__ct__25CScriptSpiderBallWaypointF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fbUi"
"__ct__25CScriptSpiderBallWaypointF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fbUi":
/* 80118AD8 00115A38  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 80118ADC 00115A3C  7C 08 02 A6 */	mflr r0
/* 80118AE0 00115A40  90 01 01 04 */	stw r0, 0x104(r1)
/* 80118AE4 00115A44  BF 21 00 E4 */	stmw r25, 0xe4(r1)
/* 80118AE8 00115A48  7C 7F 1B 78 */	mr r31, r3
/* 80118AEC 00115A4C  7C 99 23 78 */	mr r25, r4
/* 80118AF0 00115A50  7C BA 2B 78 */	mr r26, r5
/* 80118AF4 00115A54  7C DB 33 78 */	mr r27, r6
/* 80118AF8 00115A58  7C FC 3B 78 */	mr r28, r7
/* 80118AFC 00115A5C  7D 1D 43 78 */	mr r29, r8
/* 80118B00 00115A60  7D 3E 4B 78 */	mr r30, r9
/* 80118B04 00115A64  38 61 00 88 */	addi r3, r1, 0x88
/* 80118B08 00115A68  4B F2 1C 9D */	bl CModelDataNull__10CModelDataFv
/* 80118B0C 00115A6C  38 61 00 20 */	addi r3, r1, 0x20
/* 80118B10 00115A70  4B F0 23 29 */	bl None__16CActorParametersFv
/* 80118B14 00115A74  A0 8D A3 8C */	lhz r4, kInvalidUniqueId@sda21(r13)
/* 80118B18 00115A78  38 00 00 00 */	li r0, 0
/* 80118B1C 00115A7C  80 AD 8A 60 */	lwz r5, lbl_805A7620@sda21(r13)
/* 80118B20 00115A80  38 60 00 00 */	li r3, 0
/* 80118B24 00115A84  B0 81 00 10 */	sth r4, 0x10(r1)
/* 80118B28 00115A88  38 80 00 01 */	li r4, 1
/* 80118B2C 00115A8C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80118B30 00115A90  90 01 00 18 */	stw r0, 0x18(r1)
/* 80118B34 00115A94  48 27 13 C1 */	bl __shl2i
/* 80118B38 00115A98  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 80118B3C 00115A9C  39 61 00 20 */	addi r11, r1, 0x20
/* 80118B40 00115AA0  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 80118B44 00115AA4  38 01 00 10 */	addi r0, r1, 0x10
/* 80118B48 00115AA8  7C A3 1B 78 */	or r3, r5, r3
/* 80118B4C 00115AAC  A1 39 00 00 */	lhz r9, 0(r25)
/* 80118B50 00115AB0  7C C4 23 78 */	or r4, r6, r4
/* 80118B54 00115AB4  90 61 00 18 */	stw r3, 0x18(r1)
/* 80118B58 00115AB8  7F E3 FB 78 */	mr r3, r31
/* 80118B5C 00115ABC  7F A5 EB 78 */	mr r5, r29
/* 80118B60 00115AC0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80118B64 00115AC4  7F 46 D3 78 */	mr r6, r26
/* 80118B68 00115AC8  7F 67 DB 78 */	mr r7, r27
/* 80118B6C 00115ACC  7F 88 E3 78 */	mr r8, r28
/* 80118B70 00115AD0  B1 21 00 14 */	sth r9, 0x14(r1)
/* 80118B74 00115AD4  38 81 00 14 */	addi r4, r1, 0x14
/* 80118B78 00115AD8  39 21 00 88 */	addi r9, r1, 0x88
/* 80118B7C 00115ADC  39 41 00 18 */	addi r10, r1, 0x18
/* 80118B80 00115AE0  91 61 00 08 */	stw r11, 8(r1)
/* 80118B84 00115AE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80118B88 00115AE8  4B F3 CC 99 */	bl "__ct__6CActorF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC13CMaterialListRC16CActorParameters9TUniqueId"
/* 80118B8C 00115AEC  38 61 00 20 */	addi r3, r1, 0x20
/* 80118B90 00115AF0  38 80 FF FF */	li r4, -1
/* 80118B94 00115AF4  4B FE DA 75 */	bl __dt__16CActorParametersFv
/* 80118B98 00115AF8  38 61 00 88 */	addi r3, r1, 0x88
/* 80118B9C 00115AFC  38 80 FF FF */	li r4, -1
/* 80118BA0 00115B00  4B FF DE AD */	bl __dt__10CModelDataFv
/* 80118BA4 00115B04  3C 60 80 3E */	lis r3, lbl_803E02C8@ha
/* 80118BA8 00115B08  38 00 00 00 */	li r0, 0
/* 80118BAC 00115B0C  38 83 02 C8 */	addi r4, r3, lbl_803E02C8@l
/* 80118BB0 00115B10  7F E3 FB 78 */	mr r3, r31
/* 80118BB4 00115B14  90 9F 00 00 */	stw r4, 0(r31)
/* 80118BB8 00115B18  93 DF 00 E8 */	stw r30, 0xe8(r31)
/* 80118BBC 00115B1C  90 1F 00 F0 */	stw r0, 0xf0(r31)
/* 80118BC0 00115B20  90 1F 00 F4 */	stw r0, 0xf4(r31)
/* 80118BC4 00115B24  90 1F 00 F8 */	stw r0, 0xf8(r31)
/* 80118BC8 00115B28  98 1F 01 14 */	stb r0, 0x114(r31)
/* 80118BCC 00115B2C  BB 21 00 E4 */	lmw r25, 0xe4(r1)
/* 80118BD0 00115B30  80 01 01 04 */	lwz r0, 0x104(r1)
/* 80118BD4 00115B34  7C 08 03 A6 */	mtlr r0
/* 80118BD8 00115B38  38 21 01 00 */	addi r1, r1, 0x100
/* 80118BDC 00115B3C  4E 80 00 20 */	blr
