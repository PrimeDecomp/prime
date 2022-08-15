.include "macros.inc"

.section .data
.balign 8

.global lbl_803E0D00
lbl_803E0D00:
	# ROM: 0x3DDD00
	.4byte 0
	.4byte 0
	.4byte __dt__19CScriptGrapplePointFv
	.4byte Accept__19CScriptGrapplePointFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__19CScriptGrapplePointFfR13CStateManager
	.4byte AcceptScriptMsg__19CScriptGrapplePointF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__6CActorFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__19CScriptGrapplePointCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__19CScriptGrapplePointCFRC13CStateManager
	.4byte CanRenderUnsorted__6CActorCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__6CActorFR13CStateManager
	.4byte GetDamageVulnerability__6CActorCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__19CScriptGrapplePointCFv
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

.global lbl_805A76E0
lbl_805A76E0:
	# ROM: 0x3F5080
	.4byte 0x00000029
	.4byte 0

.section .sdata2, "a"
.balign 8

.global lbl_805AB650
lbl_805AB650:
	# ROM: 0x3F7EF0
	.float 0.5
	.4byte 0

.section .text, "ax"

.global Accept__19CScriptGrapplePointFR8IVisitor
Accept__19CScriptGrapplePointFR8IVisitor:
/* 8012F774 0012C6D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012F778 0012C6D8  7C 08 02 A6 */	mflr r0
/* 8012F77C 0012C6DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012F780 0012C6E0  7C 60 1B 78 */	mr r0, r3
/* 8012F784 0012C6E4  7C 83 23 78 */	mr r3, r4
/* 8012F788 0012C6E8  81 84 00 00 */	lwz r12, 0(r4)
/* 8012F78C 0012C6EC  7C 04 03 78 */	mr r4, r0
/* 8012F790 0012C6F0  81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 8012F794 0012C6F4  7D 89 03 A6 */	mtctr r12
/* 8012F798 0012C6F8  4E 80 04 21 */	bctrl
/* 8012F79C 0012C6FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012F7A0 0012C700  7C 08 03 A6 */	mtlr r0
/* 8012F7A4 0012C704  38 21 00 10 */	addi r1, r1, 0x10
/* 8012F7A8 0012C708  4E 80 00 20 */	blr

.global AcceptScriptMsg__19CScriptGrapplePointF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__19CScriptGrapplePointF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 8012F7AC 0012C70C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012F7B0 0012C710  7C 08 02 A6 */	mflr r0
/* 8012F7B4 0012C714  2C 04 00 04 */	cmpwi r4, 4
/* 8012F7B8 0012C718  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012F7BC 0012C71C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012F7C0 0012C720  7C 7F 1B 78 */	mr r31, r3
/* 8012F7C4 0012C724  41 82 00 48 */	beq lbl_8012F80C
/* 8012F7C8 0012C728  40 80 00 74 */	bge lbl_8012F83C
/* 8012F7CC 0012C72C  2C 04 00 01 */	cmpwi r4, 1
/* 8012F7D0 0012C730  41 82 00 08 */	beq lbl_8012F7D8
/* 8012F7D4 0012C734  48 00 00 68 */	b lbl_8012F83C
lbl_8012F7D8:
/* 8012F7D8 0012C738  88 1F 00 30 */	lbz r0, 0x30(r31)
/* 8012F7DC 0012C73C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8012F7E0 0012C740  40 82 00 5C */	bne lbl_8012F83C
/* 8012F7E4 0012C744  7C C5 33 78 */	mr r5, r6
/* 8012F7E8 0012C748  38 80 00 29 */	li r4, 0x29
/* 8012F7EC 0012C74C  4B F2 4B 65 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8012F7F0 0012C750  7F E3 FB 78 */	mr r3, r31
/* 8012F7F4 0012C754  38 80 00 01 */	li r4, 1
/* 8012F7F8 0012C758  81 9F 00 00 */	lwz r12, 0(r31)
/* 8012F7FC 0012C75C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8012F800 0012C760  7D 89 03 A6 */	mtctr r12
/* 8012F804 0012C764  4E 80 04 21 */	bctrl
/* 8012F808 0012C768  48 00 00 34 */	b lbl_8012F83C
lbl_8012F80C:
/* 8012F80C 0012C76C  88 1F 00 30 */	lbz r0, 0x30(r31)
/* 8012F810 0012C770  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8012F814 0012C774  41 82 00 28 */	beq lbl_8012F83C
/* 8012F818 0012C778  7C C5 33 78 */	mr r5, r6
/* 8012F81C 0012C77C  38 80 00 29 */	li r4, 0x29
/* 8012F820 0012C780  4B F2 47 61 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8012F824 0012C784  7F E3 FB 78 */	mr r3, r31
/* 8012F828 0012C788  38 80 00 00 */	li r4, 0
/* 8012F82C 0012C78C  81 9F 00 00 */	lwz r12, 0(r31)
/* 8012F830 0012C790  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8012F834 0012C794  7D 89 03 A6 */	mtctr r12
/* 8012F838 0012C798  4E 80 04 21 */	bctrl
lbl_8012F83C:
/* 8012F83C 0012C79C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012F840 0012C7A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012F844 0012C7A4  7C 08 03 A6 */	mtlr r0
/* 8012F848 0012C7A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8012F84C 0012C7AC  4E 80 00 20 */	blr

