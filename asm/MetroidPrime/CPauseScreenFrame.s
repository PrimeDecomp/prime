.include "macros.inc"

.section .data
.balign 8

.global lbl_803E8708
lbl_803E8708:
	# ROM: 0x3E5708
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DoAdvance__15CQuitGameScreenFP14CGuiTableGroup

.global lbl_803E8714
lbl_803E8714:
	# ROM: 0x3E5714
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DoSelectionChange__15CQuitGameScreenFP14CGuiTableGroup

.global lbl_803E8720
lbl_803E8720:
	# ROM: 0x3E5720
	.4byte 0x00000005
	.4byte lbl_803D4404
	.4byte 0x00000005
	.4byte lbl_803D447C
	.4byte 0x00000004
	.4byte lbl_803D44F4
	.4byte 0x00000004
	.4byte lbl_803D4554
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte OnSliderChanged__14COptionsScreenFP15CGuiSliderGroupf
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte OnEnumChanged__14COptionsScreenFP14CGuiTableGroupi
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte OnEnumChanged__14COptionsScreenFP14CGuiTableGroupi
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DoLeftMenuAdvance__21SOptionsFrontEndFrameFP14CGuiTableGroup
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DoMenuSelectionChange__21SOptionsFrontEndFrameFP14CGuiTableGroup
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DoMenuSelectionChange__21SOptionsFrontEndFrameFP14CGuiTableGroup
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DoMenuCancel__21SOptionsFrontEndFrameFP14CGuiTableGroup
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DoMenuSelectionChange__21SOptionsFrontEndFrameFP14CGuiTableGroup
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DoMenuCancel__21SOptionsFrontEndFrameFP14CGuiTableGroup
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DoMenuSelectionChange__21SOptionsFrontEndFrameFP14CGuiTableGroup
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DoMenuCancel__21SOptionsFrontEndFrameFP14CGuiTableGroup
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DoSliderChange__21SOptionsFrontEndFrameFP15CGuiSliderGroup

.global lbl_803E87D8
lbl_803E87D8:
	# ROM: 0x3E57D8
	.4byte 0
	.4byte 0
	.4byte __dt__14COptionsScreenFv
	.4byte InputDisabled__14COptionsScreenCFv
	.4byte TransitioningAway__16CPauseScreenBaseFv
	.4byte Update__14COptionsScreenFfR9CRandom16R18CArchitectureQueue
	.4byte Touch__14COptionsScreenFv
	.4byte ProcessInput__14COptionsScreenFRC11CFinalInput
	.4byte Draw__14COptionsScreenCFfff
	.4byte GetCameraYBias__16CPauseScreenBaseCFv
	.4byte VReady__14COptionsScreenCFv
	.4byte VActivate__14COptionsScreenFv
	.4byte RightTableSelectionChanged__14COptionsScreenFii
	.4byte ChangedMode__14COptionsScreenQ216CPauseScreenBase5EMode
	.4byte UpdateRightTable__14COptionsScreenFv
	.4byte ShouldLeftTableAdvance__14COptionsScreenFv
	.4byte ShouldRightTableAdvance__14COptionsScreenFv
	.4byte GetRightTableCount__14COptionsScreenCFv
	.4byte IsRightLogDynamic__16CPauseScreenBaseCFv
	.4byte UpdateRightLogColors__16CPauseScreenBaseFbRC6CColor
	.4byte UpdateRightLogHighlight__16CPauseScreenBaseFbiRC6CColorRC6CColor

.global lbl_803E882C
lbl_803E882C:
	# ROM: 0x3E582C
	.4byte lbl_802441DC
	.4byte lbl_802441E4
	.4byte lbl_802441F0
	.4byte lbl_80244208
	.4byte lbl_80244220
	.4byte lbl_80244230
	.4byte lbl_80244240
	.4byte lbl_80244250
	.4byte lbl_80244260
	.4byte lbl_80244270
	.4byte lbl_80244280
	.4byte lbl_80244290
	.4byte lbl_802442A8
	.4byte lbl_802442C0

.global lbl_803E8864
lbl_803E8864:
	# ROM: 0x3E5864
	.4byte lbl_80244308
	.4byte lbl_80244310
	.4byte lbl_80244318
	.4byte lbl_80244330
	.4byte lbl_80244348
	.4byte lbl_80244350
	.4byte lbl_80244358
	.4byte lbl_80244360
	.4byte lbl_80244368
	.4byte lbl_80244370
	.4byte lbl_80244378
	.4byte lbl_80244380
	.4byte lbl_80244398
	.4byte lbl_802443B0
	.4byte 0
	.4byte 0
	.4byte 0

.section .sdata
.balign 8

.global lbl_805A8290
lbl_805A8290:
	# ROM: 0x3F5C30
	.float 1.0

.global lbl_805A8294
lbl_805A8294:
	# ROM: 0x3F5C34
	.4byte 0

.global lbl_805A8298
lbl_805A8298:
	# ROM: 0x3F5C38
	.float 1.0

.global lbl_805A829C
lbl_805A829C:
	# ROM: 0x3F5C3C
	.4byte 0

.section .text, "ax"

.global DoSliderChange__21SOptionsFrontEndFrameFP15CGuiSliderGroup
DoSliderChange__21SOptionsFrontEndFrameFP15CGuiSliderGroup:
/* 80241AF8 0023EA58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80241AFC 0023EA5C  7C 08 02 A6 */	mflr r0
/* 80241B00 0023EA60  90 01 00 24 */	stw r0, 0x24(r1)
/* 80241B04 0023EA64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80241B08 0023EA68  7C 9F 23 78 */	mr r31, r4
/* 80241B0C 0023EA6C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80241B10 0023EA70  7C 7E 1B 78 */	mr r30, r3
/* 80241B14 0023EA74  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80241B18 0023EA78  81 83 00 00 */	lwz r12, 0(r3)
/* 80241B1C 0023EA7C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80241B20 0023EA80  7D 89 03 A6 */	mtctr r12
/* 80241B24 0023EA84  4E 80 04 21 */	bctrl
/* 80241B28 0023EA88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80241B2C 0023EA8C  41 82 00 44 */	beq lbl_80241B70
/* 80241B30 0023EA90  80 BE 00 24 */	lwz r5, 0x24(r30)
/* 80241B34 0023EA94  3C 80 80 3F */	lis r4, lbl_803E8720@ha
/* 80241B38 0023EA98  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80241B3C 0023EA9C  38 84 87 20 */	addi r4, r4, lbl_803E8720@l
/* 80241B40 0023EAA0  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80241B44 0023EAA4  80 A5 00 C4 */	lwz r5, 0xc4(r5)
/* 80241B48 0023EAA8  FC 00 00 1E */	fctiwz f0, f0
/* 80241B4C 0023EAAC  80 03 00 C4 */	lwz r0, 0xc4(r3)
/* 80241B50 0023EAB0  54 A3 18 38 */	slwi r3, r5, 3
/* 80241B54 0023EAB4  7C 64 1A 14 */	add r3, r4, r3
/* 80241B58 0023EAB8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80241B5C 0023EABC  1C 00 00 18 */	mulli r0, r0, 0x18
/* 80241B60 0023EAC0  80 63 00 04 */	lwz r3, 4(r3)
/* 80241B64 0023EAC4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80241B68 0023EAC8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80241B6C 0023EACC  48 00 26 3D */	bl SetOption__12CGameOptionsF11EGameOptioni
lbl_80241B70:
/* 80241B70 0023EAD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80241B74 0023EAD4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80241B78 0023EAD8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80241B7C 0023EADC  7C 08 03 A6 */	mtlr r0
/* 80241B80 0023EAE0  38 21 00 20 */	addi r1, r1, 0x20
/* 80241B84 0023EAE4  4E 80 00 20 */	blr

.global SetTableColors__21SOptionsFrontEndFrameFP14CGuiTableGroup
SetTableColors__21SOptionsFrontEndFrameFP14CGuiTableGroup:
/* 80241B88 0023EAE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80241B8C 0023EAEC  7C 08 02 A6 */	mflr r0
/* 80241B90 0023EAF0  7C 83 23 78 */	mr r3, r4
/* 80241B94 0023EAF4  38 E0 00 FF */	li r7, 0xff
/* 80241B98 0023EAF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80241B9C 0023EAFC  38 C0 00 A0 */	li r6, 0xa0
/* 80241BA0 0023EB00  38 00 00 C8 */	li r0, 0xc8
/* 80241BA4 0023EB04  38 81 00 0C */	addi r4, r1, 0xc
/* 80241BA8 0023EB08  98 E1 00 0C */	stb r7, 0xc(r1)
/* 80241BAC 0023EB0C  38 A1 00 08 */	addi r5, r1, 8
/* 80241BB0 0023EB10  98 E1 00 0D */	stb r7, 0xd(r1)
/* 80241BB4 0023EB14  98 E1 00 0E */	stb r7, 0xe(r1)
/* 80241BB8 0023EB18  98 E1 00 0F */	stb r7, 0xf(r1)
/* 80241BBC 0023EB1C  98 C1 00 08 */	stb r6, 8(r1)
/* 80241BC0 0023EB20  98 C1 00 09 */	stb r6, 9(r1)
/* 80241BC4 0023EB24  98 C1 00 0A */	stb r6, 0xa(r1)
/* 80241BC8 0023EB28  98 01 00 0B */	stb r0, 0xb(r1)
/* 80241BCC 0023EB2C  48 08 4A 31 */	bl SetColors__14CGuiTableGroupCFRC6CColorRC6CColor
/* 80241BD0 0023EB30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80241BD4 0023EB34  7C 08 03 A6 */	mtlr r0
/* 80241BD8 0023EB38  38 21 00 10 */	addi r1, r1, 0x10
/* 80241BDC 0023EB3C  4E 80 00 20 */	blr

.global Draw__21SOptionsFrontEndFrameFv
Draw__21SOptionsFrontEndFrameFv:
/* 80241BE0 0023EB40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80241BE4 0023EB44  7C 08 02 A6 */	mflr r0
/* 80241BE8 0023EB48  90 01 00 24 */	stw r0, 0x24(r1)
/* 80241BEC 0023EB4C  80 C3 00 1C */	lwz r6, 0x1c(r3)
/* 80241BF0 0023EB50  28 06 00 00 */	cmplwi r6, 0
/* 80241BF4 0023EB54  41 82 00 44 */	beq lbl_80241C38
/* 80241BF8 0023EB58  88 03 01 34 */	lbz r0, 0x134(r3)
/* 80241BFC 0023EB5C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80241C00 0023EB60  41 82 00 38 */	beq lbl_80241C38
/* 80241C04 0023EB64  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 80241C08 0023EB68  C0 63 00 00 */	lfs f3, 0(r3)
/* 80241C0C 0023EB6C  38 A4 66 A0 */	addi r5, r4, sZeroVector__9CVector3f@l
/* 80241C10 0023EB70  7C C3 33 78 */	mr r3, r6
/* 80241C14 0023EB74  C0 45 00 00 */	lfs f2, 0(r5)
/* 80241C18 0023EB78  38 81 00 08 */	addi r4, r1, 8
/* 80241C1C 0023EB7C  C0 25 00 04 */	lfs f1, 4(r5)
/* 80241C20 0023EB80  C0 05 00 08 */	lfs f0, 8(r5)
/* 80241C24 0023EB84  D0 61 00 08 */	stfs f3, 8(r1)
/* 80241C28 0023EB88  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80241C2C 0023EB8C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80241C30 0023EB90  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80241C34 0023EB94  48 08 0B 01 */	bl Draw__9CGuiFrameCFRC19CGuiWidgetDrawParms
lbl_80241C38:
/* 80241C38 0023EB98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80241C3C 0023EB9C  7C 08 03 A6 */	mtlr r0
/* 80241C40 0023EBA0  38 21 00 20 */	addi r1, r1, 0x20
/* 80241C44 0023EBA4  4E 80 00 20 */	blr

.global ProcessUserInput__21SOptionsFrontEndFrameFRC11CFinalInputPC15CSaveGameScreen
ProcessUserInput__21SOptionsFrontEndFrameFRC11CFinalInputPC15CSaveGameScreen:
/* 80241C48 0023EBA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80241C4C 0023EBAC  7C 08 02 A6 */	mflr r0
/* 80241C50 0023EBB0  28 05 00 00 */	cmplwi r5, 0
/* 80241C54 0023EBB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80241C58 0023EBB8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80241C5C 0023EBBC  7C 9F 23 78 */	mr r31, r4
/* 80241C60 0023EBC0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80241C64 0023EBC4  7C 7E 1B 78 */	mr r30, r3
/* 80241C68 0023EBC8  88 03 01 34 */	lbz r0, 0x134(r3)
/* 80241C6C 0023EBCC  38 60 00 00 */	li r3, 0
/* 80241C70 0023EBD0  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80241C74 0023EBD4  98 1E 01 34 */	stb r0, 0x134(r30)
/* 80241C78 0023EBD8  41 82 00 0C */	beq lbl_80241C84
/* 80241C7C 0023EBDC  7C A3 2B 78 */	mr r3, r5
/* 80241C80 0023EBE0  48 00 DA F1 */	bl ProcessUserInput__15CSaveGameScreenFRC11CFinalInput
lbl_80241C84:
/* 80241C84 0023EBE4  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 80241C88 0023EBE8  28 00 00 00 */	cmplwi r0, 0
/* 80241C8C 0023EBEC  41 82 00 98 */	beq lbl_80241D24
/* 80241C90 0023EBF0  88 1E 01 34 */	lbz r0, 0x134(r30)
/* 80241C94 0023EBF4  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80241C98 0023EBF8  41 82 00 8C */	beq lbl_80241D24
/* 80241C9C 0023EBFC  88 1F 00 2D */	lbz r0, 0x2d(r31)
/* 80241CA0 0023EC00  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 80241CA4 0023EC04  41 82 00 58 */	beq lbl_80241CFC
/* 80241CA8 0023EC08  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 80241CAC 0023EC0C  81 83 00 00 */	lwz r12, 0(r3)
/* 80241CB0 0023EC10  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80241CB4 0023EC14  7D 89 03 A6 */	mtctr r12
/* 80241CB8 0023EC18  4E 80 04 21 */	bctrl
/* 80241CBC 0023EC1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80241CC0 0023EC20  41 82 00 3C */	beq lbl_80241CFC
/* 80241CC4 0023EC24  88 1E 01 34 */	lbz r0, 0x134(r30)
/* 80241CC8 0023EC28  38 60 00 01 */	li r3, 1
/* 80241CCC 0023EC2C  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80241CD0 0023EC30  A9 02 C5 FA */	lha r8, kMedPriority__11CSfxManager@sda21(r2)
/* 80241CD4 0023EC34  98 1E 01 34 */	stb r0, 0x134(r30)
/* 80241CD8 0023EC38  38 61 00 08 */	addi r3, r1, 8
/* 80241CDC 0023EC3C  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 80241CE0 0023EC40  38 80 04 46 */	li r4, 0x446
/* 80241CE4 0023EC44  38 A0 00 7F */	li r5, 0x7f
/* 80241CE8 0023EC48  38 C0 00 40 */	li r6, 0x40
/* 80241CEC 0023EC4C  38 E0 00 00 */	li r7, 0
/* 80241CF0 0023EC50  39 20 00 00 */	li r9, 0
/* 80241CF4 0023EC54  48 0A 80 81 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 80241CF8 0023EC58  48 00 00 2C */	b lbl_80241D24
lbl_80241CFC:
/* 80241CFC 0023EC5C  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 80241D00 0023EC60  7F E4 FB 78 */	mr r4, r31
/* 80241D04 0023EC64  48 08 09 55 */	bl ProcessUserInput__9CGuiFrameFRC11CFinalInput
/* 80241D08 0023EC68  80 9E 00 24 */	lwz r4, 0x24(r30)
/* 80241D0C 0023EC6C  7F E3 FB 78 */	mr r3, r31
/* 80241D10 0023EC70  80 BE 00 28 */	lwz r5, 0x28(r30)
/* 80241D14 0023EC74  38 C0 00 01 */	li r6, 1
/* 80241D18 0023EC78  80 84 00 C4 */	lwz r4, 0xc4(r4)
/* 80241D1C 0023EC7C  80 A5 00 C4 */	lwz r5, 0xc4(r5)
/* 80241D20 0023EC80  48 00 22 A9 */	bl TryRestoreDefaults__12CGameOptionsFRC11CFinalInputiib
lbl_80241D24:
/* 80241D24 0023EC84  88 1E 01 34 */	lbz r0, 0x134(r30)
/* 80241D28 0023EC88  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80241D2C 0023EC8C  54 00 D7 FE */	rlwinm r0, r0, 0x1a, 0x1f, 0x1f
/* 80241D30 0023EC90  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80241D34 0023EC94  7C 00 00 34 */	cntlzw r0, r0
/* 80241D38 0023EC98  54 03 D9 7E */	srwi r3, r0, 5
/* 80241D3C 0023EC9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80241D40 0023ECA0  7C 08 03 A6 */	mtlr r0
/* 80241D44 0023ECA4  38 21 00 20 */	addi r1, r1, 0x20
/* 80241D48 0023ECA8  4E 80 00 20 */	blr

.global Update__21SOptionsFrontEndFrameFfPC15CSaveGameScreen
Update__21SOptionsFrontEndFrameFfPC15CSaveGameScreen:
/* 80241D4C 0023ECAC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80241D50 0023ECB0  7C 08 02 A6 */	mflr r0
/* 80241D54 0023ECB4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80241D58 0023ECB8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80241D5C 0023ECBC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 80241D60 0023ECC0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80241D64 0023ECC4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80241D68 0023ECC8  FF E0 08 90 */	fmr f31, f1
/* 80241D6C 0023ECCC  7C 7F 1B 78 */	mr r31, r3
/* 80241D70 0023ECD0  7C 9E 23 78 */	mr r30, r4
/* 80241D74 0023ECD4  38 7F 00 40 */	addi r3, r31, 0x40
/* 80241D78 0023ECD8  48 12 80 69 */	bl Update__16CRumbleGeneratorFf
/* 80241D7C 0023ECDC  28 1E 00 00 */	cmplwi r30, 0
/* 80241D80 0023ECE0  38 60 00 00 */	li r3, 0
/* 80241D84 0023ECE4  41 82 00 10 */	beq lbl_80241D94
/* 80241D88 0023ECE8  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 80241D8C 0023ECEC  2C 00 00 10 */	cmpwi r0, 0x10
/* 80241D90 0023ECF0  40 82 00 08 */	bne lbl_80241D98
lbl_80241D94:
/* 80241D94 0023ECF4  38 60 00 01 */	li r3, 1
lbl_80241D98:
/* 80241D98 0023ECF8  88 1F 01 34 */	lbz r0, 0x134(r31)
/* 80241D9C 0023ECFC  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80241DA0 0023ED00  7F E3 FB 78 */	mr r3, r31
/* 80241DA4 0023ED04  98 1F 01 34 */	stb r0, 0x134(r31)
/* 80241DA8 0023ED08  48 00 0F 2D */	bl PumpLoad__21SOptionsFrontEndFrameFv
/* 80241DAC 0023ED0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80241DB0 0023ED10  41 82 00 B8 */	beq lbl_80241E68
/* 80241DB4 0023ED14  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80241DB8 0023ED18  C0 0D 96 D8 */	lfs f0, lbl_805A8298@sda21(r13)
/* 80241DBC 0023ED1C  EC 21 F8 2A */	fadds f1, f1, f31
/* 80241DC0 0023ED20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80241DC4 0023ED24  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80241DC8 0023ED28  40 80 00 0C */	bge lbl_80241DD4
/* 80241DCC 0023ED2C  38 61 00 10 */	addi r3, r1, 0x10
/* 80241DD0 0023ED30  48 00 00 08 */	b lbl_80241DD8
lbl_80241DD4:
/* 80241DD4 0023ED34  38 6D 96 D8 */	addi r3, r13, lbl_805A8298@sda21
lbl_80241DD8:
/* 80241DD8 0023ED38  C0 03 00 00 */	lfs f0, 0(r3)
/* 80241DDC 0023ED3C  FC 20 F8 90 */	fmr f1, f31
/* 80241DE0 0023ED40  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80241DE4 0023ED44  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 80241DE8 0023ED48  48 08 09 1D */	bl Update__9CGuiFrameFf
/* 80241DEC 0023ED4C  80 9F 00 34 */	lwz r4, 0x34(r31)
/* 80241DF0 0023ED50  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 80241DF4 0023ED54  80 A4 00 F0 */	lwz r5, 0xf0(r4)
/* 80241DF8 0023ED58  7C 03 00 D0 */	neg r0, r3
/* 80241DFC 0023ED5C  7C 85 00 D0 */	neg r4, r5
/* 80241E00 0023ED60  7C 84 2B 78 */	or r4, r4, r5
/* 80241E04 0023ED64  7C 00 1B 78 */	or r0, r0, r3
/* 80241E08 0023ED68  54 83 0F FE */	srwi r3, r4, 0x1f
/* 80241E0C 0023ED6C  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80241E10 0023ED70  7C 03 00 40 */	cmplw r3, r0
/* 80241E14 0023ED74  41 82 00 54 */	beq lbl_80241E68
/* 80241E18 0023ED78  28 03 00 00 */	cmplwi r3, 0
/* 80241E1C 0023ED7C  41 82 00 34 */	beq lbl_80241E50
/* 80241E20 0023ED80  A9 02 C5 FA */	lha r8, kMedPriority__11CSfxManager@sda21(r2)
/* 80241E24 0023ED84  38 61 00 0C */	addi r3, r1, 0xc
/* 80241E28 0023ED88  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 80241E2C 0023ED8C  38 80 05 B2 */	li r4, 0x5b2
/* 80241E30 0023ED90  38 A0 00 7F */	li r5, 0x7f
/* 80241E34 0023ED94  38 C0 00 40 */	li r6, 0x40
/* 80241E38 0023ED98  38 E0 00 00 */	li r7, 0
/* 80241E3C 0023ED9C  39 20 00 00 */	li r9, 0
/* 80241E40 0023EDA0  48 0A 7F 35 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 80241E44 0023EDA4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80241E48 0023EDA8  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 80241E4C 0023EDAC  48 00 00 1C */	b lbl_80241E68
lbl_80241E50:
/* 80241E50 0023EDB0  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 80241E54 0023EDB4  38 61 00 08 */	addi r3, r1, 8
/* 80241E58 0023EDB8  90 01 00 08 */	stw r0, 8(r1)
/* 80241E5C 0023EDBC  48 0A 7E ED */	bl SfxStop__11CSfxManagerFRC10CSfxHandle
/* 80241E60 0023EDC0  38 00 00 00 */	li r0, 0
/* 80241E64 0023EDC4  90 1F 00 3C */	stw r0, 0x3c(r31)
lbl_80241E68:
/* 80241E68 0023EDC8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80241E6C 0023EDCC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80241E70 0023EDD0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80241E74 0023EDD4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80241E78 0023EDD8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80241E7C 0023EDDC  7C 08 03 A6 */	mtlr r0
/* 80241E80 0023EDE0  38 21 00 30 */	addi r1, r1, 0x30
/* 80241E84 0023EDE4  4E 80 00 20 */	blr

.global DoMenuCancel__21SOptionsFrontEndFrameFP14CGuiTableGroup
DoMenuCancel__21SOptionsFrontEndFrameFP14CGuiTableGroup:
/* 80241E88 0023EDE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80241E8C 0023EDEC  7C 08 02 A6 */	mflr r0
/* 80241E90 0023EDF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80241E94 0023EDF4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80241E98 0023EDF8  7C 7F 1B 78 */	mr r31, r3
/* 80241E9C 0023EDFC  80 03 00 28 */	lwz r0, 0x28(r3)
/* 80241EA0 0023EE00  7C 04 00 40 */	cmplw r4, r0
/* 80241EA4 0023EE04  40 82 00 64 */	bne lbl_80241F08
/* 80241EA8 0023EE08  48 00 02 A9 */	bl DeactivateRightMenu__21SOptionsFrontEndFrameFv
/* 80241EAC 0023EE0C  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 80241EB0 0023EE10  38 80 00 01 */	li r4, 1
/* 80241EB4 0023EE14  48 08 87 31 */	bl SetIsActive__10CGuiWidgetFb
/* 80241EB8 0023EE18  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80241EBC 0023EE1C  38 80 00 00 */	li r4, 0
/* 80241EC0 0023EE20  48 08 87 25 */	bl SetIsActive__10CGuiWidgetFb
/* 80241EC4 0023EE24  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 80241EC8 0023EE28  38 00 00 00 */	li r0, 0
/* 80241ECC 0023EE2C  7F E3 FB 78 */	mr r3, r31
/* 80241ED0 0023EE30  80 85 00 C4 */	lwz r4, 0xc4(r5)
/* 80241ED4 0023EE34  90 85 00 C8 */	stw r4, 0xc8(r5)
/* 80241ED8 0023EE38  90 05 00 C4 */	stw r0, 0xc4(r5)
/* 80241EDC 0023EE3C  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 80241EE0 0023EE40  4B FF FC A9 */	bl SetTableColors__21SOptionsFrontEndFrameFP14CGuiTableGroup
/* 80241EE4 0023EE44  A9 02 C5 FA */	lha r8, kMedPriority__11CSfxManager@sda21(r2)
/* 80241EE8 0023EE48  38 61 00 08 */	addi r3, r1, 8
/* 80241EEC 0023EE4C  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 80241EF0 0023EE50  38 80 04 46 */	li r4, 0x446
/* 80241EF4 0023EE54  38 A0 00 7F */	li r5, 0x7f
/* 80241EF8 0023EE58  38 C0 00 40 */	li r6, 0x40
/* 80241EFC 0023EE5C  38 E0 00 00 */	li r7, 0
/* 80241F00 0023EE60  39 20 00 00 */	li r9, 0
/* 80241F04 0023EE64  48 0A 7E 71 */	bl SfxStart__11CSfxManagerFUsssbsbi
lbl_80241F08:
/* 80241F08 0023EE68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80241F0C 0023EE6C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80241F10 0023EE70  7C 08 03 A6 */	mtlr r0
/* 80241F14 0023EE74  38 21 00 20 */	addi r1, r1, 0x20
/* 80241F18 0023EE78  4E 80 00 20 */	blr

.global DoMenuSelectionChange__21SOptionsFrontEndFrameFP14CGuiTableGroup
DoMenuSelectionChange__21SOptionsFrontEndFrameFP14CGuiTableGroup:
/* 80241F1C 0023EE7C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80241F20 0023EE80  7C 08 02 A6 */	mflr r0
/* 80241F24 0023EE84  90 01 00 34 */	stw r0, 0x34(r1)
/* 80241F28 0023EE88  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80241F2C 0023EE8C  7C 7F 1B 78 */	mr r31, r3
/* 80241F30 0023EE90  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80241F34 0023EE94  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80241F38 0023EE98  93 81 00 20 */	stw r28, 0x20(r1)
/* 80241F3C 0023EE9C  7C 9C 23 78 */	mr r28, r4
/* 80241F40 0023EEA0  4B FF FC 49 */	bl SetTableColors__21SOptionsFrontEndFrameFP14CGuiTableGroup
/* 80241F44 0023EEA4  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 80241F48 0023EEA8  7C 1C 00 40 */	cmplw r28, r0
/* 80241F4C 0023EEAC  40 82 00 34 */	bne lbl_80241F80
/* 80241F50 0023EEB0  7F E3 FB 78 */	mr r3, r31
/* 80241F54 0023EEB4  48 00 05 25 */	bl SetRightUIText__21SOptionsFrontEndFrameFv
/* 80241F58 0023EEB8  A9 02 C5 FA */	lha r8, kMedPriority__11CSfxManager@sda21(r2)
/* 80241F5C 0023EEBC  38 61 00 10 */	addi r3, r1, 0x10
/* 80241F60 0023EEC0  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 80241F64 0023EEC4  38 80 04 45 */	li r4, 0x445
/* 80241F68 0023EEC8  38 A0 00 7F */	li r5, 0x7f
/* 80241F6C 0023EECC  38 C0 00 40 */	li r6, 0x40
/* 80241F70 0023EED0  38 E0 00 00 */	li r7, 0
/* 80241F74 0023EED4  39 20 00 00 */	li r9, 0
/* 80241F78 0023EED8  48 0A 7D FD */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 80241F7C 0023EEDC  48 00 01 08 */	b lbl_80242084
lbl_80241F80:
/* 80241F80 0023EEE0  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80241F84 0023EEE4  7C 1C 18 40 */	cmplw r28, r3
/* 80241F88 0023EEE8  40 82 00 34 */	bne lbl_80241FBC
/* 80241F8C 0023EEEC  7F E3 FB 78 */	mr r3, r31
/* 80241F90 0023EEF0  48 00 02 3D */	bl HandleRightSelectionChange__21SOptionsFrontEndFrameFv
/* 80241F94 0023EEF4  A9 02 C5 FA */	lha r8, kMedPriority__11CSfxManager@sda21(r2)
/* 80241F98 0023EEF8  38 61 00 0C */	addi r3, r1, 0xc
/* 80241F9C 0023EEFC  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 80241FA0 0023EF00  38 80 04 45 */	li r4, 0x445
/* 80241FA4 0023EF04  38 A0 00 7F */	li r5, 0x7f
/* 80241FA8 0023EF08  38 C0 00 40 */	li r6, 0x40
/* 80241FAC 0023EF0C  38 E0 00 00 */	li r7, 0
/* 80241FB0 0023EF10  39 20 00 00 */	li r9, 0
/* 80241FB4 0023EF14  48 0A 7D C1 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 80241FB8 0023EF18  48 00 00 CC */	b lbl_80242084
lbl_80241FBC:
/* 80241FBC 0023EF1C  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 80241FC0 0023EF20  7C 1C 00 40 */	cmplw r28, r0
/* 80241FC4 0023EF24  41 82 00 10 */	beq lbl_80241FD4
/* 80241FC8 0023EF28  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80241FCC 0023EF2C  7C 1C 00 40 */	cmplw r28, r0
/* 80241FD0 0023EF30  40 82 00 B4 */	bne lbl_80242084
lbl_80241FD4:
/* 80241FD4 0023EF34  81 83 00 00 */	lwz r12, 0(r3)
/* 80241FD8 0023EF38  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80241FDC 0023EF3C  7D 89 03 A6 */	mtctr r12
/* 80241FE0 0023EF40  4E 80 04 21 */	bctrl
/* 80241FE4 0023EF44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80241FE8 0023EF48  41 82 00 9C */	beq lbl_80242084
/* 80241FEC 0023EF4C  80 BF 00 24 */	lwz r5, 0x24(r31)
/* 80241FF0 0023EF50  3C 80 80 3F */	lis r4, lbl_803E8720@ha
/* 80241FF4 0023EF54  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80241FF8 0023EF58  38 84 87 20 */	addi r4, r4, lbl_803E8720@l
/* 80241FFC 0023EF5C  80 A5 00 C4 */	lwz r5, 0xc4(r5)
/* 80242000 0023EF60  80 03 00 C4 */	lwz r0, 0xc4(r3)
/* 80242004 0023EF64  54 A3 18 38 */	slwi r3, r5, 3
/* 80242008 0023EF68  83 9C 00 C4 */	lwz r28, 0xc4(r28)
/* 8024200C 0023EF6C  7C 64 1A 14 */	add r3, r4, r3
/* 80242010 0023EF70  1F C0 00 18 */	mulli r30, r0, 0x18
/* 80242014 0023EF74  83 A3 00 04 */	lwz r29, 4(r3)
/* 80242018 0023EF78  7F 84 E3 78 */	mr r4, r28
/* 8024201C 0023EF7C  7C 7D F0 2E */	lwzx r3, r29, r30
/* 80242020 0023EF80  48 00 21 89 */	bl SetOption__12CGameOptionsF11EGameOptioni
/* 80242024 0023EF84  A9 02 C5 FA */	lha r8, kMedPriority__11CSfxManager@sda21(r2)
/* 80242028 0023EF88  38 61 00 08 */	addi r3, r1, 8
/* 8024202C 0023EF8C  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 80242030 0023EF90  38 80 04 47 */	li r4, 0x447
/* 80242034 0023EF94  38 A0 00 7F */	li r5, 0x7f
/* 80242038 0023EF98  38 C0 00 40 */	li r6, 0x40
/* 8024203C 0023EF9C  38 E0 00 00 */	li r7, 0
/* 80242040 0023EFA0  39 20 00 00 */	li r9, 0
/* 80242044 0023EFA4  48 0A 7D 31 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 80242048 0023EFA8  7C 1D F0 2E */	lwzx r0, r29, r30
/* 8024204C 0023EFAC  2C 00 00 0C */	cmpwi r0, 0xc
/* 80242050 0023EFB0  40 82 00 34 */	bne lbl_80242084
/* 80242054 0023EFB4  2C 1C 00 00 */	cmpwi r28, 0
/* 80242058 0023EFB8  40 81 00 2C */	ble lbl_80242084
/* 8024205C 0023EFBC  38 7F 00 40 */	addi r3, r31, 0x40
/* 80242060 0023EFC0  48 12 7C ED */	bl HardStopAll__16CRumbleGeneratorFv
/* 80242064 0023EFC4  3C 60 80 57 */	lis r3, RumbleFxTable@ha
/* 80242068 0023EFC8  C0 22 B8 14 */	lfs f1, lbl_805AD534@sda21(r2)
/* 8024206C 0023EFCC  38 83 21 40 */	addi r4, r3, RumbleFxTable@l
/* 80242070 0023EFD0  38 7F 00 40 */	addi r3, r31, 0x40
/* 80242074 0023EFD4  38 84 01 34 */	addi r4, r4, 0x134
/* 80242078 0023EFD8  38 A0 00 01 */	li r5, 1
/* 8024207C 0023EFDC  38 C0 00 00 */	li r6, 0
/* 80242080 0023EFE0  48 12 7E CD */	bl Rumble__16CRumbleGeneratorFRC9SAdsrDataf15ERumblePriority7EIOPort
lbl_80242084:
/* 80242084 0023EFE4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80242088 0023EFE8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8024208C 0023EFEC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80242090 0023EFF0  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80242094 0023EFF4  83 81 00 20 */	lwz r28, 0x20(r1)
/* 80242098 0023EFF8  7C 08 03 A6 */	mtlr r0
/* 8024209C 0023EFFC  38 21 00 30 */	addi r1, r1, 0x30
/* 802420A0 0023F000  4E 80 00 20 */	blr

