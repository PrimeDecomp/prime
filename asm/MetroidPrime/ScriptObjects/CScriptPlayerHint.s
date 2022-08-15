.include "macros.inc"

.section .data
.balign 8

.global lbl_803E32D8
lbl_803E32D8:
	# ROM: 0x3E02D8
	.4byte 0
	.4byte 0
	.4byte __dt__17CScriptPlayerHintFv
	.4byte Accept__17CScriptPlayerHintFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__7CEntityFfR13CStateManager
	.4byte AcceptScriptMsg__17CScriptPlayerHintF20EScriptObjectMessage9TUniqueIdR13CStateManager
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

.global lbl_805A7870
lbl_805A7870:
	# ROM: 0x3F5210
	.4byte 0
	.4byte 0


.section .text, "ax"

.global __dt__17CScriptPlayerHintFv
__dt__17CScriptPlayerHintFv:
/* 8015B854 001587B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015B858 001587B8  7C 08 02 A6 */	mflr r0
/* 8015B85C 001587BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015B860 001587C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015B864 001587C4  7C 9F 23 78 */	mr r31, r4
/* 8015B868 001587C8  93 C1 00 08 */	stw r30, 8(r1)
/* 8015B86C 001587CC  7C 7E 1B 79 */	or. r30, r3, r3
/* 8015B870 001587D0  41 82 00 88 */	beq lbl_8015B8F8
/* 8015B874 001587D4  3C 60 80 3E */	lis r3, lbl_803E32D8@ha
/* 8015B878 001587D8  34 1E 00 E8 */	addic. r0, r30, 0xe8
/* 8015B87C 001587DC  38 03 32 D8 */	addi r0, r3, lbl_803E32D8@l
/* 8015B880 001587E0  90 1E 00 00 */	stw r0, 0(r30)
/* 8015B884 001587E4  41 82 00 58 */	beq lbl_8015B8DC
/* 8015B888 001587E8  80 BE 00 E8 */	lwz r5, 0xe8(r30)
/* 8015B88C 001587EC  38 60 00 00 */	li r3, 0
/* 8015B890 001587F0  2C 05 00 00 */	cmpwi r5, 0
/* 8015B894 001587F4  40 81 00 40 */	ble lbl_8015B8D4
/* 8015B898 001587F8  2C 05 00 08 */	cmpwi r5, 8
/* 8015B89C 001587FC  38 85 FF F8 */	addi r4, r5, -8
/* 8015B8A0 00158800  40 81 00 20 */	ble lbl_8015B8C0
/* 8015B8A4 00158804  38 04 00 07 */	addi r0, r4, 7
/* 8015B8A8 00158808  54 00 E8 FE */	srwi r0, r0, 3
/* 8015B8AC 0015880C  7C 09 03 A6 */	mtctr r0
/* 8015B8B0 00158810  2C 04 00 00 */	cmpwi r4, 0
/* 8015B8B4 00158814  40 81 00 0C */	ble lbl_8015B8C0
lbl_8015B8B8:
/* 8015B8B8 00158818  38 63 00 08 */	addi r3, r3, 8
/* 8015B8BC 0015881C  42 00 FF FC */	bdnz lbl_8015B8B8
lbl_8015B8C0:
/* 8015B8C0 00158820  7C 03 28 50 */	subf r0, r3, r5
/* 8015B8C4 00158824  7C 09 03 A6 */	mtctr r0
/* 8015B8C8 00158828  7C 03 28 00 */	cmpw r3, r5
/* 8015B8CC 0015882C  40 80 00 08 */	bge lbl_8015B8D4
lbl_8015B8D0:
/* 8015B8D0 00158830  42 00 00 00 */	bdnz lbl_8015B8D0
lbl_8015B8D4:
/* 8015B8D4 00158834  38 00 00 00 */	li r0, 0
/* 8015B8D8 00158838  90 1E 00 E8 */	stw r0, 0xe8(r30)
lbl_8015B8DC:
/* 8015B8DC 0015883C  7F C3 F3 78 */	mr r3, r30
/* 8015B8E0 00158840  38 80 00 00 */	li r4, 0
/* 8015B8E4 00158844  4B EF 9E 0D */	bl __dt__6CActorFv
/* 8015B8E8 00158848  7F E0 07 35 */	extsh. r0, r31
/* 8015B8EC 0015884C  40 81 00 0C */	ble lbl_8015B8F8
/* 8015B8F0 00158850  7F C3 F3 78 */	mr r3, r30
/* 8015B8F4 00158854  48 1B A0 3D */	bl Free__7CMemoryFPCv
lbl_8015B8F8:
/* 8015B8F8 00158858  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015B8FC 0015885C  7F C3 F3 78 */	mr r3, r30
/* 8015B900 00158860  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015B904 00158864  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015B908 00158868  7C 08 03 A6 */	mtlr r0
/* 8015B90C 0015886C  38 21 00 10 */	addi r1, r1, 0x10
/* 8015B910 00158870  4E 80 00 20 */	blr

