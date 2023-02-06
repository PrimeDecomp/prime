.include "macros.inc"

.section .data
.balign 8

.global __vt__11CScriptBeam
__vt__11CScriptBeam:
	# ROM: 0x3E8180
	.4byte 0
	.4byte 0
	.4byte __dt__11CScriptBeamFv
	.4byte Accept__11CScriptBeamFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__11CScriptBeamFfR13CStateManager
	.4byte AcceptScriptMsg__11CScriptBeamF20EScriptObjectMessage9TUniqueIdR13CStateManager
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
	.4byte GetSortingBounds__6CActorCFRC13CStateManager
	.4byte DoUserAnimEvent__6CActorFR13CStateManagerRC13CInt32POINode14EUserEventTypef
	.4byte 0


.section .text, "ax"

.global __dt__11CScriptBeamFv
__dt__11CScriptBeamFv:
/* 8027C5CC 0027952C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027C5D0 00279530  7C 08 02 A6 */	mflr r0
/* 8027C5D4 00279534  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027C5D8 00279538  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027C5DC 0027953C  7C 9F 23 78 */	mr r31, r4
/* 8027C5E0 00279540  93 C1 00 08 */	stw r30, 8(r1)
/* 8027C5E4 00279544  7C 7E 1B 79 */	or. r30, r3, r3
/* 8027C5E8 00279548  41 82 00 48 */	beq lbl_8027C630
/* 8027C5EC 0027954C  3C 60 80 3F */	lis r3, __vt__11CScriptBeam@ha
/* 8027C5F0 00279550  34 1E 00 E8 */	addic. r0, r30, 0xe8
/* 8027C5F4 00279554  38 03 B1 80 */	addi r0, r3, __vt__11CScriptBeam@l
/* 8027C5F8 00279558  90 1E 00 00 */	stw r0, 0(r30)
/* 8027C5FC 0027955C  41 82 00 18 */	beq lbl_8027C614
/* 8027C600 00279560  34 1E 00 E8 */	addic. r0, r30, 0xe8
/* 8027C604 00279564  41 82 00 10 */	beq lbl_8027C614
/* 8027C608 00279568  38 7E 00 E8 */	addi r3, r30, 0xe8
/* 8027C60C 0027956C  38 80 00 00 */	li r4, 0
/* 8027C610 00279570  48 0C 48 31 */	bl __dt__6CTokenFv
lbl_8027C614:
/* 8027C614 00279574  7F C3 F3 78 */	mr r3, r30
/* 8027C618 00279578  38 80 00 00 */	li r4, 0
/* 8027C61C 0027957C  4B DD 90 D5 */	bl __dt__6CActorFv
/* 8027C620 00279580  7F E0 07 35 */	extsh. r0, r31
/* 8027C624 00279584  40 81 00 0C */	ble lbl_8027C630
/* 8027C628 00279588  7F C3 F3 78 */	mr r3, r30
/* 8027C62C 0027958C  48 09 93 05 */	bl Free__7CMemoryFPCv
lbl_8027C630:
/* 8027C630 00279590  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027C634 00279594  7F C3 F3 78 */	mr r3, r30
/* 8027C638 00279598  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027C63C 0027959C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8027C640 002795A0  7C 08 03 A6 */	mtlr r0
/* 8027C644 002795A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8027C648 002795A8  4E 80 00 20 */	blr