.global DoLeftMenuAdvance__21SOptionsFrontEndFrameFP14CGuiTableGroup
DoLeftMenuAdvance__21SOptionsFrontEndFrameFP14CGuiTableGroup:
/* 802420A4 0023F004  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802420A8 0023F008  7C 08 02 A6 */	mflr r0
/* 802420AC 0023F00C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802420B0 0023F010  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802420B4 0023F014  7C 7F 1B 78 */	mr r31, r3
/* 802420B8 0023F018  80 03 00 24 */	lwz r0, 0x24(r3)
/* 802420BC 0023F01C  7C 04 00 40 */	cmplw r4, r0
/* 802420C0 0023F020  40 82 00 7C */	bne lbl_8024213C
/* 802420C4 0023F024  48 00 01 09 */	bl HandleRightSelectionChange__21SOptionsFrontEndFrameFv
/* 802420C8 0023F028  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 802420CC 0023F02C  38 00 00 00 */	li r0, 0
/* 802420D0 0023F030  38 80 00 00 */	li r4, 0
/* 802420D4 0023F034  80 65 00 C4 */	lwz r3, 0xc4(r5)
/* 802420D8 0023F038  90 65 00 C8 */	stw r3, 0xc8(r5)
/* 802420DC 0023F03C  90 05 00 C4 */	stw r0, 0xc4(r5)
/* 802420E0 0023F040  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 802420E4 0023F044  48 08 85 01 */	bl SetIsActive__10CGuiWidgetFb
/* 802420E8 0023F048  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 802420EC 0023F04C  38 80 00 01 */	li r4, 1
/* 802420F0 0023F050  48 08 84 F5 */	bl SetIsActive__10CGuiWidgetFb
/* 802420F4 0023F054  A9 02 C5 FA */	lha r8, kMedPriority__11CSfxManager@sda21(r2)
/* 802420F8 0023F058  38 61 00 0C */	addi r3, r1, 0xc
/* 802420FC 0023F05C  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 80242100 0023F060  38 80 04 48 */	li r4, 0x448
/* 80242104 0023F064  38 A0 00 7F */	li r5, 0x7f
/* 80242108 0023F068  38 C0 00 40 */	li r6, 0x40
/* 8024210C 0023F06C  38 E0 00 00 */	li r7, 0
/* 80242110 0023F070  39 20 00 00 */	li r9, 0
/* 80242114 0023F074  48 0A 7C 61 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 80242118 0023F078  A9 02 C5 FA */	lha r8, kMedPriority__11CSfxManager@sda21(r2)
/* 8024211C 0023F07C  38 61 00 08 */	addi r3, r1, 8
/* 80242120 0023F080  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 80242124 0023F084  38 80 04 43 */	li r4, 0x443
/* 80242128 0023F088  38 A0 00 7F */	li r5, 0x7f
/* 8024212C 0023F08C  38 C0 00 40 */	li r6, 0x40
/* 80242130 0023F090  38 E0 00 00 */	li r7, 0
/* 80242134 0023F094  39 20 00 00 */	li r9, 0
/* 80242138 0023F098  48 0A 7C 3D */	bl SfxStart__11CSfxManagerFUsssbsbi
lbl_8024213C:
/* 8024213C 0023F09C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80242140 0023F0A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80242144 0023F0A4  7C 08 03 A6 */	mtlr r0
/* 80242148 0023F0A8  38 21 00 20 */	addi r1, r1, 0x20
/* 8024214C 0023F0AC  4E 80 00 20 */	blr

.global DeactivateRightMenu__21SOptionsFrontEndFrameFv
DeactivateRightMenu__21SOptionsFrontEndFrameFv:
/* 80242150 0023F0B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80242154 0023F0B4  7C 08 02 A6 */	mflr r0
/* 80242158 0023F0B8  38 80 00 00 */	li r4, 0
/* 8024215C 0023F0BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80242160 0023F0C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80242164 0023F0C4  7C 7F 1B 78 */	mr r31, r3
/* 80242168 0023F0C8  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 8024216C 0023F0CC  48 08 84 79 */	bl SetIsActive__10CGuiWidgetFb
/* 80242170 0023F0D0  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 80242174 0023F0D4  38 80 00 00 */	li r4, 0
/* 80242178 0023F0D8  48 08 84 6D */	bl SetIsActive__10CGuiWidgetFb
/* 8024217C 0023F0DC  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80242180 0023F0E0  38 80 00 00 */	li r4, 0
/* 80242184 0023F0E4  48 08 84 61 */	bl SetIsActive__10CGuiWidgetFb
/* 80242188 0023F0E8  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8024218C 0023F0EC  38 80 00 00 */	li r4, 0
/* 80242190 0023F0F0  38 A0 00 01 */	li r5, 1
/* 80242194 0023F0F4  48 08 85 55 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 80242198 0023F0F8  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8024219C 0023F0FC  38 80 00 00 */	li r4, 0
/* 802421A0 0023F100  38 A0 00 01 */	li r5, 1
/* 802421A4 0023F104  48 08 85 45 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 802421A8 0023F108  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 802421AC 0023F10C  38 80 00 00 */	li r4, 0
/* 802421B0 0023F110  38 A0 00 01 */	li r5, 1
/* 802421B4 0023F114  48 08 85 35 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 802421B8 0023F118  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802421BC 0023F11C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802421C0 0023F120  7C 08 03 A6 */	mtlr r0
/* 802421C4 0023F124  38 21 00 10 */	addi r1, r1, 0x10
/* 802421C8 0023F128  4E 80 00 20 */	blr

.global HandleRightSelectionChange__21SOptionsFrontEndFrameFv
HandleRightSelectionChange__21SOptionsFrontEndFrameFv:
/* 802421CC 0023F12C  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 802421D0 0023F130  7C 08 02 A6 */	mflr r0
/* 802421D4 0023F134  90 01 01 44 */	stw r0, 0x144(r1)
/* 802421D8 0023F138  93 E1 01 3C */	stw r31, 0x13c(r1)
/* 802421DC 0023F13C  7C 7F 1B 78 */	mr r31, r3
/* 802421E0 0023F140  93 C1 01 38 */	stw r30, 0x138(r1)
/* 802421E4 0023F144  4B FF FF 6D */	bl DeactivateRightMenu__21SOptionsFrontEndFrameFv
/* 802421E8 0023F148  80 BF 00 24 */	lwz r5, 0x24(r31)
/* 802421EC 0023F14C  3C 80 80 3F */	lis r4, lbl_803E8720@ha
/* 802421F0 0023F150  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 802421F4 0023F154  38 84 87 20 */	addi r4, r4, lbl_803E8720@l
/* 802421F8 0023F158  80 A5 00 C4 */	lwz r5, 0xc4(r5)
/* 802421FC 0023F15C  80 03 00 C4 */	lwz r0, 0xc4(r3)
/* 80242200 0023F160  54 A3 18 38 */	slwi r3, r5, 3
/* 80242204 0023F164  7C 64 1A 14 */	add r3, r4, r3
/* 80242208 0023F168  1C 00 00 18 */	mulli r0, r0, 0x18
/* 8024220C 0023F16C  80 63 00 04 */	lwz r3, 4(r3)
/* 80242210 0023F170  7F C3 02 14 */	add r30, r3, r0
/* 80242214 0023F174  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 80242218 0023F178  2C 00 00 01 */	cmpwi r0, 1
/* 8024221C 0023F17C  41 82 00 F8 */	beq lbl_80242314
/* 80242220 0023F180  40 80 00 10 */	bge lbl_80242230
/* 80242224 0023F184  2C 00 00 00 */	cmpwi r0, 0
/* 80242228 0023F188  40 80 00 14 */	bge lbl_8024223C
/* 8024222C 0023F18C  48 00 02 34 */	b lbl_80242460
lbl_80242230:
/* 80242230 0023F190  2C 00 00 03 */	cmpwi r0, 3
/* 80242234 0023F194  40 80 02 2C */	bge lbl_80242460
/* 80242238 0023F198  48 00 01 84 */	b lbl_802423BC
lbl_8024223C:
/* 8024223C 0023F19C  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80242240 0023F1A0  38 80 00 01 */	li r4, 1
/* 80242244 0023F1A4  48 08 83 A1 */	bl SetIsActive__10CGuiWidgetFb
/* 80242248 0023F1A8  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 8024224C 0023F1AC  38 80 00 01 */	li r4, 1
/* 80242250 0023F1B0  38 A0 00 01 */	li r5, 1
/* 80242254 0023F1B4  48 08 84 95 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 80242258 0023F1B8  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 8024225C 0023F1BC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80242260 0023F1C0  48 08 3A 79 */	bl SetMinVal__15CGuiSliderGroupFf
/* 80242264 0023F1C4  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80242268 0023F1C8  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8024226C 0023F1CC  48 08 3A 95 */	bl SetMaxVal__15CGuiSliderGroupFf
/* 80242270 0023F1D0  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80242274 0023F1D4  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80242278 0023F1D8  48 08 3A 59 */	bl SetIncrement__15CGuiSliderGroupFf
/* 8024227C 0023F1DC  80 7E 00 00 */	lwz r3, 0(r30)
/* 80242280 0023F1E0  48 00 20 65 */	bl GetOption__11CGameOptionF11EGameOption
/* 80242284 0023F1E4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80242288 0023F1E8  3C 00 43 30 */	lis r0, 0x4330
/* 8024228C 0023F1EC  90 61 01 2C */	stw r3, 0x12c(r1)
/* 80242290 0023F1F0  C8 22 B8 18 */	lfd f1, lbl_805AD538@sda21(r2)
/* 80242294 0023F1F4  90 01 01 28 */	stw r0, 0x128(r1)
/* 80242298 0023F1F8  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 8024229C 0023F1FC  C8 01 01 28 */	lfd f0, 0x128(r1)
/* 802422A0 0023F200  EC 20 08 28 */	fsubs f1, f0, f1
/* 802422A4 0023F204  48 08 3A 85 */	bl SetCurVal__15CGuiSliderGroupFf
/* 802422A8 0023F208  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 802422AC 0023F20C  3C 00 43 30 */	lis r0, 0x4330
/* 802422B0 0023F210  C0 22 B8 10 */	lfs f1, lbl_805AD530@sda21(r2)
/* 802422B4 0023F214  38 61 00 C8 */	addi r3, r1, 0xc8
/* 802422B8 0023F218  80 84 00 C4 */	lwz r4, 0xc4(r4)
/* 802422BC 0023F21C  90 01 01 30 */	stw r0, 0x130(r1)
/* 802422C0 0023F220  FC 40 08 90 */	fmr f2, f1
/* 802422C4 0023F224  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 802422C8 0023F228  C8 62 B8 18 */	lfd f3, lbl_805AD538@sda21(r2)
/* 802422CC 0023F22C  90 01 01 34 */	stw r0, 0x134(r1)
/* 802422D0 0023F230  C0 9F 00 38 */	lfs f4, 0x38(r31)
/* 802422D4 0023F234  C8 01 01 30 */	lfd f0, 0x130(r1)
/* 802422D8 0023F238  EC 00 18 28 */	fsubs f0, f0, f3
/* 802422DC 0023F23C  EC 64 00 32 */	fmuls f3, f4, f0
/* 802422E0 0023F240  48 0D 0E A9 */	bl Translate__12CTransform4fFfff
/* 802422E4 0023F244  80 BF 00 34 */	lwz r5, 0x34(r31)
/* 802422E8 0023F248  38 61 00 F8 */	addi r3, r1, 0xf8
/* 802422EC 0023F24C  38 81 00 C8 */	addi r4, r1, 0xc8
/* 802422F0 0023F250  38 A5 00 74 */	addi r5, r5, 0x74
/* 802422F4 0023F254  48 0D 06 5D */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 802422F8 0023F258  83 FF 00 34 */	lwz r31, 0x34(r31)
/* 802422FC 0023F25C  38 81 00 F8 */	addi r4, r1, 0xf8
/* 80242300 0023F260  38 7F 00 04 */	addi r3, r31, 4
/* 80242304 0023F264  48 0D 08 3D */	bl __as__12CTransform4fFRC12CTransform4f
/* 80242308 0023F268  7F E3 FB 78 */	mr r3, r31
/* 8024230C 0023F26C  48 08 24 DD */	bl RecalculateTransforms__10CGuiObjectFv
/* 80242310 0023F270  48 00 01 50 */	b lbl_80242460
lbl_80242314:
/* 80242314 0023F274  80 7E 00 00 */	lwz r3, 0(r30)
/* 80242318 0023F278  48 00 1F CD */	bl GetOption__11CGameOptionF11EGameOption
/* 8024231C 0023F27C  80 BF 00 2C */	lwz r5, 0x2c(r31)
/* 80242320 0023F280  38 80 00 01 */	li r4, 1
/* 80242324 0023F284  80 05 00 C4 */	lwz r0, 0xc4(r5)
/* 80242328 0023F288  90 05 00 C8 */	stw r0, 0xc8(r5)
/* 8024232C 0023F28C  90 65 00 C4 */	stw r3, 0xc4(r5)
/* 80242330 0023F290  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80242334 0023F294  48 08 82 F9 */	bl SetIsVisible__10CGuiWidgetFb
/* 80242338 0023F298  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8024233C 0023F29C  38 80 00 01 */	li r4, 1
/* 80242340 0023F2A0  48 08 82 A5 */	bl SetIsActive__10CGuiWidgetFb
/* 80242344 0023F2A4  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 80242348 0023F2A8  3C 00 43 30 */	lis r0, 0x4330
/* 8024234C 0023F2AC  C0 22 B8 10 */	lfs f1, lbl_805AD530@sda21(r2)
/* 80242350 0023F2B0  38 61 00 68 */	addi r3, r1, 0x68
/* 80242354 0023F2B4  80 84 00 C4 */	lwz r4, 0xc4(r4)
/* 80242358 0023F2B8  90 01 01 30 */	stw r0, 0x130(r1)
/* 8024235C 0023F2BC  FC 40 08 90 */	fmr f2, f1
/* 80242360 0023F2C0  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80242364 0023F2C4  C8 62 B8 18 */	lfd f3, lbl_805AD538@sda21(r2)
/* 80242368 0023F2C8  90 01 01 34 */	stw r0, 0x134(r1)
/* 8024236C 0023F2CC  C0 9F 00 38 */	lfs f4, 0x38(r31)
/* 80242370 0023F2D0  C8 01 01 30 */	lfd f0, 0x130(r1)
/* 80242374 0023F2D4  EC 00 18 28 */	fsubs f0, f0, f3
/* 80242378 0023F2D8  EC 64 00 32 */	fmuls f3, f4, f0
/* 8024237C 0023F2DC  48 0D 0E 0D */	bl Translate__12CTransform4fFfff
/* 80242380 0023F2E0  80 BF 00 2C */	lwz r5, 0x2c(r31)
/* 80242384 0023F2E4  38 61 00 98 */	addi r3, r1, 0x98
/* 80242388 0023F2E8  38 81 00 68 */	addi r4, r1, 0x68
/* 8024238C 0023F2EC  38 A5 00 74 */	addi r5, r5, 0x74
/* 80242390 0023F2F0  48 0D 05 C1 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 80242394 0023F2F4  83 DF 00 2C */	lwz r30, 0x2c(r31)
/* 80242398 0023F2F8  38 81 00 98 */	addi r4, r1, 0x98
/* 8024239C 0023F2FC  38 7E 00 04 */	addi r3, r30, 4
/* 802423A0 0023F300  48 0D 07 A1 */	bl __as__12CTransform4fFRC12CTransform4f
/* 802423A4 0023F304  7F C3 F3 78 */	mr r3, r30
/* 802423A8 0023F308  48 08 24 41 */	bl RecalculateTransforms__10CGuiObjectFv
/* 802423AC 0023F30C  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 802423B0 0023F310  7F E3 FB 78 */	mr r3, r31
/* 802423B4 0023F314  4B FF F7 D5 */	bl SetTableColors__21SOptionsFrontEndFrameFP14CGuiTableGroup
/* 802423B8 0023F318  48 00 00 A8 */	b lbl_80242460
lbl_802423BC:
/* 802423BC 0023F31C  80 7E 00 00 */	lwz r3, 0(r30)
/* 802423C0 0023F320  48 00 1F 25 */	bl GetOption__11CGameOptionF11EGameOption
/* 802423C4 0023F324  80 BF 00 30 */	lwz r5, 0x30(r31)
/* 802423C8 0023F328  38 80 00 01 */	li r4, 1
/* 802423CC 0023F32C  80 05 00 C4 */	lwz r0, 0xc4(r5)
/* 802423D0 0023F330  90 05 00 C8 */	stw r0, 0xc8(r5)
/* 802423D4 0023F334  90 65 00 C4 */	stw r3, 0xc4(r5)
/* 802423D8 0023F338  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 802423DC 0023F33C  48 08 82 51 */	bl SetIsVisible__10CGuiWidgetFb
/* 802423E0 0023F340  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 802423E4 0023F344  38 80 00 01 */	li r4, 1
/* 802423E8 0023F348  48 08 81 FD */	bl SetIsActive__10CGuiWidgetFb
/* 802423EC 0023F34C  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 802423F0 0023F350  3C 00 43 30 */	lis r0, 0x4330
/* 802423F4 0023F354  C0 22 B8 10 */	lfs f1, lbl_805AD530@sda21(r2)
/* 802423F8 0023F358  38 61 00 08 */	addi r3, r1, 8
/* 802423FC 0023F35C  80 84 00 C4 */	lwz r4, 0xc4(r4)
/* 80242400 0023F360  90 01 01 30 */	stw r0, 0x130(r1)
/* 80242404 0023F364  FC 40 08 90 */	fmr f2, f1
/* 80242408 0023F368  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8024240C 0023F36C  C8 62 B8 18 */	lfd f3, lbl_805AD538@sda21(r2)
/* 80242410 0023F370  90 01 01 34 */	stw r0, 0x134(r1)
/* 80242414 0023F374  C0 9F 00 38 */	lfs f4, 0x38(r31)
/* 80242418 0023F378  C8 01 01 30 */	lfd f0, 0x130(r1)
/* 8024241C 0023F37C  EC 00 18 28 */	fsubs f0, f0, f3
/* 80242420 0023F380  EC 64 00 32 */	fmuls f3, f4, f0
/* 80242424 0023F384  48 0D 0D 65 */	bl Translate__12CTransform4fFfff
/* 80242428 0023F388  80 BF 00 30 */	lwz r5, 0x30(r31)
/* 8024242C 0023F38C  38 61 00 38 */	addi r3, r1, 0x38
/* 80242430 0023F390  38 81 00 08 */	addi r4, r1, 8
/* 80242434 0023F394  38 A5 00 74 */	addi r5, r5, 0x74
/* 80242438 0023F398  48 0D 05 19 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 8024243C 0023F39C  83 DF 00 30 */	lwz r30, 0x30(r31)
/* 80242440 0023F3A0  38 81 00 38 */	addi r4, r1, 0x38
/* 80242444 0023F3A4  38 7E 00 04 */	addi r3, r30, 4
/* 80242448 0023F3A8  48 0D 06 F9 */	bl __as__12CTransform4fFRC12CTransform4f
/* 8024244C 0023F3AC  7F C3 F3 78 */	mr r3, r30
/* 80242450 0023F3B0  48 08 23 99 */	bl RecalculateTransforms__10CGuiObjectFv
/* 80242454 0023F3B4  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 80242458 0023F3B8  7F E3 FB 78 */	mr r3, r31
/* 8024245C 0023F3BC  4B FF F7 2D */	bl SetTableColors__21SOptionsFrontEndFrameFP14CGuiTableGroup
lbl_80242460:
/* 80242460 0023F3C0  80 01 01 44 */	lwz r0, 0x144(r1)
/* 80242464 0023F3C4  83 E1 01 3C */	lwz r31, 0x13c(r1)
/* 80242468 0023F3C8  83 C1 01 38 */	lwz r30, 0x138(r1)
/* 8024246C 0023F3CC  7C 08 03 A6 */	mtlr r0
/* 80242470 0023F3D0  38 21 01 40 */	addi r1, r1, 0x140
/* 80242474 0023F3D4  4E 80 00 20 */	blr

.global SetRightUIText__21SOptionsFrontEndFrameFv
SetRightUIText__21SOptionsFrontEndFrameFv:
/* 80242478 0023F3D8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8024247C 0023F3DC  7C 08 02 A6 */	mflr r0
/* 80242480 0023F3E0  3C 80 80 3F */	lis r4, lbl_803E8720@ha
/* 80242484 0023F3E4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80242488 0023F3E8  38 04 87 20 */	addi r0, r4, lbl_803E8720@l
/* 8024248C 0023F3EC  BF 61 00 2C */	stmw r27, 0x2c(r1)
/* 80242490 0023F3F0  7C 7E 1B 78 */	mr r30, r3
/* 80242494 0023F3F4  3B E0 00 00 */	li r31, 0
/* 80242498 0023F3F8  3B 80 00 00 */	li r28, 0
/* 8024249C 0023F3FC  80 A3 00 24 */	lwz r5, 0x24(r3)
/* 802424A0 0023F400  3C 60 80 3D */	lis r3, lbl_803D45B4@ha
/* 802424A4 0023F404  3B A3 45 B4 */	addi r29, r3, lbl_803D45B4@l
/* 802424A8 0023F408  80 85 00 C4 */	lwz r4, 0xc4(r5)
/* 802424AC 0023F40C  54 83 18 38 */	slwi r3, r4, 3
/* 802424B0 0023F410  7F 60 1A 14 */	add r27, r0, r3
lbl_802424B4:
/* 802424B4 0023F414  7F A4 EB 78 */	mr r4, r29
/* 802424B8 0023F418  7F E5 FB 78 */	mr r5, r31
/* 802424BC 0023F41C  38 61 00 08 */	addi r3, r1, 8
/* 802424C0 0023F420  4C C6 31 82 */	crclr 6
/* 802424C4 0023F424  48 14 B8 19 */	bl sprintf
/* 802424C8 0023F428  80 1B 00 00 */	lwz r0, 0(r27)
/* 802424CC 0023F42C  7C 1F 00 00 */	cmpw r31, r0
/* 802424D0 0023F430  40 80 00 54 */	bge lbl_80242524
/* 802424D4 0023F434  80 9B 00 04 */	lwz r4, 4(r27)
/* 802424D8 0023F438  38 1C 00 04 */	addi r0, r28, 4
/* 802424DC 0023F43C  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 802424E0 0023F440  7C 84 00 2E */	lwzx r4, r4, r0
/* 802424E4 0023F444  48 11 42 19 */	bl GetString__12CStringTableCFi
/* 802424E8 0023F448  7C 65 1B 78 */	mr r5, r3
/* 802424EC 0023F44C  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 802424F0 0023F450  38 81 00 08 */	addi r4, r1, 8
/* 802424F4 0023F454  48 00 1E DD */	bl sub_802443d0
/* 802424F8 0023F458  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 802424FC 0023F45C  7F E4 FB 78 */	mr r4, r31
/* 80242500 0023F460  81 83 00 00 */	lwz r12, 0(r3)
/* 80242504 0023F464  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80242508 0023F468  7D 89 03 A6 */	mtctr r12
/* 8024250C 0023F46C  4E 80 04 21 */	bctrl
/* 80242510 0023F470  88 03 00 B6 */	lbz r0, 0xb6(r3)
/* 80242514 0023F474  38 80 00 01 */	li r4, 1
/* 80242518 0023F478  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 8024251C 0023F47C  98 03 00 B6 */	stb r0, 0xb6(r3)
/* 80242520 0023F480  48 00 00 3C */	b lbl_8024255C
lbl_80242524:
/* 80242524 0023F484  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 80242528 0023F488  38 81 00 08 */	addi r4, r1, 8
/* 8024252C 0023F48C  38 AD 96 DC */	addi r5, r13, lbl_805A829C@sda21
/* 80242530 0023F490  48 00 1E A1 */	bl sub_802443d0
/* 80242534 0023F494  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80242538 0023F498  7F E4 FB 78 */	mr r4, r31
/* 8024253C 0023F49C  81 83 00 00 */	lwz r12, 0(r3)
/* 80242540 0023F4A0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80242544 0023F4A4  7D 89 03 A6 */	mtctr r12
/* 80242548 0023F4A8  4E 80 04 21 */	bctrl
/* 8024254C 0023F4AC  88 03 00 B6 */	lbz r0, 0xb6(r3)
/* 80242550 0023F4B0  38 80 00 00 */	li r4, 0
/* 80242554 0023F4B4  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 80242558 0023F4B8  98 03 00 B6 */	stb r0, 0xb6(r3)
lbl_8024255C:
/* 8024255C 0023F4BC  3B FF 00 01 */	addi r31, r31, 1
/* 80242560 0023F4C0  3B 9C 00 18 */	addi r28, r28, 0x18
/* 80242564 0023F4C4  2C 1F 00 05 */	cmpwi r31, 5
/* 80242568 0023F4C8  41 80 FF 4C */	blt lbl_802424B4
/* 8024256C 0023F4CC  BB 61 00 2C */	lmw r27, 0x2c(r1)
/* 80242570 0023F4D0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80242574 0023F4D4  7C 08 03 A6 */	mtlr r0
/* 80242578 0023F4D8  38 21 00 40 */	addi r1, r1, 0x40
/* 8024257C 0023F4DC  4E 80 00 20 */	blr