.global Accept__17CScriptPlayerHintFR8IVisitor
Accept__17CScriptPlayerHintFR8IVisitor:
/* 8015B914 00158874  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015B918 00158878  7C 08 02 A6 */	mflr r0
/* 8015B91C 0015887C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015B920 00158880  7C 60 1B 78 */	mr r0, r3
/* 8015B924 00158884  7C 83 23 78 */	mr r3, r4
/* 8015B928 00158888  81 84 00 00 */	lwz r12, 0(r4)
/* 8015B92C 0015888C  7C 04 03 78 */	mr r4, r0
/* 8015B930 00158890  81 8C 00 A0 */	lwz r12, 0xa0(r12)
/* 8015B934 00158894  7D 89 03 A6 */	mtctr r12
/* 8015B938 00158898  4E 80 04 21 */	bctrl
/* 8015B93C 0015889C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015B940 001588A0  7C 08 03 A6 */	mtlr r0
/* 8015B944 001588A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8015B948 001588A8  4E 80 00 20 */	blr

.global AcceptScriptMsg__17CScriptPlayerHintF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__17CScriptPlayerHintF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 8015B94C 001588AC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8015B950 001588B0  7C 08 02 A6 */	mflr r0
/* 8015B954 001588B4  90 01 00 64 */	stw r0, 0x64(r1)
/* 8015B958 001588B8  BF 61 00 4C */	stmw r27, 0x4c(r1)
/* 8015B95C 001588BC  7C 9D 23 78 */	mr r29, r4
/* 8015B960 001588C0  2C 1D 00 07 */	cmpwi r29, 7
/* 8015B964 001588C4  7C 7C 1B 78 */	mr r28, r3
/* 8015B968 001588C8  7C BE 2B 78 */	mr r30, r5
/* 8015B96C 001588CC  7C DF 33 78 */	mr r31, r6
/* 8015B970 001588D0  41 82 00 60 */	beq lbl_8015B9D0
/* 8015B974 001588D4  40 80 00 10 */	bge lbl_8015B984
/* 8015B978 001588D8  2C 1D 00 04 */	cmpwi r29, 4
/* 8015B97C 001588DC  41 82 00 14 */	beq lbl_8015B990
/* 8015B980 001588E0  48 00 00 EC */	b lbl_8015BA6C
lbl_8015B984:
/* 8015B984 001588E4  2C 1D 00 22 */	cmpwi r29, 0x22
/* 8015B988 001588E8  41 82 00 08 */	beq lbl_8015B990
/* 8015B98C 001588EC  48 00 00 E0 */	b lbl_8015BA6C
lbl_8015B990:
/* 8015B990 001588F0  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8015B994 001588F4  7F 83 E3 78 */	mr r3, r28
/* 8015B998 001588F8  7F E5 FB 78 */	mr r5, r31
/* 8015B99C 001588FC  38 81 00 34 */	addi r4, r1, 0x34
/* 8015B9A0 00158900  B0 01 00 34 */	sth r0, 0x34(r1)
/* 8015B9A4 00158904  48 00 01 99 */	bl RemoveFromObjectList__17CScriptPlayerHintF9TUniqueIdR13CStateManager
/* 8015B9A8 00158908  A0 1C 00 08 */	lhz r0, 8(r28)
/* 8015B9AC 0015890C  7F E5 FB 78 */	mr r5, r31
/* 8015B9B0 00158910  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8015B9B4 00158914  38 81 00 30 */	addi r4, r1, 0x30
/* 8015B9B8 00158918  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 8015B9BC 0015891C  B0 01 00 30 */	sth r0, 0x30(r1)
/* 8015B9C0 00158920  48 12 89 B5 */	bl AddToPlayerHintRemoveList__7CPlayerF9TUniqueIdR13CStateManager
/* 8015B9C4 00158924  38 00 00 01 */	li r0, 1
/* 8015B9C8 00158928  98 1C 00 FC */	stb r0, 0xfc(r28)
/* 8015B9CC 0015892C  48 00 00 A0 */	b lbl_8015BA6C
lbl_8015B9D0:
/* 8015B9D0 00158930  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8015B9D4 00158934  B0 1C 01 08 */	sth r0, 0x108(r28)
/* 8015B9D8 00158938  80 1C 01 04 */	lwz r0, 0x104(r28)
/* 8015B9DC 0015893C  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 8015B9E0 00158940  41 82 00 8C */	beq lbl_8015BA6C
/* 8015B9E4 00158944  83 7C 00 2C */	lwz r27, 0x2c(r28)
/* 8015B9E8 00158948  48 00 00 6C */	b lbl_8015BA54
lbl_8015B9EC:
/* 8015B9EC 0015894C  80 1B 00 00 */	lwz r0, 0(r27)
/* 8015B9F0 00158950  2C 00 00 12 */	cmpwi r0, 0x12
/* 8015B9F4 00158954  40 82 00 5C */	bne lbl_8015BA50
/* 8015B9F8 00158958  80 1B 00 08 */	lwz r0, 8(r27)
/* 8015B9FC 0015895C  7F E4 FB 78 */	mr r4, r31
/* 8015BA00 00158960  38 61 00 28 */	addi r3, r1, 0x28
/* 8015BA04 00158964  38 A1 00 38 */	addi r5, r1, 0x38
/* 8015BA08 00158968  90 01 00 38 */	stw r0, 0x38(r1)
/* 8015BA0C 0015896C  4B EE C5 11 */	bl GetIdForScript__13CStateManagerCF9TEditorId
/* 8015BA10 00158970  A0 01 00 28 */	lhz r0, 0x28(r1)
/* 8015BA14 00158974  7F E3 FB 78 */	mr r3, r31
/* 8015BA18 00158978  38 81 00 24 */	addi r4, r1, 0x24
/* 8015BA1C 0015897C  B0 1C 01 08 */	sth r0, 0x108(r28)
/* 8015BA20 00158980  A0 1C 01 08 */	lhz r0, 0x108(r28)
/* 8015BA24 00158984  B0 01 00 24 */	sth r0, 0x24(r1)
/* 8015BA28 00158988  4B EF 0B 7D */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8015BA2C 0015898C  7C 64 1B 78 */	mr r4, r3
/* 8015BA30 00158990  38 61 00 3C */	addi r3, r1, 0x3c
/* 8015BA34 00158994  4B F5 16 B5 */	bl "__ct__32TCastToPtr<18CMetroidPrimeRelay>FP7CEntity"
/* 8015BA38 00158998  80 63 00 04 */	lwz r3, 4(r3)
/* 8015BA3C 0015899C  28 03 00 00 */	cmplwi r3, 0
/* 8015BA40 001589A0  41 82 00 10 */	beq lbl_8015BA50
/* 8015BA44 001589A4  A0 03 00 34 */	lhz r0, 0x34(r3)
/* 8015BA48 001589A8  B0 1C 01 08 */	sth r0, 0x108(r28)
/* 8015BA4C 001589AC  48 00 00 20 */	b lbl_8015BA6C
lbl_8015BA50:
/* 8015BA50 001589B0  3B 7B 00 0C */	addi r27, r27, 0xc
lbl_8015BA54:
/* 8015BA54 001589B4  80 1C 00 24 */	lwz r0, 0x24(r28)
/* 8015BA58 001589B8  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 8015BA5C 001589BC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8015BA60 001589C0  7C 03 02 14 */	add r0, r3, r0
/* 8015BA64 001589C4  7C 1B 00 40 */	cmplw r27, r0
/* 8015BA68 001589C8  40 82 FF 84 */	bne lbl_8015B9EC
lbl_8015BA6C:
/* 8015BA6C 001589CC  88 1C 00 30 */	lbz r0, 0x30(r28)
/* 8015BA70 001589D0  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8015BA74 001589D4  41 82 00 98 */	beq lbl_8015BB0C
/* 8015BA78 001589D8  2C 1D 00 06 */	cmpwi r29, 6
/* 8015BA7C 001589DC  83 7F 08 4C */	lwz r27, 0x84c(r31)
/* 8015BA80 001589E0  41 82 00 8C */	beq lbl_8015BB0C
/* 8015BA84 001589E4  40 80 00 10 */	bge lbl_8015BA94
/* 8015BA88 001589E8  2C 1D 00 05 */	cmpwi r29, 5
/* 8015BA8C 001589EC  40 80 00 4C */	bge lbl_8015BAD8
/* 8015BA90 001589F0  48 00 00 7C */	b lbl_8015BB0C
lbl_8015BA94:
/* 8015BA94 001589F4  2C 1D 00 08 */	cmpwi r29, 8
/* 8015BA98 001589F8  40 80 00 74 */	bge lbl_8015BB0C
/* 8015BA9C 001589FC  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8015BAA0 00158A00  7F 83 E3 78 */	mr r3, r28
/* 8015BAA4 00158A04  38 81 00 20 */	addi r4, r1, 0x20
/* 8015BAA8 00158A08  B0 01 00 20 */	sth r0, 0x20(r1)
/* 8015BAAC 00158A0C  48 00 01 61 */	bl AddToObjectList__17CScriptPlayerHintF9TUniqueIdR13CStateManager
/* 8015BAB0 00158A10  A0 1C 00 08 */	lhz r0, 8(r28)
/* 8015BAB4 00158A14  7F 63 DB 78 */	mr r3, r27
/* 8015BAB8 00158A18  7F E5 FB 78 */	mr r5, r31
/* 8015BABC 00158A1C  38 81 00 1C */	addi r4, r1, 0x1c
/* 8015BAC0 00158A20  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8015BAC4 00158A24  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 8015BAC8 00158A28  48 12 8A 3D */	bl AddToPlayerHintAddList__7CPlayerF9TUniqueIdR13CStateManager
/* 8015BACC 00158A2C  38 00 00 00 */	li r0, 0
/* 8015BAD0 00158A30  98 1C 00 FC */	stb r0, 0xfc(r28)
/* 8015BAD4 00158A34  48 00 00 38 */	b lbl_8015BB0C
lbl_8015BAD8:
/* 8015BAD8 00158A38  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8015BADC 00158A3C  7F 83 E3 78 */	mr r3, r28
/* 8015BAE0 00158A40  7F E5 FB 78 */	mr r5, r31
/* 8015BAE4 00158A44  38 81 00 14 */	addi r4, r1, 0x14
/* 8015BAE8 00158A48  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8015BAEC 00158A4C  48 00 00 51 */	bl RemoveFromObjectList__17CScriptPlayerHintF9TUniqueIdR13CStateManager
/* 8015BAF0 00158A50  A0 1C 00 08 */	lhz r0, 8(r28)
/* 8015BAF4 00158A54  7F 63 DB 78 */	mr r3, r27
/* 8015BAF8 00158A58  7F E5 FB 78 */	mr r5, r31
/* 8015BAFC 00158A5C  38 81 00 10 */	addi r4, r1, 0x10
/* 8015BB00 00158A60  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8015BB04 00158A64  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8015BB08 00158A68  48 12 88 6D */	bl AddToPlayerHintRemoveList__7CPlayerF9TUniqueIdR13CStateManager
lbl_8015BB0C:
/* 8015BB0C 00158A6C  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8015BB10 00158A70  7F 83 E3 78 */	mr r3, r28
/* 8015BB14 00158A74  7F A4 EB 78 */	mr r4, r29
/* 8015BB18 00158A78  7F E6 FB 78 */	mr r6, r31
/* 8015BB1C 00158A7C  B0 01 00 08 */	sth r0, 8(r1)
/* 8015BB20 00158A80  38 A1 00 08 */	addi r5, r1, 8
/* 8015BB24 00158A84  4B EF 7A F1 */	bl AcceptScriptMsg__6CActorF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 8015BB28 00158A88  BB 61 00 4C */	lmw r27, 0x4c(r1)
/* 8015BB2C 00158A8C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8015BB30 00158A90  7C 08 03 A6 */	mtlr r0
/* 8015BB34 00158A94  38 21 00 60 */	addi r1, r1, 0x60
/* 8015BB38 00158A98  4E 80 00 20 */	blr

