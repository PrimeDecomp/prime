.include "macros.inc"

.section .data
.balign 8

.global __vt__17CScriptVisorFlare
__vt__17CScriptVisorFlare:
	# ROM: 0x3E2830
	.4byte 0
	.4byte 0
	.4byte __dt__17CScriptVisorFlareFv
	.4byte Accept__17CScriptVisorFlareFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__17CScriptVisorFlareFfR13CStateManager
	.4byte AcceptScriptMsg__17CScriptVisorFlareF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFUc
	.4byte PreRender__17CScriptVisorFlareFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__17CScriptVisorFlareCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__17CScriptVisorFlareCFRC13CStateManager
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

.section .sdata
.balign 8

.global lbl_805A7D78
lbl_805A7D78:
	# ROM: 0x3F5718
	.4byte 0
	.4byte 0

.section .text, "ax"

.global Render__17CScriptVisorFlareCFRC13CStateManager
Render__17CScriptVisorFlareCFRC13CStateManager:
/* 801D6490 001D33F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D6494 001D33F4  7C 08 02 A6 */	mflr r0
/* 801D6498 001D33F8  7C 85 23 78 */	mr r5, r4
/* 801D649C 001D33FC  7C 66 1B 78 */	mr r6, r3
/* 801D64A0 001D3400  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D64A4 001D3404  38 81 00 08 */	addi r4, r1, 8
/* 801D64A8 001D3408  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 801D64AC 001D340C  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 801D64B0 001D3410  38 66 00 E8 */	addi r3, r6, 0xe8
/* 801D64B4 001D3414  C0 06 00 40 */	lfs f0, 0x40(r6)
/* 801D64B8 001D3418  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 801D64BC 001D341C  D0 01 00 08 */	stfs f0, 8(r1)
/* 801D64C0 001D3420  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 801D64C4 001D3424  48 03 15 BD */	bl Render__11CVisorFlareCFRC9CVector3fRC13CStateManager
/* 801D64C8 001D3428  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D64CC 001D342C  7C 08 03 A6 */	mtlr r0
/* 801D64D0 001D3430  38 21 00 20 */	addi r1, r1, 0x20
/* 801D64D4 001D3434  4E 80 00 20 */	blr

.global AddToRenderer__17CScriptVisorFlareCFRC14CFrustumPlanesRC13CStateManager
AddToRenderer__17CScriptVisorFlareCFRC14CFrustumPlanesRC13CStateManager:
/* 801D64D8 001D3438  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801D64DC 001D343C  7C 08 02 A6 */	mflr r0
/* 801D64E0 001D3440  90 01 00 44 */	stw r0, 0x44(r1)
/* 801D64E4 001D3444  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801D64E8 001D3448  7C BF 2B 78 */	mr r31, r5
/* 801D64EC 001D344C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801D64F0 001D3450  7C 7E 1B 78 */	mr r30, r3
/* 801D64F4 001D3454  88 03 01 1C */	lbz r0, 0x11c(r3)
/* 801D64F8 001D3458  28 00 00 00 */	cmplwi r0, 0
/* 801D64FC 001D345C  41 82 00 4C */	beq lbl_801D6548
/* 801D6500 001D3460  80 DF 08 4C */	lwz r6, 0x84c(r31)
/* 801D6504 001D3464  7F C4 F3 78 */	mr r4, r30
/* 801D6508 001D3468  38 61 00 14 */	addi r3, r1, 0x14
/* 801D650C 001D346C  C0 46 00 60 */	lfs f2, 0x60(r6)
/* 801D6510 001D3470  C0 26 00 50 */	lfs f1, 0x50(r6)
/* 801D6514 001D3474  C0 06 00 40 */	lfs f0, 0x40(r6)
/* 801D6518 001D3478  D0 01 00 08 */	stfs f0, 8(r1)
/* 801D651C 001D347C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 801D6520 001D3480  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 801D6524 001D3484  81 9E 00 00 */	lwz r12, 0(r30)
/* 801D6528 001D3488  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 801D652C 001D348C  7D 89 03 A6 */	mtctr r12
/* 801D6530 001D3490  4E 80 04 21 */	bctrl
/* 801D6534 001D3494  7F C3 F3 78 */	mr r3, r30
/* 801D6538 001D3498  7F E4 FB 78 */	mr r4, r31
/* 801D653C 001D349C  38 A1 00 08 */	addi r5, r1, 8
/* 801D6540 001D34A0  38 C1 00 14 */	addi r6, r1, 0x14
/* 801D6544 001D34A4  4B E7 E5 65 */	bl EnsureRendered__6CActorCFRC13CStateManagerRC9CVector3fRC6CAABox
lbl_801D6548:
/* 801D6548 001D34A8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801D654C 001D34AC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801D6550 001D34B0  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801D6554 001D34B4  7C 08 03 A6 */	mtlr r0
/* 801D6558 001D34B8  38 21 00 40 */	addi r1, r1, 0x40
/* 801D655C 001D34BC  4E 80 00 20 */	blr

