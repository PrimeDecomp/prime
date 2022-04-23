.include "macros.inc"

.section .data

.global lbl_803E70E8
lbl_803E70E8:
	# ROM: 0x3E40E8
	.4byte 0
	.4byte 0
	.4byte __dt__9CRepulsorFv
	.4byte Accept__9CRepulsorFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__7CEntityFfR13CStateManager
	.4byte AcceptScriptMsg__9CRepulsorF20EScriptObjectMessage9TUniqueIdR13CStateManager
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
	.4byte DoUserAnimEvent__6CActorFR13CStateManagerRC13CInt32POINode14EUserEventType
	.4byte 0

.section .sdata

.global lbl_805A8070
lbl_805A8070:
	# ROM: 0x3F5A10
	.4byte 0
	.4byte 0


.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global __dt__9CRepulsorFv
__dt__9CRepulsorFv:
/* 8020FC48 0020CBA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020FC4C 0020CBAC  7C 08 02 A6 */	mflr r0
/* 8020FC50 0020CBB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020FC54 0020CBB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020FC58 0020CBB8  7C 9F 23 78 */	mr r31, r4
/* 8020FC5C 0020CBBC  93 C1 00 08 */	stw r30, 8(r1)
/* 8020FC60 0020CBC0  7C 7E 1B 79 */	or. r30, r3, r3
/* 8020FC64 0020CBC4  41 82 00 28 */	beq lbl_8020FC8C
/* 8020FC68 0020CBC8  3C A0 80 3E */	lis r5, lbl_803E70E8@ha
/* 8020FC6C 0020CBCC  38 80 00 00 */	li r4, 0
/* 8020FC70 0020CBD0  38 05 70 E8 */	addi r0, r5, lbl_803E70E8@l
/* 8020FC74 0020CBD4  90 1E 00 00 */	stw r0, 0(r30)
/* 8020FC78 0020CBD8  4B E4 5A 79 */	bl __dt__6CActorFv
/* 8020FC7C 0020CBDC  7F E0 07 35 */	extsh. r0, r31
/* 8020FC80 0020CBE0  40 81 00 0C */	ble lbl_8020FC8C
/* 8020FC84 0020CBE4  7F C3 F3 78 */	mr r3, r30
/* 8020FC88 0020CBE8  48 10 5C A9 */	bl Free__7CMemoryFPCv
lbl_8020FC8C:
/* 8020FC8C 0020CBEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020FC90 0020CBF0  7F C3 F3 78 */	mr r3, r30
/* 8020FC94 0020CBF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020FC98 0020CBF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8020FC9C 0020CBFC  7C 08 03 A6 */	mtlr r0
/* 8020FCA0 0020CC00  38 21 00 10 */	addi r1, r1, 0x10
/* 8020FCA4 0020CC04  4E 80 00 20 */	blr 

.global AcceptScriptMsg__9CRepulsorF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__9CRepulsorF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 8020FCA8 0020CC08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020FCAC 0020CC0C  7C 08 02 A6 */	mflr r0
/* 8020FCB0 0020CC10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020FCB4 0020CC14  A0 05 00 00 */	lhz r0, 0(r5)
/* 8020FCB8 0020CC18  38 A1 00 08 */	addi r5, r1, 8
/* 8020FCBC 0020CC1C  B0 01 00 08 */	sth r0, 8(r1)
/* 8020FCC0 0020CC20  4B E4 39 55 */	bl AcceptScriptMsg__6CActorF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 8020FCC4 0020CC24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020FCC8 0020CC28  7C 08 03 A6 */	mtlr r0
/* 8020FCCC 0020CC2C  38 21 00 10 */	addi r1, r1, 0x10
/* 8020FCD0 0020CC30  4E 80 00 20 */	blr 

.global Accept__9CRepulsorFR8IVisitor
Accept__9CRepulsorFR8IVisitor:
/* 8020FCD4 0020CC34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020FCD8 0020CC38  7C 08 02 A6 */	mflr r0
/* 8020FCDC 0020CC3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020FCE0 0020CC40  7C 60 1B 78 */	mr r0, r3
/* 8020FCE4 0020CC44  7C 83 23 78 */	mr r3, r4
/* 8020FCE8 0020CC48  81 84 00 00 */	lwz r12, 0(r4)
/* 8020FCEC 0020CC4C  7C 04 03 78 */	mr r4, r0
/* 8020FCF0 0020CC50  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 8020FCF4 0020CC54  7D 89 03 A6 */	mtctr r12
/* 8020FCF8 0020CC58  4E 80 04 21 */	bctrl 
/* 8020FCFC 0020CC5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020FD00 0020CC60  7C 08 03 A6 */	mtlr r0
/* 8020FD04 0020CC64  38 21 00 10 */	addi r1, r1, 0x10
/* 8020FD08 0020CC68  4E 80 00 20 */	blr 