.global RemoveFromObjectList__17CScriptPlayerHintF9TUniqueIdR13CStateManager
RemoveFromObjectList__17CScriptPlayerHintF9TUniqueIdR13CStateManager:
/* 8015BB3C 00158A9C  80 03 00 E8 */	lwz r0, 0xe8(r3)
/* 8015BB40 00158AA0  2C 00 00 00 */	cmpwi r0, 0
/* 8015BB44 00158AA4  4D 82 00 20 */	beqlr
/* 8015BB48 00158AA8  38 E3 00 EC */	addi r7, r3, 0xec
/* 8015BB4C 00158AAC  54 00 08 3C */	slwi r0, r0, 1
/* 8015BB50 00158AB0  7C E6 3B 78 */	mr r6, r7
/* 8015BB54 00158AB4  7D 07 02 14 */	add r8, r7, r0
/* 8015BB58 00158AB8  48 00 00 08 */	b lbl_8015BB60
lbl_8015BB5C:
/* 8015BB5C 00158ABC  38 C6 00 02 */	addi r6, r6, 2
lbl_8015BB60:
/* 8015BB60 00158AC0  7C 06 40 40 */	cmplw r6, r8
/* 8015BB64 00158AC4  41 82 00 14 */	beq lbl_8015BB78
/* 8015BB68 00158AC8  A0 A6 00 00 */	lhz r5, 0(r6)
/* 8015BB6C 00158ACC  A0 04 00 00 */	lhz r0, 0(r4)
/* 8015BB70 00158AD0  7C 05 00 40 */	cmplw r5, r0
/* 8015BB74 00158AD4  40 82 FF E8 */	bne lbl_8015BB5C
lbl_8015BB78:
/* 8015BB78 00158AD8  7C 06 40 40 */	cmplw r6, r8
/* 8015BB7C 00158ADC  40 82 00 4C */	bne lbl_8015BBC8
/* 8015BB80 00158AE0  7C 07 38 40 */	cmplw r7, r7
/* 8015BB84 00158AE4  4D 80 00 20 */	bltlr
/* 8015BB88 00158AE8  7C 07 40 40 */	cmplw r7, r8
/* 8015BB8C 00158AEC  4C 80 00 20 */	bgelr
/* 8015BB90 00158AF0  7C E6 3B 78 */	mr r6, r7
/* 8015BB94 00158AF4  48 00 00 10 */	b lbl_8015BBA4
lbl_8015BB98:
/* 8015BB98 00158AF8  A0 06 00 02 */	lhz r0, 2(r6)
/* 8015BB9C 00158AFC  B0 06 00 00 */	sth r0, 0(r6)
/* 8015BBA0 00158B00  38 C6 00 02 */	addi r6, r6, 2
lbl_8015BBA4:
/* 8015BBA4 00158B04  80 A3 00 E8 */	lwz r5, 0xe8(r3)
/* 8015BBA8 00158B08  54 A4 08 3C */	slwi r4, r5, 1
/* 8015BBAC 00158B0C  38 04 FF FE */	addi r0, r4, -2
/* 8015BBB0 00158B10  7C 07 02 14 */	add r0, r7, r0
/* 8015BBB4 00158B14  7C 06 00 40 */	cmplw r6, r0
/* 8015BBB8 00158B18  41 80 FF E0 */	blt lbl_8015BB98
/* 8015BBBC 00158B1C  38 05 FF FF */	addi r0, r5, -1
/* 8015BBC0 00158B20  90 03 00 E8 */	stw r0, 0xe8(r3)
/* 8015BBC4 00158B24  4E 80 00 20 */	blr
lbl_8015BBC8:
/* 8015BBC8 00158B28  7C 06 38 40 */	cmplw r6, r7
/* 8015BBCC 00158B2C  4D 80 00 20 */	bltlr
/* 8015BBD0 00158B30  7C 06 40 40 */	cmplw r6, r8
/* 8015BBD4 00158B34  4C 80 00 20 */	bgelr
/* 8015BBD8 00158B38  48 00 00 10 */	b lbl_8015BBE8
lbl_8015BBDC:
/* 8015BBDC 00158B3C  A0 06 00 02 */	lhz r0, 2(r6)
/* 8015BBE0 00158B40  B0 06 00 00 */	sth r0, 0(r6)
/* 8015BBE4 00158B44  38 C6 00 02 */	addi r6, r6, 2
lbl_8015BBE8:
/* 8015BBE8 00158B48  80 A3 00 E8 */	lwz r5, 0xe8(r3)
/* 8015BBEC 00158B4C  54 A4 08 3C */	slwi r4, r5, 1
/* 8015BBF0 00158B50  38 04 FF FE */	addi r0, r4, -2
/* 8015BBF4 00158B54  7C 07 02 14 */	add r0, r7, r0
/* 8015BBF8 00158B58  7C 06 00 40 */	cmplw r6, r0
/* 8015BBFC 00158B5C  41 80 FF E0 */	blt lbl_8015BBDC
/* 8015BC00 00158B60  38 05 FF FF */	addi r0, r5, -1
/* 8015BC04 00158B64  90 03 00 E8 */	stw r0, 0xe8(r3)
/* 8015BC08 00158B68  4E 80 00 20 */	blr