.global Think__11CScriptBeamFfR13CStateManager
Think__11CScriptBeamFfR13CStateManager:
/* 8027C64C 002795AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027C650 002795B0  7C 08 02 A6 */	mflr r0
/* 8027C654 002795B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8027C658 002795B8  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8027C65C 002795BC  FF E0 08 90 */	fmr f31, f1
/* 8027C660 002795C0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8027C664 002795C4  7C 9F 23 78 */	mr r31, r4
/* 8027C668 002795C8  38 81 00 08 */	addi r4, r1, 8
/* 8027C66C 002795CC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8027C670 002795D0  7C 7E 1B 78 */	mr r30, r3
/* 8027C674 002795D4  A0 03 01 54 */	lhz r0, 0x154(r3)
/* 8027C678 002795D8  7F E3 FB 78 */	mr r3, r31
/* 8027C67C 002795DC  B0 01 00 08 */	sth r0, 8(r1)
/* 8027C680 002795E0  4B DC FE F5 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8027C684 002795E4  28 03 00 00 */	cmplwi r3, 0
/* 8027C688 002795E8  41 82 00 30 */	beq lbl_8027C6B8
/* 8027C68C 002795EC  88 03 00 30 */	lbz r0, 0x30(r3)
/* 8027C690 002795F0  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8027C694 002795F4  41 82 00 2C */	beq lbl_8027C6C0
/* 8027C698 002795F8  81 83 00 00 */	lwz r12, 0(r3)
/* 8027C69C 002795FC  FC 20 F8 90 */	fmr f1, f31
/* 8027C6A0 00279600  7F E5 FB 78 */	mr r5, r31
/* 8027C6A4 00279604  38 9E 00 34 */	addi r4, r30, 0x34
/* 8027C6A8 00279608  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 8027C6AC 0027960C  7D 89 03 A6 */	mtctr r12
/* 8027C6B0 00279610  4E 80 04 21 */	bctrl
/* 8027C6B4 00279614  48 00 00 0C */	b lbl_8027C6C0
lbl_8027C6B8:
/* 8027C6B8 00279618  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8027C6BC 0027961C  B0 1E 01 54 */	sth r0, 0x154(r30)
lbl_8027C6C0:
/* 8027C6C0 00279620  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8027C6C4 00279624  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8027C6C8 00279628  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8027C6CC 0027962C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8027C6D0 00279630  7C 08 03 A6 */	mtlr r0
/* 8027C6D4 00279634  38 21 00 20 */	addi r1, r1, 0x20
/* 8027C6D8 00279638  4E 80 00 20 */	blr

.global Accept__11CScriptBeamFR8IVisitor
Accept__11CScriptBeamFR8IVisitor:
/* 8027C6DC 0027963C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027C6E0 00279640  7C 08 02 A6 */	mflr r0
/* 8027C6E4 00279644  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027C6E8 00279648  7C 60 1B 78 */	mr r0, r3
/* 8027C6EC 0027964C  7C 83 23 78 */	mr r3, r4
/* 8027C6F0 00279650  81 84 00 00 */	lwz r12, 0(r4)
/* 8027C6F4 00279654  7C 04 03 78 */	mr r4, r0
/* 8027C6F8 00279658  81 8C 00 08 */	lwz r12, 8(r12)
/* 8027C6FC 0027965C  7D 89 03 A6 */	mtctr r12
/* 8027C700 00279660  4E 80 04 21 */	bctrl
/* 8027C704 00279664  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027C708 00279668  7C 08 03 A6 */	mtlr r0
/* 8027C70C 0027966C  38 21 00 10 */	addi r1, r1, 0x10
/* 8027C710 00279670  4E 80 00 20 */	blr