.global "__ct__9CRepulsorF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC9CVector3ff"
"__ct__9CRepulsorF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC9CVector3ff":
/* 8020FD0C 0020CC6C  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 8020FD10 0020CC70  7C 08 02 A6 */	mflr r0
/* 8020FD14 0020CC74  90 01 01 34 */	stw r0, 0x134(r1)
/* 8020FD18 0020CC78  DB E1 01 28 */	stfd f31, 0x128(r1)
/* 8020FD1C 0020CC7C  FF E0 08 90 */	fmr f31, f1
/* 8020FD20 0020CC80  BF 41 01 10 */	stmw r26, 0x110(r1)
/* 8020FD24 0020CC84  7C 7F 1B 78 */	mr r31, r3
/* 8020FD28 0020CC88  7C 9A 23 78 */	mr r26, r4
/* 8020FD2C 0020CC8C  7C BB 2B 78 */	mr r27, r5
/* 8020FD30 0020CC90  7C DC 33 78 */	mr r28, r6
/* 8020FD34 0020CC94  7C FD 3B 78 */	mr r29, r7
/* 8020FD38 0020CC98  7D 1E 43 78 */	mr r30, r8
/* 8020FD3C 0020CC9C  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8020FD40 0020CCA0  4B E2 AA 65 */	bl CModelDataNull__10CModelDataFv
/* 8020FD44 0020CCA4  38 61 00 50 */	addi r3, r1, 0x50
/* 8020FD48 0020CCA8  4B E0 B0 F1 */	bl None__16CActorParametersFv
/* 8020FD4C 0020CCAC  A0 8D A3 8C */	lhz r4, lbl_805A8F4C@sda21(r13)
/* 8020FD50 0020CCB0  38 00 00 00 */	li r0, 0
/* 8020FD54 0020CCB4  80 AD 94 B0 */	lwz r5, lbl_805A8070@sda21(r13)
/* 8020FD58 0020CCB8  38 60 00 00 */	li r3, 0
/* 8020FD5C 0020CCBC  B0 81 00 10 */	sth r4, 0x10(r1)
/* 8020FD60 0020CCC0  38 80 00 01 */	li r4, 1
/* 8020FD64 0020CCC4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8020FD68 0020CCC8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8020FD6C 0020CCCC  48 17 A1 89 */	bl __shl2i
/* 8020FD70 0020CCD0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8020FD74 0020CCD4  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 8020FD78 0020CCD8  7C 03 1B 78 */	or r3, r0, r3
/* 8020FD7C 0020CCDC  A0 1A 00 00 */	lhz r0, 0(r26)
/* 8020FD80 0020CCE0  7C A5 23 78 */	or r5, r5, r4
/* 8020FD84 0020CCE4  90 61 00 18 */	stw r3, 0x18(r1)
/* 8020FD88 0020CCE8  7F C4 F3 78 */	mr r4, r30
/* 8020FD8C 0020CCEC  38 61 00 20 */	addi r3, r1, 0x20
/* 8020FD90 0020CCF0  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 8020FD94 0020CCF4  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8020FD98 0020CCF8  48 10 33 A9 */	bl Translate__12CTransform4fFRC9CVector3f
/* 8020FD9C 0020CCFC  38 61 00 50 */	addi r3, r1, 0x50
/* 8020FDA0 0020CD00  38 01 00 10 */	addi r0, r1, 0x10
/* 8020FDA4 0020CD04  90 61 00 08 */	stw r3, 8(r1)
/* 8020FDA8 0020CD08  7F E3 FB 78 */	mr r3, r31
/* 8020FDAC 0020CD0C  7F 65 DB 78 */	mr r5, r27
/* 8020FDB0 0020CD10  7F 86 E3 78 */	mr r6, r28
/* 8020FDB4 0020CD14  90 01 00 0C */	stw r0, 0xc(r1)
/* 8020FDB8 0020CD18  7F A7 EB 78 */	mr r7, r29
/* 8020FDBC 0020CD1C  38 81 00 14 */	addi r4, r1, 0x14
/* 8020FDC0 0020CD20  39 01 00 20 */	addi r8, r1, 0x20
/* 8020FDC4 0020CD24  39 21 00 B8 */	addi r9, r1, 0xb8
/* 8020FDC8 0020CD28  39 41 00 18 */	addi r10, r1, 0x18
/* 8020FDCC 0020CD2C  4B E4 5A 55 */	bl "__ct__6CActorF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC13CMaterialListRC16CActorParameters9TUniqueId"
/* 8020FDD0 0020CD30  38 61 00 50 */	addi r3, r1, 0x50
/* 8020FDD4 0020CD34  38 80 FF FF */	li r4, -1
/* 8020FDD8 0020CD38  4B EF 68 31 */	bl __dt__16CActorParametersFv
/* 8020FDDC 0020CD3C  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8020FDE0 0020CD40  38 80 FF FF */	li r4, -1
/* 8020FDE4 0020CD44  4B F0 6C 69 */	bl __dt__10CModelDataFv
/* 8020FDE8 0020CD48  3C 80 80 3E */	lis r4, lbl_803E70E8@ha
/* 8020FDEC 0020CD4C  7F E3 FB 78 */	mr r3, r31
/* 8020FDF0 0020CD50  38 04 70 E8 */	addi r0, r4, lbl_803E70E8@l
/* 8020FDF4 0020CD54  90 1F 00 00 */	stw r0, 0(r31)
/* 8020FDF8 0020CD58  D3 FF 00 E8 */	stfs f31, 0xe8(r31)
/* 8020FDFC 0020CD5C  CB E1 01 28 */	lfd f31, 0x128(r1)
/* 8020FE00 0020CD60  BB 41 01 10 */	lmw r26, 0x110(r1)
/* 8020FE04 0020CD64  80 01 01 34 */	lwz r0, 0x134(r1)
/* 8020FE08 0020CD68  7C 08 03 A6 */	mtlr r0
/* 8020FE0C 0020CD6C  38 21 01 30 */	addi r1, r1, 0x130
/* 8020FE10 0020CD70  4E 80 00 20 */	blr
