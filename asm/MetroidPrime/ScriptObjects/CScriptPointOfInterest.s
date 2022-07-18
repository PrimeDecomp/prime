.include "macros.inc"

.section .data

.global lbl_803E3638
lbl_803E3638:
	# ROM: 0x3E0638
	.4byte 0
	.4byte 0
	.4byte __dt__22CScriptPointOfInterestFv
	.4byte Accept__22CScriptPointOfInterestFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__22CScriptPointOfInterestFfR13CStateManager
	.4byte AcceptScriptMsg__22CScriptPointOfInterestF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__6CActorFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__22CScriptPointOfInterestCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__22CScriptPointOfInterestCFRC13CStateManager
	.4byte CanRenderUnsorted__6CActorCFRC13CStateManager
	.4byte CalculateRenderBounds__22CScriptPointOfInterestFv
	.4byte HealthInfo__6CActorFR13CStateManager
	.4byte GetDamageVulnerability__6CActorCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__22CScriptPointOfInterestCFv
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

.global lbl_805A78A8
lbl_805A78A8:
	# ROM: 0x3F5248
	.4byte 0x00000029
	.4byte 0

.section .text, "ax"

.global CalculateRenderBounds__22CScriptPointOfInterestFv
CalculateRenderBounds__22CScriptPointOfInterestFv:
/* 8015EAD0 0015BA30  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8015EAD4 0015BA34  7C 08 02 A6 */	mflr r0
/* 8015EAD8 0015BA38  C0 02 9F 60 */	lfs f0, lbl_805ABC80@sda21(r2)
/* 8015EADC 0015BA3C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8015EAE0 0015BA40  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8015EAE4 0015BA44  7C 7F 1B 78 */	mr r31, r3
/* 8015EAE8 0015BA48  C0 E3 00 E8 */	lfs f7, 0xe8(r3)
/* 8015EAEC 0015BA4C  FC 00 38 00 */	fcmpu cr0, f0, f7
/* 8015EAF0 0015BA50  40 82 00 0C */	bne lbl_8015EAFC
/* 8015EAF4 0015BA54  4B EF 65 E1 */	bl CalculateRenderBounds__6CActorFv
/* 8015EAF8 0015BA58  48 00 00 80 */	b lbl_8015EB78
lbl_8015EAFC:
/* 8015EAFC 0015BA5C  C0 DF 00 60 */	lfs f6, 0x60(r31)
/* 8015EB00 0015BA60  38 61 00 20 */	addi r3, r1, 0x20
/* 8015EB04 0015BA64  C0 BF 00 50 */	lfs f5, 0x50(r31)
/* 8015EB08 0015BA68  38 81 00 14 */	addi r4, r1, 0x14
/* 8015EB0C 0015BA6C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8015EB10 0015BA70  EC 06 38 2A */	fadds f0, f6, f7
/* 8015EB14 0015BA74  EC 65 38 2A */	fadds f3, f5, f7
/* 8015EB18 0015BA78  38 A1 00 08 */	addi r5, r1, 8
/* 8015EB1C 0015BA7C  EC 81 38 2A */	fadds f4, f1, f7
/* 8015EB20 0015BA80  EC 41 38 28 */	fsubs f2, f1, f7
/* 8015EB24 0015BA84  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8015EB28 0015BA88  EC 25 38 28 */	fsubs f1, f5, f7
/* 8015EB2C 0015BA8C  EC 06 38 28 */	fsubs f0, f6, f7
/* 8015EB30 0015BA90  D0 81 00 08 */	stfs f4, 8(r1)
/* 8015EB34 0015BA94  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 8015EB38 0015BA98  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8015EB3C 0015BA9C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8015EB40 0015BAA0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8015EB44 0015BAA4  48 1D 99 C5 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 8015EB48 0015BAA8  80 61 00 20 */	lwz r3, 0x20(r1)
/* 8015EB4C 0015BAAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015EB50 0015BAB0  90 7F 00 9C */	stw r3, 0x9c(r31)
/* 8015EB54 0015BAB4  90 1F 00 A0 */	stw r0, 0xa0(r31)
/* 8015EB58 0015BAB8  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8015EB5C 0015BABC  90 1F 00 A4 */	stw r0, 0xa4(r31)
/* 8015EB60 0015BAC0  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 8015EB64 0015BAC4  80 01 00 30 */	lwz r0, 0x30(r1)
/* 8015EB68 0015BAC8  90 7F 00 A8 */	stw r3, 0xa8(r31)
/* 8015EB6C 0015BACC  90 1F 00 AC */	stw r0, 0xac(r31)
/* 8015EB70 0015BAD0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8015EB74 0015BAD4  90 1F 00 B0 */	stw r0, 0xb0(r31)
lbl_8015EB78:
/* 8015EB78 0015BAD8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8015EB7C 0015BADC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8015EB80 0015BAE0  7C 08 03 A6 */	mtlr r0
/* 8015EB84 0015BAE4  38 21 00 40 */	addi r1, r1, 0x40
/* 8015EB88 0015BAE8  4E 80 00 20 */	blr