.global PreRender__17CScriptVisorFlareFR13CStateManagerRC14CFrustumPlanes
PreRender__17CScriptVisorFlareFR13CStateManagerRC14CFrustumPlanes:
/* 801D6560 001D34C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D6564 001D34C4  7C 08 02 A6 */	mflr r0
/* 801D6568 001D34C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D656C 001D34CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D6570 001D34D0  7C 7F 1B 78 */	mr r31, r3
/* 801D6574 001D34D4  A0 03 00 08 */	lhz r0, 8(r3)
/* 801D6578 001D34D8  7C 83 23 78 */	mr r3, r4
/* 801D657C 001D34DC  38 81 00 08 */	addi r4, r1, 8
/* 801D6580 001D34E0  B0 01 00 08 */	sth r0, 8(r1)
/* 801D6584 001D34E4  4B E6 E3 55 */	bl RenderLast__13CStateManagerFRC9TUniqueId
/* 801D6588 001D34E8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801D658C 001D34EC  7C 00 00 34 */	cntlzw r0, r0
/* 801D6590 001D34F0  54 00 D9 7E */	srwi r0, r0, 5
/* 801D6594 001D34F4  98 1F 01 1C */	stb r0, 0x11c(r31)
/* 801D6598 001D34F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D659C 001D34FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D65A0 001D3500  7C 08 03 A6 */	mtlr r0
/* 801D65A4 001D3504  38 21 00 20 */	addi r1, r1, 0x20
/* 801D65A8 001D3508  4E 80 00 20 */	blr

.global AcceptScriptMsg__17CScriptVisorFlareF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__17CScriptVisorFlareF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 801D65AC 001D350C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D65B0 001D3510  7C 08 02 A6 */	mflr r0
/* 801D65B4 001D3514  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D65B8 001D3518  A0 05 00 00 */	lhz r0, 0(r5)
/* 801D65BC 001D351C  38 A1 00 08 */	addi r5, r1, 8
/* 801D65C0 001D3520  B0 01 00 08 */	sth r0, 8(r1)
/* 801D65C4 001D3524  4B E7 D0 51 */	bl AcceptScriptMsg__6CActorF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 801D65C8 001D3528  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D65CC 001D352C  7C 08 03 A6 */	mtlr r0
/* 801D65D0 001D3530  38 21 00 10 */	addi r1, r1, 0x10
/* 801D65D4 001D3534  4E 80 00 20 */	blr