.global Think__19CScriptGrapplePointFfR13CStateManager
Think__19CScriptGrapplePointFfR13CStateManager:
/* 8012F850 0012C7B0  4E 80 00 20 */	blr

.global Render__19CScriptGrapplePointCFRC13CStateManager
Render__19CScriptGrapplePointCFRC13CStateManager:
/* 8012F854 0012C7B4  4E 80 00 20 */	blr

.global GetTouchBounds__19CScriptGrapplePointCFv
GetTouchBounds__19CScriptGrapplePointCFv:
/* 8012F858 0012C7B8  38 00 00 01 */	li r0, 1
/* 8012F85C 0012C7BC  28 03 00 00 */	cmplwi r3, 0
/* 8012F860 0012C7C0  98 03 00 18 */	stb r0, 0x18(r3)
/* 8012F864 0012C7C4  4D 82 00 20 */	beqlr
/* 8012F868 0012C7C8  C0 04 00 E8 */	lfs f0, 0xe8(r4)
/* 8012F86C 0012C7CC  D0 03 00 00 */	stfs f0, 0(r3)
/* 8012F870 0012C7D0  C0 04 00 EC */	lfs f0, 0xec(r4)
/* 8012F874 0012C7D4  D0 03 00 04 */	stfs f0, 4(r3)
/* 8012F878 0012C7D8  C0 04 00 F0 */	lfs f0, 0xf0(r4)
/* 8012F87C 0012C7DC  D0 03 00 08 */	stfs f0, 8(r3)
/* 8012F880 0012C7E0  C0 04 00 F4 */	lfs f0, 0xf4(r4)
/* 8012F884 0012C7E4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8012F888 0012C7E8  C0 04 00 F8 */	lfs f0, 0xf8(r4)
/* 8012F88C 0012C7EC  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8012F890 0012C7F0  C0 04 00 FC */	lfs f0, 0xfc(r4)
/* 8012F894 0012C7F4  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8012F898 0012C7F8  4E 80 00 20 */	blr

.global AddToRenderer__19CScriptGrapplePointCFRC14CFrustumPlanesRC13CStateManager
AddToRenderer__19CScriptGrapplePointCFRC14CFrustumPlanesRC13CStateManager:
/* 8012F89C 0012C7FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012F8A0 0012C800  7C 08 02 A6 */	mflr r0
/* 8012F8A4 0012C804  7C A4 2B 78 */	mr r4, r5
/* 8012F8A8 0012C808  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012F8AC 0012C80C  4B F2 51 21 */	bl EnsureRendered__6CActorCFRC13CStateManager
/* 8012F8B0 0012C810  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012F8B4 0012C814  7C 08 03 A6 */	mtlr r0
/* 8012F8B8 0012C818  38 21 00 10 */	addi r1, r1, 0x10
/* 8012F8BC 0012C81C  4E 80 00 20 */	blr