.global FinishedLoading__21SOptionsFrontEndFrameFv
FinishedLoading__21SOptionsFrontEndFrameFv:
/* 80242580 0023F4E0  94 21 FD D0 */	stwu r1, -0x230(r1)
/* 80242584 0023F4E4  7C 08 02 A6 */	mflr r0
/* 80242588 0023F4E8  90 01 02 34 */	stw r0, 0x234(r1)
/* 8024258C 0023F4EC  DB E1 02 20 */	stfd f31, 0x220(r1)
/* 80242590 0023F4F0  F3 E1 02 28 */	psq_st f31, 552(r1), 0, qr0
/* 80242594 0023F4F4  93 E1 02 1C */	stw r31, 0x21c(r1)
/* 80242598 0023F4F8  93 C1 02 18 */	stw r30, 0x218(r1)
/* 8024259C 0023F4FC  93 A1 02 14 */	stw r29, 0x214(r1)
/* 802425A0 0023F500  7C 7E 1B 78 */	mr r30, r3
/* 802425A4 0023F504  3C 60 80 3D */	lis r3, lbl_803D45B4@ha
/* 802425A8 0023F508  38 83 45 B4 */	addi r4, r3, lbl_803D45B4@l
/* 802425AC 0023F50C  3C A0 80 3F */	lis r5, lbl_803E8708@ha
/* 802425B0 0023F510  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 802425B4 0023F514  3B E5 87 08 */	addi r31, r5, lbl_803E8708@l
/* 802425B8 0023F518  38 84 00 11 */	addi r4, r4, 0x11
/* 802425BC 0023F51C  48 07 FB 99 */	bl FindWidget__9CGuiFrameCFPCc
/* 802425C0 0023F520  90 7E 00 24 */	stw r3, 0x24(r30)
/* 802425C4 0023F524  3C 60 80 3D */	lis r3, lbl_803D45B4@ha
/* 802425C8 0023F528  38 83 45 B4 */	addi r4, r3, lbl_803D45B4@l
/* 802425CC 0023F52C  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 802425D0 0023F530  38 84 00 25 */	addi r4, r4, 0x25
/* 802425D4 0023F534  48 07 FB 81 */	bl FindWidget__9CGuiFrameCFPCc
/* 802425D8 0023F538  90 7E 00 28 */	stw r3, 0x28(r30)
/* 802425DC 0023F53C  3C 60 80 3D */	lis r3, lbl_803D45B4@ha
/* 802425E0 0023F540  38 83 45 B4 */	addi r4, r3, lbl_803D45B4@l
/* 802425E4 0023F544  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 802425E8 0023F548  38 84 00 3A */	addi r4, r4, 0x3a
/* 802425EC 0023F54C  48 07 FB 69 */	bl FindWidget__9CGuiFrameCFPCc
/* 802425F0 0023F550  90 7E 00 2C */	stw r3, 0x2c(r30)
/* 802425F4 0023F554  3C 60 80 3D */	lis r3, lbl_803D45B4@ha
/* 802425F8 0023F558  38 83 45 B4 */	addi r4, r3, lbl_803D45B4@l
/* 802425FC 0023F55C  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 80242600 0023F560  38 84 00 4C */	addi r4, r4, 0x4c
/* 80242604 0023F564  48 07 FB 51 */	bl FindWidget__9CGuiFrameCFPCc
/* 80242608 0023F568  90 7E 00 30 */	stw r3, 0x30(r30)
/* 8024260C 0023F56C  3C 60 80 3D */	lis r3, lbl_803D45B4@ha
/* 80242610 0023F570  38 83 45 B4 */	addi r4, r3, lbl_803D45B4@l
/* 80242614 0023F574  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 80242618 0023F578  38 84 00 5E */	addi r4, r4, 0x5e
/* 8024261C 0023F57C  48 07 FB 39 */	bl FindWidget__9CGuiFrameCFPCc
/* 80242620 0023F580  90 7E 00 34 */	stw r3, 0x34(r30)
/* 80242624 0023F584  38 61 00 68 */	addi r3, r1, 0x68
/* 80242628 0023F588  38 81 01 0C */	addi r4, r1, 0x10c
/* 8024262C 0023F58C  38 A0 00 0C */	li r5, 0xc
/* 80242630 0023F590  80 FF 00 64 */	lwz r7, 0x64(r31)
/* 80242634 0023F594  80 DF 00 68 */	lwz r6, 0x68(r31)
/* 80242638 0023F598  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 8024263C 0023F59C  90 E1 01 0C */	stw r7, 0x10c(r1)
/* 80242640 0023F5A0  90 C1 01 10 */	stw r6, 0x110(r1)
/* 80242644 0023F5A4  90 01 01 14 */	stw r0, 0x114(r1)
/* 80242648 0023F5A8  4B DC 0E 49 */	bl memcpy
/* 8024264C 0023F5AC  3C 60 80 24 */	lis r3, sub_80242c80@ha
/* 80242650 0023F5B0  93 C1 01 DC */	stw r30, 0x1dc(r1)
/* 80242654 0023F5B4  38 03 2C 80 */	addi r0, r3, sub_80242c80@l
/* 80242658 0023F5B8  38 61 01 E0 */	addi r3, r1, 0x1e0
/* 8024265C 0023F5BC  90 01 01 D8 */	stw r0, 0x1d8(r1)
/* 80242660 0023F5C0  38 81 00 68 */	addi r4, r1, 0x68
/* 80242664 0023F5C4  38 A0 00 0C */	li r5, 0xc
/* 80242668 0023F5C8  4B DC 0E 29 */	bl memcpy
/* 8024266C 0023F5CC  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 80242670 0023F5D0  38 81 01 D8 */	addi r4, r1, 0x1d8
/* 80242674 0023F5D4  48 08 41 E5 */	bl "SetMenuAdvanceCallback__14CGuiTableGroupFRC29TFunctor1<CP14CGuiTableGroup>"
/* 80242678 0023F5D8  80 FF 00 70 */	lwz r7, 0x70(r31)
/* 8024267C 0023F5DC  38 61 00 5C */	addi r3, r1, 0x5c
/* 80242680 0023F5E0  80 DF 00 74 */	lwz r6, 0x74(r31)
/* 80242684 0023F5E4  38 81 01 00 */	addi r4, r1, 0x100
/* 80242688 0023F5E8  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 8024268C 0023F5EC  38 A0 00 0C */	li r5, 0xc
/* 80242690 0023F5F0  90 E1 01 00 */	stw r7, 0x100(r1)
/* 80242694 0023F5F4  90 C1 01 04 */	stw r6, 0x104(r1)
/* 80242698 0023F5F8  90 01 01 08 */	stw r0, 0x108(r1)
/* 8024269C 0023F5FC  4B DC 0D F5 */	bl memcpy
/* 802426A0 0023F600  3C 60 80 24 */	lis r3, sub_80242c1c@ha
/* 802426A4 0023F604  93 C1 01 C4 */	stw r30, 0x1c4(r1)
/* 802426A8 0023F608  38 03 2C 1C */	addi r0, r3, sub_80242c1c@l
/* 802426AC 0023F60C  38 61 01 C8 */	addi r3, r1, 0x1c8
/* 802426B0 0023F610  90 01 01 C0 */	stw r0, 0x1c0(r1)
/* 802426B4 0023F614  38 81 00 5C */	addi r4, r1, 0x5c
/* 802426B8 0023F618  38 A0 00 0C */	li r5, 0xc
/* 802426BC 0023F61C  4B DC 0D D5 */	bl memcpy
/* 802426C0 0023F620  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 802426C4 0023F624  38 81 01 C0 */	addi r4, r1, 0x1c0
/* 802426C8 0023F628  48 08 41 29 */	bl "SetMenuSelectionChangeCallback__14CGuiTableGroupFRC35TFunctor3<CP14CGuiTableGroup,Ci,Ci>"
/* 802426CC 0023F62C  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 802426D0 0023F630  38 80 00 00 */	li r4, 0
/* 802426D4 0023F634  81 83 00 00 */	lwz r12, 0(r3)
/* 802426D8 0023F638  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802426DC 0023F63C  7D 89 03 A6 */	mtctr r12
/* 802426E0 0023F640  4E 80 04 21 */	bctrl
/* 802426E4 0023F644  7C 64 1B 78 */	mr r4, r3
/* 802426E8 0023F648  38 61 00 E8 */	addi r3, r1, 0xe8
/* 802426EC 0023F64C  48 08 7F C1 */	bl GetIdlePosition__10CGuiWidgetFv
/* 802426F0 0023F650  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 802426F4 0023F654  38 80 00 01 */	li r4, 1
/* 802426F8 0023F658  C3 E1 00 F0 */	lfs f31, 0xf0(r1)
/* 802426FC 0023F65C  81 83 00 00 */	lwz r12, 0(r3)
/* 80242700 0023F660  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80242704 0023F664  7D 89 03 A6 */	mtctr r12
/* 80242708 0023F668  4E 80 04 21 */	bctrl
/* 8024270C 0023F66C  7C 64 1B 78 */	mr r4, r3
/* 80242710 0023F670  38 61 00 F4 */	addi r3, r1, 0xf4
/* 80242714 0023F674  48 08 7F 99 */	bl GetIdlePosition__10CGuiWidgetFv
/* 80242718 0023F678  C0 01 00 FC */	lfs f0, 0xfc(r1)
/* 8024271C 0023F67C  38 61 00 50 */	addi r3, r1, 0x50
/* 80242720 0023F680  38 81 00 DC */	addi r4, r1, 0xdc
/* 80242724 0023F684  38 A0 00 0C */	li r5, 0xc
/* 80242728 0023F688  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8024272C 0023F68C  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 80242730 0023F690  80 FF 00 7C */	lwz r7, 0x7c(r31)
/* 80242734 0023F694  80 DF 00 80 */	lwz r6, 0x80(r31)
/* 80242738 0023F698  80 1F 00 84 */	lwz r0, 0x84(r31)
/* 8024273C 0023F69C  90 E1 00 DC */	stw r7, 0xdc(r1)
/* 80242740 0023F6A0  90 C1 00 E0 */	stw r6, 0xe0(r1)
/* 80242744 0023F6A4  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80242748 0023F6A8  4B DC 0D 49 */	bl memcpy
/* 8024274C 0023F6AC  3C 60 80 24 */	lis r3, sub_80242c1c@ha
/* 80242750 0023F6B0  93 C1 01 AC */	stw r30, 0x1ac(r1)
/* 80242754 0023F6B4  38 03 2C 1C */	addi r0, r3, sub_80242c1c@l
/* 80242758 0023F6B8  38 61 01 B0 */	addi r3, r1, 0x1b0
/* 8024275C 0023F6BC  90 01 01 A8 */	stw r0, 0x1a8(r1)
/* 80242760 0023F6C0  38 81 00 50 */	addi r4, r1, 0x50
/* 80242764 0023F6C4  38 A0 00 0C */	li r5, 0xc
/* 80242768 0023F6C8  4B DC 0D 29 */	bl memcpy
/* 8024276C 0023F6CC  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80242770 0023F6D0  38 81 01 A8 */	addi r4, r1, 0x1a8
/* 80242774 0023F6D4  48 08 40 7D */	bl "SetMenuSelectionChangeCallback__14CGuiTableGroupFRC35TFunctor3<CP14CGuiTableGroup,Ci,Ci>"
/* 80242778 0023F6D8  80 FF 00 88 */	lwz r7, 0x88(r31)
/* 8024277C 0023F6DC  38 61 00 44 */	addi r3, r1, 0x44
/* 80242780 0023F6E0  80 DF 00 8C */	lwz r6, 0x8c(r31)
/* 80242784 0023F6E4  38 81 00 D0 */	addi r4, r1, 0xd0
/* 80242788 0023F6E8  80 1F 00 90 */	lwz r0, 0x90(r31)
/* 8024278C 0023F6EC  38 A0 00 0C */	li r5, 0xc
/* 80242790 0023F6F0  90 E1 00 D0 */	stw r7, 0xd0(r1)
/* 80242794 0023F6F4  90 C1 00 D4 */	stw r6, 0xd4(r1)
/* 80242798 0023F6F8  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 8024279C 0023F6FC  4B DC 0C F5 */	bl memcpy
/* 802427A0 0023F700  3C 60 80 24 */	lis r3, sub_80242c80@ha
/* 802427A4 0023F704  93 C1 01 94 */	stw r30, 0x194(r1)
/* 802427A8 0023F708  38 03 2C 80 */	addi r0, r3, sub_80242c80@l
/* 802427AC 0023F70C  38 61 01 98 */	addi r3, r1, 0x198
/* 802427B0 0023F710  90 01 01 90 */	stw r0, 0x190(r1)
/* 802427B4 0023F714  38 81 00 44 */	addi r4, r1, 0x44
/* 802427B8 0023F718  38 A0 00 0C */	li r5, 0xc
/* 802427BC 0023F71C  4B DC 0C D5 */	bl memcpy
/* 802427C0 0023F720  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 802427C4 0023F724  38 81 01 90 */	addi r4, r1, 0x190
/* 802427C8 0023F728  48 08 40 5D */	bl "SetMenuCancelCallback__14CGuiTableGroupFRC29TFunctor1<CP14CGuiTableGroup>"
/* 802427CC 0023F72C  80 FF 00 94 */	lwz r7, 0x94(r31)
/* 802427D0 0023F730  38 61 00 38 */	addi r3, r1, 0x38
/* 802427D4 0023F734  80 DF 00 98 */	lwz r6, 0x98(r31)
/* 802427D8 0023F738  38 81 00 C4 */	addi r4, r1, 0xc4
/* 802427DC 0023F73C  80 1F 00 9C */	lwz r0, 0x9c(r31)
/* 802427E0 0023F740  38 A0 00 0C */	li r5, 0xc
/* 802427E4 0023F744  90 E1 00 C4 */	stw r7, 0xc4(r1)
/* 802427E8 0023F748  90 C1 00 C8 */	stw r6, 0xc8(r1)
/* 802427EC 0023F74C  90 01 00 CC */	stw r0, 0xcc(r1)
/* 802427F0 0023F750  4B DC 0C A1 */	bl memcpy
/* 802427F4 0023F754  3C 60 80 24 */	lis r3, sub_80242c1c@ha
/* 802427F8 0023F758  93 C1 01 7C */	stw r30, 0x17c(r1)
/* 802427FC 0023F75C  38 03 2C 1C */	addi r0, r3, sub_80242c1c@l
/* 80242800 0023F760  38 61 01 80 */	addi r3, r1, 0x180
/* 80242804 0023F764  90 01 01 78 */	stw r0, 0x178(r1)
/* 80242808 0023F768  38 81 00 38 */	addi r4, r1, 0x38
/* 8024280C 0023F76C  38 A0 00 0C */	li r5, 0xc
/* 80242810 0023F770  4B DC 0C 81 */	bl memcpy
/* 80242814 0023F774  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 80242818 0023F778  38 81 01 78 */	addi r4, r1, 0x178
/* 8024281C 0023F77C  48 08 3F D5 */	bl "SetMenuSelectionChangeCallback__14CGuiTableGroupFRC35TFunctor3<CP14CGuiTableGroup,Ci,Ci>"
/* 80242820 0023F780  80 FF 00 A0 */	lwz r7, 0xa0(r31)
/* 80242824 0023F784  38 61 00 2C */	addi r3, r1, 0x2c
/* 80242828 0023F788  80 DF 00 A4 */	lwz r6, 0xa4(r31)
/* 8024282C 0023F78C  38 81 00 B8 */	addi r4, r1, 0xb8
/* 80242830 0023F790  80 1F 00 A8 */	lwz r0, 0xa8(r31)
/* 80242834 0023F794  38 A0 00 0C */	li r5, 0xc
/* 80242838 0023F798  90 E1 00 B8 */	stw r7, 0xb8(r1)
/* 8024283C 0023F79C  90 C1 00 BC */	stw r6, 0xbc(r1)
/* 80242840 0023F7A0  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 80242844 0023F7A4  4B DC 0C 4D */	bl memcpy
/* 80242848 0023F7A8  3C 60 80 24 */	lis r3, sub_80242c80@ha
/* 8024284C 0023F7AC  93 C1 01 64 */	stw r30, 0x164(r1)
/* 80242850 0023F7B0  38 03 2C 80 */	addi r0, r3, sub_80242c80@l
/* 80242854 0023F7B4  38 61 01 68 */	addi r3, r1, 0x168
/* 80242858 0023F7B8  90 01 01 60 */	stw r0, 0x160(r1)
/* 8024285C 0023F7BC  38 81 00 2C */	addi r4, r1, 0x2c
/* 80242860 0023F7C0  38 A0 00 0C */	li r5, 0xc
/* 80242864 0023F7C4  4B DC 0C 2D */	bl memcpy
/* 80242868 0023F7C8  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 8024286C 0023F7CC  38 81 01 60 */	addi r4, r1, 0x160
/* 80242870 0023F7D0  48 08 3F B5 */	bl "SetMenuCancelCallback__14CGuiTableGroupFRC29TFunctor1<CP14CGuiTableGroup>"
/* 80242874 0023F7D4  80 FF 00 AC */	lwz r7, 0xac(r31)
/* 80242878 0023F7D8  38 61 00 20 */	addi r3, r1, 0x20
/* 8024287C 0023F7DC  80 DF 00 B0 */	lwz r6, 0xb0(r31)
/* 80242880 0023F7E0  38 81 00 AC */	addi r4, r1, 0xac
/* 80242884 0023F7E4  80 1F 00 B4 */	lwz r0, 0xb4(r31)
/* 80242888 0023F7E8  38 A0 00 0C */	li r5, 0xc
/* 8024288C 0023F7EC  90 E1 00 AC */	stw r7, 0xac(r1)
/* 80242890 0023F7F0  90 C1 00 B0 */	stw r6, 0xb0(r1)
/* 80242894 0023F7F4  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80242898 0023F7F8  4B DC 0B F9 */	bl memcpy
/* 8024289C 0023F7FC  3C 60 80 24 */	lis r3, sub_80242c1c@ha
/* 802428A0 0023F800  93 C1 01 4C */	stw r30, 0x14c(r1)
/* 802428A4 0023F804  38 03 2C 1C */	addi r0, r3, sub_80242c1c@l
/* 802428A8 0023F808  38 61 01 50 */	addi r3, r1, 0x150
/* 802428AC 0023F80C  90 01 01 48 */	stw r0, 0x148(r1)
/* 802428B0 0023F810  38 81 00 20 */	addi r4, r1, 0x20
/* 802428B4 0023F814  38 A0 00 0C */	li r5, 0xc
/* 802428B8 0023F818  4B DC 0B D9 */	bl memcpy
/* 802428BC 0023F81C  80 7E 00 30 */	lwz r3, 0x30(r30)
/* 802428C0 0023F820  38 81 01 48 */	addi r4, r1, 0x148
/* 802428C4 0023F824  48 08 3F 2D */	bl "SetMenuSelectionChangeCallback__14CGuiTableGroupFRC35TFunctor3<CP14CGuiTableGroup,Ci,Ci>"
/* 802428C8 0023F828  80 FF 00 B8 */	lwz r7, 0xb8(r31)
/* 802428CC 0023F82C  38 61 00 14 */	addi r3, r1, 0x14
/* 802428D0 0023F830  80 DF 00 BC */	lwz r6, 0xbc(r31)
/* 802428D4 0023F834  38 81 00 A0 */	addi r4, r1, 0xa0
/* 802428D8 0023F838  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 802428DC 0023F83C  38 A0 00 0C */	li r5, 0xc
/* 802428E0 0023F840  90 E1 00 A0 */	stw r7, 0xa0(r1)
/* 802428E4 0023F844  90 C1 00 A4 */	stw r6, 0xa4(r1)
/* 802428E8 0023F848  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 802428EC 0023F84C  4B DC 0B A5 */	bl memcpy
/* 802428F0 0023F850  3C 60 80 24 */	lis r3, sub_80242c80@ha
/* 802428F4 0023F854  93 C1 01 34 */	stw r30, 0x134(r1)
/* 802428F8 0023F858  38 03 2C 80 */	addi r0, r3, sub_80242c80@l
/* 802428FC 0023F85C  38 61 01 38 */	addi r3, r1, 0x138
/* 80242900 0023F860  90 01 01 30 */	stw r0, 0x130(r1)
/* 80242904 0023F864  38 81 00 14 */	addi r4, r1, 0x14
/* 80242908 0023F868  38 A0 00 0C */	li r5, 0xc
/* 8024290C 0023F86C  4B DC 0B 85 */	bl memcpy
/* 80242910 0023F870  80 7E 00 30 */	lwz r3, 0x30(r30)
/* 80242914 0023F874  38 81 01 30 */	addi r4, r1, 0x130
/* 80242918 0023F878  48 08 3F 0D */	bl "SetMenuCancelCallback__14CGuiTableGroupFRC29TFunctor1<CP14CGuiTableGroup>"
/* 8024291C 0023F87C  80 FF 00 C4 */	lwz r7, 0xc4(r31)
/* 80242920 0023F880  38 61 00 08 */	addi r3, r1, 8
/* 80242924 0023F884  80 DF 00 C8 */	lwz r6, 0xc8(r31)
/* 80242928 0023F888  38 81 00 94 */	addi r4, r1, 0x94
/* 8024292C 0023F88C  80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 80242930 0023F890  38 A0 00 0C */	li r5, 0xc
/* 80242934 0023F894  90 E1 00 94 */	stw r7, 0x94(r1)
/* 80242938 0023F898  90 C1 00 98 */	stw r6, 0x98(r1)
/* 8024293C 0023F89C  90 01 00 9C */	stw r0, 0x9c(r1)
/* 80242940 0023F8A0  4B DC 0B 51 */	bl memcpy
/* 80242944 0023F8A4  3C 60 80 24 */	lis r3, sub_80242bb8@ha
/* 80242948 0023F8A8  93 C1 01 1C */	stw r30, 0x11c(r1)
/* 8024294C 0023F8AC  38 03 2B B8 */	addi r0, r3, sub_80242bb8@l
/* 80242950 0023F8B0  38 61 01 20 */	addi r3, r1, 0x120
/* 80242954 0023F8B4  90 01 01 18 */	stw r0, 0x118(r1)
/* 80242958 0023F8B8  38 81 00 08 */	addi r4, r1, 8
/* 8024295C 0023F8BC  38 A0 00 0C */	li r5, 0xc
/* 80242960 0023F8C0  4B DC 0B 31 */	bl memcpy
/* 80242964 0023F8C4  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 80242968 0023F8C8  38 81 01 18 */	addi r4, r1, 0x118
/* 8024296C 0023F8CC  48 08 32 F5 */	bl "SetSelectionChangedCallback__15CGuiSliderGroupFRC33TFunctor2<CP15CGuiSliderGroup,Cf>"
/* 80242970 0023F8D0  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 80242974 0023F8D4  38 80 00 5F */	li r4, 0x5f
/* 80242978 0023F8D8  48 11 3D 85 */	bl GetString__12CStringTableCFi
/* 8024297C 0023F8DC  3C 80 80 3D */	lis r4, lbl_803D45B4@ha
/* 80242980 0023F8E0  7C 65 1B 78 */	mr r5, r3
/* 80242984 0023F8E4  38 84 45 B4 */	addi r4, r4, lbl_803D45B4@l
/* 80242988 0023F8E8  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8024298C 0023F8EC  38 84 00 71 */	addi r4, r4, 0x71
/* 80242990 0023F8F0  48 00 1A 41 */	bl sub_802443d0
/* 80242994 0023F8F4  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 80242998 0023F8F8  38 80 00 5E */	li r4, 0x5e
/* 8024299C 0023F8FC  48 11 3D 61 */	bl GetString__12CStringTableCFi
/* 802429A0 0023F900  3C 80 80 3D */	lis r4, lbl_803D45B4@ha
/* 802429A4 0023F904  7C 65 1B 78 */	mr r5, r3
/* 802429A8 0023F908  38 84 45 B4 */	addi r4, r4, lbl_803D45B4@l
/* 802429AC 0023F90C  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 802429B0 0023F910  38 84 00 82 */	addi r4, r4, 0x82
/* 802429B4 0023F914  48 00 1A 1D */	bl sub_802443d0
/* 802429B8 0023F918  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 802429BC 0023F91C  38 80 00 60 */	li r4, 0x60
/* 802429C0 0023F920  48 11 3D 3D */	bl GetString__12CStringTableCFi
/* 802429C4 0023F924  3C 80 80 3D */	lis r4, lbl_803D45B4@ha
/* 802429C8 0023F928  7C 65 1B 78 */	mr r5, r3
/* 802429CC 0023F92C  38 84 45 B4 */	addi r4, r4, lbl_803D45B4@l
/* 802429D0 0023F930  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 802429D4 0023F934  38 84 00 93 */	addi r4, r4, 0x93
/* 802429D8 0023F938  48 00 19 F9 */	bl sub_802443d0
/* 802429DC 0023F93C  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 802429E0 0023F940  38 80 00 61 */	li r4, 0x61
/* 802429E4 0023F944  48 11 3D 19 */	bl GetString__12CStringTableCFi
/* 802429E8 0023F948  3C 80 80 3D */	lis r4, lbl_803D45B4@ha
/* 802429EC 0023F94C  7C 65 1B 78 */	mr r5, r3
/* 802429F0 0023F950  38 84 45 B4 */	addi r4, r4, lbl_803D45B4@l
/* 802429F4 0023F954  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 802429F8 0023F958  38 84 00 A4 */	addi r4, r4, 0xa4
/* 802429FC 0023F95C  48 00 19 D5 */	bl sub_802443d0
/* 80242A00 0023F960  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 80242A04 0023F964  38 80 00 62 */	li r4, 0x62
/* 80242A08 0023F968  48 11 3C F5 */	bl GetString__12CStringTableCFi
/* 80242A0C 0023F96C  3C 80 80 3D */	lis r4, lbl_803D45B4@ha
/* 80242A10 0023F970  7C 65 1B 78 */	mr r5, r3
/* 80242A14 0023F974  38 84 45 B4 */	addi r4, r4, lbl_803D45B4@l
/* 80242A18 0023F978  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 80242A1C 0023F97C  38 84 00 B5 */	addi r4, r4, 0xb5
/* 80242A20 0023F980  48 00 19 B1 */	bl sub_802443d0
/* 80242A24 0023F984  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 80242A28 0023F988  38 80 00 63 */	li r4, 0x63
/* 80242A2C 0023F98C  48 11 3C D1 */	bl GetString__12CStringTableCFi
/* 80242A30 0023F990  3C 80 80 3D */	lis r4, lbl_803D45B4@ha
/* 80242A34 0023F994  7C 65 1B 78 */	mr r5, r3
/* 80242A38 0023F998  38 84 45 B4 */	addi r4, r4, lbl_803D45B4@l
/* 80242A3C 0023F99C  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 80242A40 0023F9A0  38 84 00 C6 */	addi r4, r4, 0xc6
/* 80242A44 0023F9A4  48 00 19 8D */	bl sub_802443d0
/* 80242A48 0023F9A8  3C 80 80 3D */	lis r4, lbl_803D45B4@ha
/* 80242A4C 0023F9AC  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 80242A50 0023F9B0  38 84 45 B4 */	addi r4, r4, lbl_803D45B4@l
/* 80242A54 0023F9B4  38 84 00 D5 */	addi r4, r4, 0xd5
/* 80242A58 0023F9B8  48 07 F6 FD */	bl FindWidget__9CGuiFrameCFPCc
/* 80242A5C 0023F9BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80242A60 0023F9C0  41 82 00 34 */	beq lbl_80242A94
/* 80242A64 0023F9C4  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 80242A68 0023F9C8  38 80 00 55 */	li r4, 0x55
/* 80242A6C 0023F9CC  48 11 3C 91 */	bl GetString__12CStringTableCFi
/* 80242A70 0023F9D0  7C 64 1B 78 */	mr r4, r3
/* 80242A74 0023F9D4  38 61 00 84 */	addi r3, r1, 0x84
/* 80242A78 0023F9D8  4B DD 2F 79 */	bl wstring_l__4rstlFPCw
/* 80242A7C 0023F9DC  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 80242A80 0023F9E0  38 81 00 84 */	addi r4, r1, 0x84
/* 80242A84 0023F9E4  38 A0 00 00 */	li r5, 0
/* 80242A88 0023F9E8  48 08 6D FD */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80242A8C 0023F9EC  38 61 00 84 */	addi r3, r1, 0x84
/* 80242A90 0023F9F0  48 0F A6 A5 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
lbl_80242A94:
/* 80242A94 0023F9F4  3C 80 80 3D */	lis r4, lbl_803D45B4@ha
/* 80242A98 0023F9F8  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 80242A9C 0023F9FC  38 84 45 B4 */	addi r4, r4, lbl_803D45B4@l
/* 80242AA0 0023FA00  38 84 00 E6 */	addi r4, r4, 0xe6
/* 80242AA4 0023FA04  48 07 F6 B1 */	bl FindWidget__9CGuiFrameCFPCc
/* 80242AA8 0023FA08  7C 7F 1B 79 */	or. r31, r3, r3
/* 80242AAC 0023FA0C  41 82 00 34 */	beq lbl_80242AE0
/* 80242AB0 0023FA10  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 80242AB4 0023FA14  38 80 00 52 */	li r4, 0x52
/* 80242AB8 0023FA18  48 11 3C 45 */	bl GetString__12CStringTableCFi
/* 80242ABC 0023FA1C  7C 64 1B 78 */	mr r4, r3
/* 80242AC0 0023FA20  38 61 00 74 */	addi r3, r1, 0x74
/* 80242AC4 0023FA24  4B DD 2F 2D */	bl wstring_l__4rstlFPCw
/* 80242AC8 0023FA28  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 80242ACC 0023FA2C  38 81 00 74 */	addi r4, r1, 0x74
/* 80242AD0 0023FA30  38 A0 00 00 */	li r5, 0
/* 80242AD4 0023FA34  48 08 6D B1 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80242AD8 0023FA38  38 61 00 74 */	addi r3, r1, 0x74
/* 80242ADC 0023FA3C  48 0F A6 59 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
lbl_80242AE0:
/* 80242AE0 0023FA40  3C 60 80 3D */	lis r3, lbl_803D45B4@ha
/* 80242AE4 0023FA44  3B A0 00 00 */	li r29, 0
/* 80242AE8 0023FA48  3B E3 45 B4 */	addi r31, r3, lbl_803D45B4@l
lbl_80242AEC:
/* 80242AEC 0023FA4C  7F A5 EB 78 */	mr r5, r29
/* 80242AF0 0023FA50  38 61 01 F0 */	addi r3, r1, 0x1f0
/* 80242AF4 0023FA54  38 9F 00 F6 */	addi r4, r31, 0xf6
/* 80242AF8 0023FA58  4C C6 31 82 */	crclr 6
/* 80242AFC 0023FA5C  48 14 B1 E1 */	bl sprintf
/* 80242B00 0023FA60  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 80242B04 0023FA64  38 9D 00 10 */	addi r4, r29, 0x10
/* 80242B08 0023FA68  48 11 3B F5 */	bl GetString__12CStringTableCFi
/* 80242B0C 0023FA6C  7C 65 1B 78 */	mr r5, r3
/* 80242B10 0023FA70  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 80242B14 0023FA74  38 81 01 F0 */	addi r4, r1, 0x1f0
/* 80242B18 0023FA78  48 00 18 B9 */	bl sub_802443d0
/* 80242B1C 0023FA7C  3B BD 00 01 */	addi r29, r29, 1
/* 80242B20 0023FA80  2C 1D 00 04 */	cmpwi r29, 4
/* 80242B24 0023FA84  41 80 FF C8 */	blt lbl_80242AEC
/* 80242B28 0023FA88  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 80242B2C 0023FA8C  38 00 00 00 */	li r0, 0
/* 80242B30 0023FA90  38 80 00 01 */	li r4, 1
/* 80242B34 0023FA94  98 03 00 D1 */	stb r0, 0xd1(r3)
/* 80242B38 0023FA98  80 7E 00 30 */	lwz r3, 0x30(r30)
/* 80242B3C 0023FA9C  98 03 00 D1 */	stb r0, 0xd1(r3)
/* 80242B40 0023FAA0  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 80242B44 0023FAA4  48 08 7A A1 */	bl SetIsActive__10CGuiWidgetFb
/* 80242B48 0023FAA8  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80242B4C 0023FAAC  38 80 00 00 */	li r4, 0
/* 80242B50 0023FAB0  48 08 7A 95 */	bl SetIsActive__10CGuiWidgetFb
/* 80242B54 0023FAB4  80 9E 00 24 */	lwz r4, 0x24(r30)
/* 80242B58 0023FAB8  7F C3 F3 78 */	mr r3, r30
/* 80242B5C 0023FABC  4B FF F0 2D */	bl SetTableColors__21SOptionsFrontEndFrameFP14CGuiTableGroup
/* 80242B60 0023FAC0  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 80242B64 0023FAC4  7F C3 F3 78 */	mr r3, r30
/* 80242B68 0023FAC8  4B FF F0 21 */	bl SetTableColors__21SOptionsFrontEndFrameFP14CGuiTableGroup
/* 80242B6C 0023FACC  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 80242B70 0023FAD0  7F C3 F3 78 */	mr r3, r30
/* 80242B74 0023FAD4  4B FF F0 15 */	bl SetTableColors__21SOptionsFrontEndFrameFP14CGuiTableGroup
/* 80242B78 0023FAD8  80 9E 00 30 */	lwz r4, 0x30(r30)
/* 80242B7C 0023FADC  7F C3 F3 78 */	mr r3, r30
/* 80242B80 0023FAE0  4B FF F0 09 */	bl SetTableColors__21SOptionsFrontEndFrameFP14CGuiTableGroup
/* 80242B84 0023FAE4  7F C3 F3 78 */	mr r3, r30
/* 80242B88 0023FAE8  4B FF F8 F1 */	bl SetRightUIText__21SOptionsFrontEndFrameFv
/* 80242B8C 0023FAEC  7F C3 F3 78 */	mr r3, r30
/* 80242B90 0023FAF0  4B FF F5 C1 */	bl DeactivateRightMenu__21SOptionsFrontEndFrameFv
/* 80242B94 0023FAF4  E3 E1 02 28 */	psq_l f31, 552(r1), 0, qr0
/* 80242B98 0023FAF8  80 01 02 34 */	lwz r0, 0x234(r1)
/* 80242B9C 0023FAFC  CB E1 02 20 */	lfd f31, 0x220(r1)
/* 80242BA0 0023FB00  83 E1 02 1C */	lwz r31, 0x21c(r1)
/* 80242BA4 0023FB04  83 C1 02 18 */	lwz r30, 0x218(r1)
/* 80242BA8 0023FB08  83 A1 02 14 */	lwz r29, 0x214(r1)
/* 80242BAC 0023FB0C  7C 08 03 A6 */	mtlr r0
/* 80242BB0 0023FB10  38 21 02 30 */	addi r1, r1, 0x230
/* 80242BB4 0023FB14  4E 80 00 20 */	blr

.global sub_80242bb8
sub_80242bb8:
/* 80242BB8 0023FB18  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80242BBC 0023FB1C  7C 08 02 A6 */	mflr r0
/* 80242BC0 0023FB20  90 01 00 34 */	stw r0, 0x34(r1)
/* 80242BC4 0023FB24  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 80242BC8 0023FB28  FF E0 08 90 */	fmr f31, f1
/* 80242BCC 0023FB2C  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80242BD0 0023FB30  7C BF 2B 78 */	mr r31, r5
/* 80242BD4 0023FB34  38 A0 00 0C */	li r5, 0xc
/* 80242BD8 0023FB38  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80242BDC 0023FB3C  7C 7E 1B 78 */	mr r30, r3
/* 80242BE0 0023FB40  38 61 00 08 */	addi r3, r1, 8
/* 80242BE4 0023FB44  4B DC 08 AD */	bl memcpy
/* 80242BE8 0023FB48  FC 20 F8 90 */	fmr f1, f31
/* 80242BEC 0023FB4C  7F C3 F3 78 */	mr r3, r30
/* 80242BF0 0023FB50  7F E4 FB 78 */	mr r4, r31
/* 80242BF4 0023FB54  39 81 00 08 */	addi r12, r1, 8
/* 80242BF8 0023FB58  48 14 6D 35 */	bl __ptmf_scall
/* 80242BFC 0023FB5C  60 00 00 00 */	nop
/* 80242C00 0023FB60  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80242C04 0023FB64  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 80242C08 0023FB68  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80242C0C 0023FB6C  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80242C10 0023FB70  7C 08 03 A6 */	mtlr r0
/* 80242C14 0023FB74  38 21 00 30 */	addi r1, r1, 0x30
/* 80242C18 0023FB78  4E 80 00 20 */	blr

.global sub_80242c1c
sub_80242c1c:
/* 80242C1C 0023FB7C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80242C20 0023FB80  7C 08 02 A6 */	mflr r0
/* 80242C24 0023FB84  90 01 00 34 */	stw r0, 0x34(r1)
/* 80242C28 0023FB88  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80242C2C 0023FB8C  7C DF 33 78 */	mr r31, r6
/* 80242C30 0023FB90  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80242C34 0023FB94  7C BE 2B 78 */	mr r30, r5
/* 80242C38 0023FB98  38 A0 00 0C */	li r5, 0xc
/* 80242C3C 0023FB9C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80242C40 0023FBA0  7C 7D 1B 78 */	mr r29, r3
/* 80242C44 0023FBA4  38 61 00 08 */	addi r3, r1, 8
/* 80242C48 0023FBA8  4B DC 08 49 */	bl memcpy
/* 80242C4C 0023FBAC  7F A3 EB 78 */	mr r3, r29
/* 80242C50 0023FBB0  7F C4 F3 78 */	mr r4, r30
/* 80242C54 0023FBB4  7F E5 FB 78 */	mr r5, r31
/* 80242C58 0023FBB8  39 81 00 08 */	addi r12, r1, 8
/* 80242C5C 0023FBBC  48 14 6C D1 */	bl __ptmf_scall
/* 80242C60 0023FBC0  60 00 00 00 */	nop
/* 80242C64 0023FBC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80242C68 0023FBC8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80242C6C 0023FBCC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80242C70 0023FBD0  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80242C74 0023FBD4  7C 08 03 A6 */	mtlr r0
/* 80242C78 0023FBD8  38 21 00 30 */	addi r1, r1, 0x30
/* 80242C7C 0023FBDC  4E 80 00 20 */	blr

.global sub_80242c80
sub_80242c80:
/* 80242C80 0023FBE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80242C84 0023FBE4  7C 08 02 A6 */	mflr r0
/* 80242C88 0023FBE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80242C8C 0023FBEC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80242C90 0023FBF0  7C BF 2B 78 */	mr r31, r5
/* 80242C94 0023FBF4  38 A0 00 0C */	li r5, 0xc
/* 80242C98 0023FBF8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80242C9C 0023FBFC  7C 7E 1B 78 */	mr r30, r3
/* 80242CA0 0023FC00  38 61 00 08 */	addi r3, r1, 8
/* 80242CA4 0023FC04  4B DC 07 ED */	bl memcpy
/* 80242CA8 0023FC08  7F C3 F3 78 */	mr r3, r30
/* 80242CAC 0023FC0C  7F E4 FB 78 */	mr r4, r31
/* 80242CB0 0023FC10  39 81 00 08 */	addi r12, r1, 8
/* 80242CB4 0023FC14  48 14 6C 79 */	bl __ptmf_scall
/* 80242CB8 0023FC18  60 00 00 00 */	nop
/* 80242CBC 0023FC1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80242CC0 0023FC20  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80242CC4 0023FC24  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80242CC8 0023FC28  7C 08 03 A6 */	mtlr r0
/* 80242CCC 0023FC2C  38 21 00 20 */	addi r1, r1, 0x20
/* 80242CD0 0023FC30  4E 80 00 20 */	blr