.global Think__17CScriptVisorFlareFfR13CStateManager
Think__17CScriptVisorFlareFfR13CStateManager:
/* 801D65D8 001D3538  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D65DC 001D353C  7C 08 02 A6 */	mflr r0
/* 801D65E0 001D3540  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D65E4 001D3544  88 03 00 30 */	lbz r0, 0x30(r3)
/* 801D65E8 001D3548  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801D65EC 001D354C  41 82 00 30 */	beq lbl_801D661C
/* 801D65F0 001D3550  C0 63 00 60 */	lfs f3, 0x60(r3)
/* 801D65F4 001D3554  7C 65 1B 78 */	mr r5, r3
/* 801D65F8 001D3558  C0 43 00 50 */	lfs f2, 0x50(r3)
/* 801D65FC 001D355C  7C 86 23 78 */	mr r6, r4
/* 801D6600 001D3560  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801D6604 001D3564  38 63 00 E8 */	addi r3, r3, 0xe8
/* 801D6608 001D3568  38 81 00 08 */	addi r4, r1, 8
/* 801D660C 001D356C  D0 01 00 08 */	stfs f0, 8(r1)
/* 801D6610 001D3570  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 801D6614 001D3574  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 801D6618 001D3578  48 03 19 41 */	bl Update__11CVisorFlareFfRC9CVector3fPC6CActorR13CStateManager
lbl_801D661C:
/* 801D661C 001D357C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D6620 001D3580  7C 08 03 A6 */	mtlr r0
/* 801D6624 001D3584  38 21 00 20 */	addi r1, r1, 0x20
/* 801D6628 001D3588  4E 80 00 20 */	blr

.global Accept__17CScriptVisorFlareFR8IVisitor
Accept__17CScriptVisorFlareFR8IVisitor:
/* 801D662C 001D358C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D6630 001D3590  7C 08 02 A6 */	mflr r0
/* 801D6634 001D3594  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D6638 001D3598  7C 60 1B 78 */	mr r0, r3
/* 801D663C 001D359C  7C 83 23 78 */	mr r3, r4
/* 801D6640 001D35A0  81 84 00 00 */	lwz r12, 0(r4)
/* 801D6644 001D35A4  7C 04 03 78 */	mr r4, r0
/* 801D6648 001D35A8  81 8C 00 D0 */	lwz r12, 0xd0(r12)
/* 801D664C 001D35AC  7D 89 03 A6 */	mtctr r12
/* 801D6650 001D35B0  4E 80 04 21 */	bctrl
/* 801D6654 001D35B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D6658 001D35B8  7C 08 03 A6 */	mtlr r0
/* 801D665C 001D35BC  38 21 00 10 */	addi r1, r1, 0x10
/* 801D6660 001D35C0  4E 80 00 20 */	blr

.global __dt__17CScriptVisorFlareFv
__dt__17CScriptVisorFlareFv:
/* 801D6664 001D35C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D6668 001D35C8  7C 08 02 A6 */	mflr r0
/* 801D666C 001D35CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D6670 001D35D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D6674 001D35D4  7C 9F 23 78 */	mr r31, r4
/* 801D6678 001D35D8  93 C1 00 08 */	stw r30, 8(r1)
/* 801D667C 001D35DC  7C 7E 1B 79 */	or. r30, r3, r3
/* 801D6680 001D35E0  41 82 00 38 */	beq lbl_801D66B8
/* 801D6684 001D35E4  3C 80 80 3E */	lis r4, __vt__17CScriptVisorFlare@ha
/* 801D6688 001D35E8  38 7E 00 E8 */	addi r3, r30, 0xe8
/* 801D668C 001D35EC  38 04 58 30 */	addi r0, r4, __vt__17CScriptVisorFlare@l
/* 801D6690 001D35F0  38 80 FF FF */	li r4, -1
/* 801D6694 001D35F4  90 1E 00 00 */	stw r0, 0(r30)
/* 801D6698 001D35F8  48 00 00 3D */	bl __dt__11CVisorFlareFv
/* 801D669C 001D35FC  7F C3 F3 78 */	mr r3, r30
/* 801D66A0 001D3600  38 80 00 00 */	li r4, 0
/* 801D66A4 001D3604  4B E7 F0 4D */	bl __dt__6CActorFv
/* 801D66A8 001D3608  7F E0 07 35 */	extsh. r0, r31
/* 801D66AC 001D360C  40 81 00 0C */	ble lbl_801D66B8
/* 801D66B0 001D3610  7F C3 F3 78 */	mr r3, r30
/* 801D66B4 001D3614  48 13 F2 7D */	bl Free__7CMemoryFPCv
lbl_801D66B8:
/* 801D66B8 001D3618  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D66BC 001D361C  7F C3 F3 78 */	mr r3, r30
/* 801D66C0 001D3620  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D66C4 001D3624  83 C1 00 08 */	lwz r30, 8(r1)
/* 801D66C8 001D3628  7C 08 03 A6 */	mtlr r0
/* 801D66CC 001D362C  38 21 00 10 */	addi r1, r1, 0x10
/* 801D66D0 001D3630  4E 80 00 20 */	blr

