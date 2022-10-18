.include "macros.inc"

.section .data
.balign 8

.global __vt__10CGameLight
__vt__10CGameLight:
	# ROM: 0x3DC3B8
	.4byte 0
	.4byte 0
	.4byte __dt__10CGameLightFv
	.4byte Accept__10CGameLightFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__10CGameLightFfR13CStateManager
	.4byte AcceptScriptMsg__6CActorF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFUc
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

.section .sdata
.balign 8

.global lbl_805A7218
lbl_805A7218:
	# ROM: 0x3F4BB8
	.4byte 0
	.4byte 0

.section .sdata2, "a"
.balign 8

.global lbl_805AAA10
lbl_805AAA10:
	# ROM: 0x3F72B0
	.float 0.0
	.4byte 0

.section .text, "ax"

.global __dt__10CGameLightFv
__dt__10CGameLightFv:
/* 800B55A0 000B2500  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B55A4 000B2504  7C 08 02 A6 */	mflr r0
/* 800B55A8 000B2508  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B55AC 000B250C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B55B0 000B2510  7C 9F 23 78 */	mr r31, r4
/* 800B55B4 000B2514  93 C1 00 08 */	stw r30, 8(r1)
/* 800B55B8 000B2518  7C 7E 1B 79 */	or. r30, r3, r3
/* 800B55BC 000B251C  41 82 00 28 */	beq lbl_800B55E4
/* 800B55C0 000B2520  3C A0 80 3E */	lis r5, __vt__10CGameLight@ha
/* 800B55C4 000B2524  38 80 00 00 */	li r4, 0
/* 800B55C8 000B2528  38 05 F3 B8 */	addi r0, r5, __vt__10CGameLight@l
/* 800B55CC 000B252C  90 1E 00 00 */	stw r0, 0(r30)
/* 800B55D0 000B2530  4B FA 01 21 */	bl __dt__6CActorFv
/* 800B55D4 000B2534  7F E0 07 35 */	extsh. r0, r31
/* 800B55D8 000B2538  40 81 00 0C */	ble lbl_800B55E4
/* 800B55DC 000B253C  7F C3 F3 78 */	mr r3, r30
/* 800B55E0 000B2540  48 26 03 51 */	bl Free__7CMemoryFPCv
lbl_800B55E4:
/* 800B55E4 000B2544  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B55E8 000B2548  7F C3 F3 78 */	mr r3, r30
/* 800B55EC 000B254C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B55F0 000B2550  83 C1 00 08 */	lwz r30, 8(r1)
/* 800B55F4 000B2554  7C 08 03 A6 */	mtlr r0
/* 800B55F8 000B2558  38 21 00 10 */	addi r1, r1, 0x10
/* 800B55FC 000B255C  4E 80 00 20 */	blr

.global SetLightPriorityAndId__10CGameLightFv
SetLightPriorityAndId__10CGameLightFv:
/* 800B5600 000B2560  80 03 01 40 */	lwz r0, 0x140(r3)
/* 800B5604 000B2564  90 03 01 28 */	stw r0, 0x128(r3)
/* 800B5608 000B2568  80 03 01 3C */	lwz r0, 0x13c(r3)
/* 800B560C 000B256C  90 03 01 2C */	stw r0, 0x12c(r3)
/* 800B5610 000B2570  4E 80 00 20 */	blr

.global Accept__10CGameLightFR8IVisitor
Accept__10CGameLightFR8IVisitor:
/* 800B5614 000B2574  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B5618 000B2578  7C 08 02 A6 */	mflr r0
/* 800B561C 000B257C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B5620 000B2580  7C 60 1B 78 */	mr r0, r3
/* 800B5624 000B2584  7C 83 23 78 */	mr r3, r4
/* 800B5628 000B2588  81 84 00 00 */	lwz r12, 0(r4)
/* 800B562C 000B258C  7C 04 03 78 */	mr r4, r0
/* 800B5630 000B2590  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 800B5634 000B2594  7D 89 03 A6 */	mtctr r12
/* 800B5638 000B2598  4E 80 04 21 */	bctrl
/* 800B563C 000B259C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B5640 000B25A0  7C 08 03 A6 */	mtlr r0
/* 800B5644 000B25A4  38 21 00 10 */	addi r1, r1, 0x10
/* 800B5648 000B25A8  4E 80 00 20 */	blr