.global AddToObjectList__17CScriptPlayerHintF9TUniqueIdR13CStateManager
AddToObjectList__17CScriptPlayerHintF9TUniqueIdR13CStateManager:
/* 8015BC0C 00158B6C  80 03 00 E8 */	lwz r0, 0xe8(r3)
/* 8015BC10 00158B70  38 C3 00 EC */	addi r6, r3, 0xec
/* 8015BC14 00158B74  54 00 08 3C */	slwi r0, r0, 1
/* 8015BC18 00158B78  7C E6 02 14 */	add r7, r6, r0
/* 8015BC1C 00158B7C  48 00 00 08 */	b lbl_8015BC24
lbl_8015BC20:
/* 8015BC20 00158B80  38 C6 00 02 */	addi r6, r6, 2
lbl_8015BC24:
/* 8015BC24 00158B84  7C 06 38 40 */	cmplw r6, r7
/* 8015BC28 00158B88  41 82 00 14 */	beq lbl_8015BC3C
/* 8015BC2C 00158B8C  A0 A6 00 00 */	lhz r5, 0(r6)
/* 8015BC30 00158B90  A0 04 00 00 */	lhz r0, 0(r4)
/* 8015BC34 00158B94  7C 05 00 40 */	cmplw r5, r0
/* 8015BC38 00158B98  40 82 FF E8 */	bne lbl_8015BC20
lbl_8015BC3C:
/* 8015BC3C 00158B9C  7C 06 38 40 */	cmplw r6, r7
/* 8015BC40 00158BA0  4C 82 00 20 */	bnelr
/* 8015BC44 00158BA4  28 07 00 00 */	cmplwi r7, 0
/* 8015BC48 00158BA8  41 82 00 0C */	beq lbl_8015BC54
/* 8015BC4C 00158BAC  A0 04 00 00 */	lhz r0, 0(r4)
/* 8015BC50 00158BB0  B0 07 00 00 */	sth r0, 0(r7)
lbl_8015BC54:
/* 8015BC54 00158BB4  80 83 00 E8 */	lwz r4, 0xe8(r3)
/* 8015BC58 00158BB8  38 04 00 01 */	addi r0, r4, 1
/* 8015BC5C 00158BBC  90 03 00 E8 */	stw r0, 0xe8(r3)
/* 8015BC60 00158BC0  4E 80 00 20 */	blr