.global Think__22CScriptPointOfInterestFfR13CStateManager
Think__22CScriptPointOfInterestFfR13CStateManager:
/* 8015EB8C 0015BAEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015EB90 0015BAF0  7C 08 02 A6 */	mflr r0
/* 8015EB94 0015BAF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015EB98 0015BAF8  80 A4 08 B8 */	lwz r5, 0x8b8(r4)
/* 8015EB9C 0015BAFC  88 03 00 E7 */	lbz r0, 0xe7(r3)
/* 8015EBA0 0015BB00  80 A5 00 00 */	lwz r5, 0(r5)
/* 8015EBA4 0015BB04  80 A5 00 14 */	lwz r5, 0x14(r5)
/* 8015EBA8 0015BB08  20 A5 00 02 */	subfic r5, r5, 2
/* 8015EBAC 0015BB0C  7C A5 00 34 */	cntlzw r5, r5
/* 8015EBB0 0015BB10  50 A0 DF FE */	rlwimi r0, r5, 0x1b, 0x1f, 0x1f
/* 8015EBB4 0015BB14  98 03 00 E7 */	stb r0, 0xe7(r3)
/* 8015EBB8 0015BB18  4B EF 25 01 */	bl Think__7CEntityFfR13CStateManager
/* 8015EBBC 0015BB1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015EBC0 0015BB20  7C 08 03 A6 */	mtlr r0
/* 8015EBC4 0015BB24  38 21 00 10 */	addi r1, r1, 0x10
/* 8015EBC8 0015BB28  4E 80 00 20 */	blr

.global Accept__22CScriptPointOfInterestFR8IVisitor
Accept__22CScriptPointOfInterestFR8IVisitor:
/* 8015EBCC 0015BB2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015EBD0 0015BB30  7C 08 02 A6 */	mflr r0
/* 8015EBD4 0015BB34  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015EBD8 0015BB38  7C 60 1B 78 */	mr r0, r3
/* 8015EBDC 0015BB3C  7C 83 23 78 */	mr r3, r4
/* 8015EBE0 0015BB40  81 84 00 00 */	lwz r12, 0(r4)
/* 8015EBE4 0015BB44  7C 04 03 78 */	mr r4, r0
/* 8015EBE8 0015BB48  81 8C 00 A4 */	lwz r12, 0xa4(r12)
/* 8015EBEC 0015BB4C  7D 89 03 A6 */	mtctr r12
/* 8015EBF0 0015BB50  4E 80 04 21 */	bctrl
/* 8015EBF4 0015BB54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015EBF8 0015BB58  7C 08 03 A6 */	mtlr r0
/* 8015EBFC 0015BB5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8015EC00 0015BB60  4E 80 00 20 */	blr

.global AddToRenderer__22CScriptPointOfInterestCFRC14CFrustumPlanesRC13CStateManager
AddToRenderer__22CScriptPointOfInterestCFRC14CFrustumPlanesRC13CStateManager:
/* 8015EC04 0015BB64  4E 80 00 20 */	blr

.global Render__22CScriptPointOfInterestCFRC13CStateManager
Render__22CScriptPointOfInterestCFRC13CStateManager:
/* 8015EC08 0015BB68  4E 80 00 20 */	blr

