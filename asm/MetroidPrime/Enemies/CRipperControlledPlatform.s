.include "macros.inc"

.section .data
.balign 8

.global lbl_803E80C0
lbl_803E80C0:
	# ROM: 0x3E50C0
	.4byte 0
	.4byte 0
	.4byte __dt__25CRipperControlledPlatformFv
	.4byte Accept__15CScriptPlatformFR8IVisitor
	.4byte PreThink__15CScriptPlatformFfR13CStateManager
	.4byte Think__15CScriptPlatformFfR13CStateManager
	.4byte AcceptScriptMsg__15CScriptPlatformF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__15CScriptPlatformFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__6CActorCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__15CScriptPlatformCFRC13CStateManager
	.4byte CanRenderUnsorted__6CActorCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__15CScriptPlatformFR13CStateManager
	.4byte GetDamageVulnerability__15CScriptPlatformCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__15CScriptPlatformCFv
	.4byte Touch__6CActorFR6CActorR13CStateManager
	.4byte GetOrbitPosition__15CScriptPlatformCFRC13CStateManager
	.4byte GetAimPosition__15CScriptPlatformCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__6CActorCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__6CActorFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__15CScriptPlatformCFRC13CStateManager
	.4byte DoUserAnimEvent__6CActorFR13CStateManagerRC13CInt32POINode14EUserEventTypef
	.4byte GetCollisionPrimitive__15CScriptPlatformCFv
	.4byte GetPrimitiveTransform__15CScriptPlatformCFv
	.4byte CollidedWith__13CPhysicsActorFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
	.4byte GetStepDownHeight__13CPhysicsActorCFv
	.4byte GetStepUpHeight__13CPhysicsActorCFv
	.4byte GetWeight__13CPhysicsActorCFv
	.4byte SplashThink__15CScriptPlatformCFRC6CAABoxRC11CFluidPlanefR13CStateManager
	.4byte Move__25CRipperControlledPlatformFR13CStateManager
	.4byte 0

.section .text, "ax"

.global __dt__25CRipperControlledPlatformFv
__dt__25CRipperControlledPlatformFv:
/* 802327C0 0022F720  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802327C4 0022F724  7C 08 02 A6 */	mflr r0
/* 802327C8 0022F728  90 01 00 14 */	stw r0, 0x14(r1)
/* 802327CC 0022F72C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802327D0 0022F730  7C 9F 23 78 */	mr r31, r4
/* 802327D4 0022F734  93 C1 00 08 */	stw r30, 8(r1)
/* 802327D8 0022F738  7C 7E 1B 79 */	or. r30, r3, r3
/* 802327DC 0022F73C  41 82 00 28 */	beq lbl_80232804
/* 802327E0 0022F740  3C A0 80 3F */	lis r5, lbl_803E80C0@ha
/* 802327E4 0022F744  38 80 00 00 */	li r4, 0
/* 802327E8 0022F748  38 05 80 C0 */	addi r0, r5, lbl_803E80C0@l
/* 802327EC 0022F74C  90 1E 00 00 */	stw r0, 0(r30)
/* 802327F0 0022F750  4B E8 14 1D */	bl __dt__15CScriptPlatformFv
/* 802327F4 0022F754  7F E0 07 35 */	extsh. r0, r31
/* 802327F8 0022F758  40 81 00 0C */	ble lbl_80232804
/* 802327FC 0022F75C  7F C3 F3 78 */	mr r3, r30
/* 80232800 0022F760  48 0E 31 31 */	bl Free__7CMemoryFPCv
lbl_80232804:
/* 80232804 0022F764  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80232808 0022F768  7F C3 F3 78 */	mr r3, r30
/* 8023280C 0022F76C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80232810 0022F770  83 C1 00 08 */	lwz r30, 8(r1)
/* 80232814 0022F774  7C 08 03 A6 */	mtlr r0
/* 80232818 0022F778  38 21 00 10 */	addi r1, r1, 0x10
/* 8023281C 0022F77C  4E 80 00 20 */	blr