.global __dt__11CVisorFlareFv
__dt__11CVisorFlareFv:
/* 801D66D4 001D3634  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D66D8 001D3638  7C 08 02 A6 */	mflr r0
/* 801D66DC 001D363C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D66E0 001D3640  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D66E4 001D3644  7C 9F 23 78 */	mr r31, r4
/* 801D66E8 001D3648  93 C1 00 08 */	stw r30, 8(r1)
/* 801D66EC 001D364C  7C 7E 1B 79 */	or. r30, r3, r3
/* 801D66F0 001D3650  41 82 00 20 */	beq lbl_801D6710
/* 801D66F4 001D3654  38 7E 00 04 */	addi r3, r30, 4
/* 801D66F8 001D3658  38 80 FF FF */	li r4, -1
/* 801D66FC 001D365C  4B EF 70 BD */	bl "__dt__Q24rstl60vector<Q211CVisorFlare9CFlareDef,Q24rstl17rmemory_allocator>Fv"
/* 801D6700 001D3660  7F E0 07 35 */	extsh. r0, r31
/* 801D6704 001D3664  40 81 00 0C */	ble lbl_801D6710
/* 801D6708 001D3668  7F C3 F3 78 */	mr r3, r30
/* 801D670C 001D366C  48 13 F2 25 */	bl Free__7CMemoryFPCv
lbl_801D6710:
/* 801D6710 001D3670  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D6714 001D3674  7F C3 F3 78 */	mr r3, r30
/* 801D6718 001D3678  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D671C 001D367C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801D6720 001D3680  7C 08 03 A6 */	mtlr r0
/* 801D6724 001D3684  38 21 00 10 */	addi r1, r1, 0x10
/* 801D6728 001D3688  4E 80 00 20 */	blr