.global PumpLoad__21SOptionsFrontEndFrameFv
PumpLoad__21SOptionsFrontEndFrameFv:
/* 80242CD4 0023FC34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80242CD8 0023FC38  7C 08 02 A6 */	mflr r0
/* 80242CDC 0023FC3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80242CE0 0023FC40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80242CE4 0023FC44  7C 7F 1B 78 */	mr r31, r3
/* 80242CE8 0023FC48  93 C1 00 08 */	stw r30, 8(r1)
/* 80242CEC 0023FC4C  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80242CF0 0023FC50  28 00 00 00 */	cmplwi r0, 0
/* 80242CF4 0023FC54  41 82 00 0C */	beq lbl_80242D00
/* 80242CF8 0023FC58  38 60 00 01 */	li r3, 1
/* 80242CFC 0023FC5C  48 00 00 E0 */	b lbl_80242DDC
lbl_80242D00:
/* 80242D00 0023FC60  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80242D04 0023FC64  28 00 00 00 */	cmplwi r0, 0
/* 80242D08 0023FC68  41 82 00 0C */	beq lbl_80242D14
/* 80242D0C 0023FC6C  38 60 00 01 */	li r3, 1
/* 80242D10 0023FC70  48 00 00 3C */	b lbl_80242D4C
lbl_80242D14:
/* 80242D14 0023FC74  88 1F 00 08 */	lbz r0, 8(r31)
/* 80242D18 0023FC78  28 00 00 00 */	cmplwi r0, 0
/* 80242D1C 0023FC7C  41 82 00 2C */	beq lbl_80242D48
/* 80242D20 0023FC80  80 7F 00 04 */	lwz r3, 4(r31)
/* 80242D24 0023FC84  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80242D28 0023FC88  28 00 00 00 */	cmplwi r0, 0
/* 80242D2C 0023FC8C  41 82 00 1C */	beq lbl_80242D48
/* 80242D30 0023FC90  38 7F 00 04 */	addi r3, r31, 4
/* 80242D34 0023FC94  48 0F E0 D9 */	bl GetObj__6CTokenFv
/* 80242D38 0023FC98  80 03 00 04 */	lwz r0, 4(r3)
/* 80242D3C 0023FC9C  38 60 00 01 */	li r3, 1
/* 80242D40 0023FCA0  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80242D44 0023FCA4  48 00 00 08 */	b lbl_80242D4C
lbl_80242D48:
/* 80242D48 0023FCA8  38 60 00 00 */	li r3, 0
lbl_80242D4C:
/* 80242D4C 0023FCAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80242D50 0023FCB0  41 82 00 88 */	beq lbl_80242DD8
/* 80242D54 0023FCB4  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 80242D58 0023FCB8  28 00 00 00 */	cmplwi r0, 0
/* 80242D5C 0023FCBC  41 82 00 0C */	beq lbl_80242D68
/* 80242D60 0023FCC0  38 60 00 01 */	li r3, 1
/* 80242D64 0023FCC4  48 00 00 3C */	b lbl_80242DA0
lbl_80242D68:
/* 80242D68 0023FCC8  88 1F 00 14 */	lbz r0, 0x14(r31)
/* 80242D6C 0023FCCC  28 00 00 00 */	cmplwi r0, 0
/* 80242D70 0023FCD0  41 82 00 2C */	beq lbl_80242D9C
/* 80242D74 0023FCD4  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80242D78 0023FCD8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80242D7C 0023FCDC  28 00 00 00 */	cmplwi r0, 0
/* 80242D80 0023FCE0  41 82 00 1C */	beq lbl_80242D9C
/* 80242D84 0023FCE4  38 7F 00 10 */	addi r3, r31, 0x10
/* 80242D88 0023FCE8  48 0F E0 85 */	bl GetObj__6CTokenFv
/* 80242D8C 0023FCEC  80 03 00 04 */	lwz r0, 4(r3)
/* 80242D90 0023FCF0  38 60 00 01 */	li r3, 1
/* 80242D94 0023FCF4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80242D98 0023FCF8  48 00 00 08 */	b lbl_80242DA0
lbl_80242D9C:
/* 80242D9C 0023FCFC  38 60 00 00 */	li r3, 0
lbl_80242DA0:
/* 80242DA0 0023FD00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80242DA4 0023FD04  41 82 00 34 */	beq lbl_80242DD8
/* 80242DA8 0023FD08  83 DF 00 0C */	lwz r30, 0xc(r31)
/* 80242DAC 0023FD0C  7F C3 F3 78 */	mr r3, r30
/* 80242DB0 0023FD10  48 07 F7 A1 */	bl GetIsFinishedLoading__9CGuiFrameCFv
/* 80242DB4 0023FD14  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80242DB8 0023FD18  41 82 00 20 */	beq lbl_80242DD8
/* 80242DBC 0023FD1C  93 DF 00 1C */	stw r30, 0x1c(r31)
/* 80242DC0 0023FD20  7F E3 FB 78 */	mr r3, r31
/* 80242DC4 0023FD24  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 80242DC8 0023FD28  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80242DCC 0023FD2C  4B FF F7 B5 */	bl FinishedLoading__21SOptionsFrontEndFrameFv
/* 80242DD0 0023FD30  38 60 00 01 */	li r3, 1
/* 80242DD4 0023FD34  48 00 00 08 */	b lbl_80242DDC
lbl_80242DD8:
/* 80242DD8 0023FD38  38 60 00 00 */	li r3, 0
lbl_80242DDC:
/* 80242DDC 0023FD3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80242DE0 0023FD40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80242DE4 0023FD44  83 C1 00 08 */	lwz r30, 8(r1)
/* 80242DE8 0023FD48  7C 08 03 A6 */	mtlr r0
/* 80242DEC 0023FD4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80242DF0 0023FD50  4E 80 00 20 */	blr

.global __dt__21SOptionsFrontEndFrameFv
__dt__21SOptionsFrontEndFrameFv:
/* 80242DF4 0023FD54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80242DF8 0023FD58  7C 08 02 A6 */	mflr r0
/* 80242DFC 0023FD5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80242E00 0023FD60  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80242E04 0023FD64  7C 9F 23 78 */	mr r31, r4
/* 80242E08 0023FD68  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80242E0C 0023FD6C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80242E10 0023FD70  41 82 00 68 */	beq lbl_80242E78
/* 80242E14 0023FD74  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 80242E18 0023FD78  38 61 00 08 */	addi r3, r1, 8
/* 80242E1C 0023FD7C  90 01 00 08 */	stw r0, 8(r1)
/* 80242E20 0023FD80  48 0A 6F 29 */	bl SfxStop__11CSfxManagerFRC10CSfxHandle
/* 80242E24 0023FD84  38 7E 00 40 */	addi r3, r30, 0x40
/* 80242E28 0023FD88  38 80 FF FF */	li r4, -1
/* 80242E2C 0023FD8C  48 12 71 C9 */	bl __dt__16CRumbleGeneratorFv
/* 80242E30 0023FD90  34 1E 00 10 */	addic. r0, r30, 0x10
/* 80242E34 0023FD94  41 82 00 18 */	beq lbl_80242E4C
/* 80242E38 0023FD98  34 1E 00 10 */	addic. r0, r30, 0x10
/* 80242E3C 0023FD9C  41 82 00 10 */	beq lbl_80242E4C
/* 80242E40 0023FDA0  38 7E 00 10 */	addi r3, r30, 0x10
/* 80242E44 0023FDA4  38 80 00 00 */	li r4, 0
/* 80242E48 0023FDA8  48 0F DF F9 */	bl __dt__6CTokenFv
lbl_80242E4C:
/* 80242E4C 0023FDAC  34 1E 00 04 */	addic. r0, r30, 4
/* 80242E50 0023FDB0  41 82 00 18 */	beq lbl_80242E68
/* 80242E54 0023FDB4  34 1E 00 04 */	addic. r0, r30, 4
/* 80242E58 0023FDB8  41 82 00 10 */	beq lbl_80242E68
/* 80242E5C 0023FDBC  38 7E 00 04 */	addi r3, r30, 4
/* 80242E60 0023FDC0  38 80 00 00 */	li r4, 0
/* 80242E64 0023FDC4  48 0F DF DD */	bl __dt__6CTokenFv
lbl_80242E68:
/* 80242E68 0023FDC8  7F E0 07 35 */	extsh. r0, r31
/* 80242E6C 0023FDCC  40 81 00 0C */	ble lbl_80242E78
/* 80242E70 0023FDD0  7F C3 F3 78 */	mr r3, r30
/* 80242E74 0023FDD4  48 0D 2A BD */	bl Free__7CMemoryFPCv
lbl_80242E78:
/* 80242E78 0023FDD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80242E7C 0023FDDC  7F C3 F3 78 */	mr r3, r30
/* 80242E80 0023FDE0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80242E84 0023FDE4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80242E88 0023FDE8  7C 08 03 A6 */	mtlr r0
/* 80242E8C 0023FDEC  38 21 00 20 */	addi r1, r1, 0x20
/* 80242E90 0023FDF0  4E 80 00 20 */	blr

.global __ct__21SOptionsFrontEndFrameFv
__ct__21SOptionsFrontEndFrameFv:
/* 80242E94 0023FDF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80242E98 0023FDF8  7C 08 02 A6 */	mflr r0
/* 80242E9C 0023FDFC  3C 80 80 3D */	lis r4, lbl_803D45B4@ha
/* 80242EA0 0023FE00  C0 02 B8 10 */	lfs f0, lbl_805AD530@sda21(r2)
/* 80242EA4 0023FE04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80242EA8 0023FE08  38 84 45 B4 */	addi r4, r4, lbl_803D45B4@l
/* 80242EAC 0023FE0C  38 A4 01 0A */	addi r5, r4, 0x10a
/* 80242EB0 0023FE10  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80242EB4 0023FE14  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80242EB8 0023FE18  7C 7E 1B 78 */	mr r30, r3
/* 80242EBC 0023FE1C  38 61 00 10 */	addi r3, r1, 0x10
/* 80242EC0 0023FE20  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80242EC4 0023FE24  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 80242EC8 0023FE28  81 84 00 00 */	lwz r12, 0(r4)
/* 80242ECC 0023FE2C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80242ED0 0023FE30  7D 89 03 A6 */	mtctr r12
/* 80242ED4 0023FE34  4E 80 04 21 */	bctrl
/* 80242ED8 0023FE38  3B FE 00 04 */	addi r31, r30, 4
/* 80242EDC 0023FE3C  38 81 00 10 */	addi r4, r1, 0x10
/* 80242EE0 0023FE40  7F E3 FB 78 */	mr r3, r31
/* 80242EE4 0023FE44  48 0F DF C5 */	bl __ct__6CTokenFRC6CToken
/* 80242EE8 0023FE48  38 00 00 00 */	li r0, 0
/* 80242EEC 0023FE4C  38 61 00 10 */	addi r3, r1, 0x10
/* 80242EF0 0023FE50  90 1F 00 08 */	stw r0, 8(r31)
/* 80242EF4 0023FE54  38 80 FF FF */	li r4, -1
/* 80242EF8 0023FE58  48 0F DF 49 */	bl __dt__6CTokenFv
/* 80242EFC 0023FE5C  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 80242F00 0023FE60  3C 60 80 3D */	lis r3, lbl_803D45B4@ha
/* 80242F04 0023FE64  38 A3 45 B4 */	addi r5, r3, lbl_803D45B4@l
/* 80242F08 0023FE68  38 61 00 08 */	addi r3, r1, 8
/* 80242F0C 0023FE6C  81 84 00 00 */	lwz r12, 0(r4)
/* 80242F10 0023FE70  38 A5 01 1F */	addi r5, r5, 0x11f
/* 80242F14 0023FE74  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80242F18 0023FE78  7D 89 03 A6 */	mtctr r12
/* 80242F1C 0023FE7C  4E 80 04 21 */	bctrl
/* 80242F20 0023FE80  3B FE 00 10 */	addi r31, r30, 0x10
/* 80242F24 0023FE84  38 81 00 08 */	addi r4, r1, 8
/* 80242F28 0023FE88  7F E3 FB 78 */	mr r3, r31
/* 80242F2C 0023FE8C  48 0F DF 7D */	bl __ct__6CTokenFRC6CToken
/* 80242F30 0023FE90  38 00 00 00 */	li r0, 0
/* 80242F34 0023FE94  38 61 00 08 */	addi r3, r1, 8
/* 80242F38 0023FE98  90 1F 00 08 */	stw r0, 8(r31)
/* 80242F3C 0023FE9C  38 80 FF FF */	li r4, -1
/* 80242F40 0023FEA0  48 0F DF 01 */	bl __dt__6CTokenFv
/* 80242F44 0023FEA4  38 00 00 00 */	li r0, 0
/* 80242F48 0023FEA8  C0 02 B8 10 */	lfs f0, lbl_805AD530@sda21(r2)
/* 80242F4C 0023FEAC  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 80242F50 0023FEB0  38 7E 00 40 */	addi r3, r30, 0x40
/* 80242F54 0023FEB4  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80242F58 0023FEB8  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80242F5C 0023FEBC  90 1E 00 28 */	stw r0, 0x28(r30)
/* 80242F60 0023FEC0  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 80242F64 0023FEC4  90 1E 00 30 */	stw r0, 0x30(r30)
/* 80242F68 0023FEC8  90 1E 00 34 */	stw r0, 0x34(r30)
/* 80242F6C 0023FECC  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 80242F70 0023FED0  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 80242F74 0023FED4  48 12 72 21 */	bl __ct__16CRumbleGeneratorFv
/* 80242F78 0023FED8  88 1E 01 34 */	lbz r0, 0x134(r30)
/* 80242F7C 0023FEDC  38 60 00 01 */	li r3, 1
/* 80242F80 0023FEE0  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80242F84 0023FEE4  38 80 00 00 */	li r4, 0
/* 80242F88 0023FEE8  98 1E 01 34 */	stb r0, 0x134(r30)
/* 80242F8C 0023FEEC  38 7E 00 04 */	addi r3, r30, 4
/* 80242F90 0023FEF0  88 1E 01 34 */	lbz r0, 0x134(r30)
/* 80242F94 0023FEF4  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 80242F98 0023FEF8  98 1E 01 34 */	stb r0, 0x134(r30)
/* 80242F9C 0023FEFC  48 0F DD E9 */	bl Lock__6CTokenFv
/* 80242FA0 0023FF00  7F E3 FB 78 */	mr r3, r31
/* 80242FA4 0023FF04  48 0F DD E1 */	bl Lock__6CTokenFv
/* 80242FA8 0023FF08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80242FAC 0023FF0C  7F C3 F3 78 */	mr r3, r30
/* 80242FB0 0023FF10  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80242FB4 0023FF14  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80242FB8 0023FF18  7C 08 03 A6 */	mtlr r0
/* 80242FBC 0023FF1C  38 21 00 20 */	addi r1, r1, 0x20
/* 80242FC0 0023FF20  4E 80 00 20 */	blr

.global OnEnumChanged__14COptionsScreenFP14CGuiTableGroupi
OnEnumChanged__14COptionsScreenFP14CGuiTableGroupi:
/* 80242FC4 0023FF24  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80242FC8 0023FF28  7C 08 02 A6 */	mflr r0
/* 80242FCC 0023FF2C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80242FD0 0023FF30  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 80242FD4 0023FF34  7C 7B 1B 78 */	mr r27, r3
/* 80242FD8 0023FF38  7C 9C 23 78 */	mr r28, r4
/* 80242FDC 0023FF3C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80242FE0 0023FF40  2C 00 00 01 */	cmpwi r0, 1
/* 80242FE4 0023FF44  40 82 00 A4 */	bne lbl_80243088
/* 80242FE8 0023FF48  80 9B 00 70 */	lwz r4, 0x70(r27)
/* 80242FEC 0023FF4C  3C 60 80 3F */	lis r3, lbl_803E8720@ha
/* 80242FF0 0023FF50  80 1B 00 1C */	lwz r0, 0x1c(r27)
/* 80242FF4 0023FF54  38 63 87 20 */	addi r3, r3, lbl_803E8720@l
/* 80242FF8 0023FF58  80 84 00 C4 */	lwz r4, 0xc4(r4)
/* 80242FFC 0023FF5C  83 BC 00 C4 */	lwz r29, 0xc4(r28)
/* 80243000 0023FF60  1F E0 00 18 */	mulli r31, r0, 0x18
/* 80243004 0023FF64  54 80 18 38 */	slwi r0, r4, 3
/* 80243008 0023FF68  7F A4 EB 78 */	mr r4, r29
/* 8024300C 0023FF6C  7C 63 02 14 */	add r3, r3, r0
/* 80243010 0023FF70  83 C3 00 04 */	lwz r30, 4(r3)
/* 80243014 0023FF74  7C 7E F8 2E */	lwzx r3, r30, r31
/* 80243018 0023FF78  48 00 11 91 */	bl SetOption__12CGameOptionsF11EGameOptioni
/* 8024301C 0023FF7C  7C 1E F8 2E */	lwzx r0, r30, r31
/* 80243020 0023FF80  2C 00 00 0C */	cmpwi r0, 0xc
/* 80243024 0023FF84  40 82 00 34 */	bne lbl_80243058
/* 80243028 0023FF88  2C 1D 00 00 */	cmpwi r29, 0
/* 8024302C 0023FF8C  40 81 00 2C */	ble lbl_80243058
/* 80243030 0023FF90  38 7B 01 A8 */	addi r3, r27, 0x1a8
/* 80243034 0023FF94  48 12 6D 19 */	bl HardStopAll__16CRumbleGeneratorFv
/* 80243038 0023FF98  3C 60 80 57 */	lis r3, RumbleFxTable@ha
/* 8024303C 0023FF9C  C0 22 B8 14 */	lfs f1, lbl_805AD534@sda21(r2)
/* 80243040 0023FFA0  38 83 21 40 */	addi r4, r3, RumbleFxTable@l
/* 80243044 0023FFA4  38 7B 01 A8 */	addi r3, r27, 0x1a8
/* 80243048 0023FFA8  38 84 01 34 */	addi r4, r4, 0x134
/* 8024304C 0023FFAC  38 A0 00 01 */	li r5, 1
/* 80243050 0023FFB0  38 C0 00 00 */	li r6, 0
/* 80243054 0023FFB4  48 12 6E F9 */	bl Rumble__16CRumbleGeneratorFRC9SAdsrDataf15ERumblePriority7EIOPort
lbl_80243058:
/* 80243058 0023FFB8  7F 63 DB 78 */	mr r3, r27
/* 8024305C 0023FFBC  7F 84 E3 78 */	mr r4, r28
/* 80243060 0023FFC0  4B E2 E0 85 */	bl UpdateSideTable__16CPauseScreenBaseFP14CGuiTableGroup
/* 80243064 0023FFC4  A9 02 C5 FA */	lha r8, kMedPriority__11CSfxManager@sda21(r2)
/* 80243068 0023FFC8  38 61 00 08 */	addi r3, r1, 8
/* 8024306C 0023FFCC  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 80243070 0023FFD0  38 80 05 9D */	li r4, 0x59d
/* 80243074 0023FFD4  38 A0 00 7F */	li r5, 0x7f
/* 80243078 0023FFD8  38 C0 00 40 */	li r6, 0x40
/* 8024307C 0023FFDC  38 E0 00 00 */	li r7, 0
/* 80243080 0023FFE0  39 20 00 00 */	li r9, 0
/* 80243084 0023FFE4  48 0A 6C F1 */	bl SfxStart__11CSfxManagerFUsssbsbi
lbl_80243088:
/* 80243088 0023FFE8  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 8024308C 0023FFEC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80243090 0023FFF0  7C 08 03 A6 */	mtlr r0
/* 80243094 0023FFF4  38 21 00 30 */	addi r1, r1, 0x30
/* 80243098 0023FFF8  4E 80 00 20 */	blr

.global OnSliderChanged__14COptionsScreenFP15CGuiSliderGroupf
OnSliderChanged__14COptionsScreenFP15CGuiSliderGroupf:
/* 8024309C 0023FFFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802430A0 00240000  7C 08 02 A6 */	mflr r0
/* 802430A4 00240004  90 01 00 14 */	stw r0, 0x14(r1)
/* 802430A8 00240008  80 03 00 10 */	lwz r0, 0x10(r3)
/* 802430AC 0024000C  2C 00 00 01 */	cmpwi r0, 1
/* 802430B0 00240010  40 82 00 40 */	bne lbl_802430F0
/* 802430B4 00240014  80 C3 00 70 */	lwz r6, 0x70(r3)
/* 802430B8 00240018  3C A0 80 3F */	lis r5, lbl_803E8720@ha
/* 802430BC 0024001C  C0 04 00 C0 */	lfs f0, 0xc0(r4)
/* 802430C0 00240020  38 85 87 20 */	addi r4, r5, lbl_803E8720@l
/* 802430C4 00240024  80 A6 00 C4 */	lwz r5, 0xc4(r6)
/* 802430C8 00240028  FC 00 00 1E */	fctiwz f0, f0
/* 802430CC 0024002C  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 802430D0 00240030  54 A3 18 38 */	slwi r3, r5, 3
/* 802430D4 00240034  7C 64 1A 14 */	add r3, r4, r3
/* 802430D8 00240038  D8 01 00 08 */	stfd f0, 8(r1)
/* 802430DC 0024003C  1C 00 00 18 */	mulli r0, r0, 0x18
/* 802430E0 00240040  80 63 00 04 */	lwz r3, 4(r3)
/* 802430E4 00240044  80 81 00 0C */	lwz r4, 0xc(r1)
/* 802430E8 00240048  7C 63 00 2E */	lwzx r3, r3, r0
/* 802430EC 0024004C  48 00 10 BD */	bl SetOption__12CGameOptionsF11EGameOptioni
lbl_802430F0:
/* 802430F0 00240050  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802430F4 00240054  7C 08 03 A6 */	mtlr r0
/* 802430F8 00240058  38 21 00 10 */	addi r1, r1, 0x10
/* 802430FC 0024005C  4E 80 00 20 */	blr

.global UpdateOptionView__14COptionsScreenFv
UpdateOptionView__14COptionsScreenFv:
/* 80243100 00240060  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80243104 00240064  7C 08 02 A6 */	mflr r0
/* 80243108 00240068  90 01 00 54 */	stw r0, 0x54(r1)
/* 8024310C 0024006C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80243110 00240070  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 80243114 00240074  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80243118 00240078  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8024311C 0024007C  7C 7F 1B 78 */	mr r31, r3
/* 80243120 00240080  48 00 02 29 */	bl ResetOptionWidgetVisibility__14COptionsScreenFv
/* 80243124 00240084  80 9F 00 70 */	lwz r4, 0x70(r31)
/* 80243128 00240088  3C 60 80 3F */	lis r3, lbl_803E8720@ha
/* 8024312C 0024008C  38 03 87 20 */	addi r0, r3, lbl_803E8720@l
/* 80243130 00240090  80 64 00 C4 */	lwz r3, 0xc4(r4)
/* 80243134 00240094  54 63 18 38 */	slwi r3, r3, 3
/* 80243138 00240098  7C 60 1A 14 */	add r3, r0, r3
/* 8024313C 0024009C  80 03 00 00 */	lwz r0, 0(r3)
/* 80243140 002400A0  2C 00 00 00 */	cmpwi r0, 0
/* 80243144 002400A4  41 82 01 E4 */	beq lbl_80243328
/* 80243148 002400A8  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 8024314C 002400AC  3C 00 43 30 */	lis r0, 0x4330
/* 80243150 002400B0  90 01 00 30 */	stw r0, 0x30(r1)
/* 80243154 002400B4  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80243158 002400B8  80 63 00 04 */	lwz r3, 4(r3)
/* 8024315C 002400BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80243160 002400C0  1C 04 00 18 */	mulli r0, r4, 0x18
/* 80243164 002400C4  C8 22 B8 18 */	lfd f1, lbl_805AD538@sda21(r2)
/* 80243168 002400C8  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8024316C 002400CC  7F C3 02 14 */	add r30, r3, r0
/* 80243170 002400D0  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 80243174 002400D4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80243178 002400D8  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 8024317C 002400DC  2C 00 00 02 */	cmpwi r0, 2
/* 80243180 002400E0  EF E2 00 32 */	fmuls f31, f2, f0
/* 80243184 002400E4  41 82 01 34 */	beq lbl_802432B8
/* 80243188 002400E8  40 80 01 A0 */	bge lbl_80243328
/* 8024318C 002400EC  2C 00 00 00 */	cmpwi r0, 0
/* 80243190 002400F0  41 82 00 10 */	beq lbl_802431A0
/* 80243194 002400F4  40 80 00 B0 */	bge lbl_80243244
/* 80243198 002400F8  48 00 01 90 */	b lbl_80243328
/* 8024319C 002400FC  48 00 01 8C */	b lbl_80243328
lbl_802431A0:
/* 802431A0 00240100  80 7F 01 8C */	lwz r3, 0x18c(r31)
/* 802431A4 00240104  38 80 00 01 */	li r4, 1
/* 802431A8 00240108  48 08 74 3D */	bl SetIsActive__10CGuiWidgetFb
/* 802431AC 0024010C  80 7F 01 8C */	lwz r3, 0x18c(r31)
/* 802431B0 00240110  38 80 00 01 */	li r4, 1
/* 802431B4 00240114  38 A0 00 01 */	li r5, 1
/* 802431B8 00240118  48 08 75 31 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 802431BC 0024011C  80 7F 01 8C */	lwz r3, 0x18c(r31)
/* 802431C0 00240120  C0 3E 00 08 */	lfs f1, 8(r30)
/* 802431C4 00240124  48 08 2B 15 */	bl SetMinVal__15CGuiSliderGroupFf
/* 802431C8 00240128  80 7F 01 8C */	lwz r3, 0x18c(r31)
/* 802431CC 0024012C  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 802431D0 00240130  48 08 2B 31 */	bl SetMaxVal__15CGuiSliderGroupFf
/* 802431D4 00240134  80 7F 01 8C */	lwz r3, 0x18c(r31)
/* 802431D8 00240138  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 802431DC 0024013C  48 08 2A F5 */	bl SetIncrement__15CGuiSliderGroupFf
/* 802431E0 00240140  80 7E 00 00 */	lwz r3, 0(r30)
/* 802431E4 00240144  48 00 11 01 */	bl GetOption__11CGameOptionF11EGameOption
/* 802431E8 00240148  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 802431EC 0024014C  3C 00 43 30 */	lis r0, 0x4330
/* 802431F0 00240150  90 61 00 34 */	stw r3, 0x34(r1)
/* 802431F4 00240154  C8 22 B8 18 */	lfd f1, lbl_805AD538@sda21(r2)
/* 802431F8 00240158  90 01 00 30 */	stw r0, 0x30(r1)
/* 802431FC 0024015C  80 7F 01 8C */	lwz r3, 0x18c(r31)
/* 80243200 00240160  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80243204 00240164  EC 20 08 28 */	fsubs f1, f0, f1
/* 80243208 00240168  48 08 2B 21 */	bl SetCurVal__15CGuiSliderGroupFf
/* 8024320C 0024016C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80243210 00240170  38 81 00 20 */	addi r4, r1, 0x20
/* 80243214 00240174  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 80243218 00240178  C0 22 B8 10 */	lfs f1, lbl_805AD530@sda21(r2)
/* 8024321C 0024017C  EC 60 F8 2A */	fadds f3, f0, f31
/* 80243220 00240180  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80243224 00240184  EC 42 08 2A */	fadds f2, f2, f1
/* 80243228 00240188  EC 00 08 2A */	fadds f0, f0, f1
/* 8024322C 0024018C  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 80243230 00240190  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80243234 00240194  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80243238 00240198  80 7F 01 8C */	lwz r3, 0x18c(r31)
/* 8024323C 0024019C  48 08 1F 8D */	bl SetLocalPosition__10CGuiObjectFRC9CVector3f
/* 80243240 002401A0  48 00 00 E8 */	b lbl_80243328
lbl_80243244:
/* 80243244 002401A4  80 7E 00 00 */	lwz r3, 0(r30)
/* 80243248 002401A8  48 00 10 9D */	bl GetOption__11CGameOptionF11EGameOption
/* 8024324C 002401AC  80 BF 01 90 */	lwz r5, 0x190(r31)
/* 80243250 002401B0  38 80 00 01 */	li r4, 1
/* 80243254 002401B4  80 05 00 C4 */	lwz r0, 0xc4(r5)
/* 80243258 002401B8  90 05 00 C8 */	stw r0, 0xc8(r5)
/* 8024325C 002401BC  90 65 00 C4 */	stw r3, 0xc4(r5)
/* 80243260 002401C0  80 7F 01 90 */	lwz r3, 0x190(r31)
/* 80243264 002401C4  48 08 73 C9 */	bl SetIsVisible__10CGuiWidgetFb
/* 80243268 002401C8  80 7F 01 90 */	lwz r3, 0x190(r31)
/* 8024326C 002401CC  38 80 00 01 */	li r4, 1
/* 80243270 002401D0  48 08 73 75 */	bl SetIsActive__10CGuiWidgetFb
/* 80243274 002401D4  80 9F 01 90 */	lwz r4, 0x190(r31)
/* 80243278 002401D8  7F E3 FB 78 */	mr r3, r31
/* 8024327C 002401DC  4B E2 DE 69 */	bl UpdateSideTable__16CPauseScreenBaseFP14CGuiTableGroup
/* 80243280 002401E0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80243284 002401E4  38 81 00 14 */	addi r4, r1, 0x14
/* 80243288 002401E8  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 8024328C 002401EC  C0 22 B8 10 */	lfs f1, lbl_805AD530@sda21(r2)
/* 80243290 002401F0  EC 60 F8 2A */	fadds f3, f0, f31
/* 80243294 002401F4  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80243298 002401F8  EC 42 08 2A */	fadds f2, f2, f1
/* 8024329C 002401FC  EC 00 08 2A */	fadds f0, f0, f1
/* 802432A0 00240200  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 802432A4 00240204  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 802432A8 00240208  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802432AC 0024020C  80 7F 01 90 */	lwz r3, 0x190(r31)
/* 802432B0 00240210  48 08 1F 19 */	bl SetLocalPosition__10CGuiObjectFRC9CVector3f
/* 802432B4 00240214  48 00 00 74 */	b lbl_80243328
lbl_802432B8:
/* 802432B8 00240218  80 7E 00 00 */	lwz r3, 0(r30)
/* 802432BC 0024021C  48 00 10 29 */	bl GetOption__11CGameOptionF11EGameOption
/* 802432C0 00240220  80 BF 01 94 */	lwz r5, 0x194(r31)
/* 802432C4 00240224  38 80 00 01 */	li r4, 1
/* 802432C8 00240228  80 05 00 C4 */	lwz r0, 0xc4(r5)
/* 802432CC 0024022C  90 05 00 C8 */	stw r0, 0xc8(r5)
/* 802432D0 00240230  90 65 00 C4 */	stw r3, 0xc4(r5)
/* 802432D4 00240234  80 7F 01 94 */	lwz r3, 0x194(r31)
/* 802432D8 00240238  48 08 73 55 */	bl SetIsVisible__10CGuiWidgetFb
/* 802432DC 0024023C  80 7F 01 94 */	lwz r3, 0x194(r31)
/* 802432E0 00240240  38 80 00 01 */	li r4, 1
/* 802432E4 00240244  48 08 73 01 */	bl SetIsActive__10CGuiWidgetFb
/* 802432E8 00240248  80 9F 01 94 */	lwz r4, 0x194(r31)
/* 802432EC 0024024C  7F E3 FB 78 */	mr r3, r31
/* 802432F0 00240250  4B E2 DD F5 */	bl UpdateSideTable__16CPauseScreenBaseFP14CGuiTableGroup
/* 802432F4 00240254  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 802432F8 00240258  38 81 00 08 */	addi r4, r1, 8
/* 802432FC 0024025C  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 80243300 00240260  C0 22 B8 10 */	lfs f1, lbl_805AD530@sda21(r2)
/* 80243304 00240264  EC 60 F8 2A */	fadds f3, f0, f31
/* 80243308 00240268  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8024330C 0024026C  EC 42 08 2A */	fadds f2, f2, f1
/* 80243310 00240270  EC 00 08 2A */	fadds f0, f0, f1
/* 80243314 00240274  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 80243318 00240278  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8024331C 0024027C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80243320 00240280  80 7F 01 94 */	lwz r3, 0x194(r31)
/* 80243324 00240284  48 08 1E A5 */	bl SetLocalPosition__10CGuiObjectFRC9CVector3f
lbl_80243328:
/* 80243328 00240288  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 8024332C 0024028C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80243330 00240290  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80243334 00240294  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80243338 00240298  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8024333C 0024029C  7C 08 03 A6 */	mtlr r0
/* 80243340 002402A0  38 21 00 50 */	addi r1, r1, 0x50
/* 80243344 002402A4  4E 80 00 20 */	blr