.global GetTouchBounds__22CScriptPointOfInterestCFv
GetTouchBounds__22CScriptPointOfInterestCFv:
/* 8015EC0C 0015BB6C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8015EC10 0015BB70  7C 08 02 A6 */	mflr r0
/* 8015EC14 0015BB74  90 01 00 44 */	stw r0, 0x44(r1)
/* 8015EC18 0015BB78  38 A1 00 08 */	addi r5, r1, 8
/* 8015EC1C 0015BB7C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8015EC20 0015BB80  7C 7F 1B 78 */	mr r31, r3
/* 8015EC24 0015BB84  38 61 00 20 */	addi r3, r1, 0x20
/* 8015EC28 0015BB88  C0 44 00 60 */	lfs f2, 0x60(r4)
/* 8015EC2C 0015BB8C  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 8015EC30 0015BB90  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 8015EC34 0015BB94  38 81 00 14 */	addi r4, r1, 0x14
/* 8015EC38 0015BB98  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8015EC3C 0015BB9C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8015EC40 0015BBA0  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8015EC44 0015BBA4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8015EC48 0015BBA8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8015EC4C 0015BBAC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8015EC50 0015BBB0  48 1D 98 B9 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 8015EC54 0015BBB4  38 00 00 01 */	li r0, 1
/* 8015EC58 0015BBB8  28 1F 00 00 */	cmplwi r31, 0
/* 8015EC5C 0015BBBC  98 1F 00 18 */	stb r0, 0x18(r31)
/* 8015EC60 0015BBC0  41 82 00 34 */	beq lbl_8015EC94
/* 8015EC64 0015BBC4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8015EC68 0015BBC8  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8015EC6C 0015BBCC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8015EC70 0015BBD0  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8015EC74 0015BBD4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8015EC78 0015BBD8  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8015EC7C 0015BBDC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8015EC80 0015BBE0  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8015EC84 0015BBE4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8015EC88 0015BBE8  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8015EC8C 0015BBEC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8015EC90 0015BBF0  D0 1F 00 14 */	stfs f0, 0x14(r31)
lbl_8015EC94:
/* 8015EC94 0015BBF4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8015EC98 0015BBF8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8015EC9C 0015BBFC  7C 08 03 A6 */	mtlr r0
/* 8015ECA0 0015BC00  38 21 00 40 */	addi r1, r1, 0x40
/* 8015ECA4 0015BC04  4E 80 00 20 */	blr

.global AcceptScriptMsg__22CScriptPointOfInterestF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__22CScriptPointOfInterestF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 8015ECA8 0015BC08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015ECAC 0015BC0C  7C 08 02 A6 */	mflr r0
/* 8015ECB0 0015BC10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015ECB4 0015BC14  A0 05 00 00 */	lhz r0, 0(r5)
/* 8015ECB8 0015BC18  38 A1 00 08 */	addi r5, r1, 8
/* 8015ECBC 0015BC1C  B0 01 00 08 */	sth r0, 8(r1)
/* 8015ECC0 0015BC20  4B EF 49 55 */	bl AcceptScriptMsg__6CActorF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 8015ECC4 0015BC24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015ECC8 0015BC28  7C 08 03 A6 */	mtlr r0
/* 8015ECCC 0015BC2C  38 21 00 10 */	addi r1, r1, 0x10
/* 8015ECD0 0015BC30  4E 80 00 20 */	blr