.global Move__25CRipperControlledPlatformFR13CStateManager
Move__25CRipperControlledPlatformFR13CStateManager:
/* 80232820 0022F780  94 21 EF 40 */	stwu r1, -0x10c0(r1)
/* 80232824 0022F784  7C 08 02 A6 */	mflr r0
/* 80232828 0022F788  90 01 10 C4 */	stw r0, 0x10c4(r1)
/* 8023282C 0022F78C  38 00 10 B8 */	li r0, 0x10b8
/* 80232830 0022F790  DB E1 10 B0 */	stfd f31, 0x10b0(r1)
/* 80232834 0022F794  13 E1 00 0E */	psq_stx f31, r1, r0, 0, qr0
/* 80232838 0022F798  BF 41 10 98 */	stmw r26, 0x1098(r1)
/* 8023283C 0022F79C  7C 9B 23 78 */	mr r27, r4
/* 80232840 0022F7A0  FF E0 08 90 */	fmr f31, f1
/* 80232844 0022F7A4  A0 04 03 58 */	lhz r0, 0x358(r4)
/* 80232848 0022F7A8  7C BC 2B 78 */	mr r28, r5
/* 8023284C 0022F7AC  7C 7A 1B 78 */	mr r26, r3
/* 80232850 0022F7B0  38 81 00 10 */	addi r4, r1, 0x10
/* 80232854 0022F7B4  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80232858 0022F7B8  7F 83 E3 78 */	mr r3, r28
/* 8023285C 0022F7BC  4B E1 9D 19 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80232860 0022F7C0  7C 7D 1B 79 */	or. r29, r3, r3
/* 80232864 0022F7C4  41 82 02 F0 */	beq lbl_80232B54
/* 80232868 0022F7C8  C0 9B 00 60 */	lfs f4, 0x60(r27)
/* 8023286C 0022F7CC  FC 20 F8 90 */	fmr f1, f31
/* 80232870 0022F7D0  C0 1D 00 60 */	lfs f0, 0x60(r29)
/* 80232874 0022F7D4  7F 63 DB 78 */	mr r3, r27
/* 80232878 0022F7D8  C0 BB 00 50 */	lfs f5, 0x50(r27)
/* 8023287C 0022F7DC  38 81 00 28 */	addi r4, r1, 0x28
/* 80232880 0022F7E0  C0 7D 00 50 */	lfs f3, 0x50(r29)
/* 80232884 0022F7E4  EC 40 20 28 */	fsubs f2, f0, f4
/* 80232888 0022F7E8  C0 DB 00 40 */	lfs f6, 0x40(r27)
/* 8023288C 0022F7EC  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 80232890 0022F7F0  EC 63 28 28 */	fsubs f3, f3, f5
/* 80232894 0022F7F4  EC 00 30 28 */	fsubs f0, f0, f6
/* 80232898 0022F7F8  EC 65 18 2A */	fadds f3, f5, f3
/* 8023289C 0022F7FC  EC 44 10 2A */	fadds f2, f4, f2
/* 802328A0 0022F800  EC 06 00 2A */	fadds f0, f6, f0
/* 802328A4 0022F804  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 802328A8 0022F808  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 802328AC 0022F80C  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 802328B0 0022F810  4B EE 88 59 */	bl MoveToWR__13CPhysicsActorFRC9CVector3ff
/* 802328B4 0022F814  7F A3 EB 78 */	mr r3, r29
/* 802328B8 0022F818  4B E2 1B F9 */	bl GetYaw__6CActorCFv
/* 802328BC 0022F81C  C0 5B 03 5C */	lfs f2, 0x35c(r27)
/* 802328C0 0022F820  3C 00 43 30 */	lis r0, 0x4330
/* 802328C4 0022F824  C0 02 B6 C8 */	lfs f0, lbl_805AD3E8@sda21(r2)
/* 802328C8 0022F828  EC 81 10 28 */	fsubs f4, f1, f2
/* 802328CC 0022F82C  90 01 10 88 */	stw r0, 0x1088(r1)
/* 802328D0 0022F830  C8 62 B6 D8 */	lfd f3, lbl_805AD3F8@sda21(r2)
/* 802328D4 0022F834  C0 22 B6 CC */	lfs f1, lbl_805AD3EC@sda21(r2)
/* 802328D8 0022F838  EC 44 00 32 */	fmuls f2, f4, f0
/* 802328DC 0022F83C  C0 02 B6 D0 */	lfs f0, lbl_805AD3F0@sda21(r2)
/* 802328E0 0022F840  FC 40 10 1E */	fctiwz f2, f2
/* 802328E4 0022F844  D8 41 10 80 */	stfd f2, 0x1080(r1)
/* 802328E8 0022F848  80 01 10 84 */	lwz r0, 0x1084(r1)
/* 802328EC 0022F84C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802328F0 0022F850  90 01 10 8C */	stw r0, 0x108c(r1)
/* 802328F4 0022F854  C8 41 10 88 */	lfd f2, 0x1088(r1)
/* 802328F8 0022F858  EC 42 18 28 */	fsubs f2, f2, f3
/* 802328FC 0022F85C  EC 42 20 7C */	fnmsubs f2, f2, f1, f4
/* 80232900 0022F860  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80232904 0022F864  40 80 00 08 */	bge lbl_8023290C
/* 80232908 0022F868  EC 42 08 2A */	fadds f2, f2, f1
lbl_8023290C:
/* 8023290C 0022F86C  C0 02 B6 D4 */	lfs f0, lbl_805AD3F4@sda21(r2)
/* 80232910 0022F870  FC 20 10 90 */	fmr f1, f2
/* 80232914 0022F874  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80232918 0022F878  40 81 00 0C */	ble lbl_80232924
/* 8023291C 0022F87C  C0 02 B6 CC */	lfs f0, lbl_805AD3EC@sda21(r2)
/* 80232920 0022F880  EC 22 00 28 */	fsubs f1, f2, f0
lbl_80232924:
/* 80232924 0022F884  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80232928 0022F888  38 61 00 18 */	addi r3, r1, 0x18
/* 8023292C 0022F88C  38 81 00 14 */	addi r4, r1, 0x14
/* 80232930 0022F890  48 0D E7 C9 */	bl ZRotation__11CQuaternionFRC9CRelAngle
/* 80232934 0022F894  C0 81 00 18 */	lfs f4, 0x18(r1)
/* 80232938 0022F898  FC 20 F8 90 */	fmr f1, f31
/* 8023293C 0022F89C  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 80232940 0022F8A0  7F 63 DB 78 */	mr r3, r27
/* 80232944 0022F8A4  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80232948 0022F8A8  38 81 00 34 */	addi r4, r1, 0x34
/* 8023294C 0022F8AC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80232950 0022F8B0  D0 81 00 34 */	stfs f4, 0x34(r1)
/* 80232954 0022F8B4  D0 61 00 38 */	stfs f3, 0x38(r1)
/* 80232958 0022F8B8  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8023295C 0022F8BC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80232960 0022F8C0  4B EE 84 B5 */	bl RotateToOR__13CPhysicsActorFRC11CQuaternionf
/* 80232964 0022F8C4  38 00 00 00 */	li r0, 0
/* 80232968 0022F8C8  FC 20 F8 90 */	fmr f1, f31
/* 8023296C 0022F8CC  90 01 08 78 */	stw r0, 0x878(r1)
/* 80232970 0022F8D0  7F 64 DB 78 */	mr r4, r27
/* 80232974 0022F8D4  38 61 00 44 */	addi r3, r1, 0x44
/* 80232978 0022F8D8  4B EE 7D 3D */	bl GetMotionVolume__13CPhysicsActorCFf
/* 8023297C 0022F8DC  C0 A1 00 44 */	lfs f5, 0x44(r1)
/* 80232980 0022F8E0  7F 83 E3 78 */	mr r3, r28
/* 80232984 0022F8E4  C0 81 00 48 */	lfs f4, 0x48(r1)
/* 80232988 0022F8E8  7F 65 DB 78 */	mr r5, r27
/* 8023298C 0022F8EC  C0 61 00 4C */	lfs f3, 0x4c(r1)
/* 80232990 0022F8F0  38 81 08 78 */	addi r4, r1, 0x878
/* 80232994 0022F8F4  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 80232998 0022F8F8  38 C1 00 5C */	addi r6, r1, 0x5c
/* 8023299C 0022F8FC  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 802329A0 0022F900  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 802329A4 0022F904  D0 A1 00 5C */	stfs f5, 0x5c(r1)
/* 802329A8 0022F908  D0 81 00 60 */	stfs f4, 0x60(r1)
/* 802329AC 0022F90C  D0 61 00 64 */	stfs f3, 0x64(r1)
/* 802329B0 0022F910  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 802329B4 0022F914  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 802329B8 0022F918  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 802329BC 0022F91C  4B E1 9D 41 */	bl "BuildColliderList__13CStateManagerCFRQ24rstl32reserved_vector<9TUniqueId,1024>RC6CActorRC6CAABox"
/* 802329C0 0022F920  38 00 00 00 */	li r0, 0
/* 802329C4 0022F924  3B C1 08 7C */	addi r30, r1, 0x87c
/* 802329C8 0022F928  90 01 00 74 */	stw r0, 0x74(r1)
/* 802329CC 0022F92C  7F DD F3 78 */	mr r29, r30
/* 802329D0 0022F930  3B E1 00 78 */	addi r31, r1, 0x78
/* 802329D4 0022F934  48 00 00 64 */	b lbl_80232A38
lbl_802329D8:
/* 802329D8 0022F938  A0 1D 00 00 */	lhz r0, 0(r29)
/* 802329DC 0022F93C  7F 63 DB 78 */	mr r3, r27
/* 802329E0 0022F940  38 81 00 0C */	addi r4, r1, 0xc
/* 802329E4 0022F944  B0 01 00 0C */	sth r0, 0xc(r1)
/* 802329E8 0022F948  4B E7 F3 69 */	bl IsRider__15CScriptPlatformCF9TUniqueId
/* 802329EC 0022F94C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802329F0 0022F950  40 82 00 44 */	bne lbl_80232A34
/* 802329F4 0022F954  A0 1D 00 00 */	lhz r0, 0(r29)
/* 802329F8 0022F958  7F 63 DB 78 */	mr r3, r27
/* 802329FC 0022F95C  38 81 00 08 */	addi r4, r1, 8
/* 80232A00 0022F960  B0 01 00 08 */	sth r0, 8(r1)
/* 80232A04 0022F964  4B E7 F1 F5 */	bl IsSlave__15CScriptPlatformCF9TUniqueId
/* 80232A08 0022F968  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80232A0C 0022F96C  40 82 00 28 */	bne lbl_80232A34
/* 80232A10 0022F970  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80232A14 0022F974  54 00 08 3C */	slwi r0, r0, 1
/* 80232A18 0022F978  7C 7F 02 15 */	add. r3, r31, r0
/* 80232A1C 0022F97C  41 82 00 0C */	beq lbl_80232A28
/* 80232A20 0022F980  A0 1D 00 00 */	lhz r0, 0(r29)
/* 80232A24 0022F984  B0 03 00 00 */	sth r0, 0(r3)
lbl_80232A28:
/* 80232A28 0022F988  80 61 00 74 */	lwz r3, 0x74(r1)
/* 80232A2C 0022F98C  38 03 00 01 */	addi r0, r3, 1
/* 80232A30 0022F990  90 01 00 74 */	stw r0, 0x74(r1)
lbl_80232A34:
/* 80232A34 0022F994  3B BD 00 02 */	addi r29, r29, 2
lbl_80232A38:
/* 80232A38 0022F998  80 01 08 78 */	lwz r0, 0x878(r1)
/* 80232A3C 0022F99C  54 00 08 3C */	slwi r0, r0, 1
/* 80232A40 0022F9A0  7C 1E 02 14 */	add r0, r30, r0
/* 80232A44 0022F9A4  7C 1D 00 40 */	cmplw r29, r0
/* 80232A48 0022F9A8  40 82 FF 90 */	bne lbl_802329D8
/* 80232A4C 0022F9AC  88 1B 00 F8 */	lbz r0, 0xf8(r27)
/* 80232A50 0022F9B0  38 60 00 01 */	li r3, 1
/* 80232A54 0022F9B4  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80232A58 0022F9B8  FC 20 F8 90 */	fmr f1, f31
/* 80232A5C 0022F9BC  98 1B 00 F8 */	stb r0, 0xf8(r27)
/* 80232A60 0022F9C0  7F 83 E3 78 */	mr r3, r28
/* 80232A64 0022F9C4  7F 64 DB 78 */	mr r4, r27
/* 80232A68 0022F9C8  38 A1 00 74 */	addi r5, r1, 0x74
/* 80232A6C 0022F9CC  4B F4 F2 CD */	bl "Move__14CGameCollisionFR13CStateManagerR13CPhysicsActorfPCQ24rstl32reserved_vector<9TUniqueId,1024>"
/* 80232A70 0022F9D0  88 1B 00 F8 */	lbz r0, 0xf8(r27)
/* 80232A74 0022F9D4  38 60 00 00 */	li r3, 0
/* 80232A78 0022F9D8  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80232A7C 0022F9DC  7F 63 DB 78 */	mr r3, r27
/* 80232A80 0022F9E0  98 1B 00 F8 */	stb r0, 0xf8(r27)
/* 80232A84 0022F9E4  4B E2 1A 2D */	bl GetYaw__6CActorCFv
/* 80232A88 0022F9E8  D0 3B 03 5C */	stfs f1, 0x35c(r27)
/* 80232A8C 0022F9EC  38 60 00 00 */	li r3, 0
/* 80232A90 0022F9F0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80232A94 0022F9F4  D0 1A 00 00 */	stfs f0, 0(r26)
/* 80232A98 0022F9F8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80232A9C 0022F9FC  D0 1A 00 04 */	stfs f0, 4(r26)
/* 80232AA0 0022FA00  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80232AA4 0022FA04  D0 1A 00 08 */	stfs f0, 8(r26)
/* 80232AA8 0022FA08  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80232AAC 0022FA0C  D0 1A 00 0C */	stfs f0, 0xc(r26)
/* 80232AB0 0022FA10  80 A1 00 74 */	lwz r5, 0x74(r1)
/* 80232AB4 0022FA14  2C 05 00 00 */	cmpwi r5, 0
/* 80232AB8 0022FA18  40 81 00 40 */	ble lbl_80232AF8
/* 80232ABC 0022FA1C  2C 05 00 08 */	cmpwi r5, 8
/* 80232AC0 0022FA20  38 85 FF F8 */	addi r4, r5, -8
/* 80232AC4 0022FA24  40 81 00 20 */	ble lbl_80232AE4
/* 80232AC8 0022FA28  38 04 00 07 */	addi r0, r4, 7
/* 80232ACC 0022FA2C  54 00 E8 FE */	srwi r0, r0, 3
/* 80232AD0 0022FA30  7C 09 03 A6 */	mtctr r0
/* 80232AD4 0022FA34  2C 04 00 00 */	cmpwi r4, 0
/* 80232AD8 0022FA38  40 81 00 0C */	ble lbl_80232AE4
lbl_80232ADC:
/* 80232ADC 0022FA3C  38 63 00 08 */	addi r3, r3, 8
/* 80232AE0 0022FA40  42 00 FF FC */	bdnz lbl_80232ADC
lbl_80232AE4:
/* 80232AE4 0022FA44  7C 03 28 50 */	subf r0, r3, r5
/* 80232AE8 0022FA48  7C 09 03 A6 */	mtctr r0
/* 80232AEC 0022FA4C  7C 03 28 00 */	cmpw r3, r5
/* 80232AF0 0022FA50  40 80 00 08 */	bge lbl_80232AF8
lbl_80232AF4:
/* 80232AF4 0022FA54  42 00 00 00 */	bdnz lbl_80232AF4
lbl_80232AF8:
/* 80232AF8 0022FA58  80 A1 08 78 */	lwz r5, 0x878(r1)
/* 80232AFC 0022FA5C  38 60 00 00 */	li r3, 0
/* 80232B00 0022FA60  90 61 00 74 */	stw r3, 0x74(r1)
/* 80232B04 0022FA64  2C 05 00 00 */	cmpwi r5, 0
/* 80232B08 0022FA68  40 81 00 40 */	ble lbl_80232B48
/* 80232B0C 0022FA6C  2C 05 00 08 */	cmpwi r5, 8
/* 80232B10 0022FA70  38 85 FF F8 */	addi r4, r5, -8
/* 80232B14 0022FA74  40 81 00 20 */	ble lbl_80232B34
/* 80232B18 0022FA78  38 04 00 07 */	addi r0, r4, 7
/* 80232B1C 0022FA7C  54 00 E8 FE */	srwi r0, r0, 3
/* 80232B20 0022FA80  7C 09 03 A6 */	mtctr r0
/* 80232B24 0022FA84  2C 04 00 00 */	cmpwi r4, 0
/* 80232B28 0022FA88  40 81 00 0C */	ble lbl_80232B34
lbl_80232B2C:
/* 80232B2C 0022FA8C  38 63 00 08 */	addi r3, r3, 8
/* 80232B30 0022FA90  42 00 FF FC */	bdnz lbl_80232B2C
lbl_80232B34:
/* 80232B34 0022FA94  7C 03 28 50 */	subf r0, r3, r5
/* 80232B38 0022FA98  7C 09 03 A6 */	mtctr r0
/* 80232B3C 0022FA9C  7C 03 28 00 */	cmpw r3, r5
/* 80232B40 0022FAA0  40 80 00 08 */	bge lbl_80232B48
lbl_80232B44:
/* 80232B44 0022FAA4  42 00 00 00 */	bdnz lbl_80232B44
lbl_80232B48:
/* 80232B48 0022FAA8  38 00 00 00 */	li r0, 0
/* 80232B4C 0022FAAC  90 01 08 78 */	stw r0, 0x878(r1)
/* 80232B50 0022FAB0  48 00 00 28 */	b lbl_80232B78
lbl_80232B54:
/* 80232B54 0022FAB4  3C 60 80 5A */	lis r3, sNoRotation__11CQuaternion@ha
/* 80232B58 0022FAB8  C4 03 66 60 */	lfsu f0, sNoRotation__11CQuaternion@l(r3)
/* 80232B5C 0022FABC  D0 1A 00 00 */	stfs f0, 0(r26)
/* 80232B60 0022FAC0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80232B64 0022FAC4  D0 1A 00 04 */	stfs f0, 4(r26)
/* 80232B68 0022FAC8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80232B6C 0022FACC  D0 1A 00 08 */	stfs f0, 8(r26)
/* 80232B70 0022FAD0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80232B74 0022FAD4  D0 1A 00 0C */	stfs f0, 0xc(r26)
lbl_80232B78:
/* 80232B78 0022FAD8  38 00 10 B8 */	li r0, 0x10b8
/* 80232B7C 0022FADC  13 E1 00 0C */	psq_lx f31, r1, r0, 0, qr0
/* 80232B80 0022FAE0  CB E1 10 B0 */	lfd f31, 0x10b0(r1)
/* 80232B84 0022FAE4  BB 41 10 98 */	lmw r26, 0x1098(r1)
/* 80232B88 0022FAE8  80 01 10 C4 */	lwz r0, 0x10c4(r1)
/* 80232B8C 0022FAEC  7C 08 03 A6 */	mtlr r0
/* 80232B90 0022FAF0  38 21 10 C0 */	addi r1, r1, 0x10c0
/* 80232B94 0022FAF4  4E 80 00 20 */	blr