.global Think__10CGameLightFfR13CStateManager
Think__10CGameLightFfR13CStateManager:
/* 800B564C 000B25AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B5650 000B25B0  7C 08 02 A6 */	mflr r0
/* 800B5654 000B25B4  C0 42 8C F0 */	lfs f2, lbl_805AAA10@sda21(r2)
/* 800B5658 000B25B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B565C 000B25BC  C0 03 01 44 */	lfs f0, 0x144(r3)
/* 800B5660 000B25C0  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 800B5664 000B25C4  40 81 00 34 */	ble lbl_800B5698
/* 800B5668 000B25C8  EC 00 08 28 */	fsubs f0, f0, f1
/* 800B566C 000B25CC  D0 03 01 44 */	stfs f0, 0x144(r3)
/* 800B5670 000B25D0  C0 03 01 44 */	lfs f0, 0x144(r3)
/* 800B5674 000B25D4  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 800B5678 000B25D8  4C 40 13 82 */	cror 2, 0, 2
/* 800B567C 000B25DC  40 82 00 1C */	bne lbl_800B5698
/* 800B5680 000B25E0  A0 03 00 08 */	lhz r0, 8(r3)
/* 800B5684 000B25E4  7C 83 23 78 */	mr r3, r4
/* 800B5688 000B25E8  38 81 00 0C */	addi r4, r1, 0xc
/* 800B568C 000B25EC  B0 01 00 08 */	sth r0, 8(r1)
/* 800B5690 000B25F0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 800B5694 000B25F4  4B F9 6B D9 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
lbl_800B5698:
/* 800B5698 000B25F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B569C 000B25FC  7C 08 03 A6 */	mtlr r0
/* 800B56A0 000B2600  38 21 00 10 */	addi r1, r1, 0x10
/* 800B56A4 000B2604  4E 80 00 20 */	blr

.global GetLight__10CGameLightCFv
GetLight__10CGameLightCFv:
/* 800B56A8 000B2608  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 800B56AC 000B260C  7C 08 02 A6 */	mflr r0
/* 800B56B0 000B2610  90 01 00 94 */	stw r0, 0x94(r1)
/* 800B56B4 000B2614  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 800B56B8 000B2618  7C 9F 23 78 */	mr r31, r4
/* 800B56BC 000B261C  38 9F 00 EC */	addi r4, r31, 0xec
/* 800B56C0 000B2620  93 C1 00 88 */	stw r30, 0x88(r1)
/* 800B56C4 000B2624  7C 7E 1B 78 */	mr r30, r3
/* 800B56C8 000B2628  38 61 00 2C */	addi r3, r1, 0x2c
/* 800B56CC 000B262C  4B F8 5E A5 */	bl __ct__6CLightFRC6CLight
/* 800B56D0 000B2630  38 61 00 20 */	addi r3, r1, 0x20
/* 800B56D4 000B2634  38 9F 00 34 */	addi r4, r31, 0x34
/* 800B56D8 000B2638  38 BF 00 EC */	addi r5, r31, 0xec
/* 800B56DC 000B263C  48 25 D4 0D */	bl __ml__12CTransform4fCFRC9CVector3f
/* 800B56E0 000B2640  38 61 00 2C */	addi r3, r1, 0x2c
/* 800B56E4 000B2644  38 81 00 20 */	addi r4, r1, 0x20
/* 800B56E8 000B2648  48 25 0C 59 */	bl SetPosition__6CLightFRC9CVector3f
/* 800B56EC 000B264C  80 01 00 48 */	lwz r0, 0x48(r1)
/* 800B56F0 000B2650  2C 00 00 01 */	cmpwi r0, 1
/* 800B56F4 000B2654  41 82 00 2C */	beq lbl_800B5720
/* 800B56F8 000B2658  38 61 00 08 */	addi r3, r1, 8
/* 800B56FC 000B265C  38 9F 00 34 */	addi r4, r31, 0x34
/* 800B5700 000B2660  38 BF 00 F8 */	addi r5, r31, 0xf8
/* 800B5704 000B2664  48 25 D3 7D */	bl Rotate__12CTransform4fCFRC9CVector3f
/* 800B5708 000B2668  38 61 00 14 */	addi r3, r1, 0x14
/* 800B570C 000B266C  38 81 00 08 */	addi r4, r1, 8
/* 800B5710 000B2670  48 25 F1 41 */	bl AsNormalized__9CVector3fCFv
/* 800B5714 000B2674  38 61 00 2C */	addi r3, r1, 0x2c
/* 800B5718 000B2678  38 81 00 14 */	addi r4, r1, 0x14
/* 800B571C 000B267C  48 25 0C 09 */	bl SetDirection__6CLightFRC9CVector3f
lbl_800B5720:
/* 800B5720 000B2680  7F C3 F3 78 */	mr r3, r30
/* 800B5724 000B2684  38 81 00 2C */	addi r4, r1, 0x2c
/* 800B5728 000B2688  4B F8 5E 49 */	bl __ct__6CLightFRC6CLight
/* 800B572C 000B268C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 800B5730 000B2690  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 800B5734 000B2694  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 800B5738 000B2698  7C 08 03 A6 */	mtlr r0
/* 800B573C 000B269C  38 21 00 90 */	addi r1, r1, 0x90
/* 800B5740 000B26A0  4E 80 00 20 */	blr