.global "__ct__17CScriptVisorFlareF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfobRC9CVector3fQ211CVisorFlare10EBlendModebfffUiUiRCQ24rstl60vector<Q211CVisorFlare9CFlareDef,Q24rstl17rmemory_allocator>"
"__ct__17CScriptVisorFlareF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfobRC9CVector3fQ211CVisorFlare10EBlendModebfffUiUiRCQ24rstl60vector<Q211CVisorFlare9CFlareDef,Q24rstl17rmemory_allocator>":
/* 801D672C 001D368C  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 801D6730 001D3690  7C 08 02 A6 */	mflr r0
/* 801D6734 001D3694  90 01 01 54 */	stw r0, 0x154(r1)
/* 801D6738 001D3698  DB E1 01 48 */	stfd f31, 0x148(r1)
/* 801D673C 001D369C  FF E0 18 90 */	fmr f31, f3
/* 801D6740 001D36A0  DB C1 01 40 */	stfd f30, 0x140(r1)
/* 801D6744 001D36A4  FF C0 10 90 */	fmr f30, f2
/* 801D6748 001D36A8  DB A1 01 38 */	stfd f29, 0x138(r1)
/* 801D674C 001D36AC  FF A0 08 90 */	fmr f29, f1
/* 801D6750 001D36B0  BE A1 01 0C */	stmw r21, 0x10c(r1)
/* 801D6754 001D36B4  7C 76 1B 78 */	mr r22, r3
/* 801D6758 001D36B8  83 A1 01 58 */	lwz r29, 0x158(r1)
/* 801D675C 001D36BC  7C 95 23 78 */	mr r21, r4
/* 801D6760 001D36C0  83 C1 01 5C */	lwz r30, 0x15c(r1)
/* 801D6764 001D36C4  7C B7 2B 78 */	mr r23, r5
/* 801D6768 001D36C8  83 E1 01 60 */	lwz r31, 0x160(r1)
/* 801D676C 001D36CC  7C D8 33 78 */	mr r24, r6
/* 801D6770 001D36D0  7C F9 3B 78 */	mr r25, r7
/* 801D6774 001D36D4  7D 1A 43 78 */	mr r26, r8
/* 801D6778 001D36D8  7D 3B 4B 78 */	mr r27, r9
/* 801D677C 001D36DC  7D 5C 53 78 */	mr r28, r10
/* 801D6780 001D36E0  38 61 00 B8 */	addi r3, r1, 0xb8
/* 801D6784 001D36E4  4B E6 40 21 */	bl CModelDataNull__10CModelDataFv
/* 801D6788 001D36E8  38 61 00 50 */	addi r3, r1, 0x50
/* 801D678C 001D36EC  4B E4 46 AD */	bl None__16CActorParametersFv
/* 801D6790 001D36F0  A0 8D A3 8C */	lhz r4, kInvalidUniqueId@sda21(r13)
/* 801D6794 001D36F4  38 00 00 00 */	li r0, 0
/* 801D6798 001D36F8  80 AD 91 B8 */	lwz r5, lbl_805A7D78@sda21(r13)
/* 801D679C 001D36FC  38 60 00 00 */	li r3, 0
/* 801D67A0 001D3700  B0 81 00 10 */	sth r4, 0x10(r1)
/* 801D67A4 001D3704  38 80 00 01 */	li r4, 1
/* 801D67A8 001D3708  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801D67AC 001D370C  90 01 00 18 */	stw r0, 0x18(r1)
/* 801D67B0 001D3710  48 1B 37 45 */	bl __shl2i
/* 801D67B4 001D3714  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801D67B8 001D3718  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 801D67BC 001D371C  7C 03 1B 78 */	or r3, r0, r3
/* 801D67C0 001D3720  A0 15 00 00 */	lhz r0, 0(r21)
/* 801D67C4 001D3724  7C A5 23 78 */	or r5, r5, r4
/* 801D67C8 001D3728  90 61 00 18 */	stw r3, 0x18(r1)
/* 801D67CC 001D372C  7F 44 D3 78 */	mr r4, r26
/* 801D67D0 001D3730  38 61 00 20 */	addi r3, r1, 0x20
/* 801D67D4 001D3734  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 801D67D8 001D3738  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801D67DC 001D373C  48 13 C9 65 */	bl Translate__12CTransform4fFRC9CVector3f
/* 801D67E0 001D3740  38 61 00 50 */	addi r3, r1, 0x50
/* 801D67E4 001D3744  38 01 00 10 */	addi r0, r1, 0x10
/* 801D67E8 001D3748  90 61 00 08 */	stw r3, 8(r1)
/* 801D67EC 001D374C  7E C3 B3 78 */	mr r3, r22
/* 801D67F0 001D3750  7F 25 CB 78 */	mr r5, r25
/* 801D67F4 001D3754  7E E6 BB 78 */	mr r6, r23
/* 801D67F8 001D3758  90 01 00 0C */	stw r0, 0xc(r1)
/* 801D67FC 001D375C  7F 07 C3 78 */	mr r7, r24
/* 801D6800 001D3760  38 81 00 14 */	addi r4, r1, 0x14
/* 801D6804 001D3764  39 01 00 20 */	addi r8, r1, 0x20
/* 801D6808 001D3768  39 21 00 B8 */	addi r9, r1, 0xb8
/* 801D680C 001D376C  39 41 00 18 */	addi r10, r1, 0x18
/* 801D6810 001D3770  4B E7 F0 11 */	bl "__ct__6CActorF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC13CMaterialListRC16CActorParameters9TUniqueId"
/* 801D6814 001D3774  38 61 00 50 */	addi r3, r1, 0x50
/* 801D6818 001D3778  38 80 FF FF */	li r4, -1
/* 801D681C 001D377C  4B F2 FD ED */	bl __dt__16CLightParametersFv
/* 801D6820 001D3780  38 61 00 B8 */	addi r3, r1, 0xb8
/* 801D6824 001D3784  38 80 FF FF */	li r4, -1
/* 801D6828 001D3788  4B F4 02 25 */	bl __dt__10CModelDataFv
/* 801D682C 001D378C  3C 60 80 3E */	lis r3, __vt__17CScriptVisorFlare@ha
/* 801D6830 001D3790  FC 20 E8 90 */	fmr f1, f29
/* 801D6834 001D3794  38 03 58 30 */	addi r0, r3, __vt__17CScriptVisorFlare@l
/* 801D6838 001D3798  FC 40 F0 90 */	fmr f2, f30
/* 801D683C 001D379C  FC 60 F8 90 */	fmr f3, f31
/* 801D6840 001D37A0  90 16 00 00 */	stw r0, 0(r22)
/* 801D6844 001D37A4  7F 64 DB 78 */	mr r4, r27
/* 801D6848 001D37A8  7F 85 E3 78 */	mr r5, r28
/* 801D684C 001D37AC  7F A6 EB 78 */	mr r6, r29
/* 801D6850 001D37B0  7F C7 F3 78 */	mr r7, r30
/* 801D6854 001D37B4  7F E8 FB 78 */	mr r8, r31
/* 801D6858 001D37B8  38 76 00 E8 */	addi r3, r22, 0xe8
/* 801D685C 001D37BC  48 03 1A 7D */	bl "__ct__11CVisorFlareFQ211CVisorFlare10EBlendModebfffUiUiRCQ24rstl60vector<Q211CVisorFlare9CFlareDef,Q24rstl17rmemory_allocator>"
/* 801D6860 001D37C0  38 00 00 01 */	li r0, 1
/* 801D6864 001D37C4  38 80 00 02 */	li r4, 2
/* 801D6868 001D37C8  98 16 01 1C */	stb r0, 0x11c(r22)
/* 801D686C 001D37CC  7E C3 B3 78 */	mr r3, r22
/* 801D6870 001D37D0  88 16 00 E6 */	lbz r0, 0xe6(r22)
/* 801D6874 001D37D4  50 80 1E F8 */	rlwimi r0, r4, 3, 0x1b, 0x1c
/* 801D6878 001D37D8  98 16 00 E6 */	stb r0, 0xe6(r22)
/* 801D687C 001D37DC  CB E1 01 48 */	lfd f31, 0x148(r1)
/* 801D6880 001D37E0  CB C1 01 40 */	lfd f30, 0x140(r1)
/* 801D6884 001D37E4  CB A1 01 38 */	lfd f29, 0x138(r1)
/* 801D6888 001D37E8  BA A1 01 0C */	lmw r21, 0x10c(r1)
/* 801D688C 001D37EC  80 01 01 54 */	lwz r0, 0x154(r1)
/* 801D6890 001D37F0  7C 08 03 A6 */	mtlr r0
/* 801D6894 001D37F4  38 21 01 50 */	addi r1, r1, 0x150
/* 801D6898 001D37F8  4E 80 00 20 */	blr