.global "__ct__25CRipperControlledPlatformF9TUniqueId9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC6CAABoxbRCQ24rstl58optional_object<39TLockedToken<23CCollidableOBBTreeGroup>>"
"__ct__25CRipperControlledPlatformF9TUniqueId9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC6CAABoxbRCQ24rstl58optional_object<39TLockedToken<23CCollidableOBBTreeGroup>>":
/* 80232B98 0022FAF8  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 80232B9C 0022FAFC  7C 08 02 A6 */	mflr r0
/* 80232BA0 0022FB00  90 01 01 14 */	stw r0, 0x114(r1)
/* 80232BA4 0022FB04  BE C1 00 E8 */	stmw r22, 0xe8(r1)
/* 80232BA8 0022FB08  7C 7F 1B 78 */	mr r31, r3
/* 80232BAC 0022FB0C  83 A1 01 18 */	lwz r29, 0x118(r1)
/* 80232BB0 0022FB10  7C 96 23 78 */	mr r22, r4
/* 80232BB4 0022FB14  7C B7 2B 78 */	mr r23, r5
/* 80232BB8 0022FB18  7C D8 33 78 */	mr r24, r6
/* 80232BBC 0022FB1C  7C F9 3B 78 */	mr r25, r7
/* 80232BC0 0022FB20  7D 1A 43 78 */	mr r26, r8
/* 80232BC4 0022FB24  7D 3B 4B 78 */	mr r27, r9
/* 80232BC8 0022FB28  7D 5C 53 78 */	mr r28, r10
/* 80232BCC 0022FB2C  38 61 00 9C */	addi r3, r1, 0x9c
/* 80232BD0 0022FB30  4B E0 7B D5 */	bl CModelDataNull__10CModelDataFv
/* 80232BD4 0022FB34  38 61 00 34 */	addi r3, r1, 0x34
/* 80232BD8 0022FB38  4B DE 82 61 */	bl None__16CActorParametersFv
/* 80232BDC 0022FB3C  C0 22 B6 E0 */	lfs f1, lbl_805AD400@sda21(r2)
/* 80232BE0 0022FB40  3C 60 80 57 */	lis r3, sImmuneVulnerability__20CDamageVulnerability@ha
/* 80232BE4 0022FB44  C0 02 B6 E4 */	lfs f0, lbl_805AD404@sda21(r2)
/* 80232BE8 0022FB48  3B C0 00 00 */	li r30, 0
/* 80232BEC 0022FB4C  A0 96 00 00 */	lhz r4, 0(r22)
/* 80232BF0 0022FB50  39 81 00 2C */	addi r12, r1, 0x2c
/* 80232BF4 0022FB54  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80232BF8 0022FB58  39 63 D7 18 */	addi r11, r3, sImmuneVulnerability__20CDamageVulnerability@l
/* 80232BFC 0022FB5C  38 00 00 01 */	li r0, 1
/* 80232C00 0022FB60  C0 22 B6 D0 */	lfs f1, lbl_805AD3F0@sda21(r2)
/* 80232C04 0022FB64  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80232C08 0022FB68  7F E3 FB 78 */	mr r3, r31
/* 80232C0C 0022FB6C  C0 42 B6 E8 */	lfs f2, lbl_805AD408@sda21(r2)
/* 80232C10 0022FB70  7F 05 C3 78 */	mr r5, r24
/* 80232C14 0022FB74  B0 81 00 28 */	sth r4, 0x28(r1)
/* 80232C18 0022FB78  7F 26 CB 78 */	mr r6, r25
/* 80232C1C 0022FB7C  7F 47 D3 78 */	mr r7, r26
/* 80232C20 0022FB80  7F 6A DB 78 */	mr r10, r27
/* 80232C24 0022FB84  93 C1 00 08 */	stw r30, 8(r1)
/* 80232C28 0022FB88  38 81 00 28 */	addi r4, r1, 0x28
/* 80232C2C 0022FB8C  39 01 00 9C */	addi r8, r1, 0x9c
/* 80232C30 0022FB90  39 21 00 34 */	addi r9, r1, 0x34
/* 80232C34 0022FB94  93 81 00 0C */	stw r28, 0xc(r1)
/* 80232C38 0022FB98  91 81 00 10 */	stw r12, 0x10(r1)
/* 80232C3C 0022FB9C  91 61 00 14 */	stw r11, 0x14(r1)
/* 80232C40 0022FBA0  93 A1 00 18 */	stw r29, 0x18(r1)
/* 80232C44 0022FBA4  93 C1 00 1C */	stw r30, 0x1c(r1)
/* 80232C48 0022FBA8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80232C4C 0022FBAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80232C50 0022FBB0  4B E8 11 B1 */	bl "__ct__15CScriptPlatformF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC16CActorParametersRC6CAABoxfbfbRC11CHealthInfoRC20CDamageVulnerabilityRCQ24rstl67optional_object<48TLockedToken<32CCollidableOBBTreeGroupContainer>>bUiUi"
/* 80232C54 0022FBB4  38 61 00 34 */	addi r3, r1, 0x34
/* 80232C58 0022FBB8  38 80 FF FF */	li r4, -1
/* 80232C5C 0022FBBC  4B ED 39 AD */	bl __dt__16CLightParametersFv
/* 80232C60 0022FBC0  38 61 00 9C */	addi r3, r1, 0x9c
/* 80232C64 0022FBC4  38 80 FF FF */	li r4, -1
/* 80232C68 0022FBC8  4B EE 3D E5 */	bl __dt__10CModelDataFv
/* 80232C6C 0022FBCC  3C 80 80 3F */	lis r4, lbl_803E80C0@ha
/* 80232C70 0022FBD0  7F E3 FB 78 */	mr r3, r31
/* 80232C74 0022FBD4  38 04 80 C0 */	addi r0, r4, lbl_803E80C0@l
/* 80232C78 0022FBD8  90 1F 00 00 */	stw r0, 0(r31)
/* 80232C7C 0022FBDC  A0 17 00 00 */	lhz r0, 0(r23)
/* 80232C80 0022FBE0  B0 1F 03 58 */	sth r0, 0x358(r31)
/* 80232C84 0022FBE4  4B E2 18 2D */	bl GetYaw__6CActorCFv
/* 80232C88 0022FBE8  D0 3F 03 5C */	stfs f1, 0x35c(r31)
/* 80232C8C 0022FBEC  7F E3 FB 78 */	mr r3, r31
/* 80232C90 0022FBF0  BA C1 00 E8 */	lmw r22, 0xe8(r1)
/* 80232C94 0022FBF4  80 01 01 14 */	lwz r0, 0x114(r1)
/* 80232C98 0022FBF8  7C 08 03 A6 */	mtlr r0
/* 80232C9C 0022FBFC  38 21 01 10 */	addi r1, r1, 0x110
/* 80232CA0 0022FC00  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805AD3E8
lbl_805AD3E8:
	# ROM: 0x3F9C88
	.4byte 0x3E22F983

.global lbl_805AD3EC
lbl_805AD3EC:
	# ROM: 0x3F9C8C
	.float 6.2831855

.global lbl_805AD3F0
lbl_805AD3F0:
	# ROM: 0x3F9C90
	.4byte 0

.global lbl_805AD3F4
lbl_805AD3F4:
	# ROM: 0x3F9C94
	.4byte 0x40490FDB

.global lbl_805AD3F8
lbl_805AD3F8:
	# ROM: 0x3F9C98
	.double 4.503601774854144E15

.global lbl_805AD400
lbl_805AD400:
	# ROM: 0x3F9CA0
	.4byte 0x7F7FFFFF

.global lbl_805AD404
lbl_805AD404:
	# ROM: 0x3F9CA4
	.4byte 0x41200000

.global lbl_805AD408
lbl_805AD408:
	# ROM: 0x3F9CA8
	.float 1.0
	.4byte 0