.global ClearObjectList__17CScriptPlayerHintFv
ClearObjectList__17CScriptPlayerHintFv:
/* 8015BC64 00158BC4  80 C3 00 E8 */	lwz r6, 0xe8(r3)
/* 8015BC68 00158BC8  38 80 00 00 */	li r4, 0
/* 8015BC6C 00158BCC  2C 06 00 00 */	cmpwi r6, 0
/* 8015BC70 00158BD0  40 81 00 40 */	ble lbl_8015BCB0
/* 8015BC74 00158BD4  2C 06 00 08 */	cmpwi r6, 8
/* 8015BC78 00158BD8  38 A6 FF F8 */	addi r5, r6, -8
/* 8015BC7C 00158BDC  40 81 00 20 */	ble lbl_8015BC9C
/* 8015BC80 00158BE0  38 05 00 07 */	addi r0, r5, 7
/* 8015BC84 00158BE4  54 00 E8 FE */	srwi r0, r0, 3
/* 8015BC88 00158BE8  7C 09 03 A6 */	mtctr r0
/* 8015BC8C 00158BEC  2C 05 00 00 */	cmpwi r5, 0
/* 8015BC90 00158BF0  40 81 00 0C */	ble lbl_8015BC9C
lbl_8015BC94:
/* 8015BC94 00158BF4  38 84 00 08 */	addi r4, r4, 8
/* 8015BC98 00158BF8  42 00 FF FC */	bdnz lbl_8015BC94
lbl_8015BC9C:
/* 8015BC9C 00158BFC  7C 04 30 50 */	subf r0, r4, r6
/* 8015BCA0 00158C00  7C 09 03 A6 */	mtctr r0
/* 8015BCA4 00158C04  7C 04 30 00 */	cmpw r4, r6
/* 8015BCA8 00158C08  40 80 00 08 */	bge lbl_8015BCB0
lbl_8015BCAC:
/* 8015BCAC 00158C0C  42 00 00 00 */	bdnz lbl_8015BCAC
lbl_8015BCB0:
/* 8015BCB0 00158C10  38 00 00 00 */	li r0, 0
/* 8015BCB4 00158C14  90 03 00 E8 */	stw r0, 0xe8(r3)
/* 8015BCB8 00158C18  4E 80 00 20 */	blr