.global __dt__19CScriptGrapplePointFv
__dt__19CScriptGrapplePointFv:
/* 8012F8C0 0012C820  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012F8C4 0012C824  7C 08 02 A6 */	mflr r0
/* 8012F8C8 0012C828  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012F8CC 0012C82C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012F8D0 0012C830  7C 9F 23 78 */	mr r31, r4
/* 8012F8D4 0012C834  93 C1 00 08 */	stw r30, 8(r1)
/* 8012F8D8 0012C838  7C 7E 1B 79 */	or. r30, r3, r3
/* 8012F8DC 0012C83C  41 82 00 28 */	beq lbl_8012F904
/* 8012F8E0 0012C840  3C A0 80 3E */	lis r5, lbl_803E0D00@ha
/* 8012F8E4 0012C844  38 80 00 00 */	li r4, 0
/* 8012F8E8 0012C848  38 05 0D 00 */	addi r0, r5, lbl_803E0D00@l
/* 8012F8EC 0012C84C  90 1E 00 00 */	stw r0, 0(r30)
/* 8012F8F0 0012C850  4B F2 5E 01 */	bl __dt__6CActorFv
/* 8012F8F4 0012C854  7F E0 07 35 */	extsh. r0, r31
/* 8012F8F8 0012C858  40 81 00 0C */	ble lbl_8012F904
/* 8012F8FC 0012C85C  7F C3 F3 78 */	mr r3, r30
/* 8012F900 0012C860  48 1E 60 31 */	bl Free__7CMemoryFPCv
lbl_8012F904:
/* 8012F904 0012C864  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012F908 0012C868  7F C3 F3 78 */	mr r3, r30
/* 8012F90C 0012C86C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012F910 0012C870  83 C1 00 08 */	lwz r30, 8(r1)
/* 8012F914 0012C874  7C 08 03 A6 */	mtlr r0
/* 8012F918 0012C878  38 21 00 10 */	addi r1, r1, 0x10
/* 8012F91C 0012C87C  4E 80 00 20 */	blr