.global __dt__22CScriptPointOfInterestFv
__dt__22CScriptPointOfInterestFv:
/* 8015ECD4 0015BC34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015ECD8 0015BC38  7C 08 02 A6 */	mflr r0
/* 8015ECDC 0015BC3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015ECE0 0015BC40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015ECE4 0015BC44  7C 9F 23 78 */	mr r31, r4
/* 8015ECE8 0015BC48  93 C1 00 08 */	stw r30, 8(r1)
/* 8015ECEC 0015BC4C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8015ECF0 0015BC50  41 82 00 28 */	beq lbl_8015ED18
/* 8015ECF4 0015BC54  3C A0 80 3E */	lis r5, lbl_803E3638@ha
/* 8015ECF8 0015BC58  38 80 00 00 */	li r4, 0
/* 8015ECFC 0015BC5C  38 05 36 38 */	addi r0, r5, lbl_803E3638@l
/* 8015ED00 0015BC60  90 1E 00 00 */	stw r0, 0(r30)
/* 8015ED04 0015BC64  4B EF 69 ED */	bl __dt__6CActorFv
/* 8015ED08 0015BC68  7F E0 07 35 */	extsh. r0, r31
/* 8015ED0C 0015BC6C  40 81 00 0C */	ble lbl_8015ED18
/* 8015ED10 0015BC70  7F C3 F3 78 */	mr r3, r30
/* 8015ED14 0015BC74  48 1B 6C 1D */	bl Free__7CMemoryFPCv
lbl_8015ED18:
/* 8015ED18 0015BC78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015ED1C 0015BC7C  7F C3 F3 78 */	mr r3, r30
/* 8015ED20 0015BC80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015ED24 0015BC84  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015ED28 0015BC88  7C 08 03 A6 */	mtlr r0
/* 8015ED2C 0015BC8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8015ED30 0015BC90  4E 80 00 20 */	blr