.global ResetOptionWidgetVisibility__14COptionsScreenFv
ResetOptionWidgetVisibility__14COptionsScreenFv:
/* 80243348 002402A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024334C 002402AC  7C 08 02 A6 */	mflr r0
/* 80243350 002402B0  38 80 00 00 */	li r4, 0
/* 80243354 002402B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80243358 002402B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8024335C 002402BC  7C 7F 1B 78 */	mr r31, r3
/* 80243360 002402C0  80 63 01 8C */	lwz r3, 0x18c(r3)
/* 80243364 002402C4  48 08 72 81 */	bl SetIsActive__10CGuiWidgetFb
/* 80243368 002402C8  80 7F 01 8C */	lwz r3, 0x18c(r31)
/* 8024336C 002402CC  38 80 00 00 */	li r4, 0
/* 80243370 002402D0  38 A0 00 01 */	li r5, 1
/* 80243374 002402D4  48 08 73 75 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 80243378 002402D8  80 7F 01 90 */	lwz r3, 0x190(r31)
/* 8024337C 002402DC  38 80 00 00 */	li r4, 0
/* 80243380 002402E0  48 08 72 AD */	bl SetIsVisible__10CGuiWidgetFb
/* 80243384 002402E4  80 7F 01 90 */	lwz r3, 0x190(r31)
/* 80243388 002402E8  38 80 00 00 */	li r4, 0
/* 8024338C 002402EC  48 08 72 59 */	bl SetIsActive__10CGuiWidgetFb
/* 80243390 002402F0  80 7F 01 94 */	lwz r3, 0x194(r31)
/* 80243394 002402F4  38 80 00 00 */	li r4, 0
/* 80243398 002402F8  48 08 72 4D */	bl SetIsActive__10CGuiWidgetFb
/* 8024339C 002402FC  80 7F 01 94 */	lwz r3, 0x194(r31)
/* 802433A0 00240300  38 80 00 00 */	li r4, 0
/* 802433A4 00240304  48 08 72 89 */	bl SetIsVisible__10CGuiWidgetFb
/* 802433A8 00240308  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802433AC 0024030C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802433B0 00240310  7C 08 03 A6 */	mtlr r0
/* 802433B4 00240314  38 21 00 10 */	addi r1, r1, 0x10
/* 802433B8 00240318  4E 80 00 20 */	blr

.global RightTableSelectionChanged__14COptionsScreenFii
RightTableSelectionChanged__14COptionsScreenFii:
/* 802433BC 0024031C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802433C0 00240320  7C 08 02 A6 */	mflr r0
/* 802433C4 00240324  90 01 00 14 */	stw r0, 0x14(r1)
/* 802433C8 00240328  4B FF FD 39 */	bl UpdateOptionView__14COptionsScreenFv
/* 802433CC 0024032C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802433D0 00240330  7C 08 03 A6 */	mtlr r0
/* 802433D4 00240334  38 21 00 10 */	addi r1, r1, 0x10
/* 802433D8 00240338  4E 80 00 20 */	blr

.global ChangedMode__14COptionsScreenQ216CPauseScreenBase5EMode
ChangedMode__14COptionsScreenQ216CPauseScreenBase5EMode:
/* 802433DC 0024033C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802433E0 00240340  7C 08 02 A6 */	mflr r0
/* 802433E4 00240344  90 01 00 14 */	stw r0, 0x14(r1)
/* 802433E8 00240348  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802433EC 0024034C  7C 7F 1B 78 */	mr r31, r3
/* 802433F0 00240350  80 03 00 10 */	lwz r0, 0x10(r3)
/* 802433F4 00240354  2C 00 00 01 */	cmpwi r0, 1
/* 802433F8 00240358  40 82 00 2C */	bne lbl_80243424
/* 802433FC 0024035C  80 7F 01 74 */	lwz r3, 0x174(r31)
/* 80243400 00240360  38 80 00 01 */	li r4, 1
/* 80243404 00240364  48 08 72 29 */	bl SetIsVisible__10CGuiWidgetFb
/* 80243408 00240368  7F E3 FB 78 */	mr r3, r31
/* 8024340C 0024036C  4B FF FC F5 */	bl UpdateOptionView__14COptionsScreenFv
/* 80243410 00240370  88 1F 02 A0 */	lbz r0, 0x2a0(r31)
/* 80243414 00240374  38 60 00 01 */	li r3, 1
/* 80243418 00240378  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8024341C 0024037C  98 1F 02 A0 */	stb r0, 0x2a0(r31)
/* 80243420 00240380  48 00 00 14 */	b lbl_80243434
lbl_80243424:
/* 80243424 00240384  88 1F 02 A0 */	lbz r0, 0x2a0(r31)
/* 80243428 00240388  38 60 00 00 */	li r3, 0
/* 8024342C 0024038C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80243430 00240390  98 1F 02 A0 */	stb r0, 0x2a0(r31)
lbl_80243434:
/* 80243434 00240394  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80243438 00240398  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8024343C 0024039C  7C 08 03 A6 */	mtlr r0
/* 80243440 002403A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80243444 002403A4  4E 80 00 20 */	blr

.global UpdateRightTable__14COptionsScreenFv
UpdateRightTable__14COptionsScreenFv:
/* 80243448 002403A8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8024344C 002403AC  7C 08 02 A6 */	mflr r0
/* 80243450 002403B0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80243454 002403B4  BF 41 00 38 */	stmw r26, 0x38(r1)
/* 80243458 002403B8  7C 7A 1B 78 */	mr r26, r3
/* 8024345C 002403BC  4B E2 D9 71 */	bl UpdateRightTable__16CPauseScreenBaseFv
/* 80243460 002403C0  80 9A 00 70 */	lwz r4, 0x70(r26)
/* 80243464 002403C4  3C 60 80 3F */	lis r3, lbl_803E8720@ha
/* 80243468 002403C8  38 03 87 20 */	addi r0, r3, lbl_803E8720@l
/* 8024346C 002403CC  3B FA 00 DC */	addi r31, r26, 0xdc
/* 80243470 002403D0  80 64 00 C4 */	lwz r3, 0xc4(r4)
/* 80243474 002403D4  3B 80 00 00 */	li r28, 0
/* 80243478 002403D8  3B C0 00 00 */	li r30, 0
/* 8024347C 002403DC  54 63 18 38 */	slwi r3, r3, 3
/* 80243480 002403E0  7F A0 1A 14 */	add r29, r0, r3
lbl_80243484:
/* 80243484 002403E4  80 1D 00 00 */	lwz r0, 0(r29)
/* 80243488 002403E8  83 7F 00 00 */	lwz r27, 0(r31)
/* 8024348C 002403EC  7C 1C 00 00 */	cmpw r28, r0
/* 80243490 002403F0  40 80 00 48 */	bge lbl_802434D8
/* 80243494 002403F4  80 9D 00 04 */	lwz r4, 4(r29)
/* 80243498 002403F8  38 1E 00 04 */	addi r0, r30, 4
/* 8024349C 002403FC  80 7A 00 0C */	lwz r3, 0xc(r26)
/* 802434A0 00240400  7C 84 00 2E */	lwzx r4, r4, r0
/* 802434A4 00240404  48 11 32 59 */	bl GetString__12CStringTableCFi
/* 802434A8 00240408  7C 64 1B 78 */	mr r4, r3
/* 802434AC 0024040C  38 61 00 1C */	addi r3, r1, 0x1c
/* 802434B0 00240410  38 C1 00 08 */	addi r6, r1, 8
/* 802434B4 00240414  38 A0 FF FF */	li r5, -1
/* 802434B8 00240418  48 0F A3 05 */	bl "__ct__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>FPCwiRCQ24rstl17rmemory_allocator"
/* 802434BC 0024041C  38 7B 00 D4 */	addi r3, r27, 0xd4
/* 802434C0 00240420  38 81 00 1C */	addi r4, r1, 0x1c
/* 802434C4 00240424  38 A0 00 00 */	li r5, 0
/* 802434C8 00240428  48 08 63 BD */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 802434CC 0024042C  38 61 00 1C */	addi r3, r1, 0x1c
/* 802434D0 00240430  48 0F 9C 65 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 802434D4 00240434  48 00 00 28 */	b lbl_802434FC
lbl_802434D8:
/* 802434D8 00240438  38 61 00 0C */	addi r3, r1, 0xc
/* 802434DC 0024043C  38 8D 96 DC */	addi r4, r13, lbl_805A829C@sda21
/* 802434E0 00240440  4B DD 25 11 */	bl wstring_l__4rstlFPCw
/* 802434E4 00240444  38 7B 00 D4 */	addi r3, r27, 0xd4
/* 802434E8 00240448  38 81 00 0C */	addi r4, r1, 0xc
/* 802434EC 0024044C  38 A0 00 00 */	li r5, 0
/* 802434F0 00240450  48 08 63 95 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 802434F4 00240454  38 61 00 0C */	addi r3, r1, 0xc
/* 802434F8 00240458  48 0F 9C 3D */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
lbl_802434FC:
/* 802434FC 0024045C  3B 9C 00 01 */	addi r28, r28, 1
/* 80243500 00240460  3B DE 00 18 */	addi r30, r30, 0x18
/* 80243504 00240464  2C 1C 00 05 */	cmpwi r28, 5
/* 80243508 00240468  3B FF 00 04 */	addi r31, r31, 4
/* 8024350C 0024046C  41 80 FF 78 */	blt lbl_80243484
/* 80243510 00240470  BB 41 00 38 */	lmw r26, 0x38(r1)
/* 80243514 00240474  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80243518 00240478  7C 08 03 A6 */	mtlr r0
/* 8024351C 0024047C  38 21 00 50 */	addi r1, r1, 0x50
/* 80243520 00240480  4E 80 00 20 */	blr

.global GetRightTableCount__14COptionsScreenCFv
GetRightTableCount__14COptionsScreenCFv:
/* 80243524 00240484  80 83 00 70 */	lwz r4, 0x70(r3)
/* 80243528 00240488  3C 60 80 3F */	lis r3, lbl_803E8720@ha
/* 8024352C 0024048C  38 63 87 20 */	addi r3, r3, lbl_803E8720@l
/* 80243530 00240490  80 04 00 C4 */	lwz r0, 0xc4(r4)
/* 80243534 00240494  54 00 18 38 */	slwi r0, r0, 3
/* 80243538 00240498  7C 63 00 2E */	lwzx r3, r3, r0
/* 8024353C 0024049C  4E 80 00 20 */	blr

.global ShouldLeftTableAdvance__14COptionsScreenFv
ShouldLeftTableAdvance__14COptionsScreenFv:
/* 80243540 002404A0  80 63 00 70 */	lwz r3, 0x70(r3)
/* 80243544 002404A4  80 83 00 C4 */	lwz r4, 0xc4(r3)
/* 80243548 002404A8  20 64 00 04 */	subfic r3, r4, 4
/* 8024354C 002404AC  38 04 FF FC */	addi r0, r4, -4
/* 80243550 002404B0  7C 60 03 78 */	or r0, r3, r0
/* 80243554 002404B4  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80243558 002404B8  4E 80 00 20 */	blr

.global ShouldRightTableAdvance__14COptionsScreenFv
ShouldRightTableAdvance__14COptionsScreenFv:
/* 8024355C 002404BC  38 60 00 00 */	li r3, 0
/* 80243560 002404C0  4E 80 00 20 */	blr

.global VActivate__14COptionsScreenFv
VActivate__14COptionsScreenFv:
/* 80243564 002404C4  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 80243568 002404C8  7C 08 02 A6 */	mflr r0
/* 8024356C 002404CC  90 01 01 34 */	stw r0, 0x134(r1)
/* 80243570 002404D0  BF 61 01 1C */	stmw r27, 0x11c(r1)
/* 80243574 002404D4  7C 7E 1B 78 */	mr r30, r3
/* 80243578 002404D8  3C 60 80 3F */	lis r3, lbl_803E8708@ha
/* 8024357C 002404DC  3B 80 00 00 */	li r28, 0
/* 80243580 002404E0  3B E3 87 08 */	addi r31, r3, lbl_803E8708@l
/* 80243584 002404E4  3B BE 00 AC */	addi r29, r30, 0xac
lbl_80243588:
/* 80243588 002404E8  83 7D 00 00 */	lwz r27, 0(r29)
/* 8024358C 002404EC  38 9C 00 10 */	addi r4, r28, 0x10
/* 80243590 002404F0  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80243594 002404F4  48 11 31 69 */	bl GetString__12CStringTableCFi
/* 80243598 002404F8  7C 64 1B 78 */	mr r4, r3
/* 8024359C 002404FC  38 61 00 B8 */	addi r3, r1, 0xb8
/* 802435A0 00240500  38 C1 00 0C */	addi r6, r1, 0xc
/* 802435A4 00240504  38 A0 FF FF */	li r5, -1
/* 802435A8 00240508  48 0F A2 15 */	bl "__ct__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>FPCwiRCQ24rstl17rmemory_allocator"
/* 802435AC 0024050C  38 7B 00 D4 */	addi r3, r27, 0xd4
/* 802435B0 00240510  38 81 00 B8 */	addi r4, r1, 0xb8
/* 802435B4 00240514  38 A0 00 00 */	li r5, 0
/* 802435B8 00240518  48 08 62 CD */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 802435BC 0024051C  38 61 00 B8 */	addi r3, r1, 0xb8
/* 802435C0 00240520  48 0F 9B 75 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 802435C4 00240524  3B 9C 00 01 */	addi r28, r28, 1
/* 802435C8 00240528  3B BD 00 04 */	addi r29, r29, 4
/* 802435CC 0024052C  2C 1C 00 05 */	cmpwi r28, 5
/* 802435D0 00240530  41 80 FF B8 */	blt lbl_80243588
/* 802435D4 00240534  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802435D8 00240538  38 80 00 0F */	li r4, 0xf
/* 802435DC 0024053C  48 11 31 21 */	bl GetString__12CStringTableCFi
/* 802435E0 00240540  7C 64 1B 78 */	mr r4, r3
/* 802435E4 00240544  38 61 00 A8 */	addi r3, r1, 0xa8
/* 802435E8 00240548  38 C1 00 08 */	addi r6, r1, 8
/* 802435EC 0024054C  38 A0 FF FF */	li r5, -1
/* 802435F0 00240550  48 0F A1 CD */	bl "__ct__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>FPCwiRCQ24rstl17rmemory_allocator"
/* 802435F4 00240554  80 7E 01 78 */	lwz r3, 0x178(r30)
/* 802435F8 00240558  38 81 00 A8 */	addi r4, r1, 0xa8
/* 802435FC 0024055C  38 A0 00 00 */	li r5, 0
/* 80243600 00240560  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80243604 00240564  48 08 62 81 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80243608 00240568  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8024360C 0024056C  48 0F 9B 29 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 80243610 00240570  3B 60 00 05 */	li r27, 5
/* 80243614 00240574  3B A0 00 00 */	li r29, 0
/* 80243618 00240578  48 00 00 2C */	b lbl_80243644
lbl_8024361C:
/* 8024361C 0024057C  80 7E 00 70 */	lwz r3, 0x70(r30)
/* 80243620 00240580  7F 64 DB 78 */	mr r4, r27
/* 80243624 00240584  81 83 00 00 */	lwz r12, 0(r3)
/* 80243628 00240588  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8024362C 0024058C  7D 89 03 A6 */	mtctr r12
/* 80243630 00240590  4E 80 04 21 */	bctrl
/* 80243634 00240594  88 03 00 B6 */	lbz r0, 0xb6(r3)
/* 80243638 00240598  53 A0 26 F6 */	rlwimi r0, r29, 4, 0x1b, 0x1b
/* 8024363C 0024059C  3B 7B 00 01 */	addi r27, r27, 1
/* 80243640 002405A0  98 03 00 B6 */	stb r0, 0xb6(r3)
lbl_80243644:
/* 80243644 002405A4  2C 1B 00 05 */	cmpwi r27, 5
/* 80243648 002405A8  41 80 FF D4 */	blt lbl_8024361C
/* 8024364C 002405AC  80 7E 01 74 */	lwz r3, 0x174(r30)
/* 80243650 002405B0  38 80 00 01 */	li r4, 1
/* 80243654 002405B4  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80243658 002405B8  48 08 60 91 */	bl SetJustification__15CGuiTextSupportF14EJustification
/* 8024365C 002405BC  80 7E 01 74 */	lwz r3, 0x174(r30)
/* 80243660 002405C0  38 80 00 02 */	li r4, 2
/* 80243664 002405C4  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80243668 002405C8  48 08 60 51 */	bl SetVerticalJustification__15CGuiTextSupportF22EVerticalJustification
/* 8024366C 002405CC  80 7E 01 90 */	lwz r3, 0x190(r30)
/* 80243670 002405D0  38 80 00 00 */	li r4, 0
/* 80243674 002405D4  81 83 00 00 */	lwz r12, 0(r3)
/* 80243678 002405D8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8024367C 002405DC  7D 89 03 A6 */	mtctr r12
/* 80243680 002405E0  4E 80 04 21 */	bctrl
/* 80243684 002405E4  7C 7D 1B 78 */	mr r29, r3
/* 80243688 002405E8  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8024368C 002405EC  38 80 00 5F */	li r4, 0x5f
/* 80243690 002405F0  48 11 30 6D */	bl GetString__12CStringTableCFi
/* 80243694 002405F4  7C 64 1B 78 */	mr r4, r3
/* 80243698 002405F8  38 61 00 98 */	addi r3, r1, 0x98
/* 8024369C 002405FC  4B DD 23 55 */	bl wstring_l__4rstlFPCw
/* 802436A0 00240600  38 7D 00 D4 */	addi r3, r29, 0xd4
/* 802436A4 00240604  38 81 00 98 */	addi r4, r1, 0x98
/* 802436A8 00240608  38 A0 00 00 */	li r5, 0
/* 802436AC 0024060C  48 08 61 D9 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 802436B0 00240610  38 61 00 98 */	addi r3, r1, 0x98
/* 802436B4 00240614  48 0F 9A 81 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 802436B8 00240618  80 7E 01 90 */	lwz r3, 0x190(r30)
/* 802436BC 0024061C  38 80 00 01 */	li r4, 1
/* 802436C0 00240620  81 83 00 00 */	lwz r12, 0(r3)
/* 802436C4 00240624  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802436C8 00240628  7D 89 03 A6 */	mtctr r12
/* 802436CC 0024062C  4E 80 04 21 */	bctrl
/* 802436D0 00240630  7C 7D 1B 78 */	mr r29, r3
/* 802436D4 00240634  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802436D8 00240638  38 80 00 5E */	li r4, 0x5e
/* 802436DC 0024063C  48 11 30 21 */	bl GetString__12CStringTableCFi
/* 802436E0 00240640  7C 64 1B 78 */	mr r4, r3
/* 802436E4 00240644  38 61 00 88 */	addi r3, r1, 0x88
/* 802436E8 00240648  4B DD 23 09 */	bl wstring_l__4rstlFPCw
/* 802436EC 0024064C  38 7D 00 D4 */	addi r3, r29, 0xd4
/* 802436F0 00240650  38 81 00 88 */	addi r4, r1, 0x88
/* 802436F4 00240654  38 A0 00 00 */	li r5, 0
/* 802436F8 00240658  48 08 61 8D */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 802436FC 0024065C  38 61 00 88 */	addi r3, r1, 0x88
/* 80243700 00240660  48 0F 9A 35 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 80243704 00240664  80 7E 01 94 */	lwz r3, 0x194(r30)
/* 80243708 00240668  38 80 00 00 */	li r4, 0
/* 8024370C 0024066C  81 83 00 00 */	lwz r12, 0(r3)
/* 80243710 00240670  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80243714 00240674  7D 89 03 A6 */	mtctr r12
/* 80243718 00240678  4E 80 04 21 */	bctrl
/* 8024371C 0024067C  7C 7D 1B 78 */	mr r29, r3
/* 80243720 00240680  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80243724 00240684  38 80 00 60 */	li r4, 0x60
/* 80243728 00240688  48 11 2F D5 */	bl GetString__12CStringTableCFi
/* 8024372C 0024068C  7C 64 1B 78 */	mr r4, r3
/* 80243730 00240690  38 61 00 78 */	addi r3, r1, 0x78
/* 80243734 00240694  4B DD 22 BD */	bl wstring_l__4rstlFPCw
/* 80243738 00240698  38 7D 00 D4 */	addi r3, r29, 0xd4
/* 8024373C 0024069C  38 81 00 78 */	addi r4, r1, 0x78
/* 80243740 002406A0  38 A0 00 00 */	li r5, 0
/* 80243744 002406A4  48 08 61 41 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80243748 002406A8  38 61 00 78 */	addi r3, r1, 0x78
/* 8024374C 002406AC  48 0F 99 E9 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 80243750 002406B0  80 7E 01 94 */	lwz r3, 0x194(r30)
/* 80243754 002406B4  38 80 00 01 */	li r4, 1
/* 80243758 002406B8  81 83 00 00 */	lwz r12, 0(r3)
/* 8024375C 002406BC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80243760 002406C0  7D 89 03 A6 */	mtctr r12
/* 80243764 002406C4  4E 80 04 21 */	bctrl
/* 80243768 002406C8  7C 7D 1B 78 */	mr r29, r3
/* 8024376C 002406CC  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80243770 002406D0  38 80 00 61 */	li r4, 0x61
/* 80243774 002406D4  48 11 2F 89 */	bl GetString__12CStringTableCFi
/* 80243778 002406D8  7C 64 1B 78 */	mr r4, r3
/* 8024377C 002406DC  38 61 00 68 */	addi r3, r1, 0x68
/* 80243780 002406E0  4B DD 22 71 */	bl wstring_l__4rstlFPCw
/* 80243784 002406E4  38 7D 00 D4 */	addi r3, r29, 0xd4
/* 80243788 002406E8  38 81 00 68 */	addi r4, r1, 0x68
/* 8024378C 002406EC  38 A0 00 00 */	li r5, 0
/* 80243790 002406F0  48 08 60 F5 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80243794 002406F4  38 61 00 68 */	addi r3, r1, 0x68
/* 80243798 002406F8  48 0F 99 9D */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8024379C 002406FC  80 7E 01 94 */	lwz r3, 0x194(r30)
/* 802437A0 00240700  38 80 00 02 */	li r4, 2
/* 802437A4 00240704  81 83 00 00 */	lwz r12, 0(r3)
/* 802437A8 00240708  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802437AC 0024070C  7D 89 03 A6 */	mtctr r12
/* 802437B0 00240710  4E 80 04 21 */	bctrl
/* 802437B4 00240714  7C 7D 1B 78 */	mr r29, r3
/* 802437B8 00240718  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802437BC 0024071C  38 80 00 62 */	li r4, 0x62
/* 802437C0 00240720  48 11 2F 3D */	bl GetString__12CStringTableCFi
/* 802437C4 00240724  7C 64 1B 78 */	mr r4, r3
/* 802437C8 00240728  38 61 00 58 */	addi r3, r1, 0x58
/* 802437CC 0024072C  4B DD 22 25 */	bl wstring_l__4rstlFPCw
/* 802437D0 00240730  38 7D 00 D4 */	addi r3, r29, 0xd4
/* 802437D4 00240734  38 81 00 58 */	addi r4, r1, 0x58
/* 802437D8 00240738  38 A0 00 00 */	li r5, 0
/* 802437DC 0024073C  48 08 60 A9 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 802437E0 00240740  38 61 00 58 */	addi r3, r1, 0x58
/* 802437E4 00240744  48 0F 99 51 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 802437E8 00240748  80 FF 00 40 */	lwz r7, 0x40(r31)
/* 802437EC 0024074C  38 61 00 28 */	addi r3, r1, 0x28
/* 802437F0 00240750  80 DF 00 44 */	lwz r6, 0x44(r31)
/* 802437F4 00240754  38 81 00 4C */	addi r4, r1, 0x4c
/* 802437F8 00240758  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 802437FC 0024075C  38 A0 00 0C */	li r5, 0xc
/* 80243800 00240760  90 E1 00 4C */	stw r7, 0x4c(r1)
/* 80243804 00240764  90 C1 00 50 */	stw r6, 0x50(r1)
/* 80243808 00240768  90 01 00 54 */	stw r0, 0x54(r1)
/* 8024380C 0024076C  4B DB FC 85 */	bl memcpy
/* 80243810 00240770  3C 60 80 24 */	lis r3, sub_8024395c@ha
/* 80243814 00240774  93 C1 00 FC */	stw r30, 0xfc(r1)
/* 80243818 00240778  38 03 39 5C */	addi r0, r3, sub_8024395c@l
/* 8024381C 0024077C  38 61 01 00 */	addi r3, r1, 0x100
/* 80243820 00240780  90 01 00 F8 */	stw r0, 0xf8(r1)
/* 80243824 00240784  38 81 00 28 */	addi r4, r1, 0x28
/* 80243828 00240788  38 A0 00 0C */	li r5, 0xc
/* 8024382C 0024078C  4B DB FC 65 */	bl memcpy
/* 80243830 00240790  80 7E 01 8C */	lwz r3, 0x18c(r30)
/* 80243834 00240794  38 81 00 F8 */	addi r4, r1, 0xf8
/* 80243838 00240798  48 08 24 29 */	bl "SetSelectionChangedCallback__15CGuiSliderGroupFRC33TFunctor2<CP15CGuiSliderGroup,Cf>"
/* 8024383C 0024079C  80 FF 00 4C */	lwz r7, 0x4c(r31)
/* 80243840 002407A0  38 61 00 1C */	addi r3, r1, 0x1c
/* 80243844 002407A4  80 DF 00 50 */	lwz r6, 0x50(r31)
/* 80243848 002407A8  38 81 00 40 */	addi r4, r1, 0x40
/* 8024384C 002407AC  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 80243850 002407B0  38 A0 00 0C */	li r5, 0xc
/* 80243854 002407B4  90 E1 00 40 */	stw r7, 0x40(r1)
/* 80243858 002407B8  90 C1 00 44 */	stw r6, 0x44(r1)
/* 8024385C 002407BC  90 01 00 48 */	stw r0, 0x48(r1)
/* 80243860 002407C0  4B DB FC 31 */	bl memcpy
/* 80243864 002407C4  3C 60 80 24 */	lis r3, sub_802438f8@ha
/* 80243868 002407C8  93 C1 00 E4 */	stw r30, 0xe4(r1)
/* 8024386C 002407CC  38 03 38 F8 */	addi r0, r3, sub_802438f8@l
/* 80243870 002407D0  38 61 00 E8 */	addi r3, r1, 0xe8
/* 80243874 002407D4  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 80243878 002407D8  38 81 00 1C */	addi r4, r1, 0x1c
/* 8024387C 002407DC  38 A0 00 0C */	li r5, 0xc
/* 80243880 002407E0  4B DB FC 11 */	bl memcpy
/* 80243884 002407E4  80 7E 01 90 */	lwz r3, 0x190(r30)
/* 80243888 002407E8  38 81 00 E0 */	addi r4, r1, 0xe0
/* 8024388C 002407EC  48 08 2F 65 */	bl "SetMenuSelectionChangeCallback__14CGuiTableGroupFRC35TFunctor3<CP14CGuiTableGroup,Ci,Ci>"
/* 80243890 002407F0  80 FF 00 58 */	lwz r7, 0x58(r31)
/* 80243894 002407F4  38 61 00 10 */	addi r3, r1, 0x10
/* 80243898 002407F8  80 DF 00 5C */	lwz r6, 0x5c(r31)
/* 8024389C 002407FC  38 81 00 34 */	addi r4, r1, 0x34
/* 802438A0 00240800  80 1F 00 60 */	lwz r0, 0x60(r31)
/* 802438A4 00240804  38 A0 00 0C */	li r5, 0xc
/* 802438A8 00240808  90 E1 00 34 */	stw r7, 0x34(r1)
/* 802438AC 0024080C  90 C1 00 38 */	stw r6, 0x38(r1)
/* 802438B0 00240810  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802438B4 00240814  4B DB FB DD */	bl memcpy
/* 802438B8 00240818  3C 60 80 24 */	lis r3, sub_802438f8@ha
/* 802438BC 0024081C  93 C1 00 CC */	stw r30, 0xcc(r1)
/* 802438C0 00240820  38 03 38 F8 */	addi r0, r3, sub_802438f8@l
/* 802438C4 00240824  38 61 00 D0 */	addi r3, r1, 0xd0
/* 802438C8 00240828  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 802438CC 0024082C  38 81 00 10 */	addi r4, r1, 0x10
/* 802438D0 00240830  38 A0 00 0C */	li r5, 0xc
/* 802438D4 00240834  4B DB FB BD */	bl memcpy
/* 802438D8 00240838  80 7E 01 94 */	lwz r3, 0x194(r30)
/* 802438DC 0024083C  38 81 00 C8 */	addi r4, r1, 0xc8
/* 802438E0 00240840  48 08 2F 11 */	bl "SetMenuSelectionChangeCallback__14CGuiTableGroupFRC35TFunctor3<CP14CGuiTableGroup,Ci,Ci>"
/* 802438E4 00240844  BB 61 01 1C */	lmw r27, 0x11c(r1)
/* 802438E8 00240848  80 01 01 34 */	lwz r0, 0x134(r1)
/* 802438EC 0024084C  7C 08 03 A6 */	mtlr r0
/* 802438F0 00240850  38 21 01 30 */	addi r1, r1, 0x130
/* 802438F4 00240854  4E 80 00 20 */	blr

.global sub_802438f8
sub_802438f8:
/* 802438F8 00240858  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802438FC 0024085C  7C 08 02 A6 */	mflr r0
/* 80243900 00240860  90 01 00 34 */	stw r0, 0x34(r1)
/* 80243904 00240864  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80243908 00240868  7C DF 33 78 */	mr r31, r6
/* 8024390C 0024086C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80243910 00240870  7C BE 2B 78 */	mr r30, r5
/* 80243914 00240874  38 A0 00 0C */	li r5, 0xc
/* 80243918 00240878  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8024391C 0024087C  7C 7D 1B 78 */	mr r29, r3
/* 80243920 00240880  38 61 00 08 */	addi r3, r1, 8
/* 80243924 00240884  4B DB FB 6D */	bl memcpy
/* 80243928 00240888  7F A3 EB 78 */	mr r3, r29
/* 8024392C 0024088C  7F C4 F3 78 */	mr r4, r30
/* 80243930 00240890  7F E5 FB 78 */	mr r5, r31
/* 80243934 00240894  39 81 00 08 */	addi r12, r1, 8
/* 80243938 00240898  48 14 5F F5 */	bl __ptmf_scall
/* 8024393C 0024089C  60 00 00 00 */	nop
/* 80243940 002408A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80243944 002408A4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80243948 002408A8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8024394C 002408AC  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80243950 002408B0  7C 08 03 A6 */	mtlr r0
/* 80243954 002408B4  38 21 00 30 */	addi r1, r1, 0x30
/* 80243958 002408B8  4E 80 00 20 */	blr

.global sub_8024395c
sub_8024395c:
/* 8024395C 002408BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80243960 002408C0  7C 08 02 A6 */	mflr r0
/* 80243964 002408C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80243968 002408C8  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 8024396C 002408CC  FF E0 08 90 */	fmr f31, f1
/* 80243970 002408D0  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80243974 002408D4  7C BF 2B 78 */	mr r31, r5
/* 80243978 002408D8  38 A0 00 0C */	li r5, 0xc
/* 8024397C 002408DC  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80243980 002408E0  7C 7E 1B 78 */	mr r30, r3
/* 80243984 002408E4  38 61 00 08 */	addi r3, r1, 8
/* 80243988 002408E8  4B DB FB 09 */	bl memcpy
/* 8024398C 002408EC  FC 20 F8 90 */	fmr f1, f31
/* 80243990 002408F0  7F C3 F3 78 */	mr r3, r30
/* 80243994 002408F4  7F E4 FB 78 */	mr r4, r31
/* 80243998 002408F8  39 81 00 08 */	addi r12, r1, 8
/* 8024399C 002408FC  48 14 5F 91 */	bl __ptmf_scall
/* 802439A0 00240900  60 00 00 00 */	nop
/* 802439A4 00240904  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802439A8 00240908  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 802439AC 0024090C  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 802439B0 00240910  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 802439B4 00240914  7C 08 03 A6 */	mtlr r0
/* 802439B8 00240918  38 21 00 30 */	addi r1, r1, 0x30
/* 802439BC 0024091C  4E 80 00 20 */	blr