.global "__ct__19CScriptGrapplePointF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fbRC18CGrappleParameters"
"__ct__19CScriptGrapplePointF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fbRC18CGrappleParameters":
/* 8012F920 0012C880  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 8012F924 0012C884  7C 08 02 A6 */	mflr r0
/* 8012F928 0012C888  90 01 01 34 */	stw r0, 0x134(r1)
/* 8012F92C 0012C88C  BF 21 01 14 */	stmw r25, 0x114(r1)
/* 8012F930 0012C890  7C 7F 1B 78 */	mr r31, r3
/* 8012F934 0012C894  7C 99 23 78 */	mr r25, r4
/* 8012F938 0012C898  7C BA 2B 78 */	mr r26, r5
/* 8012F93C 0012C89C  7C DB 33 78 */	mr r27, r6
/* 8012F940 0012C8A0  7C FC 3B 78 */	mr r28, r7
/* 8012F944 0012C8A4  7D 1D 43 78 */	mr r29, r8
/* 8012F948 0012C8A8  7D 3E 4B 78 */	mr r30, r9
/* 8012F94C 0012C8AC  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8012F950 0012C8B0  4B F0 AE 55 */	bl CModelDataNull__10CModelDataFv
/* 8012F954 0012C8B4  38 61 00 50 */	addi r3, r1, 0x50
/* 8012F958 0012C8B8  4B EE B4 E1 */	bl None__16CActorParametersFv
/* 8012F95C 0012C8BC  A0 8D A3 8C */	lhz r4, kInvalidUniqueId@sda21(r13)
/* 8012F960 0012C8C0  38 00 00 00 */	li r0, 0
/* 8012F964 0012C8C4  80 AD 8B 20 */	lwz r5, lbl_805A76E0@sda21(r13)
/* 8012F968 0012C8C8  38 60 00 00 */	li r3, 0
/* 8012F96C 0012C8CC  B0 81 00 10 */	sth r4, 0x10(r1)
/* 8012F970 0012C8D0  38 80 00 01 */	li r4, 1
/* 8012F974 0012C8D4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8012F978 0012C8D8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8012F97C 0012C8DC  48 25 A5 79 */	bl __shl2i
/* 8012F980 0012C8E0  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 8012F984 0012C8E4  39 61 00 50 */	addi r11, r1, 0x50
/* 8012F988 0012C8E8  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 8012F98C 0012C8EC  38 01 00 10 */	addi r0, r1, 0x10
/* 8012F990 0012C8F0  7C A3 1B 78 */	or r3, r5, r3
/* 8012F994 0012C8F4  A1 39 00 00 */	lhz r9, 0(r25)
/* 8012F998 0012C8F8  7C C4 23 78 */	or r4, r6, r4
/* 8012F99C 0012C8FC  90 61 00 18 */	stw r3, 0x18(r1)
/* 8012F9A0 0012C900  7F E3 FB 78 */	mr r3, r31
/* 8012F9A4 0012C904  7F A5 EB 78 */	mr r5, r29
/* 8012F9A8 0012C908  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8012F9AC 0012C90C  7F 46 D3 78 */	mr r6, r26
/* 8012F9B0 0012C910  7F 67 DB 78 */	mr r7, r27
/* 8012F9B4 0012C914  7F 88 E3 78 */	mr r8, r28
/* 8012F9B8 0012C918  B1 21 00 14 */	sth r9, 0x14(r1)
/* 8012F9BC 0012C91C  38 81 00 14 */	addi r4, r1, 0x14
/* 8012F9C0 0012C920  39 21 00 B8 */	addi r9, r1, 0xb8
/* 8012F9C4 0012C924  39 41 00 18 */	addi r10, r1, 0x18
/* 8012F9C8 0012C928  91 61 00 08 */	stw r11, 8(r1)
/* 8012F9CC 0012C92C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8012F9D0 0012C930  4B F2 5E 51 */	bl "__ct__6CActorF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC13CMaterialListRC16CActorParameters9TUniqueId"
/* 8012F9D4 0012C934  38 61 00 50 */	addi r3, r1, 0x50
/* 8012F9D8 0012C938  38 80 FF FF */	li r4, -1
/* 8012F9DC 0012C93C  4B FD 6C 2D */	bl __dt__16CActorParametersFv
/* 8012F9E0 0012C940  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8012F9E4 0012C944  38 80 FF FF */	li r4, -1
/* 8012F9E8 0012C948  4B FE 70 65 */	bl __dt__10CModelDataFv
/* 8012F9EC 0012C94C  3C 60 80 3E */	lis r3, lbl_803E0D00@ha
/* 8012F9F0 0012C950  C0 02 99 30 */	lfs f0, lbl_805AB650@sda21(r2)
/* 8012F9F4 0012C954  38 03 0D 00 */	addi r0, r3, lbl_803E0D00@l
/* 8012F9F8 0012C958  38 7F 00 E8 */	addi r3, r31, 0xe8
/* 8012F9FC 0012C95C  90 1F 00 00 */	stw r0, 0(r31)
/* 8012FA00 0012C960  38 81 00 44 */	addi r4, r1, 0x44
/* 8012FA04 0012C964  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8012FA08 0012C968  C1 1F 00 60 */	lfs f8, 0x60(r31)
/* 8012FA0C 0012C96C  C0 FF 00 50 */	lfs f7, 0x50(r31)
/* 8012FA10 0012C970  C0 DF 00 40 */	lfs f6, 0x40(r31)
/* 8012FA14 0012C974  EC 88 00 2A */	fadds f4, f8, f0
/* 8012FA18 0012C978  EC A7 00 2A */	fadds f5, f7, f0
/* 8012FA1C 0012C97C  D0 E1 00 24 */	stfs f7, 0x24(r1)
/* 8012FA20 0012C980  EC 26 00 2A */	fadds f1, f6, f0
/* 8012FA24 0012C984  EC 67 00 28 */	fsubs f3, f7, f0
/* 8012FA28 0012C988  D0 C1 00 20 */	stfs f6, 0x20(r1)
/* 8012FA2C 0012C98C  EC 48 00 28 */	fsubs f2, f8, f0
/* 8012FA30 0012C990  EC 06 00 28 */	fsubs f0, f6, f0
/* 8012FA34 0012C994  D1 01 00 28 */	stfs f8, 0x28(r1)
/* 8012FA38 0012C998  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8012FA3C 0012C99C  D0 A1 00 30 */	stfs f5, 0x30(r1)
/* 8012FA40 0012C9A0  D0 81 00 34 */	stfs f4, 0x34(r1)
/* 8012FA44 0012C9A4  D0 C1 00 38 */	stfs f6, 0x38(r1)
/* 8012FA48 0012C9A8  D0 E1 00 3C */	stfs f7, 0x3c(r1)
/* 8012FA4C 0012C9AC  D1 01 00 40 */	stfs f8, 0x40(r1)
/* 8012FA50 0012C9B0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8012FA54 0012C9B4  D0 61 00 48 */	stfs f3, 0x48(r1)
/* 8012FA58 0012C9B8  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 8012FA5C 0012C9BC  48 20 8A AD */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 8012FA60 0012C9C0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8012FA64 0012C9C4  7F E3 FB 78 */	mr r3, r31
/* 8012FA68 0012C9C8  D0 1F 01 00 */	stfs f0, 0x100(r31)
/* 8012FA6C 0012C9CC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8012FA70 0012C9D0  D0 1F 01 04 */	stfs f0, 0x104(r31)
/* 8012FA74 0012C9D4  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8012FA78 0012C9D8  D0 1F 01 08 */	stfs f0, 0x108(r31)
/* 8012FA7C 0012C9DC  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8012FA80 0012C9E0  D0 1F 01 0C */	stfs f0, 0x10c(r31)
/* 8012FA84 0012C9E4  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8012FA88 0012C9E8  D0 1F 01 10 */	stfs f0, 0x110(r31)
/* 8012FA8C 0012C9EC  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8012FA90 0012C9F0  D0 1F 01 14 */	stfs f0, 0x114(r31)
/* 8012FA94 0012C9F4  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8012FA98 0012C9F8  D0 1F 01 18 */	stfs f0, 0x118(r31)
/* 8012FA9C 0012C9FC  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8012FAA0 0012CA00  D0 1F 01 1C */	stfs f0, 0x11c(r31)
/* 8012FAA4 0012CA04  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 8012FAA8 0012CA08  D0 1F 01 20 */	stfs f0, 0x120(r31)
/* 8012FAAC 0012CA0C  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 8012FAB0 0012CA10  D0 1F 01 24 */	stfs f0, 0x124(r31)
/* 8012FAB4 0012CA14  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8012FAB8 0012CA18  D0 1F 01 28 */	stfs f0, 0x128(r31)
/* 8012FABC 0012CA1C  88 1E 00 2C */	lbz r0, 0x2c(r30)
/* 8012FAC0 0012CA20  98 1F 01 2C */	stb r0, 0x12c(r31)
/* 8012FAC4 0012CA24  BB 21 01 14 */	lmw r25, 0x114(r1)
/* 8012FAC8 0012CA28  80 01 01 34 */	lwz r0, 0x134(r1)
/* 8012FACC 0012CA2C  7C 08 03 A6 */	mtlr r0
/* 8012FAD0 0012CA30  38 21 01 30 */	addi r1, r1, 0x130
/* 8012FAD4 0012CA34  4E 80 00 20 */	blr