.global SetLight__10CGameLightFRC6CLight
SetLight__10CGameLightFRC6CLight:
/* 800B5744 000B26A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B5748 000B26A8  7C 08 02 A6 */	mflr r0
/* 800B574C 000B26AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B5750 000B26B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B5754 000B26B4  7C 7F 1B 78 */	mr r31, r3
/* 800B5758 000B26B8  38 7F 00 EC */	addi r3, r31, 0xec
/* 800B575C 000B26BC  80 A4 00 00 */	lwz r5, 0(r4)
/* 800B5760 000B26C0  80 04 00 04 */	lwz r0, 4(r4)
/* 800B5764 000B26C4  90 BF 00 EC */	stw r5, 0xec(r31)
/* 800B5768 000B26C8  90 1F 00 F0 */	stw r0, 0xf0(r31)
/* 800B576C 000B26CC  80 04 00 08 */	lwz r0, 8(r4)
/* 800B5770 000B26D0  90 1F 00 F4 */	stw r0, 0xf4(r31)
/* 800B5774 000B26D4  80 A4 00 0C */	lwz r5, 0xc(r4)
/* 800B5778 000B26D8  80 04 00 10 */	lwz r0, 0x10(r4)
/* 800B577C 000B26DC  90 BF 00 F8 */	stw r5, 0xf8(r31)
/* 800B5780 000B26E0  90 1F 00 FC */	stw r0, 0xfc(r31)
/* 800B5784 000B26E4  80 04 00 14 */	lwz r0, 0x14(r4)
/* 800B5788 000B26E8  90 1F 01 00 */	stw r0, 0x100(r31)
/* 800B578C 000B26EC  80 04 00 18 */	lwz r0, 0x18(r4)
/* 800B5790 000B26F0  90 1F 01 04 */	stw r0, 0x104(r31)
/* 800B5794 000B26F4  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 800B5798 000B26F8  90 1F 01 08 */	stw r0, 0x108(r31)
/* 800B579C 000B26FC  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 800B57A0 000B2700  D0 1F 01 0C */	stfs f0, 0x10c(r31)
/* 800B57A4 000B2704  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 800B57A8 000B2708  D0 1F 01 10 */	stfs f0, 0x110(r31)
/* 800B57AC 000B270C  C0 04 00 28 */	lfs f0, 0x28(r4)
/* 800B57B0 000B2710  D0 1F 01 14 */	stfs f0, 0x114(r31)
/* 800B57B4 000B2714  C0 04 00 2C */	lfs f0, 0x2c(r4)
/* 800B57B8 000B2718  D0 1F 01 18 */	stfs f0, 0x118(r31)
/* 800B57BC 000B271C  C0 04 00 30 */	lfs f0, 0x30(r4)
/* 800B57C0 000B2720  D0 1F 01 1C */	stfs f0, 0x11c(r31)
/* 800B57C4 000B2724  C0 04 00 34 */	lfs f0, 0x34(r4)
/* 800B57C8 000B2728  D0 1F 01 20 */	stfs f0, 0x120(r31)
/* 800B57CC 000B272C  C0 04 00 38 */	lfs f0, 0x38(r4)
/* 800B57D0 000B2730  D0 1F 01 24 */	stfs f0, 0x124(r31)
/* 800B57D4 000B2734  80 04 00 3C */	lwz r0, 0x3c(r4)
/* 800B57D8 000B2738  90 1F 01 28 */	stw r0, 0x128(r31)
/* 800B57DC 000B273C  80 04 00 40 */	lwz r0, 0x40(r4)
/* 800B57E0 000B2740  90 1F 01 2C */	stw r0, 0x12c(r31)
/* 800B57E4 000B2744  C0 04 00 44 */	lfs f0, 0x44(r4)
/* 800B57E8 000B2748  D0 1F 01 30 */	stfs f0, 0x130(r31)
/* 800B57EC 000B274C  C0 04 00 48 */	lfs f0, 0x48(r4)
/* 800B57F0 000B2750  D0 1F 01 34 */	stfs f0, 0x134(r31)
/* 800B57F4 000B2754  88 04 00 4C */	lbz r0, 0x4c(r4)
/* 800B57F8 000B2758  98 1F 01 38 */	stb r0, 0x138(r31)
/* 800B57FC 000B275C  48 25 0A D9 */	bl GetRadius__6CLightCFv
/* 800B5800 000B2760  38 7F 00 EC */	addi r3, r31, 0xec
/* 800B5804 000B2764  48 25 09 51 */	bl GetIntensity__6CLightCFv
/* 800B5808 000B2768  7F E3 FB 78 */	mr r3, r31
/* 800B580C 000B276C  4B FF FD F5 */	bl SetLightPriorityAndId__10CGameLightFv
/* 800B5810 000B2770  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B5814 000B2774  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B5818 000B2778  7C 08 03 A6 */	mtlr r0
/* 800B581C 000B277C  38 21 00 10 */	addi r1, r1, 0x10
/* 800B5820 000B2780  4E 80 00 20 */	blr