.global Draw__14COptionsScreenCFfff
Draw__14COptionsScreenCFfff:
/* 802439C0 00240920  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802439C4 00240924  7C 08 02 A6 */	mflr r0
/* 802439C8 00240928  90 01 00 24 */	stw r0, 0x24(r1)
/* 802439CC 0024092C  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 802439D0 00240930  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 802439D4 00240934  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802439D8 00240938  7C 7F 1B 78 */	mr r31, r3
/* 802439DC 0024093C  FF E0 08 90 */	fmr f31, f1
/* 802439E0 00240940  4B E2 D9 B1 */	bl Draw__16CPauseScreenBaseCFfff
/* 802439E4 00240944  C0 22 B8 14 */	lfs f1, lbl_805AD534@sda21(r2)
/* 802439E8 00240948  C0 1F 02 9C */	lfs f0, 0x29c(r31)
/* 802439EC 0024094C  80 7F 01 A0 */	lwz r3, 0x1a0(r31)
/* 802439F0 00240950  EC 01 00 28 */	fsubs f0, f1, f0
/* 802439F4 00240954  EC 3F 00 32 */	fmuls f1, f31, f0
/* 802439F8 00240958  48 05 AC 4D */	bl Draw__13CGameCubeDollFf
/* 802439FC 0024095C  80 1F 01 9C */	lwz r0, 0x19c(r31)
/* 80243A00 00240960  28 00 00 00 */	cmplwi r0, 0
/* 80243A04 00240964  41 82 00 24 */	beq lbl_80243A28
/* 80243A08 00240968  C0 22 B8 10 */	lfs f1, lbl_805AD530@sda21(r2)
/* 80243A0C 0024096C  C0 42 B8 20 */	lfs f2, lbl_805AD540@sda21(r2)
/* 80243A10 00240970  48 0C 69 D1 */	bl SetDepthRange__9CGraphicsFff
/* 80243A14 00240974  80 7F 01 9C */	lwz r3, 0x19c(r31)
/* 80243A18 00240978  48 00 0F A5 */	bl Draw__15CQuitGameScreenFv
/* 80243A1C 0024097C  C0 22 B8 10 */	lfs f1, lbl_805AD530@sda21(r2)
/* 80243A20 00240980  C0 42 B8 14 */	lfs f2, lbl_805AD534@sda21(r2)
/* 80243A24 00240984  48 0C 69 BD */	bl SetDepthRange__9CGraphicsFff
lbl_80243A28:
/* 80243A28 00240988  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 80243A2C 0024098C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80243A30 00240990  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80243A34 00240994  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80243A38 00240998  7C 08 03 A6 */	mtlr r0
/* 80243A3C 0024099C  38 21 00 20 */	addi r1, r1, 0x20
/* 80243A40 002409A0  4E 80 00 20 */	blr

.global ProcessInput__14COptionsScreenFRC11CFinalInput
ProcessInput__14COptionsScreenFRC11CFinalInput:
/* 80243A44 002409A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80243A48 002409A8  7C 08 02 A6 */	mflr r0
/* 80243A4C 002409AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80243A50 002409B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80243A54 002409B4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80243A58 002409B8  7C 9E 23 78 */	mr r30, r4
/* 80243A5C 002409BC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80243A60 002409C0  7C 7D 1B 78 */	mr r29, r3
/* 80243A64 002409C4  80 03 01 9C */	lwz r0, 0x19c(r3)
/* 80243A68 002409C8  28 00 00 00 */	cmplwi r0, 0
/* 80243A6C 002409CC  40 82 00 A0 */	bne lbl_80243B0C
/* 80243A70 002409D0  4B E2 D8 ED */	bl ProcessInput__16CPauseScreenBaseFRC11CFinalInput
/* 80243A74 002409D4  80 9D 00 70 */	lwz r4, 0x70(r29)
/* 80243A78 002409D8  7F C3 F3 78 */	mr r3, r30
/* 80243A7C 002409DC  80 BD 00 1C */	lwz r5, 0x1c(r29)
/* 80243A80 002409E0  38 C0 00 00 */	li r6, 0
/* 80243A84 002409E4  80 84 00 C4 */	lwz r4, 0xc4(r4)
/* 80243A88 002409E8  48 00 05 41 */	bl TryRestoreDefaults__12CGameOptionsFRC11CFinalInputiib
/* 80243A8C 002409EC  80 7D 00 70 */	lwz r3, 0x70(r29)
/* 80243A90 002409F0  80 03 00 C4 */	lwz r0, 0xc4(r3)
/* 80243A94 002409F4  2C 00 00 04 */	cmpwi r0, 4
/* 80243A98 002409F8  40 82 00 7C */	bne lbl_80243B14
/* 80243A9C 002409FC  88 1E 00 2D */	lbz r0, 0x2d(r30)
/* 80243AA0 00240A00  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 80243AA4 00240A04  41 82 00 70 */	beq lbl_80243B14
/* 80243AA8 00240A08  3C 80 80 3D */	lis r4, lbl_803D45B4@ha
/* 80243AAC 00240A0C  38 60 00 1C */	li r3, 0x1c
/* 80243AB0 00240A10  38 84 45 B4 */	addi r4, r4, lbl_803D45B4@l
/* 80243AB4 00240A14  38 A0 00 00 */	li r5, 0
/* 80243AB8 00240A18  38 84 01 30 */	addi r4, r4, 0x130
/* 80243ABC 00240A1C  48 0D 1D B1 */	bl __nw__FUlPCcPCc
/* 80243AC0 00240A20  7C 7E 1B 79 */	or. r30, r3, r3
/* 80243AC4 00240A24  41 82 00 10 */	beq lbl_80243AD4
/* 80243AC8 00240A28  38 80 00 00 */	li r4, 0
/* 80243ACC 00240A2C  48 00 10 45 */	bl __ct__15CQuitGameScreenF9EQuitType
/* 80243AD0 00240A30  7C 7E 1B 78 */	mr r30, r3
lbl_80243AD4:
/* 80243AD4 00240A34  83 FD 01 9C */	lwz r31, 0x19c(r29)
/* 80243AD8 00240A38  28 1F 00 00 */	cmplwi r31, 0
/* 80243ADC 00240A3C  41 82 00 28 */	beq lbl_80243B04
/* 80243AE0 00240A40  34 1F 00 04 */	addic. r0, r31, 4
/* 80243AE4 00240A44  41 82 00 18 */	beq lbl_80243AFC
/* 80243AE8 00240A48  34 1F 00 04 */	addic. r0, r31, 4
/* 80243AEC 00240A4C  41 82 00 10 */	beq lbl_80243AFC
/* 80243AF0 00240A50  38 7F 00 04 */	addi r3, r31, 4
/* 80243AF4 00240A54  38 80 00 00 */	li r4, 0
/* 80243AF8 00240A58  48 0F D3 49 */	bl __dt__6CTokenFv
lbl_80243AFC:
/* 80243AFC 00240A5C  7F E3 FB 78 */	mr r3, r31
/* 80243B00 00240A60  48 0D 1E 31 */	bl Free__7CMemoryFPCv
lbl_80243B04:
/* 80243B04 00240A64  93 DD 01 9C */	stw r30, 0x19c(r29)
/* 80243B08 00240A68  48 00 00 0C */	b lbl_80243B14
lbl_80243B0C:
/* 80243B0C 00240A6C  7C 03 03 78 */	mr r3, r0
/* 80243B10 00240A70  48 00 0F 91 */	bl ProcessUserInput__15CQuitGameScreenFRC11CFinalInput
lbl_80243B14:
/* 80243B14 00240A74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80243B18 00240A78  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80243B1C 00240A7C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80243B20 00240A80  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80243B24 00240A84  7C 08 03 A6 */	mtlr r0
/* 80243B28 00240A88  38 21 00 20 */	addi r1, r1, 0x20
/* 80243B2C 00240A8C  4E 80 00 20 */	blr

.global Touch__14COptionsScreenFv
Touch__14COptionsScreenFv:
/* 80243B30 00240A90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80243B34 00240A94  7C 08 02 A6 */	mflr r0
/* 80243B38 00240A98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80243B3C 00240A9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80243B40 00240AA0  7C 7F 1B 78 */	mr r31, r3
/* 80243B44 00240AA4  4B E2 D9 59 */	bl Touch__16CPauseScreenBaseFv
/* 80243B48 00240AA8  80 7F 01 A0 */	lwz r3, 0x1a0(r31)
/* 80243B4C 00240AAC  48 05 AD 01 */	bl Touch__13CGameCubeDollFv
/* 80243B50 00240AB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80243B54 00240AB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80243B58 00240AB8  7C 08 03 A6 */	mtlr r0
/* 80243B5C 00240ABC  38 21 00 10 */	addi r1, r1, 0x10
/* 80243B60 00240AC0  4E 80 00 20 */	blr

.global Update__14COptionsScreenFfR9CRandom16R18CArchitectureQueue
Update__14COptionsScreenFfR9CRandom16R18CArchitectureQueue:
/* 80243B64 00240AC4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80243B68 00240AC8  7C 08 02 A6 */	mflr r0
/* 80243B6C 00240ACC  90 01 00 74 */	stw r0, 0x74(r1)
/* 80243B70 00240AD0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80243B74 00240AD4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 80243B78 00240AD8  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80243B7C 00240ADC  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 80243B80 00240AE0  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80243B84 00240AE4  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80243B88 00240AE8  93 A1 00 44 */	stw r29, 0x44(r1)
/* 80243B8C 00240AEC  FF C0 08 90 */	fmr f30, f1
/* 80243B90 00240AF0  7C 7E 1B 78 */	mr r30, r3
/* 80243B94 00240AF4  7C 9D 23 78 */	mr r29, r4
/* 80243B98 00240AF8  7C BF 2B 78 */	mr r31, r5
/* 80243B9C 00240AFC  38 7E 01 A8 */	addi r3, r30, 0x1a8
/* 80243BA0 00240B00  48 12 62 41 */	bl Update__16CRumbleGeneratorFf
/* 80243BA4 00240B04  FC 20 F0 90 */	fmr f1, f30
/* 80243BA8 00240B08  7F C3 F3 78 */	mr r3, r30
/* 80243BAC 00240B0C  7F A4 EB 78 */	mr r4, r29
/* 80243BB0 00240B10  7F E5 FB 78 */	mr r5, r31
/* 80243BB4 00240B14  4B E2 D8 ED */	bl Update__16CPauseScreenBaseFfR9CRandom16R18CArchitectureQueue
/* 80243BB8 00240B18  80 9E 01 8C */	lwz r4, 0x18c(r30)
/* 80243BBC 00240B1C  80 7E 01 A4 */	lwz r3, 0x1a4(r30)
/* 80243BC0 00240B20  80 A4 00 F0 */	lwz r5, 0xf0(r4)
/* 80243BC4 00240B24  7C 03 00 D0 */	neg r0, r3
/* 80243BC8 00240B28  7C 85 00 D0 */	neg r4, r5
/* 80243BCC 00240B2C  7C 84 2B 78 */	or r4, r4, r5
/* 80243BD0 00240B30  7C 00 1B 78 */	or r0, r0, r3
/* 80243BD4 00240B34  54 83 0F FE */	srwi r3, r4, 0x1f
/* 80243BD8 00240B38  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80243BDC 00240B3C  7C 03 00 40 */	cmplw r3, r0
/* 80243BE0 00240B40  41 82 00 54 */	beq lbl_80243C34
/* 80243BE4 00240B44  28 03 00 00 */	cmplwi r3, 0
/* 80243BE8 00240B48  41 82 00 34 */	beq lbl_80243C1C
/* 80243BEC 00240B4C  A9 02 C5 FA */	lha r8, kMedPriority__11CSfxManager@sda21(r2)
/* 80243BF0 00240B50  38 61 00 20 */	addi r3, r1, 0x20
/* 80243BF4 00240B54  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 80243BF8 00240B58  38 80 05 AB */	li r4, 0x5ab
/* 80243BFC 00240B5C  38 A0 00 7F */	li r5, 0x7f
/* 80243C00 00240B60  38 C0 00 40 */	li r6, 0x40
/* 80243C04 00240B64  38 E0 00 00 */	li r7, 0
/* 80243C08 00240B68  39 20 00 00 */	li r9, 0
/* 80243C0C 00240B6C  48 0A 61 69 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 80243C10 00240B70  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80243C14 00240B74  90 1E 01 A4 */	stw r0, 0x1a4(r30)
/* 80243C18 00240B78  48 00 00 1C */	b lbl_80243C34
lbl_80243C1C:
/* 80243C1C 00240B7C  80 1E 01 A4 */	lwz r0, 0x1a4(r30)
/* 80243C20 00240B80  38 61 00 1C */	addi r3, r1, 0x1c
/* 80243C24 00240B84  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80243C28 00240B88  48 0A 61 21 */	bl SfxStop__11CSfxManagerFRC10CSfxHandle
/* 80243C2C 00240B8C  38 00 00 00 */	li r0, 0
/* 80243C30 00240B90  90 1E 01 A4 */	stw r0, 0x1a4(r30)
lbl_80243C34:
/* 80243C34 00240B94  88 1E 02 A0 */	lbz r0, 0x2a0(r30)
/* 80243C38 00240B98  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80243C3C 00240B9C  41 82 00 38 */	beq lbl_80243C74
/* 80243C40 00240BA0  C0 42 B8 24 */	lfs f2, lbl_805AD544@sda21(r2)
/* 80243C44 00240BA4  C0 3E 02 9C */	lfs f1, 0x29c(r30)
/* 80243C48 00240BA8  C0 0D 96 D0 */	lfs f0, lbl_805A8290@sda21(r13)
/* 80243C4C 00240BAC  EC 22 0F BA */	fmadds f1, f2, f30, f1
/* 80243C50 00240BB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80243C54 00240BB4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80243C58 00240BB8  40 80 00 0C */	bge lbl_80243C64
/* 80243C5C 00240BBC  38 61 00 18 */	addi r3, r1, 0x18
/* 80243C60 00240BC0  48 00 00 08 */	b lbl_80243C68
lbl_80243C64:
/* 80243C64 00240BC4  38 6D 96 D0 */	addi r3, r13, lbl_805A8290@sda21
lbl_80243C68:
/* 80243C68 00240BC8  C0 03 00 00 */	lfs f0, 0(r3)
/* 80243C6C 00240BCC  D0 1E 02 9C */	stfs f0, 0x29c(r30)
/* 80243C70 00240BD0  48 00 00 34 */	b lbl_80243CA4
lbl_80243C74:
/* 80243C74 00240BD4  C0 42 B8 24 */	lfs f2, lbl_805AD544@sda21(r2)
/* 80243C78 00240BD8  C0 3E 02 9C */	lfs f1, 0x29c(r30)
/* 80243C7C 00240BDC  C0 0D 96 D4 */	lfs f0, lbl_805A8294@sda21(r13)
/* 80243C80 00240BE0  EC 22 0F BC */	fnmsubs f1, f2, f30, f1
/* 80243C84 00240BE4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80243C88 00240BE8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80243C8C 00240BEC  40 80 00 0C */	bge lbl_80243C98
/* 80243C90 00240BF0  38 61 00 14 */	addi r3, r1, 0x14
/* 80243C94 00240BF4  48 00 00 08 */	b lbl_80243C9C
lbl_80243C98:
/* 80243C98 00240BF8  38 6D 96 D4 */	addi r3, r13, lbl_805A8294@sda21
lbl_80243C9C:
/* 80243C9C 00240BFC  C0 03 00 00 */	lfs f0, 0(r3)
/* 80243CA0 00240C00  D0 1E 02 9C */	stfs f0, 0x29c(r30)
lbl_80243CA4:
/* 80243CA4 00240C04  C0 5E 02 9C */	lfs f2, 0x29c(r30)
/* 80243CA8 00240C08  C0 22 B8 10 */	lfs f1, lbl_805AD530@sda21(r2)
/* 80243CAC 00240C0C  C0 02 B8 28 */	lfs f0, lbl_805AD548@sda21(r2)
/* 80243CB0 00240C10  EC 22 08 28 */	fsubs f1, f2, f1
/* 80243CB4 00240C14  FC 20 0A 10 */	fabs f1, f1
/* 80243CB8 00240C18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80243CBC 00240C1C  40 80 00 18 */	bge lbl_80243CD4
/* 80243CC0 00240C20  7F C3 F3 78 */	mr r3, r30
/* 80243CC4 00240C24  4B FF F6 85 */	bl ResetOptionWidgetVisibility__14COptionsScreenFv
/* 80243CC8 00240C28  80 7E 01 74 */	lwz r3, 0x174(r30)
/* 80243CCC 00240C2C  38 80 00 00 */	li r4, 0
/* 80243CD0 00240C30  48 08 69 5D */	bl SetIsVisible__10CGuiWidgetFb
lbl_80243CD4:
/* 80243CD4 00240C34  80 6D A1 3C */	lwz r3, gpTweakGuiColors@sda21(r13)
/* 80243CD8 00240C38  3C 00 43 30 */	lis r0, 0x4330
/* 80243CDC 00240C3C  90 01 00 38 */	stw r0, 0x38(r1)
/* 80243CE0 00240C40  88 03 01 BF */	lbz r0, 0x1bf(r3)
/* 80243CE4 00240C44  C8 22 B8 30 */	lfd f1, lbl_805AD550@sda21(r2)
/* 80243CE8 00240C48  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80243CEC 00240C4C  C0 5E 02 9C */	lfs f2, 0x29c(r30)
/* 80243CF0 00240C50  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80243CF4 00240C54  EC 00 08 28 */	fsubs f0, f0, f1
/* 80243CF8 00240C58  EF E2 00 32 */	fmuls f31, f2, f0
/* 80243CFC 00240C5C  F3 E1 A0 08 */	psq_st f31, 8(r1), 1, qr2
/* 80243D00 00240C60  38 81 00 24 */	addi r4, r1, 0x24
/* 80243D04 00240C64  80 63 01 BC */	lwz r3, 0x1bc(r3)
/* 80243D08 00240C68  88 01 00 08 */	lbz r0, 8(r1)
/* 80243D0C 00240C6C  50 60 00 2E */	rlwimi r0, r3, 0, 0, 0x17
/* 80243D10 00240C70  90 01 00 24 */	stw r0, 0x24(r1)
/* 80243D14 00240C74  80 7E 01 8C */	lwz r3, 0x18c(r30)
/* 80243D18 00240C78  48 08 6B 55 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80243D1C 00240C7C  80 7E 01 90 */	lwz r3, 0x190(r30)
/* 80243D20 00240C80  38 81 00 24 */	addi r4, r1, 0x24
/* 80243D24 00240C84  48 08 6B 49 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80243D28 00240C88  80 7E 01 94 */	lwz r3, 0x194(r30)
/* 80243D2C 00240C8C  38 81 00 24 */	addi r4, r1, 0x24
/* 80243D30 00240C90  48 08 6B 3D */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80243D34 00240C94  80 7E 01 9C */	lwz r3, 0x19c(r30)
/* 80243D38 00240C98  28 03 00 00 */	cmplwi r3, 0
/* 80243D3C 00240C9C  41 82 00 CC */	beq lbl_80243E08
/* 80243D40 00240CA0  FC 20 F0 90 */	fmr f1, f30
/* 80243D44 00240CA4  48 00 0B E5 */	bl Update__15CQuitGameScreenFv
/* 80243D48 00240CA8  2C 03 00 01 */	cmpwi r3, 1
/* 80243D4C 00240CAC  40 82 00 58 */	bne lbl_80243DA4
/* 80243D50 00240CB0  38 61 00 28 */	addi r3, r1, 0x28
/* 80243D54 00240CB4  38 80 00 01 */	li r4, 1
/* 80243D58 00240CB8  4B E0 DC 09 */	bl CreateQuitGameplay__7MakeMsgF14EArchMsgTarget
/* 80243D5C 00240CBC  7F E3 FB 78 */	mr r3, r31
/* 80243D60 00240CC0  38 81 00 28 */	addi r4, r1, 0x28
/* 80243D64 00240CC4  4B DC 2F 9D */	bl Push__18CArchitectureQueueFRC20CArchitectureMessage
/* 80243D68 00240CC8  34 61 00 30 */	addic. r3, r1, 0x30
/* 80243D6C 00240CCC  41 82 00 08 */	beq lbl_80243D74
/* 80243D70 00240CD0  4B DC 49 9D */	bl "ReleaseData__Q24rstl34rc_ptr<24IArchitectureMessageParm>Fv"
lbl_80243D74:
/* 80243D74 00240CD4  38 60 00 00 */	li r3, 0
/* 80243D78 00240CD8  48 0A 5B 3D */	bl SetChannel__11CSfxManagerFQ211CSfxManager12ESfxChannels
/* 80243D7C 00240CDC  A9 02 C5 FA */	lha r8, kMedPriority__11CSfxManager@sda21(r2)
/* 80243D80 00240CE0  38 61 00 10 */	addi r3, r1, 0x10
/* 80243D84 00240CE4  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 80243D88 00240CE8  38 80 05 8E */	li r4, 0x58e
/* 80243D8C 00240CEC  38 A0 00 7F */	li r5, 0x7f
/* 80243D90 00240CF0  38 C0 00 40 */	li r6, 0x40
/* 80243D94 00240CF4  38 E0 00 00 */	li r7, 0
/* 80243D98 00240CF8  39 20 00 00 */	li r9, 0
/* 80243D9C 00240CFC  48 0A 5F D9 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 80243DA0 00240D00  48 00 00 68 */	b lbl_80243E08
lbl_80243DA4:
/* 80243DA4 00240D04  2C 03 00 02 */	cmpwi r3, 2
/* 80243DA8 00240D08  40 82 00 60 */	bne lbl_80243E08
/* 80243DAC 00240D0C  A9 02 C5 FA */	lha r8, kMedPriority__11CSfxManager@sda21(r2)
/* 80243DB0 00240D10  38 61 00 0C */	addi r3, r1, 0xc
/* 80243DB4 00240D14  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 80243DB8 00240D18  38 80 05 8F */	li r4, 0x58f
/* 80243DBC 00240D1C  38 A0 00 7F */	li r5, 0x7f
/* 80243DC0 00240D20  38 C0 00 40 */	li r6, 0x40
/* 80243DC4 00240D24  38 E0 00 00 */	li r7, 0
/* 80243DC8 00240D28  39 20 00 00 */	li r9, 0
/* 80243DCC 00240D2C  48 0A 5F A9 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 80243DD0 00240D30  83 FE 01 9C */	lwz r31, 0x19c(r30)
/* 80243DD4 00240D34  28 1F 00 00 */	cmplwi r31, 0
/* 80243DD8 00240D38  41 82 00 28 */	beq lbl_80243E00
/* 80243DDC 00240D3C  34 1F 00 04 */	addic. r0, r31, 4
/* 80243DE0 00240D40  41 82 00 18 */	beq lbl_80243DF8
/* 80243DE4 00240D44  34 1F 00 04 */	addic. r0, r31, 4
/* 80243DE8 00240D48  41 82 00 10 */	beq lbl_80243DF8
/* 80243DEC 00240D4C  38 7F 00 04 */	addi r3, r31, 4
/* 80243DF0 00240D50  38 80 00 00 */	li r4, 0
/* 80243DF4 00240D54  48 0F D0 4D */	bl __dt__6CTokenFv
lbl_80243DF8:
/* 80243DF8 00240D58  7F E3 FB 78 */	mr r3, r31
/* 80243DFC 00240D5C  48 0D 1B 35 */	bl Free__7CMemoryFPCv
lbl_80243E00:
/* 80243E00 00240D60  38 00 00 00 */	li r0, 0
/* 80243E04 00240D64  90 1E 01 9C */	stw r0, 0x19c(r30)
lbl_80243E08:
/* 80243E08 00240D68  FC 20 F0 90 */	fmr f1, f30
/* 80243E0C 00240D6C  80 7E 01 A0 */	lwz r3, 0x1a0(r30)
/* 80243E10 00240D70  48 05 A9 BD */	bl Update__13CGameCubeDollFf
/* 80243E14 00240D74  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 80243E18 00240D78  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80243E1C 00240D7C  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 80243E20 00240D80  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80243E24 00240D84  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80243E28 00240D88  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80243E2C 00240D8C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80243E30 00240D90  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 80243E34 00240D94  7C 08 03 A6 */	mtlr r0
/* 80243E38 00240D98  38 21 00 70 */	addi r1, r1, 0x70
/* 80243E3C 00240D9C  4E 80 00 20 */	blr

.global InputDisabled__14COptionsScreenCFv
InputDisabled__14COptionsScreenCFv:
/* 80243E40 00240DA0  80 63 01 9C */	lwz r3, 0x19c(r3)
/* 80243E44 00240DA4  7C 03 00 D0 */	neg r0, r3
/* 80243E48 00240DA8  7C 00 1B 78 */	or r0, r0, r3
/* 80243E4C 00240DAC  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80243E50 00240DB0  4E 80 00 20 */	blr

.global VReady__14COptionsScreenCFv
VReady__14COptionsScreenCFv:
/* 80243E54 00240DB4  38 60 00 01 */	li r3, 1
/* 80243E58 00240DB8  4E 80 00 20 */	blr

.global __dt__14COptionsScreenFv
__dt__14COptionsScreenFv:
/* 80243E5C 00240DBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80243E60 00240DC0  7C 08 02 A6 */	mflr r0
/* 80243E64 00240DC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80243E68 00240DC8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80243E6C 00240DCC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80243E70 00240DD0  7C 9E 23 78 */	mr r30, r4
/* 80243E74 00240DD4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80243E78 00240DD8  7C 7D 1B 79 */	or. r29, r3, r3
/* 80243E7C 00240DDC  41 82 00 94 */	beq lbl_80243F10
/* 80243E80 00240DE0  3C 80 80 3F */	lis r4, lbl_803E87D8@ha
/* 80243E84 00240DE4  38 61 00 08 */	addi r3, r1, 8
/* 80243E88 00240DE8  38 04 87 D8 */	addi r0, r4, lbl_803E87D8@l
/* 80243E8C 00240DEC  90 1D 00 00 */	stw r0, 0(r29)
/* 80243E90 00240DF0  80 1D 01 A4 */	lwz r0, 0x1a4(r29)
/* 80243E94 00240DF4  90 01 00 08 */	stw r0, 8(r1)
/* 80243E98 00240DF8  48 0A 5E B1 */	bl SfxStop__11CSfxManagerFRC10CSfxHandle
/* 80243E9C 00240DFC  38 7D 01 A8 */	addi r3, r29, 0x1a8
/* 80243EA0 00240E00  38 80 FF FF */	li r4, -1
/* 80243EA4 00240E04  48 12 61 51 */	bl __dt__16CRumbleGeneratorFv
/* 80243EA8 00240E08  34 1D 01 A0 */	addic. r0, r29, 0x1a0
/* 80243EAC 00240E0C  41 82 00 10 */	beq lbl_80243EBC
/* 80243EB0 00240E10  80 7D 01 A0 */	lwz r3, 0x1a0(r29)
/* 80243EB4 00240E14  38 80 00 01 */	li r4, 1
/* 80243EB8 00240E18  48 05 AB CD */	bl __dt__13CGameCubeDollFv
lbl_80243EBC:
/* 80243EBC 00240E1C  34 1D 01 9C */	addic. r0, r29, 0x19c
/* 80243EC0 00240E20  41 82 00 34 */	beq lbl_80243EF4
/* 80243EC4 00240E24  83 FD 01 9C */	lwz r31, 0x19c(r29)
/* 80243EC8 00240E28  28 1F 00 00 */	cmplwi r31, 0
/* 80243ECC 00240E2C  41 82 00 28 */	beq lbl_80243EF4
/* 80243ED0 00240E30  34 1F 00 04 */	addic. r0, r31, 4
/* 80243ED4 00240E34  41 82 00 18 */	beq lbl_80243EEC
/* 80243ED8 00240E38  34 1F 00 04 */	addic. r0, r31, 4
/* 80243EDC 00240E3C  41 82 00 10 */	beq lbl_80243EEC
/* 80243EE0 00240E40  38 7F 00 04 */	addi r3, r31, 4
/* 80243EE4 00240E44  38 80 00 00 */	li r4, 0
/* 80243EE8 00240E48  48 0F CF 59 */	bl __dt__6CTokenFv
lbl_80243EEC:
/* 80243EEC 00240E4C  7F E3 FB 78 */	mr r3, r31
/* 80243EF0 00240E50  48 0D 1A 41 */	bl Free__7CMemoryFPCv
lbl_80243EF4:
/* 80243EF4 00240E54  7F A3 EB 78 */	mr r3, r29
/* 80243EF8 00240E58  38 80 00 00 */	li r4, 0
/* 80243EFC 00240E5C  4B E2 E6 D1 */	bl __dt__16CPauseScreenBaseFv
/* 80243F00 00240E60  7F C0 07 35 */	extsh. r0, r30
/* 80243F04 00240E64  40 81 00 0C */	ble lbl_80243F10
/* 80243F08 00240E68  7F A3 EB 78 */	mr r3, r29
/* 80243F0C 00240E6C  48 0D 1A 25 */	bl Free__7CMemoryFPCv
lbl_80243F10:
/* 80243F10 00240E70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80243F14 00240E74  7F A3 EB 78 */	mr r3, r29
/* 80243F18 00240E78  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80243F1C 00240E7C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80243F20 00240E80  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80243F24 00240E84  7C 08 03 A6 */	mtlr r0
/* 80243F28 00240E88  38 21 00 20 */	addi r1, r1, 0x20
/* 80243F2C 00240E8C  4E 80 00 20 */	blr

.global __ct__14COptionsScreenFRC13CStateManagerRC9CGuiFrameRC12CStringTable
__ct__14COptionsScreenFRC13CStateManagerRC9CGuiFrameRC12CStringTable:
/* 80243F30 00240E90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80243F34 00240E94  7C 08 02 A6 */	mflr r0
/* 80243F38 00240E98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80243F3C 00240E9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80243F40 00240EA0  7C 7F 1B 78 */	mr r31, r3
/* 80243F44 00240EA4  4B E2 E9 0D */	bl __ct__16CPauseScreenBaseFRC13CStateManagerRC9CGuiFrameRC12CStringTable
/* 80243F48 00240EA8  3C 80 80 3F */	lis r4, lbl_803E87D8@ha
/* 80243F4C 00240EAC  3C 60 80 3D */	lis r3, lbl_803D45B4@ha
/* 80243F50 00240EB0  38 84 87 D8 */	addi r4, r4, lbl_803E87D8@l
/* 80243F54 00240EB4  38 00 00 00 */	li r0, 0
/* 80243F58 00240EB8  90 9F 00 00 */	stw r4, 0(r31)
/* 80243F5C 00240EBC  38 63 45 B4 */	addi r3, r3, lbl_803D45B4@l
/* 80243F60 00240EC0  38 83 01 30 */	addi r4, r3, 0x130
/* 80243F64 00240EC4  38 60 00 24 */	li r3, 0x24
/* 80243F68 00240EC8  90 1F 01 9C */	stw r0, 0x19c(r31)
/* 80243F6C 00240ECC  38 A0 00 00 */	li r5, 0
/* 80243F70 00240ED0  48 0D 18 FD */	bl __nw__FUlPCcPCc
/* 80243F74 00240ED4  7C 60 1B 79 */	or. r0, r3, r3
/* 80243F78 00240ED8  41 82 00 0C */	beq lbl_80243F84
/* 80243F7C 00240EDC  48 05 AC 3D */	bl __ct__13CGameCubeDollFv
/* 80243F80 00240EE0  7C 60 1B 78 */	mr r0, r3
lbl_80243F84:
/* 80243F84 00240EE4  90 1F 01 A0 */	stw r0, 0x1a0(r31)
/* 80243F88 00240EE8  38 00 00 00 */	li r0, 0
/* 80243F8C 00240EEC  38 7F 01 A8 */	addi r3, r31, 0x1a8
/* 80243F90 00240EF0  90 1F 01 A4 */	stw r0, 0x1a4(r31)
/* 80243F94 00240EF4  48 12 62 01 */	bl __ct__16CRumbleGeneratorFv
/* 80243F98 00240EF8  C0 02 B8 10 */	lfs f0, lbl_805AD530@sda21(r2)
/* 80243F9C 00240EFC  38 80 00 00 */	li r4, 0
/* 80243FA0 00240F00  7F E3 FB 78 */	mr r3, r31
/* 80243FA4 00240F04  D0 1F 02 9C */	stfs f0, 0x29c(r31)
/* 80243FA8 00240F08  88 1F 02 A0 */	lbz r0, 0x2a0(r31)
/* 80243FAC 00240F0C  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80243FB0 00240F10  98 1F 02 A0 */	stb r0, 0x2a0(r31)
/* 80243FB4 00240F14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80243FB8 00240F18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80243FBC 00240F1C  7C 08 03 A6 */	mtlr r0
/* 80243FC0 00240F20  38 21 00 10 */	addi r1, r1, 0x10
/* 80243FC4 00240F24  4E 80 00 20 */	blr