.global AcceptScriptMsg__11CScriptBeamF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__11CScriptBeamF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 8027C714 00279674  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8027C718 00279678  7C 08 02 A6 */	mflr r0
/* 8027C71C 0027967C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8027C720 00279680  BF 21 00 94 */	stmw r25, 0x94(r1)
/* 8027C724 00279684  7C 9C 23 78 */	mr r28, r4
/* 8027C728 00279688  2C 1C 00 07 */	cmpwi r28, 7
/* 8027C72C 0027968C  7C 7B 1B 78 */	mr r27, r3
/* 8027C730 00279690  7C BD 2B 78 */	mr r29, r5
/* 8027C734 00279694  7C DE 33 78 */	mr r30, r6
/* 8027C738 00279698  41 82 01 80 */	beq lbl_8027C8B8
/* 8027C73C 0027969C  40 80 00 10 */	bge lbl_8027C74C
/* 8027C740 002796A0  2C 1C 00 05 */	cmpwi r28, 5
/* 8027C744 002796A4  41 82 01 CC */	beq lbl_8027C910
/* 8027C748 002796A8  48 00 02 08 */	b lbl_8027C950
lbl_8027C74C:
/* 8027C74C 002796AC  2C 1C 00 22 */	cmpwi r28, 0x22
/* 8027C750 002796B0  41 82 01 50 */	beq lbl_8027C8A0
/* 8027C754 002796B4  40 80 01 FC */	bge lbl_8027C950
/* 8027C758 002796B8  2C 1C 00 21 */	cmpwi r28, 0x21
/* 8027C75C 002796BC  40 80 00 08 */	bge lbl_8027C764
/* 8027C760 002796C0  48 00 01 F0 */	b lbl_8027C950
lbl_8027C764:
/* 8027C764 002796C4  7F C4 F3 78 */	mr r4, r30
/* 8027C768 002796C8  38 61 00 3C */	addi r3, r1, 0x3c
/* 8027C76C 002796CC  4B DD 09 71 */	bl AllocateUniqueId__13CStateManagerFv
/* 8027C770 002796D0  A0 01 00 3C */	lhz r0, 0x3c(r1)
/* 8027C774 002796D4  3C 60 80 3D */	lis r3, lbl_803D5868@ha
/* 8027C778 002796D8  38 83 58 68 */	addi r4, r3, lbl_803D5868@l
/* 8027C77C 002796DC  3B 40 00 00 */	li r26, 0
/* 8027C780 002796E0  B0 1B 01 54 */	sth r0, 0x154(r27)
/* 8027C784 002796E4  3B 20 00 00 */	li r25, 0
/* 8027C788 002796E8  38 60 05 50 */	li r3, 0x550
/* 8027C78C 002796EC  38 A0 00 00 */	li r5, 0
/* 8027C790 002796F0  48 09 90 DD */	bl __nw__FUlPCcPCc
/* 8027C794 002796F4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8027C798 002796F8  41 82 00 D8 */	beq lbl_8027C870
/* 8027C79C 002796FC  38 00 FF FF */	li r0, -1
/* 8027C7A0 00279700  38 60 00 08 */	li r3, 8
/* 8027C7A4 00279704  90 61 00 68 */	stw r3, 0x68(r1)
/* 8027C7A8 00279708  3C 60 80 3D */	lis r3, lbl_803D5868@ha
/* 8027C7AC 0027970C  38 83 58 68 */	addi r4, r3, lbl_803D5868@l
/* 8027C7B0 00279710  38 61 00 58 */	addi r3, r1, 0x58
/* 8027C7B4 00279714  90 01 00 6C */	stw r0, 0x6c(r1)
/* 8027C7B8 00279718  38 84 00 07 */	addi r4, r4, 7
/* 8027C7BC 0027971C  90 01 00 70 */	stw r0, 0x70(r1)
/* 8027C7C0 00279720  90 01 00 74 */	stw r0, 0x74(r1)
/* 8027C7C4 00279724  90 01 00 78 */	stw r0, 0x78(r1)
/* 8027C7C8 00279728  90 01 00 7C */	stw r0, 0x7c(r1)
/* 8027C7CC 0027972C  90 01 00 80 */	stw r0, 0x80(r1)
/* 8027C7D0 00279730  90 01 00 84 */	stw r0, 0x84(r1)
/* 8027C7D4 00279734  90 01 00 88 */	stw r0, 0x88(r1)
/* 8027C7D8 00279738  A0 1B 00 08 */	lhz r0, 8(r27)
/* 8027C7DC 0027973C  B0 01 00 38 */	sth r0, 0x38(r1)
/* 8027C7E0 00279740  80 BB 00 04 */	lwz r5, 4(r27)
/* 8027C7E4 00279744  B0 01 00 34 */	sth r0, 0x34(r1)
/* 8027C7E8 00279748  90 A1 00 44 */	stw r5, 0x44(r1)
/* 8027C7EC 0027974C  A0 1B 01 54 */	lhz r0, 0x154(r27)
/* 8027C7F0 00279750  90 A1 00 40 */	stw r5, 0x40(r1)
/* 8027C7F4 00279754  B0 01 00 30 */	sth r0, 0x30(r1)
/* 8027C7F8 00279758  83 3B 01 38 */	lwz r25, 0x138(r27)
/* 8027C7FC 0027975C  4B D8 84 BD */	bl string_l__4rstlFPCc
/* 8027C800 00279760  38 61 00 48 */	addi r3, r1, 0x48
/* 8027C804 00279764  38 9B 00 10 */	addi r4, r27, 0x10
/* 8027C808 00279768  38 A1 00 58 */	addi r5, r1, 0x58
/* 8027C80C 0027976C  3B 40 00 01 */	li r26, 1
/* 8027C810 00279770  4B D8 84 4D */	bl "__pl__4rstlFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8027C814 00279774  38 61 00 30 */	addi r3, r1, 0x30
/* 8027C818 00279778  38 01 00 44 */	addi r0, r1, 0x44
/* 8027C81C 0027977C  90 61 00 08 */	stw r3, 8(r1)
/* 8027C820 00279780  38 81 00 38 */	addi r4, r1, 0x38
/* 8027C824 00279784  39 01 00 68 */	addi r8, r1, 0x68
/* 8027C828 00279788  39 20 00 00 */	li r9, 0
/* 8027C82C 0027978C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8027C830 00279790  3C 00 00 02 */	lis r0, 2
/* 8027C834 00279794  7F E3 FB 78 */	mr r3, r31
/* 8027C838 00279798  7F 26 CB 78 */	mr r6, r25
/* 8027C83C 0027979C  90 81 00 10 */	stw r4, 0x10(r1)
/* 8027C840 002797A0  38 9B 00 E8 */	addi r4, r27, 0xe8
/* 8027C844 002797A4  38 A1 00 48 */	addi r5, r1, 0x48
/* 8027C848 002797A8  38 FB 00 F4 */	addi r7, r27, 0xf4
/* 8027C84C 002797AC  91 01 00 14 */	stw r8, 0x14(r1)
/* 8027C850 002797B0  39 1B 00 34 */	addi r8, r27, 0x34
/* 8027C854 002797B4  39 5B 01 38 */	addi r10, r27, 0x138
/* 8027C858 002797B8  3B 20 00 01 */	li r25, 1
/* 8027C85C 002797BC  91 21 00 18 */	stw r9, 0x18(r1)
/* 8027C860 002797C0  39 20 00 23 */	li r9, 0x23
/* 8027C864 002797C4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8027C868 002797C8  4B EF C3 C1 */	bl "__ct__17CPlasmaProjectileFRC28TToken<18CWeaponDescription>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>11EWeaponTypeRC9CBeamInfoRC12CTransform4f14EMaterialTypesRC11CDamageInfo9TUniqueId7TAreaId9TUniqueIdRCQ217CPlasmaProjectile21PlayerEffectResourcesb17EProjectileAttrib"
/* 8027C86C 002797CC  7C 7F 1B 78 */	mr r31, r3
lbl_8027C870:
/* 8027C870 002797D0  7F C3 F3 78 */	mr r3, r30
/* 8027C874 002797D4  7F E4 FB 78 */	mr r4, r31
/* 8027C878 002797D8  4B DD 04 7D */	bl AddObject__13CStateManagerFP7CEntity
/* 8027C87C 002797DC  7F 20 07 75 */	extsb. r0, r25
/* 8027C880 002797E0  41 82 00 0C */	beq lbl_8027C88C
/* 8027C884 002797E4  38 61 00 48 */	addi r3, r1, 0x48
/* 8027C888 002797E8  48 0C 12 59 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8027C88C:
/* 8027C88C 002797EC  7F 40 07 75 */	extsb. r0, r26
/* 8027C890 002797F0  41 82 00 C0 */	beq lbl_8027C950
/* 8027C894 002797F4  38 61 00 58 */	addi r3, r1, 0x58
/* 8027C898 002797F8  48 0C 12 49 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8027C89C 002797FC  48 00 00 B4 */	b lbl_8027C950
lbl_8027C8A0:
/* 8027C8A0 00279800  A0 1B 01 54 */	lhz r0, 0x154(r27)
/* 8027C8A4 00279804  7F C3 F3 78 */	mr r3, r30
/* 8027C8A8 00279808  38 81 00 2C */	addi r4, r1, 0x2c
/* 8027C8AC 0027980C  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 8027C8B0 00279810  4B DC F9 BD */	bl FreeScriptObject__13CStateManagerF9TUniqueId
/* 8027C8B4 00279814  48 00 00 9C */	b lbl_8027C950
lbl_8027C8B8:
/* 8027C8B8 00279818  A0 1B 01 54 */	lhz r0, 0x154(r27)
/* 8027C8BC 0027981C  7F C3 F3 78 */	mr r3, r30
/* 8027C8C0 00279820  38 81 00 28 */	addi r4, r1, 0x28
/* 8027C8C4 00279824  B0 01 00 28 */	sth r0, 0x28(r1)
/* 8027C8C8 00279828  4B DC FC AD */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8027C8CC 0027982C  7C 79 1B 79 */	or. r25, r3, r3
/* 8027C8D0 00279830  41 82 00 80 */	beq lbl_8027C950
/* 8027C8D4 00279834  81 83 00 00 */	lwz r12, 0(r3)
/* 8027C8D8 00279838  7F C4 F3 78 */	mr r4, r30
/* 8027C8DC 0027983C  38 A0 00 01 */	li r5, 1
/* 8027C8E0 00279840  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 8027C8E4 00279844  7D 89 03 A6 */	mtctr r12
/* 8027C8E8 00279848  4E 80 04 21 */	bctrl
/* 8027C8EC 0027984C  7F 23 CB 78 */	mr r3, r25
/* 8027C8F0 00279850  7F C5 F3 78 */	mr r5, r30
/* 8027C8F4 00279854  81 99 00 00 */	lwz r12, 0(r25)
/* 8027C8F8 00279858  38 9B 00 34 */	addi r4, r27, 0x34
/* 8027C8FC 0027985C  38 C0 00 00 */	li r6, 0
/* 8027C900 00279860  81 8C 00 78 */	lwz r12, 0x78(r12)
/* 8027C904 00279864  7D 89 03 A6 */	mtctr r12
/* 8027C908 00279868  4E 80 04 21 */	bctrl
/* 8027C90C 0027986C  48 00 00 44 */	b lbl_8027C950
lbl_8027C910:
/* 8027C910 00279870  A0 1B 01 54 */	lhz r0, 0x154(r27)
/* 8027C914 00279874  7F C3 F3 78 */	mr r3, r30
/* 8027C918 00279878  38 81 00 24 */	addi r4, r1, 0x24
/* 8027C91C 0027987C  B0 01 00 24 */	sth r0, 0x24(r1)
/* 8027C920 00279880  4B DC FC 55 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8027C924 00279884  28 03 00 00 */	cmplwi r3, 0
/* 8027C928 00279888  41 82 00 28 */	beq lbl_8027C950
/* 8027C92C 0027988C  88 03 00 30 */	lbz r0, 0x30(r3)
/* 8027C930 00279890  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8027C934 00279894  41 82 00 1C */	beq lbl_8027C950
/* 8027C938 00279898  81 83 00 00 */	lwz r12, 0(r3)
/* 8027C93C 0027989C  7F C4 F3 78 */	mr r4, r30
/* 8027C940 002798A0  38 A0 00 00 */	li r5, 0
/* 8027C944 002798A4  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 8027C948 002798A8  7D 89 03 A6 */	mtctr r12
/* 8027C94C 002798AC  4E 80 04 21 */	bctrl
lbl_8027C950:
/* 8027C950 002798B0  A0 1D 00 00 */	lhz r0, 0(r29)
/* 8027C954 002798B4  7F 63 DB 78 */	mr r3, r27
/* 8027C958 002798B8  7F 84 E3 78 */	mr r4, r28
/* 8027C95C 002798BC  7F C6 F3 78 */	mr r6, r30
/* 8027C960 002798C0  B0 01 00 20 */	sth r0, 0x20(r1)
/* 8027C964 002798C4  38 A1 00 20 */	addi r5, r1, 0x20
/* 8027C968 002798C8  4B DD 6C AD */	bl AcceptScriptMsg__6CActorF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 8027C96C 002798CC  BB 21 00 94 */	lmw r25, 0x94(r1)
/* 8027C970 002798D0  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8027C974 002798D4  7C 08 03 A6 */	mtlr r0
/* 8027C978 002798D8  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8027C97C 002798DC  4E 80 00 20 */	blr