.global "__ct__17CScriptPlayerHintF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fbii"
"__ct__17CScriptPlayerHintF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fbii":
/* 8015BCBC 00158C1C  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 8015BCC0 00158C20  7C 08 02 A6 */	mflr r0
/* 8015BCC4 00158C24  90 01 01 04 */	stw r0, 0x104(r1)
/* 8015BCC8 00158C28  BF 01 00 E0 */	stmw r24, 0xe0(r1)
/* 8015BCCC 00158C2C  7C 7F 1B 78 */	mr r31, r3
/* 8015BCD0 00158C30  7C 98 23 78 */	mr r24, r4
/* 8015BCD4 00158C34  7C B9 2B 78 */	mr r25, r5
/* 8015BCD8 00158C38  7C DA 33 78 */	mr r26, r6
/* 8015BCDC 00158C3C  7C FB 3B 78 */	mr r27, r7
/* 8015BCE0 00158C40  7D 1C 43 78 */	mr r28, r8
/* 8015BCE4 00158C44  7D 3D 4B 78 */	mr r29, r9
/* 8015BCE8 00158C48  7D 5E 53 78 */	mr r30, r10
/* 8015BCEC 00158C4C  38 61 00 88 */	addi r3, r1, 0x88
/* 8015BCF0 00158C50  4B ED EA B5 */	bl CModelDataNull__10CModelDataFv
/* 8015BCF4 00158C54  38 61 00 20 */	addi r3, r1, 0x20
/* 8015BCF8 00158C58  4B EB F1 41 */	bl None__16CActorParametersFv
/* 8015BCFC 00158C5C  A0 8D A3 8C */	lhz r4, kInvalidUniqueId@sda21(r13)
/* 8015BD00 00158C60  38 00 00 00 */	li r0, 0
/* 8015BD04 00158C64  80 AD 8C B0 */	lwz r5, lbl_805A7870@sda21(r13)
/* 8015BD08 00158C68  38 60 00 00 */	li r3, 0
/* 8015BD0C 00158C6C  B0 81 00 10 */	sth r4, 0x10(r1)
/* 8015BD10 00158C70  38 80 00 01 */	li r4, 1
/* 8015BD14 00158C74  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8015BD18 00158C78  90 01 00 18 */	stw r0, 0x18(r1)
/* 8015BD1C 00158C7C  48 22 E1 D9 */	bl __shl2i
/* 8015BD20 00158C80  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 8015BD24 00158C84  39 61 00 20 */	addi r11, r1, 0x20
/* 8015BD28 00158C88  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 8015BD2C 00158C8C  38 01 00 10 */	addi r0, r1, 0x10
/* 8015BD30 00158C90  7C A3 1B 78 */	or r3, r5, r3
/* 8015BD34 00158C94  A1 38 00 00 */	lhz r9, 0(r24)
/* 8015BD38 00158C98  7C C4 23 78 */	or r4, r6, r4
/* 8015BD3C 00158C9C  90 61 00 18 */	stw r3, 0x18(r1)
/* 8015BD40 00158CA0  7F E3 FB 78 */	mr r3, r31
/* 8015BD44 00158CA4  7F 85 E3 78 */	mr r5, r28
/* 8015BD48 00158CA8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8015BD4C 00158CAC  7F 26 CB 78 */	mr r6, r25
/* 8015BD50 00158CB0  7F 47 D3 78 */	mr r7, r26
/* 8015BD54 00158CB4  7F 68 DB 78 */	mr r8, r27
/* 8015BD58 00158CB8  B1 21 00 14 */	sth r9, 0x14(r1)
/* 8015BD5C 00158CBC  38 81 00 14 */	addi r4, r1, 0x14
/* 8015BD60 00158CC0  39 21 00 88 */	addi r9, r1, 0x88
/* 8015BD64 00158CC4  39 41 00 18 */	addi r10, r1, 0x18
/* 8015BD68 00158CC8  91 61 00 08 */	stw r11, 8(r1)
/* 8015BD6C 00158CCC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8015BD70 00158CD0  4B EF 9A B1 */	bl "__ct__6CActorF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC13CMaterialListRC16CActorParameters9TUniqueId"
/* 8015BD74 00158CD4  38 61 00 20 */	addi r3, r1, 0x20
/* 8015BD78 00158CD8  38 80 FF FF */	li r4, -1
/* 8015BD7C 00158CDC  4B FA A8 8D */	bl __dt__16CActorParametersFv
/* 8015BD80 00158CE0  38 61 00 88 */	addi r3, r1, 0x88
/* 8015BD84 00158CE4  38 80 FF FF */	li r4, -1
/* 8015BD88 00158CE8  4B FB AC C5 */	bl __dt__10CModelDataFv
/* 8015BD8C 00158CEC  3C 60 80 3E */	lis r3, lbl_803E32D8@ha
/* 8015BD90 00158CF0  38 00 00 00 */	li r0, 0
/* 8015BD94 00158CF4  38 83 32 D8 */	addi r4, r3, lbl_803E32D8@l
/* 8015BD98 00158CF8  7F E3 FB 78 */	mr r3, r31
/* 8015BD9C 00158CFC  90 9F 00 00 */	stw r4, 0(r31)
/* 8015BDA0 00158D00  90 1F 00 E8 */	stw r0, 0xe8(r31)
/* 8015BDA4 00158D04  98 1F 00 FC */	stb r0, 0xfc(r31)
/* 8015BDA8 00158D08  93 BF 01 00 */	stw r29, 0x100(r31)
/* 8015BDAC 00158D0C  93 DF 01 04 */	stw r30, 0x104(r31)
/* 8015BDB0 00158D10  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8015BDB4 00158D14  B0 1F 01 08 */	sth r0, 0x108(r31)
/* 8015BDB8 00158D18  BB 01 00 E0 */	lmw r24, 0xe0(r1)
/* 8015BDBC 00158D1C  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8015BDC0 00158D20  7C 08 03 A6 */	mtlr r0
/* 8015BDC4 00158D24  38 21 01 00 */	addi r1, r1, 0x100
/* 8015BDC8 00158D28  4E 80 00 20 */	blr