.global TryRestoreDefaults__12CGameOptionsFRC11CFinalInputiib
TryRestoreDefaults__12CGameOptionsFRC11CFinalInputiib:
/* 80243FC8 00240F28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80243FCC 00240F2C  7C 08 02 A6 */	mflr r0
/* 80243FD0 00240F30  90 01 00 24 */	stw r0, 0x24(r1)
/* 80243FD4 00240F34  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80243FD8 00240F38  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80243FDC 00240F3C  7C 9E 23 78 */	mr r30, r4
/* 80243FE0 00240F40  3C 80 80 3F */	lis r4, lbl_803E8720@ha
/* 80243FE4 00240F44  57 C7 18 38 */	slwi r7, r30, 3
/* 80243FE8 00240F48  38 04 87 20 */	addi r0, r4, lbl_803E8720@l
/* 80243FEC 00240F4C  7C 80 3A 14 */	add r4, r0, r7
/* 80243FF0 00240F50  80 04 00 00 */	lwz r0, 0(r4)
/* 80243FF4 00240F54  2C 00 00 00 */	cmpwi r0, 0
/* 80243FF8 00240F58  41 82 01 98 */	beq lbl_80244190
/* 80243FFC 00240F5C  1C 05 00 18 */	mulli r0, r5, 0x18
/* 80244000 00240F60  80 84 00 04 */	lwz r4, 4(r4)
/* 80244004 00240F64  7C 04 00 2E */	lwzx r0, r4, r0
/* 80244008 00240F68  2C 00 00 0E */	cmpwi r0, 0xe
/* 8024400C 00240F6C  40 82 01 84 */	bne lbl_80244190
/* 80244010 00240F70  88 03 00 2D */	lbz r0, 0x2d(r3)
/* 80244014 00240F74  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 80244018 00240F78  41 82 01 78 */	beq lbl_80244190
/* 8024401C 00240F7C  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 80244020 00240F80  41 82 00 50 */	beq lbl_80244070
/* 80244024 00240F84  A9 02 C5 FA */	lha r8, kMedPriority__11CSfxManager@sda21(r2)
/* 80244028 00240F88  38 61 00 10 */	addi r3, r1, 0x10
/* 8024402C 00240F8C  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 80244030 00240F90  38 80 04 48 */	li r4, 0x448
/* 80244034 00240F94  38 A0 00 7F */	li r5, 0x7f
/* 80244038 00240F98  38 C0 00 40 */	li r6, 0x40
/* 8024403C 00240F9C  38 E0 00 00 */	li r7, 0
/* 80244040 00240FA0  39 20 00 00 */	li r9, 0
/* 80244044 00240FA4  48 0A 5D 31 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 80244048 00240FA8  A9 02 C5 FA */	lha r8, kMedPriority__11CSfxManager@sda21(r2)
/* 8024404C 00240FAC  38 61 00 0C */	addi r3, r1, 0xc
/* 80244050 00240FB0  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 80244054 00240FB4  38 80 04 43 */	li r4, 0x443
/* 80244058 00240FB8  38 A0 00 7F */	li r5, 0x7f
/* 8024405C 00240FBC  38 C0 00 40 */	li r6, 0x40
/* 80244060 00240FC0  38 E0 00 00 */	li r7, 0
/* 80244064 00240FC4  39 20 00 00 */	li r9, 0
/* 80244068 00240FC8  48 0A 5D 0D */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 8024406C 00240FCC  48 00 00 28 */	b lbl_80244094
lbl_80244070:
/* 80244070 00240FD0  A9 02 C5 FA */	lha r8, kMedPriority__11CSfxManager@sda21(r2)
/* 80244074 00240FD4  38 61 00 08 */	addi r3, r1, 8
/* 80244078 00240FD8  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 8024407C 00240FDC  38 80 05 98 */	li r4, 0x598
/* 80244080 00240FE0  38 A0 00 7F */	li r5, 0x7f
/* 80244084 00240FE4  38 C0 00 40 */	li r6, 0x40
/* 80244088 00240FE8  38 E0 00 00 */	li r7, 0
/* 8024408C 00240FEC  39 20 00 00 */	li r9, 0
/* 80244090 00240FF0  48 0A 5C E5 */	bl SfxStart__11CSfxManagerFUsssbsbi
lbl_80244094:
/* 80244094 00240FF4  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 80244098 00240FF8  2C 1E 00 02 */	cmpwi r30, 2
/* 8024409C 00240FFC  3B E3 01 7C */	addi r31, r3, 0x17c
/* 802440A0 00241000  41 82 00 98 */	beq lbl_80244138
/* 802440A4 00241004  40 80 00 14 */	bge lbl_802440B8
/* 802440A8 00241008  2C 1E 00 00 */	cmpwi r30, 0
/* 802440AC 0024100C  41 82 00 18 */	beq lbl_802440C4
/* 802440B0 00241010  40 80 00 44 */	bge lbl_802440F4
/* 802440B4 00241014  48 00 00 DC */	b lbl_80244190
lbl_802440B8:
/* 802440B8 00241018  2C 1E 00 04 */	cmpwi r30, 4
/* 802440BC 0024101C  40 80 00 D4 */	bge lbl_80244190
/* 802440C0 00241020  48 00 00 AC */	b lbl_8024416C
lbl_802440C4:
/* 802440C4 00241024  38 00 00 FF */	li r0, 0xff
/* 802440C8 00241028  7F E3 FB 78 */	mr r3, r31
/* 802440CC 0024102C  90 1F 00 60 */	stw r0, 0x60(r31)
/* 802440D0 00241030  38 80 00 FF */	li r4, 0xff
/* 802440D4 00241034  4B FC AC 65 */	bl SetHelmetAlpha__12CGameOptionsFi
/* 802440D8 00241038  88 82 B2 20 */	lbz r4, lbl_805ACF40@sda21(r2)
/* 802440DC 0024103C  7F E3 FB 78 */	mr r3, r31
/* 802440E0 00241040  4B FC AC 49 */	bl SetHUDLag__12CGameOptionsFb
/* 802440E4 00241044  88 82 B2 24 */	lbz r4, lbl_805ACF44@sda21(r2)
/* 802440E8 00241048  7F E3 FB 78 */	mr r3, r31
/* 802440EC 0024104C  4B FC AC 2D */	bl SetIsHintSystemEnabled__12CGameOptionsFb
/* 802440F0 00241050  48 00 00 A0 */	b lbl_80244190
lbl_802440F4:
/* 802440F4 00241054  7F E3 FB 78 */	mr r3, r31
/* 802440F8 00241058  38 80 00 04 */	li r4, 4
/* 802440FC 0024105C  38 A0 00 01 */	li r5, 1
/* 80244100 00241060  4B FC AF 99 */	bl SetScreenBrightness__12CGameOptionsFib
/* 80244104 00241064  7F E3 FB 78 */	mr r3, r31
/* 80244108 00241068  38 80 00 00 */	li r4, 0
/* 8024410C 0024106C  38 A0 00 01 */	li r5, 1
/* 80244110 00241070  4B FC AE CD */	bl SetScreenPositionX__12CGameOptionsFib
/* 80244114 00241074  7F E3 FB 78 */	mr r3, r31
/* 80244118 00241078  38 80 00 00 */	li r4, 0
/* 8024411C 0024107C  38 A0 00 01 */	li r5, 1
/* 80244120 00241080  4B FC AE 45 */	bl SetScreenPositionY__12CGameOptionsFib
/* 80244124 00241084  7F E3 FB 78 */	mr r3, r31
/* 80244128 00241088  38 80 00 00 */	li r4, 0
/* 8024412C 0024108C  38 A0 00 01 */	li r5, 1
/* 80244130 00241090  4B FC AD BD */	bl SetScreenStretch__12CGameOptionsFib
/* 80244134 00241094  48 00 00 5C */	b lbl_80244190
lbl_80244138:
/* 80244138 00241098  7F E3 FB 78 */	mr r3, r31
/* 8024413C 0024109C  38 80 00 7F */	li r4, 0x7f
/* 80244140 002410A0  38 A0 00 01 */	li r5, 1
/* 80244144 002410A4  4B FC AD 25 */	bl SetSfxVolume__12CGameOptionsFib
/* 80244148 002410A8  7F E3 FB 78 */	mr r3, r31
/* 8024414C 002410AC  38 80 00 7F */	li r4, 0x7f
/* 80244150 002410B0  38 A0 00 01 */	li r5, 1
/* 80244154 002410B4  4B FC AC B5 */	bl SetMusicVolume__12CGameOptionsFib
/* 80244158 002410B8  7F E3 FB 78 */	mr r3, r31
/* 8024415C 002410BC  38 80 00 01 */	li r4, 1
/* 80244160 002410C0  38 A0 00 01 */	li r5, 1
/* 80244164 002410C4  4B FC AC 45 */	bl SetSurroundMode__12CGameOptionsFQ29CAudioSys14ESurroundModesi
/* 80244168 002410C8  48 00 00 28 */	b lbl_80244190
lbl_8024416C:
/* 8024416C 002410CC  88 82 B2 21 */	lbz r4, lbl_805ACF41@sda21(r2)
/* 80244170 002410D0  7F E3 FB 78 */	mr r3, r31
/* 80244174 002410D4  4B FC AB 95 */	bl SetInvertYAxis__12CGameOptionsFb
/* 80244178 002410D8  88 82 B2 22 */	lbz r4, lbl_805ACF42@sda21(r2)
/* 8024417C 002410DC  7F E3 FB 78 */	mr r3, r31
/* 80244180 002410E0  4B FC AB 79 */	bl SetIsRumbleEnabled__12CGameOptionsFb
/* 80244184 002410E4  88 82 B2 23 */	lbz r4, lbl_805ACF43@sda21(r2)
/* 80244188 002410E8  7F E3 FB 78 */	mr r3, r31
/* 8024418C 002410EC  4B FC AB 29 */	bl ToggleControls__12CGameOptionsFb
lbl_80244190:
/* 80244190 002410F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80244194 002410F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80244198 002410F8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8024419C 002410FC  7C 08 03 A6 */	mtlr r0
/* 802441A0 00241100  38 21 00 20 */	addi r1, r1, 0x20
/* 802441A4 00241104  4E 80 00 20 */	blr

.global SetOption__12CGameOptionsF11EGameOptioni
SetOption__12CGameOptionsF11EGameOptioni:
/* 802441A8 00241108  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802441AC 0024110C  7C 08 02 A6 */	mflr r0
/* 802441B0 00241110  28 03 00 0D */	cmplwi r3, 0xd
/* 802441B4 00241114  90 01 00 14 */	stw r0, 0x14(r1)
/* 802441B8 00241118  80 AD A0 80 */	lwz r5, gpGameState@sda21(r13)
/* 802441BC 0024111C  38 C5 01 7C */	addi r6, r5, 0x17c
/* 802441C0 00241120  41 81 01 14 */	bgt lbl_802442D4
/* 802441C4 00241124  3C A0 80 3F */	lis r5, lbl_803E882C@ha
/* 802441C8 00241128  54 60 10 3A */	slwi r0, r3, 2
/* 802441CC 0024112C  38 65 88 2C */	addi r3, r5, lbl_803E882C@l
/* 802441D0 00241130  7C 03 00 2E */	lwzx r0, r3, r0
/* 802441D4 00241134  7C 09 03 A6 */	mtctr r0
/* 802441D8 00241138  4E 80 04 20 */	bctr
.global lbl_802441DC
lbl_802441DC:
/* 802441DC 0024113C  90 86 00 60 */	stw r4, 0x60(r6)
/* 802441E0 00241140  48 00 00 F4 */	b lbl_802442D4
.global lbl_802441E4
lbl_802441E4:
/* 802441E4 00241144  7C C3 33 78 */	mr r3, r6
/* 802441E8 00241148  4B FC AB 51 */	bl SetHelmetAlpha__12CGameOptionsFi
/* 802441EC 0024114C  48 00 00 E8 */	b lbl_802442D4
.global lbl_802441F0
lbl_802441F0:
/* 802441F0 00241150  7C 04 00 D0 */	neg r0, r4
/* 802441F4 00241154  7C C3 33 78 */	mr r3, r6
/* 802441F8 00241158  7C 00 20 78 */	andc r0, r0, r4
/* 802441FC 0024115C  54 04 0F FE */	srwi r4, r0, 0x1f
/* 80244200 00241160  4B FC AB 29 */	bl SetHUDLag__12CGameOptionsFb
/* 80244204 00241164  48 00 00 D0 */	b lbl_802442D4
.global lbl_80244208
lbl_80244208:
/* 80244208 00241168  7C 04 00 D0 */	neg r0, r4
/* 8024420C 0024116C  7C C3 33 78 */	mr r3, r6
/* 80244210 00241170  7C 00 20 78 */	andc r0, r0, r4
/* 80244214 00241174  54 04 0F FE */	srwi r4, r0, 0x1f
/* 80244218 00241178  4B FC AB 01 */	bl SetIsHintSystemEnabled__12CGameOptionsFb
/* 8024421C 0024117C  48 00 00 B8 */	b lbl_802442D4
.global lbl_80244220
lbl_80244220:
/* 80244220 00241180  7C C3 33 78 */	mr r3, r6
/* 80244224 00241184  38 A0 00 01 */	li r5, 1
/* 80244228 00241188  4B FC AE 71 */	bl SetScreenBrightness__12CGameOptionsFib
/* 8024422C 0024118C  48 00 00 A8 */	b lbl_802442D4
.global lbl_80244230
lbl_80244230:
/* 80244230 00241190  7C C3 33 78 */	mr r3, r6
/* 80244234 00241194  38 A0 00 01 */	li r5, 1
/* 80244238 00241198  4B FC AD A5 */	bl SetScreenPositionX__12CGameOptionsFib
/* 8024423C 0024119C  48 00 00 98 */	b lbl_802442D4
.global lbl_80244240
lbl_80244240:
/* 80244240 002411A0  7C C3 33 78 */	mr r3, r6
/* 80244244 002411A4  38 A0 00 01 */	li r5, 1
/* 80244248 002411A8  4B FC AD 1D */	bl SetScreenPositionY__12CGameOptionsFib
/* 8024424C 002411AC  48 00 00 88 */	b lbl_802442D4
.global lbl_80244250
lbl_80244250:
/* 80244250 002411B0  7C C3 33 78 */	mr r3, r6
/* 80244254 002411B4  38 A0 00 01 */	li r5, 1
/* 80244258 002411B8  4B FC AC 95 */	bl SetScreenStretch__12CGameOptionsFib
/* 8024425C 002411BC  48 00 00 78 */	b lbl_802442D4
.global lbl_80244260
lbl_80244260:
/* 80244260 002411C0  7C C3 33 78 */	mr r3, r6
/* 80244264 002411C4  38 A0 00 01 */	li r5, 1
/* 80244268 002411C8  4B FC AC 01 */	bl SetSfxVolume__12CGameOptionsFib
/* 8024426C 002411CC  48 00 00 68 */	b lbl_802442D4
.global lbl_80244270
lbl_80244270:
/* 80244270 002411D0  7C C3 33 78 */	mr r3, r6
/* 80244274 002411D4  38 A0 00 01 */	li r5, 1
/* 80244278 002411D8  4B FC AB 91 */	bl SetMusicVolume__12CGameOptionsFib
/* 8024427C 002411DC  48 00 00 58 */	b lbl_802442D4
.global lbl_80244280
lbl_80244280:
/* 80244280 002411E0  7C C3 33 78 */	mr r3, r6
/* 80244284 002411E4  38 A0 00 01 */	li r5, 1
/* 80244288 002411E8  4B FC AB 21 */	bl SetSurroundMode__12CGameOptionsFQ29CAudioSys14ESurroundModesi
/* 8024428C 002411EC  48 00 00 48 */	b lbl_802442D4
.global lbl_80244290
lbl_80244290:
/* 80244290 002411F0  7C 04 00 D0 */	neg r0, r4
/* 80244294 002411F4  7C C3 33 78 */	mr r3, r6
/* 80244298 002411F8  7C 00 20 78 */	andc r0, r0, r4
/* 8024429C 002411FC  54 04 0F FE */	srwi r4, r0, 0x1f
/* 802442A0 00241200  4B FC AA 69 */	bl SetInvertYAxis__12CGameOptionsFb
/* 802442A4 00241204  48 00 00 30 */	b lbl_802442D4
.global lbl_802442A8
lbl_802442A8:
/* 802442A8 00241208  7C 04 00 D0 */	neg r0, r4
/* 802442AC 0024120C  7C C3 33 78 */	mr r3, r6
/* 802442B0 00241210  7C 00 20 78 */	andc r0, r0, r4
/* 802442B4 00241214  54 04 0F FE */	srwi r4, r0, 0x1f
/* 802442B8 00241218  4B FC AA 41 */	bl SetIsRumbleEnabled__12CGameOptionsFb
/* 802442BC 0024121C  48 00 00 18 */	b lbl_802442D4
.global lbl_802442C0
lbl_802442C0:
/* 802442C0 00241220  7C 04 00 D0 */	neg r0, r4
/* 802442C4 00241224  7C C3 33 78 */	mr r3, r6
/* 802442C8 00241228  7C 00 20 78 */	andc r0, r0, r4
/* 802442CC 0024122C  54 04 0F FE */	srwi r4, r0, 0x1f
/* 802442D0 00241230  4B FC A9 E5 */	bl ToggleControls__12CGameOptionsFb
lbl_802442D4:
/* 802442D4 00241234  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802442D8 00241238  7C 08 03 A6 */	mtlr r0
/* 802442DC 0024123C  38 21 00 10 */	addi r1, r1, 0x10
/* 802442E0 00241240  4E 80 00 20 */	blr

.global GetOption__11CGameOptionF11EGameOption
GetOption__11CGameOptionF11EGameOption:
/* 802442E4 00241244  28 03 00 0D */	cmplwi r3, 0xd
/* 802442E8 00241248  80 AD A0 80 */	lwz r5, gpGameState@sda21(r13)
/* 802442EC 0024124C  41 81 00 DC */	bgt lbl_802443C8
/* 802442F0 00241250  3C 80 80 3F */	lis r4, lbl_803E8864@ha
/* 802442F4 00241254  54 60 10 3A */	slwi r0, r3, 2
/* 802442F8 00241258  38 64 88 64 */	addi r3, r4, lbl_803E8864@l
/* 802442FC 0024125C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80244300 00241260  7C 09 03 A6 */	mtctr r0
/* 80244304 00241264  4E 80 04 20 */	bctr
.global lbl_80244308
lbl_80244308:
/* 80244308 00241268  80 65 01 DC */	lwz r3, 0x1dc(r5)
/* 8024430C 0024126C  4E 80 00 20 */	blr
.global lbl_80244310
lbl_80244310:
/* 80244310 00241270  80 65 01 E0 */	lwz r3, 0x1e0(r5)
/* 80244314 00241274  4E 80 00 20 */	blr
.global lbl_80244318
lbl_80244318:
/* 80244318 00241278  88 05 01 E4 */	lbz r0, 0x1e4(r5)
/* 8024431C 0024127C  54 03 CF FE */	rlwinm r3, r0, 0x19, 0x1f, 0x1f
/* 80244320 00241280  7C 03 00 D0 */	neg r0, r3
/* 80244324 00241284  7C 00 1B 78 */	or r0, r0, r3
/* 80244328 00241288  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8024432C 0024128C  4E 80 00 20 */	blr
.global lbl_80244330
lbl_80244330:
/* 80244330 00241290  88 05 01 E4 */	lbz r0, 0x1e4(r5)
/* 80244334 00241294  54 03 EF FE */	rlwinm r3, r0, 0x1d, 0x1f, 0x1f
/* 80244338 00241298  7C 03 00 D0 */	neg r0, r3
/* 8024433C 0024129C  7C 00 1B 78 */	or r0, r0, r3
/* 80244340 002412A0  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80244344 002412A4  4E 80 00 20 */	blr
.global lbl_80244348
lbl_80244348:
/* 80244348 002412A8  80 65 01 C4 */	lwz r3, 0x1c4(r5)
/* 8024434C 002412AC  4E 80 00 20 */	blr
.global lbl_80244350
lbl_80244350:
/* 80244350 002412B0  80 65 01 C8 */	lwz r3, 0x1c8(r5)
/* 80244354 002412B4  4E 80 00 20 */	blr
.global lbl_80244358
lbl_80244358:
/* 80244358 002412B8  80 65 01 CC */	lwz r3, 0x1cc(r5)
/* 8024435C 002412BC  4E 80 00 20 */	blr
.global lbl_80244360
lbl_80244360:
/* 80244360 002412C0  80 65 01 D0 */	lwz r3, 0x1d0(r5)
/* 80244364 002412C4  4E 80 00 20 */	blr
.global lbl_80244368
lbl_80244368:
/* 80244368 002412C8  80 65 01 D4 */	lwz r3, 0x1d4(r5)
/* 8024436C 002412CC  4E 80 00 20 */	blr
.global lbl_80244370
lbl_80244370:
/* 80244370 002412D0  80 65 01 D8 */	lwz r3, 0x1d8(r5)
/* 80244374 002412D4  4E 80 00 20 */	blr
.global lbl_80244378
lbl_80244378:
/* 80244378 002412D8  80 65 01 C0 */	lwz r3, 0x1c0(r5)
/* 8024437C 002412DC  4E 80 00 20 */	blr
.global lbl_80244380
lbl_80244380:
/* 80244380 002412E0  88 05 01 E4 */	lbz r0, 0x1e4(r5)
/* 80244384 002412E4  54 03 D7 FE */	rlwinm r3, r0, 0x1a, 0x1f, 0x1f
/* 80244388 002412E8  7C 03 00 D0 */	neg r0, r3
/* 8024438C 002412EC  7C 00 1B 78 */	or r0, r0, r3
/* 80244390 002412F0  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80244394 002412F4  4E 80 00 20 */	blr
.global lbl_80244398
lbl_80244398:
/* 80244398 002412F8  88 05 01 E4 */	lbz r0, 0x1e4(r5)
/* 8024439C 002412FC  54 03 DF FE */	rlwinm r3, r0, 0x1b, 0x1f, 0x1f
/* 802443A0 00241300  7C 03 00 D0 */	neg r0, r3
/* 802443A4 00241304  7C 00 1B 78 */	or r0, r0, r3
/* 802443A8 00241308  54 03 0F FE */	srwi r3, r0, 0x1f
/* 802443AC 0024130C  4E 80 00 20 */	blr
.global lbl_802443B0
lbl_802443B0:
/* 802443B0 00241310  88 05 01 E4 */	lbz r0, 0x1e4(r5)
/* 802443B4 00241314  54 03 E7 FE */	rlwinm r3, r0, 0x1c, 0x1f, 0x1f
/* 802443B8 00241318  7C 03 00 D0 */	neg r0, r3
/* 802443BC 0024131C  7C 00 1B 78 */	or r0, r0, r3
/* 802443C0 00241320  54 03 0F FE */	srwi r3, r0, 0x1f
/* 802443C4 00241324  4E 80 00 20 */	blr
lbl_802443C8:
/* 802443C8 00241328  38 60 00 00 */	li r3, 0
/* 802443CC 0024132C  4E 80 00 20 */	blr

.global sub_802443d0
sub_802443d0:
/* 802443D0 00241330  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802443D4 00241334  7C 08 02 A6 */	mflr r0
/* 802443D8 00241338  90 01 00 44 */	stw r0, 0x44(r1)
/* 802443DC 0024133C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802443E0 00241340  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802443E4 00241344  7C BE 2B 78 */	mr r30, r5
/* 802443E8 00241348  93 A1 00 34 */	stw r29, 0x34(r1)
/* 802443EC 0024134C  7C 9D 23 78 */	mr r29, r4
/* 802443F0 00241350  93 81 00 30 */	stw r28, 0x30(r1)
/* 802443F4 00241354  7C 7C 1B 78 */	mr r28, r3
/* 802443F8 00241358  48 07 DD 5D */	bl FindWidget__9CGuiFrameCFPCc
/* 802443FC 0024135C  7C 7F 1B 78 */	mr r31, r3
/* 80244400 00241360  7F C4 F3 78 */	mr r4, r30
/* 80244404 00241364  38 61 00 20 */	addi r3, r1, 0x20
/* 80244408 00241368  38 C1 00 0C */	addi r6, r1, 0xc
/* 8024440C 0024136C  38 A0 FF FF */	li r5, -1
/* 80244410 00241370  48 0F 93 AD */	bl "__ct__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>FPCwiRCQ24rstl17rmemory_allocator"
/* 80244414 00241374  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 80244418 00241378  38 81 00 20 */	addi r4, r1, 0x20
/* 8024441C 0024137C  38 A0 00 00 */	li r5, 0
/* 80244420 00241380  48 08 54 65 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80244424 00241384  38 61 00 20 */	addi r3, r1, 0x20
/* 80244428 00241388  48 0F 8D 0D */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8024442C 0024138C  3C 60 80 3D */	lis r3, lbl_803D45B4@ha
/* 80244430 00241390  7F A4 EB 78 */	mr r4, r29
/* 80244434 00241394  38 63 45 B4 */	addi r3, r3, lbl_803D45B4@l
/* 80244438 00241398  38 63 01 37 */	addi r3, r3, 0x137
/* 8024443C 0024139C  4C C6 31 82 */	crclr 6
/* 80244440 002413A0  48 09 1D 71 */	bl Stringize__7CBasicsFPCce
/* 80244444 002413A4  7C 64 1B 78 */	mr r4, r3
/* 80244448 002413A8  7F 83 E3 78 */	mr r3, r28
/* 8024444C 002413AC  48 07 DD 09 */	bl FindWidget__9CGuiFrameCFPCc
/* 80244450 002413B0  7C 7F 1B 78 */	mr r31, r3
/* 80244454 002413B4  7F C4 F3 78 */	mr r4, r30
/* 80244458 002413B8  38 61 00 10 */	addi r3, r1, 0x10
/* 8024445C 002413BC  38 C1 00 08 */	addi r6, r1, 8
/* 80244460 002413C0  38 A0 FF FF */	li r5, -1
/* 80244464 002413C4  48 0F 93 59 */	bl "__ct__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>FPCwiRCQ24rstl17rmemory_allocator"
/* 80244468 002413C8  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 8024446C 002413CC  38 81 00 10 */	addi r4, r1, 0x10
/* 80244470 002413D0  38 A0 00 00 */	li r5, 0
/* 80244474 002413D4  48 08 54 11 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80244478 002413D8  38 61 00 10 */	addi r3, r1, 0x10
/* 8024447C 002413DC  48 0F 8C B9 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 80244480 002413E0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80244484 002413E4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80244488 002413E8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8024448C 002413EC  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80244490 002413F0  83 81 00 30 */	lwz r28, 0x30(r1)
/* 80244494 002413F4  7C 08 03 A6 */	mtlr r0
/* 80244498 002413F8  38 21 00 40 */	addi r1, r1, 0x40
/* 8024449C 002413FC  4E 80 00 20 */	blr

.global SetColors__15CQuitGameScreenFv
SetColors__15CQuitGameScreenFv:
/* 802444A0 00241400  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802444A4 00241404  7C 08 02 A6 */	mflr r0
/* 802444A8 00241408  38 A0 00 C8 */	li r5, 0xc8
/* 802444AC 0024140C  38 80 00 FF */	li r4, 0xff
/* 802444B0 00241410  90 01 00 24 */	stw r0, 0x24(r1)
/* 802444B4 00241414  38 00 00 32 */	li r0, 0x32
/* 802444B8 00241418  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802444BC 0024141C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802444C0 00241420  3B C0 00 00 */	li r30, 0
/* 802444C4 00241424  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802444C8 00241428  7C 7D 1B 78 */	mr r29, r3
/* 802444CC 0024142C  98 A1 00 0C */	stb r5, 0xc(r1)
/* 802444D0 00241430  98 A1 00 0D */	stb r5, 0xd(r1)
/* 802444D4 00241434  98 A1 00 0E */	stb r5, 0xe(r1)
/* 802444D8 00241438  98 81 00 0F */	stb r4, 0xf(r1)
/* 802444DC 0024143C  98 01 00 08 */	stb r0, 8(r1)
/* 802444E0 00241440  98 01 00 09 */	stb r0, 9(r1)
/* 802444E4 00241444  98 01 00 0A */	stb r0, 0xa(r1)
/* 802444E8 00241448  98 81 00 0B */	stb r4, 0xb(r1)
/* 802444EC 0024144C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802444F0 00241450  83 E3 00 C4 */	lwz r31, 0xc4(r3)
lbl_802444F4:
/* 802444F4 00241454  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 802444F8 00241458  7F C4 F3 78 */	mr r4, r30
/* 802444FC 0024145C  81 83 00 00 */	lwz r12, 0(r3)
/* 80244500 00241460  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80244504 00241464  7D 89 03 A6 */	mtctr r12
/* 80244508 00241468  4E 80 04 21 */	bctrl
/* 8024450C 0024146C  7C 1E F8 00 */	cmpw r30, r31
/* 80244510 00241470  38 81 00 08 */	addi r4, r1, 8
/* 80244514 00241474  40 82 00 08 */	bne lbl_8024451C
/* 80244518 00241478  38 81 00 0C */	addi r4, r1, 0xc
lbl_8024451C:
/* 8024451C 0024147C  48 08 63 51 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80244520 00241480  3B DE 00 01 */	addi r30, r30, 1
/* 80244524 00241484  2C 1E 00 02 */	cmpwi r30, 2
/* 80244528 00241488  41 80 FF CC */	blt lbl_802444F4
/* 8024452C 0024148C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80244530 00241490  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80244534 00241494  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80244538 00241498  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8024453C 0024149C  7C 08 03 A6 */	mtlr r0
/* 80244540 002414A0  38 21 00 20 */	addi r1, r1, 0x20
/* 80244544 002414A4  4E 80 00 20 */	blr