.global "__ct__22CScriptPointOfInterestF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fbRC20CScannableParameters"
"__ct__22CScriptPointOfInterestF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fbRC20CScannableParameters":
/* 8015ED34 0015BC94  94 21 FE 90 */	stwu r1, -0x170(r1)
/* 8015ED38 0015BC98  7C 08 02 A6 */	mflr r0
/* 8015ED3C 0015BC9C  90 01 01 74 */	stw r0, 0x174(r1)
/* 8015ED40 0015BCA0  DB E1 01 68 */	stfd f31, 0x168(r1)
/* 8015ED44 0015BCA4  FF E0 08 90 */	fmr f31, f1
/* 8015ED48 0015BCA8  BF 21 01 4C */	stmw r25, 0x14c(r1)
/* 8015ED4C 0015BCAC  7C 7F 1B 78 */	mr r31, r3
/* 8015ED50 0015BCB0  7C 99 23 78 */	mr r25, r4
/* 8015ED54 0015BCB4  7C BA 2B 78 */	mr r26, r5
/* 8015ED58 0015BCB8  7C DB 33 78 */	mr r27, r6
/* 8015ED5C 0015BCBC  7C FC 3B 78 */	mr r28, r7
/* 8015ED60 0015BCC0  7D 1D 43 78 */	mr r29, r8
/* 8015ED64 0015BCC4  7D 3E 4B 78 */	mr r30, r9
/* 8015ED68 0015BCC8  38 61 00 F0 */	addi r3, r1, 0xf0
/* 8015ED6C 0015BCCC  4B ED BA 39 */	bl CModelDataNull__10CModelDataFv
/* 8015ED70 0015BCD0  38 61 00 88 */	addi r3, r1, 0x88
/* 8015ED74 0015BCD4  4B EB C0 C5 */	bl None__16CActorParametersFv
/* 8015ED78 0015BCD8  7F C5 F3 78 */	mr r5, r30
/* 8015ED7C 0015BCDC  38 61 00 20 */	addi r3, r1, 0x20
/* 8015ED80 0015BCE0  38 81 00 88 */	addi r4, r1, 0x88
/* 8015ED84 0015BCE4  4B FA 7A E9 */	bl Scannable__16CActorParametersCFRC20CScannableParameters
/* 8015ED88 0015BCE8  A0 8D A3 8C */	lhz r4, kInvalidUniqueId@sda21(r13)
/* 8015ED8C 0015BCEC  38 00 00 00 */	li r0, 0
/* 8015ED90 0015BCF0  80 AD 8C E8 */	lwz r5, lbl_805A78A8@sda21(r13)
/* 8015ED94 0015BCF4  38 60 00 00 */	li r3, 0
/* 8015ED98 0015BCF8  B0 81 00 10 */	sth r4, 0x10(r1)
/* 8015ED9C 0015BCFC  38 80 00 01 */	li r4, 1
/* 8015EDA0 0015BD00  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8015EDA4 0015BD04  90 01 00 18 */	stw r0, 0x18(r1)
/* 8015EDA8 0015BD08  48 22 B1 4D */	bl __shl2i
/* 8015EDAC 0015BD0C  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 8015EDB0 0015BD10  39 61 00 20 */	addi r11, r1, 0x20
/* 8015EDB4 0015BD14  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 8015EDB8 0015BD18  38 01 00 10 */	addi r0, r1, 0x10
/* 8015EDBC 0015BD1C  7C A3 1B 78 */	or r3, r5, r3
/* 8015EDC0 0015BD20  A1 39 00 00 */	lhz r9, 0(r25)
/* 8015EDC4 0015BD24  7C C4 23 78 */	or r4, r6, r4
/* 8015EDC8 0015BD28  90 61 00 18 */	stw r3, 0x18(r1)
/* 8015EDCC 0015BD2C  7F E3 FB 78 */	mr r3, r31
/* 8015EDD0 0015BD30  7F A5 EB 78 */	mr r5, r29
/* 8015EDD4 0015BD34  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8015EDD8 0015BD38  7F 46 D3 78 */	mr r6, r26
/* 8015EDDC 0015BD3C  7F 67 DB 78 */	mr r7, r27
/* 8015EDE0 0015BD40  7F 88 E3 78 */	mr r8, r28
/* 8015EDE4 0015BD44  B1 21 00 14 */	sth r9, 0x14(r1)
/* 8015EDE8 0015BD48  38 81 00 14 */	addi r4, r1, 0x14
/* 8015EDEC 0015BD4C  39 21 00 F0 */	addi r9, r1, 0xf0
/* 8015EDF0 0015BD50  39 41 00 18 */	addi r10, r1, 0x18
/* 8015EDF4 0015BD54  91 61 00 08 */	stw r11, 8(r1)
/* 8015EDF8 0015BD58  90 01 00 0C */	stw r0, 0xc(r1)
/* 8015EDFC 0015BD5C  4B EF 6A 25 */	bl "__ct__6CActorF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC13CMaterialListRC16CActorParameters9TUniqueId"
/* 8015EE00 0015BD60  38 61 00 20 */	addi r3, r1, 0x20
/* 8015EE04 0015BD64  38 80 FF FF */	li r4, -1
/* 8015EE08 0015BD68  4B FA 78 01 */	bl __dt__16CActorParametersFv
/* 8015EE0C 0015BD6C  38 61 00 88 */	addi r3, r1, 0x88
/* 8015EE10 0015BD70  38 80 FF FF */	li r4, -1
/* 8015EE14 0015BD74  4B FA 77 F5 */	bl __dt__16CActorParametersFv
/* 8015EE18 0015BD78  38 61 00 F0 */	addi r3, r1, 0xf0
/* 8015EE1C 0015BD7C  38 80 FF FF */	li r4, -1
/* 8015EE20 0015BD80  4B FB 7C 2D */	bl __dt__10CModelDataFv
/* 8015EE24 0015BD84  3C 80 80 3E */	lis r4, lbl_803E3638@ha
/* 8015EE28 0015BD88  7F E3 FB 78 */	mr r3, r31
/* 8015EE2C 0015BD8C  38 04 36 38 */	addi r0, r4, lbl_803E3638@l
/* 8015EE30 0015BD90  90 1F 00 00 */	stw r0, 0(r31)
/* 8015EE34 0015BD94  D3 FF 00 E8 */	stfs f31, 0xe8(r31)
/* 8015EE38 0015BD98  CB E1 01 68 */	lfd f31, 0x168(r1)
/* 8015EE3C 0015BD9C  BB 21 01 4C */	lmw r25, 0x14c(r1)
/* 8015EE40 0015BDA0  80 01 01 74 */	lwz r0, 0x174(r1)
/* 8015EE44 0015BDA4  7C 08 03 A6 */	mtlr r0
/* 8015EE48 0015BDA8  38 21 01 70 */	addi r1, r1, 0x170
/* 8015EE4C 0015BDAC  4E 80 00 20 */	blr

.section .sdata2, "a"
.global lbl_805ABC80
lbl_805ABC80:
	# ROM: 0x3F8520
	.4byte 0
	.4byte 0