.global "__ct__10CGameLightF9TUniqueId7TAreaIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC12CTransform4f9TUniqueIdRC6CLightUiUif"
"__ct__10CGameLightF9TUniqueId7TAreaIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC12CTransform4f9TUniqueIdRC6CLightUiUif":
/* 800B5824 000B2784  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 800B5828 000B2788  7C 08 02 A6 */	mflr r0
/* 800B582C 000B278C  3D 60 80 57 */	lis r11, NullConnectionList__7CEntity@ha
/* 800B5830 000B2790  90 01 01 44 */	stw r0, 0x144(r1)
/* 800B5834 000B2794  DB E1 01 38 */	stfd f31, 0x138(r1)
/* 800B5838 000B2798  FF E0 08 90 */	fmr f31, f1
/* 800B583C 000B279C  BE E1 01 14 */	stmw r23, 0x114(r1)
/* 800B5840 000B27A0  7C 77 1B 78 */	mr r23, r3
/* 800B5844 000B27A4  7C 98 23 78 */	mr r24, r4
/* 800B5848 000B27A8  7C D9 33 78 */	mr r25, r6
/* 800B584C 000B27AC  83 C1 01 48 */	lwz r30, 0x148(r1)
/* 800B5850 000B27B0  7C FA 3B 78 */	mr r26, r7
/* 800B5854 000B27B4  83 E1 01 4C */	lwz r31, 0x14c(r1)
/* 800B5858 000B27B8  7D 1B 43 78 */	mr r27, r8
/* 800B585C 000B27BC  7D 3C 4B 78 */	mr r28, r9
/* 800B5860 000B27C0  7D 5D 53 78 */	mr r29, r10
/* 800B5864 000B27C4  38 61 00 38 */	addi r3, r1, 0x38
/* 800B5868 000B27C8  38 81 00 2C */	addi r4, r1, 0x2c
/* 800B586C 000B27CC  38 C1 00 28 */	addi r6, r1, 0x28
/* 800B5870 000B27D0  80 05 00 00 */	lwz r0, 0(r5)
/* 800B5874 000B27D4  38 AB D4 10 */	addi r5, r11, NullConnectionList__7CEntity@l
/* 800B5878 000B27D8  81 8D A3 88 */	lwz r12, kInvalidEditorId@sda21(r13)
/* 800B587C 000B27DC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 800B5880 000B27E0  91 81 00 28 */	stw r12, 0x28(r1)
/* 800B5884 000B27E4  4B F9 BC 01 */	bl "__ct__11CEntityInfoF7TAreaIdRCQ24rstl48vector<11SConnection,Q24rstl17rmemory_allocator>9TEditorId"
/* 800B5888 000B27E8  38 61 00 B8 */	addi r3, r1, 0xb8
/* 800B588C 000B27EC  4B F8 4F 19 */	bl CModelDataNull__10CModelDataFv
/* 800B5890 000B27F0  38 61 00 50 */	addi r3, r1, 0x50
/* 800B5894 000B27F4  4B F6 55 A5 */	bl None__16CActorParametersFv
/* 800B5898 000B27F8  A0 8D A3 8C */	lhz r4, kInvalidUniqueId@sda21(r13)
/* 800B589C 000B27FC  38 00 00 00 */	li r0, 0
/* 800B58A0 000B2800  80 AD 86 58 */	lwz r5, lbl_805A7218@sda21(r13)
/* 800B58A4 000B2804  38 60 00 00 */	li r3, 0
/* 800B58A8 000B2808  B0 81 00 10 */	sth r4, 0x10(r1)
/* 800B58AC 000B280C  38 80 00 01 */	li r4, 1
/* 800B58B0 000B2810  90 01 00 34 */	stw r0, 0x34(r1)
/* 800B58B4 000B2814  90 01 00 30 */	stw r0, 0x30(r1)
/* 800B58B8 000B2818  48 2D 46 3D */	bl __shl2i
/* 800B58BC 000B281C  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 800B58C0 000B2820  39 61 00 50 */	addi r11, r1, 0x50
/* 800B58C4 000B2824  80 C1 00 34 */	lwz r6, 0x34(r1)
/* 800B58C8 000B2828  38 01 00 10 */	addi r0, r1, 0x10
/* 800B58CC 000B282C  7C A3 1B 78 */	or r3, r5, r3
/* 800B58D0 000B2830  A0 F8 00 00 */	lhz r7, 0(r24)
/* 800B58D4 000B2834  7C C4 23 78 */	or r4, r6, r4
/* 800B58D8 000B2838  90 61 00 30 */	stw r3, 0x30(r1)
/* 800B58DC 000B283C  7E E3 BB 78 */	mr r3, r23
/* 800B58E0 000B2840  7F 25 CB 78 */	mr r5, r25
/* 800B58E4 000B2844  90 81 00 34 */	stw r4, 0x34(r1)
/* 800B58E8 000B2848  7F 46 D3 78 */	mr r6, r26
/* 800B58EC 000B284C  7F 68 DB 78 */	mr r8, r27
/* 800B58F0 000B2850  38 81 00 14 */	addi r4, r1, 0x14
/* 800B58F4 000B2854  B0 E1 00 14 */	sth r7, 0x14(r1)
/* 800B58F8 000B2858  38 E1 00 38 */	addi r7, r1, 0x38
/* 800B58FC 000B285C  39 21 00 B8 */	addi r9, r1, 0xb8
/* 800B5900 000B2860  39 41 00 30 */	addi r10, r1, 0x30
/* 800B5904 000B2864  91 61 00 08 */	stw r11, 8(r1)
/* 800B5908 000B2868  90 01 00 0C */	stw r0, 0xc(r1)
/* 800B590C 000B286C  4B F9 FF 15 */	bl "__ct__6CActorF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC13CMaterialListRC16CActorParameters9TUniqueId"
/* 800B5910 000B2870  38 61 00 50 */	addi r3, r1, 0x50
/* 800B5914 000B2874  38 80 FF FF */	li r4, -1
/* 800B5918 000B2878  48 05 0C F1 */	bl __dt__16CLightParametersFv
/* 800B591C 000B287C  38 61 00 B8 */	addi r3, r1, 0xb8
/* 800B5920 000B2880  38 80 FF FF */	li r4, -1
/* 800B5924 000B2884  48 06 11 29 */	bl __dt__10CModelDataFv
/* 800B5928 000B2888  80 01 00 40 */	lwz r0, 0x40(r1)
/* 800B592C 000B288C  80 61 00 48 */	lwz r3, 0x48(r1)
/* 800B5930 000B2890  1C 00 00 0C */	mulli r0, r0, 0xc
/* 800B5934 000B2894  90 61 00 1C */	stw r3, 0x1c(r1)
/* 800B5938 000B2898  7C 64 1B 78 */	mr r4, r3
/* 800B593C 000B289C  7C 03 02 14 */	add r0, r3, r0
/* 800B5940 000B28A0  90 61 00 18 */	stw r3, 0x18(r1)
/* 800B5944 000B28A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800B5948 000B28A8  90 01 00 20 */	stw r0, 0x20(r1)
/* 800B594C 000B28AC  48 00 00 08 */	b lbl_800B5954
lbl_800B5950:
/* 800B5950 000B28B0  38 84 00 0C */	addi r4, r4, 0xc
lbl_800B5954:
/* 800B5954 000B28B4  7C 04 00 40 */	cmplw r4, r0
/* 800B5958 000B28B8  40 82 FF F8 */	bne lbl_800B5950
/* 800B595C 000B28BC  28 03 00 00 */	cmplwi r3, 0
/* 800B5960 000B28C0  41 82 00 08 */	beq lbl_800B5968
/* 800B5964 000B28C4  48 25 FF CD */	bl Free__7CMemoryFPCv
lbl_800B5968:
/* 800B5968 000B28C8  3C 60 80 3E */	lis r3, __vt__10CGameLight@ha
/* 800B596C 000B28CC  7F A4 EB 78 */	mr r4, r29
/* 800B5970 000B28D0  38 03 F3 B8 */	addi r0, r3, __vt__10CGameLight@l
/* 800B5974 000B28D4  38 77 00 EC */	addi r3, r23, 0xec
/* 800B5978 000B28D8  90 17 00 00 */	stw r0, 0(r23)
/* 800B597C 000B28DC  A0 1C 00 00 */	lhz r0, 0(r28)
/* 800B5980 000B28E0  B0 17 00 E8 */	sth r0, 0xe8(r23)
/* 800B5984 000B28E4  4B F8 5B ED */	bl __ct__6CLightFRC6CLight
/* 800B5988 000B28E8  93 D7 01 3C */	stw r30, 0x13c(r23)
/* 800B598C 000B28EC  38 77 00 EC */	addi r3, r23, 0xec
/* 800B5990 000B28F0  93 F7 01 40 */	stw r31, 0x140(r23)
/* 800B5994 000B28F4  D3 F7 01 44 */	stfs f31, 0x144(r23)
/* 800B5998 000B28F8  48 25 09 3D */	bl GetRadius__6CLightCFv
/* 800B599C 000B28FC  38 77 00 EC */	addi r3, r23, 0xec
/* 800B59A0 000B2900  48 25 07 B5 */	bl GetIntensity__6CLightCFv
/* 800B59A4 000B2904  7E E3 BB 78 */	mr r3, r23
/* 800B59A8 000B2908  4B FF FC 59 */	bl SetLightPriorityAndId__10CGameLightFv
/* 800B59AC 000B290C  7E E3 BB 78 */	mr r3, r23
/* 800B59B0 000B2910  CB E1 01 38 */	lfd f31, 0x138(r1)
/* 800B59B4 000B2914  BA E1 01 14 */	lmw r23, 0x114(r1)
/* 800B59B8 000B2918  80 01 01 44 */	lwz r0, 0x144(r1)
/* 800B59BC 000B291C  7C 08 03 A6 */	mtlr r0
/* 800B59C0 000B2920  38 21 01 40 */	addi r1, r1, 0x140
/* 800B59C4 000B2924  4E 80 00 20 */	blr