.global FinishedLoading__15CQuitGameScreenFv
FinishedLoading__15CQuitGameScreenFv:
/* 80244548 002414A8  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8024454C 002414AC  7C 08 02 A6 */	mflr r0
/* 80244550 002414B0  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80244554 002414B4  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 80244558 002414B8  7C 7F 1B 78 */	mr r31, r3
/* 8024455C 002414BC  3C 60 80 3D */	lis r3, lbl_803D45B4@ha
/* 80244560 002414C0  93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 80244564 002414C4  38 63 45 B4 */	addi r3, r3, lbl_803D45B4@l
/* 80244568 002414C8  38 83 01 3B */	addi r4, r3, 0x13b
/* 8024456C 002414CC  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80244570 002414D0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80244574 002414D4  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80244578 002414D8  48 07 DB DD */	bl FindWidget__9CGuiFrameCFPCc
/* 8024457C 002414DC  90 7F 00 14 */	stw r3, 0x14(r31)
/* 80244580 002414E0  3C 80 80 3F */	lis r4, lbl_803E8708@ha
/* 80244584 002414E4  38 00 00 00 */	li r0, 0
/* 80244588 002414E8  38 61 00 14 */	addi r3, r1, 0x14
/* 8024458C 002414EC  80 DF 00 14 */	lwz r6, 0x14(r31)
/* 80244590 002414F0  39 04 87 08 */	addi r8, r4, lbl_803E8708@l
/* 80244594 002414F4  38 81 00 5C */	addi r4, r1, 0x5c
/* 80244598 002414F8  38 A0 00 0C */	li r5, 0xc
/* 8024459C 002414FC  98 06 00 D1 */	stb r0, 0xd1(r6)
/* 802445A0 00241500  80 E8 00 00 */	lwz r7, 0(r8)
/* 802445A4 00241504  80 C8 00 04 */	lwz r6, 4(r8)
/* 802445A8 00241508  80 08 00 08 */	lwz r0, 8(r8)
/* 802445AC 0024150C  90 E1 00 5C */	stw r7, 0x5c(r1)
/* 802445B0 00241510  90 C1 00 60 */	stw r6, 0x60(r1)
/* 802445B4 00241514  90 01 00 64 */	stw r0, 0x64(r1)
/* 802445B8 00241518  4B DB EE D9 */	bl memcpy
/* 802445BC 0024151C  3C 60 80 24 */	lis r3, sub_80244800@ha
/* 802445C0 00241520  93 E1 00 84 */	stw r31, 0x84(r1)
/* 802445C4 00241524  38 03 48 00 */	addi r0, r3, sub_80244800@l
/* 802445C8 00241528  38 61 00 88 */	addi r3, r1, 0x88
/* 802445CC 0024152C  90 01 00 80 */	stw r0, 0x80(r1)
/* 802445D0 00241530  38 81 00 14 */	addi r4, r1, 0x14
/* 802445D4 00241534  38 A0 00 0C */	li r5, 0xc
/* 802445D8 00241538  4B DB EE B9 */	bl memcpy
/* 802445DC 0024153C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 802445E0 00241540  38 81 00 80 */	addi r4, r1, 0x80
/* 802445E4 00241544  48 08 22 75 */	bl "SetMenuAdvanceCallback__14CGuiTableGroupFRC29TFunctor1<CP14CGuiTableGroup>"
/* 802445E8 00241548  3C 80 80 3F */	lis r4, lbl_803E8714@ha
/* 802445EC 0024154C  38 61 00 08 */	addi r3, r1, 8
/* 802445F0 00241550  39 04 87 14 */	addi r8, r4, lbl_803E8714@l
/* 802445F4 00241554  38 81 00 50 */	addi r4, r1, 0x50
/* 802445F8 00241558  80 E8 00 00 */	lwz r7, 0(r8)
/* 802445FC 0024155C  38 A0 00 0C */	li r5, 0xc
/* 80244600 00241560  80 C8 00 04 */	lwz r6, 4(r8)
/* 80244604 00241564  80 08 00 08 */	lwz r0, 8(r8)
/* 80244608 00241568  90 E1 00 50 */	stw r7, 0x50(r1)
/* 8024460C 0024156C  90 C1 00 54 */	stw r6, 0x54(r1)
/* 80244610 00241570  90 01 00 58 */	stw r0, 0x58(r1)
/* 80244614 00241574  4B DB EE 7D */	bl memcpy
/* 80244618 00241578  3C 60 80 24 */	lis r3, sub_8024479c@ha
/* 8024461C 0024157C  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80244620 00241580  38 03 47 9C */	addi r0, r3, sub_8024479c@l
/* 80244624 00241584  38 61 00 70 */	addi r3, r1, 0x70
/* 80244628 00241588  90 01 00 68 */	stw r0, 0x68(r1)
/* 8024462C 0024158C  38 81 00 08 */	addi r4, r1, 8
/* 80244630 00241590  38 A0 00 0C */	li r5, 0xc
/* 80244634 00241594  4B DB EE 5D */	bl memcpy
/* 80244638 00241598  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8024463C 0024159C  38 81 00 68 */	addi r4, r1, 0x68
/* 80244640 002415A0  48 08 21 B1 */	bl "SetMenuSelectionChangeCallback__14CGuiTableGroupFRC35TFunctor3<CP14CGuiTableGroup,Ci,Ci>"
/* 80244644 002415A4  3C 80 80 3D */	lis r4, lbl_803D45B4@ha
/* 80244648 002415A8  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8024464C 002415AC  38 84 45 B4 */	addi r4, r4, lbl_803D45B4@l
/* 80244650 002415B0  38 84 00 C6 */	addi r4, r4, 0xc6
/* 80244654 002415B4  48 07 DB 01 */	bl FindWidget__9CGuiFrameCFPCc
/* 80244658 002415B8  80 1F 00 00 */	lwz r0, 0(r31)
/* 8024465C 002415BC  3C 80 80 3D */	lis r4, lbl_803D43C8@ha
/* 80244660 002415C0  7C 7E 1B 78 */	mr r30, r3
/* 80244664 002415C4  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 80244668 002415C8  54 00 10 3A */	slwi r0, r0, 2
/* 8024466C 002415CC  38 84 43 C8 */	addi r4, r4, lbl_803D43C8@l
/* 80244670 002415D0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80244674 002415D4  48 11 20 89 */	bl GetString__12CStringTableCFi
/* 80244678 002415D8  7C 64 1B 78 */	mr r4, r3
/* 8024467C 002415DC  38 61 00 40 */	addi r3, r1, 0x40
/* 80244680 002415E0  4B DD 13 71 */	bl wstring_l__4rstlFPCw
/* 80244684 002415E4  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 80244688 002415E8  38 81 00 40 */	addi r4, r1, 0x40
/* 8024468C 002415EC  38 A0 00 00 */	li r5, 0
/* 80244690 002415F0  48 08 51 F5 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80244694 002415F4  38 61 00 40 */	addi r3, r1, 0x40
/* 80244698 002415F8  48 0F 8A 9D */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8024469C 002415FC  3C 80 80 3D */	lis r4, lbl_803D45B4@ha
/* 802446A0 00241600  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 802446A4 00241604  38 84 45 B4 */	addi r4, r4, lbl_803D45B4@l
/* 802446A8 00241608  38 84 01 4F */	addi r4, r4, 0x14f
/* 802446AC 0024160C  48 07 DA A9 */	bl FindWidget__9CGuiFrameCFPCc
/* 802446B0 00241610  7C 7E 1B 78 */	mr r30, r3
/* 802446B4 00241614  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 802446B8 00241618  38 80 00 16 */	li r4, 0x16
/* 802446BC 0024161C  48 11 20 41 */	bl GetString__12CStringTableCFi
/* 802446C0 00241620  7C 64 1B 78 */	mr r4, r3
/* 802446C4 00241624  38 61 00 30 */	addi r3, r1, 0x30
/* 802446C8 00241628  4B DD 13 29 */	bl wstring_l__4rstlFPCw
/* 802446CC 0024162C  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 802446D0 00241630  38 81 00 30 */	addi r4, r1, 0x30
/* 802446D4 00241634  38 A0 00 00 */	li r5, 0
/* 802446D8 00241638  48 08 51 AD */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 802446DC 0024163C  38 61 00 30 */	addi r3, r1, 0x30
/* 802446E0 00241640  48 0F 8A 55 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 802446E4 00241644  3C 80 80 3D */	lis r4, lbl_803D45B4@ha
/* 802446E8 00241648  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 802446EC 0024164C  38 84 45 B4 */	addi r4, r4, lbl_803D45B4@l
/* 802446F0 00241650  38 84 01 5C */	addi r4, r4, 0x15c
/* 802446F4 00241654  48 07 DA 61 */	bl FindWidget__9CGuiFrameCFPCc
/* 802446F8 00241658  7C 7E 1B 78 */	mr r30, r3
/* 802446FC 0024165C  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 80244700 00241660  38 80 00 17 */	li r4, 0x17
/* 80244704 00241664  48 11 1F F9 */	bl GetString__12CStringTableCFi
/* 80244708 00241668  7C 64 1B 78 */	mr r4, r3
/* 8024470C 0024166C  38 61 00 20 */	addi r3, r1, 0x20
/* 80244710 00241670  4B DD 12 E1 */	bl wstring_l__4rstlFPCw
/* 80244714 00241674  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 80244718 00241678  38 81 00 20 */	addi r4, r1, 0x20
/* 8024471C 0024167C  38 A0 00 00 */	li r5, 0
/* 80244720 00241680  48 08 51 65 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80244724 00241684  38 61 00 20 */	addi r3, r1, 0x20
/* 80244728 00241688  48 0F 8A 0D */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8024472C 0024168C  3C 60 80 3D */	lis r3, lbl_803D43F0@ha
/* 80244730 00241690  81 7F 00 14 */	lwz r11, 0x14(r31)
/* 80244734 00241694  38 C3 43 F0 */	addi r6, r3, lbl_803D43F0@l
/* 80244738 00241698  80 1F 00 00 */	lwz r0, 0(r31)
/* 8024473C 0024169C  81 46 00 00 */	lwz r10, 0(r6)
/* 80244740 002416A0  38 81 00 98 */	addi r4, r1, 0x98
/* 80244744 002416A4  81 26 00 04 */	lwz r9, 4(r6)
/* 80244748 002416A8  54 05 10 3A */	slwi r5, r0, 2
/* 8024474C 002416AC  81 06 00 08 */	lwz r8, 8(r6)
/* 80244750 002416B0  7F E3 FB 78 */	mr r3, r31
/* 80244754 002416B4  80 E6 00 0C */	lwz r7, 0xc(r6)
/* 80244758 002416B8  80 C6 00 10 */	lwz r6, 0x10(r6)
/* 8024475C 002416BC  80 0B 00 C4 */	lwz r0, 0xc4(r11)
/* 80244760 002416C0  91 41 00 98 */	stw r10, 0x98(r1)
/* 80244764 002416C4  91 21 00 9C */	stw r9, 0x9c(r1)
/* 80244768 002416C8  91 01 00 A0 */	stw r8, 0xa0(r1)
/* 8024476C 002416CC  90 E1 00 A4 */	stw r7, 0xa4(r1)
/* 80244770 002416D0  90 C1 00 A8 */	stw r6, 0xa8(r1)
/* 80244774 002416D4  90 0B 00 C8 */	stw r0, 0xc8(r11)
/* 80244778 002416D8  7C 04 28 2E */	lwzx r0, r4, r5
/* 8024477C 002416DC  90 0B 00 C4 */	stw r0, 0xc4(r11)
/* 80244780 002416E0  4B FF FD 21 */	bl SetColors__15CQuitGameScreenFv
/* 80244784 002416E4  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80244788 002416E8  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 8024478C 002416EC  83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 80244790 002416F0  7C 08 03 A6 */	mtlr r0
/* 80244794 002416F4  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80244798 002416F8  4E 80 00 20 */	blr

.global sub_8024479c
sub_8024479c:
/* 8024479C 002416FC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802447A0 00241700  7C 08 02 A6 */	mflr r0
/* 802447A4 00241704  90 01 00 34 */	stw r0, 0x34(r1)
/* 802447A8 00241708  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802447AC 0024170C  7C DF 33 78 */	mr r31, r6
/* 802447B0 00241710  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802447B4 00241714  7C BE 2B 78 */	mr r30, r5
/* 802447B8 00241718  38 A0 00 0C */	li r5, 0xc
/* 802447BC 0024171C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802447C0 00241720  7C 7D 1B 78 */	mr r29, r3
/* 802447C4 00241724  38 61 00 08 */	addi r3, r1, 8
/* 802447C8 00241728  4B DB EC C9 */	bl memcpy
/* 802447CC 0024172C  7F A3 EB 78 */	mr r3, r29
/* 802447D0 00241730  7F C4 F3 78 */	mr r4, r30
/* 802447D4 00241734  7F E5 FB 78 */	mr r5, r31
/* 802447D8 00241738  39 81 00 08 */	addi r12, r1, 8
/* 802447DC 0024173C  48 14 51 51 */	bl __ptmf_scall
/* 802447E0 00241740  60 00 00 00 */	nop
/* 802447E4 00241744  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802447E8 00241748  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802447EC 0024174C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802447F0 00241750  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802447F4 00241754  7C 08 03 A6 */	mtlr r0
/* 802447F8 00241758  38 21 00 30 */	addi r1, r1, 0x30
/* 802447FC 0024175C  4E 80 00 20 */	blr

.global sub_80244800
sub_80244800:
/* 80244800 00241760  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80244804 00241764  7C 08 02 A6 */	mflr r0
/* 80244808 00241768  90 01 00 24 */	stw r0, 0x24(r1)
/* 8024480C 0024176C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80244810 00241770  7C BF 2B 78 */	mr r31, r5
/* 80244814 00241774  38 A0 00 0C */	li r5, 0xc
/* 80244818 00241778  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8024481C 0024177C  7C 7E 1B 78 */	mr r30, r3
/* 80244820 00241780  38 61 00 08 */	addi r3, r1, 8
/* 80244824 00241784  4B DB EC 6D */	bl memcpy
/* 80244828 00241788  7F C3 F3 78 */	mr r3, r30
/* 8024482C 0024178C  7F E4 FB 78 */	mr r4, r31
/* 80244830 00241790  39 81 00 08 */	addi r12, r1, 8
/* 80244834 00241794  48 14 50 F9 */	bl __ptmf_scall
/* 80244838 00241798  60 00 00 00 */	nop
/* 8024483C 0024179C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80244840 002417A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80244844 002417A4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80244848 002417A8  7C 08 03 A6 */	mtlr r0
/* 8024484C 002417AC  38 21 00 20 */	addi r1, r1, 0x20
/* 80244850 002417B0  4E 80 00 20 */	blr

.global DoSelectionChange__15CQuitGameScreenFP14CGuiTableGroup
DoSelectionChange__15CQuitGameScreenFP14CGuiTableGroup:
/* 80244854 002417B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80244858 002417B8  7C 08 02 A6 */	mflr r0
/* 8024485C 002417BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80244860 002417C0  4B FF FC 41 */	bl SetColors__15CQuitGameScreenFv
/* 80244864 002417C4  A9 02 C5 FA */	lha r8, kMedPriority__11CSfxManager@sda21(r2)
/* 80244868 002417C8  38 61 00 08 */	addi r3, r1, 8
/* 8024486C 002417CC  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 80244870 002417D0  38 80 05 90 */	li r4, 0x590
/* 80244874 002417D4  38 A0 00 7F */	li r5, 0x7f
/* 80244878 002417D8  38 C0 00 40 */	li r6, 0x40
/* 8024487C 002417DC  38 E0 00 00 */	li r7, 0
/* 80244880 002417E0  39 20 00 00 */	li r9, 0
/* 80244884 002417E4  48 0A 54 F1 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 80244888 002417E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024488C 002417EC  7C 08 03 A6 */	mtlr r0
/* 80244890 002417F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80244894 002417F4  4E 80 00 20 */	blr

.global DoAdvance__15CQuitGameScreenFP14CGuiTableGroup
DoAdvance__15CQuitGameScreenFP14CGuiTableGroup:
/* 80244898 002417F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8024489C 002417FC  7C 08 02 A6 */	mflr r0
/* 802448A0 00241800  90 01 00 24 */	stw r0, 0x24(r1)
/* 802448A4 00241804  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802448A8 00241808  7C 7F 1B 78 */	mr r31, r3
/* 802448AC 0024180C  80 04 00 C4 */	lwz r0, 0xc4(r4)
/* 802448B0 00241810  2C 00 00 00 */	cmpwi r0, 0
/* 802448B4 00241814  40 82 00 34 */	bne lbl_802448E8
/* 802448B8 00241818  A9 02 C5 FA */	lha r8, kMedPriority__11CSfxManager@sda21(r2)
/* 802448BC 0024181C  38 61 00 0C */	addi r3, r1, 0xc
/* 802448C0 00241820  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 802448C4 00241824  38 80 05 98 */	li r4, 0x598
/* 802448C8 00241828  38 A0 00 7F */	li r5, 0x7f
/* 802448CC 0024182C  38 C0 00 40 */	li r6, 0x40
/* 802448D0 00241830  38 E0 00 00 */	li r7, 0
/* 802448D4 00241834  39 20 00 00 */	li r9, 0
/* 802448D8 00241838  48 0A 54 9D */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 802448DC 0024183C  38 00 00 01 */	li r0, 1
/* 802448E0 00241840  90 1F 00 18 */	stw r0, 0x18(r31)
/* 802448E4 00241844  48 00 00 30 */	b lbl_80244914
lbl_802448E8:
/* 802448E8 00241848  A9 02 C5 FA */	lha r8, kMedPriority__11CSfxManager@sda21(r2)
/* 802448EC 0024184C  38 61 00 08 */	addi r3, r1, 8
/* 802448F0 00241850  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 802448F4 00241854  38 80 05 97 */	li r4, 0x597
/* 802448F8 00241858  38 A0 00 7F */	li r5, 0x7f
/* 802448FC 0024185C  38 C0 00 40 */	li r6, 0x40
/* 80244900 00241860  38 E0 00 00 */	li r7, 0
/* 80244904 00241864  39 20 00 00 */	li r9, 0
/* 80244908 00241868  48 0A 54 6D */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 8024490C 0024186C  38 00 00 02 */	li r0, 2
/* 80244910 00241870  90 1F 00 18 */	stw r0, 0x18(r31)
lbl_80244914:
/* 80244914 00241874  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80244918 00241878  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8024491C 0024187C  7C 08 03 A6 */	mtlr r0
/* 80244920 00241880  38 21 00 20 */	addi r1, r1, 0x20
/* 80244924 00241884  4E 80 00 20 */	blr

.global Update__15CQuitGameScreenFv
Update__15CQuitGameScreenFv:
/* 80244928 00241888  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024492C 0024188C  7C 08 02 A6 */	mflr r0
/* 80244930 00241890  90 01 00 14 */	stw r0, 0x14(r1)
/* 80244934 00241894  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80244938 00241898  7C 7F 1B 78 */	mr r31, r3
/* 8024493C 0024189C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80244940 002418A0  28 00 00 00 */	cmplwi r0, 0
/* 80244944 002418A4  40 82 00 60 */	bne lbl_802449A4
/* 80244948 002418A8  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8024494C 002418AC  28 00 00 00 */	cmplwi r0, 0
/* 80244950 002418B0  41 82 00 0C */	beq lbl_8024495C
/* 80244954 002418B4  38 60 00 01 */	li r3, 1
/* 80244958 002418B8  48 00 00 3C */	b lbl_80244994
lbl_8024495C:
/* 8024495C 002418BC  88 1F 00 08 */	lbz r0, 8(r31)
/* 80244960 002418C0  28 00 00 00 */	cmplwi r0, 0
/* 80244964 002418C4  41 82 00 2C */	beq lbl_80244990
/* 80244968 002418C8  80 7F 00 04 */	lwz r3, 4(r31)
/* 8024496C 002418CC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80244970 002418D0  28 00 00 00 */	cmplwi r0, 0
/* 80244974 002418D4  41 82 00 1C */	beq lbl_80244990
/* 80244978 002418D8  38 7F 00 04 */	addi r3, r31, 4
/* 8024497C 002418DC  48 0F C4 91 */	bl GetObj__6CTokenFv
/* 80244980 002418E0  80 03 00 04 */	lwz r0, 4(r3)
/* 80244984 002418E4  38 60 00 01 */	li r3, 1
/* 80244988 002418E8  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8024498C 002418EC  48 00 00 08 */	b lbl_80244994
lbl_80244990:
/* 80244990 002418F0  38 60 00 00 */	li r3, 0
lbl_80244994:
/* 80244994 002418F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80244998 002418F8  41 82 00 0C */	beq lbl_802449A4
/* 8024499C 002418FC  7F E3 FB 78 */	mr r3, r31
/* 802449A0 00241900  4B FF FB A9 */	bl FinishedLoading__15CQuitGameScreenFv
lbl_802449A4:
/* 802449A4 00241904  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802449A8 00241908  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 802449AC 0024190C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802449B0 00241910  7C 08 03 A6 */	mtlr r0
/* 802449B4 00241914  38 21 00 10 */	addi r1, r1, 0x10
/* 802449B8 00241918  4E 80 00 20 */	blr

.global Draw__15CQuitGameScreenFv
Draw__15CQuitGameScreenFv:
/* 802449BC 0024191C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802449C0 00241920  7C 08 02 A6 */	mflr r0
/* 802449C4 00241924  90 01 00 54 */	stw r0, 0x54(r1)
/* 802449C8 00241928  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 802449CC 0024192C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 802449D0 00241930  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802449D4 00241934  7C 7F 1B 78 */	mr r31, r3
/* 802449D8 00241938  80 03 00 00 */	lwz r0, 0(r3)
/* 802449DC 0024193C  2C 00 00 00 */	cmpwi r0, 0
/* 802449E0 00241940  40 82 00 38 */	bne lbl_80244A18
/* 802449E4 00241944  48 10 55 D1 */	bl Black__6CColorFv
/* 802449E8 00241948  C3 E2 B8 38 */	lfs f31, lbl_805AD558@sda21(r2)
/* 802449EC 0024194C  F3 E1 A0 08 */	psq_st f31, 8(r1), 1, qr2
/* 802449F0 00241950  38 A1 00 0C */	addi r5, r1, 0xc
/* 802449F4 00241954  80 E3 00 00 */	lwz r7, 0(r3)
/* 802449F8 00241958  38 60 00 05 */	li r3, 5
/* 802449FC 0024195C  88 01 00 08 */	lbz r0, 8(r1)
/* 80244A00 00241960  38 80 00 00 */	li r4, 0
/* 80244A04 00241964  50 E0 00 2E */	rlwimi r0, r7, 0, 0, 0x17
/* 80244A08 00241968  C0 22 B8 14 */	lfs f1, lbl_805AD534@sda21(r2)
/* 80244A0C 0024196C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80244A10 00241970  38 C0 00 00 */	li r6, 0
/* 80244A14 00241974  4B EA 77 35 */	bl DrawFilter__17CCameraFilterPassFQ217CCameraFilterPass11EFilterTypeQ217CCameraFilterPass12EFilterShapeRC6CColorPC8CTexturef
lbl_80244A18:
/* 80244A18 00241978  3C 80 80 3D */	lis r4, lbl_803D43DC@ha
/* 80244A1C 0024197C  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80244A20 00241980  39 04 43 DC */	addi r8, r4, lbl_803D43DC@l
/* 80244A24 00241984  80 E8 00 00 */	lwz r7, 0(r8)
/* 80244A28 00241988  28 03 00 00 */	cmplwi r3, 0
/* 80244A2C 0024198C  80 C8 00 04 */	lwz r6, 4(r8)
/* 80244A30 00241990  80 A8 00 08 */	lwz r5, 8(r8)
/* 80244A34 00241994  80 88 00 0C */	lwz r4, 0xc(r8)
/* 80244A38 00241998  80 08 00 10 */	lwz r0, 0x10(r8)
/* 80244A3C 0024199C  90 E1 00 20 */	stw r7, 0x20(r1)
/* 80244A40 002419A0  90 C1 00 24 */	stw r6, 0x24(r1)
/* 80244A44 002419A4  90 A1 00 28 */	stw r5, 0x28(r1)
/* 80244A48 002419A8  90 81 00 2C */	stw r4, 0x2c(r1)
/* 80244A4C 002419AC  90 01 00 30 */	stw r0, 0x30(r1)
/* 80244A50 002419B0  41 82 00 34 */	beq lbl_80244A84
/* 80244A54 002419B4  80 1F 00 00 */	lwz r0, 0(r31)
/* 80244A58 002419B8  38 81 00 20 */	addi r4, r1, 0x20
/* 80244A5C 002419BC  C0 02 B8 10 */	lfs f0, lbl_805AD530@sda21(r2)
/* 80244A60 002419C0  54 00 10 3A */	slwi r0, r0, 2
/* 80244A64 002419C4  C0 22 B8 14 */	lfs f1, lbl_805AD534@sda21(r2)
/* 80244A68 002419C8  7C 44 04 2E */	lfsx f2, r4, r0
/* 80244A6C 002419CC  38 81 00 10 */	addi r4, r1, 0x10
/* 80244A70 002419D0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80244A74 002419D4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80244A78 002419D8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80244A7C 002419DC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80244A80 002419E0  48 07 DC B5 */	bl Draw__9CGuiFrameCFRC19CGuiWidgetDrawParms
lbl_80244A84:
/* 80244A84 002419E4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 80244A88 002419E8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80244A8C 002419EC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80244A90 002419F0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80244A94 002419F4  7C 08 03 A6 */	mtlr r0
/* 80244A98 002419F8  38 21 00 50 */	addi r1, r1, 0x50
/* 80244A9C 002419FC  4E 80 00 20 */	blr

.global ProcessUserInput__15CQuitGameScreenFRC11CFinalInput
ProcessUserInput__15CQuitGameScreenFRC11CFinalInput:
/* 80244AA0 00241A00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80244AA4 00241A04  7C 08 02 A6 */	mflr r0
/* 80244AA8 00241A08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80244AAC 00241A0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80244AB0 00241A10  7C 9F 23 78 */	mr r31, r4
/* 80244AB4 00241A14  93 C1 00 08 */	stw r30, 8(r1)
/* 80244AB8 00241A18  7C 7E 1B 78 */	mr r30, r3
/* 80244ABC 00241A1C  80 04 00 04 */	lwz r0, 4(r4)
/* 80244AC0 00241A20  2C 00 00 00 */	cmpwi r0, 0
/* 80244AC4 00241A24  40 82 00 34 */	bne lbl_80244AF8
/* 80244AC8 00241A28  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80244ACC 00241A2C  28 03 00 00 */	cmplwi r3, 0
/* 80244AD0 00241A30  41 82 00 28 */	beq lbl_80244AF8
/* 80244AD4 00241A34  48 07 DB 85 */	bl ProcessUserInput__9CGuiFrameFRC11CFinalInput
/* 80244AD8 00241A38  88 1F 00 2D */	lbz r0, 0x2d(r31)
/* 80244ADC 00241A3C  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 80244AE0 00241A40  41 82 00 18 */	beq lbl_80244AF8
/* 80244AE4 00241A44  80 1E 00 00 */	lwz r0, 0(r30)
/* 80244AE8 00241A48  2C 00 00 01 */	cmpwi r0, 1
/* 80244AEC 00241A4C  41 82 00 0C */	beq lbl_80244AF8
/* 80244AF0 00241A50  38 00 00 02 */	li r0, 2
/* 80244AF4 00241A54  90 1E 00 18 */	stw r0, 0x18(r30)
lbl_80244AF8:
/* 80244AF8 00241A58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80244AFC 00241A5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80244B00 00241A60  83 C1 00 08 */	lwz r30, 8(r1)
/* 80244B04 00241A64  7C 08 03 A6 */	mtlr r0
/* 80244B08 00241A68  38 21 00 10 */	addi r1, r1, 0x10
/* 80244B0C 00241A6C  4E 80 00 20 */	blr

.global __ct__15CQuitGameScreenF9EQuitType
__ct__15CQuitGameScreenF9EQuitType:
/* 80244B10 00241A70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80244B14 00241A74  7C 08 02 A6 */	mflr r0
/* 80244B18 00241A78  90 01 00 24 */	stw r0, 0x24(r1)
/* 80244B1C 00241A7C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80244B20 00241A80  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80244B24 00241A84  7C 7E 1B 78 */	mr r30, r3
/* 80244B28 00241A88  3C 60 80 3D */	lis r3, lbl_803D45B4@ha
/* 80244B2C 00241A8C  90 9E 00 00 */	stw r4, 0(r30)
/* 80244B30 00241A90  38 A3 45 B4 */	addi r5, r3, lbl_803D45B4@l
/* 80244B34 00241A94  38 61 00 08 */	addi r3, r1, 8
/* 80244B38 00241A98  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 80244B3C 00241A9C  38 A5 01 68 */	addi r5, r5, 0x168
/* 80244B40 00241AA0  81 84 00 00 */	lwz r12, 0(r4)
/* 80244B44 00241AA4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80244B48 00241AA8  7D 89 03 A6 */	mtctr r12
/* 80244B4C 00241AAC  4E 80 04 21 */	bctrl
/* 80244B50 00241AB0  3B FE 00 04 */	addi r31, r30, 4
/* 80244B54 00241AB4  38 81 00 08 */	addi r4, r1, 8
/* 80244B58 00241AB8  7F E3 FB 78 */	mr r3, r31
/* 80244B5C 00241ABC  48 0F C3 4D */	bl __ct__6CTokenFRC6CToken
/* 80244B60 00241AC0  38 00 00 00 */	li r0, 0
/* 80244B64 00241AC4  38 61 00 08 */	addi r3, r1, 8
/* 80244B68 00241AC8  90 1F 00 08 */	stw r0, 8(r31)
/* 80244B6C 00241ACC  38 80 FF FF */	li r4, -1
/* 80244B70 00241AD0  48 0F C2 D1 */	bl __dt__6CTokenFv
/* 80244B74 00241AD4  38 00 00 00 */	li r0, 0
/* 80244B78 00241AD8  7F E3 FB 78 */	mr r3, r31
/* 80244B7C 00241ADC  90 1E 00 10 */	stw r0, 0x10(r30)
/* 80244B80 00241AE0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80244B84 00241AE4  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80244B88 00241AE8  48 0F C1 FD */	bl Lock__6CTokenFv
/* 80244B8C 00241AEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80244B90 00241AF0  7F C3 F3 78 */	mr r3, r30
/* 80244B94 00241AF4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80244B98 00241AF8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80244B9C 00241AFC  7C 08 03 A6 */	mtlr r0
/* 80244BA0 00241B00  38 21 00 20 */	addi r1, r1, 0x20
/* 80244BA4 00241B04  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805AD530
lbl_805AD530:
	# ROM: 0x3F9DD0
	.4byte 0

.global lbl_805AD534
lbl_805AD534:
	# ROM: 0x3F9DD4
	.float 1.0

.global lbl_805AD538
lbl_805AD538:
	# ROM: 0x3F9DD8
	.double 4.503601774854144E15

.global lbl_805AD540
lbl_805AD540:
	# ROM: 0x3F9DE0
	.float 0.001

.global lbl_805AD544
lbl_805AD544:
	# ROM: 0x3F9DE4
	.float 4.0

.global lbl_805AD548
lbl_805AD548:
	# ROM: 0x3F9DE8
	.4byte 0x3727C5AC
	.4byte 0

.global lbl_805AD550
lbl_805AD550:
	# ROM: 0x3F9DF0
	.4byte 0x43300000
	.4byte 0

.global lbl_805AD558
lbl_805AD558:
	# ROM: 0x3F9DF8
	.4byte 0x42FF0000
	.4byte 0


.section .rodata
.balign 8
.global lbl_803D43C8
lbl_803D43C8:
	# ROM: 0x3D13C8
	.4byte 0x00000018
	.4byte 0x00000019
	.4byte 0x0000001A
	.4byte 0x0000001B
	.4byte 0x0000001C

.global lbl_803D43DC
lbl_803D43DC:
	# ROM: 0x3D13DC
	.4byte 0
	.4byte 0x3FCCCCCD
	.float 1.0
	.4byte 0
	.float 1.0

.global lbl_803D43F0
lbl_803D43F0:
	# ROM: 0x3D13F0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0

.global lbl_803D4404
lbl_803D4404:

	# ROM: 0x3D1404
	.4byte 0
	.4byte 0x00000015
	.4byte 0
	.float 255.0
	.float 1.0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000016
	.4byte 0
	.float 255.0
	.float 1.0
	.4byte 0
	.4byte 0x00000002
	.4byte 0x00000017
	.4byte 0
	.float 1.0
	.float 1.0
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x00000018
	.4byte 0
	.float 1.0
	.float 1.0
	.4byte 0x00000001
	.4byte 0x0000000E
	.4byte 0x00000023
	.4byte 0
	.float 1.0
	.float 1.0
	.4byte 0x00000003

.global lbl_803D447C
lbl_803D447C:

	# ROM: 0x3D147C
	.4byte 0x00000004
	.4byte 0x00000019
	.4byte 0
	.float 8.0
	.float 1.0
	.4byte 0
	.4byte 0x00000005
	.4byte 0x0000001A
	.4byte 0xC1F00000
	.4byte 0x41F00000
	.float 1.0
	.4byte 0
	.4byte 0x00000006
	.4byte 0x0000001B
	.4byte 0xC1F00000
	.4byte 0x41F00000
	.float 1.0
	.4byte 0
	.4byte 0x00000007
	.4byte 0x0000001C
	.4byte 0xC1200000
	.4byte 0x41200000
	.float 1.0
	.4byte 0
	.4byte 0x0000000E
	.4byte 0x00000023
	.4byte 0
	.float 1.0
	.float 1.0
	.4byte 0x00000003

.global lbl_803D44F4
lbl_803D44F4:

	# ROM: 0x3D14F4
	.4byte 0x00000008
	.4byte 0x0000001D
	.4byte 0
	.4byte 0x42FE0000
	.float 1.0
	.4byte 0
	.4byte 0x00000009
	.4byte 0x0000001E
	.4byte 0
	.4byte 0x42FE0000
	.float 1.0
	.4byte 0
	.4byte 0x0000000A
	.4byte 0x0000001F
	.4byte 0
	.float 2.0
	.float 1.0
	.4byte 0x00000002
	.4byte 0x0000000E
	.4byte 0x00000023
	.4byte 0
	.float 1.0
	.float 1.0
	.4byte 0x00000003

.global lbl_803D4554
lbl_803D4554:

	# ROM: 0x3D1554
	.4byte 0x0000000B
	.4byte 0x00000020
	.4byte 0
	.float 1.0
	.float 1.0
	.4byte 0x00000001
	.4byte 0x0000000C
	.4byte 0x00000021
	.4byte 0
	.float 1.0
	.float 1.0
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000022
	.4byte 0
	.float 1.0
	.float 1.0
	.4byte 0x00000001
	.4byte 0x0000000E
	.4byte 0x00000023
	.4byte 0
	.float 1.0
	.float 1.0
	.4byte 0x00000003

.global lbl_803D45B4
lbl_803D45B4:
	# ROM: 0x3D15B4
	.asciz "textpane_right%d"
	.byte 0x74, 0x61, 0x62
	.asciz "legroup_leftmenu"
	.byte 0x74, 0x61, 0x62
	.asciz "legroup_rightmenu"
	.byte 0x74, 0x61
	.asciz "blegroup_double"
	.asciz "tablegroup_triple"
	.byte 0x73, 0x6C
	.asciz "idergroup_slider"
	.byte 0x74, 0x65, 0x78
	.asciz "tpane_double0"
	.byte 0x74, 0x65
	.asciz "xtpane_double1"
	.byte 0x74
	.asciz "extpane_triple0"
	.asciz "textpane_triple1"
	.byte 0x74, 0x65, 0x78
	.asciz "tpane_triple2"
	.byte 0x74, 0x65
	.asciz "xtpane_title"
	.byte 0x74, 0x65, 0x78
	.asciz "tpane_proceed"
	.byte 0x74, 0x65
	.asciz "xtpane_cancel"
	.byte 0x74, 0x65
	.asciz "xtpane_filename%d"
	.byte 0x46, 0x52
	.asciz "ME_OptionsFrontEnd"
	.byte 0x53
	.asciz "TRG_PauseScreen"
	.asciz "??(??)"
	.byte 0x25
	.4byte 0x73620074
	.asciz "ablegroup_quitgame"
	.byte 0x74
	.asciz "extpane_yes"
	.asciz "textpane_no"
	.asciz "FRME_QuitScreen"
	.4byte 0