.global "__ct__11CScriptBeamF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fbRC28TToken<18CWeaponDescription>RC9CBeamInfoRC11CDamageInfo"
"__ct__11CScriptBeamF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fbRC28TToken<18CWeaponDescription>RC9CBeamInfoRC11CDamageInfo":
/* 8027C980 002798E0  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 8027C984 002798E4  7C 08 02 A6 */	mflr r0
/* 8027C988 002798E8  90 01 01 04 */	stw r0, 0x104(r1)
/* 8027C98C 002798EC  BE E1 00 DC */	stmw r23, 0xdc(r1)
/* 8027C990 002798F0  7C 7D 1B 78 */	mr r29, r3
/* 8027C994 002798F4  83 E1 01 08 */	lwz r31, 0x108(r1)
/* 8027C998 002798F8  7C 97 23 78 */	mr r23, r4
/* 8027C99C 002798FC  7C B8 2B 78 */	mr r24, r5
/* 8027C9A0 00279900  7C D9 33 78 */	mr r25, r6
/* 8027C9A4 00279904  7C FA 3B 78 */	mr r26, r7
/* 8027C9A8 00279908  7D 1B 43 78 */	mr r27, r8
/* 8027C9AC 0027990C  7D 3C 4B 78 */	mr r28, r9
/* 8027C9B0 00279910  7D 5E 53 78 */	mr r30, r10
/* 8027C9B4 00279914  38 61 00 88 */	addi r3, r1, 0x88
/* 8027C9B8 00279918  4B DB DD ED */	bl CModelDataNull__10CModelDataFv
/* 8027C9BC 0027991C  38 61 00 20 */	addi r3, r1, 0x20
/* 8027C9C0 00279920  4B D9 E4 79 */	bl None__16CActorParametersFv
/* 8027C9C4 00279924  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8027C9C8 00279928  38 80 00 00 */	li r4, 0
/* 8027C9CC 0027992C  A1 97 00 00 */	lhz r12, 0(r23)
/* 8027C9D0 00279930  39 61 00 20 */	addi r11, r1, 0x20
/* 8027C9D4 00279934  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8027C9D8 00279938  38 01 00 10 */	addi r0, r1, 0x10
/* 8027C9DC 0027993C  7F A3 EB 78 */	mr r3, r29
/* 8027C9E0 00279940  7F 65 DB 78 */	mr r5, r27
/* 8027C9E4 00279944  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8027C9E8 00279948  7F 06 C3 78 */	mr r6, r24
/* 8027C9EC 0027994C  7F 27 CB 78 */	mr r7, r25
/* 8027C9F0 00279950  7F 48 D3 78 */	mr r8, r26
/* 8027C9F4 00279954  90 81 00 18 */	stw r4, 0x18(r1)
/* 8027C9F8 00279958  38 81 00 14 */	addi r4, r1, 0x14
/* 8027C9FC 0027995C  39 21 00 88 */	addi r9, r1, 0x88
/* 8027CA00 00279960  39 41 00 18 */	addi r10, r1, 0x18
/* 8027CA04 00279964  B1 81 00 14 */	sth r12, 0x14(r1)
/* 8027CA08 00279968  91 61 00 08 */	stw r11, 8(r1)
/* 8027CA0C 0027996C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8027CA10 00279970  4B DD 8E 11 */	bl "__ct__6CActorF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC13CMaterialListRC16CActorParameters9TUniqueId"
/* 8027CA14 00279974  38 61 00 20 */	addi r3, r1, 0x20
/* 8027CA18 00279978  38 80 FF FF */	li r4, -1
/* 8027CA1C 0027997C  4B E8 9B ED */	bl __dt__16CLightParametersFv
/* 8027CA20 00279980  38 61 00 88 */	addi r3, r1, 0x88
/* 8027CA24 00279984  38 80 FF FF */	li r4, -1
/* 8027CA28 00279988  4B E9 A0 25 */	bl __dt__10CModelDataFv
/* 8027CA2C 0027998C  3C 60 80 3F */	lis r3, __vt__11CScriptBeam@ha
/* 8027CA30 00279990  3A FD 00 E8 */	addi r23, r29, 0xe8
/* 8027CA34 00279994  38 03 B1 80 */	addi r0, r3, __vt__11CScriptBeam@l
/* 8027CA38 00279998  7F 84 E3 78 */	mr r4, r28
/* 8027CA3C 0027999C  90 1D 00 00 */	stw r0, 0(r29)
/* 8027CA40 002799A0  7E E3 BB 78 */	mr r3, r23
/* 8027CA44 002799A4  48 0C 44 65 */	bl __ct__6CTokenFRC6CToken
/* 8027CA48 002799A8  7E E3 BB 78 */	mr r3, r23
/* 8027CA4C 002799AC  48 0C 43 C1 */	bl GetObj__6CTokenFv
/* 8027CA50 002799B0  80 03 00 04 */	lwz r0, 4(r3)
/* 8027CA54 002799B4  7F A3 EB 78 */	mr r3, r29
/* 8027CA58 002799B8  90 17 00 08 */	stw r0, 8(r23)
/* 8027CA5C 002799BC  80 1E 00 00 */	lwz r0, 0(r30)
/* 8027CA60 002799C0  90 1D 00 F4 */	stw r0, 0xf4(r29)
/* 8027CA64 002799C4  80 1E 00 04 */	lwz r0, 4(r30)
/* 8027CA68 002799C8  90 1D 00 F8 */	stw r0, 0xf8(r29)
/* 8027CA6C 002799CC  80 1E 00 08 */	lwz r0, 8(r30)
/* 8027CA70 002799D0  90 1D 00 FC */	stw r0, 0xfc(r29)
/* 8027CA74 002799D4  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8027CA78 002799D8  90 1D 01 00 */	stw r0, 0x100(r29)
/* 8027CA7C 002799DC  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 8027CA80 002799E0  90 1D 01 04 */	stw r0, 0x104(r29)
/* 8027CA84 002799E4  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 8027CA88 002799E8  90 1D 01 08 */	stw r0, 0x108(r29)
/* 8027CA8C 002799EC  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 8027CA90 002799F0  90 1D 01 0C */	stw r0, 0x10c(r29)
/* 8027CA94 002799F4  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8027CA98 002799F8  D0 1D 01 10 */	stfs f0, 0x110(r29)
/* 8027CA9C 002799FC  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 8027CAA0 00279A00  D0 1D 01 14 */	stfs f0, 0x114(r29)
/* 8027CAA4 00279A04  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 8027CAA8 00279A08  D0 1D 01 18 */	stfs f0, 0x118(r29)
/* 8027CAAC 00279A0C  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8027CAB0 00279A10  D0 1D 01 1C */	stfs f0, 0x11c(r29)
/* 8027CAB4 00279A14  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8027CAB8 00279A18  D0 1D 01 20 */	stfs f0, 0x120(r29)
/* 8027CABC 00279A1C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 8027CAC0 00279A20  D0 1D 01 24 */	stfs f0, 0x124(r29)
/* 8027CAC4 00279A24  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 8027CAC8 00279A28  D0 1D 01 28 */	stfs f0, 0x128(r29)
/* 8027CACC 00279A2C  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 8027CAD0 00279A30  D0 1D 01 2C */	stfs f0, 0x12c(r29)
/* 8027CAD4 00279A34  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 8027CAD8 00279A38  90 1D 01 30 */	stw r0, 0x130(r29)
/* 8027CADC 00279A3C  80 1E 00 40 */	lwz r0, 0x40(r30)
/* 8027CAE0 00279A40  90 1D 01 34 */	stw r0, 0x134(r29)
/* 8027CAE4 00279A44  80 1F 00 00 */	lwz r0, 0(r31)
/* 8027CAE8 00279A48  90 1D 01 38 */	stw r0, 0x138(r29)
/* 8027CAEC 00279A4C  88 1F 00 04 */	lbz r0, 4(r31)
/* 8027CAF0 00279A50  98 1D 01 3C */	stb r0, 0x13c(r29)
/* 8027CAF4 00279A54  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8027CAF8 00279A58  D0 1D 01 40 */	stfs f0, 0x140(r29)
/* 8027CAFC 00279A5C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8027CB00 00279A60  D0 1D 01 44 */	stfs f0, 0x144(r29)
/* 8027CB04 00279A64  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8027CB08 00279A68  D0 1D 01 48 */	stfs f0, 0x148(r29)
/* 8027CB0C 00279A6C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8027CB10 00279A70  D0 1D 01 4C */	stfs f0, 0x14c(r29)
/* 8027CB14 00279A74  88 1F 00 18 */	lbz r0, 0x18(r31)
/* 8027CB18 00279A78  98 1D 01 50 */	stb r0, 0x150(r29)
/* 8027CB1C 00279A7C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8027CB20 00279A80  B0 1D 01 54 */	sth r0, 0x154(r29)
/* 8027CB24 00279A84  BA E1 00 DC */	lmw r23, 0xdc(r1)
/* 8027CB28 00279A88  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8027CB2C 00279A8C  7C 08 03 A6 */	mtlr r0
/* 8027CB30 00279A90  38 21 01 00 */	addi r1, r1, 0x100
/* 8027CB34 00279A94  4E 80 00 20 */	blr

.section .rodata
.balign 8
.global lbl_803D5868
lbl_803D5868:
	# ROM: 0x3D2868
	.asciz "??(??)"
	.byte 0x2D
	.asciz "Projectile"
	.balign 4
	.4byte 0
