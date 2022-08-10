.include "macros.inc"

.section .ctors, "wa"
lbl_ctor:
.4byte __sinit_CFrontEndUI_cpp

.section .data
.balign 8

.global lbl_803D9810
lbl_803D9810:
	# ROM: 0x3D6810
	.4byte 0
	.4byte 0
	.4byte __dt__21CArchMsgParmUserInputFv
	.4byte 0

.global lbl_803D9820
lbl_803D9820:
	# ROM: 0x3D6820
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DoAdvance__14SFrontEndFrameFPC14CGuiTableGroup
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DoSelectionChange__14SFrontEndFrameFPC14CGuiTableGroup
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DoCancel__14SFrontEndFrameFPC14CGuiTableGroup
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DoFileselectAdvance__19SNewFileSelectFrameFPC14CGuiTableGroup
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DoSelectionChange__19SNewFileSelectFrameFPC14CGuiTableGroup
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DoFileselectCancel__19SNewFileSelectFrameFPC14CGuiTableGroup
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DoPopupAdvance__19SNewFileSelectFrameFPC14CGuiTableGroup
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DoSelectionChange__19SNewFileSelectFrameFPC14CGuiTableGroup
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DoPopupCancel__19SNewFileSelectFrameFPC14CGuiTableGroup
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DoOptionsAdvance__17SFusionBonusFrameFPC14CGuiTableGroup
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DoSelectionChange__17SFusionBonusFrameFPC14CGuiTableGroup
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DoOptionsCancel__17SFusionBonusFrameFPC14CGuiTableGroup
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DoSelectionChange__17SFusionBonusFrameFPC14CGuiTableGroup

.global lbl_803D98BC
lbl_803D98BC:
	# ROM: 0x3D68BC
	.4byte 0
	.4byte 0
	.4byte __dt__11CFrontEndUIFv
	.4byte OnMessage__11CFrontEndUIFRC20CArchitectureMessageR18CArchitectureQueue
	.4byte GetIsContinueDraw__6CIOWinCFv
	.4byte Draw__11CFrontEndUICFv
	.4byte PreDraw__6CIOWinCFv

.global lbl_803D98D8
lbl_803D98D8:
	# ROM: 0x3D68D8
	.4byte lbl_80021B58
	.4byte lbl_80021B70
	.4byte lbl_80021B8C
	.4byte lbl_80021BA8
	.4byte lbl_80021BDC
	.4byte lbl_80021BF8
	.4byte lbl_80021C1C
	.4byte lbl_80021BC0
	.4byte lbl_80021C40
	.4byte lbl_80021C40

.global lbl_803D9900
lbl_803D9900:
	# ROM: 0x3D6900
	.4byte 0
	.4byte 0
	.4byte __dt__16CStateSetterFlowFv
	.4byte OnMessage__16CStateSetterFlowFv
	.4byte GetIsContinueDraw__6CIOWinCFv
	.4byte Draw__6CIOWinCFv
	.4byte PreDraw__6CIOWinCFv
	.4byte 0
	.4byte 0
	.4byte 0

.section .rodata
.balign 8
.global lbl_803CC540
lbl_803CC540:
	# ROM: 0x3C9540
	.4byte 0x803CC644
	.4byte 0
	.4byte 0x803CC65D
	.4byte 0x01000000
	.4byte 0x803CC674
	.4byte 0
	.4byte 0x803CC694
	.4byte 0x01000000
	.4byte 0x803CC6B0
	.4byte 0
	.4byte 0x803CC6D3
	.4byte 0
	.4byte 0x803CC6EF
	.4byte 0x01000000
	.4byte 0x803CC704
	.4byte 0
	.4byte 0x803CC704
	.4byte 0
	.asciz "!#$MetroidBuildInfo!#$Build v1.088 10/29/2002 2:21:25"
	.byte 0x50, 0x41
	.4byte 0x44000000

.global lbl_803CC5C4
lbl_803CC5C4:
	# ROM: 0x3C95C4
	.4byte 0x04420449
	.4byte 0x044A044B
	.4byte 0x044C044D

.global lbl_803CC5D0
lbl_803CC5D0:
	# ROM: 0x3C95D0
	.4byte 0x044E044F
	.4byte 0x04500451
	.4byte 0x04520453

.global lbl_803CC5DC
lbl_803CC5DC:
	# ROM: 0x3C95DC
	.4byte 0x40866666
	.4byte 0x40C33333
	.4byte 0x40C33333

.global lbl_803CC5E8
lbl_803CC5E8:
	# ROM: 0x3C95E8
	.4byte 0x3EE147AD
	.4byte 0x40AD1EB9
	.4byte 0x405A3D72

.global lbl_803CC5F4
lbl_803CC5F4:
	# ROM: 0x3C95F4
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0xFFFFFFFF
	.4byte 0x00000007
	.4byte 0x00000008
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF

.global lbl_803CC61C
lbl_803CC61C:
	# ROM: 0x3C961C
	.4byte 0x00000009
	.4byte 0x00000009
	.4byte 0x00000009
	.4byte 0x00000009
	.4byte 0xFFFFFFFF
	.4byte 0x00000009
	.4byte 0xFFFFFFFF
	.4byte 0x00000009
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF

.global lbl_803CC644
lbl_803CC644:
	# ROM: 0x3C9644
	.asciz "Video/00_first_start.thp"
	.byte 0x56, 0x69, 0x64
	.asciz "eo/01_startloop.thp"
	.asciz "Video/02_start_fileselect_A.thp"
	.asciz "Video/03_fileselectloop.thp"
	.asciz "Video/04_fileselect_playgame_A.thp"
	.byte 0x56
	.asciz "ideo/06_fileselect_GBA.thp"
	.byte 0x56
	.asciz "ideo/07_GBAloop.thp"
	.asciz "Video/08_GBA_fileselect.thp"
	.asciz "Audio/frontend_1.rsf"
	.byte 0x41, 0x75, 0x64
	.asciz "io/frontend_2.rsf"
	.byte 0x46, 0x72
	.asciz "ontEnd_AGSC"
	.asciz "??(??)"
	.byte 0x56
	.asciz "ideo/attract%d.thp"
	.byte 0x46
	.asciz "rontEndUI"
	.byte 0x46, 0x72
	.asciz "ontEnd_DGRP"
	.asciz "TXTR_PressStart"
	.asciz "tablegroup_options"
	.byte 0x74
	.asciz "ablegroup_fusionsuit"
	.byte 0x74, 0x65, 0x78
	.asciz "tpane_instructions"
	.byte 0x74
	.asciz "extpane_nes"
	.asciz "textpane_fusionsuit"
	.asciz "textpane_fusionsuitno"
	.byte 0x74, 0x65
	.asciz "xtpane_fusionsuityes"
	.byte 0x74, 0x65, 0x78
	.asciz "tpane_title"
	.asciz "textpane_proceed"
	.byte 0x74, 0x65, 0x78
	.asciz "tpane_cancel"
	.byte 0x46, 0x52, 0x4D
	.asciz "E_GBAScreen"
	.asciz "FRME_GBALink"
	.byte 0x20, 0x20, 0x25
	.asciz "02d%%"
	.byte 0x25, 0x30
	.asciz "2d:%02d"
	.asciz "tablegroup_fileselect"
	.byte 0x6D, 0x6F
	.asciz "del_erase"
	.byte 0x74, 0x65
	.asciz "xtpane_erase"
	.byte 0x74, 0x65, 0x78
	.asciz "tpane_gba"
	.byte 0x74, 0x65
	.asciz "xtpane_cheats"
	.byte 0x74, 0x65
	.asciz "xtpane_popupadvance"
	.asciz "textpane_popupcancel"
	.byte 0x74, 0x65, 0x78
	.asciz "tpane_popupextra"
	.byte 0x74, 0x61, 0x62
	.asciz "legroup_popup"
	.byte 0x6D, 0x6F
	.asciz "del_dash7"
	.byte 0x46, 0x52
	.asciz "ME_NewFileSelect"
	.byte 0x62, 0x61, 0x73
	.asciz "ewidget_file%d"
	.byte 0x74
	.asciz "extpane_filename%d"
	.byte 0x74
	.asciz "extpane_world%d"
	.asciz "textpane_playtime%d"
	.asciz "textpane_date%d"
	.asciz "tablegroup_mainmenu"
	.asciz "textpane_start"
	.byte 0x74
	.asciz "extpane_options"
	.asciz "FRME_FrontEndPL"
	.4byte 0x00746578
	.asciz "tpane_yes"
	.byte 0x74, 0x65
	.asciz "xtpane_no"
	.byte 0x6D, 0x6F
	.asciz "del_gc"
	.byte 0x6D
	.asciz "odel_gba"
	.byte 0x6D, 0x6F, 0x64
	.asciz "el_cable"
	.byte 0x6D, 0x6F, 0x64
	.asciz "el_circlegcport"
	.asciz "model_circlegbaport"
	.asciz "model_circlestartselect"
	.asciz "model_pakout"
	.byte 0x6D, 0x6F, 0x64
	.asciz "el_gbascreen"
	.byte 0x6D, 0x6F, 0x64
	.asciz "el_connect"
	.byte 0x46
	.asciz "ONT_Deface14B"
	.byte 0x25, 0x73
	.4byte 0x62000000
	.4byte 0


.section .sbss
.balign 8
# CFrontEndUI
.global lbl_805A8CB0
lbl_805A8CB0:
	.skip 0x8

.section .sdata
.balign 8

.global lbl_805A6CD8
lbl_805A6CD8:
	# ROM: 0x3F4678
	.4byte 0

.global lbl_805A6CDC
lbl_805A6CDC:
	# ROM: 0x3F467C
	.float 1.0

.global lbl_805A6CE0
lbl_805A6CE0:
	# ROM: 0x3F4680
	.4byte 0

.global lbl_805A6CE4
lbl_805A6CE4:
	# ROM: 0x3F4684
	.4byte 0

.global lbl_805A6CE8
lbl_805A6CE8:
	# ROM: 0x3F4688
	.float 1.0

.global lbl_805A6CEC
lbl_805A6CEC:
	# ROM: 0x3F468C
	.4byte 0

.global lbl_805A6CF0
lbl_805A6CF0:
	# ROM: 0x3F4690
	.float 1.0

.global lbl_805A6CF4
lbl_805A6CF4:
	# ROM: 0x3F4694
	.4byte 0

.global lbl_805A6CF8
lbl_805A6CF8:
	# ROM: 0x3F4698
	.float 1.0

.global lbl_805A6CFC
lbl_805A6CFC:
	# ROM: 0x3F469C
	.4byte 0

.global lbl_805A6D00
lbl_805A6D00:
	# ROM: 0x3F46A0
	.float 1.0

.global lbl_805A6D04
lbl_805A6D04:
	# ROM: 0x3F46A4
	.4byte 0x0000000C

.global lbl_805A6D08
lbl_805A6D08:
	# ROM: 0x3F46A8
	.4byte 0x0000000B

.global lbl_805A6D0C
lbl_805A6D0C:
	# ROM: 0x3F46AC
	.4byte 0x0000003F
	.4byte 0x003F003F
	.4byte 0x003F003F
	.4byte 0x003F0000
	.4byte 0

.section .sdata2, "a"
.balign 8

.global lbl_805A9FA8
lbl_805A9FA8:
	# ROM: 0x3F6848
	.4byte 0x803CC59E

.global lbl_805A9FAC
lbl_805A9FAC:
	# ROM: 0x3F684C
	.4byte 0x803CC720

.global lbl_805A9FB0
lbl_805A9FB0:
	# ROM: 0x3F6850
	.4byte 0x803CC735

.global lbl_805A9FB4
lbl_805A9FB4:
	# ROM: 0x3F6854
	.4byte 0x803CC74A

.global lbl_805A9FB8
lbl_805A9FB8:
	# ROM: 0x3F6858
	.float 1000000.0

.global lbl_805A9FBC
lbl_805A9FBC:
	# ROM: 0x3F685C
	.4byte 0

.global lbl_805A9FC0
lbl_805A9FC0:
	# ROM: 0x3F6860
	.4byte 0x41F00000

.global lbl_805A9FC4
lbl_805A9FC4:
	# ROM: 0x3F6864
	.4byte 0xC5800000

.global lbl_805A9FC8
lbl_805A9FC8:
	# ROM: 0x3F6868
	.4byte 0x45800000

.global lbl_805A9FCC
lbl_805A9FCC:
	# ROM: 0x3F686C
	.float 255.0

.global lbl_805A9FD0
lbl_805A9FD0:
	# ROM: 0x3F6870
	.float 1.0
	.4byte 0

.global lbl_805A9FD8
lbl_805A9FD8:
	# ROM: 0x3F6878
	.double 4.503601774854144E15

.global lbl_805A9FE0
lbl_805A9FE0:
	# ROM: 0x3F6880
	.float 1.0

.global lbl_805A9FE4
lbl_805A9FE4:
	# ROM: 0x3F6884
	.4byte 0x3D4CCCCD

.global lbl_805A9FE8
lbl_805A9FE8:
	# ROM: 0x3F6888
	.double 1.0

.global lbl_805A9FF0
lbl_805A9FF0:
	# ROM: 0x3F6890
	.float 0.5

.global lbl_805A9FF4
lbl_805A9FF4:
	# ROM: 0x3F6894
	.float 2.5

.global lbl_805A9FF8
lbl_805A9FF8:
	# ROM: 0x3F6898
	.4byte 0x3F3E0000

.global lbl_805A9FFC
lbl_805A9FFC:
	# ROM: 0x3F689C
	.4byte 0x42FF0000

.global lbl_805AA000
lbl_805AA000:
	# ROM: 0x3F68A0
	.4byte 0x42700000

.global lbl_805AA004
lbl_805AA004:
	# ROM: 0x3F68A4
	.float 0.5

.global lbl_805AA008
lbl_805AA008:
	# ROM: 0x3F68A8
	.float 0.1

.global lbl_805AA00C
lbl_805AA00C:
	# ROM: 0x3F68AC
	.4byte 0x46FFFE00

.global lbl_805AA010
lbl_805AA010:
	# ROM: 0x3F68B0
	.4byte 0x40F00000

.global lbl_805AA014
lbl_805AA014:
	# ROM: 0x3F68B4
	.4byte 0xC38C0000

.global lbl_805AA018
lbl_805AA018:
	# ROM: 0x3F68B8
	.4byte 0xC3200000

.global lbl_805AA01C
lbl_805AA01C:
	# ROM: 0x3F68BC
	.float 8.0

.section .text, "ax"

.global GetUserInput__21CArchMsgParmUserInputCFv
GetUserInput__21CArchMsgParmUserInputCFv:
/* 8001B9E4 00018944  38 63 00 04 */	addi r3, r3, 4
/* 8001B9E8 00018948  4E 80 00 20 */	blr

.global __dt__21CArchMsgParmUserInputFv
__dt__21CArchMsgParmUserInputFv:
/* 8001B9EC 0001894C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001B9F0 00018950  7C 08 02 A6 */	mflr r0
/* 8001B9F4 00018954  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001B9F8 00018958  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001B9FC 0001895C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8001BA00 00018960  41 82 00 30 */	beq lbl_8001BA30
/* 8001BA04 00018964  3C 60 80 3E */	lis r3, lbl_803D9810@ha
/* 8001BA08 00018968  38 03 98 10 */	addi r0, r3, lbl_803D9810@l
/* 8001BA0C 0001896C  90 1F 00 00 */	stw r0, 0(r31)
/* 8001BA10 00018970  41 82 00 10 */	beq lbl_8001BA20
/* 8001BA14 00018974  3C 60 80 3E */	lis r3, lbl_803D8E9C@ha
/* 8001BA18 00018978  38 03 8E 9C */	addi r0, r3, lbl_803D8E9C@l
/* 8001BA1C 0001897C  90 1F 00 00 */	stw r0, 0(r31)
lbl_8001BA20:
/* 8001BA20 00018980  7C 80 07 35 */	extsh. r0, r4
/* 8001BA24 00018984  40 81 00 0C */	ble lbl_8001BA30
/* 8001BA28 00018988  7F E3 FB 78 */	mr r3, r31
/* 8001BA2C 0001898C  48 2F 9F 05 */	bl Free__7CMemoryFPCv
lbl_8001BA30:
/* 8001BA30 00018990  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001BA34 00018994  7F E3 FB 78 */	mr r3, r31
/* 8001BA38 00018998  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001BA3C 0001899C  7C 08 03 A6 */	mtlr r0
/* 8001BA40 000189A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8001BA44 000189A4  4E 80 00 20 */	blr

.global __ct__21CArchMsgParmUserInputFRC11CFinalInput
__ct__21CArchMsgParmUserInputFRC11CFinalInput:
/* 8001BA48 000189A8  3C C0 80 3E */	lis r6, lbl_803D8E9C@ha
/* 8001BA4C 000189AC  3C A0 80 3E */	lis r5, lbl_803D9810@ha
/* 8001BA50 000189B0  38 C6 8E 9C */	addi r6, r6, lbl_803D8E9C@l
/* 8001BA54 000189B4  90 C3 00 00 */	stw r6, 0(r3)
/* 8001BA58 000189B8  38 05 98 10 */	addi r0, r5, lbl_803D9810@l
/* 8001BA5C 000189BC  90 03 00 00 */	stw r0, 0(r3)
/* 8001BA60 000189C0  C0 04 00 00 */	lfs f0, 0(r4)
/* 8001BA64 000189C4  D0 03 00 04 */	stfs f0, 4(r3)
/* 8001BA68 000189C8  80 04 00 04 */	lwz r0, 4(r4)
/* 8001BA6C 000189CC  90 03 00 08 */	stw r0, 8(r3)
/* 8001BA70 000189D0  C0 04 00 08 */	lfs f0, 8(r4)
/* 8001BA74 000189D4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8001BA78 000189D8  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8001BA7C 000189DC  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8001BA80 000189E0  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8001BA84 000189E4  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8001BA88 000189E8  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 8001BA8C 000189EC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8001BA90 000189F0  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 8001BA94 000189F4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8001BA98 000189F8  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 8001BA9C 000189FC  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8001BAA0 00018A00  88 04 00 20 */	lbz r0, 0x20(r4)
/* 8001BAA4 00018A04  98 03 00 24 */	stb r0, 0x24(r3)
/* 8001BAA8 00018A08  88 04 00 21 */	lbz r0, 0x21(r4)
/* 8001BAAC 00018A0C  98 03 00 25 */	stb r0, 0x25(r3)
/* 8001BAB0 00018A10  88 04 00 22 */	lbz r0, 0x22(r4)
/* 8001BAB4 00018A14  98 03 00 26 */	stb r0, 0x26(r3)
/* 8001BAB8 00018A18  88 04 00 23 */	lbz r0, 0x23(r4)
/* 8001BABC 00018A1C  98 03 00 27 */	stb r0, 0x27(r3)
/* 8001BAC0 00018A20  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 8001BAC4 00018A24  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8001BAC8 00018A28  C0 04 00 28 */	lfs f0, 0x28(r4)
/* 8001BACC 00018A2C  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8001BAD0 00018A30  88 04 00 2C */	lbz r0, 0x2c(r4)
/* 8001BAD4 00018A34  98 03 00 30 */	stb r0, 0x30(r3)
/* 8001BAD8 00018A38  88 04 00 2D */	lbz r0, 0x2d(r4)
/* 8001BADC 00018A3C  98 03 00 31 */	stb r0, 0x31(r3)
/* 8001BAE0 00018A40  88 04 00 2E */	lbz r0, 0x2e(r4)
/* 8001BAE4 00018A44  98 03 00 32 */	stb r0, 0x32(r3)
/* 8001BAE8 00018A48  4E 80 00 20 */	blr

.global StartSlideShow__11CFrontEndUIFR18CArchitectureQueue
StartSlideShow__11CFrontEndUIFR18CArchitectureQueue:
/* 8001BAEC 00018A4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001BAF0 00018A50  7C 08 02 A6 */	mflr r0
/* 8001BAF4 00018A54  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001BAF8 00018A58  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8001BAFC 00018A5C  7C 9F 23 78 */	mr r31, r4
/* 8001BB00 00018A60  80 63 00 F4 */	lwz r3, 0xf4(r3)
/* 8001BB04 00018A64  48 35 04 F1 */	bl StopMixOut__18CStaticAudioPlayerFv
/* 8001BB08 00018A68  3C 80 80 3D */	lis r4, lbl_803CC644@ha
/* 8001BB0C 00018A6C  38 60 01 38 */	li r3, 0x138
/* 8001BB10 00018A70  38 84 C6 44 */	addi r4, r4, lbl_803CC644@l
/* 8001BB14 00018A74  38 A0 00 00 */	li r5, 0
/* 8001BB18 00018A78  38 84 01 14 */	addi r4, r4, 0x114
/* 8001BB1C 00018A7C  48 2F 9D 51 */	bl __nw__FUlPCcPCc
/* 8001BB20 00018A80  7C 60 1B 79 */	or. r0, r3, r3
/* 8001BB24 00018A84  41 82 00 0C */	beq lbl_8001BB30
/* 8001BB28 00018A88  48 27 FB FD */	bl __ct__10CSlideShowFv
/* 8001BB2C 00018A8C  7C 60 1B 78 */	mr r0, r3
lbl_8001BB30:
/* 8001BB30 00018A90  90 01 00 08 */	stw r0, 8(r1)
/* 8001BB34 00018A94  38 61 00 0C */	addi r3, r1, 0xc
/* 8001BB38 00018A98  38 E1 00 08 */	addi r7, r1, 8
/* 8001BB3C 00018A9C  38 80 00 00 */	li r4, 0
/* 8001BB40 00018AA0  38 AD 81 44 */	addi r5, r13, lbl_805A6D04@sda21
/* 8001BB44 00018AA4  38 CD 81 48 */	addi r6, r13, lbl_805A6D08@sda21
/* 8001BB48 00018AA8  48 03 61 65 */	bl CreateCreateIOWin__7MakeMsgF14EArchMsgTargetRCiRCiRCP6CIOWin
/* 8001BB4C 00018AAC  7F E3 FB 78 */	mr r3, r31
/* 8001BB50 00018AB0  38 81 00 0C */	addi r4, r1, 0xc
/* 8001BB54 00018AB4  4B FE B1 AD */	bl InsertMsg__18CArchitectureQueueFRC20CArchitectureMessage
/* 8001BB58 00018AB8  34 61 00 14 */	addic. r3, r1, 0x14
/* 8001BB5C 00018ABC  41 82 00 08 */	beq lbl_8001BB64
/* 8001BB60 00018AC0  4B FE CB AD */	bl sub_8000870c
lbl_8001BB64:
/* 8001BB64 00018AC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001BB68 00018AC8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8001BB6C 00018ACC  7C 08 03 A6 */	mtlr r0
/* 8001BB70 00018AD0  38 21 00 20 */	addi r1, r1, 0x20
/* 8001BB74 00018AD4  4E 80 00 20 */	blr

.global SetFadeBlackWithMovie__11CFrontEndUIFv
SetFadeBlackWithMovie__11CFrontEndUIFv:
/* 8001BB78 00018AD8  C0 02 82 98 */	lfs f0, lbl_805A9FB8@sda21(r2)
/* 8001BB7C 00018ADC  38 00 00 01 */	li r0, 1
/* 8001BB80 00018AE0  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 8001BB84 00018AE4  98 03 00 5C */	stb r0, 0x5c(r3)
/* 8001BB88 00018AE8  4E 80 00 20 */	blr

.global SetFadeBlackTimer__11CFrontEndUIFf
SetFadeBlackTimer__11CFrontEndUIFf:
/* 8001BB8C 00018AEC  D0 23 00 58 */	stfs f1, 0x58(r3)
/* 8001BB90 00018AF0  38 00 00 00 */	li r0, 0
/* 8001BB94 00018AF4  98 03 00 5C */	stb r0, 0x5c(r3)
/* 8001BB98 00018AF8  4E 80 00 20 */	blr

.global GetAttractMovieFileName__11CFrontEndUIFi
GetAttractMovieFileName__11CFrontEndUIFi:
/* 8001BB9C 00018AFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001BBA0 00018B00  7C 08 02 A6 */	mflr r0
/* 8001BBA4 00018B04  3C 80 80 3D */	lis r4, lbl_803CC644@ha
/* 8001BBA8 00018B08  38 A4 C6 44 */	addi r5, r4, lbl_803CC644@l
/* 8001BBAC 00018B0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001BBB0 00018B10  7C 64 1B 78 */	mr r4, r3
/* 8001BBB4 00018B14  38 65 01 1B */	addi r3, r5, 0x11b
/* 8001BBB8 00018B18  4C C6 31 82 */	crclr 6
/* 8001BBBC 00018B1C  48 2B A5 F5 */	bl Stringize__7CBasicsFPCce
/* 8001BBC0 00018B20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001BBC4 00018B24  7C 08 03 A6 */	mtlr r0
/* 8001BBC8 00018B28  38 21 00 10 */	addi r1, r1, 0x10
/* 8001BBCC 00018B2C  4E 80 00 20 */	blr

.global GetNextAttractMovieFileName__11CFrontEndUIFi
GetNextAttractMovieFileName__11CFrontEndUIFi:
/* 8001BBD0 00018B30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001BBD4 00018B34  7C 08 02 A6 */	mflr r0
/* 8001BBD8 00018B38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001BBDC 00018B3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001BBE0 00018B40  7C 7F 1B 78 */	mr r31, r3
/* 8001BBE4 00018B44  80 63 00 BC */	lwz r3, 0xbc(r3)
/* 8001BBE8 00018B48  4B FF FF B5 */	bl GetAttractMovieFileName__11CFrontEndUIFi
/* 8001BBEC 00018B4C  80 BF 00 BC */	lwz r5, 0xbc(r31)
/* 8001BBF0 00018B50  80 9F 00 C0 */	lwz r4, 0xc0(r31)
/* 8001BBF4 00018B54  38 A5 00 01 */	addi r5, r5, 1
/* 8001BBF8 00018B58  7C 05 23 D6 */	divw r0, r5, r4
/* 8001BBFC 00018B5C  7C 00 21 D6 */	mullw r0, r0, r4
/* 8001BC00 00018B60  7C 00 28 50 */	subf r0, r0, r5
/* 8001BC04 00018B64  90 1F 00 BC */	stw r0, 0xbc(r31)
/* 8001BC08 00018B68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001BC0C 00018B6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001BC10 00018B70  7C 08 03 A6 */	mtlr r0
/* 8001BC14 00018B74  38 21 00 10 */	addi r1, r1, 0x10
/* 8001BC18 00018B78  4E 80 00 20 */	blr

.global SetCurrentMovie__11CFrontEndUIFQ211CFrontEndUI10EMenuMovie
SetCurrentMovie__11CFrontEndUIFQ211CFrontEndUI10EMenuMovie:
/* 8001BC1C 00018B7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001BC20 00018B80  7C 08 02 A6 */	mflr r0
/* 8001BC24 00018B84  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001BC28 00018B88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001BC2C 00018B8C  7C 9F 23 78 */	mr r31, r4
/* 8001BC30 00018B90  93 C1 00 08 */	stw r30, 8(r1)
/* 8001BC34 00018B94  7C 7E 1B 78 */	mr r30, r3
/* 8001BC38 00018B98  80 03 00 B8 */	lwz r0, 0xb8(r3)
/* 8001BC3C 00018B9C  7C 1F 00 00 */	cmpw r31, r0
/* 8001BC40 00018BA0  41 82 00 60 */	beq lbl_8001BCA0
/* 8001BC44 00018BA4  48 00 00 75 */	bl StopAttractMovie__11CFrontEndUIFv
/* 8001BC48 00018BA8  80 1E 00 B8 */	lwz r0, 0xb8(r30)
/* 8001BC4C 00018BAC  2C 00 FF FF */	cmpwi r0, -1
/* 8001BC50 00018BB0  41 82 00 18 */	beq lbl_8001BC68
/* 8001BC54 00018BB4  80 7E 00 CC */	lwz r3, 0xcc(r30)
/* 8001BC58 00018BB8  38 80 00 00 */	li r4, 0
/* 8001BC5C 00018BBC  48 33 FF 89 */	bl SetPlayMode__12CMoviePlayerFQ212CMoviePlayer9EPlayMode
/* 8001BC60 00018BC0  80 7E 00 CC */	lwz r3, 0xcc(r30)
/* 8001BC64 00018BC4  48 33 FC E1 */	bl Rewind__12CMoviePlayerFv
lbl_8001BC68:
/* 8001BC68 00018BC8  93 FE 00 B8 */	stw r31, 0xb8(r30)
/* 8001BC6C 00018BCC  80 1E 00 B8 */	lwz r0, 0xb8(r30)
/* 8001BC70 00018BD0  2C 00 FF FF */	cmpwi r0, -1
/* 8001BC74 00018BD4  41 82 00 24 */	beq lbl_8001BC98
/* 8001BC78 00018BD8  57 E0 18 38 */	slwi r0, r31, 3
/* 8001BC7C 00018BDC  38 80 00 01 */	li r4, 1
/* 8001BC80 00018BE0  7C 7E 02 14 */	add r3, r30, r0
/* 8001BC84 00018BE4  80 03 00 74 */	lwz r0, 0x74(r3)
/* 8001BC88 00018BE8  90 1E 00 CC */	stw r0, 0xcc(r30)
/* 8001BC8C 00018BEC  80 7E 00 CC */	lwz r3, 0xcc(r30)
/* 8001BC90 00018BF0  48 33 FF 55 */	bl SetPlayMode__12CMoviePlayerFQ212CMoviePlayer9EPlayMode
/* 8001BC94 00018BF4  48 00 00 0C */	b lbl_8001BCA0
lbl_8001BC98:
/* 8001BC98 00018BF8  38 00 00 00 */	li r0, 0
/* 8001BC9C 00018BFC  90 1E 00 CC */	stw r0, 0xcc(r30)
lbl_8001BCA0:
/* 8001BCA0 00018C00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001BCA4 00018C04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001BCA8 00018C08  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001BCAC 00018C0C  7C 08 03 A6 */	mtlr r0
/* 8001BCB0 00018C10  38 21 00 10 */	addi r1, r1, 0x10
/* 8001BCB4 00018C14  4E 80 00 20 */	blr

.global StopAttractMovie__11CFrontEndUIFv
StopAttractMovie__11CFrontEndUIFv:
/* 8001BCB8 00018C18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001BCBC 00018C1C  7C 08 02 A6 */	mflr r0
/* 8001BCC0 00018C20  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001BCC4 00018C24  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8001BCC8 00018C28  7C 7F 1B 78 */	mr r31, r3
/* 8001BCCC 00018C2C  80 03 00 C8 */	lwz r0, 0xc8(r3)
/* 8001BCD0 00018C30  28 00 00 00 */	cmplwi r0, 0
/* 8001BCD4 00018C34  41 82 00 70 */	beq lbl_8001BD44
/* 8001BCD8 00018C38  38 61 00 08 */	addi r3, r1, 8
/* 8001BCDC 00018C3C  38 1F 00 C4 */	addi r0, r31, 0xc4
/* 8001BCE0 00018C40  38 80 00 00 */	li r4, 0
/* 8001BCE4 00018C44  7C 03 00 40 */	cmplw r3, r0
/* 8001BCE8 00018C48  98 81 00 08 */	stb r4, 8(r1)
/* 8001BCEC 00018C4C  90 81 00 0C */	stw r4, 0xc(r1)
/* 8001BCF0 00018C50  41 82 00 34 */	beq lbl_8001BD24
/* 8001BCF4 00018C54  88 1F 00 C4 */	lbz r0, 0xc4(r31)
/* 8001BCF8 00018C58  28 00 00 00 */	cmplwi r0, 0
/* 8001BCFC 00018C5C  41 82 00 10 */	beq lbl_8001BD0C
/* 8001BD00 00018C60  80 7F 00 C8 */	lwz r3, 0xc8(r31)
/* 8001BD04 00018C64  38 80 00 01 */	li r4, 1
/* 8001BD08 00018C68  48 34 0A B1 */	bl __dt__12CMoviePlayerFv
lbl_8001BD0C:
/* 8001BD0C 00018C6C  88 61 00 08 */	lbz r3, 8(r1)
/* 8001BD10 00018C70  38 00 00 00 */	li r0, 0
/* 8001BD14 00018C74  98 7F 00 C4 */	stb r3, 0xc4(r31)
/* 8001BD18 00018C78  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8001BD1C 00018C7C  90 7F 00 C8 */	stw r3, 0xc8(r31)
/* 8001BD20 00018C80  98 01 00 08 */	stb r0, 8(r1)
lbl_8001BD24:
/* 8001BD24 00018C84  88 01 00 08 */	lbz r0, 8(r1)
/* 8001BD28 00018C88  28 00 00 00 */	cmplwi r0, 0
/* 8001BD2C 00018C8C  41 82 00 10 */	beq lbl_8001BD3C
/* 8001BD30 00018C90  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8001BD34 00018C94  38 80 00 01 */	li r4, 1
/* 8001BD38 00018C98  48 34 0A 81 */	bl __dt__12CMoviePlayerFv
lbl_8001BD3C:
/* 8001BD3C 00018C9C  38 00 00 00 */	li r0, 0
/* 8001BD40 00018CA0  90 1F 00 CC */	stw r0, 0xcc(r31)
lbl_8001BD44:
/* 8001BD44 00018CA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001BD48 00018CA8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8001BD4C 00018CAC  7C 08 03 A6 */	mtlr r0
/* 8001BD50 00018CB0  38 21 00 20 */	addi r1, r1, 0x20
/* 8001BD54 00018CB4  4E 80 00 20 */	blr

.global StartAttractMovie__11CFrontEndUIFi
StartAttractMovie__11CFrontEndUIFi:
/* 8001BD58 00018CB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001BD5C 00018CBC  7C 08 02 A6 */	mflr r0
/* 8001BD60 00018CC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001BD64 00018CC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8001BD68 00018CC8  7C 7F 1B 78 */	mr r31, r3
/* 8001BD6C 00018CCC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8001BD70 00018CD0  80 03 00 C8 */	lwz r0, 0xc8(r3)
/* 8001BD74 00018CD4  28 00 00 00 */	cmplwi r0, 0
/* 8001BD78 00018CD8  40 82 00 C8 */	bne lbl_8001BE40
/* 8001BD7C 00018CDC  38 80 FF FF */	li r4, -1
/* 8001BD80 00018CE0  4B FF FE 9D */	bl SetCurrentMovie__11CFrontEndUIFQ211CFrontEndUI10EMenuMovie
/* 8001BD84 00018CE4  7F E3 FB 78 */	mr r3, r31
/* 8001BD88 00018CE8  4B FF FE 49 */	bl GetNextAttractMovieFileName__11CFrontEndUIFi
/* 8001BD8C 00018CEC  3C 80 80 3D */	lis r4, lbl_803CC644@ha
/* 8001BD90 00018CF0  7C 60 1B 78 */	mr r0, r3
/* 8001BD94 00018CF4  38 84 C6 44 */	addi r4, r4, lbl_803CC644@l
/* 8001BD98 00018CF8  38 60 01 00 */	li r3, 0x100
/* 8001BD9C 00018CFC  7C 1E 03 78 */	mr r30, r0
/* 8001BDA0 00018D00  38 A0 00 00 */	li r5, 0
/* 8001BDA4 00018D04  38 84 01 14 */	addi r4, r4, 0x114
/* 8001BDA8 00018D08  48 2F 9A C5 */	bl __nw__FUlPCcPCc
/* 8001BDAC 00018D0C  7C 65 1B 79 */	or. r5, r3, r3
/* 8001BDB0 00018D10  41 82 00 1C */	beq lbl_8001BDCC
/* 8001BDB4 00018D14  C0 22 82 9C */	lfs f1, lbl_805A9FBC@sda21(r2)
/* 8001BDB8 00018D18  7F C4 F3 78 */	mr r4, r30
/* 8001BDBC 00018D1C  38 A0 00 00 */	li r5, 0
/* 8001BDC0 00018D20  38 C0 00 00 */	li r6, 0
/* 8001BDC4 00018D24  48 34 11 59 */	bl __ct__12CMoviePlayerFPCcfb
/* 8001BDC8 00018D28  7C 65 1B 78 */	mr r5, r3
lbl_8001BDCC:
/* 8001BDCC 00018D2C  7C 05 00 D0 */	neg r0, r5
/* 8001BDD0 00018D30  38 61 00 08 */	addi r3, r1, 8
/* 8001BDD4 00018D34  7C 04 2B 78 */	or r4, r0, r5
/* 8001BDD8 00018D38  38 1F 00 C4 */	addi r0, r31, 0xc4
/* 8001BDDC 00018D3C  54 84 0F FE */	srwi r4, r4, 0x1f
/* 8001BDE0 00018D40  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8001BDE4 00018D44  7C 03 00 40 */	cmplw r3, r0
/* 8001BDE8 00018D48  98 81 00 08 */	stb r4, 8(r1)
/* 8001BDEC 00018D4C  41 82 00 34 */	beq lbl_8001BE20
/* 8001BDF0 00018D50  88 1F 00 C4 */	lbz r0, 0xc4(r31)
/* 8001BDF4 00018D54  28 00 00 00 */	cmplwi r0, 0
/* 8001BDF8 00018D58  41 82 00 10 */	beq lbl_8001BE08
/* 8001BDFC 00018D5C  80 7F 00 C8 */	lwz r3, 0xc8(r31)
/* 8001BE00 00018D60  38 80 00 01 */	li r4, 1
/* 8001BE04 00018D64  48 34 09 B5 */	bl __dt__12CMoviePlayerFv
lbl_8001BE08:
/* 8001BE08 00018D68  88 61 00 08 */	lbz r3, 8(r1)
/* 8001BE0C 00018D6C  38 00 00 00 */	li r0, 0
/* 8001BE10 00018D70  98 7F 00 C4 */	stb r3, 0xc4(r31)
/* 8001BE14 00018D74  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8001BE18 00018D78  90 7F 00 C8 */	stw r3, 0xc8(r31)
/* 8001BE1C 00018D7C  98 01 00 08 */	stb r0, 8(r1)
lbl_8001BE20:
/* 8001BE20 00018D80  88 01 00 08 */	lbz r0, 8(r1)
/* 8001BE24 00018D84  28 00 00 00 */	cmplwi r0, 0
/* 8001BE28 00018D88  41 82 00 10 */	beq lbl_8001BE38
/* 8001BE2C 00018D8C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8001BE30 00018D90  38 80 00 01 */	li r4, 1
/* 8001BE34 00018D94  48 34 09 85 */	bl __dt__12CMoviePlayerFv
lbl_8001BE38:
/* 8001BE38 00018D98  80 1F 00 C8 */	lwz r0, 0xc8(r31)
/* 8001BE3C 00018D9C  90 1F 00 CC */	stw r0, 0xcc(r31)
lbl_8001BE40:
/* 8001BE40 00018DA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001BE44 00018DA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8001BE48 00018DA8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8001BE4C 00018DAC  7C 08 03 A6 */	mtlr r0
/* 8001BE50 00018DB0  38 21 00 20 */	addi r1, r1, 0x20
/* 8001BE54 00018DB4  4E 80 00 20 */	blr

.global CompleteStateTransition__11CFrontEndUIFv
CompleteStateTransition__11CFrontEndUIFv:
/* 8001BE58 00018DB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001BE5C 00018DBC  7C 08 02 A6 */	mflr r0
/* 8001BE60 00018DC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001BE64 00018DC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001BE68 00018DC8  93 C1 00 08 */	stw r30, 8(r1)
/* 8001BE6C 00018DCC  7C 7E 1B 78 */	mr r30, r3
/* 8001BE70 00018DD0  83 E3 00 50 */	lwz r31, 0x50(r3)
/* 8001BE74 00018DD4  80 03 00 54 */	lwz r0, 0x54(r3)
/* 8001BE78 00018DD8  90 03 00 50 */	stw r0, 0x50(r3)
/* 8001BE7C 00018DDC  80 03 00 50 */	lwz r0, 0x50(r3)
/* 8001BE80 00018DE0  2C 00 00 03 */	cmpwi r0, 3
/* 8001BE84 00018DE4  41 82 00 5C */	beq lbl_8001BEE0
/* 8001BE88 00018DE8  40 80 00 14 */	bge lbl_8001BE9C
/* 8001BE8C 00018DEC  2C 00 00 01 */	cmpwi r0, 1
/* 8001BE90 00018DF0  41 82 00 38 */	beq lbl_8001BEC8
/* 8001BE94 00018DF4  40 80 00 18 */	bge lbl_8001BEAC
/* 8001BE98 00018DF8  48 00 00 98 */	b lbl_8001BF30
lbl_8001BE9C:
/* 8001BE9C 00018DFC  2C 00 00 05 */	cmpwi r0, 5
/* 8001BEA0 00018E00  41 82 00 88 */	beq lbl_8001BF28
/* 8001BEA4 00018E04  40 80 00 8C */	bge lbl_8001BF30
/* 8001BEA8 00018E08  48 00 00 74 */	b lbl_8001BF1C
lbl_8001BEAC:
/* 8001BEAC 00018E0C  38 00 00 00 */	li r0, 0
/* 8001BEB0 00018E10  38 80 00 01 */	li r4, 1
/* 8001BEB4 00018E14  90 1E 00 54 */	stw r0, 0x54(r30)
/* 8001BEB8 00018E18  90 1E 00 50 */	stw r0, 0x50(r30)
/* 8001BEBC 00018E1C  98 1E 00 D0 */	stb r0, 0xd0(r30)
/* 8001BEC0 00018E20  48 00 00 89 */	bl StartStateTransition__11CFrontEndUIFQ211CFrontEndUI7EScreen
/* 8001BEC4 00018E24  48 00 00 6C */	b lbl_8001BF30
lbl_8001BEC8:
/* 8001BEC8 00018E28  38 80 00 01 */	li r4, 1
/* 8001BECC 00018E2C  4B FF FD 51 */	bl SetCurrentMovie__11CFrontEndUIFQ211CFrontEndUI10EMenuMovie
/* 8001BED0 00018E30  C0 22 82 A0 */	lfs f1, lbl_805A9FC0@sda21(r2)
/* 8001BED4 00018E34  7F C3 F3 78 */	mr r3, r30
/* 8001BED8 00018E38  4B FF FC B5 */	bl SetFadeBlackTimer__11CFrontEndUIFf
/* 8001BEDC 00018E3C  48 00 00 54 */	b lbl_8001BF30
lbl_8001BEE0:
/* 8001BEE0 00018E40  38 80 00 03 */	li r4, 3
/* 8001BEE4 00018E44  4B FF FD 39 */	bl SetCurrentMovie__11CFrontEndUIFQ211CFrontEndUI10EMenuMovie
/* 8001BEE8 00018E48  2C 1F 00 01 */	cmpwi r31, 1
/* 8001BEEC 00018E4C  40 82 00 1C */	bne lbl_8001BF08
/* 8001BEF0 00018E50  80 7E 00 F4 */	lwz r3, 0xf4(r30)
/* 8001BEF4 00018E54  48 35 01 01 */	bl StopMixOut__18CStaticAudioPlayerFv
/* 8001BEF8 00018E58  80 1E 00 D8 */	lwz r0, 0xd8(r30)
/* 8001BEFC 00018E5C  90 1E 00 F4 */	stw r0, 0xf4(r30)
/* 8001BF00 00018E60  80 7E 00 F4 */	lwz r3, 0xf4(r30)
/* 8001BF04 00018E64  48 35 01 2D */	bl StartMixOut__18CStaticAudioPlayerFv
lbl_8001BF08:
/* 8001BF08 00018E68  80 7E 00 DC */	lwz r3, 0xdc(r30)
/* 8001BF0C 00018E6C  28 03 00 00 */	cmplwi r3, 0
/* 8001BF10 00018E70  41 82 00 20 */	beq lbl_8001BF30
/* 8001BF14 00018E74  48 23 3E 79 */	bl ResetCardDriver__15CSaveGameScreenFv
/* 8001BF18 00018E78  48 00 00 18 */	b lbl_8001BF30
lbl_8001BF1C:
/* 8001BF1C 00018E7C  38 80 00 06 */	li r4, 6
/* 8001BF20 00018E80  4B FF FC FD */	bl SetCurrentMovie__11CFrontEndUIFQ211CFrontEndUI10EMenuMovie
/* 8001BF24 00018E84  48 00 00 0C */	b lbl_8001BF30
lbl_8001BF28:
/* 8001BF28 00018E88  38 00 00 06 */	li r0, 6
/* 8001BF2C 00018E8C  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_8001BF30:
/* 8001BF30 00018E90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001BF34 00018E94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001BF38 00018E98  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001BF3C 00018E9C  7C 08 03 A6 */	mtlr r0
/* 8001BF40 00018EA0  38 21 00 10 */	addi r1, r1, 0x10
/* 8001BF44 00018EA4  4E 80 00 20 */	blr

.global StartStateTransition__11CFrontEndUIFQ211CFrontEndUI7EScreen
StartStateTransition__11CFrontEndUIFQ211CFrontEndUI7EScreen:
/* 8001BF48 00018EA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001BF4C 00018EAC  7C 08 02 A6 */	mflr r0
/* 8001BF50 00018EB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001BF54 00018EB4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8001BF58 00018EB8  7C 9F 23 78 */	mr r31, r4
/* 8001BF5C 00018EBC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8001BF60 00018EC0  7C 7E 1B 78 */	mr r30, r3
/* 8001BF64 00018EC4  80 03 00 50 */	lwz r0, 0x50(r3)
/* 8001BF68 00018EC8  2C 00 00 02 */	cmpwi r0, 2
/* 8001BF6C 00018ECC  41 82 01 68 */	beq lbl_8001C0D4
/* 8001BF70 00018ED0  40 80 00 14 */	bge lbl_8001BF84
/* 8001BF74 00018ED4  2C 00 00 00 */	cmpwi r0, 0
/* 8001BF78 00018ED8  41 82 01 5C */	beq lbl_8001C0D4
/* 8001BF7C 00018EDC  40 80 00 18 */	bge lbl_8001BF94
/* 8001BF80 00018EE0  48 00 01 54 */	b lbl_8001C0D4
lbl_8001BF84:
/* 8001BF84 00018EE4  2C 00 00 04 */	cmpwi r0, 4
/* 8001BF88 00018EE8  41 82 00 C0 */	beq lbl_8001C048
/* 8001BF8C 00018EEC  40 80 01 48 */	bge lbl_8001C0D4
/* 8001BF90 00018EF0  48 00 00 28 */	b lbl_8001BFB8
lbl_8001BF94:
/* 8001BF94 00018EF4  2C 1F 00 03 */	cmpwi r31, 3
/* 8001BF98 00018EF8  40 82 01 3C */	bne lbl_8001C0D4
/* 8001BF9C 00018EFC  38 80 00 02 */	li r4, 2
/* 8001BFA0 00018F00  4B FF FC 7D */	bl SetCurrentMovie__11CFrontEndUIFQ211CFrontEndUI10EMenuMovie
/* 8001BFA4 00018F04  80 7E 00 CC */	lwz r3, 0xcc(r30)
/* 8001BFA8 00018F08  48 33 FC 35 */	bl GetTotalSeconds__12CMoviePlayerCFv
/* 8001BFAC 00018F0C  7F C3 F3 78 */	mr r3, r30
/* 8001BFB0 00018F10  4B FF FB DD */	bl SetFadeBlackTimer__11CFrontEndUIFf
/* 8001BFB4 00018F14  48 00 01 20 */	b lbl_8001C0D4
lbl_8001BFB8:
/* 8001BFB8 00018F18  2C 1F 00 05 */	cmpwi r31, 5
/* 8001BFBC 00018F1C  40 82 00 20 */	bne lbl_8001BFDC
/* 8001BFC0 00018F20  38 80 00 04 */	li r4, 4
/* 8001BFC4 00018F24  4B FF FC 59 */	bl SetCurrentMovie__11CFrontEndUIFQ211CFrontEndUI10EMenuMovie
/* 8001BFC8 00018F28  80 7E 00 CC */	lwz r3, 0xcc(r30)
/* 8001BFCC 00018F2C  48 33 FC 11 */	bl GetTotalSeconds__12CMoviePlayerCFv
/* 8001BFD0 00018F30  7F C3 F3 78 */	mr r3, r30
/* 8001BFD4 00018F34  4B FF FB B9 */	bl SetFadeBlackTimer__11CFrontEndUIFf
/* 8001BFD8 00018F38  48 00 00 FC */	b lbl_8001C0D4
lbl_8001BFDC:
/* 8001BFDC 00018F3C  2C 1F 00 04 */	cmpwi r31, 4
/* 8001BFE0 00018F40  40 82 00 F4 */	bne lbl_8001C0D4
/* 8001BFE4 00018F44  38 80 00 05 */	li r4, 5
/* 8001BFE8 00018F48  4B FF FC 35 */	bl SetCurrentMovie__11CFrontEndUIFQ211CFrontEndUI10EMenuMovie
/* 8001BFEC 00018F4C  80 7E 00 CC */	lwz r3, 0xcc(r30)
/* 8001BFF0 00018F50  48 33 FB ED */	bl GetTotalSeconds__12CMoviePlayerCFv
/* 8001BFF4 00018F54  7F C3 F3 78 */	mr r3, r30
/* 8001BFF8 00018F58  4B FF FB 95 */	bl SetFadeBlackTimer__11CFrontEndUIFf
/* 8001BFFC 00018F5C  A9 02 C5 FA */	lha r8, lbl_805AE31A@sda21(r2)
/* 8001C000 00018F60  38 61 00 14 */	addi r3, r1, 0x14
/* 8001C004 00018F64  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 8001C008 00018F68  38 80 04 54 */	li r4, 0x454
/* 8001C00C 00018F6C  38 A0 00 7F */	li r5, 0x7f
/* 8001C010 00018F70  38 C0 00 40 */	li r6, 0x40
/* 8001C014 00018F74  38 E0 00 00 */	li r7, 0
/* 8001C018 00018F78  39 20 00 00 */	li r9, 0
/* 8001C01C 00018F7C  48 2C DD 59 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 8001C020 00018F80  A9 02 C5 FA */	lha r8, lbl_805AE31A@sda21(r2)
/* 8001C024 00018F84  38 61 00 10 */	addi r3, r1, 0x10
/* 8001C028 00018F88  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 8001C02C 00018F8C  38 80 04 55 */	li r4, 0x455
/* 8001C030 00018F90  38 A0 00 7F */	li r5, 0x7f
/* 8001C034 00018F94  38 C0 00 40 */	li r6, 0x40
/* 8001C038 00018F98  38 E0 00 00 */	li r7, 0
/* 8001C03C 00018F9C  39 20 00 00 */	li r9, 0
/* 8001C040 00018FA0  48 2C DD 35 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 8001C044 00018FA4  48 00 00 90 */	b lbl_8001C0D4
lbl_8001C048:
/* 8001C048 00018FA8  2C 1F 00 05 */	cmpwi r31, 5
/* 8001C04C 00018FAC  40 82 00 20 */	bne lbl_8001C06C
/* 8001C050 00018FB0  38 80 00 08 */	li r4, 8
/* 8001C054 00018FB4  4B FF FB C9 */	bl SetCurrentMovie__11CFrontEndUIFQ211CFrontEndUI10EMenuMovie
/* 8001C058 00018FB8  80 7E 00 CC */	lwz r3, 0xcc(r30)
/* 8001C05C 00018FBC  48 33 FB 81 */	bl GetTotalSeconds__12CMoviePlayerCFv
/* 8001C060 00018FC0  7F C3 F3 78 */	mr r3, r30
/* 8001C064 00018FC4  4B FF FB 29 */	bl SetFadeBlackTimer__11CFrontEndUIFf
/* 8001C068 00018FC8  48 00 00 6C */	b lbl_8001C0D4
lbl_8001C06C:
/* 8001C06C 00018FCC  2C 1F 00 03 */	cmpwi r31, 3
/* 8001C070 00018FD0  40 82 00 64 */	bne lbl_8001C0D4
/* 8001C074 00018FD4  38 80 00 07 */	li r4, 7
/* 8001C078 00018FD8  4B FF FB A5 */	bl SetCurrentMovie__11CFrontEndUIFQ211CFrontEndUI10EMenuMovie
/* 8001C07C 00018FDC  80 7E 00 CC */	lwz r3, 0xcc(r30)
/* 8001C080 00018FE0  48 33 FB 5D */	bl GetTotalSeconds__12CMoviePlayerCFv
/* 8001C084 00018FE4  7F C3 F3 78 */	mr r3, r30
/* 8001C088 00018FE8  4B FF FB 05 */	bl SetFadeBlackTimer__11CFrontEndUIFf
/* 8001C08C 00018FEC  A9 02 C5 FA */	lha r8, lbl_805AE31A@sda21(r2)
/* 8001C090 00018FF0  38 61 00 0C */	addi r3, r1, 0xc
/* 8001C094 00018FF4  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 8001C098 00018FF8  38 80 04 56 */	li r4, 0x456
/* 8001C09C 00018FFC  38 A0 00 7F */	li r5, 0x7f
/* 8001C0A0 00019000  38 C0 00 40 */	li r6, 0x40
/* 8001C0A4 00019004  38 E0 00 00 */	li r7, 0
/* 8001C0A8 00019008  39 20 00 00 */	li r9, 0
/* 8001C0AC 0001900C  48 2C DC C9 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 8001C0B0 00019010  A9 02 C5 FA */	lha r8, lbl_805AE31A@sda21(r2)
/* 8001C0B4 00019014  38 61 00 08 */	addi r3, r1, 8
/* 8001C0B8 00019018  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 8001C0BC 0001901C  38 80 04 57 */	li r4, 0x457
/* 8001C0C0 00019020  38 A0 00 7F */	li r5, 0x7f
/* 8001C0C4 00019024  38 C0 00 40 */	li r6, 0x40
/* 8001C0C8 00019028  38 E0 00 00 */	li r7, 0
/* 8001C0CC 0001902C  39 20 00 00 */	li r9, 0
/* 8001C0D0 00019030  48 2C DC A5 */	bl SfxStart__11CSfxManagerFUsssbsbi
lbl_8001C0D4:
/* 8001C0D4 00019034  2C 1F 00 02 */	cmpwi r31, 2
/* 8001C0D8 00019038  41 82 00 38 */	beq lbl_8001C110
/* 8001C0DC 0001903C  40 80 00 44 */	bge lbl_8001C120
/* 8001C0E0 00019040  2C 1F 00 00 */	cmpwi r31, 0
/* 8001C0E4 00019044  40 80 00 0C */	bge lbl_8001C0F0
/* 8001C0E8 00019048  48 00 00 38 */	b lbl_8001C120
/* 8001C0EC 0001904C  48 00 00 34 */	b lbl_8001C120
lbl_8001C0F0:
/* 8001C0F0 00019050  7F C3 F3 78 */	mr r3, r30
/* 8001C0F4 00019054  38 80 00 00 */	li r4, 0
/* 8001C0F8 00019058  4B FF FB 25 */	bl SetCurrentMovie__11CFrontEndUIFQ211CFrontEndUI10EMenuMovie
/* 8001C0FC 0001905C  80 7E 00 CC */	lwz r3, 0xcc(r30)
/* 8001C100 00019060  48 33 FA DD */	bl GetTotalSeconds__12CMoviePlayerCFv
/* 8001C104 00019064  7F C3 F3 78 */	mr r3, r30
/* 8001C108 00019068  4B FF FA 85 */	bl SetFadeBlackTimer__11CFrontEndUIFf
/* 8001C10C 0001906C  48 00 00 14 */	b lbl_8001C120
lbl_8001C110:
/* 8001C110 00019070  7F C3 F3 78 */	mr r3, r30
/* 8001C114 00019074  4B FF FC 45 */	bl StartAttractMovie__11CFrontEndUIFi
/* 8001C118 00019078  7F C3 F3 78 */	mr r3, r30
/* 8001C11C 0001907C  4B FF FA 5D */	bl SetFadeBlackWithMovie__11CFrontEndUIFv
lbl_8001C120:
/* 8001C120 00019080  93 FE 00 54 */	stw r31, 0x54(r30)
/* 8001C124 00019084  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001C128 00019088  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8001C12C 0001908C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8001C130 00019090  7C 08 03 A6 */	mtlr r0
/* 8001C134 00019094  38 21 00 20 */	addi r1, r1, 0x20
/* 8001C138 00019098  4E 80 00 20 */	blr

.global CanShowSaveUI__11CFrontEndUIFv
CanShowSaveUI__11CFrontEndUIFv:
/* 8001C13C 0001909C  80 83 00 50 */	lwz r4, 0x50(r3)
/* 8001C140 000190A0  38 00 00 00 */	li r0, 0
/* 8001C144 000190A4  2C 04 00 03 */	cmpwi r4, 3
/* 8001C148 000190A8  41 82 00 0C */	beq lbl_8001C154
/* 8001C14C 000190AC  2C 04 00 04 */	cmpwi r4, 4
/* 8001C150 000190B0  40 82 00 1C */	bne lbl_8001C16C
lbl_8001C154:
/* 8001C154 000190B4  80 63 00 54 */	lwz r3, 0x54(r3)
/* 8001C158 000190B8  2C 03 00 03 */	cmpwi r3, 3
/* 8001C15C 000190BC  41 82 00 0C */	beq lbl_8001C168
/* 8001C160 000190C0  2C 03 00 04 */	cmpwi r3, 4
/* 8001C164 000190C4  40 82 00 08 */	bne lbl_8001C16C
lbl_8001C168:
/* 8001C168 000190C8  38 00 00 01 */	li r0, 1
lbl_8001C16C:
/* 8001C16C 000190CC  7C 03 03 78 */	mr r3, r0
/* 8001C170 000190D0  4E 80 00 20 */	blr

.global Draw__11CFrontEndUICFv
Draw__11CFrontEndUICFv:
/* 8001C174 000190D4  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 8001C178 000190D8  7C 08 02 A6 */	mflr r0
/* 8001C17C 000190DC  90 01 01 04 */	stw r0, 0x104(r1)
/* 8001C180 000190E0  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 8001C184 000190E4  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, qr0
/* 8001C188 000190E8  DB C1 00 E0 */	stfd f30, 0xe0(r1)
/* 8001C18C 000190EC  F3 C1 00 E8 */	psq_st f30, 232(r1), 0, qr0
/* 8001C190 000190F0  DB A1 00 D0 */	stfd f29, 0xd0(r1)
/* 8001C194 000190F4  F3 A1 00 D8 */	psq_st f29, 216(r1), 0, qr0
/* 8001C198 000190F8  DB 81 00 C0 */	stfd f28, 0xc0(r1)
/* 8001C19C 000190FC  F3 81 00 C8 */	psq_st f28, 200(r1), 0, qr0
/* 8001C1A0 00019100  BF 41 00 A8 */	stmw r26, 0xa8(r1)
/* 8001C1A4 00019104  7C 7F 1B 78 */	mr r31, r3
/* 8001C1A8 00019108  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8001C1AC 0001910C  2C 00 00 04 */	cmpwi r0, 4
/* 8001C1B0 00019110  41 80 04 F0 */	blt lbl_8001C6A0
/* 8001C1B4 00019114  80 7F 00 EC */	lwz r3, 0xec(r31)
/* 8001C1B8 00019118  28 03 00 00 */	cmplwi r3, 0
/* 8001C1BC 0001911C  41 82 00 10 */	beq lbl_8001C1CC
/* 8001C1C0 00019120  80 9F 00 DC */	lwz r4, 0xdc(r31)
/* 8001C1C4 00019124  48 00 61 01 */	bl Draw__17SNesEmulatorFrameFRC15CSaveGameScreen
/* 8001C1C8 00019128  48 00 02 14 */	b lbl_8001C3DC
lbl_8001C1CC:
/* 8001C1CC 0001912C  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 8001C1D0 00019130  38 80 00 00 */	li r4, 0
/* 8001C1D4 00019134  38 A0 00 00 */	li r5, 0
/* 8001C1D8 00019138  81 83 00 00 */	lwz r12, 0(r3)
/* 8001C1DC 0001913C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8001C1E0 00019140  7D 89 03 A6 */	mtctr r12
/* 8001C1E4 00019144  4E 80 04 21 */	bctrl
/* 8001C1E8 00019148  80 8D A0 68 */	lwz r4, gpRender@sda21(r13)
/* 8001C1EC 0001914C  38 61 00 20 */	addi r3, r1, 0x20
/* 8001C1F0 00019150  C0 22 82 A4 */	lfs f1, lbl_805A9FC4@sda21(r2)
/* 8001C1F4 00019154  38 A0 00 00 */	li r5, 0
/* 8001C1F8 00019158  81 84 00 00 */	lwz r12, 0(r4)
/* 8001C1FC 0001915C  C0 42 82 A8 */	lfs f2, lbl_805A9FC8@sda21(r2)
/* 8001C200 00019160  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8001C204 00019164  7D 89 03 A6 */	mtctr r12
/* 8001C208 00019168  4E 80 04 21 */	bctrl
/* 8001C20C 0001916C  80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 8001C210 00019170  3C 80 80 3F */	lis r4, lbl_803F0004@ha
/* 8001C214 00019174  87 84 D9 10 */	lwzu r28, -0x26f0(r4)
/* 8001C218 00019178  28 03 00 00 */	cmplwi r3, 0
/* 8001C21C 0001917C  83 A4 00 04 */	lwz r29, lbl_803F0004@l(r4)
/* 8001C220 00019180  83 64 00 08 */	lwz r27, 8(r4)
/* 8001C224 00019184  83 44 00 0C */	lwz r26, 0xc(r4)
/* 8001C228 00019188  41 82 01 2C */	beq lbl_8001C354
/* 8001C22C 0001918C  80 03 00 AC */	lwz r0, 0xac(r3)
/* 8001C230 00019190  28 00 00 00 */	cmplwi r0, 0
/* 8001C234 00019194  40 82 01 20 */	bne lbl_8001C354
/* 8001C238 00019198  48 33 F3 ED */	bl sub_8035b624
/* 8001C23C 0001919C  7C 7E 1B 78 */	mr r30, r3
/* 8001C240 000191A0  80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 8001C244 000191A4  48 33 F3 D9 */	bl sub_8035b61c
/* 8001C248 000191A8  7C 1A 18 50 */	subf r0, r26, r3
/* 8001C24C 000191AC  7C 7B F0 50 */	subf r3, r27, r30
/* 8001C250 000191B0  54 63 F8 7E */	srwi r3, r3, 1
/* 8001C254 000191B4  3D 40 43 30 */	lis r10, 0x4330
/* 8001C258 000191B8  54 00 F8 7E */	srwi r0, r0, 1
/* 8001C25C 000191BC  C0 E2 82 9C */	lfs f7, lbl_805A9FBC@sda21(r2)
/* 8001C260 000191C0  7C 9B 1A 14 */	add r4, r27, r3
/* 8001C264 000191C4  7C 63 E0 50 */	subf r3, r3, r28
/* 8001C268 000191C8  6C 6B 80 00 */	xoris r11, r3, 0x8000
/* 8001C26C 000191CC  7C 7A 02 14 */	add r3, r26, r0
/* 8001C270 000191D0  7C 9C 22 14 */	add r4, r28, r4
/* 8001C274 000191D4  7C 00 E8 50 */	subf r0, r0, r29
/* 8001C278 000191D8  6C 88 80 00 */	xoris r8, r4, 0x8000
/* 8001C27C 000191DC  7C 7D 1A 14 */	add r3, r29, r3
/* 8001C280 000191E0  6C 69 80 00 */	xoris r9, r3, 0x8000
/* 8001C284 000191E4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8001C288 000191E8  91 61 00 64 */	stw r11, 0x64(r1)
/* 8001C28C 000191EC  38 81 00 54 */	addi r4, r1, 0x54
/* 8001C290 000191F0  C9 22 82 B8 */	lfd f9, lbl_805A9FD8@sda21(r2)
/* 8001C294 000191F4  38 A1 00 48 */	addi r5, r1, 0x48
/* 8001C298 000191F8  91 41 00 60 */	stw r10, 0x60(r1)
/* 8001C29C 000191FC  38 C1 00 3C */	addi r6, r1, 0x3c
/* 8001C2A0 00019200  80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 8001C2A4 00019204  38 E1 00 30 */	addi r7, r1, 0x30
/* 8001C2A8 00019208  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 8001C2AC 0001920C  91 21 00 6C */	stw r9, 0x6c(r1)
/* 8001C2B0 00019210  ED 00 48 28 */	fsubs f8, f0, f9
/* 8001C2B4 00019214  91 41 00 68 */	stw r10, 0x68(r1)
/* 8001C2B8 00019218  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 8001C2BC 0001921C  91 01 00 74 */	stw r8, 0x74(r1)
/* 8001C2C0 00019220  EC C0 48 28 */	fsubs f6, f0, f9
/* 8001C2C4 00019224  91 41 00 70 */	stw r10, 0x70(r1)
/* 8001C2C8 00019228  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 8001C2CC 0001922C  91 21 00 7C */	stw r9, 0x7c(r1)
/* 8001C2D0 00019230  EC A0 48 28 */	fsubs f5, f0, f9
/* 8001C2D4 00019234  91 41 00 78 */	stw r10, 0x78(r1)
/* 8001C2D8 00019238  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 8001C2DC 0001923C  91 61 00 84 */	stw r11, 0x84(r1)
/* 8001C2E0 00019240  EC 80 48 28 */	fsubs f4, f0, f9
/* 8001C2E4 00019244  91 41 00 80 */	stw r10, 0x80(r1)
/* 8001C2E8 00019248  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 8001C2EC 0001924C  90 01 00 8C */	stw r0, 0x8c(r1)
/* 8001C2F0 00019250  EC 60 48 28 */	fsubs f3, f0, f9
/* 8001C2F4 00019254  91 41 00 88 */	stw r10, 0x88(r1)
/* 8001C2F8 00019258  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 8001C2FC 0001925C  91 01 00 94 */	stw r8, 0x94(r1)
/* 8001C300 00019260  EC 40 48 28 */	fsubs f2, f0, f9
/* 8001C304 00019264  91 41 00 90 */	stw r10, 0x90(r1)
/* 8001C308 00019268  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 8001C30C 0001926C  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8001C310 00019270  EC 20 48 28 */	fsubs f1, f0, f9
/* 8001C314 00019274  91 41 00 98 */	stw r10, 0x98(r1)
/* 8001C318 00019278  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 8001C31C 0001927C  D1 01 00 54 */	stfs f8, 0x54(r1)
/* 8001C320 00019280  EC 00 48 28 */	fsubs f0, f0, f9
/* 8001C324 00019284  D0 E1 00 58 */	stfs f7, 0x58(r1)
/* 8001C328 00019288  D0 C1 00 5C */	stfs f6, 0x5c(r1)
/* 8001C32C 0001928C  D0 A1 00 48 */	stfs f5, 0x48(r1)
/* 8001C330 00019290  D0 E1 00 4C */	stfs f7, 0x4c(r1)
/* 8001C334 00019294  D0 81 00 50 */	stfs f4, 0x50(r1)
/* 8001C338 00019298  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 8001C33C 0001929C  D0 E1 00 40 */	stfs f7, 0x40(r1)
/* 8001C340 000192A0  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8001C344 000192A4  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8001C348 000192A8  D0 E1 00 34 */	stfs f7, 0x34(r1)
/* 8001C34C 000192AC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8001C350 000192B0  48 33 F8 9D */	bl DrawFrame__12CMoviePlayerFRC9CVector3fRC9CVector3fRC9CVector3fRC9CVector3f
lbl_8001C354:
/* 8001C354 000192B4  80 9F 00 50 */	lwz r4, 0x50(r31)
/* 8001C358 000192B8  38 60 00 00 */	li r3, 0
/* 8001C35C 000192BC  2C 04 00 03 */	cmpwi r4, 3
/* 8001C360 000192C0  40 82 00 14 */	bne lbl_8001C374
/* 8001C364 000192C4  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 8001C368 000192C8  2C 00 00 03 */	cmpwi r0, 3
/* 8001C36C 000192CC  40 82 00 08 */	bne lbl_8001C374
/* 8001C370 000192D0  38 60 00 01 */	li r3, 1
lbl_8001C374:
/* 8001C374 000192D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001C378 000192D8  41 82 00 38 */	beq lbl_8001C3B0
/* 8001C37C 000192DC  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 8001C380 000192E0  28 03 00 00 */	cmplwi r3, 0
/* 8001C384 000192E4  40 82 00 24 */	bne lbl_8001C3A8
/* 8001C388 000192E8  80 7F 00 E0 */	lwz r3, 0xe0(r31)
/* 8001C38C 000192EC  28 03 00 00 */	cmplwi r3, 0
/* 8001C390 000192F0  40 82 00 10 */	bne lbl_8001C3A0
/* 8001C394 000192F4  80 7F 00 E8 */	lwz r3, 0xe8(r31)
/* 8001C398 000192F8  48 00 4F DD */	bl Draw__14SFrontEndFrameFv
/* 8001C39C 000192FC  48 00 00 40 */	b lbl_8001C3DC
lbl_8001C3A0:
/* 8001C3A0 00019300  48 00 3F 35 */	bl Draw__19SNewFileSelectFrameFv
/* 8001C3A4 00019304  48 00 00 38 */	b lbl_8001C3DC
lbl_8001C3A8:
/* 8001C3A8 00019308  48 22 58 39 */	bl Draw__21SOptionsFrontEndFrameFv
/* 8001C3AC 0001930C  48 00 00 30 */	b lbl_8001C3DC
lbl_8001C3B0:
/* 8001C3B0 00019310  2C 04 00 04 */	cmpwi r4, 4
/* 8001C3B4 00019314  38 60 00 00 */	li r3, 0
/* 8001C3B8 00019318  40 82 00 14 */	bne lbl_8001C3CC
/* 8001C3BC 0001931C  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 8001C3C0 00019320  2C 00 00 04 */	cmpwi r0, 4
/* 8001C3C4 00019324  40 82 00 08 */	bne lbl_8001C3CC
/* 8001C3C8 00019328  38 60 00 01 */	li r3, 1
lbl_8001C3CC:
/* 8001C3CC 0001932C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001C3D0 00019330  41 82 00 0C */	beq lbl_8001C3DC
/* 8001C3D4 00019334  80 7F 00 E4 */	lwz r3, 0xe4(r31)
/* 8001C3D8 00019338  48 00 27 39 */	bl Draw__17SFusionBonusFrameFv
lbl_8001C3DC:
/* 8001C3DC 0001933C  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8001C3E0 00019340  C0 02 82 9C */	lfs f0, lbl_805A9FBC@sda21(r2)
/* 8001C3E4 00019344  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8001C3E8 00019348  40 81 00 BC */	ble lbl_8001C4A4
/* 8001C3EC 0001934C  83 9F 00 40 */	lwz r28, 0x40(r31)
/* 8001C3F0 00019350  28 1C 00 00 */	cmplwi r28, 0
/* 8001C3F4 00019354  41 82 00 B0 */	beq lbl_8001C4A4
/* 8001C3F8 00019358  3C 60 80 5A */	lis r3, lbl_805A5EBC@ha
/* 8001C3FC 0001935C  AB DC 00 04 */	lha r30, 4(r28)
/* 8001C400 00019360  38 83 5E BC */	addi r4, r3, lbl_805A5EBC@l
/* 8001C404 00019364  AB BC 00 06 */	lha r29, 6(r28)
/* 8001C408 00019368  38 60 00 00 */	li r3, 0
/* 8001C40C 0001936C  48 2E DE AD */	bl SetTevOp__9CGraphicsF12ERglTevStageRCQ213CTevCombiners8CTevPass
/* 8001C410 00019370  80 8D 9C 68 */	lwz r4, lbl_805A8828@sda21(r13)
/* 8001C414 00019374  38 60 00 01 */	li r3, 1
/* 8001C418 00019378  48 2E DE A1 */	bl SetTevOp__9CGraphicsF12ERglTevStageRCQ213CTevCombiners8CTevPass
/* 8001C41C 0001937C  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 8001C420 00019380  81 83 00 00 */	lwz r12, 0(r3)
/* 8001C424 00019384  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8001C428 00019388  7D 89 03 A6 */	mtctr r12
/* 8001C42C 0001938C  4E 80 04 21 */	bctrl
/* 8001C430 00019390  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 8001C434 00019394  38 80 00 00 */	li r4, 0
/* 8001C438 00019398  38 A0 00 00 */	li r5, 0
/* 8001C43C 0001939C  81 83 00 00 */	lwz r12, 0(r3)
/* 8001C440 000193A0  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8001C444 000193A4  7D 89 03 A6 */	mtctr r12
/* 8001C448 000193A8  4E 80 04 21 */	bctrl
/* 8001C44C 000193AC  C3 9F 00 64 */	lfs f28, 0x64(r31)
/* 8001C450 000193B0  48 32 DB 5D */	bl White__6CColorFv
/* 8001C454 000193B4  C0 02 82 AC */	lfs f0, lbl_805A9FCC@sda21(r2)
/* 8001C458 000193B8  EF E0 07 32 */	fmuls f31, f0, f28
/* 8001C45C 000193BC  F3 E1 A0 0B */	psq_st f31, 11(r1), 1, qr2
/* 8001C460 000193C0  57 C0 0F FE */	srwi r0, r30, 0x1f
/* 8001C464 000193C4  80 C3 00 00 */	lwz r6, 0(r3)
/* 8001C468 000193C8  7C 00 F2 14 */	add r0, r0, r30
/* 8001C46C 000193CC  7C 04 0E 70 */	srawi r4, r0, 1
/* 8001C470 000193D0  88 A1 00 0B */	lbz r5, 0xb(r1)
/* 8001C474 000193D4  50 C5 00 2E */	rlwimi r5, r6, 0, 0, 0x17
/* 8001C478 000193D8  57 A0 0F FE */	srwi r0, r29, 0x1f
/* 8001C47C 000193DC  20 84 01 40 */	subfic r4, r4, 0x140
/* 8001C480 000193E0  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 8001C484 000193E4  7C 00 EA 14 */	add r0, r0, r29
/* 8001C488 000193E8  7F 83 E3 78 */	mr r3, r28
/* 8001C48C 000193EC  7C 00 0E 70 */	srawi r0, r0, 1
/* 8001C490 000193F0  7F C6 F3 78 */	mr r6, r30
/* 8001C494 000193F4  7F A7 EB 78 */	mr r7, r29
/* 8001C498 000193F8  39 01 00 1C */	addi r8, r1, 0x1c
/* 8001C49C 000193FC  20 A0 00 48 */	subfic r5, r0, 0x48
/* 8001C4A0 00019400  48 2E F2 BD */	bl Render2D__9CGraphicsFRC8CTextureiiiiRC6CColor
lbl_8001C4A4:
/* 8001C4A4 00019404  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 8001C4A8 00019408  2C 00 00 00 */	cmpwi r0, 0
/* 8001C4AC 0001940C  40 81 00 84 */	ble lbl_8001C530
/* 8001C4B0 00019410  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 8001C4B4 00019414  38 60 00 00 */	li r3, 0
/* 8001C4B8 00019418  2C 00 00 01 */	cmpwi r0, 1
/* 8001C4BC 0001941C  40 82 00 14 */	bne lbl_8001C4D0
/* 8001C4C0 00019420  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 8001C4C4 00019424  2C 00 00 01 */	cmpwi r0, 1
/* 8001C4C8 00019428  40 82 00 08 */	bne lbl_8001C4D0
/* 8001C4CC 0001942C  38 60 00 01 */	li r3, 1
lbl_8001C4D0:
/* 8001C4D0 00019430  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001C4D4 00019434  40 82 00 10 */	bne lbl_8001C4E4
/* 8001C4D8 00019438  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 8001C4DC 0001943C  2C 00 00 02 */	cmpwi r0, 2
/* 8001C4E0 00019440  40 82 00 50 */	bne lbl_8001C530
lbl_8001C4E4:
/* 8001C4E4 00019444  C3 9F 00 58 */	lfs f28, 0x58(r31)
/* 8001C4E8 00019448  C0 02 82 B0 */	lfs f0, lbl_805A9FD0@sda21(r2)
/* 8001C4EC 0001944C  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 8001C4F0 00019450  40 80 00 40 */	bge lbl_8001C530
/* 8001C4F4 00019454  48 32 DA C1 */	bl Black__6CColorFv
/* 8001C4F8 00019458  C0 22 82 B0 */	lfs f1, lbl_805A9FD0@sda21(r2)
/* 8001C4FC 0001945C  C0 42 82 AC */	lfs f2, lbl_805A9FCC@sda21(r2)
/* 8001C500 00019460  EC 01 E0 28 */	fsubs f0, f1, f28
/* 8001C504 00019464  EF C2 00 32 */	fmuls f30, f2, f0
/* 8001C508 00019468  F3 C1 A0 0A */	psq_st f30, 10(r1), 1, qr2
/* 8001C50C 0001946C  38 A1 00 18 */	addi r5, r1, 0x18
/* 8001C510 00019470  80 C3 00 00 */	lwz r6, 0(r3)
/* 8001C514 00019474  38 60 00 05 */	li r3, 5
/* 8001C518 00019478  88 01 00 0A */	lbz r0, 0xa(r1)
/* 8001C51C 0001947C  38 80 00 00 */	li r4, 0
/* 8001C520 00019480  50 C0 00 2E */	rlwimi r0, r6, 0, 0, 0x17
/* 8001C524 00019484  38 C0 00 00 */	li r6, 0
/* 8001C528 00019488  90 01 00 18 */	stw r0, 0x18(r1)
/* 8001C52C 0001948C  48 0C FC 1D */	bl DrawFilter__17CCameraFilterPassFQ217CCameraFilterPass11EFilterTypeQ217CCameraFilterPass12EFilterShapeRC6CColorPC8CTexturef
lbl_8001C530:
/* 8001C530 00019490  88 1F 00 D0 */	lbz r0, 0xd0(r31)
/* 8001C534 00019494  28 00 00 00 */	cmplwi r0, 0
/* 8001C538 00019498  41 82 00 E4 */	beq lbl_8001C61C
/* 8001C53C 0001949C  80 7F 00 54 */	lwz r3, 0x54(r31)
/* 8001C540 000194A0  2C 03 00 01 */	cmpwi r3, 1
/* 8001C544 000194A4  40 82 00 64 */	bne lbl_8001C5A8
/* 8001C548 000194A8  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 8001C54C 000194AC  2C 00 00 00 */	cmpwi r0, 0
/* 8001C550 000194B0  40 82 00 58 */	bne lbl_8001C5A8
/* 8001C554 000194B4  38 9F 00 58 */	addi r4, r31, 0x58
/* 8001C558 000194B8  38 6D 81 34 */	addi r3, r13, lbl_805A6CF4@sda21
/* 8001C55C 000194BC  38 AD 81 38 */	addi r5, r13, lbl_805A6CF8@sda21
/* 8001C560 000194C0  4B FE FD 55 */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 8001C564 000194C4  C3 83 00 00 */	lfs f28, 0(r3)
/* 8001C568 000194C8  48 32 DA 4D */	bl Black__6CColorFv
/* 8001C56C 000194CC  C0 22 82 B0 */	lfs f1, lbl_805A9FD0@sda21(r2)
/* 8001C570 000194D0  C0 42 82 AC */	lfs f2, lbl_805A9FCC@sda21(r2)
/* 8001C574 000194D4  EC 01 E0 28 */	fsubs f0, f1, f28
/* 8001C578 000194D8  EF A2 00 32 */	fmuls f29, f2, f0
/* 8001C57C 000194DC  F3 A1 A0 09 */	psq_st f29, 9(r1), 1, qr2
/* 8001C580 000194E0  38 A1 00 14 */	addi r5, r1, 0x14
/* 8001C584 000194E4  80 C3 00 00 */	lwz r6, 0(r3)
/* 8001C588 000194E8  38 60 00 05 */	li r3, 5
/* 8001C58C 000194EC  88 01 00 09 */	lbz r0, 9(r1)
/* 8001C590 000194F0  38 80 00 00 */	li r4, 0
/* 8001C594 000194F4  50 C0 00 2E */	rlwimi r0, r6, 0, 0, 0x17
/* 8001C598 000194F8  38 C0 00 00 */	li r6, 0
/* 8001C59C 000194FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001C5A0 00019500  48 0C FB A9 */	bl DrawFilter__17CCameraFilterPassFQ217CCameraFilterPass11EFilterTypeQ217CCameraFilterPass12EFilterShapeRC6CColorPC8CTexturef
/* 8001C5A4 00019504  48 00 00 78 */	b lbl_8001C61C
lbl_8001C5A8:
/* 8001C5A8 00019508  2C 03 00 01 */	cmpwi r3, 1
/* 8001C5AC 0001950C  40 82 00 70 */	bne lbl_8001C61C
/* 8001C5B0 00019510  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 8001C5B4 00019514  2C 00 00 01 */	cmpwi r0, 1
/* 8001C5B8 00019518  40 82 00 64 */	bne lbl_8001C61C
/* 8001C5BC 0001951C  C0 22 82 A0 */	lfs f1, lbl_805A9FC0@sda21(r2)
/* 8001C5C0 00019520  38 81 00 10 */	addi r4, r1, 0x10
/* 8001C5C4 00019524  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8001C5C8 00019528  38 6D 81 3C */	addi r3, r13, lbl_805A6CFC@sda21
/* 8001C5CC 0001952C  38 AD 81 40 */	addi r5, r13, lbl_805A6D00@sda21
/* 8001C5D0 00019530  EC 01 00 28 */	fsubs f0, f1, f0
/* 8001C5D4 00019534  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8001C5D8 00019538  4B FE FC DD */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 8001C5DC 0001953C  C3 83 00 00 */	lfs f28, 0(r3)
/* 8001C5E0 00019540  48 32 D9 D5 */	bl Black__6CColorFv
/* 8001C5E4 00019544  C0 22 82 B0 */	lfs f1, lbl_805A9FD0@sda21(r2)
/* 8001C5E8 00019548  C0 42 82 AC */	lfs f2, lbl_805A9FCC@sda21(r2)
/* 8001C5EC 0001954C  EC 01 E0 28 */	fsubs f0, f1, f28
/* 8001C5F0 00019550  EF A2 00 32 */	fmuls f29, f2, f0
/* 8001C5F4 00019554  F3 A1 A0 08 */	psq_st f29, 8(r1), 1, qr2
/* 8001C5F8 00019558  38 A1 00 0C */	addi r5, r1, 0xc
/* 8001C5FC 0001955C  80 C3 00 00 */	lwz r6, 0(r3)
/* 8001C600 00019560  38 60 00 05 */	li r3, 5
/* 8001C604 00019564  88 01 00 08 */	lbz r0, 8(r1)
/* 8001C608 00019568  38 80 00 00 */	li r4, 0
/* 8001C60C 0001956C  50 C0 00 2E */	rlwimi r0, r6, 0, 0, 0x17
/* 8001C610 00019570  38 C0 00 00 */	li r6, 0
/* 8001C614 00019574  90 01 00 0C */	stw r0, 0xc(r1)
/* 8001C618 00019578  48 0C FB 31 */	bl DrawFilter__17CCameraFilterPassFQ217CCameraFilterPass11EFilterTypeQ217CCameraFilterPass12EFilterShapeRC6CColorPC8CTexturef
lbl_8001C61C:
/* 8001C61C 0001957C  80 7F 00 DC */	lwz r3, 0xdc(r31)
/* 8001C620 00019580  28 03 00 00 */	cmplwi r3, 0
/* 8001C624 00019584  41 82 00 7C */	beq lbl_8001C6A0
/* 8001C628 00019588  83 A3 00 10 */	lwz r29, 0x10(r3)
/* 8001C62C 0001958C  7F E3 FB 78 */	mr r3, r31
/* 8001C630 00019590  4B FF FB 0D */	bl CanShowSaveUI__11CFrontEndUIFv
/* 8001C634 00019594  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001C638 00019598  41 82 00 14 */	beq lbl_8001C64C
/* 8001C63C 0001959C  7F A3 EB 78 */	mr r3, r29
/* 8001C640 000195A0  48 23 43 15 */	bl IsHiddenFromFrontEnd__15CSaveGameScreenFv
/* 8001C644 000195A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001C648 000195A8  41 82 00 50 */	beq lbl_8001C698
lbl_8001C64C:
/* 8001C64C 000195AC  80 9F 00 50 */	lwz r4, 0x50(r31)
/* 8001C650 000195B0  38 60 00 00 */	li r3, 0
/* 8001C654 000195B4  2C 04 00 03 */	cmpwi r4, 3
/* 8001C658 000195B8  40 82 00 14 */	bne lbl_8001C66C
/* 8001C65C 000195BC  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 8001C660 000195C0  2C 00 00 03 */	cmpwi r0, 3
/* 8001C664 000195C4  40 82 00 08 */	bne lbl_8001C66C
/* 8001C668 000195C8  38 60 00 01 */	li r3, 1
lbl_8001C66C:
/* 8001C66C 000195CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001C670 000195D0  40 82 00 28 */	bne lbl_8001C698
/* 8001C674 000195D4  2C 04 00 04 */	cmpwi r4, 4
/* 8001C678 000195D8  38 60 00 00 */	li r3, 0
/* 8001C67C 000195DC  40 82 00 14 */	bne lbl_8001C690
/* 8001C680 000195E0  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 8001C684 000195E4  2C 00 00 04 */	cmpwi r0, 4
/* 8001C688 000195E8  40 82 00 08 */	bne lbl_8001C690
/* 8001C68C 000195EC  38 60 00 01 */	li r3, 1
lbl_8001C690:
/* 8001C690 000195F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001C694 000195F4  41 82 00 0C */	beq lbl_8001C6A0
lbl_8001C698:
/* 8001C698 000195F8  80 7F 00 DC */	lwz r3, 0xdc(r31)
/* 8001C69C 000195FC  48 23 30 85 */	bl Draw__15CSaveGameScreenFv
lbl_8001C6A0:
/* 8001C6A0 00019600  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, qr0
/* 8001C6A4 00019604  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 8001C6A8 00019608  E3 C1 00 E8 */	psq_l f30, 232(r1), 0, qr0
/* 8001C6AC 0001960C  CB C1 00 E0 */	lfd f30, 0xe0(r1)
/* 8001C6B0 00019610  E3 A1 00 D8 */	psq_l f29, 216(r1), 0, qr0
/* 8001C6B4 00019614  CB A1 00 D0 */	lfd f29, 0xd0(r1)
/* 8001C6B8 00019618  E3 81 00 C8 */	psq_l f28, 200(r1), 0, qr0
/* 8001C6BC 0001961C  CB 81 00 C0 */	lfd f28, 0xc0(r1)
/* 8001C6C0 00019620  BB 41 00 A8 */	lmw r26, 0xa8(r1)
/* 8001C6C4 00019624  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8001C6C8 00019628  7C 08 03 A6 */	mtlr r0
/* 8001C6CC 0001962C  38 21 01 00 */	addi r1, r1, 0x100
/* 8001C6D0 00019630  4E 80 00 20 */	blr

.global ProcessUserInput__11CFrontEndUIFRC11CFinalInputR18CArchitectureQueue
ProcessUserInput__11CFrontEndUIFRC11CFinalInputR18CArchitectureQueue:
/* 8001C6D4 00019634  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001C6D8 00019638  7C 08 02 A6 */	mflr r0
/* 8001C6DC 0001963C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001C6E0 00019640  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8001C6E4 00019644  7C 7F 1B 78 */	mr r31, r3
/* 8001C6E8 00019648  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8001C6EC 0001964C  7C BE 2B 78 */	mr r30, r5
/* 8001C6F0 00019650  80 CD A0 78 */	lwz r6, gpMain@sda21(r13)
/* 8001C6F4 00019654  88 06 01 60 */	lbz r0, 0x160(r6)
/* 8001C6F8 00019658  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8001C6FC 0001965C  40 82 03 C0 */	bne lbl_8001CABC
/* 8001C700 00019660  80 A4 00 04 */	lwz r5, 4(r4)
/* 8001C704 00019664  2C 05 00 01 */	cmpwi r5, 1
/* 8001C708 00019668  41 81 03 B4 */	bgt lbl_8001CABC
/* 8001C70C 0001966C  80 7F 00 EC */	lwz r3, 0xec(r31)
/* 8001C710 00019670  28 03 00 00 */	cmplwi r3, 0
/* 8001C714 00019674  41 82 00 10 */	beq lbl_8001C724
/* 8001C718 00019678  80 BF 00 DC */	lwz r5, 0xdc(r31)
/* 8001C71C 0001967C  48 00 5D 2D */	bl ProcessUserInput__17SNesEmulatorFrameFRC11CFinalInputPC15CSaveGameScreen
/* 8001C720 00019680  48 00 03 9C */	b lbl_8001CABC
lbl_8001C724:
/* 8001C724 00019684  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8001C728 00019688  2C 00 00 04 */	cmpwi r0, 4
/* 8001C72C 0001968C  40 82 03 90 */	bne lbl_8001CABC
/* 8001C730 00019690  2C 05 00 00 */	cmpwi r5, 0
/* 8001C734 00019694  40 82 03 88 */	bne lbl_8001CABC
/* 8001C738 00019698  80 BF 00 50 */	lwz r5, 0x50(r31)
/* 8001C73C 0001969C  80 7F 00 54 */	lwz r3, 0x54(r31)
/* 8001C740 000196A0  7C 05 18 00 */	cmpw r5, r3
/* 8001C744 000196A4  41 82 00 A0 */	beq lbl_8001C7E4
/* 8001C748 000196A8  2C 03 00 02 */	cmpwi r3, 2
/* 8001C74C 000196AC  40 82 00 4C */	bne lbl_8001C798
/* 8001C750 000196B0  88 04 00 2E */	lbz r0, 0x2e(r4)
/* 8001C754 000196B4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8001C758 000196B8  40 82 00 10 */	bne lbl_8001C768
/* 8001C75C 000196BC  88 04 00 2D */	lbz r0, 0x2d(r4)
/* 8001C760 000196C0  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 8001C764 000196C4  41 82 00 34 */	beq lbl_8001C798
lbl_8001C768:
/* 8001C768 000196C8  C0 22 82 C0 */	lfs f1, lbl_805A9FE0@sda21(r2)
/* 8001C76C 000196CC  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8001C770 000196D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8001C774 000196D4  40 80 00 0C */	bge lbl_8001C780
/* 8001C778 000196D8  38 62 82 C0 */	addi r3, r2, lbl_805A9FE0@sda21
/* 8001C77C 000196DC  48 00 00 08 */	b lbl_8001C784
lbl_8001C780:
/* 8001C780 000196E0  38 7F 00 58 */	addi r3, r31, 0x58
lbl_8001C784:
/* 8001C784 000196E4  C0 23 00 00 */	lfs f1, 0(r3)
/* 8001C788 000196E8  7F E3 FB 78 */	mr r3, r31
/* 8001C78C 000196EC  4B FF F4 01 */	bl SetFadeBlackTimer__11CFrontEndUIFf
/* 8001C790 000196F0  48 00 67 C5 */	bl PlayAdvanceSfx__11CFrontEndUIFv
/* 8001C794 000196F4  48 00 03 28 */	b lbl_8001CABC
lbl_8001C798:
/* 8001C798 000196F8  88 04 00 2D */	lbz r0, 0x2d(r4)
/* 8001C79C 000196FC  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 8001C7A0 00019700  40 82 00 10 */	bne lbl_8001C7B0
/* 8001C7A4 00019704  88 04 00 2E */	lbz r0, 0x2e(r4)
/* 8001C7A8 00019708  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8001C7AC 0001970C  41 82 03 10 */	beq lbl_8001CABC
lbl_8001C7B0:
/* 8001C7B0 00019710  2C 05 00 00 */	cmpwi r5, 0
/* 8001C7B4 00019714  40 82 03 08 */	bne lbl_8001CABC
/* 8001C7B8 00019718  2C 03 00 01 */	cmpwi r3, 1
/* 8001C7BC 0001971C  40 82 03 00 */	bne lbl_8001CABC
/* 8001C7C0 00019720  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8001C7C4 00019724  C0 22 82 B0 */	lfs f1, lbl_805A9FD0@sda21(r2)
/* 8001C7C8 00019728  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8001C7CC 0001972C  40 81 02 F0 */	ble lbl_8001CABC
/* 8001C7D0 00019730  38 00 00 01 */	li r0, 1
/* 8001C7D4 00019734  7F E3 FB 78 */	mr r3, r31
/* 8001C7D8 00019738  98 1F 00 D0 */	stb r0, 0xd0(r31)
/* 8001C7DC 0001973C  4B FF F3 B1 */	bl SetFadeBlackTimer__11CFrontEndUIFf
/* 8001C7E0 00019740  48 00 02 DC */	b lbl_8001CABC
lbl_8001C7E4:
/* 8001C7E4 00019744  2C 05 00 01 */	cmpwi r5, 1
/* 8001C7E8 00019748  40 82 00 BC */	bne lbl_8001C8A4
/* 8001C7EC 0001974C  88 04 00 2E */	lbz r0, 0x2e(r4)
/* 8001C7F0 00019750  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8001C7F4 00019754  40 82 00 10 */	bne lbl_8001C804
/* 8001C7F8 00019758  88 04 00 2D */	lbz r0, 0x2d(r4)
/* 8001C7FC 0001975C  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 8001C800 00019760  41 82 02 BC */	beq lbl_8001CABC
lbl_8001C804:
/* 8001C804 00019764  80 6D A1 20 */	lwz r3, gpTweakGame@sda21(r13)
/* 8001C808 00019768  C0 22 82 A0 */	lfs f1, lbl_805A9FC0@sda21(r2)
/* 8001C80C 0001976C  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 8001C810 00019770  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 8001C814 00019774  EC 01 00 28 */	fsubs f0, f1, f0
/* 8001C818 00019778  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8001C81C 0001977C  40 80 02 A0 */	bge lbl_8001CABC
/* 8001C820 00019780  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8001C824 00019784  3C 60 80 3D */	lis r3, lbl_803CC5C4@ha
/* 8001C828 00019788  38 63 C5 C4 */	addi r3, r3, lbl_803CC5C4@l
/* 8001C82C 0001978C  A9 02 C5 FA */	lha r8, lbl_805AE31A@sda21(r2)
/* 8001C830 00019790  54 00 10 3A */	slwi r0, r0, 2
/* 8001C834 00019794  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 8001C838 00019798  7C 03 02 AE */	lhax r0, r3, r0
/* 8001C83C 0001979C  38 61 00 0C */	addi r3, r1, 0xc
/* 8001C840 000197A0  38 A0 00 7F */	li r5, 0x7f
/* 8001C844 000197A4  38 C0 00 40 */	li r6, 0x40
/* 8001C848 000197A8  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 8001C84C 000197AC  38 E0 00 00 */	li r7, 0
/* 8001C850 000197B0  39 20 00 00 */	li r9, 0
/* 8001C854 000197B4  48 2C D5 21 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 8001C858 000197B8  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8001C85C 000197BC  3C 60 80 3D */	lis r3, lbl_803CC5C4@ha
/* 8001C860 000197C0  38 63 C5 C4 */	addi r3, r3, lbl_803CC5C4@l
/* 8001C864 000197C4  A9 02 C5 FA */	lha r8, lbl_805AE31A@sda21(r2)
/* 8001C868 000197C8  54 00 10 3A */	slwi r0, r0, 2
/* 8001C86C 000197CC  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 8001C870 000197D0  7C 83 02 14 */	add r4, r3, r0
/* 8001C874 000197D4  38 61 00 08 */	addi r3, r1, 8
/* 8001C878 000197D8  A8 04 00 02 */	lha r0, 2(r4)
/* 8001C87C 000197DC  38 A0 00 7F */	li r5, 0x7f
/* 8001C880 000197E0  38 C0 00 40 */	li r6, 0x40
/* 8001C884 000197E4  38 E0 00 00 */	li r7, 0
/* 8001C888 000197E8  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 8001C88C 000197EC  39 20 00 00 */	li r9, 0
/* 8001C890 000197F0  48 2C D4 E5 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 8001C894 000197F4  7F E3 FB 78 */	mr r3, r31
/* 8001C898 000197F8  38 80 00 03 */	li r4, 3
/* 8001C89C 000197FC  4B FF F6 AD */	bl StartStateTransition__11CFrontEndUIFQ211CFrontEndUI7EScreen
/* 8001C8A0 00019800  48 00 02 1C */	b lbl_8001CABC
lbl_8001C8A4:
/* 8001C8A4 00019804  2C 05 00 03 */	cmpwi r5, 3
/* 8001C8A8 00019808  38 00 00 00 */	li r0, 0
/* 8001C8AC 0001980C  40 82 00 10 */	bne lbl_8001C8BC
/* 8001C8B0 00019810  2C 03 00 03 */	cmpwi r3, 3
/* 8001C8B4 00019814  40 82 00 08 */	bne lbl_8001C8BC
/* 8001C8B8 00019818  38 00 00 01 */	li r0, 1
lbl_8001C8BC:
/* 8001C8BC 0001981C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8001C8C0 00019820  41 82 01 5C */	beq lbl_8001CA1C
/* 8001C8C4 00019824  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 8001C8C8 00019828  28 03 00 00 */	cmplwi r3, 0
/* 8001C8CC 0001982C  40 82 01 28 */	bne lbl_8001C9F4
/* 8001C8D0 00019830  80 7F 00 E0 */	lwz r3, 0xe0(r31)
/* 8001C8D4 00019834  28 03 00 00 */	cmplwi r3, 0
/* 8001C8D8 00019838  40 82 00 9C */	bne lbl_8001C974
/* 8001C8DC 0001983C  80 7F 00 E8 */	lwz r3, 0xe8(r31)
/* 8001C8E0 00019840  48 00 4A C1 */	bl ProcessUserInput__14SFrontEndFrameFRC11CFinalInput
/* 8001C8E4 00019844  2C 03 00 02 */	cmpwi r3, 2
/* 8001C8E8 00019848  40 82 00 14 */	bne lbl_8001C8FC
/* 8001C8EC 0001984C  7F E3 FB 78 */	mr r3, r31
/* 8001C8F0 00019850  38 80 00 04 */	li r4, 4
/* 8001C8F4 00019854  4B FF F6 55 */	bl StartStateTransition__11CFrontEndUIFQ211CFrontEndUI7EScreen
/* 8001C8F8 00019858  48 00 01 C4 */	b lbl_8001CABC
lbl_8001C8FC:
/* 8001C8FC 0001985C  2C 03 00 03 */	cmpwi r3, 3
/* 8001C900 00019860  40 82 00 40 */	bne lbl_8001C940
/* 8001C904 00019864  3C 80 80 3D */	lis r4, lbl_803CC644@ha
/* 8001C908 00019868  38 60 01 38 */	li r3, 0x138
/* 8001C90C 0001986C  38 84 C6 44 */	addi r4, r4, lbl_803CC644@l
/* 8001C910 00019870  38 A0 00 00 */	li r5, 0
/* 8001C914 00019874  38 84 01 14 */	addi r4, r4, 0x114
/* 8001C918 00019878  48 2F 8F 55 */	bl __nw__FUlPCcPCc
/* 8001C91C 0001987C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8001C920 00019880  41 82 00 0C */	beq lbl_8001C92C
/* 8001C924 00019884  48 22 65 71 */	bl __ct__21SOptionsFrontEndFrameFv
/* 8001C928 00019888  7C 7E 1B 78 */	mr r30, r3
lbl_8001C92C:
/* 8001C92C 0001988C  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 8001C930 00019890  38 80 00 01 */	li r4, 1
/* 8001C934 00019894  48 22 64 C1 */	bl __dt__21SOptionsFrontEndFrameFv
/* 8001C938 00019898  93 DF 00 F0 */	stw r30, 0xf0(r31)
/* 8001C93C 0001989C  48 00 01 80 */	b lbl_8001CABC
lbl_8001C940:
/* 8001C940 000198A0  2C 03 00 01 */	cmpwi r3, 1
/* 8001C944 000198A4  40 82 00 10 */	bne lbl_8001C954
/* 8001C948 000198A8  7F E3 FB 78 */	mr r3, r31
/* 8001C94C 000198AC  48 00 0F 71 */	bl TransitionToFive__11CFrontEndUIFv
/* 8001C950 000198B0  48 00 01 6C */	b lbl_8001CABC
lbl_8001C954:
/* 8001C954 000198B4  2C 03 00 04 */	cmpwi r3, 4
/* 8001C958 000198B8  40 82 01 64 */	bne lbl_8001CABC
/* 8001C95C 000198BC  38 00 00 01 */	li r0, 1
/* 8001C960 000198C0  7F E3 FB 78 */	mr r3, r31
/* 8001C964 000198C4  98 1F 00 D2 */	stb r0, 0xd2(r31)
/* 8001C968 000198C8  7F C4 F3 78 */	mr r4, r30
/* 8001C96C 000198CC  4B FF F1 81 */	bl StartSlideShow__11CFrontEndUIFR18CArchitectureQueue
/* 8001C970 000198D0  48 00 01 4C */	b lbl_8001CABC
lbl_8001C974:
/* 8001C974 000198D4  48 00 39 A5 */	bl ProcessUserInput__19SNewFileSelectFrameFRC11CFinalInput
/* 8001C978 000198D8  2C 03 00 02 */	cmpwi r3, 2
/* 8001C97C 000198DC  40 82 00 14 */	bne lbl_8001C990
/* 8001C980 000198E0  7F E3 FB 78 */	mr r3, r31
/* 8001C984 000198E4  38 80 00 04 */	li r4, 4
/* 8001C988 000198E8  4B FF F5 C1 */	bl StartStateTransition__11CFrontEndUIFQ211CFrontEndUI7EScreen
/* 8001C98C 000198EC  48 00 01 30 */	b lbl_8001CABC
lbl_8001C990:
/* 8001C990 000198F0  2C 03 00 01 */	cmpwi r3, 1
/* 8001C994 000198F4  40 82 00 40 */	bne lbl_8001C9D4
/* 8001C998 000198F8  3C 80 80 3D */	lis r4, lbl_803CC644@ha
/* 8001C99C 000198FC  38 60 01 38 */	li r3, 0x138
/* 8001C9A0 00019900  38 84 C6 44 */	addi r4, r4, lbl_803CC644@l
/* 8001C9A4 00019904  38 A0 00 00 */	li r5, 0
/* 8001C9A8 00019908  38 84 01 14 */	addi r4, r4, 0x114
/* 8001C9AC 0001990C  48 2F 8E C1 */	bl __nw__FUlPCcPCc
/* 8001C9B0 00019910  7C 7E 1B 79 */	or. r30, r3, r3
/* 8001C9B4 00019914  41 82 00 0C */	beq lbl_8001C9C0
/* 8001C9B8 00019918  48 22 64 DD */	bl __ct__21SOptionsFrontEndFrameFv
/* 8001C9BC 0001991C  7C 7E 1B 78 */	mr r30, r3
lbl_8001C9C0:
/* 8001C9C0 00019920  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 8001C9C4 00019924  38 80 00 01 */	li r4, 1
/* 8001C9C8 00019928  48 22 64 2D */	bl __dt__21SOptionsFrontEndFrameFv
/* 8001C9CC 0001992C  93 DF 00 F0 */	stw r30, 0xf0(r31)
/* 8001C9D0 00019930  48 00 00 EC */	b lbl_8001CABC
lbl_8001C9D4:
/* 8001C9D4 00019934  2C 03 00 03 */	cmpwi r3, 3
/* 8001C9D8 00019938  40 82 00 E4 */	bne lbl_8001CABC
/* 8001C9DC 0001993C  38 00 00 01 */	li r0, 1
/* 8001C9E0 00019940  7F E3 FB 78 */	mr r3, r31
/* 8001C9E4 00019944  98 1F 00 D2 */	stb r0, 0xd2(r31)
/* 8001C9E8 00019948  7F C4 F3 78 */	mr r4, r30
/* 8001C9EC 0001994C  4B FF F1 01 */	bl StartSlideShow__11CFrontEndUIFR18CArchitectureQueue
/* 8001C9F0 00019950  48 00 00 CC */	b lbl_8001CABC
lbl_8001C9F4:
/* 8001C9F4 00019954  80 BF 00 DC */	lwz r5, 0xdc(r31)
/* 8001C9F8 00019958  48 22 52 51 */	bl ProcessUserInput__21SOptionsFrontEndFrameFRC11CFinalInputPC15CSaveGameScreen
/* 8001C9FC 0001995C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001CA00 00019960  40 82 00 BC */	bne lbl_8001CABC
/* 8001CA04 00019964  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 8001CA08 00019968  38 80 00 01 */	li r4, 1
/* 8001CA0C 0001996C  48 22 63 E9 */	bl __dt__21SOptionsFrontEndFrameFv
/* 8001CA10 00019970  38 00 00 00 */	li r0, 0
/* 8001CA14 00019974  90 1F 00 F0 */	stw r0, 0xf0(r31)
/* 8001CA18 00019978  48 00 00 A4 */	b lbl_8001CABC
lbl_8001CA1C:
/* 8001CA1C 0001997C  2C 05 00 04 */	cmpwi r5, 4
/* 8001CA20 00019980  38 00 00 00 */	li r0, 0
/* 8001CA24 00019984  40 82 00 10 */	bne lbl_8001CA34
/* 8001CA28 00019988  2C 03 00 04 */	cmpwi r3, 4
/* 8001CA2C 0001998C  40 82 00 08 */	bne lbl_8001CA34
/* 8001CA30 00019990  38 00 00 01 */	li r0, 1
lbl_8001CA34:
/* 8001CA34 00019994  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8001CA38 00019998  41 82 00 84 */	beq lbl_8001CABC
/* 8001CA3C 0001999C  80 7F 00 E4 */	lwz r3, 0xe4(r31)
/* 8001CA40 000199A0  80 BF 00 DC */	lwz r5, 0xdc(r31)
/* 8001CA44 000199A4  48 00 1E 15 */	bl ProcessUserInput__17SFusionBonusFrameFRC11CFinalInputRC15CSaveGameScreen
/* 8001CA48 000199A8  2C 03 00 01 */	cmpwi r3, 1
/* 8001CA4C 000199AC  40 82 00 14 */	bne lbl_8001CA60
/* 8001CA50 000199B0  7F E3 FB 78 */	mr r3, r31
/* 8001CA54 000199B4  38 80 00 03 */	li r4, 3
/* 8001CA58 000199B8  4B FF F4 F1 */	bl StartStateTransition__11CFrontEndUIFQ211CFrontEndUI7EScreen
/* 8001CA5C 000199BC  48 00 00 60 */	b lbl_8001CABC
lbl_8001CA60:
/* 8001CA60 000199C0  2C 03 00 02 */	cmpwi r3, 2
/* 8001CA64 000199C4  40 82 00 58 */	bne lbl_8001CABC
/* 8001CA68 000199C8  80 7F 00 F4 */	lwz r3, 0xf4(r31)
/* 8001CA6C 000199CC  48 34 F5 89 */	bl StopMixOut__18CStaticAudioPlayerFv
/* 8001CA70 000199D0  3C 80 80 3D */	lis r4, lbl_803CC644@ha
/* 8001CA74 000199D4  38 60 00 18 */	li r3, 0x18
/* 8001CA78 000199D8  38 84 C6 44 */	addi r4, r4, lbl_803CC644@l
/* 8001CA7C 000199DC  38 A0 00 00 */	li r5, 0
/* 8001CA80 000199E0  38 84 01 14 */	addi r4, r4, 0x114
/* 8001CA84 000199E4  48 2F 8D E9 */	bl __nw__FUlPCcPCc
/* 8001CA88 000199E8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8001CA8C 000199EC  41 82 00 0C */	beq lbl_8001CA98
/* 8001CA90 000199F0  48 00 60 CD */	bl __ct__17SNesEmulatorFrameFv
/* 8001CA94 000199F4  7C 7E 1B 78 */	mr r30, r3
lbl_8001CA98:
/* 8001CA98 000199F8  80 7F 00 EC */	lwz r3, 0xec(r31)
/* 8001CA9C 000199FC  38 80 00 01 */	li r4, 1
/* 8001CAA0 00019A00  48 00 60 09 */	bl __dt__17SNesEmulatorFrameFv
/* 8001CAA4 00019A04  93 DF 00 EC */	stw r30, 0xec(r31)
/* 8001CAA8 00019A08  80 7F 00 DC */	lwz r3, 0xdc(r31)
/* 8001CAAC 00019A0C  28 03 00 00 */	cmplwi r3, 0
/* 8001CAB0 00019A10  41 82 00 0C */	beq lbl_8001CABC
/* 8001CAB4 00019A14  38 80 00 01 */	li r4, 1
/* 8001CAB8 00019A18  48 23 26 B5 */	bl SetInGame__15CSaveGameScreenb
lbl_8001CABC:
/* 8001CABC 00019A1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001CAC0 00019A20  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8001CAC4 00019A24  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8001CAC8 00019A28  7C 08 03 A6 */	mtlr r0
/* 8001CACC 00019A2C  38 21 00 20 */	addi r1, r1, 0x20
/* 8001CAD0 00019A30  4E 80 00 20 */	blr

.global UpdateMovies__11CFrontEndUIFf
UpdateMovies__11CFrontEndUIFf:
/* 8001CAD4 00019A34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001CAD8 00019A38  7C 08 02 A6 */	mflr r0
/* 8001CADC 00019A3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001CAE0 00019A40  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8001CAE4 00019A44  FF E0 08 90 */	fmr f31, f1
/* 8001CAE8 00019A48  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8001CAEC 00019A4C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8001CAF0 00019A50  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8001CAF4 00019A54  7C 7D 1B 78 */	mr r29, r3
/* 8001CAF8 00019A58  80 63 00 CC */	lwz r3, 0xcc(r3)
/* 8001CAFC 00019A5C  28 03 00 00 */	cmplwi r3, 0
/* 8001CB00 00019A60  41 82 00 30 */	beq lbl_8001CB30
/* 8001CB04 00019A64  48 33 FF 7D */	bl PumpIndexLoad__12CMoviePlayerFv
/* 8001CB08 00019A68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001CB0C 00019A6C  40 82 00 24 */	bne lbl_8001CB30
/* 8001CB10 00019A70  88 1D 00 5C */	lbz r0, 0x5c(r29)
/* 8001CB14 00019A74  28 00 00 00 */	cmplwi r0, 0
/* 8001CB18 00019A78  41 82 00 18 */	beq lbl_8001CB30
/* 8001CB1C 00019A7C  38 00 00 00 */	li r0, 0
/* 8001CB20 00019A80  98 1D 00 5C */	stb r0, 0x5c(r29)
/* 8001CB24 00019A84  80 7D 00 CC */	lwz r3, 0xcc(r29)
/* 8001CB28 00019A88  48 33 F0 B5 */	bl GetTotalSeconds__12CMoviePlayerCFv
/* 8001CB2C 00019A8C  D0 3D 00 58 */	stfs f1, 0x58(r29)
lbl_8001CB30:
/* 8001CB30 00019A90  3B C0 00 00 */	li r30, 0
/* 8001CB34 00019A94  3B FD 00 70 */	addi r31, r29, 0x70
lbl_8001CB38:
/* 8001CB38 00019A98  80 7F 00 04 */	lwz r3, 4(r31)
/* 8001CB3C 00019A9C  28 03 00 00 */	cmplwi r3, 0
/* 8001CB40 00019AA0  41 82 00 0C */	beq lbl_8001CB4C
/* 8001CB44 00019AA4  FC 20 F8 90 */	fmr f1, f31
/* 8001CB48 00019AA8  48 33 F2 19 */	bl Update__12CMoviePlayerFf
lbl_8001CB4C:
/* 8001CB4C 00019AAC  3B DE 00 01 */	addi r30, r30, 1
/* 8001CB50 00019AB0  3B FF 00 08 */	addi r31, r31, 8
/* 8001CB54 00019AB4  2C 1E 00 09 */	cmpwi r30, 9
/* 8001CB58 00019AB8  41 80 FF E0 */	blt lbl_8001CB38
/* 8001CB5C 00019ABC  80 7D 00 C8 */	lwz r3, 0xc8(r29)
/* 8001CB60 00019AC0  28 03 00 00 */	cmplwi r3, 0
/* 8001CB64 00019AC4  41 82 00 1C */	beq lbl_8001CB80
/* 8001CB68 00019AC8  48 33 FF 19 */	bl PumpIndexLoad__12CMoviePlayerFv
/* 8001CB6C 00019ACC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001CB70 00019AD0  40 82 00 10 */	bne lbl_8001CB80
/* 8001CB74 00019AD4  FC 20 F8 90 */	fmr f1, f31
/* 8001CB78 00019AD8  80 7D 00 C8 */	lwz r3, 0xc8(r29)
/* 8001CB7C 00019ADC  48 33 F1 E5 */	bl Update__12CMoviePlayerFf
lbl_8001CB80:
/* 8001CB80 00019AE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001CB84 00019AE4  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8001CB88 00019AE8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8001CB8C 00019AEC  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8001CB90 00019AF0  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 8001CB94 00019AF4  7C 08 03 A6 */	mtlr r0
/* 8001CB98 00019AF8  38 21 00 20 */	addi r1, r1, 0x20
/* 8001CB9C 00019AFC  4E 80 00 20 */	blr

.global PumpMovieLoad__11CFrontEndUI
PumpMovieLoad__11CFrontEndUI:
/* 8001CBA0 00019B00  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 8001CBA4 00019B04  7C 08 02 A6 */	mflr r0
/* 8001CBA8 00019B08  90 01 01 34 */	stw r0, 0x134(r1)
/* 8001CBAC 00019B0C  BF 61 01 1C */	stmw r27, 0x11c(r1)
/* 8001CBB0 00019B10  7C 7B 1B 78 */	mr r27, r3
/* 8001CBB4 00019B14  88 03 00 D1 */	lbz r0, 0xd1(r3)
/* 8001CBB8 00019B18  28 00 00 00 */	cmplwi r0, 0
/* 8001CBBC 00019B1C  41 82 00 0C */	beq lbl_8001CBC8
/* 8001CBC0 00019B20  38 60 00 01 */	li r3, 1
/* 8001CBC4 00019B24  48 00 01 70 */	b lbl_8001CD34
lbl_8001CBC8:
/* 8001CBC8 00019B28  3B FB 00 70 */	addi r31, r27, 0x70
/* 8001CBCC 00019B2C  3B C0 00 00 */	li r30, 0
/* 8001CBD0 00019B30  7F FD FB 78 */	mr r29, r31
lbl_8001CBD4:
/* 8001CBD4 00019B34  80 7D 00 04 */	lwz r3, 4(r29)
/* 8001CBD8 00019B38  28 03 00 00 */	cmplwi r3, 0
/* 8001CBDC 00019B3C  40 82 01 28 */	bne lbl_8001CD04
/* 8001CBE0 00019B40  3C 60 80 3D */	lis r3, lbl_803CC540@ha
/* 8001CBE4 00019B44  57 C4 18 38 */	slwi r4, r30, 3
/* 8001CBE8 00019B48  38 03 C5 40 */	addi r0, r3, lbl_803CC540@l
/* 8001CBEC 00019B4C  38 61 00 10 */	addi r3, r1, 0x10
/* 8001CBF0 00019B50  7F 80 22 14 */	add r28, r0, r4
/* 8001CBF4 00019B54  80 9C 00 00 */	lwz r4, 0(r28)
/* 8001CBF8 00019B58  48 37 35 11 */	bl strcpy
/* 8001CBFC 00019B5C  2C 1E 00 02 */	cmpwi r30, 2
/* 8001CC00 00019B60  40 82 00 24 */	bne lbl_8001CC24
/* 8001CC04 00019B64  80 9B 00 18 */	lwz r4, 0x18(r27)
/* 8001CC08 00019B68  38 61 00 10 */	addi r3, r1, 0x10
/* 8001CC0C 00019B6C  38 04 00 41 */	addi r0, r4, 0x41
/* 8001CC10 00019B70  7C 1D 07 74 */	extsb r29, r0
/* 8001CC14 00019B74  48 37 35 AD */	bl strlen
/* 8001CC18 00019B78  38 81 00 0B */	addi r4, r1, 0xb
/* 8001CC1C 00019B7C  7F A4 19 AE */	stbx r29, r4, r3
/* 8001CC20 00019B80  48 00 00 28 */	b lbl_8001CC48
lbl_8001CC24:
/* 8001CC24 00019B84  2C 1E 00 04 */	cmpwi r30, 4
/* 8001CC28 00019B88  40 82 00 20 */	bne lbl_8001CC48
/* 8001CC2C 00019B8C  80 9B 00 1C */	lwz r4, 0x1c(r27)
/* 8001CC30 00019B90  38 61 00 10 */	addi r3, r1, 0x10
/* 8001CC34 00019B94  38 04 00 41 */	addi r0, r4, 0x41
/* 8001CC38 00019B98  7C 1D 07 74 */	extsb r29, r0
/* 8001CC3C 00019B9C  48 37 35 85 */	bl strlen
/* 8001CC40 00019BA0  38 81 00 0B */	addi r4, r1, 0xb
/* 8001CC44 00019BA4  7F A4 19 AE */	stbx r29, r4, r3
lbl_8001CC48:
/* 8001CC48 00019BA8  3C 80 80 3D */	lis r4, lbl_803CC644@ha
/* 8001CC4C 00019BAC  38 60 01 00 */	li r3, 0x100
/* 8001CC50 00019BB0  38 84 C6 44 */	addi r4, r4, lbl_803CC644@l
/* 8001CC54 00019BB4  38 A0 00 00 */	li r5, 0
/* 8001CC58 00019BB8  38 84 01 14 */	addi r4, r4, 0x114
/* 8001CC5C 00019BBC  48 2F 8C 11 */	bl __nw__FUlPCcPCc
/* 8001CC60 00019BC0  7C 65 1B 79 */	or. r5, r3, r3
/* 8001CC64 00019BC4  41 82 00 1C */	beq lbl_8001CC80
/* 8001CC68 00019BC8  C0 22 82 C4 */	lfs f1, lbl_805A9FE4@sda21(r2)
/* 8001CC6C 00019BCC  38 81 00 10 */	addi r4, r1, 0x10
/* 8001CC70 00019BD0  88 BC 00 04 */	lbz r5, 4(r28)
/* 8001CC74 00019BD4  38 C0 00 01 */	li r6, 1
/* 8001CC78 00019BD8  48 34 02 A5 */	bl __ct__12CMoviePlayerFPCcfb
/* 8001CC7C 00019BDC  7C 65 1B 78 */	mr r5, r3
lbl_8001CC80:
/* 8001CC80 00019BE0  7C 05 00 D0 */	neg r0, r5
/* 8001CC84 00019BE4  57 C3 18 38 */	slwi r3, r30, 3
/* 8001CC88 00019BE8  7C 04 2B 78 */	or r4, r0, r5
/* 8001CC8C 00019BEC  38 01 00 08 */	addi r0, r1, 8
/* 8001CC90 00019BF0  7F BF 1A 14 */	add r29, r31, r3
/* 8001CC94 00019BF4  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8001CC98 00019BF8  54 83 0F FE */	srwi r3, r4, 0x1f
/* 8001CC9C 00019BFC  7C 00 E8 40 */	cmplw r0, r29
/* 8001CCA0 00019C00  98 61 00 08 */	stb r3, 8(r1)
/* 8001CCA4 00019C04  41 82 00 34 */	beq lbl_8001CCD8
/* 8001CCA8 00019C08  88 1D 00 00 */	lbz r0, 0(r29)
/* 8001CCAC 00019C0C  28 00 00 00 */	cmplwi r0, 0
/* 8001CCB0 00019C10  41 82 00 10 */	beq lbl_8001CCC0
/* 8001CCB4 00019C14  80 7D 00 04 */	lwz r3, 4(r29)
/* 8001CCB8 00019C18  38 80 00 01 */	li r4, 1
/* 8001CCBC 00019C1C  48 33 FA FD */	bl __dt__12CMoviePlayerFv
lbl_8001CCC0:
/* 8001CCC0 00019C20  88 61 00 08 */	lbz r3, 8(r1)
/* 8001CCC4 00019C24  38 00 00 00 */	li r0, 0
/* 8001CCC8 00019C28  98 7D 00 00 */	stb r3, 0(r29)
/* 8001CCCC 00019C2C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8001CCD0 00019C30  90 7D 00 04 */	stw r3, 4(r29)
/* 8001CCD4 00019C34  98 01 00 08 */	stb r0, 8(r1)
lbl_8001CCD8:
/* 8001CCD8 00019C38  88 01 00 08 */	lbz r0, 8(r1)
/* 8001CCDC 00019C3C  28 00 00 00 */	cmplwi r0, 0
/* 8001CCE0 00019C40  41 82 00 10 */	beq lbl_8001CCF0
/* 8001CCE4 00019C44  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8001CCE8 00019C48  38 80 00 01 */	li r4, 1
/* 8001CCEC 00019C4C  48 33 FA CD */	bl __dt__12CMoviePlayerFv
lbl_8001CCF0:
/* 8001CCF0 00019C50  80 7D 00 04 */	lwz r3, 4(r29)
/* 8001CCF4 00019C54  38 80 00 00 */	li r4, 0
/* 8001CCF8 00019C58  48 33 EE ED */	bl SetPlayMode__12CMoviePlayerFQ212CMoviePlayer9EPlayMode
/* 8001CCFC 00019C5C  38 60 00 00 */	li r3, 0
/* 8001CD00 00019C60  48 00 00 34 */	b lbl_8001CD34
lbl_8001CD04:
/* 8001CD04 00019C64  48 33 FD 7D */	bl PumpIndexLoad__12CMoviePlayerFv
/* 8001CD08 00019C68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001CD0C 00019C6C  41 82 00 0C */	beq lbl_8001CD18
/* 8001CD10 00019C70  38 60 00 00 */	li r3, 0
/* 8001CD14 00019C74  48 00 00 20 */	b lbl_8001CD34
lbl_8001CD18:
/* 8001CD18 00019C78  3B DE 00 01 */	addi r30, r30, 1
/* 8001CD1C 00019C7C  3B BD 00 08 */	addi r29, r29, 8
/* 8001CD20 00019C80  2C 1E 00 09 */	cmpwi r30, 9
/* 8001CD24 00019C84  41 80 FE B0 */	blt lbl_8001CBD4
/* 8001CD28 00019C88  38 00 00 01 */	li r0, 1
/* 8001CD2C 00019C8C  38 60 00 01 */	li r3, 1
/* 8001CD30 00019C90  98 1B 00 D1 */	stb r0, 0xd1(r27)
lbl_8001CD34:
/* 8001CD34 00019C94  BB 61 01 1C */	lmw r27, 0x11c(r1)
/* 8001CD38 00019C98  80 01 01 34 */	lwz r0, 0x134(r1)
/* 8001CD3C 00019C9C  7C 08 03 A6 */	mtlr r0
/* 8001CD40 00019CA0  38 21 01 30 */	addi r1, r1, 0x130
/* 8001CD44 00019CA4  4E 80 00 20 */	blr

.global Update__11CFrontEndUIFfR18CArchitectureQueue
Update__11CFrontEndUIFfR18CArchitectureQueue:
/* 8001CD48 00019CA8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8001CD4C 00019CAC  7C 08 02 A6 */	mflr r0
/* 8001CD50 00019CB0  90 01 00 74 */	stw r0, 0x74(r1)
/* 8001CD54 00019CB4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8001CD58 00019CB8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 8001CD5C 00019CBC  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8001CD60 00019CC0  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 8001CD64 00019CC4  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8001CD68 00019CC8  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8001CD6C 00019CCC  93 A1 00 44 */	stw r29, 0x44(r1)
/* 8001CD70 00019CD0  93 81 00 40 */	stw r28, 0x40(r1)
/* 8001CD74 00019CD4  7C 7F 1B 78 */	mr r31, r3
/* 8001CD78 00019CD8  FF C0 08 90 */	fmr f30, f1
/* 8001CD7C 00019CDC  80 63 00 DC */	lwz r3, 0xdc(r3)
/* 8001CD80 00019CE0  28 03 00 00 */	cmplwi r3, 0
/* 8001CD84 00019CE4  41 82 00 60 */	beq lbl_8001CDE4
/* 8001CD88 00019CE8  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 8001CD8C 00019CEC  2C 00 00 03 */	cmpwi r0, 3
/* 8001CD90 00019CF0  41 80 00 54 */	blt lbl_8001CDE4
/* 8001CD94 00019CF4  48 23 2A 09 */	bl Update__15CSaveGameScreenFf
/* 8001CD98 00019CF8  2C 03 00 01 */	cmpwi r3, 1
/* 8001CD9C 00019CFC  40 82 00 10 */	bne lbl_8001CDAC
/* 8001CDA0 00019D00  7F E3 FB 78 */	mr r3, r31
/* 8001CDA4 00019D04  48 00 0B 19 */	bl TransitionToFive__11CFrontEndUIFv
/* 8001CDA8 00019D08  48 00 00 3C */	b lbl_8001CDE4
lbl_8001CDAC:
/* 8001CDAC 00019D0C  2C 03 00 03 */	cmpwi r3, 3
/* 8001CDB0 00019D10  41 82 00 0C */	beq lbl_8001CDBC
/* 8001CDB4 00019D14  2C 03 00 02 */	cmpwi r3, 2
/* 8001CDB8 00019D18  40 82 00 2C */	bne lbl_8001CDE4
lbl_8001CDBC:
/* 8001CDBC 00019D1C  80 7F 00 E0 */	lwz r3, 0xe0(r31)
/* 8001CDC0 00019D20  38 80 00 01 */	li r4, 1
/* 8001CDC4 00019D24  48 00 3E ED */	bl __dt__19SNewFileSelectFrameFv
/* 8001CDC8 00019D28  38 00 00 00 */	li r0, 0
/* 8001CDCC 00019D2C  38 80 00 01 */	li r4, 1
/* 8001CDD0 00019D30  90 1F 00 E0 */	stw r0, 0xe0(r31)
/* 8001CDD4 00019D34  80 7F 00 DC */	lwz r3, 0xdc(r31)
/* 8001CDD8 00019D38  48 23 30 4D */	bl __dt__15CSaveGameScreenFv
/* 8001CDDC 00019D3C  38 00 00 00 */	li r0, 0
/* 8001CDE0 00019D40  90 1F 00 DC */	stw r0, 0xdc(r31)
lbl_8001CDE4:
/* 8001CDE4 00019D44  7F E3 FB 78 */	mr r3, r31
/* 8001CDE8 00019D48  48 00 09 A9 */	bl UpdateMusicVol__11CFrontEndUIFv
/* 8001CDEC 00019D4C  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8001CDF0 00019D50  2C 00 00 03 */	cmpwi r0, 3
/* 8001CDF4 00019D54  41 82 03 30 */	beq lbl_8001D124
/* 8001CDF8 00019D58  40 80 00 1C */	bge lbl_8001CE14
/* 8001CDFC 00019D5C  2C 00 00 01 */	cmpwi r0, 1
/* 8001CE00 00019D60  41 82 00 58 */	beq lbl_8001CE58
/* 8001CE04 00019D64  40 80 02 A0 */	bge lbl_8001D0A4
/* 8001CE08 00019D68  2C 00 00 00 */	cmpwi r0, 0
/* 8001CE0C 00019D6C  40 80 00 18 */	bge lbl_8001CE24
/* 8001CE10 00019D70  48 00 07 8C */	b lbl_8001D59C
lbl_8001CE14:
/* 8001CE14 00019D74  2C 00 00 06 */	cmpwi r0, 6
/* 8001CE18 00019D78  41 82 07 7C */	beq lbl_8001D594
/* 8001CE1C 00019D7C  40 80 07 80 */	bge lbl_8001D59C
/* 8001CE20 00019D80  48 00 03 84 */	b lbl_8001D1A4
lbl_8001CE24:
/* 8001CE24 00019D84  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8001CE28 00019D88  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8001CE2C 00019D8C  28 00 00 00 */	cmplwi r0, 0
/* 8001CE30 00019D90  41 82 00 20 */	beq lbl_8001CE50
/* 8001CE34 00019D94  7F E3 FB 78 */	mr r3, r31
/* 8001CE38 00019D98  48 00 08 45 */	bl FinishedLoadingDepsGroup__11CFrontEndUIFv
/* 8001CE3C 00019D9C  38 7F 00 20 */	addi r3, r31, 0x20
/* 8001CE40 00019DA0  48 32 3F 01 */	bl Unlock__6CTokenFv
/* 8001CE44 00019DA4  38 00 00 01 */	li r0, 1
/* 8001CE48 00019DA8  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8001CE4C 00019DAC  48 00 00 0C */	b lbl_8001CE58
lbl_8001CE50:
/* 8001CE50 00019DB0  38 60 00 01 */	li r3, 1
/* 8001CE54 00019DB4  48 00 07 4C */	b lbl_8001D5A0
lbl_8001CE58:
/* 8001CE58 00019DB8  7F E3 FB 78 */	mr r3, r31
/* 8001CE5C 00019DBC  48 00 07 75 */	bl PumpLoad__11CFrontEndUIFv
/* 8001CE60 00019DC0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001CE64 00019DC4  41 82 02 2C */	beq lbl_8001D090
/* 8001CE68 00019DC8  3C 80 80 3D */	lis r4, lbl_803CC644@ha
/* 8001CE6C 00019DCC  38 60 01 10 */	li r3, 0x110
/* 8001CE70 00019DD0  38 84 C6 44 */	addi r4, r4, lbl_803CC644@l
/* 8001CE74 00019DD4  38 A0 00 00 */	li r5, 0
/* 8001CE78 00019DD8  38 84 01 14 */	addi r4, r4, 0x114
/* 8001CE7C 00019DDC  48 2F 89 F1 */	bl __nw__FUlPCcPCc
/* 8001CE80 00019DE0  7C 7E 1B 79 */	or. r30, r3, r3
/* 8001CE84 00019DE4  41 82 00 14 */	beq lbl_8001CE98
/* 8001CE88 00019DE8  80 9F 00 DC */	lwz r4, 0xdc(r31)
/* 8001CE8C 00019DEC  80 BF 00 1C */	lwz r5, 0x1c(r31)
/* 8001CE90 00019DF0  48 00 3F 21 */	bl __ct__19SNewFileSelectFrameFv
/* 8001CE94 00019DF4  7C 7E 1B 78 */	mr r30, r3
lbl_8001CE98:
/* 8001CE98 00019DF8  80 7F 00 E0 */	lwz r3, 0xe0(r31)
/* 8001CE9C 00019DFC  38 80 00 01 */	li r4, 1
/* 8001CEA0 00019E00  48 00 3E 11 */	bl __dt__19SNewFileSelectFrameFv
/* 8001CEA4 00019E04  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 8001CEA8 00019E08  93 DF 00 E0 */	stw r30, 0xe0(r31)
/* 8001CEAC 00019E0C  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 8001CEB0 00019E10  38 60 00 3C */	li r3, 0x3c
/* 8001CEB4 00019E14  38 84 01 14 */	addi r4, r4, 0x114
/* 8001CEB8 00019E18  38 A0 00 00 */	li r5, 0
/* 8001CEBC 00019E1C  48 2F 89 B1 */	bl __nw__FUlPCcPCc
/* 8001CEC0 00019E20  7C 7E 1B 79 */	or. r30, r3, r3
/* 8001CEC4 00019E24  41 82 00 0C */	beq lbl_8001CED0
/* 8001CEC8 00019E28  48 00 1D 4D */	bl __ct__17SFusionBonusFrameFv
/* 8001CECC 00019E2C  7C 7E 1B 78 */	mr r30, r3
lbl_8001CED0:
/* 8001CED0 00019E30  80 7F 00 E4 */	lwz r3, 0xe4(r31)
/* 8001CED4 00019E34  38 80 00 01 */	li r4, 1
/* 8001CED8 00019E38  48 00 1C 91 */	bl __dt__17SFusionBonusFrameFv
/* 8001CEDC 00019E3C  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 8001CEE0 00019E40  93 DF 00 E4 */	stw r30, 0xe4(r31)
/* 8001CEE4 00019E44  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 8001CEE8 00019E48  38 60 00 2C */	li r3, 0x2c
/* 8001CEEC 00019E4C  38 84 01 14 */	addi r4, r4, 0x114
/* 8001CEF0 00019E50  38 A0 00 00 */	li r5, 0
/* 8001CEF4 00019E54  48 2F 89 79 */	bl __nw__FUlPCcPCc
/* 8001CEF8 00019E58  7C 7E 1B 79 */	or. r30, r3, r3
/* 8001CEFC 00019E5C  41 82 00 10 */	beq lbl_8001CF0C
/* 8001CF00 00019E60  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 8001CF04 00019E64  48 00 4A 49 */	bl __ct__14SFrontEndFrameFv
/* 8001CF08 00019E68  7C 7E 1B 78 */	mr r30, r3
lbl_8001CF0C:
/* 8001CF0C 00019E6C  80 7F 00 E8 */	lwz r3, 0xe8(r31)
/* 8001CF10 00019E70  38 80 00 01 */	li r4, 1
/* 8001CF14 00019E74  48 00 49 D1 */	bl __dt__14SFrontEndFrameFv
/* 8001CF18 00019E78  93 DF 00 E8 */	stw r30, 0xe8(r31)
/* 8001CF1C 00019E7C  38 7F 00 38 */	addi r3, r31, 0x38
/* 8001CF20 00019E80  48 32 3E 65 */	bl Lock__6CTokenFv
/* 8001CF24 00019E84  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 8001CF28 00019E88  28 00 00 00 */	cmplwi r0, 0
/* 8001CF2C 00019E8C  40 82 00 30 */	bne lbl_8001CF5C
/* 8001CF30 00019E90  88 1F 00 3C */	lbz r0, 0x3c(r31)
/* 8001CF34 00019E94  28 00 00 00 */	cmplwi r0, 0
/* 8001CF38 00019E98  41 82 00 24 */	beq lbl_8001CF5C
/* 8001CF3C 00019E9C  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8001CF40 00019EA0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8001CF44 00019EA4  28 00 00 00 */	cmplwi r0, 0
/* 8001CF48 00019EA8  41 82 00 14 */	beq lbl_8001CF5C
/* 8001CF4C 00019EAC  38 7F 00 38 */	addi r3, r31, 0x38
/* 8001CF50 00019EB0  48 32 3E BD */	bl GetObj__6CTokenFv
/* 8001CF54 00019EB4  80 03 00 04 */	lwz r0, 4(r3)
/* 8001CF58 00019EB8  90 1F 00 40 */	stw r0, 0x40(r31)
lbl_8001CF5C:
/* 8001CF5C 00019EBC  80 6D A0 60 */	lwz r3, gpResourceFactory@sda21(r13)
/* 8001CF60 00019EC0  80 82 82 94 */	lwz r4, lbl_805A9FB4@sda21(r2)
/* 8001CF64 00019EC4  81 83 00 00 */	lwz r12, 0(r3)
/* 8001CF68 00019EC8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8001CF6C 00019ECC  7D 89 03 A6 */	mtctr r12
/* 8001CF70 00019ED0  4E 80 04 21 */	bctrl
/* 8001CF74 00019ED4  80 9F 00 4C */	lwz r4, 0x4c(r31)
/* 8001CF78 00019ED8  80 A3 00 04 */	lwz r5, 4(r3)
/* 8001CF7C 00019EDC  38 7F 00 44 */	addi r3, r31, 0x44
/* 8001CF80 00019EE0  3B C4 00 20 */	addi r30, r4, 0x20
/* 8001CF84 00019EE4  7F C4 F3 78 */	mr r4, r30
/* 8001CF88 00019EE8  48 32 F1 21 */	bl "SysLoadGroupSet__9CAudioSysF30TLockedToken<14CAudioGroupSet>Q24rstl6stringUi"
/* 8001CF8C 00019EEC  7F C3 F3 78 */	mr r3, r30
/* 8001CF90 00019EF0  38 80 00 26 */	li r4, 0x26
/* 8001CF94 00019EF4  48 32 E9 7D */	bl "SysPushGroupIntoARAM__9CAudioSysFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Uc"
/* 8001CF98 00019EF8  7F C3 F3 78 */	mr r3, r30
/* 8001CF9C 00019EFC  48 32 F0 49 */	bl "SysUnloadSampleData__9CAudioSysFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8001CFA0 00019F00  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 8001CFA4 00019F04  3B 80 00 00 */	li r28, 0
/* 8001CFA8 00019F08  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 8001CFAC 00019F0C  38 60 00 C4 */	li r3, 0xc4
/* 8001CFB0 00019F10  38 84 01 14 */	addi r4, r4, 0x114
/* 8001CFB4 00019F14  38 A0 00 00 */	li r5, 0
/* 8001CFB8 00019F18  48 2F 88 B5 */	bl __nw__FUlPCcPCc
/* 8001CFBC 00019F1C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8001CFC0 00019F20  41 82 00 34 */	beq lbl_8001CFF4
/* 8001CFC4 00019F24  80 82 82 8C */	lwz r4, lbl_805A9FAC@sda21(r2)
/* 8001CFC8 00019F28  38 61 00 24 */	addi r3, r1, 0x24
/* 8001CFCC 00019F2C  4B FE 7C ED */	bl string_l__4rstlFPCc
/* 8001CFD0 00019F30  3C A0 00 06 */	lis r5, 0x00065AE0@ha
/* 8001CFD4 00019F34  3C C0 00 1E */	lis r6, 0x001E1DA0@ha
/* 8001CFD8 00019F38  7F C3 F3 78 */	mr r3, r30
/* 8001CFDC 00019F3C  38 81 00 24 */	addi r4, r1, 0x24
/* 8001CFE0 00019F40  38 A5 5A E0 */	addi r5, r5, 0x00065AE0@l
/* 8001CFE4 00019F44  38 C6 1D A0 */	addi r6, r6, 0x001E1DA0@l
/* 8001CFE8 00019F48  3B 80 00 01 */	li r28, 1
/* 8001CFEC 00019F4C  48 34 F2 ED */	bl __ct__18CStaticAudioPlayerFRCQ24rstl12basic_stringii
/* 8001CFF0 00019F50  7C 7E 1B 78 */	mr r30, r3
lbl_8001CFF4:
/* 8001CFF4 00019F54  80 7F 00 D4 */	lwz r3, 0xd4(r31)
/* 8001CFF8 00019F58  38 80 00 01 */	li r4, 1
/* 8001CFFC 00019F5C  48 34 F1 5D */	bl __dt__18CStaticAudioPlayer
/* 8001D000 00019F60  7F 80 07 75 */	extsb. r0, r28
/* 8001D004 00019F64  93 DF 00 D4 */	stw r30, 0xd4(r31)
/* 8001D008 00019F68  41 82 00 0C */	beq lbl_8001D014
/* 8001D00C 00019F6C  38 61 00 24 */	addi r3, r1, 0x24
/* 8001D010 00019F70  48 32 0A D1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8001D014:
/* 8001D014 00019F74  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 8001D018 00019F78  3B 80 00 00 */	li r28, 0
/* 8001D01C 00019F7C  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 8001D020 00019F80  38 60 00 C4 */	li r3, 0xc4
/* 8001D024 00019F84  38 84 01 14 */	addi r4, r4, 0x114
/* 8001D028 00019F88  38 A0 00 00 */	li r5, 0
/* 8001D02C 00019F8C  48 2F 88 41 */	bl __nw__FUlPCcPCc
/* 8001D030 00019F90  7C 7E 1B 79 */	or. r30, r3, r3
/* 8001D034 00019F94  41 82 00 34 */	beq lbl_8001D068
/* 8001D038 00019F98  80 82 82 90 */	lwz r4, lbl_805A9FB0@sda21(r2)
/* 8001D03C 00019F9C  38 61 00 14 */	addi r3, r1, 0x14
/* 8001D040 00019FA0  4B FE 7C 79 */	bl string_l__4rstlFPCc
/* 8001D044 00019FA4  3C A0 00 04 */	lis r5, 0x00042C94@ha
/* 8001D048 00019FA8  3C C0 00 19 */	lis r6, 0x0018FA74@ha
/* 8001D04C 00019FAC  7F C3 F3 78 */	mr r3, r30
/* 8001D050 00019FB0  38 81 00 14 */	addi r4, r1, 0x14
/* 8001D054 00019FB4  38 A5 2C 94 */	addi r5, r5, 0x00042C94@l
/* 8001D058 00019FB8  38 C6 FA 74 */	addi r6, r6, 0x0018FA74@l
/* 8001D05C 00019FBC  3B 80 00 01 */	li r28, 1
/* 8001D060 00019FC0  48 34 F2 79 */	bl __ct__18CStaticAudioPlayerFRCQ24rstl12basic_stringii
/* 8001D064 00019FC4  7C 7E 1B 78 */	mr r30, r3
lbl_8001D068:
/* 8001D068 00019FC8  80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 8001D06C 00019FCC  38 80 00 01 */	li r4, 1
/* 8001D070 00019FD0  48 34 F0 E9 */	bl __dt__18CStaticAudioPlayer
/* 8001D074 00019FD4  7F 80 07 75 */	extsb. r0, r28
/* 8001D078 00019FD8  93 DF 00 D8 */	stw r30, 0xd8(r31)
/* 8001D07C 00019FDC  41 82 00 0C */	beq lbl_8001D088
/* 8001D080 00019FE0  38 61 00 14 */	addi r3, r1, 0x14
/* 8001D084 00019FE4  48 32 0A 5D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8001D088:
/* 8001D088 00019FE8  38 00 00 02 */	li r0, 2
/* 8001D08C 00019FEC  90 1F 00 14 */	stw r0, 0x14(r31)
lbl_8001D090:
/* 8001D090 00019FF0  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8001D094 00019FF4  2C 00 00 01 */	cmpwi r0, 1
/* 8001D098 00019FF8  40 82 00 0C */	bne lbl_8001D0A4
/* 8001D09C 00019FFC  38 60 00 01 */	li r3, 1
/* 8001D0A0 0001A000  48 00 05 00 */	b lbl_8001D5A0
lbl_8001D0A4:
/* 8001D0A4 0001A004  80 7F 00 D4 */	lwz r3, 0xd4(r31)
/* 8001D0A8 0001A008  48 34 F0 5D */	bl IsReady__18CStaticAudioPlayer
/* 8001D0AC 0001A00C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001D0B0 0001A010  41 82 00 54 */	beq lbl_8001D104
/* 8001D0B4 0001A014  80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 8001D0B8 0001A018  48 34 F0 4D */	bl IsReady__18CStaticAudioPlayer
/* 8001D0BC 0001A01C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001D0C0 0001A020  41 82 00 44 */	beq lbl_8001D104
/* 8001D0C4 0001A024  80 7F 00 E0 */	lwz r3, 0xe0(r31)
/* 8001D0C8 0001A028  48 00 3B 25 */	bl PumpLoad__19SNewFileSelectFrameFv
/* 8001D0CC 0001A02C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001D0D0 0001A030  41 82 00 34 */	beq lbl_8001D104
/* 8001D0D4 0001A034  80 7F 00 E4 */	lwz r3, 0xe4(r31)
/* 8001D0D8 0001A038  48 00 16 59 */	bl PumpLoad__17SFusionBonusFrameFv
/* 8001D0DC 0001A03C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001D0E0 0001A040  41 82 00 24 */	beq lbl_8001D104
/* 8001D0E4 0001A044  80 7F 00 E8 */	lwz r3, 0xe8(r31)
/* 8001D0E8 0001A048  48 00 47 39 */	bl PumpLoad__14SFrontEndFrameFv
/* 8001D0EC 0001A04C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001D0F0 0001A050  41 82 00 14 */	beq lbl_8001D104
/* 8001D0F4 0001A054  80 7F 00 DC */	lwz r3, 0xdc(r31)
/* 8001D0F8 0001A058  48 23 28 AD */	bl PumpLoad__15CSaveGameScreenFv
/* 8001D0FC 0001A05C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001D100 0001A060  40 82 00 0C */	bne lbl_8001D10C
lbl_8001D104:
/* 8001D104 0001A064  38 60 00 01 */	li r3, 1
/* 8001D108 0001A068  48 00 04 98 */	b lbl_8001D5A0
lbl_8001D10C:
/* 8001D10C 0001A06C  80 1F 00 D4 */	lwz r0, 0xd4(r31)
/* 8001D110 0001A070  90 1F 00 F4 */	stw r0, 0xf4(r31)
/* 8001D114 0001A074  80 7F 00 F4 */	lwz r3, 0xf4(r31)
/* 8001D118 0001A078  48 34 EF 19 */	bl StartMixOut__18CStaticAudioPlayerFv
/* 8001D11C 0001A07C  38 00 00 03 */	li r0, 3
/* 8001D120 0001A080  90 1F 00 14 */	stw r0, 0x14(r31)
lbl_8001D124:
/* 8001D124 0001A084  7F E3 FB 78 */	mr r3, r31
/* 8001D128 0001A088  3B A0 00 01 */	li r29, 1
/* 8001D12C 0001A08C  4B FF FA 75 */	bl PumpMovieLoad__11CFrontEndUI
/* 8001D130 0001A090  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001D134 0001A094  40 82 00 0C */	bne lbl_8001D140
/* 8001D138 0001A098  3B A0 00 00 */	li r29, 0
/* 8001D13C 0001A09C  48 00 00 40 */	b lbl_8001D17C
lbl_8001D140:
/* 8001D140 0001A0A0  FC 20 F0 90 */	fmr f1, f30
/* 8001D144 0001A0A4  7F E3 FB 78 */	mr r3, r31
/* 8001D148 0001A0A8  4B FF F9 8D */	bl UpdateMovies__11CFrontEndUIFf
/* 8001D14C 0001A0AC  3B 80 00 00 */	li r28, 0
/* 8001D150 0001A0B0  3B DF 00 70 */	addi r30, r31, 0x70
lbl_8001D154:
/* 8001D154 0001A0B4  80 7E 00 04 */	lwz r3, 4(r30)
/* 8001D158 0001A0B8  48 33 EA 59 */	bl GetIsFullyCached__12CMoviePlayerCFv
/* 8001D15C 0001A0BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001D160 0001A0C0  40 82 00 0C */	bne lbl_8001D16C
/* 8001D164 0001A0C4  3B A0 00 00 */	li r29, 0
/* 8001D168 0001A0C8  48 00 00 14 */	b lbl_8001D17C
lbl_8001D16C:
/* 8001D16C 0001A0CC  3B 9C 00 01 */	addi r28, r28, 1
/* 8001D170 0001A0D0  3B DE 00 08 */	addi r30, r30, 8
/* 8001D174 0001A0D4  2C 1C 00 09 */	cmpwi r28, 9
/* 8001D178 0001A0D8  41 80 FF DC */	blt lbl_8001D154
lbl_8001D17C:
/* 8001D17C 0001A0DC  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 8001D180 0001A0E0  41 82 00 1C */	beq lbl_8001D19C
/* 8001D184 0001A0E4  38 00 00 04 */	li r0, 4
/* 8001D188 0001A0E8  7F E3 FB 78 */	mr r3, r31
/* 8001D18C 0001A0EC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8001D190 0001A0F0  38 80 00 01 */	li r4, 1
/* 8001D194 0001A0F4  4B FF ED B5 */	bl StartStateTransition__11CFrontEndUIFQ211CFrontEndUI7EScreen
/* 8001D198 0001A0F8  48 00 00 0C */	b lbl_8001D1A4
lbl_8001D19C:
/* 8001D19C 0001A0FC  38 60 00 01 */	li r3, 1
/* 8001D1A0 0001A100  48 00 04 00 */	b lbl_8001D5A0
lbl_8001D1A4:
/* 8001D1A4 0001A104  80 7F 00 EC */	lwz r3, 0xec(r31)
/* 8001D1A8 0001A108  28 03 00 00 */	cmplwi r3, 0
/* 8001D1AC 0001A10C  41 82 00 4C */	beq lbl_8001D1F8
/* 8001D1B0 0001A110  FC 20 F0 90 */	fmr f1, f30
/* 8001D1B4 0001A114  80 9F 00 DC */	lwz r4, 0xdc(r31)
/* 8001D1B8 0001A118  48 00 53 65 */	bl Update__17SNesEmulatorFrameFfR15CSaveGameScreen
/* 8001D1BC 0001A11C  2C 03 00 01 */	cmpwi r3, 1
/* 8001D1C0 0001A120  40 82 02 DC */	bne lbl_8001D49C
/* 8001D1C4 0001A124  80 7F 00 EC */	lwz r3, 0xec(r31)
/* 8001D1C8 0001A128  38 80 00 01 */	li r4, 1
/* 8001D1CC 0001A12C  48 00 58 DD */	bl __dt__17SNesEmulatorFrameFv
/* 8001D1D0 0001A130  38 00 00 00 */	li r0, 0
/* 8001D1D4 0001A134  90 1F 00 EC */	stw r0, 0xec(r31)
/* 8001D1D8 0001A138  80 7F 00 DC */	lwz r3, 0xdc(r31)
/* 8001D1DC 0001A13C  28 03 00 00 */	cmplwi r3, 0
/* 8001D1E0 0001A140  41 82 00 0C */	beq lbl_8001D1EC
/* 8001D1E4 0001A144  38 80 00 00 */	li r4, 0
/* 8001D1E8 0001A148  48 23 1F 85 */	bl SetInGame__15CSaveGameScreenb
lbl_8001D1EC:
/* 8001D1EC 0001A14C  80 7F 00 F4 */	lwz r3, 0xf4(r31)
/* 8001D1F0 0001A150  48 34 EE 41 */	bl StartMixOut__18CStaticAudioPlayerFv
/* 8001D1F4 0001A154  48 00 02 A8 */	b lbl_8001D49C
lbl_8001D1F8:
/* 8001D1F8 0001A158  88 1F 00 D2 */	lbz r0, 0xd2(r31)
/* 8001D1FC 0001A15C  28 00 00 00 */	cmplwi r0, 0
/* 8001D200 0001A160  41 82 00 24 */	beq lbl_8001D224
/* 8001D204 0001A164  38 00 00 00 */	li r0, 0
/* 8001D208 0001A168  98 1F 00 D2 */	stb r0, 0xd2(r31)
/* 8001D20C 0001A16C  80 7F 00 F4 */	lwz r3, 0xf4(r31)
/* 8001D210 0001A170  48 34 EE 21 */	bl StartMixOut__18CStaticAudioPlayerFv
/* 8001D214 0001A174  80 7F 00 DC */	lwz r3, 0xdc(r31)
/* 8001D218 0001A178  28 03 00 00 */	cmplwi r3, 0
/* 8001D21C 0001A17C  41 82 00 08 */	beq lbl_8001D224
/* 8001D220 0001A180  48 23 2B 6D */	bl ResetCardDriver__15CSaveGameScreenFv
lbl_8001D224:
/* 8001D224 0001A184  80 9F 00 50 */	lwz r4, 0x50(r31)
/* 8001D228 0001A188  38 60 00 00 */	li r3, 0
/* 8001D22C 0001A18C  2C 04 00 03 */	cmpwi r4, 3
/* 8001D230 0001A190  40 82 00 14 */	bne lbl_8001D244
/* 8001D234 0001A194  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 8001D238 0001A198  2C 00 00 03 */	cmpwi r0, 3
/* 8001D23C 0001A19C  40 82 00 08 */	bne lbl_8001D244
/* 8001D240 0001A1A0  38 60 00 01 */	li r3, 1
lbl_8001D244:
/* 8001D244 0001A1A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001D248 0001A1A8  41 82 00 80 */	beq lbl_8001D2C8
/* 8001D24C 0001A1AC  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 8001D250 0001A1B0  28 03 00 00 */	cmplwi r3, 0
/* 8001D254 0001A1B4  40 82 00 2C */	bne lbl_8001D280
/* 8001D258 0001A1B8  80 7F 00 E0 */	lwz r3, 0xe0(r31)
/* 8001D25C 0001A1BC  28 03 00 00 */	cmplwi r3, 0
/* 8001D260 0001A1C0  40 82 00 14 */	bne lbl_8001D274
/* 8001D264 0001A1C4  FC 20 F0 90 */	fmr f1, f30
/* 8001D268 0001A1C8  80 7F 00 E8 */	lwz r3, 0xe8(r31)
/* 8001D26C 0001A1CC  48 00 41 71 */	bl Update__14SFrontEndFrameFf
/* 8001D270 0001A1D0  48 00 00 8C */	b lbl_8001D2FC
lbl_8001D274:
/* 8001D274 0001A1D4  FC 20 F0 90 */	fmr f1, f30
/* 8001D278 0001A1D8  48 00 31 F9 */	bl Update__19SNewFileSelectFrameFf
/* 8001D27C 0001A1DC  48 00 00 80 */	b lbl_8001D2FC
lbl_8001D280:
/* 8001D280 0001A1E0  80 9F 00 DC */	lwz r4, 0xdc(r31)
/* 8001D284 0001A1E4  38 00 00 01 */	li r0, 1
/* 8001D288 0001A1E8  28 04 00 00 */	cmplwi r4, 0
/* 8001D28C 0001A1EC  41 82 00 14 */	beq lbl_8001D2A0
/* 8001D290 0001A1F0  80 A4 00 10 */	lwz r5, 0x10(r4)
/* 8001D294 0001A1F4  2C 05 00 10 */	cmpwi r5, 0x10
/* 8001D298 0001A1F8  41 82 00 08 */	beq lbl_8001D2A0
/* 8001D29C 0001A1FC  38 00 00 00 */	li r0, 0
lbl_8001D2A0:
/* 8001D2A0 0001A200  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8001D2A4 0001A204  41 82 00 10 */	beq lbl_8001D2B4
/* 8001D2A8 0001A208  FC 20 F0 90 */	fmr f1, f30
/* 8001D2AC 0001A20C  48 22 4A A1 */	bl Update__21SOptionsFrontEndFrameFfPC15CSaveGameScreen
/* 8001D2B0 0001A210  48 00 00 4C */	b lbl_8001D2FC
lbl_8001D2B4:
/* 8001D2B4 0001A214  38 80 00 01 */	li r4, 1
/* 8001D2B8 0001A218  48 22 5B 3D */	bl __dt__21SOptionsFrontEndFrameFv
/* 8001D2BC 0001A21C  38 00 00 00 */	li r0, 0
/* 8001D2C0 0001A220  90 1F 00 F0 */	stw r0, 0xf0(r31)
/* 8001D2C4 0001A224  48 00 00 38 */	b lbl_8001D2FC
lbl_8001D2C8:
/* 8001D2C8 0001A228  2C 04 00 04 */	cmpwi r4, 4
/* 8001D2CC 0001A22C  38 60 00 00 */	li r3, 0
/* 8001D2D0 0001A230  40 82 00 14 */	bne lbl_8001D2E4
/* 8001D2D4 0001A234  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 8001D2D8 0001A238  2C 00 00 04 */	cmpwi r0, 4
/* 8001D2DC 0001A23C  40 82 00 08 */	bne lbl_8001D2E4
/* 8001D2E0 0001A240  38 60 00 01 */	li r3, 1
lbl_8001D2E4:
/* 8001D2E4 0001A244  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001D2E8 0001A248  41 82 00 14 */	beq lbl_8001D2FC
/* 8001D2EC 0001A24C  FC 20 F0 90 */	fmr f1, f30
/* 8001D2F0 0001A250  80 7F 00 E4 */	lwz r3, 0xe4(r31)
/* 8001D2F4 0001A254  80 9F 00 DC */	lwz r4, 0xdc(r31)
/* 8001D2F8 0001A258  48 00 16 5D */	bl Update__17SFusionBonusFrameFv
lbl_8001D2FC:
/* 8001D2FC 0001A25C  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 8001D300 0001A260  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 8001D304 0001A264  7C 03 00 00 */	cmpw r3, r0
/* 8001D308 0001A268  41 82 00 40 */	beq lbl_8001D348
/* 8001D30C 0001A26C  80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 8001D310 0001A270  28 03 00 00 */	cmplwi r3, 0
/* 8001D314 0001A274  41 82 00 34 */	beq lbl_8001D348
/* 8001D318 0001A278  80 03 00 AC */	lwz r0, 0xac(r3)
/* 8001D31C 0001A27C  28 00 00 00 */	cmplwi r0, 0
/* 8001D320 0001A280  40 82 00 28 */	bne lbl_8001D348
/* 8001D324 0001A284  48 33 E8 61 */	bl GetIsMovieFinishedPlaying__12CMoviePlayerCFv
/* 8001D328 0001A288  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001D32C 0001A28C  40 82 00 14 */	bne lbl_8001D340
/* 8001D330 0001A290  80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 8001D334 0001A294  88 03 00 F4 */	lbz r0, 0xf4(r3)
/* 8001D338 0001A298  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8001D33C 0001A29C  41 82 00 0C */	beq lbl_8001D348
lbl_8001D340:
/* 8001D340 0001A2A0  7F E3 FB 78 */	mr r3, r31
/* 8001D344 0001A2A4  4B FF EB 15 */	bl CompleteStateTransition__11CFrontEndUIFv
lbl_8001D348:
/* 8001D348 0001A2A8  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8001D34C 0001A2AC  C0 02 82 9C */	lfs f0, lbl_805A9FBC@sda21(r2)
/* 8001D350 0001A2B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8001D354 0001A2B4  40 81 00 B8 */	ble lbl_8001D40C
/* 8001D358 0001A2B8  88 1F 00 5C */	lbz r0, 0x5c(r31)
/* 8001D35C 0001A2BC  28 00 00 00 */	cmplwi r0, 0
/* 8001D360 0001A2C0  40 82 00 AC */	bne lbl_8001D40C
/* 8001D364 0001A2C4  EC 21 F0 28 */	fsubs f1, f1, f30
/* 8001D368 0001A2C8  C0 0D 81 20 */	lfs f0, lbl_805A6CE0@sda21(r13)
/* 8001D36C 0001A2CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8001D370 0001A2D0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8001D374 0001A2D4  40 80 00 0C */	bge lbl_8001D380
/* 8001D378 0001A2D8  38 6D 81 20 */	addi r3, r13, lbl_805A6CE0@sda21
/* 8001D37C 0001A2DC  48 00 00 08 */	b lbl_8001D384
lbl_8001D380:
/* 8001D380 0001A2E0  38 61 00 10 */	addi r3, r1, 0x10
lbl_8001D384:
/* 8001D384 0001A2E4  C0 23 00 00 */	lfs f1, 0(r3)
/* 8001D388 0001A2E8  7F E3 FB 78 */	mr r3, r31
/* 8001D38C 0001A2EC  4B FF E8 01 */	bl SetFadeBlackTimer__11CFrontEndUIFf
/* 8001D390 0001A2F0  C0 22 82 9C */	lfs f1, lbl_805A9FBC@sda21(r2)
/* 8001D394 0001A2F4  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8001D398 0001A2F8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8001D39C 0001A2FC  40 82 00 70 */	bne lbl_8001D40C
/* 8001D3A0 0001A300  80 9F 00 50 */	lwz r4, 0x50(r31)
/* 8001D3A4 0001A304  38 60 00 00 */	li r3, 0
/* 8001D3A8 0001A308  2C 04 00 01 */	cmpwi r4, 1
/* 8001D3AC 0001A30C  40 82 00 14 */	bne lbl_8001D3C0
/* 8001D3B0 0001A310  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 8001D3B4 0001A314  2C 00 00 01 */	cmpwi r0, 1
/* 8001D3B8 0001A318  40 82 00 08 */	bne lbl_8001D3C0
/* 8001D3BC 0001A31C  38 60 00 01 */	li r3, 1
lbl_8001D3C0:
/* 8001D3C0 0001A320  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001D3C4 0001A324  41 82 00 20 */	beq lbl_8001D3E4
/* 8001D3C8 0001A328  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 8001D3CC 0001A32C  2C 00 00 00 */	cmpwi r0, 0
/* 8001D3D0 0001A330  40 81 00 3C */	ble lbl_8001D40C
/* 8001D3D4 0001A334  7F E3 FB 78 */	mr r3, r31
/* 8001D3D8 0001A338  38 80 00 02 */	li r4, 2
/* 8001D3DC 0001A33C  4B FF EB 6D */	bl StartStateTransition__11CFrontEndUIFQ211CFrontEndUI7EScreen
/* 8001D3E0 0001A340  48 00 00 2C */	b lbl_8001D40C
lbl_8001D3E4:
/* 8001D3E4 0001A344  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 8001D3E8 0001A348  2C 00 00 02 */	cmpwi r0, 2
/* 8001D3EC 0001A34C  40 82 00 10 */	bne lbl_8001D3FC
/* 8001D3F0 0001A350  7F E3 FB 78 */	mr r3, r31
/* 8001D3F4 0001A354  4B FF EA 65 */	bl CompleteStateTransition__11CFrontEndUIFv
/* 8001D3F8 0001A358  48 00 00 14 */	b lbl_8001D40C
lbl_8001D3FC:
/* 8001D3FC 0001A35C  7C 04 00 00 */	cmpw r4, r0
/* 8001D400 0001A360  41 82 00 0C */	beq lbl_8001D40C
/* 8001D404 0001A364  7F E3 FB 78 */	mr r3, r31
/* 8001D408 0001A368  4B FF EA 51 */	bl CompleteStateTransition__11CFrontEndUIFv
lbl_8001D40C:
/* 8001D40C 0001A36C  FC 20 F0 90 */	fmr f1, f30
/* 8001D410 0001A370  7F E3 FB 78 */	mr r3, r31
/* 8001D414 0001A374  4B FF F6 C1 */	bl UpdateMovies__11CFrontEndUIFf
/* 8001D418 0001A378  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 8001D41C 0001A37C  2C 00 00 01 */	cmpwi r0, 1
/* 8001D420 0001A380  40 82 00 70 */	bne lbl_8001D490
/* 8001D424 0001A384  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 8001D428 0001A388  2C 00 00 01 */	cmpwi r0, 1
/* 8001D42C 0001A38C  40 82 00 64 */	bne lbl_8001D490
/* 8001D430 0001A390  80 6D A1 20 */	lwz r3, gpTweakGame@sda21(r13)
/* 8001D434 0001A394  C0 22 82 A0 */	lfs f1, lbl_805A9FC0@sda21(r2)
/* 8001D438 0001A398  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 8001D43C 0001A39C  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 8001D440 0001A3A0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8001D444 0001A3A4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8001D448 0001A3A8  40 80 00 48 */	bge lbl_8001D490
/* 8001D44C 0001A3AC  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8001D450 0001A3B0  C8 42 82 C8 */	lfd f2, lbl_805A9FE8@sda21(r2)
/* 8001D454 0001A3B4  EC 20 F0 2A */	fadds f1, f0, f30
/* 8001D458 0001A3B8  48 37 78 55 */	bl fmod
/* 8001D45C 0001A3BC  FC 00 08 18 */	frsp f0, f1
/* 8001D460 0001A3C0  C0 22 82 D0 */	lfs f1, lbl_805A9FF0@sda21(r2)
/* 8001D464 0001A3C4  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 8001D468 0001A3C8  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8001D46C 0001A3CC  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8001D470 0001A3D0  40 80 00 0C */	bge lbl_8001D47C
/* 8001D474 0001A3D4  EC 02 08 24 */	fdivs f0, f2, f1
/* 8001D478 0001A3D8  48 00 00 10 */	b lbl_8001D488
lbl_8001D47C:
/* 8001D47C 0001A3DC  C0 02 82 B0 */	lfs f0, lbl_805A9FD0@sda21(r2)
/* 8001D480 0001A3E0  EC 00 10 28 */	fsubs f0, f0, f2
/* 8001D484 0001A3E4  EC 00 08 24 */	fdivs f0, f0, f1
lbl_8001D488:
/* 8001D488 0001A3E8  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 8001D48C 0001A3EC  48 00 00 10 */	b lbl_8001D49C
lbl_8001D490:
/* 8001D490 0001A3F0  C0 02 82 9C */	lfs f0, lbl_805A9FBC@sda21(r2)
/* 8001D494 0001A3F4  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 8001D498 0001A3F8  D0 1F 00 64 */	stfs f0, 0x64(r31)
lbl_8001D49C:
/* 8001D49C 0001A3FC  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 8001D4A0 0001A400  2C 00 00 01 */	cmpwi r0, 1
/* 8001D4A4 0001A404  40 82 00 6C */	bne lbl_8001D510
/* 8001D4A8 0001A408  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 8001D4AC 0001A40C  2C 00 00 03 */	cmpwi r0, 3
/* 8001D4B0 0001A410  40 82 00 60 */	bne lbl_8001D510
/* 8001D4B4 0001A414  80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 8001D4B8 0001A418  80 03 00 AC */	lwz r0, 0xac(r3)
/* 8001D4BC 0001A41C  28 00 00 00 */	cmplwi r0, 0
/* 8001D4C0 0001A420  40 82 00 CC */	bne lbl_8001D58C
/* 8001D4C4 0001A424  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8001D4C8 0001A428  3C 80 80 3D */	lis r4, lbl_803CC5E8@ha
/* 8001D4CC 0001A42C  38 84 C5 E8 */	addi r4, r4, lbl_803CC5E8@l
/* 8001D4D0 0001A430  54 00 10 3A */	slwi r0, r0, 2
/* 8001D4D4 0001A434  7F E4 04 2E */	lfsx f31, r4, r0
/* 8001D4D8 0001A438  48 33 E6 F5 */	bl GetPlayedSeconds__12CMoviePlayerCFv
/* 8001D4DC 0001A43C  EC 21 F8 28 */	fsubs f1, f1, f31
/* 8001D4E0 0001A440  C0 02 82 D4 */	lfs f0, lbl_805A9FF4@sda21(r2)
/* 8001D4E4 0001A444  38 81 00 0C */	addi r4, r1, 0xc
/* 8001D4E8 0001A448  38 6D 81 24 */	addi r3, r13, lbl_805A6CE4@sda21
/* 8001D4EC 0001A44C  38 AD 81 28 */	addi r5, r13, lbl_805A6CE8@sda21
/* 8001D4F0 0001A450  EC 01 00 24 */	fdivs f0, f1, f0
/* 8001D4F4 0001A454  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8001D4F8 0001A458  4B FE ED BD */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 8001D4FC 0001A45C  C0 23 00 00 */	lfs f1, 0(r3)
/* 8001D500 0001A460  C0 02 82 B0 */	lfs f0, lbl_805A9FD0@sda21(r2)
/* 8001D504 0001A464  EC 00 08 28 */	fsubs f0, f0, f1
/* 8001D508 0001A468  D0 1F 00 68 */	stfs f0, 0x68(r31)
/* 8001D50C 0001A46C  48 00 00 80 */	b lbl_8001D58C
lbl_8001D510:
/* 8001D510 0001A470  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 8001D514 0001A474  2C 00 00 05 */	cmpwi r0, 5
/* 8001D518 0001A478  40 82 00 6C */	bne lbl_8001D584
/* 8001D51C 0001A47C  80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 8001D520 0001A480  80 03 00 AC */	lwz r0, 0xac(r3)
/* 8001D524 0001A484  28 00 00 00 */	cmplwi r0, 0
/* 8001D528 0001A488  40 82 00 64 */	bne lbl_8001D58C
/* 8001D52C 0001A48C  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8001D530 0001A490  3C 80 80 3D */	lis r4, lbl_803CC5DC@ha
/* 8001D534 0001A494  38 84 C5 DC */	addi r4, r4, lbl_803CC5DC@l
/* 8001D538 0001A498  54 00 10 3A */	slwi r0, r0, 2
/* 8001D53C 0001A49C  7F C4 04 2E */	lfsx f30, r4, r0
/* 8001D540 0001A4A0  48 33 E6 8D */	bl GetPlayedSeconds__12CMoviePlayerCFv
/* 8001D544 0001A4A4  FF E0 08 90 */	fmr f31, f1
/* 8001D548 0001A4A8  80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 8001D54C 0001A4AC  48 33 E6 91 */	bl GetTotalSeconds__12CMoviePlayerCFv
/* 8001D550 0001A4B0  EC 5F F0 28 */	fsubs f2, f31, f30
/* 8001D554 0001A4B4  38 81 00 08 */	addi r4, r1, 8
/* 8001D558 0001A4B8  EC 01 F0 28 */	fsubs f0, f1, f30
/* 8001D55C 0001A4BC  38 6D 81 2C */	addi r3, r13, lbl_805A6CEC@sda21
/* 8001D560 0001A4C0  38 AD 81 30 */	addi r5, r13, lbl_805A6CF0@sda21
/* 8001D564 0001A4C4  EC 02 00 24 */	fdivs f0, f2, f0
/* 8001D568 0001A4C8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8001D56C 0001A4CC  4B FE ED 49 */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 8001D570 0001A4D0  C0 23 00 00 */	lfs f1, 0(r3)
/* 8001D574 0001A4D4  C0 02 82 B0 */	lfs f0, lbl_805A9FD0@sda21(r2)
/* 8001D578 0001A4D8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8001D57C 0001A4DC  D0 1F 00 68 */	stfs f0, 0x68(r31)
/* 8001D580 0001A4E0  48 00 00 0C */	b lbl_8001D58C
lbl_8001D584:
/* 8001D584 0001A4E4  C0 02 82 B0 */	lfs f0, lbl_805A9FD0@sda21(r2)
/* 8001D588 0001A4E8  D0 1F 00 68 */	stfs f0, 0x68(r31)
lbl_8001D58C:
/* 8001D58C 0001A4EC  38 60 00 01 */	li r3, 1
/* 8001D590 0001A4F0  48 00 00 10 */	b lbl_8001D5A0
lbl_8001D594:
/* 8001D594 0001A4F4  38 60 00 03 */	li r3, 3
/* 8001D598 0001A4F8  48 00 00 08 */	b lbl_8001D5A0
lbl_8001D59C:
/* 8001D59C 0001A4FC  38 60 00 01 */	li r3, 1
lbl_8001D5A0:
/* 8001D5A0 0001A500  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 8001D5A4 0001A504  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8001D5A8 0001A508  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 8001D5AC 0001A50C  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8001D5B0 0001A510  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8001D5B4 0001A514  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8001D5B8 0001A518  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 8001D5BC 0001A51C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8001D5C0 0001A520  83 81 00 40 */	lwz r28, 0x40(r1)
/* 8001D5C4 0001A524  7C 08 03 A6 */	mtlr r0
/* 8001D5C8 0001A528  38 21 00 70 */	addi r1, r1, 0x70
/* 8001D5CC 0001A52C  4E 80 00 20 */	blr

.global PumpLoad__11CFrontEndUIFv
PumpLoad__11CFrontEndUIFv:
/* 8001D5D0 0001A530  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001D5D4 0001A534  7C 08 02 A6 */	mflr r0
/* 8001D5D8 0001A538  38 80 00 00 */	li r4, 0
/* 8001D5DC 0001A53C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001D5E0 0001A540  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001D5E4 0001A544  7C 7F 1B 78 */	mr r31, r3
/* 8001D5E8 0001A548  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 8001D5EC 0001A54C  7C 09 03 A6 */	mtctr r0
/* 8001D5F0 0001A550  2C 00 00 00 */	cmpwi r0, 0
/* 8001D5F4 0001A554  40 81 00 28 */	ble lbl_8001D61C
lbl_8001D5F8:
/* 8001D5F8 0001A558  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 8001D5FC 0001A55C  7C 63 20 2E */	lwzx r3, r3, r4
/* 8001D600 0001A560  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8001D604 0001A564  28 00 00 00 */	cmplwi r0, 0
/* 8001D608 0001A568  40 82 00 0C */	bne lbl_8001D614
/* 8001D60C 0001A56C  38 60 00 00 */	li r3, 0
/* 8001D610 0001A570  48 00 00 58 */	b lbl_8001D668
lbl_8001D614:
/* 8001D614 0001A574  38 84 00 08 */	addi r4, r4, 8
/* 8001D618 0001A578  42 00 FF E0 */	bdnz lbl_8001D5F8
lbl_8001D61C:
/* 8001D61C 0001A57C  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 8001D620 0001A580  28 00 00 00 */	cmplwi r0, 0
/* 8001D624 0001A584  41 82 00 0C */	beq lbl_8001D630
/* 8001D628 0001A588  38 60 00 01 */	li r3, 1
/* 8001D62C 0001A58C  48 00 00 3C */	b lbl_8001D668
lbl_8001D630:
/* 8001D630 0001A590  88 1F 00 48 */	lbz r0, 0x48(r31)
/* 8001D634 0001A594  28 00 00 00 */	cmplwi r0, 0
/* 8001D638 0001A598  41 82 00 2C */	beq lbl_8001D664
/* 8001D63C 0001A59C  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 8001D640 0001A5A0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8001D644 0001A5A4  28 00 00 00 */	cmplwi r0, 0
/* 8001D648 0001A5A8  41 82 00 1C */	beq lbl_8001D664
/* 8001D64C 0001A5AC  38 7F 00 44 */	addi r3, r31, 0x44
/* 8001D650 0001A5B0  48 32 37 BD */	bl GetObj__6CTokenFv
/* 8001D654 0001A5B4  80 03 00 04 */	lwz r0, 4(r3)
/* 8001D658 0001A5B8  38 60 00 01 */	li r3, 1
/* 8001D65C 0001A5BC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8001D660 0001A5C0  48 00 00 08 */	b lbl_8001D668
lbl_8001D664:
/* 8001D664 0001A5C4  38 60 00 00 */	li r3, 0
lbl_8001D668:
/* 8001D668 0001A5C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001D66C 0001A5CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001D670 0001A5D0  7C 08 03 A6 */	mtlr r0
/* 8001D674 0001A5D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8001D678 0001A5D8  4E 80 00 20 */	blr

.global FinishedLoadingDepsGroup__11CFrontEndUIFv
FinishedLoadingDepsGroup__11CFrontEndUIFv:
/* 8001D67C 0001A5DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8001D680 0001A5E0  7C 08 02 A6 */	mflr r0
/* 8001D684 0001A5E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8001D688 0001A5E8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8001D68C 0001A5EC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8001D690 0001A5F0  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8001D694 0001A5F4  7C 7D 1B 78 */	mr r29, r3
/* 8001D698 0001A5F8  38 7D 00 20 */	addi r3, r29, 0x20
/* 8001D69C 0001A5FC  48 32 37 71 */	bl GetObj__6CTokenFv
/* 8001D6A0 0001A600  83 E3 00 04 */	lwz r31, 4(r3)
/* 8001D6A4 0001A604  38 7D 00 28 */	addi r3, r29, 0x28
/* 8001D6A8 0001A608  80 9F 00 04 */	lwz r4, 4(r31)
/* 8001D6AC 0001A60C  4B FE B2 B1 */	bl "reserve__Q24rstl42vector<6CToken,Q24rstl17rmemory_allocator>Fi"
/* 8001D6B0 0001A610  83 DF 00 0C */	lwz r30, 0xc(r31)
/* 8001D6B4 0001A614  48 00 00 A0 */	b lbl_8001D754
lbl_8001D6B8:
/* 8001D6B8 0001A618  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 8001D6BC 0001A61C  7F C5 F3 78 */	mr r5, r30
/* 8001D6C0 0001A620  38 61 00 08 */	addi r3, r1, 8
/* 8001D6C4 0001A624  81 84 00 00 */	lwz r12, 0(r4)
/* 8001D6C8 0001A628  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8001D6CC 0001A62C  7D 89 03 A6 */	mtctr r12
/* 8001D6D0 0001A630  4E 80 04 21 */	bctrl
/* 8001D6D4 0001A634  38 61 00 10 */	addi r3, r1, 0x10
/* 8001D6D8 0001A638  38 81 00 08 */	addi r4, r1, 8
/* 8001D6DC 0001A63C  48 32 37 CD */	bl __ct__6CTokenFRC6CToken
/* 8001D6E0 0001A640  38 61 00 08 */	addi r3, r1, 8
/* 8001D6E4 0001A644  38 80 FF FF */	li r4, -1
/* 8001D6E8 0001A648  48 32 37 59 */	bl __dt__6CTokenFv
/* 8001D6EC 0001A64C  38 61 00 10 */	addi r3, r1, 0x10
/* 8001D6F0 0001A650  48 32 36 95 */	bl Lock__6CTokenFv
/* 8001D6F4 0001A654  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 8001D6F8 0001A658  80 BD 00 30 */	lwz r5, 0x30(r29)
/* 8001D6FC 0001A65C  7C 00 28 00 */	cmpw r0, r5
/* 8001D700 0001A660  41 80 00 1C */	blt lbl_8001D71C
/* 8001D704 0001A664  2C 05 00 00 */	cmpwi r5, 0
/* 8001D708 0001A668  38 7D 00 28 */	addi r3, r29, 0x28
/* 8001D70C 0001A66C  38 80 00 04 */	li r4, 4
/* 8001D710 0001A670  41 82 00 08 */	beq lbl_8001D718
/* 8001D714 0001A674  54 A4 08 3C */	slwi r4, r5, 1
lbl_8001D718:
/* 8001D718 0001A678  4B FE B2 45 */	bl "reserve__Q24rstl42vector<6CToken,Q24rstl17rmemory_allocator>Fi"
lbl_8001D71C:
/* 8001D71C 0001A67C  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 8001D720 0001A680  80 7D 00 34 */	lwz r3, 0x34(r29)
/* 8001D724 0001A684  54 00 18 38 */	slwi r0, r0, 3
/* 8001D728 0001A688  7C 63 02 15 */	add. r3, r3, r0
/* 8001D72C 0001A68C  41 82 00 0C */	beq lbl_8001D738
/* 8001D730 0001A690  38 81 00 10 */	addi r4, r1, 0x10
/* 8001D734 0001A694  48 32 37 75 */	bl __ct__6CTokenFRC6CToken
lbl_8001D738:
/* 8001D738 0001A698  80 BD 00 2C */	lwz r5, 0x2c(r29)
/* 8001D73C 0001A69C  38 61 00 10 */	addi r3, r1, 0x10
/* 8001D740 0001A6A0  38 80 FF FF */	li r4, -1
/* 8001D744 0001A6A4  38 05 00 01 */	addi r0, r5, 1
/* 8001D748 0001A6A8  90 1D 00 2C */	stw r0, 0x2c(r29)
/* 8001D74C 0001A6AC  48 32 36 F5 */	bl __dt__6CTokenFv
/* 8001D750 0001A6B0  3B DE 00 08 */	addi r30, r30, 8
lbl_8001D754:
/* 8001D754 0001A6B4  80 1F 00 04 */	lwz r0, 4(r31)
/* 8001D758 0001A6B8  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8001D75C 0001A6BC  54 00 18 38 */	slwi r0, r0, 3
/* 8001D760 0001A6C0  7C 03 02 14 */	add r0, r3, r0
/* 8001D764 0001A6C4  7C 1E 00 40 */	cmplw r30, r0
/* 8001D768 0001A6C8  40 82 FF 50 */	bne lbl_8001D6B8
/* 8001D76C 0001A6CC  38 7D 00 44 */	addi r3, r29, 0x44
/* 8001D770 0001A6D0  48 32 36 15 */	bl Lock__6CTokenFv
/* 8001D774 0001A6D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8001D778 0001A6D8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8001D77C 0001A6DC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8001D780 0001A6E0  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8001D784 0001A6E4  7C 08 03 A6 */	mtlr r0
/* 8001D788 0001A6E8  38 21 00 30 */	addi r1, r1, 0x30
/* 8001D78C 0001A6EC  4E 80 00 20 */	blr

.global UpdateMusicVol__11CFrontEndUIFv
UpdateMusicVol__11CFrontEndUIFv:
/* 8001D790 0001A6F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001D794 0001A6F4  7C 08 02 A6 */	mflr r0
/* 8001D798 0001A6F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001D79C 0001A6FC  80 83 00 F4 */	lwz r4, 0xf4(r3)
/* 8001D7A0 0001A700  80 03 00 D4 */	lwz r0, 0xd4(r3)
/* 8001D7A4 0001A704  7C 04 00 40 */	cmplw r4, r0
/* 8001D7A8 0001A708  40 82 00 0C */	bne lbl_8001D7B4
/* 8001D7AC 0001A70C  C0 22 82 D8 */	lfs f1, lbl_805A9FF8@sda21(r2)
/* 8001D7B0 0001A710  48 00 00 08 */	b lbl_8001D7B8
lbl_8001D7B4:
/* 8001D7B4 0001A714  C0 22 82 D8 */	lfs f1, lbl_805A9FF8@sda21(r2)
lbl_8001D7B8:
/* 8001D7B8 0001A718  28 04 00 00 */	cmplwi r4, 0
/* 8001D7BC 0001A71C  41 82 00 44 */	beq lbl_8001D800
/* 8001D7C0 0001A720  80 8D A0 80 */	lwz r4, gpGameState@sda21(r13)
/* 8001D7C4 0001A724  3C 00 43 30 */	lis r0, 0x4330
/* 8001D7C8 0001A728  C0 03 00 68 */	lfs f0, 0x68(r3)
/* 8001D7CC 0001A72C  80 84 01 D8 */	lwz r4, 0x1d8(r4)
/* 8001D7D0 0001A730  90 01 00 10 */	stw r0, 0x10(r1)
/* 8001D7D4 0001A734  EC 41 00 32 */	fmuls f2, f1, f0
/* 8001D7D8 0001A738  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8001D7DC 0001A73C  C8 22 82 B8 */	lfd f1, lbl_805A9FD8@sda21(r2)
/* 8001D7E0 0001A740  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001D7E4 0001A744  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8001D7E8 0001A748  EC 00 08 28 */	fsubs f0, f0, f1
/* 8001D7EC 0001A74C  EC 62 00 32 */	fmuls f3, f2, f0
/* 8001D7F0 0001A750  F0 61 A0 08 */	psq_st f3, 8(r1), 1, qr2
/* 8001D7F4 0001A754  80 63 00 F4 */	lwz r3, 0xf4(r3)
/* 8001D7F8 0001A758  88 81 00 08 */	lbz r4, 8(r1)
/* 8001D7FC 0001A75C  48 34 E4 39 */	bl SetVolume__18CStaticAudioPlayerFc
lbl_8001D800:
/* 8001D800 0001A760  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001D804 0001A764  7C 08 03 A6 */	mtlr r0
/* 8001D808 0001A768  38 21 00 20 */	addi r1, r1, 0x20
/* 8001D80C 0001A76C  4E 80 00 20 */	blr

.global OnMessage__11CFrontEndUIFRC20CArchitectureMessageR18CArchitectureQueue
OnMessage__11CFrontEndUIFRC20CArchitectureMessageR18CArchitectureQueue:
/* 8001D810 0001A770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001D814 0001A774  7C 08 02 A6 */	mflr r0
/* 8001D818 0001A778  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001D81C 0001A77C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001D820 0001A780  7C BF 2B 78 */	mr r31, r5
/* 8001D824 0001A784  93 C1 00 08 */	stw r30, 8(r1)
/* 8001D828 0001A788  7C 7E 1B 78 */	mr r30, r3
/* 8001D82C 0001A78C  80 04 00 04 */	lwz r0, 4(r4)
/* 8001D830 0001A790  2C 00 00 05 */	cmpwi r0, 5
/* 8001D834 0001A794  41 82 00 40 */	beq lbl_8001D874
/* 8001D838 0001A798  40 80 00 10 */	bge lbl_8001D848
/* 8001D83C 0001A79C  2C 00 00 04 */	cmpwi r0, 4
/* 8001D840 0001A7A0  40 80 00 14 */	bge lbl_8001D854
/* 8001D844 0001A7A4  48 00 00 5C */	b lbl_8001D8A0
lbl_8001D848:
/* 8001D848 0001A7A8  2C 00 00 08 */	cmpwi r0, 8
/* 8001D84C 0001A7AC  41 82 00 4C */	beq lbl_8001D898
/* 8001D850 0001A7B0  48 00 00 50 */	b lbl_8001D8A0
lbl_8001D854:
/* 8001D854 0001A7B4  7C 83 23 78 */	mr r3, r4
/* 8001D858 0001A7B8  48 03 43 65 */	bl GetParmTimerTick__7MakeMsgFRC20CArchitectureMessage
/* 8001D85C 0001A7BC  7C 64 1B 78 */	mr r4, r3
/* 8001D860 0001A7C0  7F C3 F3 78 */	mr r3, r30
/* 8001D864 0001A7C4  C0 24 00 04 */	lfs f1, 4(r4)
/* 8001D868 0001A7C8  7F E4 FB 78 */	mr r4, r31
/* 8001D86C 0001A7CC  4B FF F4 DD */	bl Update__11CFrontEndUIFfR18CArchitectureQueue
/* 8001D870 0001A7D0  48 00 00 34 */	b lbl_8001D8A4
lbl_8001D874:
/* 8001D874 0001A7D4  7C 83 23 78 */	mr r3, r4
/* 8001D878 0001A7D8  48 03 42 6D */	bl GetParmUserInput__7MakeMsgFRC20CArchitectureMessage
/* 8001D87C 0001A7DC  4B FF E1 69 */	bl GetUserInput__21CArchMsgParmUserInputCFv
/* 8001D880 0001A7E0  7C 60 1B 78 */	mr r0, r3
/* 8001D884 0001A7E4  7F C3 F3 78 */	mr r3, r30
/* 8001D888 0001A7E8  7C 04 03 78 */	mr r4, r0
/* 8001D88C 0001A7EC  7F E5 FB 78 */	mr r5, r31
/* 8001D890 0001A7F0  4B FF EE 45 */	bl ProcessUserInput__11CFrontEndUIFRC11CFinalInputR18CArchitectureQueue
/* 8001D894 0001A7F4  48 00 00 0C */	b lbl_8001D8A0
lbl_8001D898:
/* 8001D898 0001A7F8  38 00 00 06 */	li r0, 6
/* 8001D89C 0001A7FC  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_8001D8A0:
/* 8001D8A0 0001A800  38 60 00 00 */	li r3, 0
lbl_8001D8A4:
/* 8001D8A4 0001A804  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001D8A8 0001A808  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001D8AC 0001A80C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001D8B0 0001A810  7C 08 03 A6 */	mtlr r0
/* 8001D8B4 0001A814  38 21 00 10 */	addi r1, r1, 0x10
/* 8001D8B8 0001A818  4E 80 00 20 */	blr

.global TransitionToFive__11CFrontEndUIFv
TransitionToFive__11CFrontEndUIFv:
/* 8001D8BC 0001A81C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001D8C0 0001A820  7C 08 02 A6 */	mflr r0
/* 8001D8C4 0001A824  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001D8C8 0001A828  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8001D8CC 0001A82C  7C 7F 1B 78 */	mr r31, r3
/* 8001D8D0 0001A830  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8001D8D4 0001A834  2C 00 00 05 */	cmpwi r0, 5
/* 8001D8D8 0001A838  40 80 00 8C */	bge lbl_8001D964
/* 8001D8DC 0001A83C  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8001D8E0 0001A840  3C 60 80 3D */	lis r3, lbl_803CC5D0@ha
/* 8001D8E4 0001A844  38 63 C5 D0 */	addi r3, r3, lbl_803CC5D0@l
/* 8001D8E8 0001A848  A9 02 C5 FA */	lha r8, lbl_805AE31A@sda21(r2)
/* 8001D8EC 0001A84C  54 00 10 3A */	slwi r0, r0, 2
/* 8001D8F0 0001A850  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 8001D8F4 0001A854  7C 03 02 AE */	lhax r0, r3, r0
/* 8001D8F8 0001A858  38 61 00 0C */	addi r3, r1, 0xc
/* 8001D8FC 0001A85C  38 A0 00 7F */	li r5, 0x7f
/* 8001D900 0001A860  38 C0 00 40 */	li r6, 0x40
/* 8001D904 0001A864  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 8001D908 0001A868  38 E0 00 00 */	li r7, 0
/* 8001D90C 0001A86C  39 20 00 00 */	li r9, 0
/* 8001D910 0001A870  48 2C C4 65 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 8001D914 0001A874  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8001D918 0001A878  3C 60 80 3D */	lis r3, lbl_803CC5D0@ha
/* 8001D91C 0001A87C  38 63 C5 D0 */	addi r3, r3, lbl_803CC5D0@l
/* 8001D920 0001A880  A9 02 C5 FA */	lha r8, lbl_805AE31A@sda21(r2)
/* 8001D924 0001A884  54 00 10 3A */	slwi r0, r0, 2
/* 8001D928 0001A888  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 8001D92C 0001A88C  7C 83 02 14 */	add r4, r3, r0
/* 8001D930 0001A890  38 61 00 08 */	addi r3, r1, 8
/* 8001D934 0001A894  A8 04 00 02 */	lha r0, 2(r4)
/* 8001D938 0001A898  38 A0 00 7F */	li r5, 0x7f
/* 8001D93C 0001A89C  38 C0 00 40 */	li r6, 0x40
/* 8001D940 0001A8A0  38 E0 00 00 */	li r7, 0
/* 8001D944 0001A8A4  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 8001D948 0001A8A8  39 20 00 00 */	li r9, 0
/* 8001D94C 0001A8AC  48 2C C4 29 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 8001D950 0001A8B0  38 00 00 05 */	li r0, 5
/* 8001D954 0001A8B4  7F E3 FB 78 */	mr r3, r31
/* 8001D958 0001A8B8  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8001D95C 0001A8BC  38 80 00 05 */	li r4, 5
/* 8001D960 0001A8C0  4B FF E5 E9 */	bl StartStateTransition__11CFrontEndUIFQ211CFrontEndUI7EScreen
lbl_8001D964:
/* 8001D964 0001A8C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001D968 0001A8C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8001D96C 0001A8CC  7C 08 03 A6 */	mtlr r0
/* 8001D970 0001A8D0  38 21 00 20 */	addi r1, r1, 0x20
/* 8001D974 0001A8D4  4E 80 00 20 */	blr

.global __dt__11CFrontEndUIFv
__dt__11CFrontEndUIFv:
/* 8001D978 0001A8D8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8001D97C 0001A8DC  7C 08 02 A6 */	mflr r0
/* 8001D980 0001A8E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8001D984 0001A8E4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8001D988 0001A8E8  7C 9F 23 78 */	mr r31, r4
/* 8001D98C 0001A8EC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8001D990 0001A8F0  7C 7E 1B 79 */	or. r30, r3, r3
/* 8001D994 0001A8F4  93 A1 00 34 */	stw r29, 0x34(r1)
/* 8001D998 0001A8F8  93 81 00 30 */	stw r28, 0x30(r1)
/* 8001D99C 0001A8FC  41 82 02 18 */	beq lbl_8001DBB4
/* 8001D9A0 0001A900  3C 60 80 3E */	lis r3, lbl_803D98BC@ha
/* 8001D9A4 0001A904  38 03 98 BC */	addi r0, r3, lbl_803D98BC@l
/* 8001D9A8 0001A908  90 1E 00 00 */	stw r0, 0(r30)
/* 8001D9AC 0001A90C  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 8001D9B0 0001A910  2C 00 00 04 */	cmpwi r0, 4
/* 8001D9B4 0001A914  41 80 00 28 */	blt lbl_8001D9DC
/* 8001D9B8 0001A918  48 32 DF 39 */	bl SysPopGroupFromARAM__9CAudioSysFv
/* 8001D9BC 0001A91C  80 9E 00 4C */	lwz r4, 0x4c(r30)
/* 8001D9C0 0001A920  38 61 00 18 */	addi r3, r1, 0x18
/* 8001D9C4 0001A924  38 84 00 20 */	addi r4, r4, 0x20
/* 8001D9C8 0001A928  48 32 07 99 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8001D9CC 0001A92C  38 61 00 18 */	addi r3, r1, 0x18
/* 8001D9D0 0001A930  48 32 E0 99 */	bl "SysUnloadGroupSet__9CAudioSysFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8001D9D4 0001A934  38 61 00 18 */	addi r3, r1, 0x18
/* 8001D9D8 0001A938  48 32 01 09 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8001D9DC:
/* 8001D9DC 0001A93C  C0 22 82 9C */	lfs f1, lbl_805A9FBC@sda21(r2)
/* 8001D9E0 0001A940  48 34 7F 2D */	bl sub_8036590c
/* 8001D9E4 0001A944  34 1E 00 F0 */	addic. r0, r30, 0xf0
/* 8001D9E8 0001A948  41 82 00 10 */	beq lbl_8001D9F8
/* 8001D9EC 0001A94C  80 7E 00 F0 */	lwz r3, 0xf0(r30)
/* 8001D9F0 0001A950  38 80 00 01 */	li r4, 1
/* 8001D9F4 0001A954  48 22 54 01 */	bl __dt__21SOptionsFrontEndFrameFv
lbl_8001D9F8:
/* 8001D9F8 0001A958  34 1E 00 EC */	addic. r0, r30, 0xec
/* 8001D9FC 0001A95C  41 82 00 10 */	beq lbl_8001DA0C
/* 8001DA00 0001A960  80 7E 00 EC */	lwz r3, 0xec(r30)
/* 8001DA04 0001A964  38 80 00 01 */	li r4, 1
/* 8001DA08 0001A968  48 00 50 A1 */	bl __dt__17SNesEmulatorFrameFv
lbl_8001DA0C:
/* 8001DA0C 0001A96C  34 1E 00 E8 */	addic. r0, r30, 0xe8
/* 8001DA10 0001A970  41 82 00 10 */	beq lbl_8001DA20
/* 8001DA14 0001A974  80 7E 00 E8 */	lwz r3, 0xe8(r30)
/* 8001DA18 0001A978  38 80 00 01 */	li r4, 1
/* 8001DA1C 0001A97C  48 00 3E C9 */	bl __dt__14SFrontEndFrameFv
lbl_8001DA20:
/* 8001DA20 0001A980  34 1E 00 E4 */	addic. r0, r30, 0xe4
/* 8001DA24 0001A984  41 82 00 10 */	beq lbl_8001DA34
/* 8001DA28 0001A988  80 7E 00 E4 */	lwz r3, 0xe4(r30)
/* 8001DA2C 0001A98C  38 80 00 01 */	li r4, 1
/* 8001DA30 0001A990  48 00 11 39 */	bl __dt__17SFusionBonusFrameFv
lbl_8001DA34:
/* 8001DA34 0001A994  34 1E 00 E0 */	addic. r0, r30, 0xe0
/* 8001DA38 0001A998  41 82 00 10 */	beq lbl_8001DA48
/* 8001DA3C 0001A99C  80 7E 00 E0 */	lwz r3, 0xe0(r30)
/* 8001DA40 0001A9A0  38 80 00 01 */	li r4, 1
/* 8001DA44 0001A9A4  48 00 32 6D */	bl __dt__19SNewFileSelectFrameFv
lbl_8001DA48:
/* 8001DA48 0001A9A8  34 1E 00 DC */	addic. r0, r30, 0xdc
/* 8001DA4C 0001A9AC  41 82 00 10 */	beq lbl_8001DA5C
/* 8001DA50 0001A9B0  80 7E 00 DC */	lwz r3, 0xdc(r30)
/* 8001DA54 0001A9B4  38 80 00 01 */	li r4, 1
/* 8001DA58 0001A9B8  48 23 23 CD */	bl __dt__15CSaveGameScreenFv
lbl_8001DA5C:
/* 8001DA5C 0001A9BC  34 1E 00 D8 */	addic. r0, r30, 0xd8
/* 8001DA60 0001A9C0  41 82 00 10 */	beq lbl_8001DA70
/* 8001DA64 0001A9C4  80 7E 00 D8 */	lwz r3, 0xd8(r30)
/* 8001DA68 0001A9C8  38 80 00 01 */	li r4, 1
/* 8001DA6C 0001A9CC  48 34 E6 ED */	bl __dt__18CStaticAudioPlayer
lbl_8001DA70:
/* 8001DA70 0001A9D0  34 1E 00 D4 */	addic. r0, r30, 0xd4
/* 8001DA74 0001A9D4  41 82 00 10 */	beq lbl_8001DA84
/* 8001DA78 0001A9D8  80 7E 00 D4 */	lwz r3, 0xd4(r30)
/* 8001DA7C 0001A9DC  38 80 00 01 */	li r4, 1
/* 8001DA80 0001A9E0  48 34 E6 D9 */	bl __dt__18CStaticAudioPlayer
lbl_8001DA84:
/* 8001DA84 0001A9E4  34 1E 00 C4 */	addic. r0, r30, 0xc4
/* 8001DA88 0001A9E8  41 82 00 1C */	beq lbl_8001DAA4
/* 8001DA8C 0001A9EC  88 1E 00 C4 */	lbz r0, 0xc4(r30)
/* 8001DA90 0001A9F0  28 00 00 00 */	cmplwi r0, 0
/* 8001DA94 0001A9F4  41 82 00 10 */	beq lbl_8001DAA4
/* 8001DA98 0001A9F8  80 7E 00 C8 */	lwz r3, 0xc8(r30)
/* 8001DA9C 0001A9FC  38 80 00 01 */	li r4, 1
/* 8001DAA0 0001AA00  48 33 ED 19 */	bl __dt__12CMoviePlayerFv
lbl_8001DAA4:
/* 8001DAA4 0001AA04  34 1E 00 6C */	addic. r0, r30, 0x6c
/* 8001DAA8 0001AA08  41 82 00 50 */	beq lbl_8001DAF8
/* 8001DAAC 0001AA0C  3B 9E 00 70 */	addi r28, r30, 0x70
/* 8001DAB0 0001AA10  3B A0 00 00 */	li r29, 0
/* 8001DAB4 0001AA14  48 00 00 30 */	b lbl_8001DAE4
lbl_8001DAB8:
/* 8001DAB8 0001AA18  28 1C 00 00 */	cmplwi r28, 0
/* 8001DABC 0001AA1C  41 82 00 20 */	beq lbl_8001DADC
/* 8001DAC0 0001AA20  41 82 00 1C */	beq lbl_8001DADC
/* 8001DAC4 0001AA24  88 1C 00 00 */	lbz r0, 0(r28)
/* 8001DAC8 0001AA28  28 00 00 00 */	cmplwi r0, 0
/* 8001DACC 0001AA2C  41 82 00 10 */	beq lbl_8001DADC
/* 8001DAD0 0001AA30  80 7C 00 04 */	lwz r3, 4(r28)
/* 8001DAD4 0001AA34  38 80 00 01 */	li r4, 1
/* 8001DAD8 0001AA38  48 33 EC E1 */	bl __dt__12CMoviePlayerFv
lbl_8001DADC:
/* 8001DADC 0001AA3C  3B 9C 00 08 */	addi r28, r28, 8
/* 8001DAE0 0001AA40  3B BD 00 01 */	addi r29, r29, 1
lbl_8001DAE4:
/* 8001DAE4 0001AA44  80 1E 00 6C */	lwz r0, 0x6c(r30)
/* 8001DAE8 0001AA48  7C 1D 00 00 */	cmpw r29, r0
/* 8001DAEC 0001AA4C  41 80 FF CC */	blt lbl_8001DAB8
/* 8001DAF0 0001AA50  38 00 00 00 */	li r0, 0
/* 8001DAF4 0001AA54  90 1E 00 6C */	stw r0, 0x6c(r30)
lbl_8001DAF8:
/* 8001DAF8 0001AA58  34 1E 00 44 */	addic. r0, r30, 0x44
/* 8001DAFC 0001AA5C  41 82 00 18 */	beq lbl_8001DB14
/* 8001DB00 0001AA60  34 1E 00 44 */	addic. r0, r30, 0x44
/* 8001DB04 0001AA64  41 82 00 10 */	beq lbl_8001DB14
/* 8001DB08 0001AA68  38 7E 00 44 */	addi r3, r30, 0x44
/* 8001DB0C 0001AA6C  38 80 00 00 */	li r4, 0
/* 8001DB10 0001AA70  48 32 33 31 */	bl __dt__6CTokenFv
lbl_8001DB14:
/* 8001DB14 0001AA74  34 1E 00 38 */	addic. r0, r30, 0x38
/* 8001DB18 0001AA78  41 82 00 18 */	beq lbl_8001DB30
/* 8001DB1C 0001AA7C  34 1E 00 38 */	addic. r0, r30, 0x38
/* 8001DB20 0001AA80  41 82 00 10 */	beq lbl_8001DB30
/* 8001DB24 0001AA84  38 7E 00 38 */	addi r3, r30, 0x38
/* 8001DB28 0001AA88  38 80 00 00 */	li r4, 0
/* 8001DB2C 0001AA8C  48 32 33 15 */	bl __dt__6CTokenFv
lbl_8001DB30:
/* 8001DB30 0001AA90  34 1E 00 28 */	addic. r0, r30, 0x28
/* 8001DB34 0001AA94  41 82 00 50 */	beq lbl_8001DB84
/* 8001DB38 0001AA98  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 8001DB3C 0001AA9C  83 9E 00 34 */	lwz r28, 0x34(r30)
/* 8001DB40 0001AAA0  54 00 18 38 */	slwi r0, r0, 3
/* 8001DB44 0001AAA4  7F BC 02 14 */	add r29, r28, r0
/* 8001DB48 0001AAA8  93 81 00 0C */	stw r28, 0xc(r1)
/* 8001DB4C 0001AAAC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8001DB50 0001AAB0  93 A1 00 10 */	stw r29, 0x10(r1)
/* 8001DB54 0001AAB4  93 81 00 08 */	stw r28, 8(r1)
/* 8001DB58 0001AAB8  48 00 00 14 */	b lbl_8001DB6C
lbl_8001DB5C:
/* 8001DB5C 0001AABC  7F 83 E3 78 */	mr r3, r28
/* 8001DB60 0001AAC0  38 80 FF FF */	li r4, -1
/* 8001DB64 0001AAC4  48 32 32 DD */	bl __dt__6CTokenFv
/* 8001DB68 0001AAC8  3B 9C 00 08 */	addi r28, r28, 8
lbl_8001DB6C:
/* 8001DB6C 0001AACC  7C 1C E8 40 */	cmplw r28, r29
/* 8001DB70 0001AAD0  40 82 FF EC */	bne lbl_8001DB5C
/* 8001DB74 0001AAD4  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 8001DB78 0001AAD8  28 03 00 00 */	cmplwi r3, 0
/* 8001DB7C 0001AADC  41 82 00 08 */	beq lbl_8001DB84
/* 8001DB80 0001AAE0  48 2F 7D B1 */	bl Free__7CMemoryFPCv
lbl_8001DB84:
/* 8001DB84 0001AAE4  34 1E 00 20 */	addic. r0, r30, 0x20
/* 8001DB88 0001AAE8  41 82 00 10 */	beq lbl_8001DB98
/* 8001DB8C 0001AAEC  38 7E 00 20 */	addi r3, r30, 0x20
/* 8001DB90 0001AAF0  38 80 00 00 */	li r4, 0
/* 8001DB94 0001AAF4  48 32 32 AD */	bl __dt__6CTokenFv
lbl_8001DB98:
/* 8001DB98 0001AAF8  7F C3 F3 78 */	mr r3, r30
/* 8001DB9C 0001AAFC  38 80 00 00 */	li r4, 0
/* 8001DBA0 0001AB00  48 03 50 05 */	bl __dt__6CIOWinFv
/* 8001DBA4 0001AB04  7F E0 07 35 */	extsh. r0, r31
/* 8001DBA8 0001AB08  40 81 00 0C */	ble lbl_8001DBB4
/* 8001DBAC 0001AB0C  7F C3 F3 78 */	mr r3, r30
/* 8001DBB0 0001AB10  48 2F 7D 81 */	bl Free__7CMemoryFPCv
lbl_8001DBB4:
/* 8001DBB4 0001AB14  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8001DBB8 0001AB18  7F C3 F3 78 */	mr r3, r30
/* 8001DBBC 0001AB1C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8001DBC0 0001AB20  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8001DBC4 0001AB24  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 8001DBC8 0001AB28  83 81 00 30 */	lwz r28, 0x30(r1)
/* 8001DBCC 0001AB2C  7C 08 03 A6 */	mtlr r0
/* 8001DBD0 0001AB30  38 21 00 40 */	addi r1, r1, 0x40
/* 8001DBD4 0001AB34  4E 80 00 20 */	blr

.global __ct__11CFrontEndUIFR18CArchitectureQueue
__ct__11CFrontEndUIFR18CArchitectureQueue:
/* 8001DBD8 0001AB38  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8001DBDC 0001AB3C  7C 08 02 A6 */	mflr r0
/* 8001DBE0 0001AB40  3C 80 80 3D */	lis r4, lbl_803CC644@ha
/* 8001DBE4 0001AB44  90 01 00 44 */	stw r0, 0x44(r1)
/* 8001DBE8 0001AB48  38 84 C6 44 */	addi r4, r4, lbl_803CC644@l
/* 8001DBEC 0001AB4C  38 84 01 2F */	addi r4, r4, 0x12f
/* 8001DBF0 0001AB50  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8001DBF4 0001AB54  7C 7F 1B 78 */	mr r31, r3
/* 8001DBF8 0001AB58  38 61 00 28 */	addi r3, r1, 0x28
/* 8001DBFC 0001AB5C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8001DC00 0001AB60  4B FE 70 B9 */	bl string_l__4rstlFPCc
/* 8001DC04 0001AB64  7F E3 FB 78 */	mr r3, r31
/* 8001DC08 0001AB68  38 81 00 28 */	addi r4, r1, 0x28
/* 8001DC0C 0001AB6C  48 03 50 01 */	bl "__ct__6CIOWinFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8001DC10 0001AB70  38 61 00 28 */	addi r3, r1, 0x28
/* 8001DC14 0001AB74  48 31 FE CD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8001DC18 0001AB78  3C 60 80 3E */	lis r3, lbl_803D98BC@ha
/* 8001DC1C 0001AB7C  38 00 00 00 */	li r0, 0
/* 8001DC20 0001AB80  38 63 98 BC */	addi r3, r3, lbl_803D98BC@l
/* 8001DC24 0001AB84  90 7F 00 00 */	stw r3, 0(r31)
/* 8001DC28 0001AB88  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8001DC2C 0001AB8C  48 37 22 51 */	bl rand
/* 8001DC30 0001AB90  3C 80 55 55 */	lis r4, 0x55555556@ha
/* 8001DC34 0001AB94  38 04 55 56 */	addi r0, r4, 0x55555556@l
/* 8001DC38 0001AB98  7C 80 18 96 */	mulhw r4, r0, r3
/* 8001DC3C 0001AB9C  54 80 0F FE */	srwi r0, r4, 0x1f
/* 8001DC40 0001ABA0  7C 04 02 14 */	add r0, r4, r0
/* 8001DC44 0001ABA4  1C 00 00 03 */	mulli r0, r0, 3
/* 8001DC48 0001ABA8  7C 00 18 50 */	subf r0, r0, r3
/* 8001DC4C 0001ABAC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8001DC50 0001ABB0  48 37 22 2D */	bl rand
/* 8001DC54 0001ABB4  3C A0 55 55 */	lis r5, 0x55555556@ha
/* 8001DC58 0001ABB8  3C 80 80 3D */	lis r4, lbl_803CC644@ha
/* 8001DC5C 0001ABBC  38 05 55 56 */	addi r0, r5, 0x55555556@l
/* 8001DC60 0001ABC0  7C C0 18 96 */	mulhw r6, r0, r3
/* 8001DC64 0001ABC4  38 84 C6 44 */	addi r4, r4, lbl_803CC644@l
/* 8001DC68 0001ABC8  38 A4 01 3A */	addi r5, r4, 0x13a
/* 8001DC6C 0001ABCC  54 C0 0F FE */	srwi r0, r6, 0x1f
/* 8001DC70 0001ABD0  7C 06 02 14 */	add r0, r6, r0
/* 8001DC74 0001ABD4  1C 00 00 03 */	mulli r0, r0, 3
/* 8001DC78 0001ABD8  7C 00 18 50 */	subf r0, r0, r3
/* 8001DC7C 0001ABDC  38 61 00 20 */	addi r3, r1, 0x20
/* 8001DC80 0001ABE0  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8001DC84 0001ABE4  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 8001DC88 0001ABE8  81 84 00 00 */	lwz r12, 0(r4)
/* 8001DC8C 0001ABEC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8001DC90 0001ABF0  7D 89 03 A6 */	mtctr r12
/* 8001DC94 0001ABF4  4E 80 04 21 */	bctrl
/* 8001DC98 0001ABF8  38 7F 00 20 */	addi r3, r31, 0x20
/* 8001DC9C 0001ABFC  38 81 00 20 */	addi r4, r1, 0x20
/* 8001DCA0 0001AC00  48 32 32 09 */	bl __ct__6CTokenFRC6CToken
/* 8001DCA4 0001AC04  38 61 00 20 */	addi r3, r1, 0x20
/* 8001DCA8 0001AC08  38 80 FF FF */	li r4, -1
/* 8001DCAC 0001AC0C  48 32 31 95 */	bl __dt__6CTokenFv
/* 8001DCB0 0001AC10  38 00 00 00 */	li r0, 0
/* 8001DCB4 0001AC14  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 8001DCB8 0001AC18  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 8001DCBC 0001AC1C  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 8001DCC0 0001AC20  38 61 00 18 */	addi r3, r1, 0x18
/* 8001DCC4 0001AC24  90 1F 00 30 */	stw r0, 0x30(r31)
/* 8001DCC8 0001AC28  38 A4 01 48 */	addi r5, r4, 0x148
/* 8001DCCC 0001AC2C  90 1F 00 34 */	stw r0, 0x34(r31)
/* 8001DCD0 0001AC30  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 8001DCD4 0001AC34  81 84 00 00 */	lwz r12, 0(r4)
/* 8001DCD8 0001AC38  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8001DCDC 0001AC3C  7D 89 03 A6 */	mtctr r12
/* 8001DCE0 0001AC40  4E 80 04 21 */	bctrl
/* 8001DCE4 0001AC44  3B DF 00 38 */	addi r30, r31, 0x38
/* 8001DCE8 0001AC48  38 81 00 18 */	addi r4, r1, 0x18
/* 8001DCEC 0001AC4C  7F C3 F3 78 */	mr r3, r30
/* 8001DCF0 0001AC50  48 32 31 B9 */	bl __ct__6CTokenFRC6CToken
/* 8001DCF4 0001AC54  38 00 00 00 */	li r0, 0
/* 8001DCF8 0001AC58  38 61 00 18 */	addi r3, r1, 0x18
/* 8001DCFC 0001AC5C  90 1E 00 08 */	stw r0, 8(r30)
/* 8001DD00 0001AC60  38 80 FF FF */	li r4, -1
/* 8001DD04 0001AC64  48 32 31 3D */	bl __dt__6CTokenFv
/* 8001DD08 0001AC68  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 8001DD0C 0001AC6C  38 61 00 10 */	addi r3, r1, 0x10
/* 8001DD10 0001AC70  80 A2 82 94 */	lwz r5, lbl_805A9FB4@sda21(r2)
/* 8001DD14 0001AC74  81 84 00 00 */	lwz r12, 0(r4)
/* 8001DD18 0001AC78  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8001DD1C 0001AC7C  7D 89 03 A6 */	mtctr r12
/* 8001DD20 0001AC80  4E 80 04 21 */	bctrl
/* 8001DD24 0001AC84  3B DF 00 44 */	addi r30, r31, 0x44
/* 8001DD28 0001AC88  38 81 00 10 */	addi r4, r1, 0x10
/* 8001DD2C 0001AC8C  7F C3 F3 78 */	mr r3, r30
/* 8001DD30 0001AC90  48 32 31 79 */	bl __ct__6CTokenFRC6CToken
/* 8001DD34 0001AC94  38 00 00 00 */	li r0, 0
/* 8001DD38 0001AC98  38 61 00 10 */	addi r3, r1, 0x10
/* 8001DD3C 0001AC9C  90 1E 00 08 */	stw r0, 8(r30)
/* 8001DD40 0001ACA0  38 80 FF FF */	li r4, -1
/* 8001DD44 0001ACA4  48 32 30 FD */	bl __dt__6CTokenFv
/* 8001DD48 0001ACA8  38 80 00 00 */	li r4, 0
/* 8001DD4C 0001ACAC  C0 22 82 9C */	lfs f1, lbl_805A9FBC@sda21(r2)
/* 8001DD50 0001ACB0  90 9F 00 50 */	stw r4, 0x50(r31)
/* 8001DD54 0001ACB4  38 60 00 09 */	li r3, 9
/* 8001DD58 0001ACB8  C0 02 82 B0 */	lfs f0, lbl_805A9FD0@sda21(r2)
/* 8001DD5C 0001ACBC  38 00 00 03 */	li r0, 3
/* 8001DD60 0001ACC0  90 9F 00 54 */	stw r4, 0x54(r31)
/* 8001DD64 0001ACC4  7C 85 23 78 */	mr r5, r4
/* 8001DD68 0001ACC8  38 DF 00 70 */	addi r6, r31, 0x70
/* 8001DD6C 0001ACCC  D0 3F 00 58 */	stfs f1, 0x58(r31)
/* 8001DD70 0001ACD0  98 9F 00 5C */	stb r4, 0x5c(r31)
/* 8001DD74 0001ACD4  D0 3F 00 60 */	stfs f1, 0x60(r31)
/* 8001DD78 0001ACD8  D0 3F 00 64 */	stfs f1, 0x64(r31)
/* 8001DD7C 0001ACDC  D0 1F 00 68 */	stfs f0, 0x68(r31)
/* 8001DD80 0001ACE0  98 81 00 08 */	stb r4, 8(r1)
/* 8001DD84 0001ACE4  90 81 00 0C */	stw r4, 0xc(r1)
/* 8001DD88 0001ACE8  90 7F 00 6C */	stw r3, 0x6c(r31)
/* 8001DD8C 0001ACEC  7C 09 03 A6 */	mtctr r0
lbl_8001DD90:
/* 8001DD90 0001ACF0  28 06 00 00 */	cmplwi r6, 0
/* 8001DD94 0001ACF4  41 82 00 14 */	beq lbl_8001DDA8
/* 8001DD98 0001ACF8  88 01 00 08 */	lbz r0, 8(r1)
/* 8001DD9C 0001ACFC  98 06 00 00 */	stb r0, 0(r6)
/* 8001DDA0 0001AD00  90 86 00 04 */	stw r4, 4(r6)
/* 8001DDA4 0001AD04  98 81 00 08 */	stb r4, 8(r1)
lbl_8001DDA8:
/* 8001DDA8 0001AD08  34 C6 00 08 */	addic. r6, r6, 8
/* 8001DDAC 0001AD0C  41 82 00 14 */	beq lbl_8001DDC0
/* 8001DDB0 0001AD10  88 01 00 08 */	lbz r0, 8(r1)
/* 8001DDB4 0001AD14  98 06 00 00 */	stb r0, 0(r6)
/* 8001DDB8 0001AD18  90 86 00 04 */	stw r4, 4(r6)
/* 8001DDBC 0001AD1C  98 81 00 08 */	stb r4, 8(r1)
lbl_8001DDC0:
/* 8001DDC0 0001AD20  34 C6 00 08 */	addic. r6, r6, 8
/* 8001DDC4 0001AD24  41 82 00 14 */	beq lbl_8001DDD8
/* 8001DDC8 0001AD28  88 01 00 08 */	lbz r0, 8(r1)
/* 8001DDCC 0001AD2C  98 06 00 00 */	stb r0, 0(r6)
/* 8001DDD0 0001AD30  90 86 00 04 */	stw r4, 4(r6)
/* 8001DDD4 0001AD34  98 81 00 08 */	stb r4, 8(r1)
lbl_8001DDD8:
/* 8001DDD8 0001AD38  38 A5 00 02 */	addi r5, r5, 2
/* 8001DDDC 0001AD3C  38 C6 00 08 */	addi r6, r6, 8
/* 8001DDE0 0001AD40  42 00 FF B0 */	bdnz lbl_8001DD90
/* 8001DDE4 0001AD44  88 01 00 08 */	lbz r0, 8(r1)
/* 8001DDE8 0001AD48  28 00 00 00 */	cmplwi r0, 0
/* 8001DDEC 0001AD4C  41 82 00 10 */	beq lbl_8001DDFC
/* 8001DDF0 0001AD50  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8001DDF4 0001AD54  38 80 00 01 */	li r4, 1
/* 8001DDF8 0001AD58  48 33 E9 C1 */	bl __dt__12CMoviePlayerFv
lbl_8001DDFC:
/* 8001DDFC 0001AD5C  38 00 FF FF */	li r0, -1
/* 8001DE00 0001AD60  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 8001DE04 0001AD64  90 1F 00 B8 */	stw r0, 0xb8(r31)
/* 8001DE08 0001AD68  38 00 00 00 */	li r0, 0
/* 8001DE0C 0001AD6C  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 8001DE10 0001AD70  38 60 00 98 */	li r3, 0x98
/* 8001DE14 0001AD74  90 1F 00 BC */	stw r0, 0xbc(r31)
/* 8001DE18 0001AD78  38 84 01 14 */	addi r4, r4, 0x114
/* 8001DE1C 0001AD7C  38 A0 00 00 */	li r5, 0
/* 8001DE20 0001AD80  90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 8001DE24 0001AD84  98 1F 00 C4 */	stb r0, 0xc4(r31)
/* 8001DE28 0001AD88  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 8001DE2C 0001AD8C  90 1F 00 CC */	stw r0, 0xcc(r31)
/* 8001DE30 0001AD90  98 1F 00 D0 */	stb r0, 0xd0(r31)
/* 8001DE34 0001AD94  98 1F 00 D1 */	stb r0, 0xd1(r31)
/* 8001DE38 0001AD98  98 1F 00 D2 */	stb r0, 0xd2(r31)
/* 8001DE3C 0001AD9C  90 1F 00 D4 */	stw r0, 0xd4(r31)
/* 8001DE40 0001ADA0  90 1F 00 D8 */	stw r0, 0xd8(r31)
/* 8001DE44 0001ADA4  48 2F 7A 29 */	bl __nw__FUlPCcPCc
/* 8001DE48 0001ADA8  7C 60 1B 79 */	or. r0, r3, r3
/* 8001DE4C 0001ADAC  41 82 00 1C */	beq lbl_8001DE68
/* 8001DE50 0001ADB0  80 CD A0 80 */	lwz r6, gpGameState@sda21(r13)
/* 8001DE54 0001ADB4  38 80 00 00 */	li r4, 0
/* 8001DE58 0001ADB8  80 A6 02 10 */	lwz r5, 0x210(r6)
/* 8001DE5C 0001ADBC  80 C6 02 14 */	lwz r6, 0x214(r6)
/* 8001DE60 0001ADC0  48 23 21 1D */	bl __ct__15CSaveGameScreen
/* 8001DE64 0001ADC4  7C 60 1B 78 */	mr r0, r3
lbl_8001DE68:
/* 8001DE68 0001ADC8  90 1F 00 DC */	stw r0, 0xdc(r31)
/* 8001DE6C 0001ADCC  38 00 00 00 */	li r0, 0
/* 8001DE70 0001ADD0  90 1F 00 E0 */	stw r0, 0xe0(r31)
/* 8001DE74 0001ADD4  90 1F 00 E4 */	stw r0, 0xe4(r31)
/* 8001DE78 0001ADD8  90 1F 00 E8 */	stw r0, 0xe8(r31)
/* 8001DE7C 0001ADDC  90 1F 00 EC */	stw r0, 0xec(r31)
/* 8001DE80 0001ADE0  90 1F 00 F0 */	stw r0, 0xf0(r31)
/* 8001DE84 0001ADE4  90 1F 00 F4 */	stw r0, 0xf4(r31)
/* 8001DE88 0001ADE8  80 6D A0 78 */	lwz r3, gpMain@sda21(r13)
/* 8001DE8C 0001ADEC  4B FE 58 15 */	bl ResetGameState__5CMainFv
/* 8001DE90 0001ADF0  38 8D A0 F0 */	addi r4, r13, lbl_805A8CB0@sda21
/* 8001DE94 0001ADF4  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 8001DE98 0001ADF8  80 84 00 04 */	lwz r4, 4(r4)
/* 8001DE9C 0001ADFC  48 1B 5A A9 */	bl SetCurrentWorldId__10CGameStateFUi
/* 8001DEA0 0001AE00  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 8001DEA4 0001AE04  38 63 01 7C */	addi r3, r3, 0x17c
/* 8001DEA8 0001AE08  48 1F 13 45 */	bl ResetToDefaults__12CGameOptionsFv
/* 8001DEAC 0001AE0C  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 8001DEB0 0001AE10  48 1B 5D 05 */	bl WriteBackupBuf__10CGameStateFv
/* 8001DEB4 0001AE14  80 6D A0 60 */	lwz r3, gpResourceFactory@sda21(r13)
/* 8001DEB8 0001AE18  38 8D A0 F0 */	addi r4, r13, lbl_805A8CB0@sda21
/* 8001DEBC 0001AE1C  81 83 00 00 */	lwz r12, 0(r3)
/* 8001DEC0 0001AE20  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8001DEC4 0001AE24  7D 89 03 A6 */	mtctr r12
/* 8001DEC8 0001AE28  4E 80 04 21 */	bctrl
/* 8001DECC 0001AE2C  38 7F 00 20 */	addi r3, r31, 0x20
/* 8001DED0 0001AE30  48 32 2E B5 */	bl Lock__6CTokenFv
/* 8001DED4 0001AE34  3B C0 00 00 */	li r30, 0
lbl_8001DED8:
/* 8001DED8 0001AE38  7F C3 F3 78 */	mr r3, r30
/* 8001DEDC 0001AE3C  4B FF DC C1 */	bl GetAttractMovieFileName__11CFrontEndUIFi
/* 8001DEE0 0001AE40  48 33 1A 6D */	bl FileExists__8CDvdFileFPCc
/* 8001DEE4 0001AE44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001DEE8 0001AE48  41 82 00 18 */	beq lbl_8001DF00
/* 8001DEEC 0001AE4C  80 7F 00 C0 */	lwz r3, 0xc0(r31)
/* 8001DEF0 0001AE50  3B DE 00 01 */	addi r30, r30, 1
/* 8001DEF4 0001AE54  38 03 00 01 */	addi r0, r3, 1
/* 8001DEF8 0001AE58  90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 8001DEFC 0001AE5C  4B FF FF DC */	b lbl_8001DED8
lbl_8001DF00:
/* 8001DF00 0001AE60  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8001DF04 0001AE64  7F E3 FB 78 */	mr r3, r31
/* 8001DF08 0001AE68  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8001DF0C 0001AE6C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8001DF10 0001AE70  7C 08 03 A6 */	mtlr r0
/* 8001DF14 0001AE74  38 21 00 40 */	addi r1, r1, 0x40
/* 8001DF18 0001AE78  4E 80 00 20 */	blr

.global CanBuild__11CResFactoryFRC10SObjectTag
CanBuild__11CResFactoryFRC10SObjectTag:
/* 8001DF1C 0001AE7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001DF20 0001AE80  7C 08 02 A6 */	mflr r0
/* 8001DF24 0001AE84  38 63 00 04 */	addi r3, r3, 4
/* 8001DF28 0001AE88  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001DF2C 0001AE8C  48 31 DD 6D */	bl ResourceExists__10CResLoaderCFRC10SObjectTag
/* 8001DF30 0001AE90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001DF34 0001AE94  7C 08 03 A6 */	mtlr r0
/* 8001DF38 0001AE98  38 21 00 10 */	addi r1, r1, 0x10
/* 8001DF3C 0001AE9C  4E 80 00 20 */	blr

.global DoOptionsCancel__17SFusionBonusFrameFPC14CGuiTableGroup
DoOptionsCancel__17SFusionBonusFrameFPC14CGuiTableGroup:
/* 8001DF40 0001AEA0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8001DF44 0001AEA4  7C 08 02 A6 */	mflr r0
/* 8001DF48 0001AEA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8001DF4C 0001AEAC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8001DF50 0001AEB0  7C 7F 1B 78 */	mr r31, r3
/* 8001DF54 0001AEB4  88 03 00 39 */	lbz r0, 0x39(r3)
/* 8001DF58 0001AEB8  28 00 00 00 */	cmplwi r0, 0
/* 8001DF5C 0001AEBC  40 82 00 10 */	bne lbl_8001DF6C
/* 8001DF60 0001AEC0  88 1F 00 3A */	lbz r0, 0x3a(r31)
/* 8001DF64 0001AEC4  28 00 00 00 */	cmplwi r0, 0
/* 8001DF68 0001AEC8  41 82 00 38 */	beq lbl_8001DFA0
lbl_8001DF6C:
/* 8001DF6C 0001AECC  38 00 00 00 */	li r0, 0
/* 8001DF70 0001AED0  A9 02 C5 FA */	lha r8, lbl_805AE31A@sda21(r2)
/* 8001DF74 0001AED4  98 1F 00 3A */	stb r0, 0x3a(r31)
/* 8001DF78 0001AED8  38 61 00 08 */	addi r3, r1, 8
/* 8001DF7C 0001AEDC  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 8001DF80 0001AEE0  38 80 04 46 */	li r4, 0x446
/* 8001DF84 0001AEE4  98 1F 00 39 */	stb r0, 0x39(r31)
/* 8001DF88 0001AEE8  38 A0 00 7F */	li r5, 0x7f
/* 8001DF8C 0001AEEC  38 C0 00 40 */	li r6, 0x40
/* 8001DF90 0001AEF0  38 E0 00 00 */	li r7, 0
/* 8001DF94 0001AEF4  39 20 00 00 */	li r9, 0
/* 8001DF98 0001AEF8  48 2C BD DD */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 8001DF9C 0001AEFC  48 00 00 58 */	b lbl_8001DFF4
lbl_8001DFA0:
/* 8001DFA0 0001AF00  38 60 00 01 */	li r3, 1
/* 8001DFA4 0001AF04  38 00 00 00 */	li r0, 0
/* 8001DFA8 0001AF08  90 7F 00 08 */	stw r3, 8(r31)
/* 8001DFAC 0001AF0C  38 80 00 00 */	li r4, 0
/* 8001DFB0 0001AF10  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 8001DFB4 0001AF14  80 65 00 C4 */	lwz r3, 0xc4(r5)
/* 8001DFB8 0001AF18  90 65 00 C8 */	stw r3, 0xc8(r5)
/* 8001DFBC 0001AF1C  90 05 00 C4 */	stw r0, 0xc4(r5)
/* 8001DFC0 0001AF20  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8001DFC4 0001AF24  48 2A C6 21 */	bl SetIsActive__10CGuiWidgetFb
/* 8001DFC8 0001AF28  38 61 00 0C */	addi r3, r1, 0xc
/* 8001DFCC 0001AF2C  38 8D 81 4C */	addi r4, r13, lbl_805A6D0C@sda21
/* 8001DFD0 0001AF30  4B FF 7A 21 */	bl wstring_l__4rstlFPCw
/* 8001DFD4 0001AF34  38 7F 00 30 */	addi r3, r31, 0x30
/* 8001DFD8 0001AF38  38 81 00 0C */	addi r4, r1, 0xc
/* 8001DFDC 0001AF3C  48 00 4D 35 */	bl sub_80022d10
/* 8001DFE0 0001AF40  38 61 00 0C */	addi r3, r1, 0xc
/* 8001DFE4 0001AF44  48 31 F1 51 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8001DFE8 0001AF48  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8001DFEC 0001AF4C  7F E3 FB 78 */	mr r3, r31
/* 8001DFF0 0001AF50  48 00 02 91 */	bl SetTableColors__17SFusionBonusFrameFP14CGuiTableGroup
lbl_8001DFF4:
/* 8001DFF4 0001AF54  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8001DFF8 0001AF58  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8001DFFC 0001AF5C  7C 08 03 A6 */	mtlr r0
/* 8001E000 0001AF60  38 21 00 30 */	addi r1, r1, 0x30
/* 8001E004 0001AF64  4E 80 00 20 */	blr

.global DoSelectionChange__17SFusionBonusFrameFPC14CGuiTableGroup
DoSelectionChange__17SFusionBonusFrameFPC14CGuiTableGroup:
/* 8001E008 0001AF68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001E00C 0001AF6C  7C 08 02 A6 */	mflr r0
/* 8001E010 0001AF70  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001E014 0001AF74  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8001E018 0001AF78  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8001E01C 0001AF7C  7C 9E 23 78 */	mr r30, r4
/* 8001E020 0001AF80  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8001E024 0001AF84  7C 7D 1B 78 */	mr r29, r3
/* 8001E028 0001AF88  80 03 00 28 */	lwz r0, 0x28(r3)
/* 8001E02C 0001AF8C  7C 1E 00 40 */	cmplw r30, r0
/* 8001E030 0001AF90  40 82 00 38 */	bne lbl_8001E068
/* 8001E034 0001AF94  A9 02 C5 FA */	lha r8, lbl_805AE31A@sda21(r2)
/* 8001E038 0001AF98  38 61 00 0C */	addi r3, r1, 0xc
/* 8001E03C 0001AF9C  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 8001E040 0001AFA0  38 80 04 45 */	li r4, 0x445
/* 8001E044 0001AFA4  38 A0 00 7F */	li r5, 0x7f
/* 8001E048 0001AFA8  38 C0 00 40 */	li r6, 0x40
/* 8001E04C 0001AFAC  38 E0 00 00 */	li r7, 0
/* 8001E050 0001AFB0  39 20 00 00 */	li r9, 0
/* 8001E054 0001AFB4  48 2C BD 21 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 8001E058 0001AFB8  38 00 00 00 */	li r0, 0
/* 8001E05C 0001AFBC  98 1D 00 3A */	stb r0, 0x3a(r29)
/* 8001E060 0001AFC0  98 1D 00 39 */	stb r0, 0x39(r29)
/* 8001E064 0001AFC4  48 00 00 70 */	b lbl_8001E0D4
lbl_8001E068:
/* 8001E068 0001AFC8  A9 02 C5 FA */	lha r8, lbl_805AE31A@sda21(r2)
/* 8001E06C 0001AFCC  38 61 00 08 */	addi r3, r1, 8
/* 8001E070 0001AFD0  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 8001E074 0001AFD4  38 80 04 47 */	li r4, 0x447
/* 8001E078 0001AFD8  38 A0 00 7F */	li r5, 0x7f
/* 8001E07C 0001AFDC  38 C0 00 40 */	li r6, 0x40
/* 8001E080 0001AFE0  38 E0 00 00 */	li r7, 0
/* 8001E084 0001AFE4  39 20 00 00 */	li r9, 0
/* 8001E088 0001AFE8  48 2C BC ED */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 8001E08C 0001AFEC  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 8001E090 0001AFF0  80 8D A0 80 */	lwz r4, gpGameState@sda21(r13)
/* 8001E094 0001AFF4  80 03 00 C4 */	lwz r0, 0xc4(r3)
/* 8001E098 0001AFF8  38 64 00 A8 */	addi r3, r4, 0xa8
/* 8001E09C 0001AFFC  20 00 00 01 */	subfic r0, r0, 1
/* 8001E0A0 0001B000  7C 00 00 34 */	cntlzw r0, r0
/* 8001E0A4 0001B004  54 04 D9 7E */	srwi r4, r0, 5
/* 8001E0A8 0001B008  48 1B 71 19 */	bl SetHasFusion__14CSystemOptionsFb
/* 8001E0AC 0001B00C  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 8001E0B0 0001B010  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 8001E0B4 0001B014  83 E4 00 C4 */	lwz r31, 0xc4(r4)
/* 8001E0B8 0001B018  48 1B 58 85 */	bl PlayerState__10CGameStateFv
/* 8001E0BC 0001B01C  80 63 00 00 */	lwz r3, 0(r3)
/* 8001E0C0 0001B020  20 1F 00 01 */	subfic r0, r31, 1
/* 8001E0C4 0001B024  7C 00 00 34 */	cntlzw r0, r0
/* 8001E0C8 0001B028  80 63 00 00 */	lwz r3, 0(r3)
/* 8001E0CC 0001B02C  54 04 D9 7E */	srwi r4, r0, 5
/* 8001E0D0 0001B030  48 07 33 E5 */	bl SetIsFusionEnabled__12CPlayerStateFb
lbl_8001E0D4:
/* 8001E0D4 0001B034  7F A3 EB 78 */	mr r3, r29
/* 8001E0D8 0001B038  7F C4 F3 78 */	mr r4, r30
/* 8001E0DC 0001B03C  48 00 01 A5 */	bl SetTableColors__17SFusionBonusFrameFP14CGuiTableGroup
/* 8001E0E0 0001B040  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001E0E4 0001B044  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8001E0E8 0001B048  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8001E0EC 0001B04C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8001E0F0 0001B050  7C 08 03 A6 */	mtlr r0
/* 8001E0F4 0001B054  38 21 00 20 */	addi r1, r1, 0x20
/* 8001E0F8 0001B058  4E 80 00 20 */	blr

.global DoOptionsAdvance__17SFusionBonusFrameFPC14CGuiTableGroup
DoOptionsAdvance__17SFusionBonusFrameFPC14CGuiTableGroup:
/* 8001E0FC 0001B05C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001E100 0001B060  7C 08 02 A6 */	mflr r0
/* 8001E104 0001B064  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001E108 0001B068  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8001E10C 0001B06C  7C 7F 1B 78 */	mr r31, r3
/* 8001E110 0001B070  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8001E114 0001B074  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8001E118 0001B078  80 8D A0 80 */	lwz r4, gpGameState@sda21(r13)
/* 8001E11C 0001B07C  80 03 00 C4 */	lwz r0, 0xc4(r3)
/* 8001E120 0001B080  88 84 01 78 */	lbz r4, 0x178(r4)
/* 8001E124 0001B084  2C 00 00 01 */	cmpwi r0, 1
/* 8001E128 0001B088  54 83 D7 FE */	rlwinm r3, r4, 0x1a, 0x1f, 0x1f
/* 8001E12C 0001B08C  54 85 CF FE */	rlwinm r5, r4, 0x19, 0x1f, 0x1f
/* 8001E130 0001B090  54 84 E7 FE */	rlwinm r4, r4, 0x1c, 0x1f, 0x1f
/* 8001E134 0001B094  41 82 00 14 */	beq lbl_8001E148
/* 8001E138 0001B098  40 80 01 30 */	bge lbl_8001E268
/* 8001E13C 0001B09C  2C 00 00 00 */	cmpwi r0, 0
/* 8001E140 0001B0A0  40 80 00 B0 */	bge lbl_8001E1F0
/* 8001E144 0001B0A4  48 00 01 24 */	b lbl_8001E268
lbl_8001E148:
/* 8001E148 0001B0A8  88 1F 00 3A */	lbz r0, 0x3a(r31)
/* 8001E14C 0001B0AC  28 00 00 00 */	cmplwi r0, 0
/* 8001E150 0001B0B0  41 82 00 14 */	beq lbl_8001E164
/* 8001E154 0001B0B4  38 00 00 00 */	li r0, 0
/* 8001E158 0001B0B8  98 1F 00 3A */	stb r0, 0x3a(r31)
/* 8001E15C 0001B0BC  48 00 4D F9 */	bl PlayAdvanceSfx__11CFrontEndUIFv
/* 8001E160 0001B0C0  48 00 01 08 */	b lbl_8001E268
lbl_8001E164:
/* 8001E164 0001B0C4  28 03 00 00 */	cmplwi r3, 0
/* 8001E168 0001B0C8  41 82 00 58 */	beq lbl_8001E1C0
/* 8001E16C 0001B0CC  28 05 00 00 */	cmplwi r5, 0
/* 8001E170 0001B0D0  40 82 00 F8 */	bne lbl_8001E268
/* 8001E174 0001B0D4  3C 80 80 3D */	lis r4, lbl_803CC644@ha
/* 8001E178 0001B0D8  38 60 00 44 */	li r3, 0x44
/* 8001E17C 0001B0DC  38 84 C6 44 */	addi r4, r4, lbl_803CC644@l
/* 8001E180 0001B0E0  38 A0 00 00 */	li r5, 0
/* 8001E184 0001B0E4  38 84 01 14 */	addi r4, r4, 0x114
/* 8001E188 0001B0E8  48 2F 76 E5 */	bl __nw__FUlPCcPCc
/* 8001E18C 0001B0EC  7C 7E 1B 79 */	or. r30, r3, r3
/* 8001E190 0001B0F0  41 82 00 18 */	beq lbl_8001E1A8
/* 8001E194 0001B0F4  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 8001E198 0001B0F8  38 C0 00 00 */	li r6, 0
/* 8001E19C 0001B0FC  80 BF 00 04 */	lwz r5, 4(r31)
/* 8001E1A0 0001B100  48 00 40 85 */	bl __ct__13SGBALinkFrameFPC9CGuiFrameP11CGBASupportb
/* 8001E1A4 0001B104  7C 7E 1B 78 */	mr r30, r3
lbl_8001E1A8:
/* 8001E1A8 0001B108  80 7F 00 00 */	lwz r3, 0(r31)
/* 8001E1AC 0001B10C  38 80 00 01 */	li r4, 1
/* 8001E1B0 0001B110  48 00 40 39 */	bl __dt__13SGBALinkFrameFv
/* 8001E1B4 0001B114  93 DF 00 00 */	stw r30, 0(r31)
/* 8001E1B8 0001B118  48 00 4D 9D */	bl PlayAdvanceSfx__11CFrontEndUIFv
/* 8001E1BC 0001B11C  48 00 00 AC */	b lbl_8001E268
lbl_8001E1C0:
/* 8001E1C0 0001B120  38 00 00 01 */	li r0, 1
/* 8001E1C4 0001B124  A9 02 C5 FA */	lha r8, lbl_805AE31A@sda21(r2)
/* 8001E1C8 0001B128  98 1F 00 3A */	stb r0, 0x3a(r31)
/* 8001E1CC 0001B12C  38 61 00 08 */	addi r3, r1, 8
/* 8001E1D0 0001B130  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 8001E1D4 0001B134  38 80 04 46 */	li r4, 0x446
/* 8001E1D8 0001B138  38 A0 00 7F */	li r5, 0x7f
/* 8001E1DC 0001B13C  38 C0 00 40 */	li r6, 0x40
/* 8001E1E0 0001B140  38 E0 00 00 */	li r7, 0
/* 8001E1E4 0001B144  39 20 00 00 */	li r9, 0
/* 8001E1E8 0001B148  48 2C BB 8D */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 8001E1EC 0001B14C  48 00 00 7C */	b lbl_8001E268
lbl_8001E1F0:
/* 8001E1F0 0001B150  88 1F 00 39 */	lbz r0, 0x39(r31)
/* 8001E1F4 0001B154  28 00 00 00 */	cmplwi r0, 0
/* 8001E1F8 0001B158  41 82 00 14 */	beq lbl_8001E20C
/* 8001E1FC 0001B15C  38 00 00 00 */	li r0, 0
/* 8001E200 0001B160  98 1F 00 39 */	stb r0, 0x39(r31)
/* 8001E204 0001B164  48 00 4D 51 */	bl PlayAdvanceSfx__11CFrontEndUIFv
/* 8001E208 0001B168  48 00 00 60 */	b lbl_8001E268
lbl_8001E20C:
/* 8001E20C 0001B16C  28 04 00 00 */	cmplwi r4, 0
/* 8001E210 0001B170  41 82 00 10 */	beq lbl_8001E220
/* 8001E214 0001B174  38 00 00 02 */	li r0, 2
/* 8001E218 0001B178  90 1F 00 08 */	stw r0, 8(r31)
/* 8001E21C 0001B17C  48 00 00 4C */	b lbl_8001E268
lbl_8001E220:
/* 8001E220 0001B180  3C 80 80 3D */	lis r4, lbl_803CC644@ha
/* 8001E224 0001B184  38 60 00 44 */	li r3, 0x44
/* 8001E228 0001B188  38 84 C6 44 */	addi r4, r4, lbl_803CC644@l
/* 8001E22C 0001B18C  38 A0 00 00 */	li r5, 0
/* 8001E230 0001B190  38 84 01 14 */	addi r4, r4, 0x114
/* 8001E234 0001B194  48 2F 76 39 */	bl __nw__FUlPCcPCc
/* 8001E238 0001B198  7C 7E 1B 79 */	or. r30, r3, r3
/* 8001E23C 0001B19C  41 82 00 18 */	beq lbl_8001E254
/* 8001E240 0001B1A0  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 8001E244 0001B1A4  38 C0 00 00 */	li r6, 0
/* 8001E248 0001B1A8  80 BF 00 04 */	lwz r5, 4(r31)
/* 8001E24C 0001B1AC  48 00 3F D9 */	bl __ct__13SGBALinkFrameFPC9CGuiFrameP11CGBASupportb
/* 8001E250 0001B1B0  7C 7E 1B 78 */	mr r30, r3
lbl_8001E254:
/* 8001E254 0001B1B4  80 7F 00 00 */	lwz r3, 0(r31)
/* 8001E258 0001B1B8  38 80 00 01 */	li r4, 1
/* 8001E25C 0001B1BC  48 00 3F 8D */	bl __dt__13SGBALinkFrameFv
/* 8001E260 0001B1C0  93 DF 00 00 */	stw r30, 0(r31)
/* 8001E264 0001B1C4  48 00 4C F1 */	bl PlayAdvanceSfx__11CFrontEndUIFv
lbl_8001E268:
/* 8001E268 0001B1C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001E26C 0001B1CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8001E270 0001B1D0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8001E274 0001B1D4  7C 08 03 A6 */	mtlr r0
/* 8001E278 0001B1D8  38 21 00 20 */	addi r1, r1, 0x20
/* 8001E27C 0001B1DC  4E 80 00 20 */	blr

.global SetTableColors__17SFusionBonusFrameFP14CGuiTableGroup
SetTableColors__17SFusionBonusFrameFP14CGuiTableGroup:
/* 8001E280 0001B1E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001E284 0001B1E4  7C 08 02 A6 */	mflr r0
/* 8001E288 0001B1E8  7C 83 23 78 */	mr r3, r4
/* 8001E28C 0001B1EC  38 E0 00 FF */	li r7, 0xff
/* 8001E290 0001B1F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001E294 0001B1F4  38 C0 00 A0 */	li r6, 0xa0
/* 8001E298 0001B1F8  38 00 00 C8 */	li r0, 0xc8
/* 8001E29C 0001B1FC  38 81 00 0C */	addi r4, r1, 0xc
/* 8001E2A0 0001B200  98 E1 00 0C */	stb r7, 0xc(r1)
/* 8001E2A4 0001B204  38 A1 00 08 */	addi r5, r1, 8
/* 8001E2A8 0001B208  98 E1 00 0D */	stb r7, 0xd(r1)
/* 8001E2AC 0001B20C  98 E1 00 0E */	stb r7, 0xe(r1)
/* 8001E2B0 0001B210  98 E1 00 0F */	stb r7, 0xf(r1)
/* 8001E2B4 0001B214  98 C1 00 08 */	stb r6, 8(r1)
/* 8001E2B8 0001B218  98 C1 00 09 */	stb r6, 9(r1)
/* 8001E2BC 0001B21C  98 C1 00 0A */	stb r6, 0xa(r1)
/* 8001E2C0 0001B220  98 01 00 0B */	stb r0, 0xb(r1)
/* 8001E2C4 0001B224  48 2A 83 39 */	bl SetColors__14CGuiTableGroupCFRC6CColorRC6CColor
/* 8001E2C8 0001B228  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001E2CC 0001B22C  7C 08 03 A6 */	mtlr r0
/* 8001E2D0 0001B230  38 21 00 10 */	addi r1, r1, 0x10
/* 8001E2D4 0001B234  4E 80 00 20 */	blr

.global sub_8001e2d8
sub_8001e2d8:
/* 8001E2D8 0001B238  38 00 00 00 */	li r0, 0
/* 8001E2DC 0001B23C  98 03 00 3A */	stb r0, 0x3a(r3)
/* 8001E2E0 0001B240  98 03 00 39 */	stb r0, 0x39(r3)
/* 8001E2E4 0001B244  4E 80 00 20 */	blr

.global FinishedLoading__17SFusionBonusFrameFv
FinishedLoading__17SFusionBonusFrameFv:
/* 8001E2E8 0001B248  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 8001E2EC 0001B24C  7C 08 02 A6 */	mflr r0
/* 8001E2F0 0001B250  3C A0 80 3E */	lis r5, lbl_803D9820@ha
/* 8001E2F4 0001B254  90 01 01 04 */	stw r0, 0x104(r1)
/* 8001E2F8 0001B258  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 8001E2FC 0001B25C  3B E5 98 20 */	addi r31, r5, lbl_803D9820@l
/* 8001E300 0001B260  93 C1 00 F8 */	stw r30, 0xf8(r1)
/* 8001E304 0001B264  7C 7E 1B 78 */	mr r30, r3
/* 8001E308 0001B268  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 8001E30C 0001B26C  93 A1 00 F4 */	stw r29, 0xf4(r1)
/* 8001E310 0001B270  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 8001E314 0001B274  38 84 01 58 */	addi r4, r4, 0x158
/* 8001E318 0001B278  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 8001E31C 0001B27C  48 2A 3E 39 */	bl FindWidget__9CGuiFrameCFPCc
/* 8001E320 0001B280  90 7E 00 28 */	stw r3, 0x28(r30)
/* 8001E324 0001B284  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 8001E328 0001B288  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 8001E32C 0001B28C  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 8001E330 0001B290  38 84 01 6B */	addi r4, r4, 0x16b
/* 8001E334 0001B294  48 2A 3E 21 */	bl FindWidget__9CGuiFrameCFPCc
/* 8001E338 0001B298  90 7E 00 2C */	stw r3, 0x2c(r30)
/* 8001E33C 0001B29C  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 8001E340 0001B2A0  38 A3 C6 44 */	addi r5, r3, lbl_803CC644@l
/* 8001E344 0001B2A4  38 61 00 08 */	addi r3, r1, 8
/* 8001E348 0001B2A8  80 9E 00 24 */	lwz r4, 0x24(r30)
/* 8001E34C 0001B2AC  38 A5 01 81 */	addi r5, r5, 0x181
/* 8001E350 0001B2B0  48 00 4A A9 */	bl FindTextPanePair__14SFrontEndFrameFPC9CGuiFramePCc
/* 8001E354 0001B2B4  80 01 00 08 */	lwz r0, 8(r1)
/* 8001E358 0001B2B8  38 80 00 42 */	li r4, 0x42
/* 8001E35C 0001B2BC  90 1E 00 30 */	stw r0, 0x30(r30)
/* 8001E360 0001B2C0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8001E364 0001B2C4  90 1E 00 34 */	stw r0, 0x34(r30)
/* 8001E368 0001B2C8  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8001E36C 0001B2CC  48 33 83 91 */	bl GetString__12CStringTableCFi
/* 8001E370 0001B2D0  3C 80 80 3D */	lis r4, lbl_803CC644@ha
/* 8001E374 0001B2D4  7C 65 1B 78 */	mr r5, r3
/* 8001E378 0001B2D8  38 84 C6 44 */	addi r4, r4, lbl_803CC644@l
/* 8001E37C 0001B2DC  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 8001E380 0001B2E0  38 84 01 97 */	addi r4, r4, 0x197
/* 8001E384 0001B2E4  48 00 4B 01 */	bl FindAndSetPairText__14SFrontEndFrameFR9CGuiFramePCcRCQ24rstl7wstring
/* 8001E388 0001B2E8  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8001E38C 0001B2EC  38 80 00 3F */	li r4, 0x3f
/* 8001E390 0001B2F0  48 33 83 6D */	bl GetString__12CStringTableCFi
/* 8001E394 0001B2F4  3C 80 80 3D */	lis r4, lbl_803CC644@ha
/* 8001E398 0001B2F8  7C 65 1B 78 */	mr r5, r3
/* 8001E39C 0001B2FC  38 84 C6 44 */	addi r4, r4, lbl_803CC644@l
/* 8001E3A0 0001B300  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 8001E3A4 0001B304  38 84 01 A4 */	addi r4, r4, 0x1a4
/* 8001E3A8 0001B308  48 00 4A DD */	bl FindAndSetPairText__14SFrontEndFrameFR9CGuiFramePCcRCQ24rstl7wstring
/* 8001E3AC 0001B30C  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8001E3B0 0001B310  38 80 00 41 */	li r4, 0x41
/* 8001E3B4 0001B314  48 33 83 49 */	bl GetString__12CStringTableCFi
/* 8001E3B8 0001B318  3C 80 80 3D */	lis r4, lbl_803CC644@ha
/* 8001E3BC 0001B31C  7C 65 1B 78 */	mr r5, r3
/* 8001E3C0 0001B320  38 84 C6 44 */	addi r4, r4, lbl_803CC644@l
/* 8001E3C4 0001B324  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 8001E3C8 0001B328  38 84 01 B8 */	addi r4, r4, 0x1b8
/* 8001E3CC 0001B32C  48 00 4A B9 */	bl FindAndSetPairText__14SFrontEndFrameFR9CGuiFramePCcRCQ24rstl7wstring
/* 8001E3D0 0001B330  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8001E3D4 0001B334  38 80 00 40 */	li r4, 0x40
/* 8001E3D8 0001B338  48 33 83 25 */	bl GetString__12CStringTableCFi
/* 8001E3DC 0001B33C  3C 80 80 3D */	lis r4, lbl_803CC644@ha
/* 8001E3E0 0001B340  7C 65 1B 78 */	mr r5, r3
/* 8001E3E4 0001B344  38 84 C6 44 */	addi r4, r4, lbl_803CC644@l
/* 8001E3E8 0001B348  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 8001E3EC 0001B34C  38 84 01 CE */	addi r4, r4, 0x1ce
/* 8001E3F0 0001B350  48 00 4A 95 */	bl FindAndSetPairText__14SFrontEndFrameFR9CGuiFramePCcRCQ24rstl7wstring
/* 8001E3F4 0001B354  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8001E3F8 0001B358  38 80 00 64 */	li r4, 0x64
/* 8001E3FC 0001B35C  48 33 83 01 */	bl GetString__12CStringTableCFi
/* 8001E400 0001B360  3C 80 80 3D */	lis r4, lbl_803CC644@ha
/* 8001E404 0001B364  7C 65 1B 78 */	mr r5, r3
/* 8001E408 0001B368  38 84 C6 44 */	addi r4, r4, lbl_803CC644@l
/* 8001E40C 0001B36C  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 8001E410 0001B370  38 84 01 E5 */	addi r4, r4, 0x1e5
/* 8001E414 0001B374  48 00 4A 71 */	bl FindAndSetPairText__14SFrontEndFrameFR9CGuiFramePCcRCQ24rstl7wstring
/* 8001E418 0001B378  3C 80 80 3D */	lis r4, lbl_803CC644@ha
/* 8001E41C 0001B37C  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 8001E420 0001B380  38 84 C6 44 */	addi r4, r4, lbl_803CC644@l
/* 8001E424 0001B384  38 84 01 F4 */	addi r4, r4, 0x1f4
/* 8001E428 0001B388  48 2A 3D 2D */	bl FindWidget__9CGuiFrameCFPCc
/* 8001E42C 0001B38C  7C 7D 1B 78 */	mr r29, r3
/* 8001E430 0001B390  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8001E434 0001B394  38 80 00 55 */	li r4, 0x55
/* 8001E438 0001B398  48 33 82 C5 */	bl GetString__12CStringTableCFi
/* 8001E43C 0001B39C  7C 64 1B 78 */	mr r4, r3
/* 8001E440 0001B3A0  38 61 00 80 */	addi r3, r1, 0x80
/* 8001E444 0001B3A4  4B FF 75 AD */	bl wstring_l__4rstlFPCw
/* 8001E448 0001B3A8  38 7D 00 D4 */	addi r3, r29, 0xd4
/* 8001E44C 0001B3AC  38 81 00 80 */	addi r4, r1, 0x80
/* 8001E450 0001B3B0  38 A0 00 00 */	li r5, 0
/* 8001E454 0001B3B4  48 2A B4 31 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 8001E458 0001B3B8  38 61 00 80 */	addi r3, r1, 0x80
/* 8001E45C 0001B3BC  48 31 EC D9 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8001E460 0001B3C0  3C 80 80 3D */	lis r4, lbl_803CC644@ha
/* 8001E464 0001B3C4  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 8001E468 0001B3C8  38 84 C6 44 */	addi r4, r4, lbl_803CC644@l
/* 8001E46C 0001B3CC  38 84 02 05 */	addi r4, r4, 0x205
/* 8001E470 0001B3D0  48 2A 3C E5 */	bl FindWidget__9CGuiFrameCFPCc
/* 8001E474 0001B3D4  7C 7D 1B 78 */	mr r29, r3
/* 8001E478 0001B3D8  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8001E47C 0001B3DC  38 80 00 52 */	li r4, 0x52
/* 8001E480 0001B3E0  48 33 82 7D */	bl GetString__12CStringTableCFi
/* 8001E484 0001B3E4  7C 64 1B 78 */	mr r4, r3
/* 8001E488 0001B3E8  38 61 00 70 */	addi r3, r1, 0x70
/* 8001E48C 0001B3EC  4B FF 75 65 */	bl wstring_l__4rstlFPCw
/* 8001E490 0001B3F0  38 7D 00 D4 */	addi r3, r29, 0xd4
/* 8001E494 0001B3F4  38 81 00 70 */	addi r4, r1, 0x70
/* 8001E498 0001B3F8  38 A0 00 00 */	li r5, 0
/* 8001E49C 0001B3FC  48 2A B3 E9 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 8001E4A0 0001B400  38 61 00 70 */	addi r3, r1, 0x70
/* 8001E4A4 0001B404  48 31 EC 91 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8001E4A8 0001B408  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 8001E4AC 0001B40C  38 80 00 00 */	li r4, 0
/* 8001E4B0 0001B410  48 2A C1 35 */	bl SetIsActive__10CGuiWidgetFb
/* 8001E4B4 0001B414  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 8001E4B8 0001B418  38 80 00 00 */	li r4, 0
/* 8001E4BC 0001B41C  48 2A C1 71 */	bl SetIsVisible__10CGuiWidgetFb
/* 8001E4C0 0001B420  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 8001E4C4 0001B424  38 00 00 00 */	li r0, 0
/* 8001E4C8 0001B428  7F C3 F3 78 */	mr r3, r30
/* 8001E4CC 0001B42C  98 04 00 D1 */	stb r0, 0xd1(r4)
/* 8001E4D0 0001B430  80 8D A0 80 */	lwz r4, gpGameState@sda21(r13)
/* 8001E4D4 0001B434  80 DE 00 2C */	lwz r6, 0x2c(r30)
/* 8001E4D8 0001B438  88 84 01 78 */	lbz r4, 0x178(r4)
/* 8001E4DC 0001B43C  80 06 00 C4 */	lwz r0, 0xc4(r6)
/* 8001E4E0 0001B440  54 85 EF FE */	rlwinm r5, r4, 0x1d, 0x1f, 0x1f
/* 8001E4E4 0001B444  7C 85 00 D0 */	neg r4, r5
/* 8001E4E8 0001B448  90 06 00 C8 */	stw r0, 0xc8(r6)
/* 8001E4EC 0001B44C  7C 80 2B 78 */	or r0, r4, r5
/* 8001E4F0 0001B450  54 00 0F FE */	srwi r0, r0, 0x1f
/* 8001E4F4 0001B454  90 06 00 C4 */	stw r0, 0xc4(r6)
/* 8001E4F8 0001B458  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 8001E4FC 0001B45C  4B FF FD 85 */	bl SetTableColors__17SFusionBonusFrameFP14CGuiTableGroup
/* 8001E500 0001B460  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 8001E504 0001B464  7F C3 F3 78 */	mr r3, r30
/* 8001E508 0001B468  4B FF FD 79 */	bl SetTableColors__17SFusionBonusFrameFP14CGuiTableGroup
/* 8001E50C 0001B46C  80 FF 00 6C */	lwz r7, 0x6c(r31)
/* 8001E510 0001B470  38 61 00 34 */	addi r3, r1, 0x34
/* 8001E514 0001B474  80 DF 00 70 */	lwz r6, 0x70(r31)
/* 8001E518 0001B478  38 81 00 64 */	addi r4, r1, 0x64
/* 8001E51C 0001B47C  80 1F 00 74 */	lwz r0, 0x74(r31)
/* 8001E520 0001B480  38 A0 00 0C */	li r5, 0xc
/* 8001E524 0001B484  90 E1 00 64 */	stw r7, 0x64(r1)
/* 8001E528 0001B488  90 C1 00 68 */	stw r6, 0x68(r1)
/* 8001E52C 0001B48C  90 01 00 6C */	stw r0, 0x6c(r1)
/* 8001E530 0001B490  4B FE 4F 61 */	bl memcpy
/* 8001E534 0001B494  3C 60 80 02 */	lis r3, sub_8001e6dc@ha
/* 8001E538 0001B498  93 C1 00 DC */	stw r30, 0xdc(r1)
/* 8001E53C 0001B49C  38 03 E6 DC */	addi r0, r3, sub_8001e6dc@l
/* 8001E540 0001B4A0  38 61 00 E0 */	addi r3, r1, 0xe0
/* 8001E544 0001B4A4  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 8001E548 0001B4A8  38 81 00 34 */	addi r4, r1, 0x34
/* 8001E54C 0001B4AC  38 A0 00 0C */	li r5, 0xc
/* 8001E550 0001B4B0  4B FE 4F 41 */	bl memcpy
/* 8001E554 0001B4B4  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 8001E558 0001B4B8  38 81 00 D8 */	addi r4, r1, 0xd8
/* 8001E55C 0001B4BC  48 2A 82 FD */	bl "SetMenuAdvanceCallback__14CGuiTableGroupFRC29TFunctor1<CP14CGuiTableGroup>"
/* 8001E560 0001B4C0  80 FF 00 78 */	lwz r7, 0x78(r31)
/* 8001E564 0001B4C4  38 61 00 28 */	addi r3, r1, 0x28
/* 8001E568 0001B4C8  80 DF 00 7C */	lwz r6, 0x7c(r31)
/* 8001E56C 0001B4CC  38 81 00 58 */	addi r4, r1, 0x58
/* 8001E570 0001B4D0  80 1F 00 80 */	lwz r0, 0x80(r31)
/* 8001E574 0001B4D4  38 A0 00 0C */	li r5, 0xc
/* 8001E578 0001B4D8  90 E1 00 58 */	stw r7, 0x58(r1)
/* 8001E57C 0001B4DC  90 C1 00 5C */	stw r6, 0x5c(r1)
/* 8001E580 0001B4E0  90 01 00 60 */	stw r0, 0x60(r1)
/* 8001E584 0001B4E4  4B FE 4F 0D */	bl memcpy
/* 8001E588 0001B4E8  3C 60 80 02 */	lis r3, sub_8001e678@ha
/* 8001E58C 0001B4EC  93 C1 00 C4 */	stw r30, 0xc4(r1)
/* 8001E590 0001B4F0  38 03 E6 78 */	addi r0, r3, sub_8001e678@l
/* 8001E594 0001B4F4  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8001E598 0001B4F8  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 8001E59C 0001B4FC  38 81 00 28 */	addi r4, r1, 0x28
/* 8001E5A0 0001B500  38 A0 00 0C */	li r5, 0xc
/* 8001E5A4 0001B504  4B FE 4E ED */	bl memcpy
/* 8001E5A8 0001B508  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 8001E5AC 0001B50C  38 81 00 C0 */	addi r4, r1, 0xc0
/* 8001E5B0 0001B510  48 2A 82 41 */	bl "SetMenuSelectionChangeCallback__14CGuiTableGroupFRC35TFunctor3<CP14CGuiTableGroup,Ci,Ci>"
/* 8001E5B4 0001B514  80 FF 00 84 */	lwz r7, 0x84(r31)
/* 8001E5B8 0001B518  38 61 00 1C */	addi r3, r1, 0x1c
/* 8001E5BC 0001B51C  80 DF 00 88 */	lwz r6, 0x88(r31)
/* 8001E5C0 0001B520  38 81 00 4C */	addi r4, r1, 0x4c
/* 8001E5C4 0001B524  80 1F 00 8C */	lwz r0, 0x8c(r31)
/* 8001E5C8 0001B528  38 A0 00 0C */	li r5, 0xc
/* 8001E5CC 0001B52C  90 E1 00 4C */	stw r7, 0x4c(r1)
/* 8001E5D0 0001B530  90 C1 00 50 */	stw r6, 0x50(r1)
/* 8001E5D4 0001B534  90 01 00 54 */	stw r0, 0x54(r1)
/* 8001E5D8 0001B538  4B FE 4E B9 */	bl memcpy
/* 8001E5DC 0001B53C  3C 60 80 02 */	lis r3, sub_8001e6dc@ha
/* 8001E5E0 0001B540  93 C1 00 AC */	stw r30, 0xac(r1)
/* 8001E5E4 0001B544  38 03 E6 DC */	addi r0, r3, sub_8001e6dc@l
/* 8001E5E8 0001B548  38 61 00 B0 */	addi r3, r1, 0xb0
/* 8001E5EC 0001B54C  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 8001E5F0 0001B550  38 81 00 1C */	addi r4, r1, 0x1c
/* 8001E5F4 0001B554  38 A0 00 0C */	li r5, 0xc
/* 8001E5F8 0001B558  4B FE 4E 99 */	bl memcpy
/* 8001E5FC 0001B55C  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 8001E600 0001B560  38 81 00 A8 */	addi r4, r1, 0xa8
/* 8001E604 0001B564  48 2A 82 21 */	bl "SetMenuCancelCallback__14CGuiTableGroupFRC29TFunctor1<CP14CGuiTableGroup>"
/* 8001E608 0001B568  80 FF 00 90 */	lwz r7, 0x90(r31)
/* 8001E60C 0001B56C  38 61 00 10 */	addi r3, r1, 0x10
/* 8001E610 0001B570  80 DF 00 94 */	lwz r6, 0x94(r31)
/* 8001E614 0001B574  38 81 00 40 */	addi r4, r1, 0x40
/* 8001E618 0001B578  80 1F 00 98 */	lwz r0, 0x98(r31)
/* 8001E61C 0001B57C  38 A0 00 0C */	li r5, 0xc
/* 8001E620 0001B580  90 E1 00 40 */	stw r7, 0x40(r1)
/* 8001E624 0001B584  90 C1 00 44 */	stw r6, 0x44(r1)
/* 8001E628 0001B588  90 01 00 48 */	stw r0, 0x48(r1)
/* 8001E62C 0001B58C  4B FE 4E 65 */	bl memcpy
/* 8001E630 0001B590  3C 60 80 02 */	lis r3, sub_8001e678@ha
/* 8001E634 0001B594  93 C1 00 94 */	stw r30, 0x94(r1)
/* 8001E638 0001B598  38 03 E6 78 */	addi r0, r3, sub_8001e678@l
/* 8001E63C 0001B59C  38 61 00 98 */	addi r3, r1, 0x98
/* 8001E640 0001B5A0  90 01 00 90 */	stw r0, 0x90(r1)
/* 8001E644 0001B5A4  38 81 00 10 */	addi r4, r1, 0x10
/* 8001E648 0001B5A8  38 A0 00 0C */	li r5, 0xc
/* 8001E64C 0001B5AC  4B FE 4E 45 */	bl memcpy
/* 8001E650 0001B5B0  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 8001E654 0001B5B4  38 81 00 90 */	addi r4, r1, 0x90
/* 8001E658 0001B5B8  48 2A 81 99 */	bl "SetMenuSelectionChangeCallback__14CGuiTableGroupFRC35TFunctor3<CP14CGuiTableGroup,Ci,Ci>"
/* 8001E65C 0001B5BC  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8001E660 0001B5C0  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 8001E664 0001B5C4  83 C1 00 F8 */	lwz r30, 0xf8(r1)
/* 8001E668 0001B5C8  83 A1 00 F4 */	lwz r29, 0xf4(r1)
/* 8001E66C 0001B5CC  7C 08 03 A6 */	mtlr r0
/* 8001E670 0001B5D0  38 21 01 00 */	addi r1, r1, 0x100
/* 8001E674 0001B5D4  4E 80 00 20 */	blr

.global sub_8001e678
sub_8001e678:
/* 8001E678 0001B5D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8001E67C 0001B5DC  7C 08 02 A6 */	mflr r0
/* 8001E680 0001B5E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8001E684 0001B5E4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8001E688 0001B5E8  7C DF 33 78 */	mr r31, r6
/* 8001E68C 0001B5EC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8001E690 0001B5F0  7C BE 2B 78 */	mr r30, r5
/* 8001E694 0001B5F4  38 A0 00 0C */	li r5, 0xc
/* 8001E698 0001B5F8  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8001E69C 0001B5FC  7C 7D 1B 78 */	mr r29, r3
/* 8001E6A0 0001B600  38 61 00 08 */	addi r3, r1, 8
/* 8001E6A4 0001B604  4B FE 4D ED */	bl memcpy
/* 8001E6A8 0001B608  7F A3 EB 78 */	mr r3, r29
/* 8001E6AC 0001B60C  7F C4 F3 78 */	mr r4, r30
/* 8001E6B0 0001B610  7F E5 FB 78 */	mr r5, r31
/* 8001E6B4 0001B614  39 81 00 08 */	addi r12, r1, 8
/* 8001E6B8 0001B618  48 36 B2 75 */	bl __ptmf_scall
/* 8001E6BC 0001B61C  60 00 00 00 */	nop
/* 8001E6C0 0001B620  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8001E6C4 0001B624  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8001E6C8 0001B628  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8001E6CC 0001B62C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8001E6D0 0001B630  7C 08 03 A6 */	mtlr r0
/* 8001E6D4 0001B634  38 21 00 30 */	addi r1, r1, 0x30
/* 8001E6D8 0001B638  4E 80 00 20 */	blr

.global sub_8001e6dc
sub_8001e6dc:
/* 8001E6DC 0001B63C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001E6E0 0001B640  7C 08 02 A6 */	mflr r0
/* 8001E6E4 0001B644  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001E6E8 0001B648  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8001E6EC 0001B64C  7C BF 2B 78 */	mr r31, r5
/* 8001E6F0 0001B650  38 A0 00 0C */	li r5, 0xc
/* 8001E6F4 0001B654  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8001E6F8 0001B658  7C 7E 1B 78 */	mr r30, r3
/* 8001E6FC 0001B65C  38 61 00 08 */	addi r3, r1, 8
/* 8001E700 0001B660  4B FE 4D 91 */	bl memcpy
/* 8001E704 0001B664  7F C3 F3 78 */	mr r3, r30
/* 8001E708 0001B668  7F E4 FB 78 */	mr r4, r31
/* 8001E70C 0001B66C  39 81 00 08 */	addi r12, r1, 8
/* 8001E710 0001B670  48 36 B2 1D */	bl __ptmf_scall
/* 8001E714 0001B674  60 00 00 00 */	nop
/* 8001E718 0001B678  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001E71C 0001B67C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8001E720 0001B680  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8001E724 0001B684  7C 08 03 A6 */	mtlr r0
/* 8001E728 0001B688  38 21 00 20 */	addi r1, r1, 0x20
/* 8001E72C 0001B68C  4E 80 00 20 */	blr

.global PumpLoad__17SFusionBonusFrameFv
PumpLoad__17SFusionBonusFrameFv:
/* 8001E730 0001B690  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001E734 0001B694  7C 08 02 A6 */	mflr r0
/* 8001E738 0001B698  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001E73C 0001B69C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001E740 0001B6A0  7C 7F 1B 78 */	mr r31, r3
/* 8001E744 0001B6A4  93 C1 00 08 */	stw r30, 8(r1)
/* 8001E748 0001B6A8  80 03 00 24 */	lwz r0, 0x24(r3)
/* 8001E74C 0001B6AC  28 00 00 00 */	cmplwi r0, 0
/* 8001E750 0001B6B0  41 82 00 0C */	beq lbl_8001E75C
/* 8001E754 0001B6B4  38 60 00 01 */	li r3, 1
/* 8001E758 0001B6B8  48 00 00 E8 */	b lbl_8001E840
lbl_8001E75C:
/* 8001E75C 0001B6BC  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8001E760 0001B6C0  28 00 00 00 */	cmplwi r0, 0
/* 8001E764 0001B6C4  41 82 00 0C */	beq lbl_8001E770
/* 8001E768 0001B6C8  38 60 00 01 */	li r3, 1
/* 8001E76C 0001B6CC  48 00 00 3C */	b lbl_8001E7A8
lbl_8001E770:
/* 8001E770 0001B6D0  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 8001E774 0001B6D4  28 00 00 00 */	cmplwi r0, 0
/* 8001E778 0001B6D8  41 82 00 2C */	beq lbl_8001E7A4
/* 8001E77C 0001B6DC  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8001E780 0001B6E0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8001E784 0001B6E4  28 00 00 00 */	cmplwi r0, 0
/* 8001E788 0001B6E8  41 82 00 1C */	beq lbl_8001E7A4
/* 8001E78C 0001B6EC  38 7F 00 0C */	addi r3, r31, 0xc
/* 8001E790 0001B6F0  48 32 26 7D */	bl GetObj__6CTokenFv
/* 8001E794 0001B6F4  80 03 00 04 */	lwz r0, 4(r3)
/* 8001E798 0001B6F8  38 60 00 01 */	li r3, 1
/* 8001E79C 0001B6FC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8001E7A0 0001B700  48 00 00 08 */	b lbl_8001E7A8
lbl_8001E7A4:
/* 8001E7A4 0001B704  38 60 00 00 */	li r3, 0
lbl_8001E7A8:
/* 8001E7A8 0001B708  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001E7AC 0001B70C  41 82 00 90 */	beq lbl_8001E83C
/* 8001E7B0 0001B710  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 8001E7B4 0001B714  28 00 00 00 */	cmplwi r0, 0
/* 8001E7B8 0001B718  41 82 00 0C */	beq lbl_8001E7C4
/* 8001E7BC 0001B71C  38 60 00 01 */	li r3, 1
/* 8001E7C0 0001B720  48 00 00 3C */	b lbl_8001E7FC
lbl_8001E7C4:
/* 8001E7C4 0001B724  88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 8001E7C8 0001B728  28 00 00 00 */	cmplwi r0, 0
/* 8001E7CC 0001B72C  41 82 00 2C */	beq lbl_8001E7F8
/* 8001E7D0 0001B730  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8001E7D4 0001B734  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8001E7D8 0001B738  28 00 00 00 */	cmplwi r0, 0
/* 8001E7DC 0001B73C  41 82 00 1C */	beq lbl_8001E7F8
/* 8001E7E0 0001B740  38 7F 00 18 */	addi r3, r31, 0x18
/* 8001E7E4 0001B744  48 32 26 29 */	bl GetObj__6CTokenFv
/* 8001E7E8 0001B748  80 03 00 04 */	lwz r0, 4(r3)
/* 8001E7EC 0001B74C  38 60 00 01 */	li r3, 1
/* 8001E7F0 0001B750  90 1F 00 20 */	stw r0, 0x20(r31)
/* 8001E7F4 0001B754  48 00 00 08 */	b lbl_8001E7FC
lbl_8001E7F8:
/* 8001E7F8 0001B758  38 60 00 00 */	li r3, 0
lbl_8001E7FC:
/* 8001E7FC 0001B75C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001E800 0001B760  41 82 00 3C */	beq lbl_8001E83C
/* 8001E804 0001B764  80 7F 00 04 */	lwz r3, 4(r31)
/* 8001E808 0001B768  48 22 A3 6D */	bl IsReady__11CGBASupportFv
/* 8001E80C 0001B76C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001E810 0001B770  41 82 00 2C */	beq lbl_8001E83C
/* 8001E814 0001B774  83 DF 00 14 */	lwz r30, 0x14(r31)
/* 8001E818 0001B778  7F C3 F3 78 */	mr r3, r30
/* 8001E81C 0001B77C  48 2A 3D 35 */	bl GetIsFinishedLoading__9CGuiFrameCFv
/* 8001E820 0001B780  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001E824 0001B784  41 82 00 18 */	beq lbl_8001E83C
/* 8001E828 0001B788  93 DF 00 24 */	stw r30, 0x24(r31)
/* 8001E82C 0001B78C  7F E3 FB 78 */	mr r3, r31
/* 8001E830 0001B790  4B FF FA B9 */	bl FinishedLoading__17SFusionBonusFrameFv
/* 8001E834 0001B794  38 60 00 01 */	li r3, 1
/* 8001E838 0001B798  48 00 00 08 */	b lbl_8001E840
lbl_8001E83C:
/* 8001E83C 0001B79C  38 60 00 00 */	li r3, 0
lbl_8001E840:
/* 8001E840 0001B7A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001E844 0001B7A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001E848 0001B7A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001E84C 0001B7AC  7C 08 03 A6 */	mtlr r0
/* 8001E850 0001B7B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8001E854 0001B7B4  4E 80 00 20 */	blr

.global ProcessUserInput__17SFusionBonusFrameFRC11CFinalInputRC15CSaveGameScreen
ProcessUserInput__17SFusionBonusFrameFRC11CFinalInputRC15CSaveGameScreen:
/* 8001E858 0001B7B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001E85C 0001B7BC  7C 08 02 A6 */	mflr r0
/* 8001E860 0001B7C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001E864 0001B7C4  38 00 00 00 */	li r0, 0
/* 8001E868 0001B7C8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8001E86C 0001B7CC  7C 9F 23 78 */	mr r31, r4
/* 8001E870 0001B7D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8001E874 0001B7D4  7C BE 2B 79 */	or. r30, r5, r5
/* 8001E878 0001B7D8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8001E87C 0001B7DC  7C 7D 1B 78 */	mr r29, r3
/* 8001E880 0001B7E0  90 03 00 08 */	stw r0, 8(r3)
/* 8001E884 0001B7E4  41 82 00 0C */	beq lbl_8001E890
/* 8001E888 0001B7E8  7F C3 F3 78 */	mr r3, r30
/* 8001E88C 0001B7EC  48 23 0E E5 */	bl ProcessUserInput__15CSaveGameScreenFRC11CFinalInput
lbl_8001E890:
/* 8001E890 0001B7F0  88 1D 00 38 */	lbz r0, 0x38(r29)
/* 8001E894 0001B7F4  28 00 00 00 */	cmplwi r0, 0
/* 8001E898 0001B7F8  41 82 00 9C */	beq lbl_8001E934
/* 8001E89C 0001B7FC  80 7D 00 00 */	lwz r3, 0(r29)
/* 8001E8A0 0001B800  28 03 00 00 */	cmplwi r3, 0
/* 8001E8A4 0001B804  41 82 00 7C */	beq lbl_8001E920
/* 8001E8A8 0001B808  7C 1E 00 D0 */	neg r0, r30
/* 8001E8AC 0001B80C  7F E4 FB 78 */	mr r4, r31
/* 8001E8B0 0001B810  7C 00 F3 78 */	or r0, r0, r30
/* 8001E8B4 0001B814  54 05 0F FE */	srwi r5, r0, 0x1f
/* 8001E8B8 0001B818  48 00 35 4D */	bl ProcessUserInput__13SGBALinkFrameFRC11CFinalInputb
/* 8001E8BC 0001B81C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8001E8C0 0001B820  41 82 00 74 */	beq lbl_8001E934
/* 8001E8C4 0001B824  80 7D 00 00 */	lwz r3, 0(r29)
/* 8001E8C8 0001B828  38 80 00 01 */	li r4, 1
/* 8001E8CC 0001B82C  48 00 39 1D */	bl __dt__13SGBALinkFrameFv
/* 8001E8D0 0001B830  38 00 00 00 */	li r0, 0
/* 8001E8D4 0001B834  2C 1F 00 01 */	cmpwi r31, 1
/* 8001E8D8 0001B838  90 1D 00 00 */	stw r0, 0(r29)
/* 8001E8DC 0001B83C  40 82 00 58 */	bne lbl_8001E934
/* 8001E8E0 0001B840  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 8001E8E4 0001B844  80 03 00 C4 */	lwz r0, 0xc4(r3)
/* 8001E8E8 0001B848  2C 00 00 00 */	cmpwi r0, 0
/* 8001E8EC 0001B84C  40 82 00 20 */	bne lbl_8001E90C
/* 8001E8F0 0001B850  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 8001E8F4 0001B854  88 03 01 78 */	lbz r0, 0x178(r3)
/* 8001E8F8 0001B858  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8001E8FC 0001B85C  40 82 00 10 */	bne lbl_8001E90C
/* 8001E900 0001B860  38 00 00 01 */	li r0, 1
/* 8001E904 0001B864  98 1D 00 39 */	stb r0, 0x39(r29)
/* 8001E908 0001B868  48 00 00 2C */	b lbl_8001E934
lbl_8001E90C:
/* 8001E90C 0001B86C  28 1E 00 00 */	cmplwi r30, 0
/* 8001E910 0001B870  41 82 00 24 */	beq lbl_8001E934
/* 8001E914 0001B874  7F C3 F3 78 */	mr r3, r30
/* 8001E918 0001B878  48 23 0D 59 */	bl SaveNESState__15CSaveGameScreenFv
/* 8001E91C 0001B87C  48 00 00 18 */	b lbl_8001E934
lbl_8001E920:
/* 8001E920 0001B880  80 7D 00 24 */	lwz r3, 0x24(r29)
/* 8001E924 0001B884  28 03 00 00 */	cmplwi r3, 0
/* 8001E928 0001B888  41 82 00 0C */	beq lbl_8001E934
/* 8001E92C 0001B88C  7F E4 FB 78 */	mr r4, r31
/* 8001E930 0001B890  48 2A 3D 29 */	bl ProcessUserInput__9CGuiFrameFRC11CFinalInput
lbl_8001E934:
/* 8001E934 0001B894  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001E938 0001B898  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8001E93C 0001B89C  80 7D 00 08 */	lwz r3, 8(r29)
/* 8001E940 0001B8A0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8001E944 0001B8A4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8001E948 0001B8A8  7C 08 03 A6 */	mtlr r0
/* 8001E94C 0001B8AC  38 21 00 20 */	addi r1, r1, 0x20
/* 8001E950 0001B8B0  4E 80 00 20 */	blr

.global Update__17SFusionBonusFrameFv
Update__17SFusionBonusFrameFv:
/* 8001E954 0001B8B4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8001E958 0001B8B8  7C 08 02 A6 */	mflr r0
/* 8001E95C 0001B8BC  28 04 00 00 */	cmplwi r4, 0
/* 8001E960 0001B8C0  38 A0 00 00 */	li r5, 0
/* 8001E964 0001B8C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8001E968 0001B8C8  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 8001E96C 0001B8CC  FF E0 08 90 */	fmr f31, f1
/* 8001E970 0001B8D0  BF 61 00 14 */	stmw r27, 0x14(r1)
/* 8001E974 0001B8D4  7C 7E 1B 78 */	mr r30, r3
/* 8001E978 0001B8D8  41 82 00 10 */	beq lbl_8001E988
/* 8001E97C 0001B8DC  80 04 00 10 */	lwz r0, 0x10(r4)
/* 8001E980 0001B8E0  2C 00 00 10 */	cmpwi r0, 0x10
/* 8001E984 0001B8E4  40 82 00 08 */	bne lbl_8001E98C
lbl_8001E988:
/* 8001E988 0001B8E8  38 A0 00 01 */	li r5, 1
lbl_8001E98C:
/* 8001E98C 0001B8EC  88 1E 00 38 */	lbz r0, 0x38(r30)
/* 8001E990 0001B8F0  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 8001E994 0001B8F4  7C 03 00 40 */	cmplw r3, r0
/* 8001E998 0001B8F8  41 82 00 1C */	beq lbl_8001E9B4
/* 8001E99C 0001B8FC  98 BE 00 38 */	stb r5, 0x38(r30)
/* 8001E9A0 0001B900  88 1E 00 38 */	lbz r0, 0x38(r30)
/* 8001E9A4 0001B904  28 00 00 00 */	cmplwi r0, 0
/* 8001E9A8 0001B908  41 82 00 0C */	beq lbl_8001E9B4
/* 8001E9AC 0001B90C  7F C3 F3 78 */	mr r3, r30
/* 8001E9B0 0001B910  4B FF F9 29 */	bl sub_8001e2d8
lbl_8001E9B4:
/* 8001E9B4 0001B914  80 7E 00 00 */	lwz r3, 0(r30)
/* 8001E9B8 0001B918  28 03 00 00 */	cmplwi r3, 0
/* 8001E9BC 0001B91C  41 82 00 10 */	beq lbl_8001E9CC
/* 8001E9C0 0001B920  FC 20 F8 90 */	fmr f1, f31
/* 8001E9C4 0001B924  48 00 36 4D */	bl Update__13SGBALinkFrameFf
/* 8001E9C8 0001B928  48 00 00 18 */	b lbl_8001E9E0
lbl_8001E9CC:
/* 8001E9CC 0001B92C  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 8001E9D0 0001B930  28 03 00 00 */	cmplwi r3, 0
/* 8001E9D4 0001B934  41 82 00 0C */	beq lbl_8001E9E0
/* 8001E9D8 0001B938  FC 20 F8 90 */	fmr f1, f31
/* 8001E9DC 0001B93C  48 2A 3D 29 */	bl Update__9CGuiFrameFf
lbl_8001E9E0:
/* 8001E9E0 0001B940  80 8D A0 80 */	lwz r4, gpGameState@sda21(r13)
/* 8001E9E4 0001B944  3B 80 00 00 */	li r28, 0
/* 8001E9E8 0001B948  80 BE 00 28 */	lwz r5, 0x28(r30)
/* 8001E9EC 0001B94C  88 64 01 78 */	lbz r3, 0x178(r4)
/* 8001E9F0 0001B950  83 E5 00 C4 */	lwz r31, 0xc4(r5)
/* 8001E9F4 0001B954  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 8001E9F8 0001B958  41 82 00 10 */	beq lbl_8001EA08
/* 8001E9FC 0001B95C  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 8001EA00 0001B960  41 82 00 08 */	beq lbl_8001EA08
/* 8001EA04 0001B964  3B 80 00 01 */	li r28, 1
lbl_8001EA08:
/* 8001EA08 0001B968  88 04 01 78 */	lbz r0, 0x178(r4)
/* 8001EA0C 0001B96C  2C 1F 00 01 */	cmpwi r31, 1
/* 8001EA10 0001B970  3B A0 00 00 */	li r29, 0
/* 8001EA14 0001B974  54 1B E7 FE */	rlwinm r27, r0, 0x1c, 0x1f, 0x1f
/* 8001EA18 0001B978  40 82 00 10 */	bne lbl_8001EA28
/* 8001EA1C 0001B97C  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 8001EA20 0001B980  41 82 00 08 */	beq lbl_8001EA28
/* 8001EA24 0001B984  3B A0 00 01 */	li r29, 1
lbl_8001EA28:
/* 8001EA28 0001B988  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 8001EA2C 0001B98C  7F A4 EB 78 */	mr r4, r29
/* 8001EA30 0001B990  48 2A BB B5 */	bl SetIsActive__10CGuiWidgetFb
/* 8001EA34 0001B994  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 8001EA38 0001B998  7F A4 EB 78 */	mr r4, r29
/* 8001EA3C 0001B99C  48 2A BB F1 */	bl SetIsVisible__10CGuiWidgetFb
/* 8001EA40 0001B9A0  3C 80 80 3D */	lis r4, lbl_803CC644@ha
/* 8001EA44 0001B9A4  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 8001EA48 0001B9A8  38 84 C6 44 */	addi r4, r4, lbl_803CC644@l
/* 8001EA4C 0001B9AC  38 84 01 F4 */	addi r4, r4, 0x1f4
/* 8001EA50 0001B9B0  48 2A 37 05 */	bl FindWidget__9CGuiFrameCFPCc
/* 8001EA54 0001B9B4  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8001EA58 0001B9B8  7C 00 00 34 */	cntlzw r0, r0
/* 8001EA5C 0001B9BC  54 04 D9 7E */	srwi r4, r0, 5
/* 8001EA60 0001B9C0  48 2A BB CD */	bl SetIsVisible__10CGuiWidgetFb
/* 8001EA64 0001B9C4  88 1E 00 3A */	lbz r0, 0x3a(r30)
/* 8001EA68 0001B9C8  28 00 00 00 */	cmplwi r0, 0
/* 8001EA6C 0001B9CC  41 82 00 18 */	beq lbl_8001EA84
/* 8001EA70 0001B9D0  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8001EA74 0001B9D4  38 80 00 50 */	li r4, 0x50
/* 8001EA78 0001B9D8  48 33 7C 85 */	bl GetString__12CStringTableCFi
/* 8001EA7C 0001B9DC  7C 7C 1B 78 */	mr r28, r3
/* 8001EA80 0001B9E0  48 00 00 24 */	b lbl_8001EAA4
lbl_8001EA84:
/* 8001EA84 0001B9E4  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 8001EA88 0001B9E8  41 82 00 0C */	beq lbl_8001EA94
/* 8001EA8C 0001B9EC  38 6D 81 4C */	addi r3, r13, lbl_805A6D0C@sda21
/* 8001EA90 0001B9F0  48 00 00 10 */	b lbl_8001EAA0
lbl_8001EA94:
/* 8001EA94 0001B9F4  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8001EA98 0001B9F8  38 80 00 4E */	li r4, 0x4e
/* 8001EA9C 0001B9FC  48 33 7C 61 */	bl GetString__12CStringTableCFi
lbl_8001EAA0:
/* 8001EAA0 0001BA00  7C 7C 1B 78 */	mr r28, r3
lbl_8001EAA4:
/* 8001EAA4 0001BA04  88 1E 00 39 */	lbz r0, 0x39(r30)
/* 8001EAA8 0001BA08  28 00 00 00 */	cmplwi r0, 0
/* 8001EAAC 0001BA0C  41 82 00 18 */	beq lbl_8001EAC4
/* 8001EAB0 0001BA10  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8001EAB4 0001BA14  38 80 00 4F */	li r4, 0x4f
/* 8001EAB8 0001BA18  48 33 7C 45 */	bl GetString__12CStringTableCFi
/* 8001EABC 0001BA1C  7C 64 1B 78 */	mr r4, r3
/* 8001EAC0 0001BA20  48 00 00 24 */	b lbl_8001EAE4
lbl_8001EAC4:
/* 8001EAC4 0001BA24  28 1B 00 00 */	cmplwi r27, 0
/* 8001EAC8 0001BA28  41 82 00 0C */	beq lbl_8001EAD4
/* 8001EACC 0001BA2C  38 6D 81 4C */	addi r3, r13, lbl_805A6D0C@sda21
/* 8001EAD0 0001BA30  48 00 00 10 */	b lbl_8001EAE0
lbl_8001EAD4:
/* 8001EAD4 0001BA34  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8001EAD8 0001BA38  38 80 00 4D */	li r4, 0x4d
/* 8001EADC 0001BA3C  48 33 7C 21 */	bl GetString__12CStringTableCFi
lbl_8001EAE0:
/* 8001EAE0 0001BA40  7C 64 1B 78 */	mr r4, r3
lbl_8001EAE4:
/* 8001EAE4 0001BA44  2C 1F 00 01 */	cmpwi r31, 1
/* 8001EAE8 0001BA48  38 7E 00 30 */	addi r3, r30, 0x30
/* 8001EAEC 0001BA4C  40 82 00 08 */	bne lbl_8001EAF4
/* 8001EAF0 0001BA50  7F 84 E3 78 */	mr r4, r28
lbl_8001EAF4:
/* 8001EAF4 0001BA54  48 00 42 75 */	bl SetPairText__12SGuiTextPairFRCQ24rstl7wstring
/* 8001EAF8 0001BA58  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 8001EAFC 0001BA5C  BB 61 00 14 */	lmw r27, 0x14(r1)
/* 8001EB00 0001BA60  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8001EB04 0001BA64  7C 08 03 A6 */	mtlr r0
/* 8001EB08 0001BA68  38 21 00 30 */	addi r1, r1, 0x30
/* 8001EB0C 0001BA6C  4E 80 00 20 */	blr

.global Draw__17SFusionBonusFrameFv
Draw__17SFusionBonusFrameFv:
/* 8001EB10 0001BA70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001EB14 0001BA74  7C 08 02 A6 */	mflr r0
/* 8001EB18 0001BA78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001EB1C 0001BA7C  88 03 00 38 */	lbz r0, 0x38(r3)
/* 8001EB20 0001BA80  28 00 00 00 */	cmplwi r0, 0
/* 8001EB24 0001BA84  41 82 00 34 */	beq lbl_8001EB58
/* 8001EB28 0001BA88  80 03 00 00 */	lwz r0, 0(r3)
/* 8001EB2C 0001BA8C  28 00 00 00 */	cmplwi r0, 0
/* 8001EB30 0001BA90  41 82 00 10 */	beq lbl_8001EB40
/* 8001EB34 0001BA94  7C 03 03 78 */	mr r3, r0
/* 8001EB38 0001BA98  48 00 36 85 */	bl Draw__13SGBALinkFrameFv
/* 8001EB3C 0001BA9C  48 00 00 1C */	b lbl_8001EB58
lbl_8001EB40:
/* 8001EB40 0001BAA0  80 63 00 24 */	lwz r3, 0x24(r3)
/* 8001EB44 0001BAA4  28 03 00 00 */	cmplwi r3, 0
/* 8001EB48 0001BAA8  41 82 00 10 */	beq lbl_8001EB58
/* 8001EB4C 0001BAAC  3C 80 80 5A */	lis r4, lbl_8059FD08@ha
/* 8001EB50 0001BAB0  38 84 FD 08 */	addi r4, r4, lbl_8059FD08@l
/* 8001EB54 0001BAB4  48 2A 3B E1 */	bl Draw__9CGuiFrameCFRC19CGuiWidgetDrawParms
lbl_8001EB58:
/* 8001EB58 0001BAB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001EB5C 0001BABC  7C 08 03 A6 */	mtlr r0
.global lbl_8001EB60
lbl_8001EB60:
/* 8001EB60 0001BAC0  38 21 00 10 */	addi r1, r1, 0x10
/* 8001EB64 0001BAC4  4E 80 00 20 */	blr

.global __dt__17SFusionBonusFrameFv
__dt__17SFusionBonusFrameFv:
/* 8001EB68 0001BAC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001EB6C 0001BACC  7C 08 02 A6 */	mflr r0
/* 8001EB70 0001BAD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001EB74 0001BAD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001EB78 0001BAD8  7C 9F 23 78 */	mr r31, r4
/* 8001EB7C 0001BADC  93 C1 00 08 */	stw r30, 8(r1)
/* 8001EB80 0001BAE0  7C 7E 1B 79 */	or. r30, r3, r3
/* 8001EB84 0001BAE4  41 82 00 74 */	beq lbl_8001EBF8
/* 8001EB88 0001BAE8  34 1E 00 18 */	addic. r0, r30, 0x18
/* 8001EB8C 0001BAEC  41 82 00 18 */	beq lbl_8001EBA4
/* 8001EB90 0001BAF0  34 1E 00 18 */	addic. r0, r30, 0x18
/* 8001EB94 0001BAF4  41 82 00 10 */	beq lbl_8001EBA4
/* 8001EB98 0001BAF8  38 7E 00 18 */	addi r3, r30, 0x18
/* 8001EB9C 0001BAFC  38 80 00 00 */	li r4, 0
/* 8001EBA0 0001BB00  48 32 22 A1 */	bl __dt__6CTokenFv
lbl_8001EBA4:
/* 8001EBA4 0001BB04  34 1E 00 0C */	addic. r0, r30, 0xc
/* 8001EBA8 0001BB08  41 82 00 18 */	beq lbl_8001EBC0
/* 8001EBAC 0001BB0C  34 1E 00 0C */	addic. r0, r30, 0xc
/* 8001EBB0 0001BB10  41 82 00 10 */	beq lbl_8001EBC0
/* 8001EBB4 0001BB14  38 7E 00 0C */	addi r3, r30, 0xc
/* 8001EBB8 0001BB18  38 80 00 00 */	li r4, 0
/* 8001EBBC 0001BB1C  48 32 22 85 */	bl __dt__6CTokenFv
lbl_8001EBC0:
/* 8001EBC0 0001BB20  34 1E 00 04 */	addic. r0, r30, 4
/* 8001EBC4 0001BB24  41 82 00 10 */	beq lbl_8001EBD4
/* 8001EBC8 0001BB28  80 7E 00 04 */	lwz r3, 4(r30)
/* 8001EBCC 0001BB2C  38 80 00 01 */	li r4, 1
/* 8001EBD0 0001BB30  48 22 A0 AD */	bl __dt__11CGBASupportFv
lbl_8001EBD4:
/* 8001EBD4 0001BB34  28 1E 00 00 */	cmplwi r30, 0
/* 8001EBD8 0001BB38  41 82 00 10 */	beq lbl_8001EBE8
/* 8001EBDC 0001BB3C  80 7E 00 00 */	lwz r3, 0(r30)
/* 8001EBE0 0001BB40  38 80 00 01 */	li r4, 1
/* 8001EBE4 0001BB44  48 00 36 05 */	bl __dt__13SGBALinkFrameFv
lbl_8001EBE8:
/* 8001EBE8 0001BB48  7F E0 07 35 */	extsh. r0, r31
/* 8001EBEC 0001BB4C  40 81 00 0C */	ble lbl_8001EBF8
/* 8001EBF0 0001BB50  7F C3 F3 78 */	mr r3, r30
/* 8001EBF4 0001BB54  48 2F 6D 3D */	bl Free__7CMemoryFPCv
lbl_8001EBF8:
/* 8001EBF8 0001BB58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001EBFC 0001BB5C  7F C3 F3 78 */	mr r3, r30
/* 8001EC00 0001BB60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001EC04 0001BB64  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001EC08 0001BB68  7C 08 03 A6 */	mtlr r0
/* 8001EC0C 0001BB6C  38 21 00 10 */	addi r1, r1, 0x10
/* 8001EC10 0001BB70  4E 80 00 20 */	blr

.global __ct__17SFusionBonusFrameFv
__ct__17SFusionBonusFrameFv:
/* 8001EC14 0001BB74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001EC18 0001BB78  7C 08 02 A6 */	mflr r0
/* 8001EC1C 0001BB7C  38 A0 00 00 */	li r5, 0
/* 8001EC20 0001BB80  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001EC24 0001BB84  38 00 00 00 */	li r0, 0
/* 8001EC28 0001BB88  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8001EC2C 0001BB8C  7C 7F 1B 78 */	mr r31, r3
/* 8001EC30 0001BB90  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 8001EC34 0001BB94  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8001EC38 0001BB98  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 8001EC3C 0001BB9C  38 60 00 48 */	li r3, 0x48
/* 8001EC40 0001BBA0  90 1F 00 00 */	stw r0, 0(r31)
/* 8001EC44 0001BBA4  38 84 01 14 */	addi r4, r4, 0x114
/* 8001EC48 0001BBA8  48 2F 6C 25 */	bl __nw__FUlPCcPCc
/* 8001EC4C 0001BBAC  7C 60 1B 79 */	or. r0, r3, r3
/* 8001EC50 0001BBB0  41 82 00 0C */	beq lbl_8001EC5C
/* 8001EC54 0001BBB4  48 22 A0 C1 */	bl __ct__11CGBASupportFv
/* 8001EC58 0001BBB8  7C 60 1B 78 */	mr r0, r3
lbl_8001EC5C:
/* 8001EC5C 0001BBBC  90 1F 00 04 */	stw r0, 4(r31)
/* 8001EC60 0001BBC0  38 00 00 00 */	li r0, 0
/* 8001EC64 0001BBC4  3C 80 80 3D */	lis r4, lbl_803CC644@ha
/* 8001EC68 0001BBC8  38 61 00 10 */	addi r3, r1, 0x10
/* 8001EC6C 0001BBCC  90 1F 00 08 */	stw r0, 8(r31)
/* 8001EC70 0001BBD0  38 84 C6 44 */	addi r4, r4, lbl_803CC644@l
/* 8001EC74 0001BBD4  38 A4 02 15 */	addi r5, r4, 0x215
/* 8001EC78 0001BBD8  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 8001EC7C 0001BBDC  81 84 00 00 */	lwz r12, 0(r4)
/* 8001EC80 0001BBE0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8001EC84 0001BBE4  7D 89 03 A6 */	mtctr r12
/* 8001EC88 0001BBE8  4E 80 04 21 */	bctrl
/* 8001EC8C 0001BBEC  3B DF 00 0C */	addi r30, r31, 0xc
/* 8001EC90 0001BBF0  38 81 00 10 */	addi r4, r1, 0x10
/* 8001EC94 0001BBF4  7F C3 F3 78 */	mr r3, r30
/* 8001EC98 0001BBF8  48 32 22 11 */	bl __ct__6CTokenFRC6CToken
/* 8001EC9C 0001BBFC  38 00 00 00 */	li r0, 0
/* 8001ECA0 0001BC00  38 61 00 10 */	addi r3, r1, 0x10
/* 8001ECA4 0001BC04  90 1E 00 08 */	stw r0, 8(r30)
/* 8001ECA8 0001BC08  38 80 FF FF */	li r4, -1
/* 8001ECAC 0001BC0C  48 32 21 95 */	bl __dt__6CTokenFv
/* 8001ECB0 0001BC10  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 8001ECB4 0001BC14  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 8001ECB8 0001BC18  38 A3 C6 44 */	addi r5, r3, lbl_803CC644@l
/* 8001ECBC 0001BC1C  38 61 00 08 */	addi r3, r1, 8
/* 8001ECC0 0001BC20  81 84 00 00 */	lwz r12, 0(r4)
/* 8001ECC4 0001BC24  38 A5 02 24 */	addi r5, r5, 0x224
/* 8001ECC8 0001BC28  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8001ECCC 0001BC2C  7D 89 03 A6 */	mtctr r12
/* 8001ECD0 0001BC30  4E 80 04 21 */	bctrl
/* 8001ECD4 0001BC34  3B DF 00 18 */	addi r30, r31, 0x18
/* 8001ECD8 0001BC38  38 81 00 08 */	addi r4, r1, 8
/* 8001ECDC 0001BC3C  7F C3 F3 78 */	mr r3, r30
/* 8001ECE0 0001BC40  48 32 21 C9 */	bl __ct__6CTokenFRC6CToken
/* 8001ECE4 0001BC44  38 00 00 00 */	li r0, 0
/* 8001ECE8 0001BC48  38 61 00 08 */	addi r3, r1, 8
/* 8001ECEC 0001BC4C  90 1E 00 08 */	stw r0, 8(r30)
/* 8001ECF0 0001BC50  38 80 FF FF */	li r4, -1
/* 8001ECF4 0001BC54  48 32 21 4D */	bl __dt__6CTokenFv
/* 8001ECF8 0001BC58  38 00 00 00 */	li r0, 0
/* 8001ECFC 0001BC5C  38 7F 00 30 */	addi r3, r31, 0x30
/* 8001ED00 0001BC60  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8001ED04 0001BC64  90 1F 00 28 */	stw r0, 0x28(r31)
/* 8001ED08 0001BC68  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 8001ED0C 0001BC6C  48 00 41 69 */	bl __ct__12SGuiTextPairFv
/* 8001ED10 0001BC70  38 00 00 00 */	li r0, 0
/* 8001ED14 0001BC74  38 7F 00 0C */	addi r3, r31, 0xc
/* 8001ED18 0001BC78  98 1F 00 38 */	stb r0, 0x38(r31)
/* 8001ED1C 0001BC7C  98 1F 00 39 */	stb r0, 0x39(r31)
/* 8001ED20 0001BC80  98 1F 00 3A */	stb r0, 0x3a(r31)
/* 8001ED24 0001BC84  48 32 20 61 */	bl Lock__6CTokenFv
/* 8001ED28 0001BC88  7F C3 F3 78 */	mr r3, r30
/* 8001ED2C 0001BC8C  48 32 20 59 */	bl Lock__6CTokenFv
/* 8001ED30 0001BC90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001ED34 0001BC94  7F E3 FB 78 */	mr r3, r31
/* 8001ED38 0001BC98  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8001ED3C 0001BC9C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8001ED40 0001BCA0  7C 08 03 A6 */	mtlr r0
/* 8001ED44 0001BCA4  38 21 00 20 */	addi r1, r1, 0x20
/* 8001ED48 0001BCA8  4E 80 00 20 */	blr

.global DoPopupCancel__19SNewFileSelectFrameFPC14CGuiTableGroup
DoPopupCancel__19SNewFileSelectFrameFPC14CGuiTableGroup:
/* 8001ED4C 0001BCAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001ED50 0001BCB0  7C 08 02 A6 */	mflr r0
/* 8001ED54 0001BCB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001ED58 0001BCB8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8001ED5C 0001BCBC  7C 7F 1B 78 */	mr r31, r3
/* 8001ED60 0001BCC0  80 03 00 08 */	lwz r0, 8(r3)
/* 8001ED64 0001BCC4  2C 00 00 02 */	cmpwi r0, 2
/* 8001ED68 0001BCC8  40 82 00 38 */	bne lbl_8001EDA0
/* 8001ED6C 0001BCCC  A9 02 C5 FA */	lha r8, lbl_805AE31A@sda21(r2)
/* 8001ED70 0001BCD0  38 61 00 0C */	addi r3, r1, 0xc
/* 8001ED74 0001BCD4  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 8001ED78 0001BCD8  38 80 04 46 */	li r4, 0x446
/* 8001ED7C 0001BCDC  38 A0 00 7F */	li r5, 0x7f
/* 8001ED80 0001BCE0  38 C0 00 40 */	li r6, 0x40
/* 8001ED84 0001BCE4  38 E0 00 00 */	li r7, 0
/* 8001ED88 0001BCE8  39 20 00 00 */	li r9, 0
/* 8001ED8C 0001BCEC  48 2C AF E9 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 8001ED90 0001BCF0  38 00 00 01 */	li r0, 1
/* 8001ED94 0001BCF4  90 1F 00 08 */	stw r0, 8(r31)
/* 8001ED98 0001BCF8  98 1F 01 0D */	stb r0, 0x10d(r31)
/* 8001ED9C 0001BCFC  48 00 00 38 */	b lbl_8001EDD4
lbl_8001EDA0:
/* 8001EDA0 0001BD00  A9 02 C5 FA */	lha r8, lbl_805AE31A@sda21(r2)
/* 8001EDA4 0001BD04  38 61 00 08 */	addi r3, r1, 8
/* 8001EDA8 0001BD08  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 8001EDAC 0001BD0C  38 80 04 46 */	li r4, 0x446
/* 8001EDB0 0001BD10  38 A0 00 7F */	li r5, 0x7f
/* 8001EDB4 0001BD14  38 C0 00 40 */	li r6, 0x40
/* 8001EDB8 0001BD18  38 E0 00 00 */	li r7, 0
/* 8001EDBC 0001BD1C  39 20 00 00 */	li r9, 0
/* 8001EDC0 0001BD20  48 2C AF B5 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 8001EDC4 0001BD24  38 60 00 00 */	li r3, 0
/* 8001EDC8 0001BD28  38 00 00 01 */	li r0, 1
/* 8001EDCC 0001BD2C  90 7F 00 08 */	stw r3, 8(r31)
/* 8001EDD0 0001BD30  98 1F 01 0E */	stb r0, 0x10e(r31)
lbl_8001EDD4:
/* 8001EDD4 0001BD34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001EDD8 0001BD38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8001EDDC 0001BD3C  7C 08 03 A6 */	mtlr r0
/* 8001EDE0 0001BD40  38 21 00 20 */	addi r1, r1, 0x20
/* 8001EDE4 0001BD44  4E 80 00 20 */	blr

.global DoPopupAdvance__19SNewFileSelectFrameFPC14CGuiTableGroup
DoPopupAdvance__19SNewFileSelectFrameFPC14CGuiTableGroup:
/* 8001EDE8 0001BD48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001EDEC 0001BD4C  7C 08 02 A6 */	mflr r0
/* 8001EDF0 0001BD50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001EDF4 0001BD54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001EDF8 0001BD58  7C 7F 1B 78 */	mr r31, r3
/* 8001EDFC 0001BD5C  93 C1 00 08 */	stw r30, 8(r1)
/* 8001EE00 0001BD60  80 03 00 08 */	lwz r0, 8(r3)
/* 8001EE04 0001BD64  2C 00 00 02 */	cmpwi r0, 2
/* 8001EE08 0001BD68  40 82 00 4C */	bne lbl_8001EE54
/* 8001EE0C 0001BD6C  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 8001EE10 0001BD70  80 03 00 C4 */	lwz r0, 0xc4(r3)
/* 8001EE14 0001BD74  2C 00 00 01 */	cmpwi r0, 1
/* 8001EE18 0001BD78  40 82 00 28 */	bne lbl_8001EE40
/* 8001EE1C 0001BD7C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8001EE20 0001BD80  83 C3 00 C4 */	lwz r30, 0xc4(r3)
/* 8001EE24 0001BD84  48 00 41 31 */	bl PlayAdvanceSfx__11CFrontEndUIFv
/* 8001EE28 0001BD88  80 7F 00 04 */	lwz r3, 4(r31)
/* 8001EE2C 0001BD8C  7F C4 F3 78 */	mr r4, r30
/* 8001EE30 0001BD90  48 23 08 8D */	bl EraseGame__15CSaveGameScreenFi
/* 8001EE34 0001BD94  7F E3 FB 78 */	mr r3, r31
/* 8001EE38 0001BD98  48 00 08 15 */	bl ResetFrame__19SNewFileSelectFrameFv
/* 8001EE3C 0001BD9C  48 00 00 0C */	b lbl_8001EE48
lbl_8001EE40:
/* 8001EE40 0001BDA0  38 00 00 01 */	li r0, 1
/* 8001EE44 0001BDA4  90 1F 00 08 */	stw r0, 8(r31)
lbl_8001EE48:
/* 8001EE48 0001BDA8  38 00 00 01 */	li r0, 1
/* 8001EE4C 0001BDAC  98 1F 01 0D */	stb r0, 0x10d(r31)
/* 8001EE50 0001BDB0  48 00 00 9C */	b lbl_8001EEEC
lbl_8001EE54:
/* 8001EE54 0001BDB4  80 8D A0 80 */	lwz r4, gpGameState@sda21(r13)
/* 8001EE58 0001BDB8  88 04 01 78 */	lbz r0, 0x178(r4)
/* 8001EE5C 0001BDBC  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8001EE60 0001BDC0  41 82 00 58 */	beq lbl_8001EEB8
/* 8001EE64 0001BDC4  80 9F 00 40 */	lwz r4, 0x40(r31)
/* 8001EE68 0001BDC8  80 04 00 C4 */	lwz r0, 0xc4(r4)
/* 8001EE6C 0001BDCC  2C 00 00 01 */	cmpwi r0, 1
/* 8001EE70 0001BDD0  40 82 00 14 */	bne lbl_8001EE84
/* 8001EE74 0001BDD4  48 00 40 E1 */	bl PlayAdvanceSfx__11CFrontEndUIFv
/* 8001EE78 0001BDD8  38 00 00 01 */	li r0, 1
/* 8001EE7C 0001BDDC  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8001EE80 0001BDE0  48 00 00 6C */	b lbl_8001EEEC
lbl_8001EE84:
/* 8001EE84 0001BDE4  48 00 16 A9 */	bl GetUserFileSelection__19SNewFileSelectFrameCFv
/* 8001EE88 0001BDE8  80 9F 00 40 */	lwz r4, 0x40(r31)
/* 8001EE8C 0001BDEC  7C 60 1B 78 */	mr r0, r3
/* 8001EE90 0001BDF0  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 8001EE94 0001BDF4  7C 1E 03 78 */	mr r30, r0
/* 8001EE98 0001BDF8  80 04 00 C4 */	lwz r0, 0xc4(r4)
/* 8001EE9C 0001BDFC  7C 00 00 34 */	cntlzw r0, r0
/* 8001EEA0 0001BE00  54 04 D9 7E */	srwi r4, r0, 5
/* 8001EEA4 0001BE04  48 1B 4A 21 */	bl SetHardMode__10CGameStateFb
/* 8001EEA8 0001BE08  80 7F 00 04 */	lwz r3, 4(r31)
/* 8001EEAC 0001BE0C  7F C4 F3 78 */	mr r4, r30
/* 8001EEB0 0001BE10  48 23 07 45 */	bl StartGame__15CSaveGameScreenFi
/* 8001EEB4 0001BE14  48 00 00 38 */	b lbl_8001EEEC
lbl_8001EEB8:
/* 8001EEB8 0001BE18  80 9F 00 40 */	lwz r4, 0x40(r31)
/* 8001EEBC 0001BE1C  80 04 00 C4 */	lwz r0, 0xc4(r4)
/* 8001EEC0 0001BE20  2C 00 00 01 */	cmpwi r0, 1
/* 8001EEC4 0001BE24  40 82 00 14 */	bne lbl_8001EED8
/* 8001EEC8 0001BE28  48 00 40 8D */	bl PlayAdvanceSfx__11CFrontEndUIFv
/* 8001EECC 0001BE2C  38 00 00 01 */	li r0, 1
/* 8001EED0 0001BE30  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8001EED4 0001BE34  48 00 00 18 */	b lbl_8001EEEC
lbl_8001EED8:
/* 8001EED8 0001BE38  48 00 16 55 */	bl GetUserFileSelection__19SNewFileSelectFrameCFv
/* 8001EEDC 0001BE3C  7C 60 1B 78 */	mr r0, r3
/* 8001EEE0 0001BE40  80 7F 00 04 */	lwz r3, 4(r31)
/* 8001EEE4 0001BE44  7C 04 03 78 */	mr r4, r0
/* 8001EEE8 0001BE48  48 23 07 0D */	bl StartGame__15CSaveGameScreenFi
lbl_8001EEEC:
/* 8001EEEC 0001BE4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001EEF0 0001BE50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001EEF4 0001BE54  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001EEF8 0001BE58  7C 08 03 A6 */	mtlr r0
/* 8001EEFC 0001BE5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8001EF00 0001BE60  4E 80 00 20 */	blr

.global DoFileselectCancel__19SNewFileSelectFrameFPC14CGuiTableGroup
DoFileselectCancel__19SNewFileSelectFrameFPC14CGuiTableGroup:
/* 8001EF04 0001BE64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001EF08 0001BE68  7C 08 02 A6 */	mflr r0
/* 8001EF0C 0001BE6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001EF10 0001BE70  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8001EF14 0001BE74  7C 7F 1B 78 */	mr r31, r3
/* 8001EF18 0001BE78  80 03 00 08 */	lwz r0, 8(r3)
/* 8001EF1C 0001BE7C  2C 00 00 01 */	cmpwi r0, 1
/* 8001EF20 0001BE80  40 82 00 30 */	bne lbl_8001EF50
/* 8001EF24 0001BE84  A9 02 C5 FA */	lha r8, lbl_805AE31A@sda21(r2)
/* 8001EF28 0001BE88  38 61 00 08 */	addi r3, r1, 8
/* 8001EF2C 0001BE8C  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 8001EF30 0001BE90  38 80 04 46 */	li r4, 0x446
/* 8001EF34 0001BE94  38 A0 00 7F */	li r5, 0x7f
/* 8001EF38 0001BE98  38 C0 00 40 */	li r6, 0x40
/* 8001EF3C 0001BE9C  38 E0 00 00 */	li r7, 0
/* 8001EF40 0001BEA0  39 20 00 00 */	li r9, 0
/* 8001EF44 0001BEA4  48 2C AE 31 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 8001EF48 0001BEA8  7F E3 FB 78 */	mr r3, r31
/* 8001EF4C 0001BEAC  48 00 07 01 */	bl ResetFrame__19SNewFileSelectFrameFv
lbl_8001EF50:
/* 8001EF50 0001BEB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001EF54 0001BEB4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8001EF58 0001BEB8  7C 08 03 A6 */	mtlr r0
/* 8001EF5C 0001BEBC  38 21 00 20 */	addi r1, r1, 0x20
/* 8001EF60 0001BEC0  4E 80 00 20 */	blr

.global DoSelectionChange__19SNewFileSelectFrameFPC14CGuiTableGroup
DoSelectionChange__19SNewFileSelectFrameFPC14CGuiTableGroup:
/* 8001EF64 0001BEC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001EF68 0001BEC8  7C 08 02 A6 */	mflr r0
/* 8001EF6C 0001BECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001EF70 0001BED0  48 00 12 29 */	bl HandleActiveChange__19SNewFileSelectFrameFP10CGuiWidget
/* 8001EF74 0001BED4  A9 02 C5 FA */	lha r8, lbl_805AE31A@sda21(r2)
/* 8001EF78 0001BED8  38 61 00 08 */	addi r3, r1, 8
/* 8001EF7C 0001BEDC  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 8001EF80 0001BEE0  38 80 04 45 */	li r4, 0x445
/* 8001EF84 0001BEE4  38 A0 00 7F */	li r5, 0x7f
/* 8001EF88 0001BEE8  38 C0 00 40 */	li r6, 0x40
/* 8001EF8C 0001BEEC  38 E0 00 00 */	li r7, 0
/* 8001EF90 0001BEF0  39 20 00 00 */	li r9, 0
/* 8001EF94 0001BEF4  48 2C AD E1 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 8001EF98 0001BEF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001EF9C 0001BEFC  7C 08 03 A6 */	mtlr r0
/* 8001EFA0 0001BF00  38 21 00 10 */	addi r1, r1, 0x10
/* 8001EFA4 0001BF04  4E 80 00 20 */	blr

.global IsTextDoneAnimating__19SNewFileSelectFrameFv
IsTextDoneAnimating__19SNewFileSelectFrameFv:
/* 8001EFA8 0001BF08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001EFAC 0001BF0C  7C 08 02 A6 */	mflr r0
/* 8001EFB0 0001BF10  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001EFB4 0001BF14  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8001EFB8 0001BF18  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 8001EFBC 0001BF1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001EFC0 0001BF20  80 03 00 90 */	lwz r0, 0x90(r3)
/* 8001EFC4 0001BF24  7C 7F 1B 78 */	mr r31, r3
/* 8001EFC8 0001BF28  2C 00 00 04 */	cmpwi r0, 4
/* 8001EFCC 0001BF2C  41 82 00 0C */	beq lbl_8001EFD8
/* 8001EFD0 0001BF30  38 60 00 00 */	li r3, 0
/* 8001EFD4 0001BF34  48 00 00 94 */	b lbl_8001F068
lbl_8001EFD8:
/* 8001EFD8 0001BF38  38 7F 00 98 */	addi r3, r31, 0x98
/* 8001EFDC 0001BF3C  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 8001EFE0 0001BF40  2C 00 00 04 */	cmpwi r0, 4
/* 8001EFE4 0001BF44  41 82 00 0C */	beq lbl_8001EFF0
/* 8001EFE8 0001BF48  38 60 00 00 */	li r3, 0
/* 8001EFEC 0001BF4C  48 00 00 7C */	b lbl_8001F068
lbl_8001EFF0:
/* 8001EFF0 0001BF50  80 03 00 58 */	lwz r0, 0x58(r3)
/* 8001EFF4 0001BF54  2C 00 00 04 */	cmpwi r0, 4
/* 8001EFF8 0001BF58  41 82 00 0C */	beq lbl_8001F004
/* 8001EFFC 0001BF5C  38 60 00 00 */	li r3, 0
/* 8001F000 0001BF60  48 00 00 68 */	b lbl_8001F068
lbl_8001F004:
/* 8001F004 0001BF64  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 8001F008 0001BF68  38 63 00 D4 */	addi r3, r3, 0xd4
/* 8001F00C 0001BF6C  C3 E3 00 3C */	lfs f31, 0x3c(r3)
/* 8001F010 0001BF70  48 2A 90 99 */	bl GetTotalAnimationTime__15CGuiTextSupportCFv
/* 8001F014 0001BF74  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 8001F018 0001BF78  40 80 00 0C */	bge lbl_8001F024
/* 8001F01C 0001BF7C  38 60 00 00 */	li r3, 0
/* 8001F020 0001BF80  48 00 00 48 */	b lbl_8001F068
lbl_8001F024:
/* 8001F024 0001BF84  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8001F028 0001BF88  38 63 00 D4 */	addi r3, r3, 0xd4
/* 8001F02C 0001BF8C  C3 E3 00 3C */	lfs f31, 0x3c(r3)
/* 8001F030 0001BF90  48 2A 90 79 */	bl GetTotalAnimationTime__15CGuiTextSupportCFv
/* 8001F034 0001BF94  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 8001F038 0001BF98  40 80 00 0C */	bge lbl_8001F044
/* 8001F03C 0001BF9C  38 60 00 00 */	li r3, 0
/* 8001F040 0001BFA0  48 00 00 28 */	b lbl_8001F068
lbl_8001F044:
/* 8001F044 0001BFA4  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8001F048 0001BFA8  38 63 00 D4 */	addi r3, r3, 0xd4
/* 8001F04C 0001BFAC  C3 E3 00 3C */	lfs f31, 0x3c(r3)
/* 8001F050 0001BFB0  48 2A 90 59 */	bl GetTotalAnimationTime__15CGuiTextSupportCFv
/* 8001F054 0001BFB4  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 8001F058 0001BFB8  7C 00 00 26 */	mfcr r0
/* 8001F05C 0001BFBC  54 00 0F FE */	srwi r0, r0, 0x1f
/* 8001F060 0001BFC0  7C 00 00 34 */	cntlzw r0, r0
/* 8001F064 0001BFC4  54 03 D9 7E */	srwi r3, r0, 5
lbl_8001F068:
/* 8001F068 0001BFC8  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 8001F06C 0001BFCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001F070 0001BFD0  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8001F074 0001BFD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001F078 0001BFD8  7C 08 03 A6 */	mtlr r0
/* 8001F07C 0001BFDC  38 21 00 20 */	addi r1, r1, 0x20

.global sub_8001f080
sub_8001f080:
/* 8001F080 0001BFE0  4E 80 00 20 */	blr

.global DeactivateExistingGamePopup__19SNewFileSelectFrameFv
DeactivateExistingGamePopup__19SNewFileSelectFrameFv:
/* 8001F084 0001BFE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001F088 0001BFE8  7C 08 02 A6 */	mflr r0
/* 8001F08C 0001BFEC  38 80 00 00 */	li r4, 0
/* 8001F090 0001BFF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001F094 0001BFF4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8001F098 0001BFF8  7C 7F 1B 78 */	mr r31, r3
/* 8001F09C 0001BFFC  80 63 00 40 */	lwz r3, 0x40(r3)
/* 8001F0A0 0001C000  48 2A B5 45 */	bl SetIsActive__10CGuiWidgetFb
/* 8001F0A4 0001C004  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 8001F0A8 0001C008  38 80 00 00 */	li r4, 0
/* 8001F0AC 0001C00C  48 2A B5 81 */	bl SetIsVisible__10CGuiWidgetFb
/* 8001F0B0 0001C010  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8001F0B4 0001C014  38 80 00 01 */	li r4, 1
/* 8001F0B8 0001C018  48 2A B5 2D */	bl SetIsActive__10CGuiWidgetFb
/* 8001F0BC 0001C01C  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 8001F0C0 0001C020  7F E3 FB 78 */	mr r3, r31
/* 8001F0C4 0001C024  48 00 10 D5 */	bl HandleActiveChange__19SNewFileSelectFrameFP10CGuiWidget
/* 8001F0C8 0001C028  38 00 00 FF */	li r0, 0xff
/* 8001F0CC 0001C02C  38 81 00 08 */	addi r4, r1, 8
/* 8001F0D0 0001C030  98 01 00 08 */	stb r0, 8(r1)
/* 8001F0D4 0001C034  98 01 00 09 */	stb r0, 9(r1)
/* 8001F0D8 0001C038  98 01 00 0A */	stb r0, 0xa(r1)
/* 8001F0DC 0001C03C  98 01 00 0B */	stb r0, 0xb(r1)
/* 8001F0E0 0001C040  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8001F0E4 0001C044  80 03 00 C4 */	lwz r0, 0xc4(r3)
/* 8001F0E8 0001C048  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8001F0EC 0001C04C  7C 7F 02 14 */	add r3, r31, r0
/* 8001F0F0 0001C050  80 63 00 68 */	lwz r3, 0x68(r3)
/* 8001F0F4 0001C054  48 2A B7 79 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 8001F0F8 0001C058  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001F0FC 0001C05C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8001F100 0001C060  7C 08 03 A6 */	mtlr r0
/* 8001F104 0001C064  38 21 00 20 */	addi r1, r1, 0x20
/* 8001F108 0001C068  4E 80 00 20 */	blr

.global ActivateExistingGamePopup__19SNewFileSelectFrameFv
ActivateExistingGamePopup__19SNewFileSelectFrameFv:
/* 8001F10C 0001C06C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8001F110 0001C070  7C 08 02 A6 */	mflr r0
/* 8001F114 0001C074  38 80 00 01 */	li r4, 1
/* 8001F118 0001C078  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8001F11C 0001C07C  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8001F120 0001C080  7C 7F 1B 78 */	mr r31, r3
/* 8001F124 0001C084  93 C1 00 98 */	stw r30, 0x98(r1)
/* 8001F128 0001C088  80 63 00 40 */	lwz r3, 0x40(r3)
/* 8001F12C 0001C08C  48 2A B4 B9 */	bl SetIsActive__10CGuiWidgetFb
/* 8001F130 0001C090  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 8001F134 0001C094  38 80 00 01 */	li r4, 1
/* 8001F138 0001C098  48 2A B4 F5 */	bl SetIsVisible__10CGuiWidgetFb
/* 8001F13C 0001C09C  80 DF 00 40 */	lwz r6, 0x40(r31)
/* 8001F140 0001C0A0  3C 00 43 30 */	lis r0, 0x4330
/* 8001F144 0001C0A4  C0 22 82 9C */	lfs f1, lbl_805A9FBC@sda21(r2)
/* 8001F148 0001C0A8  38 80 00 00 */	li r4, 0
/* 8001F14C 0001C0AC  80 A6 00 C4 */	lwz r5, 0xc4(r6)
/* 8001F150 0001C0B0  38 61 00 2C */	addi r3, r1, 0x2c
/* 8001F154 0001C0B4  90 01 00 90 */	stw r0, 0x90(r1)
/* 8001F158 0001C0B8  FC 40 08 90 */	fmr f2, f1
/* 8001F15C 0001C0BC  C8 62 82 B8 */	lfd f3, lbl_805A9FD8@sda21(r2)
/* 8001F160 0001C0C0  90 A6 00 C8 */	stw r5, 0xc8(r6)
/* 8001F164 0001C0C4  90 86 00 C4 */	stw r4, 0xc4(r6)
/* 8001F168 0001C0C8  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 8001F16C 0001C0CC  C0 9F 01 04 */	lfs f4, 0x104(r31)
/* 8001F170 0001C0D0  80 04 00 C4 */	lwz r0, 0xc4(r4)
/* 8001F174 0001C0D4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8001F178 0001C0D8  90 01 00 94 */	stw r0, 0x94(r1)
/* 8001F17C 0001C0DC  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 8001F180 0001C0E0  EC 00 18 28 */	fsubs f0, f0, f3
/* 8001F184 0001C0E4  EC 64 00 32 */	fmuls f3, f4, f0
/* 8001F188 0001C0E8  48 2F 40 01 */	bl Translate__12CTransform4fFfff
/* 8001F18C 0001C0EC  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8001F190 0001C0F0  38 61 00 5C */	addi r3, r1, 0x5c
/* 8001F194 0001C0F4  38 81 00 2C */	addi r4, r1, 0x2c
/* 8001F198 0001C0F8  38 A5 00 74 */	addi r5, r5, 0x74
/* 8001F19C 0001C0FC  48 2F 37 B5 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 8001F1A0 0001C100  83 DF 00 40 */	lwz r30, 0x40(r31)
/* 8001F1A4 0001C104  38 81 00 5C */	addi r4, r1, 0x5c
/* 8001F1A8 0001C108  38 7E 00 04 */	addi r3, r30, 4
/* 8001F1AC 0001C10C  48 2F 39 95 */	bl __as__12CTransform4fFRC12CTransform4f
/* 8001F1B0 0001C110  7F C3 F3 78 */	mr r3, r30
/* 8001F1B4 0001C114  48 2A 56 35 */	bl RecalculateTransforms__10CGuiObjectFv
/* 8001F1B8 0001C118  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8001F1BC 0001C11C  38 80 00 00 */	li r4, 0
/* 8001F1C0 0001C120  48 2A B4 25 */	bl SetIsActive__10CGuiWidgetFb
/* 8001F1C4 0001C124  38 00 00 02 */	li r0, 2
/* 8001F1C8 0001C128  7F E3 FB 78 */	mr r3, r31
/* 8001F1CC 0001C12C  90 1F 00 08 */	stw r0, 8(r31)
/* 8001F1D0 0001C130  80 9F 00 40 */	lwz r4, 0x40(r31)
/* 8001F1D4 0001C134  48 00 0F C5 */	bl HandleActiveChange__19SNewFileSelectFrameFP10CGuiWidget
/* 8001F1D8 0001C138  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8001F1DC 0001C13C  38 80 00 5F */	li r4, 0x5f
/* 8001F1E0 0001C140  48 33 75 1D */	bl GetString__12CStringTableCFi
/* 8001F1E4 0001C144  7C 64 1B 78 */	mr r4, r3
/* 8001F1E8 0001C148  38 61 00 1C */	addi r3, r1, 0x1c
/* 8001F1EC 0001C14C  4B FF 68 05 */	bl wstring_l__4rstlFPCw
/* 8001F1F0 0001C150  38 7F 00 48 */	addi r3, r31, 0x48
/* 8001F1F4 0001C154  38 81 00 1C */	addi r4, r1, 0x1c
/* 8001F1F8 0001C158  48 00 3B 19 */	bl sub_80022d10
/* 8001F1FC 0001C15C  38 61 00 1C */	addi r3, r1, 0x1c
/* 8001F200 0001C160  48 31 DF 35 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8001F204 0001C164  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8001F208 0001C168  38 80 00 26 */	li r4, 0x26
/* 8001F20C 0001C16C  48 33 74 F1 */	bl GetString__12CStringTableCFi
/* 8001F210 0001C170  7C 64 1B 78 */	mr r4, r3
/* 8001F214 0001C174  38 61 00 0C */	addi r3, r1, 0xc
/* 8001F218 0001C178  4B FF 67 D9 */	bl wstring_l__4rstlFPCw
/* 8001F21C 0001C17C  38 7F 00 50 */	addi r3, r31, 0x50
/* 8001F220 0001C180  38 81 00 0C */	addi r4, r1, 0xc
/* 8001F224 0001C184  48 00 3A ED */	bl sub_80022d10
/* 8001F228 0001C188  38 61 00 0C */	addi r3, r1, 0xc
/* 8001F22C 0001C18C  48 31 DF 09 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8001F230 0001C190  38 60 00 FF */	li r3, 0xff
/* 8001F234 0001C194  38 00 00 00 */	li r0, 0
/* 8001F238 0001C198  98 61 00 08 */	stb r3, 8(r1)
/* 8001F23C 0001C19C  38 81 00 08 */	addi r4, r1, 8
/* 8001F240 0001C1A0  98 61 00 09 */	stb r3, 9(r1)
/* 8001F244 0001C1A4  98 61 00 0A */	stb r3, 0xa(r1)
/* 8001F248 0001C1A8  98 01 00 0B */	stb r0, 0xb(r1)
/* 8001F24C 0001C1AC  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8001F250 0001C1B0  80 03 00 C4 */	lwz r0, 0xc4(r3)
/* 8001F254 0001C1B4  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8001F258 0001C1B8  7C 7F 02 14 */	add r3, r31, r0
/* 8001F25C 0001C1BC  80 63 00 68 */	lwz r3, 0x68(r3)
/* 8001F260 0001C1C0  48 2A B6 0D */	bl SetColor__10CGuiWidgetFRC6CColor
/* 8001F264 0001C1C4  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 8001F268 0001C1C8  38 80 00 00 */	li r4, 0
/* 8001F26C 0001C1CC  38 A0 00 01 */	li r5, 1
/* 8001F270 0001C1D0  48 2A B4 79 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 8001F274 0001C1D4  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8001F278 0001C1D8  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8001F27C 0001C1DC  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 8001F280 0001C1E0  7C 08 03 A6 */	mtlr r0
/* 8001F284 0001C1E4  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8001F288 0001C1E8  4E 80 00 20 */	blr

.global DeactivateNewGamePopup__19SNewFileSelectFrameFv
DeactivateNewGamePopup__19SNewFileSelectFrameFv:
/* 8001F28C 0001C1EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8001F290 0001C1F0  7C 08 02 A6 */	mflr r0
/* 8001F294 0001C1F4  38 80 00 00 */	li r4, 0
/* 8001F298 0001C1F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8001F29C 0001C1FC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8001F2A0 0001C200  7C 7F 1B 78 */	mr r31, r3
/* 8001F2A4 0001C204  80 63 00 40 */	lwz r3, 0x40(r3)
/* 8001F2A8 0001C208  48 2A B3 3D */	bl SetIsActive__10CGuiWidgetFb
/* 8001F2AC 0001C20C  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 8001F2B0 0001C210  38 80 00 00 */	li r4, 0
/* 8001F2B4 0001C214  48 2A B3 79 */	bl SetIsVisible__10CGuiWidgetFb
/* 8001F2B8 0001C218  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8001F2BC 0001C21C  38 80 00 01 */	li r4, 1
/* 8001F2C0 0001C220  48 2A B3 25 */	bl SetIsActive__10CGuiWidgetFb
/* 8001F2C4 0001C224  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 8001F2C8 0001C228  38 80 00 02 */	li r4, 2
/* 8001F2CC 0001C22C  81 83 00 00 */	lwz r12, 0(r3)
/* 8001F2D0 0001C230  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8001F2D4 0001C234  7D 89 03 A6 */	mtctr r12
/* 8001F2D8 0001C238  4E 80 04 21 */	bctrl
/* 8001F2DC 0001C23C  88 03 00 B6 */	lbz r0, 0xb6(r3)
/* 8001F2E0 0001C240  38 80 00 00 */	li r4, 0
/* 8001F2E4 0001C244  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 8001F2E8 0001C248  38 80 00 02 */	li r4, 2
/* 8001F2EC 0001C24C  98 03 00 B6 */	stb r0, 0xb6(r3)
/* 8001F2F0 0001C250  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 8001F2F4 0001C254  81 83 00 00 */	lwz r12, 0(r3)
/* 8001F2F8 0001C258  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8001F2FC 0001C25C  7D 89 03 A6 */	mtctr r12
/* 8001F300 0001C260  4E 80 04 21 */	bctrl
/* 8001F304 0001C264  38 80 00 00 */	li r4, 0
/* 8001F308 0001C268  38 A0 00 01 */	li r5, 1
/* 8001F30C 0001C26C  48 2A B3 DD */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 8001F310 0001C270  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 8001F314 0001C274  38 80 00 00 */	li r4, 0
/* 8001F318 0001C278  38 A0 00 01 */	li r5, 1
/* 8001F31C 0001C27C  48 2A B3 CD */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 8001F320 0001C280  38 00 00 00 */	li r0, 0
/* 8001F324 0001C284  7F E3 FB 78 */	mr r3, r31
/* 8001F328 0001C288  98 1F 01 0E */	stb r0, 0x10e(r31)
/* 8001F32C 0001C28C  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 8001F330 0001C290  48 00 0E 69 */	bl HandleActiveChange__19SNewFileSelectFrameFP10CGuiWidget
/* 8001F334 0001C294  38 00 00 FF */	li r0, 0xff
/* 8001F338 0001C298  38 81 00 08 */	addi r4, r1, 8
/* 8001F33C 0001C29C  98 01 00 08 */	stb r0, 8(r1)
/* 8001F340 0001C2A0  98 01 00 09 */	stb r0, 9(r1)
/* 8001F344 0001C2A4  98 01 00 0A */	stb r0, 0xa(r1)
/* 8001F348 0001C2A8  98 01 00 0B */	stb r0, 0xb(r1)
/* 8001F34C 0001C2AC  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8001F350 0001C2B0  80 03 00 C4 */	lwz r0, 0xc4(r3)
/* 8001F354 0001C2B4  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8001F358 0001C2B8  7C 7F 02 14 */	add r3, r31, r0
/* 8001F35C 0001C2BC  80 63 00 68 */	lwz r3, 0x68(r3)
/* 8001F360 0001C2C0  48 2A B5 0D */	bl SetColor__10CGuiWidgetFRC6CColor
/* 8001F364 0001C2C4  38 61 00 0C */	addi r3, r1, 0xc
/* 8001F368 0001C2C8  38 8D 81 4C */	addi r4, r13, lbl_805A6D0C@sda21
/* 8001F36C 0001C2CC  4B FF 66 85 */	bl wstring_l__4rstlFPCw
/* 8001F370 0001C2D0  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 8001F374 0001C2D4  38 81 00 0C */	addi r4, r1, 0xc
/* 8001F378 0001C2D8  38 A0 00 00 */	li r5, 0
/* 8001F37C 0001C2DC  38 63 00 D4 */	addi r3, r3, 0xd4
/* 8001F380 0001C2E0  48 2A A5 05 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 8001F384 0001C2E4  38 61 00 0C */	addi r3, r1, 0xc
/* 8001F388 0001C2E8  48 31 DD AD */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8001F38C 0001C2EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8001F390 0001C2F0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8001F394 0001C2F4  7C 08 03 A6 */	mtlr r0
/* 8001F398 0001C2F8  38 21 00 30 */	addi r1, r1, 0x30
/* 8001F39C 0001C2FC  4E 80 00 20 */	blr

.global ActivateNewGamePopup__19SNewFileSelectFrameFv
ActivateNewGamePopup__19SNewFileSelectFrameFv:
/* 8001F3A0 0001C300  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8001F3A4 0001C304  7C 08 02 A6 */	mflr r0
/* 8001F3A8 0001C308  38 80 00 01 */	li r4, 1
/* 8001F3AC 0001C30C  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8001F3B0 0001C310  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 8001F3B4 0001C314  7C 7F 1B 78 */	mr r31, r3
/* 8001F3B8 0001C318  93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 8001F3BC 0001C31C  80 63 00 40 */	lwz r3, 0x40(r3)
/* 8001F3C0 0001C320  48 2A B2 25 */	bl SetIsActive__10CGuiWidgetFb
/* 8001F3C4 0001C324  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 8001F3C8 0001C328  38 80 00 01 */	li r4, 1
/* 8001F3CC 0001C32C  48 2A B2 61 */	bl SetIsVisible__10CGuiWidgetFb
/* 8001F3D0 0001C330  80 DF 00 40 */	lwz r6, 0x40(r31)
/* 8001F3D4 0001C334  3C 00 43 30 */	lis r0, 0x4330
/* 8001F3D8 0001C338  C0 22 82 9C */	lfs f1, lbl_805A9FBC@sda21(r2)
/* 8001F3DC 0001C33C  38 80 00 00 */	li r4, 0
/* 8001F3E0 0001C340  80 A6 00 C4 */	lwz r5, 0xc4(r6)
/* 8001F3E4 0001C344  38 61 00 6C */	addi r3, r1, 0x6c
/* 8001F3E8 0001C348  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 8001F3EC 0001C34C  FC 40 08 90 */	fmr f2, f1
/* 8001F3F0 0001C350  C8 62 82 B8 */	lfd f3, lbl_805A9FD8@sda21(r2)
/* 8001F3F4 0001C354  90 A6 00 C8 */	stw r5, 0xc8(r6)
/* 8001F3F8 0001C358  90 86 00 C4 */	stw r4, 0xc4(r6)
/* 8001F3FC 0001C35C  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 8001F400 0001C360  C0 9F 01 04 */	lfs f4, 0x104(r31)
/* 8001F404 0001C364  80 04 00 C4 */	lwz r0, 0xc4(r4)
/* 8001F408 0001C368  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8001F40C 0001C36C  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8001F410 0001C370  C8 01 00 D0 */	lfd f0, 0xd0(r1)
/* 8001F414 0001C374  EC 00 18 28 */	fsubs f0, f0, f3
/* 8001F418 0001C378  EC 64 00 32 */	fmuls f3, f4, f0
/* 8001F41C 0001C37C  48 2F 3D 6D */	bl Translate__12CTransform4fFfff
/* 8001F420 0001C380  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8001F424 0001C384  38 61 00 9C */	addi r3, r1, 0x9c
/* 8001F428 0001C388  38 81 00 6C */	addi r4, r1, 0x6c
/* 8001F42C 0001C38C  38 A5 00 74 */	addi r5, r5, 0x74
/* 8001F430 0001C390  48 2F 35 21 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 8001F434 0001C394  83 DF 00 40 */	lwz r30, 0x40(r31)
/* 8001F438 0001C398  38 81 00 9C */	addi r4, r1, 0x9c
/* 8001F43C 0001C39C  38 7E 00 04 */	addi r3, r30, 4
/* 8001F440 0001C3A0  48 2F 37 01 */	bl __as__12CTransform4fFRC12CTransform4f
/* 8001F444 0001C3A4  7F C3 F3 78 */	mr r3, r30
/* 8001F448 0001C3A8  48 2A 53 A1 */	bl RecalculateTransforms__10CGuiObjectFv
/* 8001F44C 0001C3AC  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8001F450 0001C3B0  38 80 00 00 */	li r4, 0
/* 8001F454 0001C3B4  48 2A B1 91 */	bl SetIsActive__10CGuiWidgetFb
/* 8001F458 0001C3B8  38 00 00 03 */	li r0, 3
/* 8001F45C 0001C3BC  7F E3 FB 78 */	mr r3, r31
/* 8001F460 0001C3C0  90 1F 00 08 */	stw r0, 8(r31)
/* 8001F464 0001C3C4  80 9F 00 40 */	lwz r4, 0x40(r31)
/* 8001F468 0001C3C8  48 00 0D 31 */	bl HandleActiveChange__19SNewFileSelectFrameFP10CGuiWidget
/* 8001F46C 0001C3CC  38 60 00 FF */	li r3, 0xff
/* 8001F470 0001C3D0  38 00 00 00 */	li r0, 0
/* 8001F474 0001C3D4  98 61 00 08 */	stb r3, 8(r1)
/* 8001F478 0001C3D8  38 81 00 08 */	addi r4, r1, 8
/* 8001F47C 0001C3DC  98 61 00 09 */	stb r3, 9(r1)
/* 8001F480 0001C3E0  98 61 00 0A */	stb r3, 0xa(r1)
/* 8001F484 0001C3E4  98 01 00 0B */	stb r0, 0xb(r1)
/* 8001F488 0001C3E8  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8001F48C 0001C3EC  80 03 00 C4 */	lwz r0, 0xc4(r3)
/* 8001F490 0001C3F0  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8001F494 0001C3F4  7C 7F 02 14 */	add r3, r31, r0
/* 8001F498 0001C3F8  80 63 00 68 */	lwz r3, 0x68(r3)
/* 8001F49C 0001C3FC  48 2A B3 D1 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 8001F4A0 0001C400  48 00 3A B5 */	bl PlayAdvanceSfx__11CFrontEndUIFv
/* 8001F4A4 0001C404  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 8001F4A8 0001C408  88 03 01 78 */	lbz r0, 0x178(r3)
/* 8001F4AC 0001C40C  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8001F4B0 0001C410  41 82 00 E8 */	beq lbl_8001F598
/* 8001F4B4 0001C414  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8001F4B8 0001C418  38 80 00 66 */	li r4, 0x66
/* 8001F4BC 0001C41C  48 33 72 41 */	bl GetString__12CStringTableCFi
/* 8001F4C0 0001C420  7C 64 1B 78 */	mr r4, r3
/* 8001F4C4 0001C424  38 61 00 5C */	addi r3, r1, 0x5c
/* 8001F4C8 0001C428  4B FF 65 29 */	bl wstring_l__4rstlFPCw
/* 8001F4CC 0001C42C  38 7F 00 48 */	addi r3, r31, 0x48
/* 8001F4D0 0001C430  38 81 00 5C */	addi r4, r1, 0x5c
/* 8001F4D4 0001C434  48 00 38 3D */	bl sub_80022d10
/* 8001F4D8 0001C438  38 61 00 5C */	addi r3, r1, 0x5c
/* 8001F4DC 0001C43C  48 31 DC 59 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8001F4E0 0001C440  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8001F4E4 0001C444  38 80 00 5E */	li r4, 0x5e
/* 8001F4E8 0001C448  48 33 72 15 */	bl GetString__12CStringTableCFi
/* 8001F4EC 0001C44C  7C 64 1B 78 */	mr r4, r3
/* 8001F4F0 0001C450  38 61 00 4C */	addi r3, r1, 0x4c
/* 8001F4F4 0001C454  4B FF 64 FD */	bl wstring_l__4rstlFPCw
/* 8001F4F8 0001C458  38 7F 00 50 */	addi r3, r31, 0x50
/* 8001F4FC 0001C45C  38 81 00 4C */	addi r4, r1, 0x4c
/* 8001F500 0001C460  48 00 38 11 */	bl sub_80022d10
/* 8001F504 0001C464  38 61 00 4C */	addi r3, r1, 0x4c
/* 8001F508 0001C468  48 31 DC 2D */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8001F50C 0001C46C  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8001F510 0001C470  38 80 00 65 */	li r4, 0x65
/* 8001F514 0001C474  48 33 71 E9 */	bl GetString__12CStringTableCFi
/* 8001F518 0001C478  7C 64 1B 78 */	mr r4, r3
/* 8001F51C 0001C47C  38 61 00 3C */	addi r3, r1, 0x3c
/* 8001F520 0001C480  4B FF 64 D1 */	bl wstring_l__4rstlFPCw
/* 8001F524 0001C484  38 7F 00 58 */	addi r3, r31, 0x58
/* 8001F528 0001C488  38 81 00 3C */	addi r4, r1, 0x3c
/* 8001F52C 0001C48C  48 00 37 E5 */	bl sub_80022d10
/* 8001F530 0001C490  38 61 00 3C */	addi r3, r1, 0x3c
/* 8001F534 0001C494  48 31 DC 01 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8001F538 0001C498  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 8001F53C 0001C49C  38 80 00 02 */	li r4, 2
/* 8001F540 0001C4A0  81 83 00 00 */	lwz r12, 0(r3)
/* 8001F544 0001C4A4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8001F548 0001C4A8  7D 89 03 A6 */	mtctr r12
/* 8001F54C 0001C4AC  4E 80 04 21 */	bctrl
/* 8001F550 0001C4B0  88 03 00 B6 */	lbz r0, 0xb6(r3)
/* 8001F554 0001C4B4  38 80 00 01 */	li r4, 1
/* 8001F558 0001C4B8  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 8001F55C 0001C4BC  38 80 00 02 */	li r4, 2
/* 8001F560 0001C4C0  98 03 00 B6 */	stb r0, 0xb6(r3)
/* 8001F564 0001C4C4  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 8001F568 0001C4C8  81 83 00 00 */	lwz r12, 0(r3)
/* 8001F56C 0001C4CC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8001F570 0001C4D0  7D 89 03 A6 */	mtctr r12
/* 8001F574 0001C4D4  4E 80 04 21 */	bctrl
/* 8001F578 0001C4D8  38 80 00 01 */	li r4, 1
/* 8001F57C 0001C4DC  38 A0 00 01 */	li r5, 1
/* 8001F580 0001C4E0  48 2A B1 69 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 8001F584 0001C4E4  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 8001F588 0001C4E8  38 80 00 01 */	li r4, 1
/* 8001F58C 0001C4EC  38 A0 00 01 */	li r5, 1
/* 8001F590 0001C4F0  48 2A B1 59 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 8001F594 0001C4F4  48 00 00 6C */	b lbl_8001F600
lbl_8001F598:
/* 8001F598 0001C4F8  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8001F59C 0001C4FC  38 80 00 43 */	li r4, 0x43
/* 8001F5A0 0001C500  48 33 71 5D */	bl GetString__12CStringTableCFi
/* 8001F5A4 0001C504  7C 64 1B 78 */	mr r4, r3
/* 8001F5A8 0001C508  38 61 00 2C */	addi r3, r1, 0x2c
/* 8001F5AC 0001C50C  4B FF 64 45 */	bl wstring_l__4rstlFPCw
/* 8001F5B0 0001C510  38 7F 00 48 */	addi r3, r31, 0x48
/* 8001F5B4 0001C514  38 81 00 2C */	addi r4, r1, 0x2c
/* 8001F5B8 0001C518  48 00 37 59 */	bl sub_80022d10
/* 8001F5BC 0001C51C  38 61 00 2C */	addi r3, r1, 0x2c
/* 8001F5C0 0001C520  48 31 DB 75 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8001F5C4 0001C524  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8001F5C8 0001C528  38 80 00 5E */	li r4, 0x5e
/* 8001F5CC 0001C52C  48 33 71 31 */	bl GetString__12CStringTableCFi
/* 8001F5D0 0001C530  7C 64 1B 78 */	mr r4, r3
/* 8001F5D4 0001C534  38 61 00 1C */	addi r3, r1, 0x1c
/* 8001F5D8 0001C538  4B FF 64 19 */	bl wstring_l__4rstlFPCw
/* 8001F5DC 0001C53C  38 7F 00 50 */	addi r3, r31, 0x50
/* 8001F5E0 0001C540  38 81 00 1C */	addi r4, r1, 0x1c
/* 8001F5E4 0001C544  48 00 37 2D */	bl sub_80022d10
/* 8001F5E8 0001C548  38 61 00 1C */	addi r3, r1, 0x1c
/* 8001F5EC 0001C54C  48 31 DB 49 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8001F5F0 0001C550  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 8001F5F4 0001C554  38 80 00 00 */	li r4, 0
/* 8001F5F8 0001C558  38 A0 00 01 */	li r5, 1
/* 8001F5FC 0001C55C  48 2A B0 ED */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
lbl_8001F600:
/* 8001F600 0001C560  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8001F604 0001C564  38 80 00 52 */	li r4, 0x52
/* 8001F608 0001C568  48 33 70 F5 */	bl GetString__12CStringTableCFi
/* 8001F60C 0001C56C  7C 64 1B 78 */	mr r4, r3
/* 8001F610 0001C570  38 61 00 0C */	addi r3, r1, 0xc
/* 8001F614 0001C574  4B FF 63 DD */	bl wstring_l__4rstlFPCw
/* 8001F618 0001C578  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 8001F61C 0001C57C  38 81 00 0C */	addi r4, r1, 0xc
/* 8001F620 0001C580  38 A0 00 00 */	li r5, 0
/* 8001F624 0001C584  38 63 00 D4 */	addi r3, r3, 0xd4
/* 8001F628 0001C588  48 2A A2 5D */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 8001F62C 0001C58C  38 61 00 0C */	addi r3, r1, 0xc
/* 8001F630 0001C590  48 31 DB 05 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8001F634 0001C594  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8001F638 0001C598  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 8001F63C 0001C59C  83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 8001F640 0001C5A0  7C 08 03 A6 */	mtlr r0
/* 8001F644 0001C5A4  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8001F648 0001C5A8  4E 80 00 20 */	blr

.global ResetFrame__19SNewFileSelectFrameFv
ResetFrame__19SNewFileSelectFrameFv:
/* 8001F64C 0001C5AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8001F650 0001C5B0  7C 08 02 A6 */	mflr r0
/* 8001F654 0001C5B4  38 80 00 01 */	li r4, 1
/* 8001F658 0001C5B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8001F65C 0001C5BC  38 00 00 00 */	li r0, 0
/* 8001F660 0001C5C0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8001F664 0001C5C4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8001F668 0001C5C8  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8001F66C 0001C5CC  7C 7D 1B 78 */	mr r29, r3
/* 8001F670 0001C5D0  90 03 00 08 */	stw r0, 8(r3)
/* 8001F674 0001C5D4  80 63 00 38 */	lwz r3, 0x38(r3)
/* 8001F678 0001C5D8  88 03 00 B6 */	lbz r0, 0xb6(r3)
/* 8001F67C 0001C5DC  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 8001F680 0001C5E0  98 03 00 B6 */	stb r0, 0xb6(r3)
/* 8001F684 0001C5E4  80 7D 00 38 */	lwz r3, 0x38(r29)
/* 8001F688 0001C5E8  3B E3 00 D4 */	addi r31, r3, 0xd4
/* 8001F68C 0001C5EC  48 32 A9 21 */	bl White__6CColorFv
/* 8001F690 0001C5F0  7C 64 1B 78 */	mr r4, r3
/* 8001F694 0001C5F4  7F E3 FB 78 */	mr r3, r31
/* 8001F698 0001C5F8  48 2A 9F D1 */	bl SetFontColor__15CGuiTextSupportFRC6CColor
/* 8001F69C 0001C5FC  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 8001F6A0 0001C600  38 80 00 01 */	li r4, 1
/* 8001F6A4 0001C604  88 03 00 B6 */	lbz r0, 0xb6(r3)
/* 8001F6A8 0001C608  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 8001F6AC 0001C60C  98 03 00 B6 */	stb r0, 0xb6(r3)
/* 8001F6B0 0001C610  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 8001F6B4 0001C614  3B E3 00 D4 */	addi r31, r3, 0xd4
/* 8001F6B8 0001C618  48 32 A8 F5 */	bl White__6CColorFv
/* 8001F6BC 0001C61C  7C 64 1B 78 */	mr r4, r3
/* 8001F6C0 0001C620  7F E3 FB 78 */	mr r3, r31
/* 8001F6C4 0001C624  48 2A 9F A5 */	bl SetFontColor__15CGuiTextSupportFRC6CColor
/* 8001F6C8 0001C628  7F A3 EB 78 */	mr r3, r29
/* 8001F6CC 0001C62C  48 00 02 4D */	bl ClearFrameContents__19SNewFileSelectFrameFv
/* 8001F6D0 0001C630  3B C0 00 02 */	li r30, 2
/* 8001F6D4 0001C634  3B E0 00 01 */	li r31, 1
lbl_8001F6D8:
/* 8001F6D8 0001C638  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 8001F6DC 0001C63C  7F C4 F3 78 */	mr r4, r30
/* 8001F6E0 0001C640  81 83 00 00 */	lwz r12, 0(r3)
/* 8001F6E4 0001C644  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8001F6E8 0001C648  7D 89 03 A6 */	mtctr r12
/* 8001F6EC 0001C64C  4E 80 04 21 */	bctrl
/* 8001F6F0 0001C650  88 03 00 B6 */	lbz r0, 0xb6(r3)
/* 8001F6F4 0001C654  53 E0 26 F6 */	rlwimi r0, r31, 4, 0x1b, 0x1b
/* 8001F6F8 0001C658  37 DE FF FF */	addic. r30, r30, -1
/* 8001F6FC 0001C65C  98 03 00 B6 */	stb r0, 0xb6(r3)
/* 8001F700 0001C660  40 80 FF D8 */	bge lbl_8001F6D8
/* 8001F704 0001C664  38 61 00 08 */	addi r3, r1, 8
/* 8001F708 0001C668  38 8D 81 4C */	addi r4, r13, lbl_805A6D0C@sda21
/* 8001F70C 0001C66C  4B FF 62 E5 */	bl wstring_l__4rstlFPCw
/* 8001F710 0001C670  80 7D 00 60 */	lwz r3, 0x60(r29)
/* 8001F714 0001C674  38 81 00 08 */	addi r4, r1, 8
/* 8001F718 0001C678  38 A0 00 00 */	li r5, 0
/* 8001F71C 0001C67C  38 63 00 D4 */	addi r3, r3, 0xd4
/* 8001F720 0001C680  48 2A A1 65 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 8001F724 0001C684  38 61 00 08 */	addi r3, r1, 8
/* 8001F728 0001C688  48 31 DA 0D */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8001F72C 0001C68C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8001F730 0001C690  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8001F734 0001C694  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8001F738 0001C698  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8001F73C 0001C69C  7C 08 03 A6 */	mtlr r0
/* 8001F740 0001C6A0  38 21 00 30 */	addi r1, r1, 0x30
/* 8001F744 0001C6A4  4E 80 00 20 */	blr

.global EnterErase__19SNewFileSelectFrameFv
EnterErase__19SNewFileSelectFrameFv:
/* 8001F748 0001C6A8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8001F74C 0001C6AC  7C 08 02 A6 */	mflr r0
/* 8001F750 0001C6B0  90 01 00 74 */	stw r0, 0x74(r1)
/* 8001F754 0001C6B4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8001F758 0001C6B8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 8001F75C 0001C6BC  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8001F760 0001C6C0  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 8001F764 0001C6C4  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 8001F768 0001C6C8  F3 A1 00 48 */	psq_st f29, 72(r1), 0, qr0
/* 8001F76C 0001C6CC  BF 61 00 2C */	stmw r27, 0x2c(r1)
/* 8001F770 0001C6D0  7C 7F 1B 78 */	mr r31, r3
/* 8001F774 0001C6D4  38 00 00 01 */	li r0, 1
/* 8001F778 0001C6D8  90 03 00 08 */	stw r0, 8(r3)
/* 8001F77C 0001C6DC  38 80 00 00 */	li r4, 0
/* 8001F780 0001C6E0  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8001F784 0001C6E4  88 03 00 B6 */	lbz r0, 0xb6(r3)
/* 8001F788 0001C6E8  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 8001F78C 0001C6EC  98 03 00 B6 */	stb r0, 0xb6(r3)
/* 8001F790 0001C6F0  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 8001F794 0001C6F4  3B A3 00 D4 */	addi r29, r3, 0xd4
/* 8001F798 0001C6F8  48 32 A8 0D */	bl Grey__6CColorFv
/* 8001F79C 0001C6FC  C3 E2 82 DC */	lfs f31, lbl_805A9FFC@sda21(r2)
/* 8001F7A0 0001C700  F3 E1 A0 0A */	psq_st f31, 10(r1), 1, qr2
/* 8001F7A4 0001C704  38 81 00 14 */	addi r4, r1, 0x14
/* 8001F7A8 0001C708  80 A3 00 00 */	lwz r5, 0(r3)
/* 8001F7AC 0001C70C  7F A3 EB 78 */	mr r3, r29
/* 8001F7B0 0001C710  88 01 00 0A */	lbz r0, 0xa(r1)
/* 8001F7B4 0001C714  50 A0 00 2E */	rlwimi r0, r5, 0, 0, 0x17
/* 8001F7B8 0001C718  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001F7BC 0001C71C  48 2A 9E AD */	bl SetFontColor__15CGuiTextSupportFRC6CColor
/* 8001F7C0 0001C720  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8001F7C4 0001C724  38 80 00 00 */	li r4, 0
/* 8001F7C8 0001C728  88 03 00 B6 */	lbz r0, 0xb6(r3)
/* 8001F7CC 0001C72C  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 8001F7D0 0001C730  98 03 00 B6 */	stb r0, 0xb6(r3)
/* 8001F7D4 0001C734  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8001F7D8 0001C738  3B A3 00 D4 */	addi r29, r3, 0xd4
/* 8001F7DC 0001C73C  48 32 A7 C9 */	bl Grey__6CColorFv
/* 8001F7E0 0001C740  C3 C2 82 DC */	lfs f30, lbl_805A9FFC@sda21(r2)
/* 8001F7E4 0001C744  F3 C1 A0 09 */	psq_st f30, 9(r1), 1, qr2
/* 8001F7E8 0001C748  38 81 00 10 */	addi r4, r1, 0x10
/* 8001F7EC 0001C74C  80 A3 00 00 */	lwz r5, 0(r3)
/* 8001F7F0 0001C750  7F A3 EB 78 */	mr r3, r29
/* 8001F7F4 0001C754  88 01 00 09 */	lbz r0, 9(r1)
/* 8001F7F8 0001C758  50 A0 00 2E */	rlwimi r0, r5, 0, 0, 0x17
/* 8001F7FC 0001C75C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8001F800 0001C760  48 2A 9E 69 */	bl SetFontColor__15CGuiTextSupportFRC6CColor
/* 8001F804 0001C764  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8001F808 0001C768  38 80 00 00 */	li r4, 0
/* 8001F80C 0001C76C  88 03 00 B6 */	lbz r0, 0xb6(r3)
/* 8001F810 0001C770  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 8001F814 0001C774  98 03 00 B6 */	stb r0, 0xb6(r3)
/* 8001F818 0001C778  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8001F81C 0001C77C  3B A3 00 D4 */	addi r29, r3, 0xd4
/* 8001F820 0001C780  48 32 A7 85 */	bl Grey__6CColorFv
/* 8001F824 0001C784  C3 A2 82 DC */	lfs f29, lbl_805A9FFC@sda21(r2)
/* 8001F828 0001C788  F3 A1 A0 08 */	psq_st f29, 8(r1), 1, qr2
/* 8001F82C 0001C78C  38 81 00 0C */	addi r4, r1, 0xc
/* 8001F830 0001C790  80 A3 00 00 */	lwz r5, 0(r3)
/* 8001F834 0001C794  7F A3 EB 78 */	mr r3, r29
/* 8001F838 0001C798  88 01 00 08 */	lbz r0, 8(r1)
/* 8001F83C 0001C79C  50 A0 00 2E */	rlwimi r0, r5, 0, 0, 0x17
/* 8001F840 0001C7A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8001F844 0001C7A4  48 2A 9E 25 */	bl SetFontColor__15CGuiTextSupportFRC6CColor
/* 8001F848 0001C7A8  3B 9F 00 C8 */	addi r28, r31, 0xc8
/* 8001F84C 0001C7AC  3B 60 00 02 */	li r27, 2
/* 8001F850 0001C7B0  3B A0 00 01 */	li r29, 1
/* 8001F854 0001C7B4  3B C0 00 00 */	li r30, 0
lbl_8001F858:
/* 8001F858 0001C7B8  80 7F 00 04 */	lwz r3, 4(r31)
/* 8001F85C 0001C7BC  7F 64 DB 78 */	mr r4, r27
/* 8001F860 0001C7C0  48 22 FE 9D */	bl GetGameData__15CSaveGameScreenFi
/* 8001F864 0001C7C4  28 03 00 00 */	cmplwi r3, 0
/* 8001F868 0001C7C8  41 82 00 28 */	beq lbl_8001F890
/* 8001F86C 0001C7CC  80 7C 00 00 */	lwz r3, 0(r28)
/* 8001F870 0001C7D0  88 03 00 B6 */	lbz r0, 0xb6(r3)
/* 8001F874 0001C7D4  53 A0 26 F6 */	rlwimi r0, r29, 4, 0x1b, 0x1b
/* 8001F878 0001C7D8  98 03 00 B6 */	stb r0, 0xb6(r3)
/* 8001F87C 0001C7DC  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8001F880 0001C7E0  80 03 00 C4 */	lwz r0, 0xc4(r3)
/* 8001F884 0001C7E4  90 03 00 C8 */	stw r0, 0xc8(r3)
/* 8001F888 0001C7E8  93 63 00 C4 */	stw r27, 0xc4(r3)
/* 8001F88C 0001C7EC  48 00 00 14 */	b lbl_8001F8A0
lbl_8001F890:
/* 8001F890 0001C7F0  80 7C 00 00 */	lwz r3, 0(r28)
/* 8001F894 0001C7F4  88 03 00 B6 */	lbz r0, 0xb6(r3)
/* 8001F898 0001C7F8  53 C0 26 F6 */	rlwimi r0, r30, 4, 0x1b, 0x1b
/* 8001F89C 0001C7FC  98 03 00 B6 */	stb r0, 0xb6(r3)
lbl_8001F8A0:
/* 8001F8A0 0001C800  37 7B FF FF */	addic. r27, r27, -1
/* 8001F8A4 0001C804  3B 9C FF D0 */	addi r28, r28, -48
/* 8001F8A8 0001C808  40 80 FF B0 */	bge lbl_8001F858
/* 8001F8AC 0001C80C  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8001F8B0 0001C810  38 80 00 52 */	li r4, 0x52
/* 8001F8B4 0001C814  48 33 6E 49 */	bl GetString__12CStringTableCFi
/* 8001F8B8 0001C818  7C 64 1B 78 */	mr r4, r3
/* 8001F8BC 0001C81C  38 61 00 18 */	addi r3, r1, 0x18
/* 8001F8C0 0001C820  4B FF 61 31 */	bl wstring_l__4rstlFPCw
/* 8001F8C4 0001C824  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 8001F8C8 0001C828  38 81 00 18 */	addi r4, r1, 0x18
/* 8001F8CC 0001C82C  38 A0 00 00 */	li r5, 0
/* 8001F8D0 0001C830  38 63 00 D4 */	addi r3, r3, 0xd4
/* 8001F8D4 0001C834  48 2A 9F B1 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 8001F8D8 0001C838  38 61 00 18 */	addi r3, r1, 0x18
/* 8001F8DC 0001C83C  48 31 D8 59 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8001F8E0 0001C840  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 8001F8E4 0001C844  7F E3 FB 78 */	mr r3, r31
/* 8001F8E8 0001C848  48 00 08 B1 */	bl HandleActiveChange__19SNewFileSelectFrameFP10CGuiWidget
/* 8001F8EC 0001C84C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 8001F8F0 0001C850  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8001F8F4 0001C854  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 8001F8F8 0001C858  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8001F8FC 0001C85C  E3 A1 00 48 */	psq_l f29, 72(r1), 0, qr0
/* 8001F900 0001C860  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 8001F904 0001C864  BB 61 00 2C */	lmw r27, 0x2c(r1)
/* 8001F908 0001C868  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8001F90C 0001C86C  7C 08 03 A6 */	mtlr r0
/* 8001F910 0001C870  38 21 00 70 */	addi r1, r1, 0x70
/* 8001F914 0001C874  4E 80 00 20 */	blr

.global ClearFrameContents__19SNewFileSelectFrameFv
ClearFrameContents__19SNewFileSelectFrameFv:
/* 8001F918 0001C878  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8001F91C 0001C87C  7C 08 02 A6 */	mflr r0
/* 8001F920 0001C880  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8001F924 0001C884  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 8001F928 0001C888  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, qr0
/* 8001F92C 0001C88C  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 8001F930 0001C890  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, qr0
/* 8001F934 0001C894  BF 41 00 98 */	stmw r26, 0x98(r1)
/* 8001F938 0001C898  C0 02 82 9C */	lfs f0, lbl_805A9FBC@sda21(r2)
/* 8001F93C 0001C89C  7C 7F 1B 78 */	mr r31, r3
/* 8001F940 0001C8A0  3B BF 00 68 */	addi r29, r31, 0x68
/* 8001F944 0001C8A4  3B 80 00 00 */	li r28, 0
/* 8001F948 0001C8A8  D0 03 01 08 */	stfs f0, 0x108(r3)
/* 8001F94C 0001C8AC  3B 60 00 00 */	li r27, 0
lbl_8001F950:
/* 8001F950 0001C8B0  80 7F 00 04 */	lwz r3, 4(r31)
/* 8001F954 0001C8B4  7F 64 DB 78 */	mr r4, r27
/* 8001F958 0001C8B8  48 22 FD A5 */	bl GetGameData__15CSaveGameScreenFi
/* 8001F95C 0001C8BC  28 03 00 00 */	cmplwi r3, 0
/* 8001F960 0001C8C0  41 82 00 08 */	beq lbl_8001F968
/* 8001F964 0001C8C4  3B 80 00 01 */	li r28, 1
lbl_8001F968:
/* 8001F968 0001C8C8  48 00 18 01 */	bl ComputeRandom__17SFileSelectOption
/* 8001F96C 0001C8CC  D0 3D 00 2C */	stfs f1, 0x2c(r29)
/* 8001F970 0001C8D0  38 00 FF FF */	li r0, -1
/* 8001F974 0001C8D4  3B DD 00 08 */	addi r30, r29, 8
/* 8001F978 0001C8D8  3B 40 00 00 */	li r26, 0
/* 8001F97C 0001C8DC  90 1D 00 28 */	stw r0, 0x28(r29)
lbl_8001F980:
/* 8001F980 0001C8E0  38 61 00 84 */	addi r3, r1, 0x84
/* 8001F984 0001C8E4  38 8D 81 4C */	addi r4, r13, lbl_805A6D0C@sda21
/* 8001F988 0001C8E8  4B FF 60 69 */	bl wstring_l__4rstlFPCw
/* 8001F98C 0001C8EC  80 7E 00 00 */	lwz r3, 0(r30)
/* 8001F990 0001C8F0  38 81 00 84 */	addi r4, r1, 0x84
/* 8001F994 0001C8F4  38 A0 00 00 */	li r5, 0
/* 8001F998 0001C8F8  38 63 00 D4 */	addi r3, r3, 0xd4
/* 8001F99C 0001C8FC  48 2A 9E E9 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 8001F9A0 0001C900  38 61 00 84 */	addi r3, r1, 0x84
/* 8001F9A4 0001C904  48 31 D7 91 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8001F9A8 0001C908  38 61 00 74 */	addi r3, r1, 0x74
/* 8001F9AC 0001C90C  38 8D 81 4C */	addi r4, r13, lbl_805A6D0C@sda21
/* 8001F9B0 0001C910  4B FF 60 41 */	bl wstring_l__4rstlFPCw
/* 8001F9B4 0001C914  80 7E 00 04 */	lwz r3, 4(r30)
/* 8001F9B8 0001C918  38 81 00 74 */	addi r4, r1, 0x74
/* 8001F9BC 0001C91C  38 A0 00 00 */	li r5, 0
/* 8001F9C0 0001C920  38 63 00 D4 */	addi r3, r3, 0xd4
/* 8001F9C4 0001C924  48 2A 9E C1 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 8001F9C8 0001C928  38 61 00 74 */	addi r3, r1, 0x74
/* 8001F9CC 0001C92C  48 31 D7 69 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8001F9D0 0001C930  3B 5A 00 01 */	addi r26, r26, 1
/* 8001F9D4 0001C934  3B DE 00 08 */	addi r30, r30, 8
/* 8001F9D8 0001C938  2C 1A 00 04 */	cmpwi r26, 4
/* 8001F9DC 0001C93C  41 80 FF A4 */	blt lbl_8001F980
/* 8001F9E0 0001C940  3B 7B 00 01 */	addi r27, r27, 1
/* 8001F9E4 0001C944  3B BD 00 30 */	addi r29, r29, 0x30
/* 8001F9E8 0001C948  2C 1B 00 03 */	cmpwi r27, 3
/* 8001F9EC 0001C94C  41 80 FF 64 */	blt lbl_8001F950
/* 8001F9F0 0001C950  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8001F9F4 0001C954  38 80 00 26 */	li r4, 0x26
/* 8001F9F8 0001C958  48 33 6D 05 */	bl GetString__12CStringTableCFi
/* 8001F9FC 0001C95C  7C 64 1B 78 */	mr r4, r3
/* 8001FA00 0001C960  38 61 00 64 */	addi r3, r1, 0x64
/* 8001FA04 0001C964  4B FF 5F ED */	bl wstring_l__4rstlFPCw
/* 8001FA08 0001C968  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 8001FA0C 0001C96C  38 81 00 64 */	addi r4, r1, 0x64
/* 8001FA10 0001C970  C0 22 82 E0 */	lfs f1, lbl_805AA000@sda21(r2)
/* 8001FA14 0001C974  48 00 16 C5 */	bl StartTextAnimating__19SNewFileSelectFrameFP12CGuiTextPaneQ24rstl7wstring
/* 8001FA18 0001C978  38 61 00 64 */	addi r3, r1, 0x64
/* 8001FA1C 0001C97C  48 31 D7 19 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8001FA20 0001C980  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8001FA24 0001C984  38 80 00 25 */	li r4, 0x25
/* 8001FA28 0001C988  48 33 6C D5 */	bl GetString__12CStringTableCFi
/* 8001FA2C 0001C98C  7C 64 1B 78 */	mr r4, r3
/* 8001FA30 0001C990  38 61 00 54 */	addi r3, r1, 0x54
/* 8001FA34 0001C994  4B FF 5F BD */	bl wstring_l__4rstlFPCw
/* 8001FA38 0001C998  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8001FA3C 0001C99C  38 81 00 54 */	addi r4, r1, 0x54
/* 8001FA40 0001C9A0  C0 22 82 E0 */	lfs f1, lbl_805AA000@sda21(r2)
/* 8001FA44 0001C9A4  48 00 16 95 */	bl StartTextAnimating__19SNewFileSelectFrameFP12CGuiTextPaneQ24rstl7wstring
/* 8001FA48 0001C9A8  38 61 00 54 */	addi r3, r1, 0x54
/* 8001FA4C 0001C9AC  48 31 D6 E9 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8001FA50 0001C9B0  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8001FA54 0001C9B4  38 80 00 60 */	li r4, 0x60
/* 8001FA58 0001C9B8  48 33 6C A5 */	bl GetString__12CStringTableCFi
/* 8001FA5C 0001C9BC  7C 64 1B 78 */	mr r4, r3
/* 8001FA60 0001C9C0  38 61 00 44 */	addi r3, r1, 0x44
/* 8001FA64 0001C9C4  4B FF 5F 8D */	bl wstring_l__4rstlFPCw
/* 8001FA68 0001C9C8  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8001FA6C 0001C9CC  38 81 00 44 */	addi r4, r1, 0x44
/* 8001FA70 0001C9D0  C0 22 82 E0 */	lfs f1, lbl_805AA000@sda21(r2)
/* 8001FA74 0001C9D4  48 00 16 65 */	bl StartTextAnimating__19SNewFileSelectFrameFP12CGuiTextPaneQ24rstl7wstring
/* 8001FA78 0001C9D8  38 61 00 44 */	addi r3, r1, 0x44
/* 8001FA7C 0001C9DC  48 31 D6 B9 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8001FA80 0001C9E0  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8001FA84 0001C9E4  38 80 00 26 */	li r4, 0x26
/* 8001FA88 0001C9E8  48 33 6C 75 */	bl GetString__12CStringTableCFi
/* 8001FA8C 0001C9EC  7C 64 1B 78 */	mr r4, r3
/* 8001FA90 0001C9F0  38 61 00 34 */	addi r3, r1, 0x34
/* 8001FA94 0001C9F4  4B FF 5F 5D */	bl wstring_l__4rstlFPCw
/* 8001FA98 0001C9F8  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8001FA9C 0001C9FC  38 81 00 34 */	addi r4, r1, 0x34
/* 8001FAA0 0001CA00  C0 22 82 E0 */	lfs f1, lbl_805AA000@sda21(r2)
/* 8001FAA4 0001CA04  48 00 16 35 */	bl StartTextAnimating__19SNewFileSelectFrameFP12CGuiTextPaneQ24rstl7wstring
/* 8001FAA8 0001CA08  38 61 00 34 */	addi r3, r1, 0x34
/* 8001FAAC 0001CA0C  48 31 D6 89 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8001FAB0 0001CA10  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8001FAB4 0001CA14  38 80 00 25 */	li r4, 0x25
/* 8001FAB8 0001CA18  48 33 6C 45 */	bl GetString__12CStringTableCFi
/* 8001FABC 0001CA1C  7C 64 1B 78 */	mr r4, r3
/* 8001FAC0 0001CA20  38 61 00 24 */	addi r3, r1, 0x24
/* 8001FAC4 0001CA24  4B FF 5F 2D */	bl wstring_l__4rstlFPCw
/* 8001FAC8 0001CA28  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 8001FACC 0001CA2C  38 81 00 24 */	addi r4, r1, 0x24
/* 8001FAD0 0001CA30  C0 22 82 E0 */	lfs f1, lbl_805AA000@sda21(r2)
/* 8001FAD4 0001CA34  48 00 16 05 */	bl StartTextAnimating__19SNewFileSelectFrameFP12CGuiTextPaneQ24rstl7wstring
/* 8001FAD8 0001CA38  38 61 00 24 */	addi r3, r1, 0x24
/* 8001FADC 0001CA3C  48 31 D6 59 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8001FAE0 0001CA40  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8001FAE4 0001CA44  38 80 00 60 */	li r4, 0x60
/* 8001FAE8 0001CA48  48 33 6C 15 */	bl GetString__12CStringTableCFi
/* 8001FAEC 0001CA4C  7C 64 1B 78 */	mr r4, r3
/* 8001FAF0 0001CA50  38 61 00 14 */	addi r3, r1, 0x14
/* 8001FAF4 0001CA54  4B FF 5E FD */	bl wstring_l__4rstlFPCw
/* 8001FAF8 0001CA58  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 8001FAFC 0001CA5C  38 81 00 14 */	addi r4, r1, 0x14
/* 8001FB00 0001CA60  C0 22 82 E0 */	lfs f1, lbl_805AA000@sda21(r2)
/* 8001FB04 0001CA64  48 00 15 D5 */	bl StartTextAnimating__19SNewFileSelectFrameFP12CGuiTextPaneQ24rstl7wstring
/* 8001FB08 0001CA68  38 61 00 14 */	addi r3, r1, 0x14
/* 8001FB0C 0001CA6C  48 31 D6 29 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8001FB10 0001CA70  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 8001FB14 0001CA74  83 5F 00 28 */	lwz r26, 0x28(r31)
/* 8001FB18 0001CA78  41 82 00 28 */	beq lbl_8001FB40
/* 8001FB1C 0001CA7C  88 1A 00 B6 */	lbz r0, 0xb6(r26)
/* 8001FB20 0001CA80  38 60 00 01 */	li r3, 1
/* 8001FB24 0001CA84  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8001FB28 0001CA88  98 1A 00 B6 */	stb r0, 0xb6(r26)
/* 8001FB2C 0001CA8C  48 32 A4 81 */	bl White__6CColorFv
/* 8001FB30 0001CA90  7C 64 1B 78 */	mr r4, r3
/* 8001FB34 0001CA94  38 7A 00 D4 */	addi r3, r26, 0xd4
/* 8001FB38 0001CA98  48 2A 9B 31 */	bl SetFontColor__15CGuiTextSupportFRC6CColor
/* 8001FB3C 0001CA9C  48 00 00 3C */	b lbl_8001FB78
lbl_8001FB40:
/* 8001FB40 0001CAA0  88 1A 00 B6 */	lbz r0, 0xb6(r26)
/* 8001FB44 0001CAA4  38 60 00 00 */	li r3, 0
/* 8001FB48 0001CAA8  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8001FB4C 0001CAAC  98 1A 00 B6 */	stb r0, 0xb6(r26)
/* 8001FB50 0001CAB0  48 32 A4 55 */	bl Grey__6CColorFv
/* 8001FB54 0001CAB4  C3 E2 82 DC */	lfs f31, lbl_805A9FFC@sda21(r2)
/* 8001FB58 0001CAB8  F3 E1 A0 09 */	psq_st f31, 9(r1), 1, qr2
/* 8001FB5C 0001CABC  38 81 00 10 */	addi r4, r1, 0x10
/* 8001FB60 0001CAC0  80 A3 00 00 */	lwz r5, 0(r3)
/* 8001FB64 0001CAC4  38 7A 00 D4 */	addi r3, r26, 0xd4
/* 8001FB68 0001CAC8  88 01 00 09 */	lbz r0, 9(r1)
/* 8001FB6C 0001CACC  50 A0 00 2E */	rlwimi r0, r5, 0, 0, 0x17
/* 8001FB70 0001CAD0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8001FB74 0001CAD4  48 2A 9A F5 */	bl SetFontColor__15CGuiTextSupportFRC6CColor
lbl_8001FB78:
/* 8001FB78 0001CAD8  80 BF 00 20 */	lwz r5, 0x20(r31)
/* 8001FB7C 0001CADC  38 00 00 00 */	li r0, 0
/* 8001FB80 0001CAE0  38 80 00 05 */	li r4, 5
/* 8001FB84 0001CAE4  80 65 00 C4 */	lwz r3, 0xc4(r5)
/* 8001FB88 0001CAE8  90 65 00 C8 */	stw r3, 0xc8(r5)
/* 8001FB8C 0001CAEC  90 05 00 C4 */	stw r0, 0xc4(r5)
/* 8001FB90 0001CAF0  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8001FB94 0001CAF4  81 83 00 00 */	lwz r12, 0(r3)
/* 8001FB98 0001CAF8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8001FB9C 0001CAFC  7D 89 03 A6 */	mtctr r12
/* 8001FBA0 0001CB00  4E 80 04 21 */	bctrl
/* 8001FBA4 0001CB04  7C 7E 1B 78 */	mr r30, r3
/* 8001FBA8 0001CB08  48 27 B6 2D */	bl SlideShowGalleryFlags__10CSlideShowFv
/* 8001FBAC 0001CB0C  28 03 00 00 */	cmplwi r3, 0
/* 8001FBB0 0001CB10  41 82 00 30 */	beq lbl_8001FBE0
/* 8001FBB4 0001CB14  88 1E 00 B6 */	lbz r0, 0xb6(r30)
/* 8001FBB8 0001CB18  38 60 00 01 */	li r3, 1
/* 8001FBBC 0001CB1C  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8001FBC0 0001CB20  98 1E 00 B6 */	stb r0, 0xb6(r30)
/* 8001FBC4 0001CB24  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8001FBC8 0001CB28  3B C3 00 D4 */	addi r30, r3, 0xd4
/* 8001FBCC 0001CB2C  48 32 A3 E1 */	bl White__6CColorFv
/* 8001FBD0 0001CB30  7C 64 1B 78 */	mr r4, r3
/* 8001FBD4 0001CB34  7F C3 F3 78 */	mr r3, r30
/* 8001FBD8 0001CB38  48 2A 9A 91 */	bl SetFontColor__15CGuiTextSupportFRC6CColor
/* 8001FBDC 0001CB3C  48 00 00 44 */	b lbl_8001FC20
lbl_8001FBE0:
/* 8001FBE0 0001CB40  88 1E 00 B6 */	lbz r0, 0xb6(r30)
/* 8001FBE4 0001CB44  38 60 00 00 */	li r3, 0
/* 8001FBE8 0001CB48  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8001FBEC 0001CB4C  98 1E 00 B6 */	stb r0, 0xb6(r30)
/* 8001FBF0 0001CB50  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8001FBF4 0001CB54  3B C3 00 D4 */	addi r30, r3, 0xd4
/* 8001FBF8 0001CB58  48 32 A3 AD */	bl Grey__6CColorFv
/* 8001FBFC 0001CB5C  C3 C2 82 DC */	lfs f30, lbl_805A9FFC@sda21(r2)
/* 8001FC00 0001CB60  F3 C1 A0 08 */	psq_st f30, 8(r1), 1, qr2
/* 8001FC04 0001CB64  38 81 00 0C */	addi r4, r1, 0xc
/* 8001FC08 0001CB68  80 A3 00 00 */	lwz r5, 0(r3)
/* 8001FC0C 0001CB6C  7F C3 F3 78 */	mr r3, r30
/* 8001FC10 0001CB70  88 01 00 08 */	lbz r0, 8(r1)
/* 8001FC14 0001CB74  50 A0 00 2E */	rlwimi r0, r5, 0, 0, 0x17
/* 8001FC18 0001CB78  90 01 00 0C */	stw r0, 0xc(r1)
/* 8001FC1C 0001CB7C  48 2A 9A 4D */	bl SetFontColor__15CGuiTextSupportFRC6CColor
lbl_8001FC20:
/* 8001FC20 0001CB80  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 8001FC24 0001CB84  7F E3 FB 78 */	mr r3, r31
/* 8001FC28 0001CB88  48 00 05 71 */	bl HandleActiveChange__19SNewFileSelectFrameFP10CGuiWidget
/* 8001FC2C 0001CB8C  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, qr0
/* 8001FC30 0001CB90  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 8001FC34 0001CB94  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, qr0
/* 8001FC38 0001CB98  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 8001FC3C 0001CB9C  BB 41 00 98 */	lmw r26, 0x98(r1)
/* 8001FC40 0001CBA0  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 8001FC44 0001CBA4  7C 08 03 A6 */	mtlr r0
/* 8001FC48 0001CBA8  38 21 00 D0 */	addi r1, r1, 0xd0
/* 8001FC4C 0001CBAC  4E 80 00 20 */	blr

.global SetupFrameContents__19SNewFileSelectFrameFv
SetupFrameContents__19SNewFileSelectFrameFv:
/* 8001FC50 0001CBB0  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 8001FC54 0001CBB4  7C 08 02 A6 */	mflr r0
/* 8001FC58 0001CBB8  90 01 01 64 */	stw r0, 0x164(r1)
/* 8001FC5C 0001CBBC  DB E1 01 50 */	stfd f31, 0x150(r1)
/* 8001FC60 0001CBC0  F3 E1 01 58 */	psq_st f31, 344(r1), 0, qr0
/* 8001FC64 0001CBC4  BF 21 01 34 */	stmw r25, 0x134(r1)
/* 8001FC68 0001CBC8  7C 7B 1B 78 */	mr r27, r3
/* 8001FC6C 0001CBCC  3B C0 00 00 */	li r30, 0
/* 8001FC70 0001CBD0  3B FB 00 68 */	addi r31, r27, 0x68
lbl_8001FC74:
/* 8001FC74 0001CBD4  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 8001FC78 0001CBD8  2C 00 00 04 */	cmpwi r0, 4
/* 8001FC7C 0001CBDC  41 82 03 BC */	beq lbl_80020038
/* 8001FC80 0001CBE0  2C 00 FF FF */	cmpwi r0, -1
/* 8001FC84 0001CBE4  40 82 00 0C */	bne lbl_8001FC90
/* 8001FC88 0001CBE8  3B 40 00 00 */	li r26, 0
/* 8001FC8C 0001CBEC  48 00 00 10 */	b lbl_8001FC9C
lbl_8001FC90:
/* 8001FC90 0001CBF0  54 00 18 38 */	slwi r0, r0, 3
/* 8001FC94 0001CBF4  7C 7F 02 14 */	add r3, r31, r0
/* 8001FC98 0001CBF8  83 43 00 08 */	lwz r26, 8(r3)
lbl_8001FC9C:
/* 8001FC9C 0001CBFC  28 1A 00 00 */	cmplwi r26, 0
/* 8001FCA0 0001CC00  41 82 00 24 */	beq lbl_8001FCC4
/* 8001FCA4 0001CC04  38 7A 00 D4 */	addi r3, r26, 0xd4
/* 8001FCA8 0001CC08  48 2A 83 05 */	bl GetNumCharsTotal__15CGuiTextSupportCFv
/* 8001FCAC 0001CC0C  FF E0 08 90 */	fmr f31, f1
/* 8001FCB0 0001CC10  38 7A 00 D4 */	addi r3, r26, 0xd4
/* 8001FCB4 0001CC14  48 2A 83 61 */	bl GetNumCharactersPrinted__15CGuiTextSupportCFv
/* 8001FCB8 0001CC18  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8001FCBC 0001CC1C  4C 41 13 82 */	cror 2, 1, 2
/* 8001FCC0 0001CC20  40 82 03 78 */	bne lbl_80020038
lbl_8001FCC4:
/* 8001FCC4 0001CC24  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 8001FCC8 0001CC28  38 03 00 01 */	addi r0, r3, 1
/* 8001FCCC 0001CC2C  90 1F 00 28 */	stw r0, 0x28(r31)
/* 8001FCD0 0001CC30  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 8001FCD4 0001CC34  2C 00 00 04 */	cmpwi r0, 4
/* 8001FCD8 0001CC38  40 80 03 60 */	bge lbl_80020038
/* 8001FCDC 0001CC3C  80 7B 00 04 */	lwz r3, 4(r27)
/* 8001FCE0 0001CC40  7F C4 F3 78 */	mr r4, r30
/* 8001FCE4 0001CC44  48 22 FA 19 */	bl GetGameData__15CSaveGameScreenFi
/* 8001FCE8 0001CC48  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 8001FCEC 0001CC4C  38 8D A9 1A */	addi r4, r13, lbl_805A94DA@sda21
/* 8001FCF0 0001CC50  38 00 00 00 */	li r0, 0
/* 8001FCF4 0001CC54  7C 7A 1B 78 */	mr r26, r3
/* 8001FCF8 0001CC58  54 A3 18 38 */	slwi r3, r5, 3
/* 8001FCFC 0001CC5C  2C 05 00 02 */	cmpwi r5, 2
/* 8001FD00 0001CC60  7C 7F 1A 14 */	add r3, r31, r3
/* 8001FD04 0001CC64  83 A3 00 08 */	lwz r29, 8(r3)
/* 8001FD08 0001CC68  83 83 00 0C */	lwz r28, 0xc(r3)
/* 8001FD0C 0001CC6C  90 81 00 CC */	stw r4, 0xcc(r1)
/* 8001FD10 0001CC70  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 8001FD14 0001CC74  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8001FD18 0001CC78  41 82 01 A0 */	beq lbl_8001FEB8
/* 8001FD1C 0001CC7C  40 80 00 14 */	bge lbl_8001FD30
/* 8001FD20 0001CC80  2C 05 00 00 */	cmpwi r5, 0
/* 8001FD24 0001CC84  41 82 00 18 */	beq lbl_8001FD3C
/* 8001FD28 0001CC88  40 80 00 F4 */	bge lbl_8001FE1C
/* 8001FD2C 0001CC8C  48 00 02 E4 */	b lbl_80020010
lbl_8001FD30:
/* 8001FD30 0001CC90  2C 05 00 04 */	cmpwi r5, 4
/* 8001FD34 0001CC94  40 80 02 DC */	bge lbl_80020010
/* 8001FD38 0001CC98  48 00 02 74 */	b lbl_8001FFAC
lbl_8001FD3C:
/* 8001FD3C 0001CC9C  28 1A 00 00 */	cmplwi r26, 0
/* 8001FD40 0001CCA0  41 82 00 A4 */	beq lbl_8001FDE4
/* 8001FD44 0001CCA4  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 8001FD48 0001CCA8  80 BA 00 18 */	lwz r5, 0x18(r26)
/* 8001FD4C 0001CCAC  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 8001FD50 0001CCB0  38 61 00 DC */	addi r3, r1, 0xdc
/* 8001FD54 0001CCB4  38 84 02 31 */	addi r4, r4, 0x231
/* 8001FD58 0001CCB8  4C C6 31 82 */	crclr 6
/* 8001FD5C 0001CCBC  48 36 DF 81 */	bl sprintf
/* 8001FD60 0001CCC0  88 1A 00 20 */	lbz r0, 0x20(r26)
/* 8001FD64 0001CCC4  38 80 00 27 */	li r4, 0x27
/* 8001FD68 0001CCC8  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8001FD6C 0001CCCC  28 00 00 00 */	cmplwi r0, 0
/* 8001FD70 0001CCD0  41 82 00 08 */	beq lbl_8001FD78
/* 8001FD74 0001CCD4  38 80 00 6A */	li r4, 0x6a
lbl_8001FD78:
/* 8001FD78 0001CCD8  7C 84 F2 14 */	add r4, r4, r30
/* 8001FD7C 0001CCDC  48 33 69 81 */	bl GetString__12CStringTableCFi
/* 8001FD80 0001CCE0  7C 64 1B 78 */	mr r4, r3
/* 8001FD84 0001CCE4  38 61 00 BC */	addi r3, r1, 0xbc
/* 8001FD88 0001CCE8  4B FF 5C 69 */	bl wstring_l__4rstlFPCw
/* 8001FD8C 0001CCEC  38 61 00 AC */	addi r3, r1, 0xac
/* 8001FD90 0001CCF0  38 81 00 DC */	addi r4, r1, 0xdc
/* 8001FD94 0001CCF4  4B FE 4F 25 */	bl string_l__4rstlFPCc
/* 8001FD98 0001CCF8  38 61 00 9C */	addi r3, r1, 0x9c
/* 8001FD9C 0001CCFC  38 81 00 AC */	addi r4, r1, 0xac
/* 8001FDA0 0001CD00  48 31 E9 81 */	bl "ConvertToUNICODE__13CStringExtrasFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8001FDA4 0001CD04  38 61 00 8C */	addi r3, r1, 0x8c
/* 8001FDA8 0001CD08  38 81 00 BC */	addi r4, r1, 0xbc
/* 8001FDAC 0001CD0C  38 A1 00 9C */	addi r5, r1, 0x9c
/* 8001FDB0 0001CD10  48 00 02 B5 */	bl sub_80020064
/* 8001FDB4 0001CD14  38 61 00 CC */	addi r3, r1, 0xcc
/* 8001FDB8 0001CD18  38 81 00 8C */	addi r4, r1, 0x8c
/* 8001FDBC 0001CD1C  48 31 D5 91 */	bl sub_8033d34c
/* 8001FDC0 0001CD20  38 61 00 8C */	addi r3, r1, 0x8c
/* 8001FDC4 0001CD24  48 31 D3 71 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8001FDC8 0001CD28  38 61 00 9C */	addi r3, r1, 0x9c
/* 8001FDCC 0001CD2C  48 31 D3 69 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8001FDD0 0001CD30  38 61 00 AC */	addi r3, r1, 0xac
/* 8001FDD4 0001CD34  48 31 DD 0D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8001FDD8 0001CD38  38 61 00 BC */	addi r3, r1, 0xbc
/* 8001FDDC 0001CD3C  48 31 D3 59 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8001FDE0 0001CD40  48 00 02 30 */	b lbl_80020010
lbl_8001FDE4:
/* 8001FDE4 0001CD44  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8001FDE8 0001CD48  38 80 00 24 */	li r4, 0x24
/* 8001FDEC 0001CD4C  48 33 69 11 */	bl GetString__12CStringTableCFi
/* 8001FDF0 0001CD50  7C 64 1B 78 */	mr r4, r3
/* 8001FDF4 0001CD54  38 61 00 7C */	addi r3, r1, 0x7c
/* 8001FDF8 0001CD58  38 C1 00 08 */	addi r6, r1, 8
/* 8001FDFC 0001CD5C  38 A0 FF FF */	li r5, -1
/* 8001FE00 0001CD60  48 31 D9 BD */	bl "__ct__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>FPCwiRCQ24rstl17rmemory_allocator"
/* 8001FE04 0001CD64  38 61 00 CC */	addi r3, r1, 0xcc
/* 8001FE08 0001CD68  38 81 00 7C */	addi r4, r1, 0x7c
/* 8001FE0C 0001CD6C  48 31 D5 41 */	bl sub_8033d34c
/* 8001FE10 0001CD70  38 61 00 7C */	addi r3, r1, 0x7c
/* 8001FE14 0001CD74  48 31 D3 21 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8001FE18 0001CD78  48 00 01 F8 */	b lbl_80020010
lbl_8001FE1C:
/* 8001FE1C 0001CD7C  28 1A 00 00 */	cmplwi r26, 0
/* 8001FE20 0001CD80  41 82 00 68 */	beq lbl_8001FE88
/* 8001FE24 0001CD84  80 6D A0 84 */	lwz r3, gpMemoryCard@sda21(r13)
/* 8001FE28 0001CD88  3B 20 00 00 */	li r25, 0
/* 8001FE2C 0001CD8C  80 9A 00 08 */	lwz r4, 8(r26)
/* 8001FE30 0001CD90  48 22 91 89 */	bl HasSaveWorldMemory__15CMemoryCardSysFi
/* 8001FE34 0001CD94  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001FE38 0001CD98  41 82 00 18 */	beq lbl_8001FE50
/* 8001FE3C 0001CD9C  80 6D A0 84 */	lwz r3, gpMemoryCard@sda21(r13)
/* 8001FE40 0001CDA0  80 9A 00 08 */	lwz r4, 8(r26)
/* 8001FE44 0001CDA4  48 22 90 C9 */	bl GetSaveWorldMemory__14CMemoryCardSysCFi
/* 8001FE48 0001CDA8  48 22 90 81 */	bl GetFrontEndName__16CSaveWorldMemoryCFv
/* 8001FE4C 0001CDAC  7C 79 1B 78 */	mr r25, r3
lbl_8001FE50:
/* 8001FE50 0001CDB0  28 19 00 00 */	cmplwi r25, 0
/* 8001FE54 0001CDB4  38 61 00 6C */	addi r3, r1, 0x6c
/* 8001FE58 0001CDB8  41 82 00 0C */	beq lbl_8001FE64
/* 8001FE5C 0001CDBC  7F 24 CB 78 */	mr r4, r25
/* 8001FE60 0001CDC0  48 00 00 0C */	b lbl_8001FE6C
lbl_8001FE64:
/* 8001FE64 0001CDC4  38 8D 81 4C */	addi r4, r13, lbl_805A6D0C@sda21
/* 8001FE68 0001CDC8  38 84 00 02 */	addi r4, r4, 2
lbl_8001FE6C:
/* 8001FE6C 0001CDCC  4B FF 5B 85 */	bl wstring_l__4rstlFPCw
/* 8001FE70 0001CDD0  38 61 00 CC */	addi r3, r1, 0xcc
/* 8001FE74 0001CDD4  38 81 00 6C */	addi r4, r1, 0x6c
/* 8001FE78 0001CDD8  48 31 D4 D5 */	bl sub_8033d34c
/* 8001FE7C 0001CDDC  38 61 00 6C */	addi r3, r1, 0x6c
/* 8001FE80 0001CDE0  48 31 D2 B5 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8001FE84 0001CDE4  48 00 01 8C */	b lbl_80020010
lbl_8001FE88:
/* 8001FE88 0001CDE8  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8001FE8C 0001CDEC  38 80 00 33 */	li r4, 0x33
/* 8001FE90 0001CDF0  48 33 68 6D */	bl GetString__12CStringTableCFi
/* 8001FE94 0001CDF4  7C 64 1B 78 */	mr r4, r3
/* 8001FE98 0001CDF8  38 61 00 5C */	addi r3, r1, 0x5c
/* 8001FE9C 0001CDFC  4B FF 5B 55 */	bl wstring_l__4rstlFPCw
/* 8001FEA0 0001CE00  38 61 00 CC */	addi r3, r1, 0xcc
/* 8001FEA4 0001CE04  38 81 00 5C */	addi r4, r1, 0x5c
/* 8001FEA8 0001CE08  48 31 D4 A5 */	bl sub_8033d34c
/* 8001FEAC 0001CE0C  38 61 00 5C */	addi r3, r1, 0x5c
/* 8001FEB0 0001CE10  48 31 D2 85 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8001FEB4 0001CE14  48 00 01 5C */	b lbl_80020010
lbl_8001FEB8:
/* 8001FEB8 0001CE18  28 1A 00 00 */	cmplwi r26, 0
/* 8001FEBC 0001CE1C  41 82 00 C0 */	beq lbl_8001FF7C
/* 8001FEC0 0001CE20  C8 1A 00 00 */	lfd f0, 0(r26)
/* 8001FEC4 0001CE24  3C 80 91 A3 */	lis r4, 0x91A2B3C5@ha
/* 8001FEC8 0001CE28  3C 60 88 89 */	lis r3, 0x88888889@ha
/* 8001FECC 0001CE2C  3C A0 80 3D */	lis r5, lbl_803CC644@ha
/* 8001FED0 0001CE30  FC 00 00 1E */	fctiwz f0, f0
/* 8001FED4 0001CE34  38 A5 C6 44 */	addi r5, r5, lbl_803CC644@l
/* 8001FED8 0001CE38  38 04 B3 C5 */	addi r0, r4, 0x91A2B3C5@l
/* 8001FEDC 0001CE3C  39 03 88 89 */	addi r8, r3, 0x88888889@l
/* 8001FEE0 0001CE40  38 61 00 FC */	addi r3, r1, 0xfc
/* 8001FEE4 0001CE44  38 85 02 3A */	addi r4, r5, 0x23a
/* 8001FEE8 0001CE48  D8 01 01 20 */	stfd f0, 0x120(r1)
/* 8001FEEC 0001CE4C  D8 01 01 28 */	stfd f0, 0x128(r1)
/* 8001FEF0 0001CE50  80 A1 01 24 */	lwz r5, 0x124(r1)
/* 8001FEF4 0001CE54  80 E1 01 2C */	lwz r7, 0x12c(r1)
/* 8001FEF8 0001CE58  7C C0 28 96 */	mulhw r6, r0, r5
/* 8001FEFC 0001CE5C  7C 00 38 96 */	mulhw r0, r0, r7
/* 8001FF00 0001CE60  7C A6 2A 14 */	add r5, r6, r5
/* 8001FF04 0001CE64  7C A5 5E 70 */	srawi r5, r5, 0xb
/* 8001FF08 0001CE68  7C 00 3A 14 */	add r0, r0, r7
/* 8001FF0C 0001CE6C  54 A9 0F FE */	srwi r9, r5, 0x1f
/* 8001FF10 0001CE70  7C 00 5E 70 */	srawi r0, r0, 0xb
/* 8001FF14 0001CE74  54 06 0F FE */	srwi r6, r0, 0x1f
/* 8001FF18 0001CE78  7C A5 4A 14 */	add r5, r5, r9
/* 8001FF1C 0001CE7C  7C 00 32 14 */	add r0, r0, r6
/* 8001FF20 0001CE80  1C 00 0E 10 */	mulli r0, r0, 0xe10
/* 8001FF24 0001CE84  7C 00 38 50 */	subf r0, r0, r7
/* 8001FF28 0001CE88  7C C8 00 96 */	mulhw r6, r8, r0
/* 8001FF2C 0001CE8C  7C 06 02 14 */	add r0, r6, r0
/* 8001FF30 0001CE90  7C 00 2E 70 */	srawi r0, r0, 5
/* 8001FF34 0001CE94  54 06 0F FE */	srwi r6, r0, 0x1f
/* 8001FF38 0001CE98  7C C0 32 14 */	add r6, r0, r6
/* 8001FF3C 0001CE9C  4C C6 31 82 */	crclr 6
/* 8001FF40 0001CEA0  48 36 DD 9D */	bl sprintf
/* 8001FF44 0001CEA4  38 61 00 4C */	addi r3, r1, 0x4c
/* 8001FF48 0001CEA8  38 81 00 FC */	addi r4, r1, 0xfc
/* 8001FF4C 0001CEAC  4B FE 4D 6D */	bl string_l__4rstlFPCc
/* 8001FF50 0001CEB0  38 61 00 3C */	addi r3, r1, 0x3c
/* 8001FF54 0001CEB4  38 81 00 4C */	addi r4, r1, 0x4c
/* 8001FF58 0001CEB8  48 31 E7 C9 */	bl "ConvertToUNICODE__13CStringExtrasFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8001FF5C 0001CEBC  38 61 00 CC */	addi r3, r1, 0xcc
/* 8001FF60 0001CEC0  38 81 00 3C */	addi r4, r1, 0x3c
/* 8001FF64 0001CEC4  48 31 D3 E9 */	bl sub_8033d34c
/* 8001FF68 0001CEC8  38 61 00 3C */	addi r3, r1, 0x3c
/* 8001FF6C 0001CECC  48 31 D1 C9 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8001FF70 0001CED0  38 61 00 4C */	addi r3, r1, 0x4c
/* 8001FF74 0001CED4  48 31 DB 6D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8001FF78 0001CED8  48 00 00 98 */	b lbl_80020010
lbl_8001FF7C:
/* 8001FF7C 0001CEDC  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8001FF80 0001CEE0  38 80 00 34 */	li r4, 0x34
/* 8001FF84 0001CEE4  48 33 67 79 */	bl GetString__12CStringTableCFi
/* 8001FF88 0001CEE8  7C 64 1B 78 */	mr r4, r3
/* 8001FF8C 0001CEEC  38 61 00 2C */	addi r3, r1, 0x2c
/* 8001FF90 0001CEF0  4B FF 5A 61 */	bl wstring_l__4rstlFPCw
/* 8001FF94 0001CEF4  38 61 00 CC */	addi r3, r1, 0xcc
/* 8001FF98 0001CEF8  38 81 00 2C */	addi r4, r1, 0x2c
/* 8001FF9C 0001CEFC  48 31 D3 B1 */	bl sub_8033d34c
/* 8001FFA0 0001CF00  38 61 00 2C */	addi r3, r1, 0x2c
/* 8001FFA4 0001CF04  48 31 D1 91 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8001FFA8 0001CF08  48 00 00 68 */	b lbl_80020010
lbl_8001FFAC:
/* 8001FFAC 0001CF0C  28 1A 00 00 */	cmplwi r26, 0
/* 8001FFB0 0001CF10  41 82 00 34 */	beq lbl_8001FFE4
/* 8001FFB4 0001CF14  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8001FFB8 0001CF18  38 80 00 36 */	li r4, 0x36
/* 8001FFBC 0001CF1C  48 33 67 41 */	bl GetString__12CStringTableCFi
/* 8001FFC0 0001CF20  7C 64 1B 78 */	mr r4, r3
/* 8001FFC4 0001CF24  38 61 00 1C */	addi r3, r1, 0x1c
/* 8001FFC8 0001CF28  4B FF 5A 29 */	bl wstring_l__4rstlFPCw
/* 8001FFCC 0001CF2C  38 61 00 CC */	addi r3, r1, 0xcc
/* 8001FFD0 0001CF30  38 81 00 1C */	addi r4, r1, 0x1c
/* 8001FFD4 0001CF34  48 31 D3 79 */	bl sub_8033d34c
/* 8001FFD8 0001CF38  38 61 00 1C */	addi r3, r1, 0x1c
/* 8001FFDC 0001CF3C  48 31 D1 59 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8001FFE0 0001CF40  48 00 00 30 */	b lbl_80020010
lbl_8001FFE4:
/* 8001FFE4 0001CF44  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8001FFE8 0001CF48  38 80 00 35 */	li r4, 0x35
/* 8001FFEC 0001CF4C  48 33 67 11 */	bl GetString__12CStringTableCFi
/* 8001FFF0 0001CF50  7C 64 1B 78 */	mr r4, r3
/* 8001FFF4 0001CF54  38 61 00 0C */	addi r3, r1, 0xc
/* 8001FFF8 0001CF58  4B FF 59 F9 */	bl wstring_l__4rstlFPCw
/* 8001FFFC 0001CF5C  38 61 00 CC */	addi r3, r1, 0xcc
/* 80020000 0001CF60  38 81 00 0C */	addi r4, r1, 0xc
/* 80020004 0001CF64  48 31 D3 49 */	bl sub_8033d34c
/* 80020008 0001CF68  38 61 00 0C */	addi r3, r1, 0xc
/* 8002000C 0001CF6C  48 31 D1 29 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
lbl_80020010:
/* 80020010 0001CF70  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80020014 0001CF74  7F A3 EB 78 */	mr r3, r29
/* 80020018 0001CF78  38 81 00 CC */	addi r4, r1, 0xcc
/* 8002001C 0001CF7C  48 00 10 BD */	bl StartTextAnimating__19SNewFileSelectFrameFP12CGuiTextPaneQ24rstl7wstring
/* 80020020 0001CF80  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80020024 0001CF84  7F 83 E3 78 */	mr r3, r28
/* 80020028 0001CF88  38 81 00 CC */	addi r4, r1, 0xcc
/* 8002002C 0001CF8C  48 00 10 AD */	bl StartTextAnimating__19SNewFileSelectFrameFP12CGuiTextPaneQ24rstl7wstring
/* 80020030 0001CF90  38 61 00 CC */	addi r3, r1, 0xcc
/* 80020034 0001CF94  48 31 D1 01 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
lbl_80020038:
/* 80020038 0001CF98  3B DE 00 01 */	addi r30, r30, 1
/* 8002003C 0001CF9C  3B FF 00 30 */	addi r31, r31, 0x30
/* 80020040 0001CFA0  2C 1E 00 03 */	cmpwi r30, 3
/* 80020044 0001CFA4  41 80 FC 30 */	blt lbl_8001FC74
/* 80020048 0001CFA8  E3 E1 01 58 */	psq_l f31, 344(r1), 0, qr0
/* 8002004C 0001CFAC  CB E1 01 50 */	lfd f31, 0x150(r1)
/* 80020050 0001CFB0  BB 21 01 34 */	lmw r25, 0x134(r1)
/* 80020054 0001CFB4  80 01 01 64 */	lwz r0, 0x164(r1)
/* 80020058 0001CFB8  7C 08 03 A6 */	mtlr r0
/* 8002005C 0001CFBC  38 21 01 60 */	addi r1, r1, 0x160
/* 80020060 0001CFC0  4E 80 00 20 */	blr

.global sub_80020064
sub_80020064:
/* 80020064 0001CFC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80020068 0001CFC8  7C 08 02 A6 */	mflr r0
/* 8002006C 0001CFCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80020070 0001CFD0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80020074 0001CFD4  7C BF 2B 78 */	mr r31, r5
/* 80020078 0001CFD8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8002007C 0001CFDC  7C 7E 1B 78 */	mr r30, r3
/* 80020080 0001CFE0  38 61 00 08 */	addi r3, r1, 8
/* 80020084 0001CFE4  48 31 D7 05 */	bl "__ct__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80020088 0001CFE8  7F E4 FB 78 */	mr r4, r31
/* 8002008C 0001CFEC  38 61 00 08 */	addi r3, r1, 8
/* 80020090 0001CFF0  48 31 D5 BD */	bl "append__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80020094 0001CFF4  7F C3 F3 78 */	mr r3, r30
/* 80020098 0001CFF8  38 81 00 08 */	addi r4, r1, 8
/* 8002009C 0001CFFC  48 31 D6 ED */	bl "__ct__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 800200A0 0001D000  38 61 00 08 */	addi r3, r1, 8
/* 800200A4 0001D004  48 31 D0 91 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 800200A8 0001D008  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800200AC 0001D00C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800200B0 0001D010  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800200B4 0001D014  7C 08 03 A6 */	mtlr r0
/* 800200B8 0001D018  38 21 00 20 */	addi r1, r1, 0x20
/* 800200BC 0001D01C  4E 80 00 20 */	blr

.global DoFileselectAdvance__19SNewFileSelectFrameFPC14CGuiTableGroup
DoFileselectAdvance__19SNewFileSelectFrameFPC14CGuiTableGroup:
/* 800200C0 0001D020  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800200C4 0001D024  7C 08 02 A6 */	mflr r0
/* 800200C8 0001D028  90 01 00 14 */	stw r0, 0x14(r1)
/* 800200CC 0001D02C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800200D0 0001D030  93 C1 00 08 */	stw r30, 8(r1)
/* 800200D4 0001D034  7C 7E 1B 78 */	mr r30, r3
/* 800200D8 0001D038  80 63 00 20 */	lwz r3, 0x20(r3)
/* 800200DC 0001D03C  83 E3 00 C4 */	lwz r31, 0xc4(r3)
/* 800200E0 0001D040  2C 1F 00 03 */	cmpwi r31, 3
/* 800200E4 0001D044  40 80 00 64 */	bge lbl_80020148
/* 800200E8 0001D048  80 1E 00 08 */	lwz r0, 8(r30)
/* 800200EC 0001D04C  2C 00 00 01 */	cmpwi r0, 1
/* 800200F0 0001D050  40 82 00 28 */	bne lbl_80020118
/* 800200F4 0001D054  80 7E 00 04 */	lwz r3, 4(r30)
/* 800200F8 0001D058  7F E4 FB 78 */	mr r4, r31
/* 800200FC 0001D05C  48 22 F6 01 */	bl GetGameData__15CSaveGameScreenFi
/* 80020100 0001D060  28 03 00 00 */	cmplwi r3, 0
/* 80020104 0001D064  41 82 00 7C */	beq lbl_80020180
/* 80020108 0001D068  48 00 2E 4D */	bl PlayAdvanceSfx__11CFrontEndUIFv
/* 8002010C 0001D06C  38 00 00 01 */	li r0, 1
/* 80020110 0001D070  98 1E 01 0D */	stb r0, 0x10d(r30)
/* 80020114 0001D074  48 00 00 6C */	b lbl_80020180
lbl_80020118:
/* 80020118 0001D078  80 7E 00 04 */	lwz r3, 4(r30)
/* 8002011C 0001D07C  7F E4 FB 78 */	mr r4, r31
/* 80020120 0001D080  48 22 F5 DD */	bl GetGameData__15CSaveGameScreenFi
/* 80020124 0001D084  28 03 00 00 */	cmplwi r3, 0
/* 80020128 0001D088  41 82 00 14 */	beq lbl_8002013C
/* 8002012C 0001D08C  80 7E 00 04 */	lwz r3, 4(r30)
/* 80020130 0001D090  7F E4 FB 78 */	mr r4, r31
/* 80020134 0001D094  48 22 F4 C1 */	bl StartGame__15CSaveGameScreenFi
/* 80020138 0001D098  48 00 00 48 */	b lbl_80020180
lbl_8002013C:
/* 8002013C 0001D09C  38 00 00 01 */	li r0, 1
/* 80020140 0001D0A0  98 1E 01 0E */	stb r0, 0x10e(r30)
/* 80020144 0001D0A4  48 00 00 3C */	b lbl_80020180
lbl_80020148:
/* 80020148 0001D0A8  40 82 00 14 */	bne lbl_8002015C
/* 8002014C 0001D0AC  48 00 2E 09 */	bl PlayAdvanceSfx__11CFrontEndUIFv
/* 80020150 0001D0B0  7F C3 F3 78 */	mr r3, r30
/* 80020154 0001D0B4  4B FF F5 F5 */	bl EnterErase__19SNewFileSelectFrameFv
/* 80020158 0001D0B8  48 00 00 28 */	b lbl_80020180
lbl_8002015C:
/* 8002015C 0001D0BC  2C 1F 00 04 */	cmpwi r31, 4
/* 80020160 0001D0C0  40 82 00 10 */	bne lbl_80020170
/* 80020164 0001D0C4  38 00 00 02 */	li r0, 2
/* 80020168 0001D0C8  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8002016C 0001D0CC  48 00 00 14 */	b lbl_80020180
lbl_80020170:
/* 80020170 0001D0D0  2C 1F 00 05 */	cmpwi r31, 5
/* 80020174 0001D0D4  40 82 00 0C */	bne lbl_80020180
/* 80020178 0001D0D8  38 00 00 03 */	li r0, 3
/* 8002017C 0001D0DC  90 1E 00 0C */	stw r0, 0xc(r30)
lbl_80020180:
/* 80020180 0001D0E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80020184 0001D0E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80020188 0001D0E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8002018C 0001D0EC  7C 08 03 A6 */	mtlr r0
/* 80020190 0001D0F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80020194 0001D0F4  4E 80 00 20 */	blr

.global HandleActiveChange__19SNewFileSelectFrameFP10CGuiWidget
HandleActiveChange__19SNewFileSelectFrameFP10CGuiWidget:
/* 80020198 0001D0F8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8002019C 0001D0FC  7C 08 02 A6 */	mflr r0
/* 800201A0 0001D100  90 01 00 74 */	stw r0, 0x74(r1)
/* 800201A4 0001D104  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 800201A8 0001D108  93 C1 00 68 */	stw r30, 0x68(r1)
/* 800201AC 0001D10C  7C 9E 23 79 */	or. r30, r4, r4
/* 800201B0 0001D110  93 A1 00 64 */	stw r29, 0x64(r1)
/* 800201B4 0001D114  7C 7D 1B 78 */	mr r29, r3
/* 800201B8 0001D118  41 82 01 00 */	beq lbl_800202B8
/* 800201BC 0001D11C  83 FE 00 C4 */	lwz r31, 0xc4(r30)
/* 800201C0 0001D120  38 E0 00 FF */	li r7, 0xff
/* 800201C4 0001D124  38 C0 00 A0 */	li r6, 0xa0
/* 800201C8 0001D128  38 00 00 C8 */	li r0, 0xc8
/* 800201CC 0001D12C  98 E1 00 0C */	stb r7, 0xc(r1)
/* 800201D0 0001D130  7F C3 F3 78 */	mr r3, r30
/* 800201D4 0001D134  38 81 00 0C */	addi r4, r1, 0xc
/* 800201D8 0001D138  38 A1 00 08 */	addi r5, r1, 8
/* 800201DC 0001D13C  98 E1 00 0D */	stb r7, 0xd(r1)
/* 800201E0 0001D140  98 E1 00 0E */	stb r7, 0xe(r1)
/* 800201E4 0001D144  98 E1 00 0F */	stb r7, 0xf(r1)
/* 800201E8 0001D148  98 C1 00 08 */	stb r6, 8(r1)
/* 800201EC 0001D14C  98 C1 00 09 */	stb r6, 9(r1)
/* 800201F0 0001D150  98 C1 00 0A */	stb r6, 0xa(r1)
/* 800201F4 0001D154  98 01 00 0B */	stb r0, 0xb(r1)
/* 800201F8 0001D158  48 2A 64 05 */	bl SetColors__14CGuiTableGroupCFRC6CColorRC6CColor
/* 800201FC 0001D15C  80 1D 00 20 */	lwz r0, 0x20(r29)
/* 80020200 0001D160  7C 1E 00 40 */	cmplw r30, r0
/* 80020204 0001D164  40 82 00 74 */	bne lbl_80020278
/* 80020208 0001D168  6F E3 80 00 */	xoris r3, r31, 0x8000
/* 8002020C 0001D16C  3C 00 43 30 */	lis r0, 0x4330
/* 80020210 0001D170  90 61 00 54 */	stw r3, 0x54(r1)
/* 80020214 0001D174  38 61 00 1C */	addi r3, r1, 0x1c
/* 80020218 0001D178  C8 42 82 B8 */	lfd f2, lbl_805A9FD8@sda21(r2)
/* 8002021C 0001D17C  38 81 00 10 */	addi r4, r1, 0x10
/* 80020220 0001D180  90 01 00 50 */	stw r0, 0x50(r1)
/* 80020224 0001D184  C0 3D 01 04 */	lfs f1, 0x104(r29)
/* 80020228 0001D188  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 8002022C 0001D18C  C0 BD 00 FC */	lfs f5, 0xfc(r29)
/* 80020230 0001D190  EC 40 10 28 */	fsubs f2, f0, f2
/* 80020234 0001D194  C0 82 82 9C */	lfs f4, lbl_805A9FBC@sda21(r2)
/* 80020238 0001D198  C0 1D 00 F8 */	lfs f0, 0xf8(r29)
/* 8002023C 0001D19C  C0 7D 01 00 */	lfs f3, 0x100(r29)
/* 80020240 0001D1A0  EC A5 20 2A */	fadds f5, f5, f4
/* 80020244 0001D1A4  EC 22 00 72 */	fmuls f1, f2, f1
/* 80020248 0001D1A8  EC 00 20 2A */	fadds f0, f0, f4
/* 8002024C 0001D1AC  D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 80020250 0001D1B0  EC 23 08 2A */	fadds f1, f3, f1
/* 80020254 0001D1B4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80020258 0001D1B8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8002025C 0001D1BC  48 2F 2E E5 */	bl Translate__12CTransform4fFRC9CVector3f
/* 80020260 0001D1C0  83 FD 00 24 */	lwz r31, 0x24(r29)
/* 80020264 0001D1C4  38 81 00 1C */	addi r4, r1, 0x1c
/* 80020268 0001D1C8  38 7F 00 04 */	addi r3, r31, 4
/* 8002026C 0001D1CC  48 2F 28 D5 */	bl __as__12CTransform4fFRC12CTransform4f
/* 80020270 0001D1D0  7F E3 FB 78 */	mr r3, r31
/* 80020274 0001D1D4  48 2A 45 75 */	bl RecalculateTransforms__10CGuiObjectFv
lbl_80020278:
/* 80020278 0001D1D8  80 7D 00 08 */	lwz r3, 8(r29)
/* 8002027C 0001D1DC  38 00 00 00 */	li r0, 0
/* 80020280 0001D1E0  2C 03 00 00 */	cmpwi r3, 0
/* 80020284 0001D1E4  41 82 00 0C */	beq lbl_80020290
/* 80020288 0001D1E8  2C 03 00 03 */	cmpwi r3, 3
/* 8002028C 0001D1EC  40 82 00 08 */	bne lbl_80020294
lbl_80020290:
/* 80020290 0001D1F0  38 00 00 01 */	li r0, 1
lbl_80020294:
/* 80020294 0001D1F4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80020298 0001D1F8  41 82 00 14 */	beq lbl_800202AC
/* 8002029C 0001D1FC  80 7D 00 24 */	lwz r3, 0x24(r29)
/* 800202A0 0001D200  38 80 00 00 */	li r4, 0
/* 800202A4 0001D204  48 2A A3 89 */	bl SetIsVisible__10CGuiWidgetFb
/* 800202A8 0001D208  48 00 00 10 */	b lbl_800202B8
lbl_800202AC:
/* 800202AC 0001D20C  80 7D 00 24 */	lwz r3, 0x24(r29)
/* 800202B0 0001D210  38 80 00 01 */	li r4, 1
/* 800202B4 0001D214  48 2A A3 79 */	bl SetIsVisible__10CGuiWidgetFb
lbl_800202B8:
/* 800202B8 0001D218  80 01 00 74 */	lwz r0, 0x74(r1)
/* 800202BC 0001D21C  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 800202C0 0001D220  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 800202C4 0001D224  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 800202C8 0001D228  7C 08 03 A6 */	mtlr r0
/* 800202CC 0001D22C  38 21 00 70 */	addi r1, r1, 0x70
/* 800202D0 0001D230  4E 80 00 20 */	blr

.global Draw__19SNewFileSelectFrameFv
Draw__19SNewFileSelectFrameFv:
/* 800202D4 0001D234  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800202D8 0001D238  7C 08 02 A6 */	mflr r0
/* 800202DC 0001D23C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800202E0 0001D240  80 A3 00 1C */	lwz r5, 0x1c(r3)
/* 800202E4 0001D244  28 05 00 00 */	cmplwi r5, 0
/* 800202E8 0001D248  41 82 00 20 */	beq lbl_80020308
/* 800202EC 0001D24C  88 03 01 0C */	lbz r0, 0x10c(r3)
/* 800202F0 0001D250  28 00 00 00 */	cmplwi r0, 0
/* 800202F4 0001D254  41 82 00 14 */	beq lbl_80020308
/* 800202F8 0001D258  3C 80 80 5A */	lis r4, lbl_8059FD08@ha
/* 800202FC 0001D25C  7C A3 2B 78 */	mr r3, r5
/* 80020300 0001D260  38 84 FD 08 */	addi r4, r4, lbl_8059FD08@l
/* 80020304 0001D264  48 2A 24 31 */	bl Draw__9CGuiFrameCFRC19CGuiWidgetDrawParms
lbl_80020308:
/* 80020308 0001D268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002030C 0001D26C  7C 08 03 A6 */	mtlr r0
/* 80020310 0001D270  38 21 00 10 */	addi r1, r1, 0x10
/* 80020314 0001D274  4E 80 00 20 */	blr

.global ProcessUserInput__19SNewFileSelectFrameFRC11CFinalInput
ProcessUserInput__19SNewFileSelectFrameFRC11CFinalInput:
/* 80020318 0001D278  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8002031C 0001D27C  7C 08 02 A6 */	mflr r0
/* 80020320 0001D280  90 01 00 24 */	stw r0, 0x24(r1)
/* 80020324 0001D284  38 00 00 00 */	li r0, 0
/* 80020328 0001D288  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8002032C 0001D28C  7C 9F 23 78 */	mr r31, r4
/* 80020330 0001D290  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80020334 0001D294  7C 7E 1B 78 */	mr r30, r3
/* 80020338 0001D298  90 03 00 0C */	stw r0, 0xc(r3)
/* 8002033C 0001D29C  80 03 00 08 */	lwz r0, 8(r3)
/* 80020340 0001D2A0  2C 00 00 02 */	cmpwi r0, 2
/* 80020344 0001D2A4  41 82 00 0C */	beq lbl_80020350
/* 80020348 0001D2A8  80 7E 00 04 */	lwz r3, 4(r30)
/* 8002034C 0001D2AC  48 22 F4 25 */	bl ProcessUserInput__15CSaveGameScreenFRC11CFinalInput
lbl_80020350:
/* 80020350 0001D2B0  7F C3 F3 78 */	mr r3, r30
/* 80020354 0001D2B4  4B FF EC 55 */	bl IsTextDoneAnimating__19SNewFileSelectFrameFv
/* 80020358 0001D2B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8002035C 0001D2BC  41 82 00 34 */	beq lbl_80020390
/* 80020360 0001D2C0  C0 5E 01 08 */	lfs f2, 0x108(r30)
/* 80020364 0001D2C4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80020368 0001D2C8  C0 02 82 E4 */	lfs f0, lbl_805AA004@sda21(r2)
/* 8002036C 0001D2CC  EC 22 08 2A */	fadds f1, f2, f1
/* 80020370 0001D2D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80020374 0001D2D4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80020378 0001D2D8  40 80 00 0C */	bge lbl_80020384
/* 8002037C 0001D2DC  38 61 00 08 */	addi r3, r1, 8
/* 80020380 0001D2E0  48 00 00 08 */	b lbl_80020388
lbl_80020384:
/* 80020384 0001D2E4  38 62 82 E4 */	addi r3, r2, lbl_805AA004@sda21
lbl_80020388:
/* 80020388 0001D2E8  C0 03 00 00 */	lfs f0, 0(r3)
/* 8002038C 0001D2EC  D0 1E 01 08 */	stfs f0, 0x108(r30)
lbl_80020390:
/* 80020390 0001D2F0  C0 3E 01 08 */	lfs f1, 0x108(r30)
/* 80020394 0001D2F4  C0 02 82 D0 */	lfs f0, lbl_805A9FF0@sda21(r2)
/* 80020398 0001D2F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8002039C 0001D2FC  40 80 00 0C */	bge lbl_800203A8
/* 800203A0 0001D300  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 800203A4 0001D304  48 00 00 A8 */	b lbl_8002044C
lbl_800203A8:
/* 800203A8 0001D308  88 1E 01 0C */	lbz r0, 0x10c(r30)
/* 800203AC 0001D30C  28 00 00 00 */	cmplwi r0, 0
/* 800203B0 0001D310  41 82 00 10 */	beq lbl_800203C0
/* 800203B4 0001D314  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 800203B8 0001D318  7F E4 FB 78 */	mr r4, r31
/* 800203BC 0001D31C  48 2A 22 9D */	bl ProcessUserInput__9CGuiFrameFRC11CFinalInput
lbl_800203C0:
/* 800203C0 0001D320  88 1E 01 0D */	lbz r0, 0x10d(r30)
/* 800203C4 0001D324  28 00 00 00 */	cmplwi r0, 0
/* 800203C8 0001D328  41 82 00 3C */	beq lbl_80020404
/* 800203CC 0001D32C  80 7E 00 40 */	lwz r3, 0x40(r30)
/* 800203D0 0001D330  81 83 00 00 */	lwz r12, 0(r3)
/* 800203D4 0001D334  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 800203D8 0001D338  7D 89 03 A6 */	mtctr r12
/* 800203DC 0001D33C  4E 80 04 21 */	bctrl
/* 800203E0 0001D340  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800203E4 0001D344  41 82 00 10 */	beq lbl_800203F4
/* 800203E8 0001D348  7F C3 F3 78 */	mr r3, r30
/* 800203EC 0001D34C  4B FF EC 99 */	bl DeactivateExistingGamePopup__19SNewFileSelectFrameFv
/* 800203F0 0001D350  48 00 00 0C */	b lbl_800203FC
lbl_800203F4:
/* 800203F4 0001D354  7F C3 F3 78 */	mr r3, r30
/* 800203F8 0001D358  4B FF ED 15 */	bl ActivateExistingGamePopup__19SNewFileSelectFrameFv
lbl_800203FC:
/* 800203FC 0001D35C  38 00 00 00 */	li r0, 0
/* 80020400 0001D360  98 1E 01 0D */	stb r0, 0x10d(r30)
lbl_80020404:
/* 80020404 0001D364  88 1E 01 0E */	lbz r0, 0x10e(r30)
/* 80020408 0001D368  28 00 00 00 */	cmplwi r0, 0
/* 8002040C 0001D36C  41 82 00 3C */	beq lbl_80020448
/* 80020410 0001D370  80 7E 00 40 */	lwz r3, 0x40(r30)
/* 80020414 0001D374  81 83 00 00 */	lwz r12, 0(r3)
/* 80020418 0001D378  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8002041C 0001D37C  7D 89 03 A6 */	mtctr r12
/* 80020420 0001D380  4E 80 04 21 */	bctrl
/* 80020424 0001D384  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80020428 0001D388  41 82 00 10 */	beq lbl_80020438
/* 8002042C 0001D38C  7F C3 F3 78 */	mr r3, r30
/* 80020430 0001D390  4B FF EE 5D */	bl DeactivateNewGamePopup__19SNewFileSelectFrameFv
/* 80020434 0001D394  48 00 00 0C */	b lbl_80020440
lbl_80020438:
/* 80020438 0001D398  7F C3 F3 78 */	mr r3, r30
/* 8002043C 0001D39C  4B FF EF 65 */	bl ActivateNewGamePopup__19SNewFileSelectFrameFv
lbl_80020440:
/* 80020440 0001D3A0  38 00 00 00 */	li r0, 0
/* 80020444 0001D3A4  98 1E 01 0E */	stb r0, 0x10e(r30)
lbl_80020448:
/* 80020448 0001D3A8  80 7E 00 0C */	lwz r3, 0xc(r30)
lbl_8002044C:
/* 8002044C 0001D3AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80020450 0001D3B0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80020454 0001D3B4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80020458 0001D3B8  7C 08 03 A6 */	mtlr r0
/* 8002045C 0001D3BC  38 21 00 20 */	addi r1, r1, 0x20
/* 80020460 0001D3C0  4E 80 00 20 */	blr

.global sub_80020464
sub_80020464:
/* 80020464 0001D3C4  88 03 00 B6 */	lbz r0, 0xb6(r3)
/* 80020468 0001D3C8  54 03 DF FE */	rlwinm r3, r0, 0x1b, 0x1f, 0x1f
/* 8002046C 0001D3CC  4E 80 00 20 */	blr

.global Update__19SNewFileSelectFrameFf
Update__19SNewFileSelectFrameFf:
/* 80020470 0001D3D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80020474 0001D3D4  7C 08 02 A6 */	mflr r0
/* 80020478 0001D3D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8002047C 0001D3DC  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 80020480 0001D3E0  FF E0 08 90 */	fmr f31, f1
/* 80020484 0001D3E4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80020488 0001D3E8  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8002048C 0001D3EC  7C 7E 1B 78 */	mr r30, r3
/* 80020490 0001D3F0  80 83 00 04 */	lwz r4, 4(r3)
/* 80020494 0001D3F4  88 03 01 0C */	lbz r0, 0x10c(r3)
/* 80020498 0001D3F8  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8002049C 0001D3FC  20 84 00 10 */	subfic r4, r4, 0x10
/* 800204A0 0001D400  7C 85 00 34 */	cntlzw r5, r4
/* 800204A4 0001D404  54 A4 DE 3E */	rlwinm r4, r5, 0x1b, 0x18, 0x1f
/* 800204A8 0001D408  7C 04 00 40 */	cmplw r4, r0
/* 800204AC 0001D40C  54 BF D9 7E */	srwi r31, r5, 5
/* 800204B0 0001D410  41 82 00 40 */	beq lbl_800204F0
/* 800204B4 0001D414  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 800204B8 0001D418  41 82 00 0C */	beq lbl_800204C4
/* 800204BC 0001D41C  4B FF F4 5D */	bl ClearFrameContents__19SNewFileSelectFrameFv
/* 800204C0 0001D420  48 00 00 2C */	b lbl_800204EC
lbl_800204C4:
/* 800204C4 0001D424  80 1E 00 08 */	lwz r0, 8(r30)
/* 800204C8 0001D428  2C 00 00 00 */	cmpwi r0, 0
/* 800204CC 0001D42C  41 82 00 20 */	beq lbl_800204EC
/* 800204D0 0001D430  4B FF F1 7D */	bl ResetFrame__19SNewFileSelectFrameFv
/* 800204D4 0001D434  7F C3 F3 78 */	mr r3, r30
/* 800204D8 0001D438  4B FF EB AD */	bl DeactivateExistingGamePopup__19SNewFileSelectFrameFv
/* 800204DC 0001D43C  7F C3 F3 78 */	mr r3, r30
/* 800204E0 0001D440  4B FF ED AD */	bl DeactivateNewGamePopup__19SNewFileSelectFrameFv
/* 800204E4 0001D444  38 00 00 00 */	li r0, 0
/* 800204E8 0001D448  90 1E 00 08 */	stw r0, 8(r30)
lbl_800204EC:
/* 800204EC 0001D44C  9B FE 01 0C */	stb r31, 0x10c(r30)
lbl_800204F0:
/* 800204F0 0001D450  88 1E 01 0C */	lbz r0, 0x10c(r30)
/* 800204F4 0001D454  28 00 00 00 */	cmplwi r0, 0
/* 800204F8 0001D458  41 82 00 0C */	beq lbl_80020504
/* 800204FC 0001D45C  7F C3 F3 78 */	mr r3, r30
/* 80020500 0001D460  4B FF F7 51 */	bl SetupFrameContents__19SNewFileSelectFrameFv
lbl_80020504:
/* 80020504 0001D464  FC 20 F8 90 */	fmr f1, f31
/* 80020508 0001D468  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8002050C 0001D46C  48 2A 21 F9 */	bl Update__9CGuiFrameFf
/* 80020510 0001D470  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80020514 0001D474  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 80020518 0001D478  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8002051C 0001D47C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80020520 0001D480  7C 08 03 A6 */	mtlr r0
/* 80020524 0001D484  38 21 00 20 */	addi r1, r1, 0x20
/* 80020528 0001D488  4E 80 00 20 */	blr

.global GetUserFileSelection__19SNewFileSelectFrameCFv
GetUserFileSelection__19SNewFileSelectFrameCFv:
/* 8002052C 0001D48C  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80020530 0001D490  38 00 00 03 */	li r0, 3
/* 80020534 0001D494  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80020538 0001D498  80 84 00 C4 */	lwz r4, 0xc4(r4)
/* 8002053C 0001D49C  7C 00 20 10 */	subfc r0, r0, r4
/* 80020540 0001D4A0  54 80 0F FE */	srwi r0, r4, 0x1f
/* 80020544 0001D4A4  7C 00 19 10 */	subfe r0, r0, r3
/* 80020548 0001D4A8  7C 83 00 38 */	and r3, r4, r0
/* 8002054C 0001D4AC  4E 80 00 20 */	blr

.global FinishedLoading__19SNewFileSelectFrame
FinishedLoading__19SNewFileSelectFrame:
/* 80020550 0001D4B0  94 21 FE 20 */	stwu r1, -0x1e0(r1)
/* 80020554 0001D4B4  7C 08 02 A6 */	mflr r0
/* 80020558 0001D4B8  3C A0 80 3E */	lis r5, lbl_803D9820@ha
/* 8002055C 0001D4BC  90 01 01 E4 */	stw r0, 0x1e4(r1)
/* 80020560 0001D4C0  BF 61 01 CC */	stmw r27, 0x1cc(r1)
/* 80020564 0001D4C4  7C 7B 1B 78 */	mr r27, r3
/* 80020568 0001D4C8  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 8002056C 0001D4CC  3B E5 98 20 */	addi r31, r5, lbl_803D9820@l
/* 80020570 0001D4D0  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 80020574 0001D4D4  38 84 02 44 */	addi r4, r4, 0x244
/* 80020578 0001D4D8  80 7B 00 1C */	lwz r3, 0x1c(r27)
/* 8002057C 0001D4DC  48 2A 1B D9 */	bl FindWidget__9CGuiFrameCFPCc
/* 80020580 0001D4E0  90 7B 00 20 */	stw r3, 0x20(r27)
/* 80020584 0001D4E4  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 80020588 0001D4E8  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 8002058C 0001D4EC  80 7B 00 1C */	lwz r3, 0x1c(r27)
/* 80020590 0001D4F0  38 84 02 5A */	addi r4, r4, 0x25a
/* 80020594 0001D4F4  48 2A 1B C1 */	bl FindWidget__9CGuiFrameCFPCc
/* 80020598 0001D4F8  90 7B 00 24 */	stw r3, 0x24(r27)
/* 8002059C 0001D4FC  38 61 00 FC */	addi r3, r1, 0xfc
/* 800205A0 0001D500  80 9B 00 24 */	lwz r4, 0x24(r27)
/* 800205A4 0001D504  48 2A 4C 79 */	bl GetLocalPosition__10CGuiObjectCFv
/* 800205A8 0001D508  C0 01 00 FC */	lfs f0, 0xfc(r1)
/* 800205AC 0001D50C  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 800205B0 0001D510  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 800205B4 0001D514  38 61 00 30 */	addi r3, r1, 0x30
/* 800205B8 0001D518  D0 1B 00 F8 */	stfs f0, 0xf8(r27)
/* 800205BC 0001D51C  38 A4 02 66 */	addi r5, r4, 0x266
/* 800205C0 0001D520  C0 01 01 00 */	lfs f0, 0x100(r1)
/* 800205C4 0001D524  D0 1B 00 FC */	stfs f0, 0xfc(r27)
/* 800205C8 0001D528  C0 01 01 04 */	lfs f0, 0x104(r1)
/* 800205CC 0001D52C  D0 1B 01 00 */	stfs f0, 0x100(r27)
/* 800205D0 0001D530  80 9B 00 1C */	lwz r4, 0x1c(r27)
/* 800205D4 0001D534  48 00 28 25 */	bl FindTextPanePair__14SFrontEndFrameFPC9CGuiFramePCc
/* 800205D8 0001D538  80 01 00 30 */	lwz r0, 0x30(r1)
/* 800205DC 0001D53C  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 800205E0 0001D540  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 800205E4 0001D544  38 61 00 28 */	addi r3, r1, 0x28
/* 800205E8 0001D548  90 1B 00 28 */	stw r0, 0x28(r27)
/* 800205EC 0001D54C  38 A4 02 75 */	addi r5, r4, 0x275
/* 800205F0 0001D550  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800205F4 0001D554  90 1B 00 2C */	stw r0, 0x2c(r27)
/* 800205F8 0001D558  80 9B 00 1C */	lwz r4, 0x1c(r27)
/* 800205FC 0001D55C  48 00 27 FD */	bl FindTextPanePair__14SFrontEndFrameFPC9CGuiFramePCc
/* 80020600 0001D560  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80020604 0001D564  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 80020608 0001D568  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 8002060C 0001D56C  38 61 00 20 */	addi r3, r1, 0x20
/* 80020610 0001D570  90 1B 00 38 */	stw r0, 0x38(r27)
/* 80020614 0001D574  38 A4 02 82 */	addi r5, r4, 0x282
/* 80020618 0001D578  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8002061C 0001D57C  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 80020620 0001D580  80 9B 00 1C */	lwz r4, 0x1c(r27)
/* 80020624 0001D584  48 00 27 D5 */	bl FindTextPanePair__14SFrontEndFrameFPC9CGuiFramePCc
/* 80020628 0001D588  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8002062C 0001D58C  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 80020630 0001D590  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 80020634 0001D594  38 61 00 18 */	addi r3, r1, 0x18
/* 80020638 0001D598  90 1B 00 30 */	stw r0, 0x30(r27)
/* 8002063C 0001D59C  38 A4 02 92 */	addi r5, r4, 0x292
/* 80020640 0001D5A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80020644 0001D5A4  90 1B 00 34 */	stw r0, 0x34(r27)
/* 80020648 0001D5A8  80 9B 00 1C */	lwz r4, 0x1c(r27)
/* 8002064C 0001D5AC  48 00 27 AD */	bl FindTextPanePair__14SFrontEndFrameFPC9CGuiFramePCc
/* 80020650 0001D5B0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80020654 0001D5B4  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 80020658 0001D5B8  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 8002065C 0001D5BC  38 61 00 10 */	addi r3, r1, 0x10
/* 80020660 0001D5C0  90 1B 00 48 */	stw r0, 0x48(r27)
/* 80020664 0001D5C4  38 A4 02 A8 */	addi r5, r4, 0x2a8
/* 80020668 0001D5C8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8002066C 0001D5CC  90 1B 00 4C */	stw r0, 0x4c(r27)
/* 80020670 0001D5D0  80 9B 00 1C */	lwz r4, 0x1c(r27)
/* 80020674 0001D5D4  48 00 27 85 */	bl FindTextPanePair__14SFrontEndFrameFPC9CGuiFramePCc
/* 80020678 0001D5D8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8002067C 0001D5DC  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 80020680 0001D5E0  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 80020684 0001D5E4  38 61 00 08 */	addi r3, r1, 8
/* 80020688 0001D5E8  90 1B 00 50 */	stw r0, 0x50(r27)
/* 8002068C 0001D5EC  38 A4 02 BD */	addi r5, r4, 0x2bd
/* 80020690 0001D5F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80020694 0001D5F4  90 1B 00 54 */	stw r0, 0x54(r27)
/* 80020698 0001D5F8  80 9B 00 1C */	lwz r4, 0x1c(r27)
/* 8002069C 0001D5FC  48 00 27 5D */	bl FindTextPanePair__14SFrontEndFrameFPC9CGuiFramePCc
/* 800206A0 0001D600  80 01 00 08 */	lwz r0, 8(r1)
/* 800206A4 0001D604  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 800206A8 0001D608  38 63 C6 44 */	addi r3, r3, lbl_803CC644@l
/* 800206AC 0001D60C  90 1B 00 58 */	stw r0, 0x58(r27)
/* 800206B0 0001D610  38 83 02 D1 */	addi r4, r3, 0x2d1
/* 800206B4 0001D614  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800206B8 0001D618  90 1B 00 5C */	stw r0, 0x5c(r27)
/* 800206BC 0001D61C  80 7B 00 1C */	lwz r3, 0x1c(r27)
/* 800206C0 0001D620  48 2A 1A 95 */	bl FindWidget__9CGuiFrameCFPCc
/* 800206C4 0001D624  90 7B 00 40 */	stw r3, 0x40(r27)
/* 800206C8 0001D628  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 800206CC 0001D62C  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 800206D0 0001D630  80 7B 00 1C */	lwz r3, 0x1c(r27)
/* 800206D4 0001D634  38 84 02 E2 */	addi r4, r4, 0x2e2
/* 800206D8 0001D638  48 2A 1A 7D */	bl FindWidget__9CGuiFrameCFPCc
/* 800206DC 0001D63C  90 7B 00 44 */	stw r3, 0x44(r27)
/* 800206E0 0001D640  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 800206E4 0001D644  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 800206E8 0001D648  80 7B 00 1C */	lwz r3, 0x1c(r27)
/* 800206EC 0001D64C  38 84 02 05 */	addi r4, r4, 0x205
/* 800206F0 0001D650  48 2A 1A 65 */	bl FindWidget__9CGuiFrameCFPCc
/* 800206F4 0001D654  90 7B 00 60 */	stw r3, 0x60(r27)
/* 800206F8 0001D658  38 80 00 61 */	li r4, 0x61
/* 800206FC 0001D65C  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 80020700 0001D660  48 33 5F FD */	bl GetString__12CStringTableCFi
/* 80020704 0001D664  3C 80 80 3D */	lis r4, lbl_803CC644@ha
/* 80020708 0001D668  7C 65 1B 78 */	mr r5, r3
/* 8002070C 0001D66C  38 84 C6 44 */	addi r4, r4, lbl_803CC644@l
/* 80020710 0001D670  80 7B 00 1C */	lwz r3, 0x1c(r27)
/* 80020714 0001D674  38 84 01 E5 */	addi r4, r4, 0x1e5
/* 80020718 0001D678  48 00 27 6D */	bl FindAndSetPairText__14SFrontEndFrameFR9CGuiFramePCcRCQ24rstl7wstring
/* 8002071C 0001D67C  3C 80 80 3D */	lis r4, lbl_803CC644@ha
/* 80020720 0001D680  80 7B 00 1C */	lwz r3, 0x1c(r27)
/* 80020724 0001D684  38 84 C6 44 */	addi r4, r4, lbl_803CC644@l
/* 80020728 0001D688  38 84 01 F4 */	addi r4, r4, 0x1f4
/* 8002072C 0001D68C  48 2A 1A 29 */	bl FindWidget__9CGuiFrameCFPCc
/* 80020730 0001D690  7C 7C 1B 79 */	or. r28, r3, r3
/* 80020734 0001D694  41 82 00 34 */	beq lbl_80020768
/* 80020738 0001D698  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8002073C 0001D69C  38 80 00 55 */	li r4, 0x55
/* 80020740 0001D6A0  48 33 5F BD */	bl GetString__12CStringTableCFi
/* 80020744 0001D6A4  7C 64 1B 78 */	mr r4, r3
/* 80020748 0001D6A8  38 61 00 EC */	addi r3, r1, 0xec
/* 8002074C 0001D6AC  4B FF 52 A5 */	bl wstring_l__4rstlFPCw
/* 80020750 0001D6B0  38 7C 00 D4 */	addi r3, r28, 0xd4
/* 80020754 0001D6B4  38 81 00 EC */	addi r4, r1, 0xec
/* 80020758 0001D6B8  38 A0 00 00 */	li r5, 0
/* 8002075C 0001D6BC  48 2A 91 29 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80020760 0001D6C0  38 61 00 EC */	addi r3, r1, 0xec
/* 80020764 0001D6C4  48 31 C9 D1 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
lbl_80020768:
/* 80020768 0001D6C8  80 7B 00 40 */	lwz r3, 0x40(r27)
/* 8002076C 0001D6CC  38 80 00 00 */	li r4, 0
/* 80020770 0001D6D0  48 2A 9E BD */	bl SetIsVisible__10CGuiWidgetFb
/* 80020774 0001D6D4  80 7B 00 40 */	lwz r3, 0x40(r27)
/* 80020778 0001D6D8  38 80 00 00 */	li r4, 0
/* 8002077C 0001D6DC  48 2A 9E 69 */	bl SetIsActive__10CGuiWidgetFb
/* 80020780 0001D6E0  80 7B 00 40 */	lwz r3, 0x40(r27)
/* 80020784 0001D6E4  38 00 00 00 */	li r0, 0
/* 80020788 0001D6E8  38 80 00 02 */	li r4, 2
/* 8002078C 0001D6EC  98 03 00 D1 */	stb r0, 0xd1(r3)
/* 80020790 0001D6F0  80 7B 00 40 */	lwz r3, 0x40(r27)
/* 80020794 0001D6F4  81 83 00 00 */	lwz r12, 0(r3)
/* 80020798 0001D6F8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8002079C 0001D6FC  7D 89 03 A6 */	mtctr r12
/* 800207A0 0001D700  4E 80 04 21 */	bctrl
/* 800207A4 0001D704  88 03 00 B6 */	lbz r0, 0xb6(r3)
/* 800207A8 0001D708  38 80 00 00 */	li r4, 0
/* 800207AC 0001D70C  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 800207B0 0001D710  38 80 00 02 */	li r4, 2
/* 800207B4 0001D714  98 03 00 B6 */	stb r0, 0xb6(r3)
/* 800207B8 0001D718  80 7B 00 40 */	lwz r3, 0x40(r27)
/* 800207BC 0001D71C  81 83 00 00 */	lwz r12, 0(r3)
/* 800207C0 0001D720  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 800207C4 0001D724  7D 89 03 A6 */	mtctr r12
/* 800207C8 0001D728  4E 80 04 21 */	bctrl
/* 800207CC 0001D72C  38 80 00 00 */	li r4, 0
/* 800207D0 0001D730  38 A0 00 01 */	li r5, 1
/* 800207D4 0001D734  48 2A 9F 15 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 800207D8 0001D738  80 FF 00 24 */	lwz r7, 0x24(r31)
/* 800207DC 0001D73C  38 61 00 74 */	addi r3, r1, 0x74
/* 800207E0 0001D740  80 DF 00 28 */	lwz r6, 0x28(r31)
/* 800207E4 0001D744  38 81 00 E0 */	addi r4, r1, 0xe0
/* 800207E8 0001D748  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 800207EC 0001D74C  38 A0 00 0C */	li r5, 0xc
/* 800207F0 0001D750  90 E1 00 E0 */	stw r7, 0xe0(r1)
/* 800207F4 0001D754  90 C1 00 E4 */	stw r6, 0xe4(r1)
/* 800207F8 0001D758  90 01 00 E8 */	stw r0, 0xe8(r1)
/* 800207FC 0001D75C  4B FE 2C 95 */	bl memcpy
/* 80020800 0001D760  3C 60 80 02 */	lis r3, sub_80020b98@ha
/* 80020804 0001D764  93 61 01 84 */	stw r27, 0x184(r1)
/* 80020808 0001D768  38 03 0B 98 */	addi r0, r3, sub_80020b98@l
/* 8002080C 0001D76C  38 61 01 88 */	addi r3, r1, 0x188
/* 80020810 0001D770  90 01 01 80 */	stw r0, 0x180(r1)
/* 80020814 0001D774  38 81 00 74 */	addi r4, r1, 0x74
/* 80020818 0001D778  38 A0 00 0C */	li r5, 0xc
/* 8002081C 0001D77C  4B FE 2C 75 */	bl memcpy
/* 80020820 0001D780  80 7B 00 20 */	lwz r3, 0x20(r27)
/* 80020824 0001D784  38 81 01 80 */	addi r4, r1, 0x180
/* 80020828 0001D788  48 2A 60 31 */	bl "SetMenuAdvanceCallback__14CGuiTableGroupFRC29TFunctor1<CP14CGuiTableGroup>"
/* 8002082C 0001D78C  80 FF 00 30 */	lwz r7, 0x30(r31)
/* 80020830 0001D790  38 61 00 68 */	addi r3, r1, 0x68
/* 80020834 0001D794  80 DF 00 34 */	lwz r6, 0x34(r31)
/* 80020838 0001D798  38 81 00 D4 */	addi r4, r1, 0xd4
/* 8002083C 0001D79C  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 80020840 0001D7A0  38 A0 00 0C */	li r5, 0xc
/* 80020844 0001D7A4  90 E1 00 D4 */	stw r7, 0xd4(r1)
/* 80020848 0001D7A8  90 C1 00 D8 */	stw r6, 0xd8(r1)
/* 8002084C 0001D7AC  90 01 00 DC */	stw r0, 0xdc(r1)
/* 80020850 0001D7B0  4B FE 2C 41 */	bl memcpy
/* 80020854 0001D7B4  3C 60 80 02 */	lis r3, sub_80020b34@ha
/* 80020858 0001D7B8  93 61 01 6C */	stw r27, 0x16c(r1)
/* 8002085C 0001D7BC  38 03 0B 34 */	addi r0, r3, sub_80020b34@l
/* 80020860 0001D7C0  38 61 01 70 */	addi r3, r1, 0x170
/* 80020864 0001D7C4  90 01 01 68 */	stw r0, 0x168(r1)
/* 80020868 0001D7C8  38 81 00 68 */	addi r4, r1, 0x68
/* 8002086C 0001D7CC  38 A0 00 0C */	li r5, 0xc
/* 80020870 0001D7D0  4B FE 2C 21 */	bl memcpy
/* 80020874 0001D7D4  80 7B 00 20 */	lwz r3, 0x20(r27)
/* 80020878 0001D7D8  38 81 01 68 */	addi r4, r1, 0x168
/* 8002087C 0001D7DC  48 2A 5F 75 */	bl "SetMenuSelectionChangeCallback__14CGuiTableGroupFRC35TFunctor3<CP14CGuiTableGroup,Ci,Ci>"
/* 80020880 0001D7E0  80 FF 00 3C */	lwz r7, 0x3c(r31)
/* 80020884 0001D7E4  38 61 00 5C */	addi r3, r1, 0x5c
/* 80020888 0001D7E8  80 DF 00 40 */	lwz r6, 0x40(r31)
/* 8002088C 0001D7EC  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80020890 0001D7F0  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 80020894 0001D7F4  38 A0 00 0C */	li r5, 0xc
/* 80020898 0001D7F8  90 E1 00 C8 */	stw r7, 0xc8(r1)
/* 8002089C 0001D7FC  90 C1 00 CC */	stw r6, 0xcc(r1)
/* 800208A0 0001D800  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 800208A4 0001D804  4B FE 2B ED */	bl memcpy
/* 800208A8 0001D808  3C 60 80 02 */	lis r3, sub_80020b98@ha
/* 800208AC 0001D80C  93 61 01 54 */	stw r27, 0x154(r1)
/* 800208B0 0001D810  38 03 0B 98 */	addi r0, r3, sub_80020b98@l
/* 800208B4 0001D814  38 61 01 58 */	addi r3, r1, 0x158
/* 800208B8 0001D818  90 01 01 50 */	stw r0, 0x150(r1)
/* 800208BC 0001D81C  38 81 00 5C */	addi r4, r1, 0x5c
/* 800208C0 0001D820  38 A0 00 0C */	li r5, 0xc
/* 800208C4 0001D824  4B FE 2B CD */	bl memcpy
/* 800208C8 0001D828  80 7B 00 20 */	lwz r3, 0x20(r27)
/* 800208CC 0001D82C  38 81 01 50 */	addi r4, r1, 0x150
/* 800208D0 0001D830  48 2A 5F 55 */	bl "SetMenuCancelCallback__14CGuiTableGroupFRC29TFunctor1<CP14CGuiTableGroup>"
/* 800208D4 0001D834  80 FF 00 48 */	lwz r7, 0x48(r31)
/* 800208D8 0001D838  38 61 00 50 */	addi r3, r1, 0x50
/* 800208DC 0001D83C  80 DF 00 4C */	lwz r6, 0x4c(r31)
/* 800208E0 0001D840  38 81 00 BC */	addi r4, r1, 0xbc
/* 800208E4 0001D844  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 800208E8 0001D848  38 A0 00 0C */	li r5, 0xc
/* 800208EC 0001D84C  90 E1 00 BC */	stw r7, 0xbc(r1)
/* 800208F0 0001D850  90 C1 00 C0 */	stw r6, 0xc0(r1)
/* 800208F4 0001D854  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 800208F8 0001D858  4B FE 2B 99 */	bl memcpy
/* 800208FC 0001D85C  3C 60 80 02 */	lis r3, sub_80020b98@ha
/* 80020900 0001D860  93 61 01 3C */	stw r27, 0x13c(r1)
/* 80020904 0001D864  38 03 0B 98 */	addi r0, r3, sub_80020b98@l
/* 80020908 0001D868  38 61 01 40 */	addi r3, r1, 0x140
/* 8002090C 0001D86C  90 01 01 38 */	stw r0, 0x138(r1)
/* 80020910 0001D870  38 81 00 50 */	addi r4, r1, 0x50
/* 80020914 0001D874  38 A0 00 0C */	li r5, 0xc
/* 80020918 0001D878  4B FE 2B 79 */	bl memcpy
/* 8002091C 0001D87C  80 7B 00 40 */	lwz r3, 0x40(r27)
/* 80020920 0001D880  38 81 01 38 */	addi r4, r1, 0x138
/* 80020924 0001D884  48 2A 5F 35 */	bl "SetMenuAdvanceCallback__14CGuiTableGroupFRC29TFunctor1<CP14CGuiTableGroup>"
/* 80020928 0001D888  80 FF 00 54 */	lwz r7, 0x54(r31)
/* 8002092C 0001D88C  38 61 00 44 */	addi r3, r1, 0x44
/* 80020930 0001D890  80 DF 00 58 */	lwz r6, 0x58(r31)
/* 80020934 0001D894  38 81 00 B0 */	addi r4, r1, 0xb0
/* 80020938 0001D898  80 1F 00 5C */	lwz r0, 0x5c(r31)
/* 8002093C 0001D89C  38 A0 00 0C */	li r5, 0xc
/* 80020940 0001D8A0  90 E1 00 B0 */	stw r7, 0xb0(r1)
/* 80020944 0001D8A4  90 C1 00 B4 */	stw r6, 0xb4(r1)
/* 80020948 0001D8A8  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 8002094C 0001D8AC  4B FE 2B 45 */	bl memcpy
/* 80020950 0001D8B0  3C 60 80 02 */	lis r3, sub_80020b34@ha
/* 80020954 0001D8B4  93 61 01 24 */	stw r27, 0x124(r1)
/* 80020958 0001D8B8  38 03 0B 34 */	addi r0, r3, sub_80020b34@l
/* 8002095C 0001D8BC  38 61 01 28 */	addi r3, r1, 0x128
/* 80020960 0001D8C0  90 01 01 20 */	stw r0, 0x120(r1)
/* 80020964 0001D8C4  38 81 00 44 */	addi r4, r1, 0x44
/* 80020968 0001D8C8  38 A0 00 0C */	li r5, 0xc
/* 8002096C 0001D8CC  4B FE 2B 25 */	bl memcpy
/* 80020970 0001D8D0  80 7B 00 40 */	lwz r3, 0x40(r27)
/* 80020974 0001D8D4  38 81 01 20 */	addi r4, r1, 0x120
/* 80020978 0001D8D8  48 2A 5E 79 */	bl "SetMenuSelectionChangeCallback__14CGuiTableGroupFRC35TFunctor3<CP14CGuiTableGroup,Ci,Ci>"
/* 8002097C 0001D8DC  80 FF 00 60 */	lwz r7, 0x60(r31)
/* 80020980 0001D8E0  38 61 00 38 */	addi r3, r1, 0x38
/* 80020984 0001D8E4  80 DF 00 64 */	lwz r6, 0x64(r31)
/* 80020988 0001D8E8  38 81 00 A4 */	addi r4, r1, 0xa4
/* 8002098C 0001D8EC  80 1F 00 68 */	lwz r0, 0x68(r31)
/* 80020990 0001D8F0  38 A0 00 0C */	li r5, 0xc
/* 80020994 0001D8F4  90 E1 00 A4 */	stw r7, 0xa4(r1)
/* 80020998 0001D8F8  90 C1 00 A8 */	stw r6, 0xa8(r1)
/* 8002099C 0001D8FC  90 01 00 AC */	stw r0, 0xac(r1)
/* 800209A0 0001D900  4B FE 2A F1 */	bl memcpy
/* 800209A4 0001D904  3C 60 80 02 */	lis r3, sub_80020b98@ha
/* 800209A8 0001D908  93 61 01 0C */	stw r27, 0x10c(r1)
/* 800209AC 0001D90C  38 03 0B 98 */	addi r0, r3, sub_80020b98@l
/* 800209B0 0001D910  38 61 01 10 */	addi r3, r1, 0x110
/* 800209B4 0001D914  90 01 01 08 */	stw r0, 0x108(r1)
/* 800209B8 0001D918  38 81 00 38 */	addi r4, r1, 0x38
/* 800209BC 0001D91C  38 A0 00 0C */	li r5, 0xc
/* 800209C0 0001D920  4B FE 2A D1 */	bl memcpy
/* 800209C4 0001D924  80 7B 00 40 */	lwz r3, 0x40(r27)
/* 800209C8 0001D928  38 81 01 08 */	addi r4, r1, 0x108
/* 800209CC 0001D92C  48 2A 5E 59 */	bl "SetMenuCancelCallback__14CGuiTableGroupFRC29TFunctor1<CP14CGuiTableGroup>"
/* 800209D0 0001D930  3B C1 01 9C */	addi r30, r1, 0x19c
/* 800209D4 0001D934  3B BB 00 68 */	addi r29, r27, 0x68
/* 800209D8 0001D938  3B FE 00 04 */	addi r31, r30, 4
/* 800209DC 0001D93C  3B 80 00 00 */	li r28, 0
lbl_800209E0:
/* 800209E0 0001D940  80 9B 00 1C */	lwz r4, 0x1c(r27)
/* 800209E4 0001D944  7F 85 E3 78 */	mr r5, r28
/* 800209E8 0001D948  38 61 01 98 */	addi r3, r1, 0x198
/* 800209EC 0001D94C  48 00 04 ED */	bl FindFileSelectOption__19SNewFileSelectFrameFP9CGuiFramei
/* 800209F0 0001D950  80 1B 00 64 */	lwz r0, 0x64(r27)
/* 800209F4 0001D954  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800209F8 0001D958  7C 7D 02 15 */	add. r3, r29, r0
/* 800209FC 0001D95C  41 82 00 60 */	beq lbl_80020A5C
/* 80020A00 0001D960  80 01 01 98 */	lwz r0, 0x198(r1)
/* 80020A04 0001D964  7F E5 FB 78 */	mr r5, r31
/* 80020A08 0001D968  38 83 00 08 */	addi r4, r3, 8
/* 80020A0C 0001D96C  90 03 00 00 */	stw r0, 0(r3)
/* 80020A10 0001D970  80 01 01 9C */	lwz r0, 0x19c(r1)
/* 80020A14 0001D974  90 03 00 04 */	stw r0, 4(r3)
/* 80020A18 0001D978  80 03 00 04 */	lwz r0, 4(r3)
/* 80020A1C 0001D97C  7C 09 03 A6 */	mtctr r0
/* 80020A20 0001D980  2C 00 00 00 */	cmpwi r0, 0
/* 80020A24 0001D984  40 81 00 28 */	ble lbl_80020A4C
lbl_80020A28:
/* 80020A28 0001D988  28 04 00 00 */	cmplwi r4, 0
/* 80020A2C 0001D98C  41 82 00 14 */	beq lbl_80020A40
/* 80020A30 0001D990  80 05 00 00 */	lwz r0, 0(r5)
/* 80020A34 0001D994  90 04 00 00 */	stw r0, 0(r4)
/* 80020A38 0001D998  80 05 00 04 */	lwz r0, 4(r5)
/* 80020A3C 0001D99C  90 04 00 04 */	stw r0, 4(r4)
lbl_80020A40:
/* 80020A40 0001D9A0  38 84 00 08 */	addi r4, r4, 8
/* 80020A44 0001D9A4  38 A5 00 08 */	addi r5, r5, 8
/* 80020A48 0001D9A8  42 00 FF E0 */	bdnz lbl_80020A28
lbl_80020A4C:
/* 80020A4C 0001D9AC  80 01 01 C0 */	lwz r0, 0x1c0(r1)
/* 80020A50 0001D9B0  90 03 00 28 */	stw r0, 0x28(r3)
/* 80020A54 0001D9B4  C0 01 01 C4 */	lfs f0, 0x1c4(r1)
/* 80020A58 0001D9B8  D0 03 00 2C */	stfs f0, 0x2c(r3)
lbl_80020A5C:
/* 80020A5C 0001D9BC  80 7B 00 64 */	lwz r3, 0x64(r27)
/* 80020A60 0001D9C0  28 1E 00 00 */	cmplwi r30, 0
/* 80020A64 0001D9C4  38 03 00 01 */	addi r0, r3, 1
/* 80020A68 0001D9C8  90 1B 00 64 */	stw r0, 0x64(r27)
/* 80020A6C 0001D9CC  41 82 00 5C */	beq lbl_80020AC8
/* 80020A70 0001D9D0  80 A1 01 9C */	lwz r5, 0x19c(r1)
/* 80020A74 0001D9D4  38 60 00 00 */	li r3, 0
/* 80020A78 0001D9D8  2C 05 00 00 */	cmpwi r5, 0
/* 80020A7C 0001D9DC  40 81 00 44 */	ble lbl_80020AC0
/* 80020A80 0001D9E0  2C 05 00 08 */	cmpwi r5, 8
/* 80020A84 0001D9E4  38 85 FF F8 */	addi r4, r5, -8
/* 80020A88 0001D9E8  40 81 00 20 */	ble lbl_80020AA8
/* 80020A8C 0001D9EC  38 04 00 07 */	addi r0, r4, 7
/* 80020A90 0001D9F0  54 00 E8 FE */	srwi r0, r0, 3
/* 80020A94 0001D9F4  7C 09 03 A6 */	mtctr r0
/* 80020A98 0001D9F8  2C 04 00 00 */	cmpwi r4, 0
/* 80020A9C 0001D9FC  40 81 00 0C */	ble lbl_80020AA8
lbl_80020AA0:
/* 80020AA0 0001DA00  38 63 00 08 */	addi r3, r3, 8
/* 80020AA4 0001DA04  42 00 FF FC */	bdnz lbl_80020AA0
lbl_80020AA8:
/* 80020AA8 0001DA08  7C 03 28 50 */	subf r0, r3, r5
/* 80020AAC 0001DA0C  7C 09 03 A6 */	mtctr r0
/* 80020AB0 0001DA10  7C 03 28 00 */	cmpw r3, r5
/* 80020AB4 0001DA14  40 80 00 0C */	bge lbl_80020AC0
lbl_80020AB8:
/* 80020AB8 0001DA18  38 63 00 01 */	addi r3, r3, 1
/* 80020ABC 0001DA1C  42 00 FF FC */	bdnz lbl_80020AB8
lbl_80020AC0:
/* 80020AC0 0001DA20  38 00 00 00 */	li r0, 0
/* 80020AC4 0001DA24  90 01 01 9C */	stw r0, 0x19c(r1)
lbl_80020AC8:
/* 80020AC8 0001DA28  3B 9C 00 01 */	addi r28, r28, 1
/* 80020ACC 0001DA2C  2C 1C 00 03 */	cmpwi r28, 3
/* 80020AD0 0001DA30  41 80 FF 10 */	blt lbl_800209E0
/* 80020AD4 0001DA34  80 9D 00 00 */	lwz r4, 0(r29)
/* 80020AD8 0001DA38  38 61 00 80 */	addi r3, r1, 0x80
/* 80020ADC 0001DA3C  48 2A 47 41 */	bl GetLocalPosition__10CGuiObjectCFv
/* 80020AE0 0001DA40  80 9D 00 30 */	lwz r4, 0x30(r29)
/* 80020AE4 0001DA44  38 61 00 8C */	addi r3, r1, 0x8c
/* 80020AE8 0001DA48  48 2A 47 35 */	bl GetLocalPosition__10CGuiObjectCFv
/* 80020AEC 0001DA4C  C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 80020AF0 0001DA50  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80020AF4 0001DA54  C0 61 00 90 */	lfs f3, 0x90(r1)
/* 80020AF8 0001DA58  C0 41 00 84 */	lfs f2, 0x84(r1)
/* 80020AFC 0001DA5C  EC 81 00 28 */	fsubs f4, f1, f0
/* 80020B00 0001DA60  C0 21 00 94 */	lfs f1, 0x94(r1)
/* 80020B04 0001DA64  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80020B08 0001DA68  EC 43 10 28 */	fsubs f2, f3, f2
/* 80020B0C 0001DA6C  D0 81 00 98 */	stfs f4, 0x98(r1)
/* 80020B10 0001DA70  EC 01 00 28 */	fsubs f0, f1, f0
/* 80020B14 0001DA74  D0 41 00 9C */	stfs f2, 0x9c(r1)
/* 80020B18 0001DA78  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80020B1C 0001DA7C  D0 1B 01 04 */	stfs f0, 0x104(r27)
/* 80020B20 0001DA80  BB 61 01 CC */	lmw r27, 0x1cc(r1)
/* 80020B24 0001DA84  80 01 01 E4 */	lwz r0, 0x1e4(r1)
/* 80020B28 0001DA88  7C 08 03 A6 */	mtlr r0
/* 80020B2C 0001DA8C  38 21 01 E0 */	addi r1, r1, 0x1e0
/* 80020B30 0001DA90  4E 80 00 20 */	blr

.global sub_80020b34
sub_80020b34:
/* 80020B34 0001DA94  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80020B38 0001DA98  7C 08 02 A6 */	mflr r0
/* 80020B3C 0001DA9C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80020B40 0001DAA0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80020B44 0001DAA4  7C DF 33 78 */	mr r31, r6
/* 80020B48 0001DAA8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80020B4C 0001DAAC  7C BE 2B 78 */	mr r30, r5
/* 80020B50 0001DAB0  38 A0 00 0C */	li r5, 0xc
/* 80020B54 0001DAB4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80020B58 0001DAB8  7C 7D 1B 78 */	mr r29, r3
/* 80020B5C 0001DABC  38 61 00 08 */	addi r3, r1, 8
/* 80020B60 0001DAC0  4B FE 29 31 */	bl memcpy
/* 80020B64 0001DAC4  7F A3 EB 78 */	mr r3, r29
/* 80020B68 0001DAC8  7F C4 F3 78 */	mr r4, r30
/* 80020B6C 0001DACC  7F E5 FB 78 */	mr r5, r31
/* 80020B70 0001DAD0  39 81 00 08 */	addi r12, r1, 8
/* 80020B74 0001DAD4  48 36 8D B9 */	bl __ptmf_scall
/* 80020B78 0001DAD8  60 00 00 00 */	nop
/* 80020B7C 0001DADC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80020B80 0001DAE0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80020B84 0001DAE4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80020B88 0001DAE8  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80020B8C 0001DAEC  7C 08 03 A6 */	mtlr r0
/* 80020B90 0001DAF0  38 21 00 30 */	addi r1, r1, 0x30
/* 80020B94 0001DAF4  4E 80 00 20 */	blr

.global sub_80020b98
sub_80020b98:
/* 80020B98 0001DAF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80020B9C 0001DAFC  7C 08 02 A6 */	mflr r0
/* 80020BA0 0001DB00  90 01 00 24 */	stw r0, 0x24(r1)
/* 80020BA4 0001DB04  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80020BA8 0001DB08  7C BF 2B 78 */	mr r31, r5
/* 80020BAC 0001DB0C  38 A0 00 0C */	li r5, 0xc
/* 80020BB0 0001DB10  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80020BB4 0001DB14  7C 7E 1B 78 */	mr r30, r3
/* 80020BB8 0001DB18  38 61 00 08 */	addi r3, r1, 8
/* 80020BBC 0001DB1C  4B FE 28 D5 */	bl memcpy
/* 80020BC0 0001DB20  7F C3 F3 78 */	mr r3, r30
/* 80020BC4 0001DB24  7F E4 FB 78 */	mr r4, r31
/* 80020BC8 0001DB28  39 81 00 08 */	addi r12, r1, 8
/* 80020BCC 0001DB2C  48 36 8D 61 */	bl __ptmf_scall
/* 80020BD0 0001DB30  60 00 00 00 */	nop
/* 80020BD4 0001DB34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80020BD8 0001DB38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80020BDC 0001DB3C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80020BE0 0001DB40  7C 08 03 A6 */	mtlr r0
/* 80020BE4 0001DB44  38 21 00 20 */	addi r1, r1, 0x20
/* 80020BE8 0001DB48  4E 80 00 20 */	blr

.global PumpLoad__19SNewFileSelectFrameFv
PumpLoad__19SNewFileSelectFrameFv:
/* 80020BEC 0001DB4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80020BF0 0001DB50  7C 08 02 A6 */	mflr r0
/* 80020BF4 0001DB54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80020BF8 0001DB58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80020BFC 0001DB5C  93 C1 00 08 */	stw r30, 8(r1)
/* 80020C00 0001DB60  7C 7E 1B 78 */	mr r30, r3
/* 80020C04 0001DB64  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80020C08 0001DB68  28 00 00 00 */	cmplwi r0, 0
/* 80020C0C 0001DB6C  41 82 00 0C */	beq lbl_80020C18
/* 80020C10 0001DB70  38 60 00 01 */	li r3, 1
/* 80020C14 0001DB74  48 00 00 84 */	b lbl_80020C98
lbl_80020C18:
/* 80020C18 0001DB78  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 80020C1C 0001DB7C  28 00 00 00 */	cmplwi r0, 0
/* 80020C20 0001DB80  41 82 00 0C */	beq lbl_80020C2C
/* 80020C24 0001DB84  38 60 00 01 */	li r3, 1
/* 80020C28 0001DB88  48 00 00 3C */	b lbl_80020C64
lbl_80020C2C:
/* 80020C2C 0001DB8C  88 1E 00 14 */	lbz r0, 0x14(r30)
/* 80020C30 0001DB90  28 00 00 00 */	cmplwi r0, 0
/* 80020C34 0001DB94  41 82 00 2C */	beq lbl_80020C60
/* 80020C38 0001DB98  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80020C3C 0001DB9C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80020C40 0001DBA0  28 00 00 00 */	cmplwi r0, 0
/* 80020C44 0001DBA4  41 82 00 1C */	beq lbl_80020C60
/* 80020C48 0001DBA8  38 7E 00 10 */	addi r3, r30, 0x10
/* 80020C4C 0001DBAC  48 32 01 C1 */	bl GetObj__6CTokenFv
/* 80020C50 0001DBB0  80 03 00 04 */	lwz r0, 4(r3)
/* 80020C54 0001DBB4  38 60 00 01 */	li r3, 1
/* 80020C58 0001DBB8  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80020C5C 0001DBBC  48 00 00 08 */	b lbl_80020C64
lbl_80020C60:
/* 80020C60 0001DBC0  38 60 00 00 */	li r3, 0
lbl_80020C64:
/* 80020C64 0001DBC4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80020C68 0001DBC8  41 82 00 2C */	beq lbl_80020C94
/* 80020C6C 0001DBCC  83 FE 00 18 */	lwz r31, 0x18(r30)
/* 80020C70 0001DBD0  7F E3 FB 78 */	mr r3, r31
/* 80020C74 0001DBD4  48 2A 18 DD */	bl GetIsFinishedLoading__9CGuiFrameCFv
/* 80020C78 0001DBD8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80020C7C 0001DBDC  41 82 00 18 */	beq lbl_80020C94
/* 80020C80 0001DBE0  93 FE 00 1C */	stw r31, 0x1c(r30)
/* 80020C84 0001DBE4  7F C3 F3 78 */	mr r3, r30
/* 80020C88 0001DBE8  4B FF F8 C9 */	bl FinishedLoading__19SNewFileSelectFrame
/* 80020C8C 0001DBEC  38 60 00 01 */	li r3, 1
/* 80020C90 0001DBF0  48 00 00 08 */	b lbl_80020C98
lbl_80020C94:
/* 80020C94 0001DBF4  38 60 00 00 */	li r3, 0
lbl_80020C98:
/* 80020C98 0001DBF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80020C9C 0001DBFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80020CA0 0001DC00  83 C1 00 08 */	lwz r30, 8(r1)
/* 80020CA4 0001DC04  7C 08 03 A6 */	mtlr r0
/* 80020CA8 0001DC08  38 21 00 10 */	addi r1, r1, 0x10
/* 80020CAC 0001DC0C  4E 80 00 20 */	blr

.global __dt__19SNewFileSelectFrameFv
__dt__19SNewFileSelectFrameFv:
/* 80020CB0 0001DC10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80020CB4 0001DC14  7C 08 02 A6 */	mflr r0
/* 80020CB8 0001DC18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80020CBC 0001DC1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80020CC0 0001DC20  7C 9F 23 78 */	mr r31, r4
/* 80020CC4 0001DC24  93 C1 00 08 */	stw r30, 8(r1)
/* 80020CC8 0001DC28  7C 7E 1B 79 */	or. r30, r3, r3
/* 80020CCC 0001DC2C  41 82 00 C8 */	beq lbl_80020D94
/* 80020CD0 0001DC30  34 1E 00 64 */	addic. r0, r30, 0x64
/* 80020CD4 0001DC34  41 82 00 94 */	beq lbl_80020D68
/* 80020CD8 0001DC38  38 DE 00 68 */	addi r6, r30, 0x68
/* 80020CDC 0001DC3C  38 60 00 00 */	li r3, 0
/* 80020CE0 0001DC40  48 00 00 74 */	b lbl_80020D54
lbl_80020CE4:
/* 80020CE4 0001DC44  28 06 00 00 */	cmplwi r6, 0
/* 80020CE8 0001DC48  41 82 00 64 */	beq lbl_80020D4C
/* 80020CEC 0001DC4C  34 06 00 04 */	addic. r0, r6, 4
/* 80020CF0 0001DC50  41 82 00 5C */	beq lbl_80020D4C
/* 80020CF4 0001DC54  80 E6 00 04 */	lwz r7, 4(r6)
/* 80020CF8 0001DC58  38 80 00 00 */	li r4, 0
/* 80020CFC 0001DC5C  2C 07 00 00 */	cmpwi r7, 0
/* 80020D00 0001DC60  40 81 00 44 */	ble lbl_80020D44
/* 80020D04 0001DC64  2C 07 00 08 */	cmpwi r7, 8
/* 80020D08 0001DC68  38 A7 FF F8 */	addi r5, r7, -8
/* 80020D0C 0001DC6C  40 81 00 20 */	ble lbl_80020D2C
/* 80020D10 0001DC70  38 05 00 07 */	addi r0, r5, 7
/* 80020D14 0001DC74  54 00 E8 FE */	srwi r0, r0, 3
/* 80020D18 0001DC78  7C 09 03 A6 */	mtctr r0
/* 80020D1C 0001DC7C  2C 05 00 00 */	cmpwi r5, 0
/* 80020D20 0001DC80  40 81 00 0C */	ble lbl_80020D2C
lbl_80020D24:
/* 80020D24 0001DC84  38 84 00 08 */	addi r4, r4, 8
/* 80020D28 0001DC88  42 00 FF FC */	bdnz lbl_80020D24
lbl_80020D2C:
/* 80020D2C 0001DC8C  7C 04 38 50 */	subf r0, r4, r7
/* 80020D30 0001DC90  7C 09 03 A6 */	mtctr r0
/* 80020D34 0001DC94  7C 04 38 00 */	cmpw r4, r7
/* 80020D38 0001DC98  40 80 00 0C */	bge lbl_80020D44
lbl_80020D3C:
/* 80020D3C 0001DC9C  38 84 00 01 */	addi r4, r4, 1
/* 80020D40 0001DCA0  42 00 FF FC */	bdnz lbl_80020D3C
lbl_80020D44:
/* 80020D44 0001DCA4  38 00 00 00 */	li r0, 0
/* 80020D48 0001DCA8  90 06 00 04 */	stw r0, 4(r6)
lbl_80020D4C:
/* 80020D4C 0001DCAC  38 C6 00 30 */	addi r6, r6, 0x30
/* 80020D50 0001DCB0  38 63 00 01 */	addi r3, r3, 1
lbl_80020D54:
/* 80020D54 0001DCB4  80 1E 00 64 */	lwz r0, 0x64(r30)
/* 80020D58 0001DCB8  7C 03 00 00 */	cmpw r3, r0
/* 80020D5C 0001DCBC  41 80 FF 88 */	blt lbl_80020CE4
/* 80020D60 0001DCC0  38 00 00 00 */	li r0, 0
/* 80020D64 0001DCC4  90 1E 00 64 */	stw r0, 0x64(r30)
lbl_80020D68:
/* 80020D68 0001DCC8  34 1E 00 10 */	addic. r0, r30, 0x10
/* 80020D6C 0001DCCC  41 82 00 18 */	beq lbl_80020D84
/* 80020D70 0001DCD0  34 1E 00 10 */	addic. r0, r30, 0x10
/* 80020D74 0001DCD4  41 82 00 10 */	beq lbl_80020D84
/* 80020D78 0001DCD8  38 7E 00 10 */	addi r3, r30, 0x10
/* 80020D7C 0001DCDC  38 80 00 00 */	li r4, 0
/* 80020D80 0001DCE0  48 32 00 C1 */	bl __dt__6CTokenFv
lbl_80020D84:
/* 80020D84 0001DCE4  7F E0 07 35 */	extsh. r0, r31
/* 80020D88 0001DCE8  40 81 00 0C */	ble lbl_80020D94
/* 80020D8C 0001DCEC  7F C3 F3 78 */	mr r3, r30
/* 80020D90 0001DCF0  48 2F 4B A1 */	bl Free__7CMemoryFPCv
lbl_80020D94:
/* 80020D94 0001DCF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80020D98 0001DCF8  7F C3 F3 78 */	mr r3, r30
/* 80020D9C 0001DCFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80020DA0 0001DD00  83 C1 00 08 */	lwz r30, 8(r1)
/* 80020DA4 0001DD04  7C 08 03 A6 */	mtlr r0
/* 80020DA8 0001DD08  38 21 00 10 */	addi r1, r1, 0x10
/* 80020DAC 0001DD0C  4E 80 00 20 */	blr

.global __ct__19SNewFileSelectFrameFv
__ct__19SNewFileSelectFrameFv:
/* 80020DB0 0001DD10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80020DB4 0001DD14  7C 08 02 A6 */	mflr r0
/* 80020DB8 0001DD18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80020DBC 0001DD1C  38 00 00 00 */	li r0, 0
/* 80020DC0 0001DD20  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80020DC4 0001DD24  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80020DC8 0001DD28  7C 7E 1B 78 */	mr r30, r3
/* 80020DCC 0001DD2C  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 80020DD0 0001DD30  90 BE 00 00 */	stw r5, 0(r30)
/* 80020DD4 0001DD34  38 A3 C6 44 */	addi r5, r3, lbl_803CC644@l
/* 80020DD8 0001DD38  38 61 00 08 */	addi r3, r1, 8
/* 80020DDC 0001DD3C  90 9E 00 04 */	stw r4, 4(r30)
/* 80020DE0 0001DD40  38 A5 02 EE */	addi r5, r5, 0x2ee
/* 80020DE4 0001DD44  90 1E 00 08 */	stw r0, 8(r30)
/* 80020DE8 0001DD48  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80020DEC 0001DD4C  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 80020DF0 0001DD50  81 84 00 00 */	lwz r12, 0(r4)
/* 80020DF4 0001DD54  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80020DF8 0001DD58  7D 89 03 A6 */	mtctr r12
/* 80020DFC 0001DD5C  4E 80 04 21 */	bctrl
/* 80020E00 0001DD60  3B FE 00 10 */	addi r31, r30, 0x10
/* 80020E04 0001DD64  38 81 00 08 */	addi r4, r1, 8
/* 80020E08 0001DD68  7F E3 FB 78 */	mr r3, r31
/* 80020E0C 0001DD6C  48 32 00 9D */	bl __ct__6CTokenFRC6CToken
/* 80020E10 0001DD70  38 00 00 00 */	li r0, 0
/* 80020E14 0001DD74  38 61 00 08 */	addi r3, r1, 8
/* 80020E18 0001DD78  90 1F 00 08 */	stw r0, 8(r31)
/* 80020E1C 0001DD7C  38 80 FF FF */	li r4, -1
/* 80020E20 0001DD80  48 32 00 21 */	bl __dt__6CTokenFv
/* 80020E24 0001DD84  38 00 00 00 */	li r0, 0
/* 80020E28 0001DD88  38 7E 00 28 */	addi r3, r30, 0x28
/* 80020E2C 0001DD8C  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 80020E30 0001DD90  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80020E34 0001DD94  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80020E38 0001DD98  48 00 20 3D */	bl __ct__12SGuiTextPairFv
/* 80020E3C 0001DD9C  38 7E 00 30 */	addi r3, r30, 0x30
/* 80020E40 0001DDA0  48 00 20 35 */	bl __ct__12SGuiTextPairFv
/* 80020E44 0001DDA4  38 7E 00 38 */	addi r3, r30, 0x38
/* 80020E48 0001DDA8  48 00 20 2D */	bl __ct__12SGuiTextPairFv
/* 80020E4C 0001DDAC  38 00 00 00 */	li r0, 0
/* 80020E50 0001DDB0  38 7E 00 48 */	addi r3, r30, 0x48
/* 80020E54 0001DDB4  90 1E 00 40 */	stw r0, 0x40(r30)
/* 80020E58 0001DDB8  90 1E 00 44 */	stw r0, 0x44(r30)
/* 80020E5C 0001DDBC  48 00 20 19 */	bl __ct__12SGuiTextPairFv
/* 80020E60 0001DDC0  38 7E 00 50 */	addi r3, r30, 0x50
/* 80020E64 0001DDC4  48 00 20 11 */	bl __ct__12SGuiTextPairFv
/* 80020E68 0001DDC8  38 7E 00 58 */	addi r3, r30, 0x58
/* 80020E6C 0001DDCC  48 00 20 09 */	bl __ct__12SGuiTextPairFv
/* 80020E70 0001DDD0  38 00 00 00 */	li r0, 0
/* 80020E74 0001DDD4  3C 60 80 5A */	lis r3, skZero3f@ha
/* 80020E78 0001DDD8  90 1E 00 60 */	stw r0, 0x60(r30)
/* 80020E7C 0001DDDC  38 83 66 A0 */	addi r4, r3, skZero3f@l
/* 80020E80 0001DDE0  C0 02 82 9C */	lfs f0, lbl_805A9FBC@sda21(r2)
/* 80020E84 0001DDE4  7F E3 FB 78 */	mr r3, r31
/* 80020E88 0001DDE8  90 1E 00 64 */	stw r0, 0x64(r30)
/* 80020E8C 0001DDEC  C0 24 00 00 */	lfs f1, 0(r4)
/* 80020E90 0001DDF0  D0 3E 00 F8 */	stfs f1, 0xf8(r30)
/* 80020E94 0001DDF4  C0 24 00 04 */	lfs f1, 4(r4)
/* 80020E98 0001DDF8  D0 3E 00 FC */	stfs f1, 0xfc(r30)
/* 80020E9C 0001DDFC  C0 24 00 08 */	lfs f1, 8(r4)
/* 80020EA0 0001DE00  D0 3E 01 00 */	stfs f1, 0x100(r30)
/* 80020EA4 0001DE04  D0 1E 01 04 */	stfs f0, 0x104(r30)
/* 80020EA8 0001DE08  D0 1E 01 08 */	stfs f0, 0x108(r30)
/* 80020EAC 0001DE0C  98 1E 01 0C */	stb r0, 0x10c(r30)
/* 80020EB0 0001DE10  98 1E 01 0D */	stb r0, 0x10d(r30)
/* 80020EB4 0001DE14  98 1E 01 0E */	stb r0, 0x10e(r30)
/* 80020EB8 0001DE18  48 31 FE CD */	bl Lock__6CTokenFv
/* 80020EBC 0001DE1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80020EC0 0001DE20  7F C3 F3 78 */	mr r3, r30
/* 80020EC4 0001DE24  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80020EC8 0001DE28  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80020ECC 0001DE2C  7C 08 03 A6 */	mtlr r0
/* 80020ED0 0001DE30  38 21 00 20 */	addi r1, r1, 0x20
/* 80020ED4 0001DE34  4E 80 00 20 */	blr

.global FindFileSelectOption__19SNewFileSelectFrameFP9CGuiFramei
FindFileSelectOption__19SNewFileSelectFrameFP9CGuiFramei:
/* 80020ED8 0001DE38  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80020EDC 0001DE3C  7C 08 02 A6 */	mflr r0
/* 80020EE0 0001DE40  3C C0 80 3D */	lis r6, lbl_803CC644@ha
/* 80020EE4 0001DE44  90 01 00 64 */	stw r0, 0x64(r1)
/* 80020EE8 0001DE48  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80020EEC 0001DE4C  7C BF 2B 78 */	mr r31, r5
/* 80020EF0 0001DE50  38 A6 C6 44 */	addi r5, r6, lbl_803CC644@l
/* 80020EF4 0001DE54  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80020EF8 0001DE58  7C 9E 23 78 */	mr r30, r4
/* 80020EFC 0001DE5C  7F E4 FB 78 */	mr r4, r31
/* 80020F00 0001DE60  93 A1 00 54 */	stw r29, 0x54(r1)
/* 80020F04 0001DE64  7C 7D 1B 78 */	mr r29, r3
/* 80020F08 0001DE68  38 65 03 01 */	addi r3, r5, 0x301
/* 80020F0C 0001DE6C  4C C6 31 82 */	crclr 6
/* 80020F10 0001DE70  48 2B 52 A1 */	bl Stringize__7CBasicsFPCce
/* 80020F14 0001DE74  7C 64 1B 78 */	mr r4, r3
/* 80020F18 0001DE78  7F C3 F3 78 */	mr r3, r30
/* 80020F1C 0001DE7C  48 2A 12 39 */	bl FindWidget__9CGuiFrameCFPCc
/* 80020F20 0001DE80  90 7D 00 00 */	stw r3, 0(r29)
/* 80020F24 0001DE84  38 00 00 00 */	li r0, 0
/* 80020F28 0001DE88  90 1D 00 04 */	stw r0, 4(r29)
/* 80020F2C 0001DE8C  90 1D 00 28 */	stw r0, 0x28(r29)
/* 80020F30 0001DE90  48 00 02 39 */	bl ComputeRandom__17SFileSelectOption
/* 80020F34 0001DE94  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 80020F38 0001DE98  D0 3D 00 2C */	stfs f1, 0x2c(r29)
/* 80020F3C 0001DE9C  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 80020F40 0001DEA0  7F E5 FB 78 */	mr r5, r31
/* 80020F44 0001DEA4  38 61 00 28 */	addi r3, r1, 0x28
/* 80020F48 0001DEA8  38 84 03 13 */	addi r4, r4, 0x313
/* 80020F4C 0001DEAC  4C C6 31 82 */	crclr 6
/* 80020F50 0001DEB0  48 36 CD 8D */	bl sprintf
/* 80020F54 0001DEB4  7F C4 F3 78 */	mr r4, r30
/* 80020F58 0001DEB8  38 61 00 20 */	addi r3, r1, 0x20
/* 80020F5C 0001DEBC  38 A1 00 28 */	addi r5, r1, 0x28
/* 80020F60 0001DEC0  48 00 1E 99 */	bl FindTextPanePair__14SFrontEndFrameFPC9CGuiFramePCc
/* 80020F64 0001DEC4  38 7D 00 04 */	addi r3, r29, 4
/* 80020F68 0001DEC8  80 1D 00 04 */	lwz r0, 4(r29)
/* 80020F6C 0001DECC  54 00 18 38 */	slwi r0, r0, 3
/* 80020F70 0001DED0  7C 63 02 14 */	add r3, r3, r0
/* 80020F74 0001DED4  34 63 00 04 */	addic. r3, r3, 4
/* 80020F78 0001DED8  41 82 00 14 */	beq lbl_80020F8C
/* 80020F7C 0001DEDC  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80020F80 0001DEE0  90 03 00 00 */	stw r0, 0(r3)
/* 80020F84 0001DEE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80020F88 0001DEE8  90 03 00 04 */	stw r0, 4(r3)
lbl_80020F8C:
/* 80020F8C 0001DEEC  80 DD 00 04 */	lwz r6, 4(r29)
/* 80020F90 0001DEF0  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 80020F94 0001DEF4  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 80020F98 0001DEF8  7F E5 FB 78 */	mr r5, r31
/* 80020F9C 0001DEFC  38 06 00 01 */	addi r0, r6, 1
/* 80020FA0 0001DF00  38 61 00 28 */	addi r3, r1, 0x28
/* 80020FA4 0001DF04  90 1D 00 04 */	stw r0, 4(r29)
/* 80020FA8 0001DF08  38 84 03 27 */	addi r4, r4, 0x327
/* 80020FAC 0001DF0C  4C C6 31 82 */	crclr 6
/* 80020FB0 0001DF10  48 36 CD 2D */	bl sprintf
/* 80020FB4 0001DF14  7F C4 F3 78 */	mr r4, r30
/* 80020FB8 0001DF18  38 61 00 18 */	addi r3, r1, 0x18
/* 80020FBC 0001DF1C  38 A1 00 28 */	addi r5, r1, 0x28
/* 80020FC0 0001DF20  48 00 1E 39 */	bl FindTextPanePair__14SFrontEndFrameFPC9CGuiFramePCc
/* 80020FC4 0001DF24  38 7D 00 04 */	addi r3, r29, 4
/* 80020FC8 0001DF28  80 1D 00 04 */	lwz r0, 4(r29)
/* 80020FCC 0001DF2C  54 00 18 38 */	slwi r0, r0, 3
/* 80020FD0 0001DF30  7C 63 02 14 */	add r3, r3, r0
/* 80020FD4 0001DF34  34 63 00 04 */	addic. r3, r3, 4
/* 80020FD8 0001DF38  41 82 00 14 */	beq lbl_80020FEC
/* 80020FDC 0001DF3C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80020FE0 0001DF40  90 03 00 00 */	stw r0, 0(r3)
/* 80020FE4 0001DF44  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80020FE8 0001DF48  90 03 00 04 */	stw r0, 4(r3)
lbl_80020FEC:
/* 80020FEC 0001DF4C  80 DD 00 04 */	lwz r6, 4(r29)
/* 80020FF0 0001DF50  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 80020FF4 0001DF54  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 80020FF8 0001DF58  7F E5 FB 78 */	mr r5, r31
/* 80020FFC 0001DF5C  38 06 00 01 */	addi r0, r6, 1
/* 80021000 0001DF60  38 61 00 28 */	addi r3, r1, 0x28
/* 80021004 0001DF64  90 1D 00 04 */	stw r0, 4(r29)
/* 80021008 0001DF68  38 84 03 38 */	addi r4, r4, 0x338
/* 8002100C 0001DF6C  4C C6 31 82 */	crclr 6
/* 80021010 0001DF70  48 36 CC CD */	bl sprintf
/* 80021014 0001DF74  7F C4 F3 78 */	mr r4, r30
/* 80021018 0001DF78  38 61 00 10 */	addi r3, r1, 0x10
/* 8002101C 0001DF7C  38 A1 00 28 */	addi r5, r1, 0x28
/* 80021020 0001DF80  48 00 1D D9 */	bl FindTextPanePair__14SFrontEndFrameFPC9CGuiFramePCc
/* 80021024 0001DF84  38 7D 00 04 */	addi r3, r29, 4
/* 80021028 0001DF88  80 1D 00 04 */	lwz r0, 4(r29)
/* 8002102C 0001DF8C  54 00 18 38 */	slwi r0, r0, 3
/* 80021030 0001DF90  7C 63 02 14 */	add r3, r3, r0
/* 80021034 0001DF94  34 63 00 04 */	addic. r3, r3, 4
/* 80021038 0001DF98  41 82 00 14 */	beq lbl_8002104C
/* 8002103C 0001DF9C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80021040 0001DFA0  90 03 00 00 */	stw r0, 0(r3)
/* 80021044 0001DFA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80021048 0001DFA8  90 03 00 04 */	stw r0, 4(r3)
lbl_8002104C:
/* 8002104C 0001DFAC  80 DD 00 04 */	lwz r6, 4(r29)
/* 80021050 0001DFB0  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 80021054 0001DFB4  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 80021058 0001DFB8  7F E5 FB 78 */	mr r5, r31
/* 8002105C 0001DFBC  38 06 00 01 */	addi r0, r6, 1
/* 80021060 0001DFC0  38 61 00 28 */	addi r3, r1, 0x28
/* 80021064 0001DFC4  90 1D 00 04 */	stw r0, 4(r29)
/* 80021068 0001DFC8  38 84 03 4C */	addi r4, r4, 0x34c
/* 8002106C 0001DFCC  4C C6 31 82 */	crclr 6
/* 80021070 0001DFD0  48 36 CC 6D */	bl sprintf
/* 80021074 0001DFD4  7F C4 F3 78 */	mr r4, r30
/* 80021078 0001DFD8  38 61 00 08 */	addi r3, r1, 8
/* 8002107C 0001DFDC  38 A1 00 28 */	addi r5, r1, 0x28
/* 80021080 0001DFE0  48 00 1D 79 */	bl FindTextPanePair__14SFrontEndFrameFPC9CGuiFramePCc
/* 80021084 0001DFE4  38 7D 00 04 */	addi r3, r29, 4
/* 80021088 0001DFE8  80 1D 00 04 */	lwz r0, 4(r29)
/* 8002108C 0001DFEC  54 00 18 38 */	slwi r0, r0, 3
/* 80021090 0001DFF0  7C 63 02 14 */	add r3, r3, r0
/* 80021094 0001DFF4  34 63 00 04 */	addic. r3, r3, 4
/* 80021098 0001DFF8  41 82 00 14 */	beq lbl_800210AC
/* 8002109C 0001DFFC  80 01 00 08 */	lwz r0, 8(r1)
/* 800210A0 0001E000  90 03 00 00 */	stw r0, 0(r3)
/* 800210A4 0001E004  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800210A8 0001E008  90 03 00 04 */	stw r0, 4(r3)
lbl_800210AC:
/* 800210AC 0001E00C  80 9D 00 04 */	lwz r4, 4(r29)
/* 800210B0 0001E010  7F A3 EB 78 */	mr r3, r29
/* 800210B4 0001E014  38 04 00 01 */	addi r0, r4, 1
/* 800210B8 0001E018  90 1D 00 04 */	stw r0, 4(r29)
/* 800210BC 0001E01C  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 800210C0 0001E020  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 800210C4 0001E024  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 800210C8 0001E028  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800210CC 0001E02C  7C 08 03 A6 */	mtlr r0
/* 800210D0 0001E030  38 21 00 60 */	addi r1, r1, 0x60
/* 800210D4 0001E034  4E 80 00 20 */	blr

.global StartTextAnimating__19SNewFileSelectFrameFP12CGuiTextPaneQ24rstl7wstring
StartTextAnimating__19SNewFileSelectFrameFP12CGuiTextPaneQ24rstl7wstring:
/* 800210D8 0001E038  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800210DC 0001E03C  7C 08 02 A6 */	mflr r0
/* 800210E0 0001E040  90 01 00 34 */	stw r0, 0x34(r1)
/* 800210E4 0001E044  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 800210E8 0001E048  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 800210EC 0001E04C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800210F0 0001E050  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800210F4 0001E054  FF E0 08 90 */	fmr f31, f1
/* 800210F8 0001E058  7C 7E 1B 78 */	mr r30, r3
/* 800210FC 0001E05C  7C 9F 23 78 */	mr r31, r4
/* 80021100 0001E060  38 61 00 08 */	addi r3, r1, 8
/* 80021104 0001E064  38 8D 81 4C */	addi r4, r13, lbl_805A6D0C@sda21
/* 80021108 0001E068  4B FF 48 E9 */	bl wstring_l__4rstlFPCw
/* 8002110C 0001E06C  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 80021110 0001E070  38 81 00 08 */	addi r4, r1, 8
/* 80021114 0001E074  38 A0 00 00 */	li r5, 0
/* 80021118 0001E078  48 2A 87 6D */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 8002111C 0001E07C  38 61 00 08 */	addi r3, r1, 8
/* 80021120 0001E080  48 31 C0 15 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 80021124 0001E084  7F E4 FB 78 */	mr r4, r31
/* 80021128 0001E088  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 8002112C 0001E08C  38 A0 00 00 */	li r5, 0
/* 80021130 0001E090  48 2A 87 55 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80021134 0001E094  FC 40 F8 90 */	fmr f2, f31
/* 80021138 0001E098  C0 22 82 E8 */	lfs f1, lbl_805AA008@sda21(r2)
/* 8002113C 0001E09C  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 80021140 0001E0A0  38 80 00 01 */	li r4, 1
/* 80021144 0001E0A4  48 2A 6F D5 */	bl SetTypeWriteEffectOptions__15CGuiTextSupportFbff
/* 80021148 0001E0A8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8002114C 0001E0AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80021150 0001E0B0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80021154 0001E0B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80021158 0001E0B8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8002115C 0001E0BC  7C 08 03 A6 */	mtlr r0
/* 80021160 0001E0C0  38 21 00 30 */	addi r1, r1, 0x30
/* 80021164 0001E0C4  4E 80 00 20 */	blr

.global ComputeRandom__17SFileSelectOption
ComputeRandom__17SFileSelectOption:
/* 80021168 0001E0C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002116C 0001E0CC  7C 08 02 A6 */	mflr r0
/* 80021170 0001E0D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80021174 0001E0D4  48 36 ED 09 */	bl rand
/* 80021178 0001E0D8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8002117C 0001E0DC  3C 00 43 30 */	lis r0, 0x4330
/* 80021180 0001E0E0  90 61 00 0C */	stw r3, 0xc(r1)
/* 80021184 0001E0E4  C8 62 82 B8 */	lfd f3, lbl_805A9FD8@sda21(r2)
/* 80021188 0001E0E8  90 01 00 08 */	stw r0, 8(r1)
/* 8002118C 0001E0EC  C0 22 82 EC */	lfs f1, lbl_805AA00C@sda21(r2)
/* 80021190 0001E0F0  C8 41 00 08 */	lfd f2, 8(r1)
/* 80021194 0001E0F4  C0 02 82 A0 */	lfs f0, lbl_805A9FC0@sda21(r2)
/* 80021198 0001E0F8  EC 42 18 28 */	fsubs f2, f2, f3
/* 8002119C 0001E0FC  EC 22 08 24 */	fdivs f1, f2, f1
/* 800211A0 0001E100  EC 20 00 7A */	fmadds f1, f0, f1, f0
/* 800211A4 0001E104  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800211A8 0001E108  7C 08 03 A6 */	mtlr r0
/* 800211AC 0001E10C  38 21 00 10 */	addi r1, r1, 0x10
/* 800211B0 0001E110  4E 80 00 20 */	blr

.global DoCancel__14SFrontEndFrameFPC14CGuiTableGroup
DoCancel__14SFrontEndFrameFPC14CGuiTableGroup:
/* 800211B4 0001E114  4E 80 00 20 */	blr

.global HandleActiveChange__14SFrontEndFrameFPC14CGuiTableGroup
HandleActiveChange__14SFrontEndFrameFPC14CGuiTableGroup:
/* 800211B8 0001E118  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800211BC 0001E11C  7C 08 02 A6 */	mflr r0
/* 800211C0 0001E120  7C 83 23 78 */	mr r3, r4
/* 800211C4 0001E124  38 E0 00 FF */	li r7, 0xff
/* 800211C8 0001E128  90 01 00 14 */	stw r0, 0x14(r1)
/* 800211CC 0001E12C  38 C0 00 A0 */	li r6, 0xa0
/* 800211D0 0001E130  38 00 00 C8 */	li r0, 0xc8
/* 800211D4 0001E134  38 81 00 0C */	addi r4, r1, 0xc
/* 800211D8 0001E138  98 E1 00 0C */	stb r7, 0xc(r1)
/* 800211DC 0001E13C  38 A1 00 08 */	addi r5, r1, 8
/* 800211E0 0001E140  98 E1 00 0D */	stb r7, 0xd(r1)
/* 800211E4 0001E144  98 E1 00 0E */	stb r7, 0xe(r1)
/* 800211E8 0001E148  98 E1 00 0F */	stb r7, 0xf(r1)
/* 800211EC 0001E14C  98 C1 00 08 */	stb r6, 8(r1)
/* 800211F0 0001E150  98 C1 00 09 */	stb r6, 9(r1)
/* 800211F4 0001E154  98 C1 00 0A */	stb r6, 0xa(r1)
/* 800211F8 0001E158  98 01 00 0B */	stb r0, 0xb(r1)
/* 800211FC 0001E15C  48 2A 54 01 */	bl SetColors__14CGuiTableGroupCFRC6CColorRC6CColor
/* 80021200 0001E160  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80021204 0001E164  7C 08 03 A6 */	mtlr r0
/* 80021208 0001E168  38 21 00 10 */	addi r1, r1, 0x10
/* 8002120C 0001E16C  4E 80 00 20 */	blr

.global DoSelectionChange__14SFrontEndFrameFPC14CGuiTableGroup
DoSelectionChange__14SFrontEndFrameFPC14CGuiTableGroup:
/* 80021210 0001E170  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80021214 0001E174  7C 08 02 A6 */	mflr r0
/* 80021218 0001E178  A9 02 C5 FA */	lha r8, lbl_805AE31A@sda21(r2)
/* 8002121C 0001E17C  38 A0 00 7F */	li r5, 0x7f
/* 80021220 0001E180  90 01 00 24 */	stw r0, 0x24(r1)
/* 80021224 0001E184  38 C0 00 40 */	li r6, 0x40
/* 80021228 0001E188  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 8002122C 0001E18C  38 E0 00 00 */	li r7, 0
/* 80021230 0001E190  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80021234 0001E194  7C 9F 23 78 */	mr r31, r4
/* 80021238 0001E198  38 80 04 45 */	li r4, 0x445
/* 8002123C 0001E19C  39 20 00 00 */	li r9, 0
/* 80021240 0001E1A0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80021244 0001E1A4  7C 7E 1B 78 */	mr r30, r3
/* 80021248 0001E1A8  38 61 00 08 */	addi r3, r1, 8
/* 8002124C 0001E1AC  48 2C 8B 29 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 80021250 0001E1B0  7F C3 F3 78 */	mr r3, r30
/* 80021254 0001E1B4  7F E4 FB 78 */	mr r4, r31
/* 80021258 0001E1B8  4B FF FF 61 */	bl HandleActiveChange__14SFrontEndFrameFPC14CGuiTableGroup
/* 8002125C 0001E1BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80021260 0001E1C0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80021264 0001E1C4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80021268 0001E1C8  7C 08 03 A6 */	mtlr r0
/* 8002126C 0001E1CC  38 21 00 20 */	addi r1, r1, 0x20
/* 80021270 0001E1D0  4E 80 00 20 */	blr

.global DoAdvance__14SFrontEndFrameFPC14CGuiTableGroup
DoAdvance__14SFrontEndFrameFPC14CGuiTableGroup:
/* 80021274 0001E1D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80021278 0001E1D8  7C 08 02 A6 */	mflr r0
/* 8002127C 0001E1DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80021280 0001E1E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80021284 0001E1E4  7C 7F 1B 78 */	mr r31, r3
/* 80021288 0001E1E8  80 63 00 18 */	lwz r3, 0x18(r3)
/* 8002128C 0001E1EC  80 03 00 C4 */	lwz r0, 0xc4(r3)
/* 80021290 0001E1F0  2C 00 00 02 */	cmpwi r0, 2
/* 80021294 0001E1F4  41 82 00 B0 */	beq lbl_80021344
/* 80021298 0001E1F8  40 80 00 14 */	bge lbl_800212AC
/* 8002129C 0001E1FC  2C 00 00 00 */	cmpwi r0, 0
/* 800212A0 0001E200  41 82 00 18 */	beq lbl_800212B8
/* 800212A4 0001E204  40 80 00 94 */	bge lbl_80021338
/* 800212A8 0001E208  48 00 00 B8 */	b lbl_80021360
lbl_800212AC:
/* 800212AC 0001E20C  2C 00 00 04 */	cmpwi r0, 4
/* 800212B0 0001E210  40 80 00 B0 */	bge lbl_80021360
/* 800212B4 0001E214  48 00 00 A0 */	b lbl_80021354
lbl_800212B8:
/* 800212B8 0001E218  80 1F 00 00 */	lwz r0, 0(r31)
/* 800212BC 0001E21C  3C 60 80 3D */	lis r3, lbl_803CC5D0@ha
/* 800212C0 0001E220  38 63 C5 D0 */	addi r3, r3, lbl_803CC5D0@l
/* 800212C4 0001E224  A9 02 C5 FA */	lha r8, lbl_805AE31A@sda21(r2)
/* 800212C8 0001E228  54 00 10 3A */	slwi r0, r0, 2
/* 800212CC 0001E22C  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 800212D0 0001E230  7C 03 02 AE */	lhax r0, r3, r0
/* 800212D4 0001E234  38 61 00 0C */	addi r3, r1, 0xc
/* 800212D8 0001E238  38 A0 00 7F */	li r5, 0x7f
/* 800212DC 0001E23C  38 C0 00 40 */	li r6, 0x40
/* 800212E0 0001E240  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 800212E4 0001E244  38 E0 00 00 */	li r7, 0
/* 800212E8 0001E248  39 20 00 00 */	li r9, 0
/* 800212EC 0001E24C  48 2C 8A 89 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 800212F0 0001E250  80 1F 00 00 */	lwz r0, 0(r31)
/* 800212F4 0001E254  3C 60 80 3D */	lis r3, lbl_803CC5D0@ha
/* 800212F8 0001E258  38 63 C5 D0 */	addi r3, r3, lbl_803CC5D0@l
/* 800212FC 0001E25C  A9 02 C5 FA */	lha r8, lbl_805AE31A@sda21(r2)
/* 80021300 0001E260  54 00 10 3A */	slwi r0, r0, 2
/* 80021304 0001E264  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 80021308 0001E268  7C 83 02 14 */	add r4, r3, r0
/* 8002130C 0001E26C  38 61 00 08 */	addi r3, r1, 8
/* 80021310 0001E270  A8 04 00 02 */	lha r0, 2(r4)
/* 80021314 0001E274  38 A0 00 7F */	li r5, 0x7f
/* 80021318 0001E278  38 C0 00 40 */	li r6, 0x40
/* 8002131C 0001E27C  38 E0 00 00 */	li r7, 0
/* 80021320 0001E280  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 80021324 0001E284  39 20 00 00 */	li r9, 0
/* 80021328 0001E288  48 2C 8A 4D */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 8002132C 0001E28C  38 00 00 01 */	li r0, 1
/* 80021330 0001E290  90 1F 00 04 */	stw r0, 4(r31)
/* 80021334 0001E294  48 00 00 2C */	b lbl_80021360
lbl_80021338:
/* 80021338 0001E298  38 00 00 02 */	li r0, 2
/* 8002133C 0001E29C  90 1F 00 04 */	stw r0, 4(r31)
/* 80021340 0001E2A0  48 00 00 20 */	b lbl_80021360
lbl_80021344:
/* 80021344 0001E2A4  48 00 1C 11 */	bl PlayAdvanceSfx__11CFrontEndUIFv
/* 80021348 0001E2A8  38 00 00 03 */	li r0, 3
/* 8002134C 0001E2AC  90 1F 00 04 */	stw r0, 4(r31)
/* 80021350 0001E2B0  48 00 00 10 */	b lbl_80021360
lbl_80021354:
/* 80021354 0001E2B4  48 00 1C 01 */	bl PlayAdvanceSfx__11CFrontEndUIFv
/* 80021358 0001E2B8  38 00 00 04 */	li r0, 4
/* 8002135C 0001E2BC  90 1F 00 04 */	stw r0, 4(r31)
lbl_80021360:
/* 80021360 0001E2C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80021364 0001E2C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80021368 0001E2C8  7C 08 03 A6 */	mtlr r0
/* 8002136C 0001E2CC  38 21 00 20 */	addi r1, r1, 0x20
/* 80021370 0001E2D0  4E 80 00 20 */	blr

.global Draw__14SFrontEndFrameFv
Draw__14SFrontEndFrameFv:
/* 80021374 0001E2D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80021378 0001E2D8  7C 08 02 A6 */	mflr r0
/* 8002137C 0001E2DC  3C 80 80 5A */	lis r4, lbl_8059FD08@ha
/* 80021380 0001E2E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80021384 0001E2E4  38 84 FD 08 */	addi r4, r4, lbl_8059FD08@l
/* 80021388 0001E2E8  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8002138C 0001E2EC  48 2A 13 A9 */	bl Draw__9CGuiFrameCFRC19CGuiWidgetDrawParms
/* 80021390 0001E2F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80021394 0001E2F4  7C 08 03 A6 */	mtlr r0
/* 80021398 0001E2F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8002139C 0001E2FC  4E 80 00 20 */	blr

.global ProcessUserInput__14SFrontEndFrameFRC11CFinalInput
ProcessUserInput__14SFrontEndFrameFRC11CFinalInput:
/* 800213A0 0001E300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800213A4 0001E304  7C 08 02 A6 */	mflr r0
/* 800213A8 0001E308  90 01 00 14 */	stw r0, 0x14(r1)
/* 800213AC 0001E30C  38 00 00 00 */	li r0, 0
/* 800213B0 0001E310  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800213B4 0001E314  7C 7F 1B 78 */	mr r31, r3
/* 800213B8 0001E318  90 03 00 04 */	stw r0, 4(r3)
/* 800213BC 0001E31C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 800213C0 0001E320  48 2A 12 99 */	bl ProcessUserInput__9CGuiFrameFRC11CFinalInput
/* 800213C4 0001E324  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800213C8 0001E328  80 7F 00 04 */	lwz r3, 4(r31)
/* 800213CC 0001E32C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800213D0 0001E330  7C 08 03 A6 */	mtlr r0
/* 800213D4 0001E334  38 21 00 10 */	addi r1, r1, 0x10
/* 800213D8 0001E338  4E 80 00 20 */	blr

.global Update__14SFrontEndFrameFf
Update__14SFrontEndFrameFf:
/* 800213DC 0001E33C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800213E0 0001E340  7C 08 02 A6 */	mflr r0
/* 800213E4 0001E344  90 01 00 44 */	stw r0, 0x44(r1)
/* 800213E8 0001E348  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 800213EC 0001E34C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 800213F0 0001E350  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 800213F4 0001E354  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 800213F8 0001E358  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800213FC 0001E35C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80021400 0001E360  7C 7E 1B 78 */	mr r30, r3
/* 80021404 0001E364  FF C0 08 90 */	fmr f30, f1
/* 80021408 0001E368  80 63 00 18 */	lwz r3, 0x18(r3)
/* 8002140C 0001E36C  38 80 00 03 */	li r4, 3
/* 80021410 0001E370  81 83 00 00 */	lwz r12, 0(r3)
/* 80021414 0001E374  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80021418 0001E378  7D 89 03 A6 */	mtctr r12
/* 8002141C 0001E37C  4E 80 04 21 */	bctrl
/* 80021420 0001E380  7C 7F 1B 78 */	mr r31, r3
/* 80021424 0001E384  48 27 9D B1 */	bl SlideShowGalleryFlags__10CSlideShowFv
/* 80021428 0001E388  28 03 00 00 */	cmplwi r3, 0
/* 8002142C 0001E38C  41 82 00 30 */	beq lbl_8002145C
/* 80021430 0001E390  88 1F 00 B6 */	lbz r0, 0xb6(r31)
/* 80021434 0001E394  38 60 00 01 */	li r3, 1
/* 80021438 0001E398  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8002143C 0001E39C  98 1F 00 B6 */	stb r0, 0xb6(r31)
/* 80021440 0001E3A0  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 80021444 0001E3A4  3B E3 00 D4 */	addi r31, r3, 0xd4
/* 80021448 0001E3A8  48 32 8B 65 */	bl White__6CColorFv
/* 8002144C 0001E3AC  7C 64 1B 78 */	mr r4, r3
/* 80021450 0001E3B0  7F E3 FB 78 */	mr r3, r31
/* 80021454 0001E3B4  48 2A 82 15 */	bl SetFontColor__15CGuiTextSupportFRC6CColor
/* 80021458 0001E3B8  48 00 00 44 */	b lbl_8002149C
lbl_8002145C:
/* 8002145C 0001E3BC  88 1F 00 B6 */	lbz r0, 0xb6(r31)
/* 80021460 0001E3C0  38 60 00 00 */	li r3, 0
/* 80021464 0001E3C4  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 80021468 0001E3C8  98 1F 00 B6 */	stb r0, 0xb6(r31)
/* 8002146C 0001E3CC  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 80021470 0001E3D0  3B E3 00 D4 */	addi r31, r3, 0xd4
/* 80021474 0001E3D4  48 32 8B 31 */	bl Grey__6CColorFv
/* 80021478 0001E3D8  C3 E2 82 DC */	lfs f31, lbl_805A9FFC@sda21(r2)
/* 8002147C 0001E3DC  F3 E1 A0 08 */	psq_st f31, 8(r1), 1, qr2
/* 80021480 0001E3E0  38 81 00 0C */	addi r4, r1, 0xc
/* 80021484 0001E3E4  80 A3 00 00 */	lwz r5, 0(r3)
/* 80021488 0001E3E8  7F E3 FB 78 */	mr r3, r31
/* 8002148C 0001E3EC  88 01 00 08 */	lbz r0, 8(r1)
/* 80021490 0001E3F0  50 A0 00 2E */	rlwimi r0, r5, 0, 0, 0x17
/* 80021494 0001E3F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80021498 0001E3F8  48 2A 81 D1 */	bl SetFontColor__15CGuiTextSupportFRC6CColor
lbl_8002149C:
/* 8002149C 0001E3FC  FC 20 F0 90 */	fmr f1, f30
/* 800214A0 0001E400  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 800214A4 0001E404  48 2A 12 61 */	bl Update__9CGuiFrameFf
/* 800214A8 0001E408  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 800214AC 0001E40C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 800214B0 0001E410  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 800214B4 0001E414  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 800214B8 0001E418  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800214BC 0001E41C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800214C0 0001E420  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800214C4 0001E424  7C 08 03 A6 */	mtlr r0
/* 800214C8 0001E428  38 21 00 40 */	addi r1, r1, 0x40
/* 800214CC 0001E42C  4E 80 00 20 */	blr

.global FinishedLoading__14SFrontEndFrameFv
FinishedLoading__14SFrontEndFrameFv:
/* 800214D0 0001E430  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 800214D4 0001E434  7C 08 02 A6 */	mflr r0
/* 800214D8 0001E438  3C A0 80 3E */	lis r5, lbl_803D9820@ha
/* 800214DC 0001E43C  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 800214E0 0001E440  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 800214E4 0001E444  3B E5 98 20 */	addi r31, r5, lbl_803D9820@l
/* 800214E8 0001E448  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 800214EC 0001E44C  7C 7E 1B 78 */	mr r30, r3
/* 800214F0 0001E450  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 800214F4 0001E454  93 A1 00 C4 */	stw r29, 0xc4(r1)
/* 800214F8 0001E458  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 800214FC 0001E45C  38 84 03 5C */	addi r4, r4, 0x35c
/* 80021500 0001E460  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 80021504 0001E464  48 2A 0C 51 */	bl FindWidget__9CGuiFrameCFPCc
/* 80021508 0001E468  90 7E 00 18 */	stw r3, 0x18(r30)
/* 8002150C 0001E46C  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 80021510 0001E470  38 A3 C6 44 */	addi r5, r3, lbl_803CC644@l
/* 80021514 0001E474  38 61 00 10 */	addi r3, r1, 0x10
/* 80021518 0001E478  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 8002151C 0001E47C  38 A5 02 75 */	addi r5, r5, 0x275
/* 80021520 0001E480  48 00 18 D9 */	bl FindTextPanePair__14SFrontEndFrameFPC9CGuiFramePCc
/* 80021524 0001E484  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80021528 0001E488  38 80 00 25 */	li r4, 0x25
/* 8002152C 0001E48C  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 80021530 0001E490  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80021534 0001E494  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80021538 0001E498  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8002153C 0001E49C  48 33 51 C1 */	bl GetString__12CStringTableCFi
/* 80021540 0001E4A0  7C 64 1B 78 */	mr r4, r3
/* 80021544 0001E4A4  38 7E 00 1C */	addi r3, r30, 0x1c
/* 80021548 0001E4A8  48 00 18 21 */	bl SetPairText__12SGuiTextPairFRCQ24rstl7wstring
/* 8002154C 0001E4AC  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 80021550 0001E4B0  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 80021554 0001E4B4  38 A3 C6 44 */	addi r5, r3, lbl_803CC644@l
/* 80021558 0001E4B8  38 61 00 08 */	addi r3, r1, 8
/* 8002155C 0001E4BC  38 A5 02 82 */	addi r5, r5, 0x282
/* 80021560 0001E4C0  48 00 18 99 */	bl FindTextPanePair__14SFrontEndFrameFPC9CGuiFramePCc
/* 80021564 0001E4C4  80 01 00 08 */	lwz r0, 8(r1)
/* 80021568 0001E4C8  38 80 00 60 */	li r4, 0x60
/* 8002156C 0001E4CC  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80021570 0001E4D0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80021574 0001E4D4  90 1E 00 28 */	stw r0, 0x28(r30)
/* 80021578 0001E4D8  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 8002157C 0001E4DC  48 33 51 81 */	bl GetString__12CStringTableCFi
/* 80021580 0001E4E0  7C 64 1B 78 */	mr r4, r3
/* 80021584 0001E4E4  38 7E 00 24 */	addi r3, r30, 0x24
/* 80021588 0001E4E8  48 00 17 E1 */	bl SetPairText__12SGuiTextPairFRCQ24rstl7wstring
/* 8002158C 0001E4EC  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 80021590 0001E4F0  38 80 00 43 */	li r4, 0x43
/* 80021594 0001E4F4  48 33 51 69 */	bl GetString__12CStringTableCFi
/* 80021598 0001E4F8  3C 80 80 3D */	lis r4, lbl_803CC644@ha
/* 8002159C 0001E4FC  7C 65 1B 78 */	mr r5, r3
/* 800215A0 0001E500  38 84 C6 44 */	addi r4, r4, lbl_803CC644@l
/* 800215A4 0001E504  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 800215A8 0001E508  38 84 03 70 */	addi r4, r4, 0x370
/* 800215AC 0001E50C  48 00 18 D9 */	bl FindAndSetPairText__14SFrontEndFrameFR9CGuiFramePCcRCQ24rstl7wstring
/* 800215B0 0001E510  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 800215B4 0001E514  38 80 00 5E */	li r4, 0x5e
/* 800215B8 0001E518  48 33 51 45 */	bl GetString__12CStringTableCFi
/* 800215BC 0001E51C  3C 80 80 3D */	lis r4, lbl_803CC644@ha
/* 800215C0 0001E520  7C 65 1B 78 */	mr r5, r3
/* 800215C4 0001E524  38 84 C6 44 */	addi r4, r4, lbl_803CC644@l
/* 800215C8 0001E528  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 800215CC 0001E52C  38 84 03 7F */	addi r4, r4, 0x37f
/* 800215D0 0001E530  48 00 18 B5 */	bl FindAndSetPairText__14SFrontEndFrameFR9CGuiFramePCcRCQ24rstl7wstring
/* 800215D4 0001E534  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 800215D8 0001E538  38 80 00 62 */	li r4, 0x62
/* 800215DC 0001E53C  48 33 51 21 */	bl GetString__12CStringTableCFi
/* 800215E0 0001E540  3C 80 80 3D */	lis r4, lbl_803CC644@ha
/* 800215E4 0001E544  7C 65 1B 78 */	mr r5, r3
/* 800215E8 0001E548  38 84 C6 44 */	addi r4, r4, lbl_803CC644@l
/* 800215EC 0001E54C  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 800215F0 0001E550  38 84 01 E5 */	addi r4, r4, 0x1e5
/* 800215F4 0001E554  48 00 18 91 */	bl FindAndSetPairText__14SFrontEndFrameFR9CGuiFramePCcRCQ24rstl7wstring
/* 800215F8 0001E558  3C 80 80 3D */	lis r4, lbl_803CC644@ha
/* 800215FC 0001E55C  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 80021600 0001E560  38 84 C6 44 */	addi r4, r4, lbl_803CC644@l
/* 80021604 0001E564  38 84 01 F4 */	addi r4, r4, 0x1f4
/* 80021608 0001E568  48 2A 0B 4D */	bl FindWidget__9CGuiFrameCFPCc
/* 8002160C 0001E56C  7C 7D 1B 79 */	or. r29, r3, r3
/* 80021610 0001E570  41 82 00 34 */	beq lbl_80021644
/* 80021614 0001E574  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 80021618 0001E578  38 80 00 55 */	li r4, 0x55
/* 8002161C 0001E57C  48 33 50 E1 */	bl GetString__12CStringTableCFi
/* 80021620 0001E580  7C 64 1B 78 */	mr r4, r3
/* 80021624 0001E584  38 61 00 60 */	addi r3, r1, 0x60
/* 80021628 0001E588  4B FF 43 C9 */	bl wstring_l__4rstlFPCw
/* 8002162C 0001E58C  38 7D 00 D4 */	addi r3, r29, 0xd4
/* 80021630 0001E590  38 81 00 60 */	addi r4, r1, 0x60
/* 80021634 0001E594  38 A0 00 00 */	li r5, 0
/* 80021638 0001E598  48 2A 82 4D */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 8002163C 0001E59C  38 61 00 60 */	addi r3, r1, 0x60
/* 80021640 0001E5A0  48 31 BA F5 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
lbl_80021644:
/* 80021644 0001E5A4  80 FF 00 00 */	lwz r7, 0(r31)
/* 80021648 0001E5A8  38 61 00 30 */	addi r3, r1, 0x30
/* 8002164C 0001E5AC  80 DF 00 04 */	lwz r6, 4(r31)
/* 80021650 0001E5B0  38 81 00 54 */	addi r4, r1, 0x54
/* 80021654 0001E5B4  80 1F 00 08 */	lwz r0, 8(r31)
/* 80021658 0001E5B8  38 A0 00 0C */	li r5, 0xc
/* 8002165C 0001E5BC  90 E1 00 54 */	stw r7, 0x54(r1)
/* 80021660 0001E5C0  90 C1 00 58 */	stw r6, 0x58(r1)
/* 80021664 0001E5C4  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80021668 0001E5C8  4B FE 1E 29 */	bl memcpy
/* 8002166C 0001E5CC  3C 60 80 02 */	lis r3, sub_800217cc@ha
/* 80021670 0001E5D0  93 C1 00 A4 */	stw r30, 0xa4(r1)
/* 80021674 0001E5D4  38 03 17 CC */	addi r0, r3, sub_800217cc@l
/* 80021678 0001E5D8  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8002167C 0001E5DC  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 80021680 0001E5E0  38 81 00 30 */	addi r4, r1, 0x30
/* 80021684 0001E5E4  38 A0 00 0C */	li r5, 0xc
/* 80021688 0001E5E8  4B FE 1E 09 */	bl memcpy
/* 8002168C 0001E5EC  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 80021690 0001E5F0  38 81 00 A0 */	addi r4, r1, 0xa0
/* 80021694 0001E5F4  48 2A 51 C5 */	bl "SetMenuAdvanceCallback__14CGuiTableGroupFRC29TFunctor1<CP14CGuiTableGroup>"
/* 80021698 0001E5F8  80 FF 00 0C */	lwz r7, 0xc(r31)
/* 8002169C 0001E5FC  38 61 00 24 */	addi r3, r1, 0x24
/* 800216A0 0001E600  80 DF 00 10 */	lwz r6, 0x10(r31)
/* 800216A4 0001E604  38 81 00 48 */	addi r4, r1, 0x48
/* 800216A8 0001E608  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 800216AC 0001E60C  38 A0 00 0C */	li r5, 0xc
/* 800216B0 0001E610  90 E1 00 48 */	stw r7, 0x48(r1)
/* 800216B4 0001E614  90 C1 00 4C */	stw r6, 0x4c(r1)
/* 800216B8 0001E618  90 01 00 50 */	stw r0, 0x50(r1)
/* 800216BC 0001E61C  4B FE 1D D5 */	bl memcpy
/* 800216C0 0001E620  3C 60 80 02 */	lis r3, sub_80021768@ha
/* 800216C4 0001E624  93 C1 00 8C */	stw r30, 0x8c(r1)
/* 800216C8 0001E628  38 03 17 68 */	addi r0, r3, sub_80021768@l
/* 800216CC 0001E62C  38 61 00 90 */	addi r3, r1, 0x90
/* 800216D0 0001E630  90 01 00 88 */	stw r0, 0x88(r1)
/* 800216D4 0001E634  38 81 00 24 */	addi r4, r1, 0x24
/* 800216D8 0001E638  38 A0 00 0C */	li r5, 0xc
/* 800216DC 0001E63C  4B FE 1D B5 */	bl memcpy
/* 800216E0 0001E640  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 800216E4 0001E644  38 81 00 88 */	addi r4, r1, 0x88
/* 800216E8 0001E648  48 2A 51 09 */	bl "SetMenuSelectionChangeCallback__14CGuiTableGroupFRC35TFunctor3<CP14CGuiTableGroup,Ci,Ci>"
/* 800216EC 0001E64C  80 FF 00 18 */	lwz r7, 0x18(r31)
/* 800216F0 0001E650  38 61 00 18 */	addi r3, r1, 0x18
/* 800216F4 0001E654  80 DF 00 1C */	lwz r6, 0x1c(r31)
/* 800216F8 0001E658  38 81 00 3C */	addi r4, r1, 0x3c
/* 800216FC 0001E65C  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 80021700 0001E660  38 A0 00 0C */	li r5, 0xc
/* 80021704 0001E664  90 E1 00 3C */	stw r7, 0x3c(r1)
/* 80021708 0001E668  90 C1 00 40 */	stw r6, 0x40(r1)
/* 8002170C 0001E66C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80021710 0001E670  4B FE 1D 81 */	bl memcpy
/* 80021714 0001E674  3C 60 80 02 */	lis r3, sub_800217cc@ha
/* 80021718 0001E678  93 C1 00 74 */	stw r30, 0x74(r1)
/* 8002171C 0001E67C  38 03 17 CC */	addi r0, r3, sub_800217cc@l
/* 80021720 0001E680  38 61 00 78 */	addi r3, r1, 0x78
/* 80021724 0001E684  90 01 00 70 */	stw r0, 0x70(r1)
/* 80021728 0001E688  38 81 00 18 */	addi r4, r1, 0x18
/* 8002172C 0001E68C  38 A0 00 0C */	li r5, 0xc
/* 80021730 0001E690  4B FE 1D 61 */	bl memcpy
/* 80021734 0001E694  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 80021738 0001E698  38 81 00 70 */	addi r4, r1, 0x70
/* 8002173C 0001E69C  48 2A 50 E9 */	bl "SetMenuCancelCallback__14CGuiTableGroupFRC29TFunctor1<CP14CGuiTableGroup>"
/* 80021740 0001E6A0  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 80021744 0001E6A4  7F C3 F3 78 */	mr r3, r30
/* 80021748 0001E6A8  4B FF FA 71 */	bl HandleActiveChange__14SFrontEndFrameFPC14CGuiTableGroup
/* 8002174C 0001E6AC  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80021750 0001E6B0  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 80021754 0001E6B4  83 C1 00 C8 */	lwz r30, 0xc8(r1)
/* 80021758 0001E6B8  83 A1 00 C4 */	lwz r29, 0xc4(r1)
/* 8002175C 0001E6BC  7C 08 03 A6 */	mtlr r0
/* 80021760 0001E6C0  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80021764 0001E6C4  4E 80 00 20 */	blr

.global sub_80021768
sub_80021768:
/* 80021768 0001E6C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8002176C 0001E6CC  7C 08 02 A6 */	mflr r0
/* 80021770 0001E6D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80021774 0001E6D4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80021778 0001E6D8  7C DF 33 78 */	mr r31, r6
/* 8002177C 0001E6DC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80021780 0001E6E0  7C BE 2B 78 */	mr r30, r5
/* 80021784 0001E6E4  38 A0 00 0C */	li r5, 0xc
/* 80021788 0001E6E8  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8002178C 0001E6EC  7C 7D 1B 78 */	mr r29, r3
/* 80021790 0001E6F0  38 61 00 08 */	addi r3, r1, 8
/* 80021794 0001E6F4  4B FE 1C FD */	bl memcpy
/* 80021798 0001E6F8  7F A3 EB 78 */	mr r3, r29
/* 8002179C 0001E6FC  7F C4 F3 78 */	mr r4, r30
/* 800217A0 0001E700  7F E5 FB 78 */	mr r5, r31
/* 800217A4 0001E704  39 81 00 08 */	addi r12, r1, 8
/* 800217A8 0001E708  48 36 81 85 */	bl __ptmf_scall
/* 800217AC 0001E70C  60 00 00 00 */	nop
/* 800217B0 0001E710  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800217B4 0001E714  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800217B8 0001E718  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800217BC 0001E71C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 800217C0 0001E720  7C 08 03 A6 */	mtlr r0
/* 800217C4 0001E724  38 21 00 30 */	addi r1, r1, 0x30
/* 800217C8 0001E728  4E 80 00 20 */	blr

.global sub_800217cc
sub_800217cc:
/* 800217CC 0001E72C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800217D0 0001E730  7C 08 02 A6 */	mflr r0
/* 800217D4 0001E734  90 01 00 24 */	stw r0, 0x24(r1)
/* 800217D8 0001E738  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800217DC 0001E73C  7C BF 2B 78 */	mr r31, r5
/* 800217E0 0001E740  38 A0 00 0C */	li r5, 0xc
/* 800217E4 0001E744  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800217E8 0001E748  7C 7E 1B 78 */	mr r30, r3
/* 800217EC 0001E74C  38 61 00 08 */	addi r3, r1, 8
/* 800217F0 0001E750  4B FE 1C A1 */	bl memcpy
/* 800217F4 0001E754  7F C3 F3 78 */	mr r3, r30
/* 800217F8 0001E758  7F E4 FB 78 */	mr r4, r31
/* 800217FC 0001E75C  39 81 00 08 */	addi r12, r1, 8
/* 80021800 0001E760  48 36 81 2D */	bl __ptmf_scall
/* 80021804 0001E764  60 00 00 00 */	nop
/* 80021808 0001E768  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8002180C 0001E76C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80021810 0001E770  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80021814 0001E774  7C 08 03 A6 */	mtlr r0
/* 80021818 0001E778  38 21 00 20 */	addi r1, r1, 0x20
/* 8002181C 0001E77C  4E 80 00 20 */	blr

.global PumpLoad__14SFrontEndFrameFv
PumpLoad__14SFrontEndFrameFv:
/* 80021820 0001E780  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80021824 0001E784  7C 08 02 A6 */	mflr r0
/* 80021828 0001E788  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002182C 0001E78C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80021830 0001E790  93 C1 00 08 */	stw r30, 8(r1)
/* 80021834 0001E794  7C 7E 1B 78 */	mr r30, r3
/* 80021838 0001E798  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8002183C 0001E79C  28 00 00 00 */	cmplwi r0, 0
/* 80021840 0001E7A0  41 82 00 0C */	beq lbl_8002184C
/* 80021844 0001E7A4  38 60 00 01 */	li r3, 1
/* 80021848 0001E7A8  48 00 00 84 */	b lbl_800218CC
lbl_8002184C:
/* 8002184C 0001E7AC  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 80021850 0001E7B0  28 00 00 00 */	cmplwi r0, 0
/* 80021854 0001E7B4  41 82 00 0C */	beq lbl_80021860
/* 80021858 0001E7B8  38 60 00 01 */	li r3, 1
/* 8002185C 0001E7BC  48 00 00 3C */	b lbl_80021898
lbl_80021860:
/* 80021860 0001E7C0  88 1E 00 0C */	lbz r0, 0xc(r30)
/* 80021864 0001E7C4  28 00 00 00 */	cmplwi r0, 0
/* 80021868 0001E7C8  41 82 00 2C */	beq lbl_80021894
/* 8002186C 0001E7CC  80 7E 00 08 */	lwz r3, 8(r30)
/* 80021870 0001E7D0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80021874 0001E7D4  28 00 00 00 */	cmplwi r0, 0
/* 80021878 0001E7D8  41 82 00 1C */	beq lbl_80021894
/* 8002187C 0001E7DC  38 7E 00 08 */	addi r3, r30, 8
/* 80021880 0001E7E0  48 31 F5 8D */	bl GetObj__6CTokenFv
/* 80021884 0001E7E4  80 03 00 04 */	lwz r0, 4(r3)
/* 80021888 0001E7E8  38 60 00 01 */	li r3, 1
/* 8002188C 0001E7EC  90 1E 00 10 */	stw r0, 0x10(r30)
/* 80021890 0001E7F0  48 00 00 08 */	b lbl_80021898
lbl_80021894:
/* 80021894 0001E7F4  38 60 00 00 */	li r3, 0
lbl_80021898:
/* 80021898 0001E7F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8002189C 0001E7FC  41 82 00 2C */	beq lbl_800218C8
/* 800218A0 0001E800  83 FE 00 10 */	lwz r31, 0x10(r30)
/* 800218A4 0001E804  7F E3 FB 78 */	mr r3, r31
/* 800218A8 0001E808  48 2A 0C A9 */	bl GetIsFinishedLoading__9CGuiFrameCFv
/* 800218AC 0001E80C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800218B0 0001E810  41 82 00 18 */	beq lbl_800218C8
/* 800218B4 0001E814  93 FE 00 14 */	stw r31, 0x14(r30)
/* 800218B8 0001E818  7F C3 F3 78 */	mr r3, r30
/* 800218BC 0001E81C  4B FF FC 15 */	bl FinishedLoading__14SFrontEndFrameFv
/* 800218C0 0001E820  38 60 00 01 */	li r3, 1
/* 800218C4 0001E824  48 00 00 08 */	b lbl_800218CC
lbl_800218C8:
/* 800218C8 0001E828  38 60 00 00 */	li r3, 0
lbl_800218CC:
/* 800218CC 0001E82C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800218D0 0001E830  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800218D4 0001E834  83 C1 00 08 */	lwz r30, 8(r1)
/* 800218D8 0001E838  7C 08 03 A6 */	mtlr r0
/* 800218DC 0001E83C  38 21 00 10 */	addi r1, r1, 0x10
/* 800218E0 0001E840  4E 80 00 20 */	blr

.global __dt__14SFrontEndFrameFv
__dt__14SFrontEndFrameFv:
/* 800218E4 0001E844  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800218E8 0001E848  7C 08 02 A6 */	mflr r0
/* 800218EC 0001E84C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800218F0 0001E850  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800218F4 0001E854  7C 9F 23 78 */	mr r31, r4
/* 800218F8 0001E858  93 C1 00 08 */	stw r30, 8(r1)
/* 800218FC 0001E85C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80021900 0001E860  41 82 00 30 */	beq lbl_80021930
/* 80021904 0001E864  34 1E 00 08 */	addic. r0, r30, 8
/* 80021908 0001E868  41 82 00 18 */	beq lbl_80021920
/* 8002190C 0001E86C  34 1E 00 08 */	addic. r0, r30, 8
/* 80021910 0001E870  41 82 00 10 */	beq lbl_80021920
/* 80021914 0001E874  38 7E 00 08 */	addi r3, r30, 8
/* 80021918 0001E878  38 80 00 00 */	li r4, 0
/* 8002191C 0001E87C  48 31 F5 25 */	bl __dt__6CTokenFv
lbl_80021920:
/* 80021920 0001E880  7F E0 07 35 */	extsh. r0, r31
/* 80021924 0001E884  40 81 00 0C */	ble lbl_80021930
/* 80021928 0001E888  7F C3 F3 78 */	mr r3, r30
/* 8002192C 0001E88C  48 2F 40 05 */	bl Free__7CMemoryFPCv
lbl_80021930:
/* 80021930 0001E890  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80021934 0001E894  7F C3 F3 78 */	mr r3, r30
/* 80021938 0001E898  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002193C 0001E89C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80021940 0001E8A0  7C 08 03 A6 */	mtlr r0
/* 80021944 0001E8A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80021948 0001E8A8  4E 80 00 20 */	blr

.global __ct__14SFrontEndFrameFv
__ct__14SFrontEndFrameFv:
/* 8002194C 0001E8AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80021950 0001E8B0  7C 08 02 A6 */	mflr r0
/* 80021954 0001E8B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80021958 0001E8B8  38 00 00 00 */	li r0, 0
/* 8002195C 0001E8BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80021960 0001E8C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80021964 0001E8C4  7C 7E 1B 78 */	mr r30, r3
/* 80021968 0001E8C8  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 8002196C 0001E8CC  90 9E 00 00 */	stw r4, 0(r30)
/* 80021970 0001E8D0  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 80021974 0001E8D4  38 A4 03 90 */	addi r5, r4, 0x390
/* 80021978 0001E8D8  38 61 00 08 */	addi r3, r1, 8
/* 8002197C 0001E8DC  90 1E 00 04 */	stw r0, 4(r30)
/* 80021980 0001E8E0  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 80021984 0001E8E4  81 84 00 00 */	lwz r12, 0(r4)
/* 80021988 0001E8E8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8002198C 0001E8EC  7D 89 03 A6 */	mtctr r12
/* 80021990 0001E8F0  4E 80 04 21 */	bctrl
/* 80021994 0001E8F4  3B FE 00 08 */	addi r31, r30, 8
/* 80021998 0001E8F8  38 81 00 08 */	addi r4, r1, 8
/* 8002199C 0001E8FC  7F E3 FB 78 */	mr r3, r31
/* 800219A0 0001E900  48 31 F5 09 */	bl __ct__6CTokenFRC6CToken
/* 800219A4 0001E904  38 00 00 00 */	li r0, 0
/* 800219A8 0001E908  38 61 00 08 */	addi r3, r1, 8
/* 800219AC 0001E90C  90 1F 00 08 */	stw r0, 8(r31)
/* 800219B0 0001E910  38 80 FF FF */	li r4, -1
/* 800219B4 0001E914  48 31 F4 8D */	bl __dt__6CTokenFv
/* 800219B8 0001E918  38 00 00 00 */	li r0, 0
/* 800219BC 0001E91C  38 7E 00 1C */	addi r3, r30, 0x1c
/* 800219C0 0001E920  90 1E 00 14 */	stw r0, 0x14(r30)
/* 800219C4 0001E924  90 1E 00 18 */	stw r0, 0x18(r30)
/* 800219C8 0001E928  48 00 14 AD */	bl __ct__12SGuiTextPairFv
/* 800219CC 0001E92C  38 7E 00 24 */	addi r3, r30, 0x24
/* 800219D0 0001E930  48 00 14 A5 */	bl __ct__12SGuiTextPairFv
/* 800219D4 0001E934  7F E3 FB 78 */	mr r3, r31
/* 800219D8 0001E938  48 31 F3 AD */	bl Lock__6CTokenFv
/* 800219DC 0001E93C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800219E0 0001E940  7F C3 F3 78 */	mr r3, r30
/* 800219E4 0001E944  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800219E8 0001E948  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800219EC 0001E94C  7C 08 03 A6 */	mtlr r0
/* 800219F0 0001E950  38 21 00 20 */	addi r1, r1, 0x20
/* 800219F4 0001E954  4E 80 00 20 */	blr

.global OnMessage__16CStateSetterFlowFv
OnMessage__16CStateSetterFlowFv:
/* 800219F8 0001E958  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800219FC 0001E95C  7C 08 02 A6 */	mflr r0
/* 80021A00 0001E960  90 01 00 14 */	stw r0, 0x14(r1)
/* 80021A04 0001E964  80 04 00 04 */	lwz r0, 4(r4)
/* 80021A08 0001E968  2C 00 00 04 */	cmpwi r0, 4
/* 80021A0C 0001E96C  41 82 00 08 */	beq lbl_80021A14
/* 80021A10 0001E970  48 00 00 14 */	b lbl_80021A24
lbl_80021A14:
/* 80021A14 0001E974  80 6D A0 78 */	lwz r3, gpMain@sda21(r13)
/* 80021A18 0001E978  4B FE 2B 79 */	bl RefreshGameState__5CMainFv
/* 80021A1C 0001E97C  38 60 00 02 */	li r3, 2
/* 80021A20 0001E980  48 00 00 08 */	b lbl_80021A28
lbl_80021A24:
/* 80021A24 0001E984  38 60 00 01 */	li r3, 1
lbl_80021A28:
/* 80021A28 0001E988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80021A2C 0001E98C  7C 08 03 A6 */	mtlr r0
/* 80021A30 0001E990  38 21 00 10 */	addi r1, r1, 0x10
/* 80021A34 0001E994  4E 80 00 20 */	blr

.global __dt__16CStateSetterFlowFv
__dt__16CStateSetterFlowFv:
/* 80021A38 0001E998  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80021A3C 0001E99C  7C 08 02 A6 */	mflr r0
/* 80021A40 0001E9A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80021A44 0001E9A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80021A48 0001E9A8  7C 9F 23 78 */	mr r31, r4
/* 80021A4C 0001E9AC  93 C1 00 08 */	stw r30, 8(r1)
/* 80021A50 0001E9B0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80021A54 0001E9B4  41 82 00 28 */	beq lbl_80021A7C
/* 80021A58 0001E9B8  3C A0 80 3E */	lis r5, lbl_803D9900@ha
/* 80021A5C 0001E9BC  38 80 00 00 */	li r4, 0
/* 80021A60 0001E9C0  38 05 99 00 */	addi r0, r5, lbl_803D9900@l
/* 80021A64 0001E9C4  90 1E 00 00 */	stw r0, 0(r30)
/* 80021A68 0001E9C8  48 03 11 3D */	bl __dt__6CIOWinFv
/* 80021A6C 0001E9CC  7F E0 07 35 */	extsh. r0, r31
/* 80021A70 0001E9D0  40 81 00 0C */	ble lbl_80021A7C
/* 80021A74 0001E9D4  7F C3 F3 78 */	mr r3, r30
/* 80021A78 0001E9D8  48 2F 3E B9 */	bl Free__7CMemoryFPCv
lbl_80021A7C:
/* 80021A7C 0001E9DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80021A80 0001E9E0  7F C3 F3 78 */	mr r3, r30
/* 80021A84 0001E9E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80021A88 0001E9E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80021A8C 0001E9EC  7C 08 03 A6 */	mtlr r0
/* 80021A90 0001E9F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80021A94 0001E9F4  4E 80 00 20 */	blr

.global __ct__16CStateSetterFlowFv
__ct__16CStateSetterFlowFv:
/* 80021A98 0001E9F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80021A9C 0001E9FC  7C 08 02 A6 */	mflr r0
/* 80021AA0 0001EA00  3C 80 80 3D */	lis r4, lbl_803CC644@ha
/* 80021AA4 0001EA04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80021AA8 0001EA08  38 84 C6 44 */	addi r4, r4, lbl_803CC644@l
/* 80021AAC 0001EA0C  38 84 03 A0 */	addi r4, r4, 0x3a0
/* 80021AB0 0001EA10  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80021AB4 0001EA14  7C 7F 1B 78 */	mr r31, r3
/* 80021AB8 0001EA18  38 61 00 08 */	addi r3, r1, 8
/* 80021ABC 0001EA1C  4B FE 31 FD */	bl string_l__4rstlFPCc
/* 80021AC0 0001EA20  7F E3 FB 78 */	mr r3, r31
/* 80021AC4 0001EA24  38 81 00 08 */	addi r4, r1, 8
/* 80021AC8 0001EA28  48 03 11 45 */	bl "__ct__6CIOWinFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80021ACC 0001EA2C  38 61 00 08 */	addi r3, r1, 8
/* 80021AD0 0001EA30  48 31 C0 11 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80021AD4 0001EA34  3C 80 80 3E */	lis r4, lbl_803D9900@ha
/* 80021AD8 0001EA38  7F E3 FB 78 */	mr r3, r31
/* 80021ADC 0001EA3C  38 04 99 00 */	addi r0, r4, lbl_803D9900@l
/* 80021AE0 0001EA40  90 1F 00 00 */	stw r0, 0(r31)
/* 80021AE4 0001EA44  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80021AE8 0001EA48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80021AEC 0001EA4C  7C 08 03 A6 */	mtlr r0
/* 80021AF0 0001EA50  38 21 00 20 */	addi r1, r1, 0x20
/* 80021AF4 0001EA54  4E 80 00 20 */	blr

.global SetUIText__13SGBALinkFrameF7EUIType
SetUIText__13SGBALinkFrameF7EUIType:
/* 80021AF8 0001EA58  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80021AFC 0001EA5C  7C 08 02 A6 */	mflr r0
/* 80021B00 0001EA60  90 01 00 94 */	stw r0, 0x94(r1)
/* 80021B04 0001EA64  BE 61 00 5C */	stmw r19, 0x5c(r1)
/* 80021B08 0001EA68  7C 96 23 78 */	mr r22, r4
/* 80021B0C 0001EA6C  28 16 00 09 */	cmplwi r22, 9
/* 80021B10 0001EA70  7C 75 1B 78 */	mr r21, r3
/* 80021B14 0001EA74  3A 80 FF FF */	li r20, -1
/* 80021B18 0001EA78  3B E0 FF FF */	li r31, -1
/* 80021B1C 0001EA7C  3B C0 FF FF */	li r30, -1
/* 80021B20 0001EA80  3B A0 00 00 */	li r29, 0
/* 80021B24 0001EA84  3B 80 00 00 */	li r28, 0
/* 80021B28 0001EA88  3B 60 00 00 */	li r27, 0
/* 80021B2C 0001EA8C  3B 40 00 00 */	li r26, 0
/* 80021B30 0001EA90  3B 20 00 00 */	li r25, 0
/* 80021B34 0001EA94  3B 00 00 00 */	li r24, 0
/* 80021B38 0001EA98  3A E0 00 00 */	li r23, 0
/* 80021B3C 0001EA9C  41 81 01 04 */	bgt lbl_80021C40
/* 80021B40 0001EAA0  3C 60 80 3E */	lis r3, lbl_803D98D8@ha
/* 80021B44 0001EAA4  56 C0 10 3A */	slwi r0, r22, 2
/* 80021B48 0001EAA8  38 63 98 D8 */	addi r3, r3, lbl_803D98D8@l
/* 80021B4C 0001EAAC  7C 03 00 2E */	lwzx r0, r3, r0
/* 80021B50 0001EAB0  7C 09 03 A6 */	mtctr r0
/* 80021B54 0001EAB4  4E 80 04 20 */	bctr
.global lbl_80021B58
lbl_80021B58:
/* 80021B58 0001EAB8  3A 80 00 49 */	li r20, 0x49
/* 80021B5C 0001EABC  3B C0 00 52 */	li r30, 0x52
/* 80021B60 0001EAC0  3B E0 00 53 */	li r31, 0x53
/* 80021B64 0001EAC4  3B 20 00 01 */	li r25, 1
/* 80021B68 0001EAC8  3B 60 00 01 */	li r27, 1
/* 80021B6C 0001EACC  48 00 00 D4 */	b lbl_80021C40
.global lbl_80021B70
lbl_80021B70:
/* 80021B70 0001EAD0  3A 80 00 44 */	li r20, 0x44
/* 80021B74 0001EAD4  3B C0 00 52 */	li r30, 0x52
/* 80021B78 0001EAD8  3B E0 00 53 */	li r31, 0x53
/* 80021B7C 0001EADC  3B A0 00 01 */	li r29, 1
/* 80021B80 0001EAE0  3B 80 00 01 */	li r28, 1
/* 80021B84 0001EAE4  3B 60 00 01 */	li r27, 1
/* 80021B88 0001EAE8  48 00 00 B8 */	b lbl_80021C40
.global lbl_80021B8C
lbl_80021B8C:
/* 80021B8C 0001EAEC  3A 80 00 4A */	li r20, 0x4a
/* 80021B90 0001EAF0  3B C0 00 52 */	li r30, 0x52
/* 80021B94 0001EAF4  3B E0 00 53 */	li r31, 0x53
/* 80021B98 0001EAF8  3B A0 00 01 */	li r29, 1
/* 80021B9C 0001EAFC  3B 40 00 01 */	li r26, 1
/* 80021BA0 0001EB00  3B 00 00 01 */	li r24, 1
/* 80021BA4 0001EB04  48 00 00 9C */	b lbl_80021C40
.global lbl_80021BA8
lbl_80021BA8:
/* 80021BA8 0001EB08  3A 80 00 4B */	li r20, 0x4b
/* 80021BAC 0001EB0C  3B C0 00 52 */	li r30, 0x52
/* 80021BB0 0001EB10  3B E0 00 53 */	li r31, 0x53
/* 80021BB4 0001EB14  3B A0 00 01 */	li r29, 1
/* 80021BB8 0001EB18  3B 00 00 01 */	li r24, 1
/* 80021BBC 0001EB1C  48 00 00 84 */	b lbl_80021C40
.global lbl_80021BC0
lbl_80021BC0:
/* 80021BC0 0001EB20  3A 80 00 4C */	li r20, 0x4c
/* 80021BC4 0001EB24  3B C0 00 52 */	li r30, 0x52
/* 80021BC8 0001EB28  3B E0 00 53 */	li r31, 0x53
/* 80021BCC 0001EB2C  3B A0 00 01 */	li r29, 1
/* 80021BD0 0001EB30  3B 00 00 01 */	li r24, 1
/* 80021BD4 0001EB34  3B 40 00 01 */	li r26, 1
/* 80021BD8 0001EB38  48 00 00 68 */	b lbl_80021C40
.global lbl_80021BDC
lbl_80021BDC:
/* 80021BDC 0001EB3C  80 75 00 04 */	lwz r3, 4(r21)
/* 80021BE0 0001EB40  48 22 70 5D */	bl StartLink__11CGBASupportFv
/* 80021BE4 0001EB44  3A 80 00 48 */	li r20, 0x48
/* 80021BE8 0001EB48  3B A0 00 01 */	li r29, 1
/* 80021BEC 0001EB4C  3B 00 00 01 */	li r24, 1
/* 80021BF0 0001EB50  3A E0 00 01 */	li r23, 1
/* 80021BF4 0001EB54  48 00 00 4C */	b lbl_80021C40
.global lbl_80021BF8
lbl_80021BF8:
/* 80021BF8 0001EB58  3A 80 00 45 */	li r20, 0x45
/* 80021BFC 0001EB5C  3B C0 00 52 */	li r30, 0x52
/* 80021C00 0001EB60  3B E0 00 54 */	li r31, 0x54
/* 80021C04 0001EB64  3B A0 00 01 */	li r29, 1
/* 80021C08 0001EB68  3B 80 00 01 */	li r28, 1
/* 80021C0C 0001EB6C  3B 60 00 01 */	li r27, 1
/* 80021C10 0001EB70  3B 40 00 01 */	li r26, 1
/* 80021C14 0001EB74  3B 00 00 01 */	li r24, 1
/* 80021C18 0001EB78  48 00 00 28 */	b lbl_80021C40
.global lbl_80021C1C
lbl_80021C1C:
/* 80021C1C 0001EB7C  88 75 00 40 */	lbz r3, 0x40(r21)
/* 80021C20 0001EB80  3B E0 00 53 */	li r31, 0x53
/* 80021C24 0001EB84  3B A0 00 01 */	li r29, 1
/* 80021C28 0001EB88  3B 00 00 01 */	li r24, 1
/* 80021C2C 0001EB8C  7C 03 00 D0 */	neg r0, r3
/* 80021C30 0001EB90  7C 00 1B 78 */	or r0, r0, r3
/* 80021C34 0001EB94  7C 03 FE 70 */	srawi r3, r0, 0x1f
/* 80021C38 0001EB98  38 03 00 47 */	addi r0, r3, 0x47
/* 80021C3C 0001EB9C  7C 14 03 78 */	mr r20, r0
.global lbl_80021C40
lbl_80021C40:
/* 80021C40 0001EBA0  38 61 00 38 */	addi r3, r1, 0x38
/* 80021C44 0001EBA4  38 8D 81 4C */	addi r4, r13, lbl_805A6D0C@sda21
/* 80021C48 0001EBA8  4B FF 3D A9 */	bl wstring_l__4rstlFPCw
/* 80021C4C 0001EBAC  38 61 00 48 */	addi r3, r1, 0x48
/* 80021C50 0001EBB0  38 81 00 38 */	addi r4, r1, 0x38
/* 80021C54 0001EBB4  48 31 BB 35 */	bl "__ct__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80021C58 0001EBB8  38 61 00 38 */	addi r3, r1, 0x38
/* 80021C5C 0001EBBC  48 31 B4 D9 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 80021C60 0001EBC0  2C 14 FF FF */	cmpwi r20, -1
/* 80021C64 0001EBC4  3A 60 00 00 */	li r19, 0
/* 80021C68 0001EBC8  40 82 00 0C */	bne lbl_80021C74
/* 80021C6C 0001EBCC  38 81 00 48 */	addi r4, r1, 0x48
/* 80021C70 0001EBD0  48 00 00 24 */	b lbl_80021C94
lbl_80021C74:
/* 80021C74 0001EBD4  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 80021C78 0001EBD8  7E 84 A3 78 */	mr r4, r20
/* 80021C7C 0001EBDC  48 33 4A 81 */	bl GetString__12CStringTableCFi
/* 80021C80 0001EBE0  7C 64 1B 78 */	mr r4, r3
/* 80021C84 0001EBE4  38 61 00 28 */	addi r3, r1, 0x28
/* 80021C88 0001EBE8  4B FF 3D 69 */	bl wstring_l__4rstlFPCw
/* 80021C8C 0001EBEC  3A 60 00 01 */	li r19, 1
/* 80021C90 0001EBF0  38 81 00 28 */	addi r4, r1, 0x28
lbl_80021C94:
/* 80021C94 0001EBF4  38 75 00 0C */	addi r3, r21, 0xc
/* 80021C98 0001EBF8  48 00 10 79 */	bl sub_80022d10
/* 80021C9C 0001EBFC  7E 60 07 75 */	extsb. r0, r19
/* 80021CA0 0001EC00  41 82 00 0C */	beq lbl_80021CAC
/* 80021CA4 0001EC04  38 61 00 28 */	addi r3, r1, 0x28
/* 80021CA8 0001EC08  48 31 B4 8D */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
lbl_80021CAC:
/* 80021CAC 0001EC0C  2C 1F FF FF */	cmpwi r31, -1
/* 80021CB0 0001EC10  3A 60 00 00 */	li r19, 0
/* 80021CB4 0001EC14  40 82 00 0C */	bne lbl_80021CC0
/* 80021CB8 0001EC18  38 81 00 48 */	addi r4, r1, 0x48
/* 80021CBC 0001EC1C  48 00 00 24 */	b lbl_80021CE0
lbl_80021CC0:
/* 80021CC0 0001EC20  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 80021CC4 0001EC24  7F E4 FB 78 */	mr r4, r31
/* 80021CC8 0001EC28  48 33 4A 35 */	bl GetString__12CStringTableCFi
/* 80021CCC 0001EC2C  7C 64 1B 78 */	mr r4, r3
/* 80021CD0 0001EC30  38 61 00 18 */	addi r3, r1, 0x18
/* 80021CD4 0001EC34  4B FF 3D 1D */	bl wstring_l__4rstlFPCw
/* 80021CD8 0001EC38  3A 60 00 01 */	li r19, 1
/* 80021CDC 0001EC3C  38 81 00 18 */	addi r4, r1, 0x18
lbl_80021CE0:
/* 80021CE0 0001EC40  80 75 00 14 */	lwz r3, 0x14(r21)
/* 80021CE4 0001EC44  38 A0 00 00 */	li r5, 0
/* 80021CE8 0001EC48  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80021CEC 0001EC4C  48 2A 7B 99 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80021CF0 0001EC50  7E 60 07 75 */	extsb. r0, r19
/* 80021CF4 0001EC54  41 82 00 0C */	beq lbl_80021D00
/* 80021CF8 0001EC58  38 61 00 18 */	addi r3, r1, 0x18
/* 80021CFC 0001EC5C  48 31 B4 39 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
lbl_80021D00:
/* 80021D00 0001EC60  2C 1E FF FF */	cmpwi r30, -1
/* 80021D04 0001EC64  3A 60 00 00 */	li r19, 0
/* 80021D08 0001EC68  40 82 00 0C */	bne lbl_80021D14
/* 80021D0C 0001EC6C  38 81 00 48 */	addi r4, r1, 0x48
/* 80021D10 0001EC70  48 00 00 24 */	b lbl_80021D34
lbl_80021D14:
/* 80021D14 0001EC74  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 80021D18 0001EC78  7F C4 F3 78 */	mr r4, r30
/* 80021D1C 0001EC7C  48 33 49 E1 */	bl GetString__12CStringTableCFi
/* 80021D20 0001EC80  7C 64 1B 78 */	mr r4, r3
/* 80021D24 0001EC84  38 61 00 08 */	addi r3, r1, 8
/* 80021D28 0001EC88  4B FF 3C C9 */	bl wstring_l__4rstlFPCw
/* 80021D2C 0001EC8C  3A 60 00 01 */	li r19, 1
/* 80021D30 0001EC90  38 81 00 08 */	addi r4, r1, 8
lbl_80021D34:
/* 80021D34 0001EC94  80 75 00 18 */	lwz r3, 0x18(r21)
/* 80021D38 0001EC98  38 A0 00 00 */	li r5, 0
/* 80021D3C 0001EC9C  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80021D40 0001ECA0  48 2A 7B 45 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80021D44 0001ECA4  7E 60 07 75 */	extsb. r0, r19
/* 80021D48 0001ECA8  41 82 00 0C */	beq lbl_80021D54
/* 80021D4C 0001ECAC  38 61 00 08 */	addi r3, r1, 8
/* 80021D50 0001ECB0  48 31 B3 E5 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
lbl_80021D54:
/* 80021D54 0001ECB4  80 75 00 1C */	lwz r3, 0x1c(r21)
/* 80021D58 0001ECB8  38 80 00 01 */	li r4, 1
/* 80021D5C 0001ECBC  38 A0 00 01 */	li r5, 1
/* 80021D60 0001ECC0  48 2A 89 89 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 80021D64 0001ECC4  80 75 00 20 */	lwz r3, 0x20(r21)
/* 80021D68 0001ECC8  38 80 00 01 */	li r4, 1
/* 80021D6C 0001ECCC  38 A0 00 01 */	li r5, 1
/* 80021D70 0001ECD0  48 2A 89 79 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 80021D74 0001ECD4  80 75 00 24 */	lwz r3, 0x24(r21)
/* 80021D78 0001ECD8  7F A4 EB 78 */	mr r4, r29
/* 80021D7C 0001ECDC  38 A0 00 01 */	li r5, 1
/* 80021D80 0001ECE0  48 2A 89 69 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 80021D84 0001ECE4  80 75 00 28 */	lwz r3, 0x28(r21)
/* 80021D88 0001ECE8  7F 84 E3 78 */	mr r4, r28
/* 80021D8C 0001ECEC  38 A0 00 01 */	li r5, 1
/* 80021D90 0001ECF0  48 2A 89 59 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 80021D94 0001ECF4  80 75 00 2C */	lwz r3, 0x2c(r21)
/* 80021D98 0001ECF8  7F 64 DB 78 */	mr r4, r27
/* 80021D9C 0001ECFC  38 A0 00 01 */	li r5, 1
/* 80021DA0 0001ED00  48 2A 89 49 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 80021DA4 0001ED04  80 75 00 30 */	lwz r3, 0x30(r21)
/* 80021DA8 0001ED08  7F 44 D3 78 */	mr r4, r26
/* 80021DAC 0001ED0C  38 A0 00 01 */	li r5, 1
/* 80021DB0 0001ED10  48 2A 89 39 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 80021DB4 0001ED14  80 75 00 34 */	lwz r3, 0x34(r21)
/* 80021DB8 0001ED18  7F 24 CB 78 */	mr r4, r25
/* 80021DBC 0001ED1C  38 A0 00 01 */	li r5, 1
/* 80021DC0 0001ED20  48 2A 89 29 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 80021DC4 0001ED24  80 75 00 38 */	lwz r3, 0x38(r21)
/* 80021DC8 0001ED28  7F 04 C3 78 */	mr r4, r24
/* 80021DCC 0001ED2C  38 A0 00 01 */	li r5, 1
/* 80021DD0 0001ED30  48 2A 89 19 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 80021DD4 0001ED34  80 75 00 3C */	lwz r3, 0x3c(r21)
/* 80021DD8 0001ED38  7E E4 BB 78 */	mr r4, r23
/* 80021DDC 0001ED3C  38 A0 00 01 */	li r5, 1
/* 80021DE0 0001ED40  48 2A 89 09 */	bl SetVisibility__10CGuiWidgetFb14ETraversalMode
/* 80021DE4 0001ED44  92 D5 00 00 */	stw r22, 0(r21)
/* 80021DE8 0001ED48  38 61 00 48 */	addi r3, r1, 0x48
/* 80021DEC 0001ED4C  48 31 B3 49 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 80021DF0 0001ED50  BA 61 00 5C */	lmw r19, 0x5c(r1)
/* 80021DF4 0001ED54  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80021DF8 0001ED58  7C 08 03 A6 */	mtlr r0
/* 80021DFC 0001ED5C  38 21 00 90 */	addi r1, r1, 0x90
/* 80021E00 0001ED60  4E 80 00 20 */	blr

.global ProcessUserInput__13SGBALinkFrameFRC11CFinalInputb
ProcessUserInput__13SGBALinkFrameFRC11CFinalInputb:
/* 80021E04 0001ED64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80021E08 0001ED68  7C 08 02 A6 */	mflr r0
/* 80021E0C 0001ED6C  54 A6 06 3E */	clrlwi r6, r5, 0x18
/* 80021E10 0001ED70  90 01 00 24 */	stw r0, 0x24(r1)
/* 80021E14 0001ED74  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80021E18 0001ED78  7C 7F 1B 78 */	mr r31, r3
/* 80021E1C 0001ED7C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80021E20 0001ED80  7C 9E 23 78 */	mr r30, r4
/* 80021E24 0001ED84  88 03 00 40 */	lbz r0, 0x40(r3)
/* 80021E28 0001ED88  7C 06 00 40 */	cmplw r6, r0
/* 80021E2C 0001ED8C  41 82 00 10 */	beq lbl_80021E3C
/* 80021E30 0001ED90  98 BF 00 40 */	stb r5, 0x40(r31)
/* 80021E34 0001ED94  80 9F 00 00 */	lwz r4, 0(r31)
/* 80021E38 0001ED98  4B FF FC C1 */	bl SetUIText__13SGBALinkFrameF7EUIType
lbl_80021E3C:
/* 80021E3C 0001ED9C  80 9F 00 00 */	lwz r4, 0(r31)
/* 80021E40 0001EDA0  2C 04 00 08 */	cmpwi r4, 8
/* 80021E44 0001EDA4  41 82 01 A0 */	beq lbl_80021FE4
/* 80021E48 0001EDA8  40 80 00 1C */	bge lbl_80021E64
/* 80021E4C 0001EDAC  2C 04 00 04 */	cmpwi r4, 4
/* 80021E50 0001EDB0  41 82 00 B4 */	beq lbl_80021F04
/* 80021E54 0001EDB4  40 80 00 1C */	bge lbl_80021E70
/* 80021E58 0001EDB8  2C 04 00 00 */	cmpwi r4, 0
/* 80021E5C 0001EDBC  40 80 00 14 */	bge lbl_80021E70
/* 80021E60 0001EDC0  48 00 01 94 */	b lbl_80021FF4
lbl_80021E64:
/* 80021E64 0001EDC4  2C 04 00 0A */	cmpwi r4, 0xa
/* 80021E68 0001EDC8  40 80 01 8C */	bge lbl_80021FF4
/* 80021E6C 0001EDCC  48 00 01 80 */	b lbl_80021FEC
lbl_80021E70:
/* 80021E70 0001EDD0  88 7E 00 2D */	lbz r3, 0x2d(r30)
/* 80021E74 0001EDD4  54 60 EF FF */	rlwinm. r0, r3, 0x1d, 0x1f, 0x1f
/* 80021E78 0001EDD8  41 82 00 28 */	beq lbl_80021EA0
/* 80021E7C 0001EDDC  48 00 10 D9 */	bl PlayAdvanceSfx__11CFrontEndUIFv
/* 80021E80 0001EDE0  80 1F 00 00 */	lwz r0, 0(r31)
/* 80021E84 0001EDE4  3C 60 80 3D */	lis r3, lbl_803CC5F4@ha
/* 80021E88 0001EDE8  38 83 C5 F4 */	addi r4, r3, lbl_803CC5F4@l
/* 80021E8C 0001EDEC  7F E3 FB 78 */	mr r3, r31
/* 80021E90 0001EDF0  54 00 10 3A */	slwi r0, r0, 2
/* 80021E94 0001EDF4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80021E98 0001EDF8  4B FF FC 61 */	bl SetUIText__13SGBALinkFrameF7EUIType
/* 80021E9C 0001EDFC  48 00 01 58 */	b lbl_80021FF4
lbl_80021EA0:
/* 80021EA0 0001EE00  54 60 F7 FF */	rlwinm. r0, r3, 0x1e, 0x1f, 0x1f
/* 80021EA4 0001EE04  41 82 01 50 */	beq lbl_80021FF4
/* 80021EA8 0001EE08  3C 60 80 3D */	lis r3, lbl_803CC61C@ha
/* 80021EAC 0001EE0C  54 80 10 3A */	slwi r0, r4, 2
/* 80021EB0 0001EE10  38 63 C6 1C */	addi r3, r3, lbl_803CC61C@l
/* 80021EB4 0001EE14  7C 03 00 2E */	lwzx r0, r3, r0
/* 80021EB8 0001EE18  2C 00 FF FF */	cmpwi r0, -1
/* 80021EBC 0001EE1C  41 82 01 38 */	beq lbl_80021FF4
/* 80021EC0 0001EE20  A9 02 C5 FA */	lha r8, lbl_805AE31A@sda21(r2)
/* 80021EC4 0001EE24  38 61 00 10 */	addi r3, r1, 0x10
/* 80021EC8 0001EE28  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 80021ECC 0001EE2C  38 80 04 46 */	li r4, 0x446
/* 80021ED0 0001EE30  38 A0 00 7F */	li r5, 0x7f
/* 80021ED4 0001EE34  38 C0 00 40 */	li r6, 0x40
/* 80021ED8 0001EE38  38 E0 00 00 */	li r7, 0
/* 80021EDC 0001EE3C  39 20 00 00 */	li r9, 0
/* 80021EE0 0001EE40  48 2C 7E 95 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 80021EE4 0001EE44  80 1F 00 00 */	lwz r0, 0(r31)
/* 80021EE8 0001EE48  3C 60 80 3D */	lis r3, lbl_803CC61C@ha
/* 80021EEC 0001EE4C  38 83 C6 1C */	addi r4, r3, lbl_803CC61C@l
/* 80021EF0 0001EE50  7F E3 FB 78 */	mr r3, r31
/* 80021EF4 0001EE54  54 00 10 3A */	slwi r0, r0, 2
/* 80021EF8 0001EE58  7C 84 00 2E */	lwzx r4, r4, r0
/* 80021EFC 0001EE5C  4B FF FB FD */	bl SetUIText__13SGBALinkFrameF7EUIType
/* 80021F00 0001EE60  48 00 00 F4 */	b lbl_80021FF4
lbl_80021F04:
/* 80021F04 0001EE64  80 7F 00 04 */	lwz r3, 4(r31)
/* 80021F08 0001EE68  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80021F0C 0001EE6C  2C 00 00 07 */	cmpwi r0, 7
/* 80021F10 0001EE70  40 82 00 98 */	bne lbl_80021FA8
/* 80021F14 0001EE74  88 03 00 44 */	lbz r0, 0x44(r3)
/* 80021F18 0001EE78  28 00 00 00 */	cmplwi r0, 0
/* 80021F1C 0001EE7C  41 82 00 14 */	beq lbl_80021F30
/* 80021F20 0001EE80  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 80021F24 0001EE84  38 80 00 01 */	li r4, 1
/* 80021F28 0001EE88  38 63 00 A8 */	addi r3, r3, 0xa8
/* 80021F2C 0001EE8C  48 1B 32 E5 */	bl sub_801d5210
lbl_80021F30:
/* 80021F30 0001EE90  80 7F 00 04 */	lwz r3, 4(r31)
/* 80021F34 0001EE94  88 03 00 45 */	lbz r0, 0x45(r3)
/* 80021F38 0001EE98  28 00 00 00 */	cmplwi r0, 0
/* 80021F3C 0001EE9C  41 82 00 14 */	beq lbl_80021F50
/* 80021F40 0001EEA0  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 80021F44 0001EEA4  38 80 00 01 */	li r4, 1
/* 80021F48 0001EEA8  38 63 00 A8 */	addi r3, r3, 0xa8
/* 80021F4C 0001EEAC  48 1B 32 85 */	bl sub_801d51d0
lbl_80021F50:
/* 80021F50 0001EEB0  80 7F 00 04 */	lwz r3, 4(r31)
/* 80021F54 0001EEB4  88 03 00 44 */	lbz r0, 0x44(r3)
/* 80021F58 0001EEB8  28 00 00 00 */	cmplwi r0, 0
/* 80021F5C 0001EEBC  41 82 00 18 */	beq lbl_80021F74
/* 80021F60 0001EEC0  48 00 0F F5 */	bl PlayAdvanceSfx__11CFrontEndUIFv
/* 80021F64 0001EEC4  7F E3 FB 78 */	mr r3, r31
/* 80021F68 0001EEC8  38 80 00 06 */	li r4, 6
/* 80021F6C 0001EECC  4B FF FB 8D */	bl SetUIText__13SGBALinkFrameF7EUIType
/* 80021F70 0001EED0  48 00 00 84 */	b lbl_80021FF4
lbl_80021F74:
/* 80021F74 0001EED4  A9 02 C5 FA */	lha r8, lbl_805AE31A@sda21(r2)
/* 80021F78 0001EED8  38 61 00 0C */	addi r3, r1, 0xc
/* 80021F7C 0001EEDC  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 80021F80 0001EEE0  38 80 04 46 */	li r4, 0x446
/* 80021F84 0001EEE4  38 A0 00 7F */	li r5, 0x7f
/* 80021F88 0001EEE8  38 C0 00 40 */	li r6, 0x40
/* 80021F8C 0001EEEC  38 E0 00 00 */	li r7, 0
/* 80021F90 0001EEF0  39 20 00 00 */	li r9, 0
/* 80021F94 0001EEF4  48 2C 7D E1 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 80021F98 0001EEF8  7F E3 FB 78 */	mr r3, r31
/* 80021F9C 0001EEFC  38 80 00 05 */	li r4, 5
/* 80021FA0 0001EF00  4B FF FB 59 */	bl SetUIText__13SGBALinkFrameF7EUIType
/* 80021FA4 0001EF04  48 00 00 50 */	b lbl_80021FF4
lbl_80021FA8:
/* 80021FA8 0001EF08  2C 00 00 08 */	cmpwi r0, 8
/* 80021FAC 0001EF0C  40 82 00 48 */	bne lbl_80021FF4
/* 80021FB0 0001EF10  A9 02 C5 FA */	lha r8, lbl_805AE31A@sda21(r2)
/* 80021FB4 0001EF14  38 61 00 08 */	addi r3, r1, 8
/* 80021FB8 0001EF18  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 80021FBC 0001EF1C  38 80 04 46 */	li r4, 0x446
/* 80021FC0 0001EF20  38 A0 00 7F */	li r5, 0x7f
/* 80021FC4 0001EF24  38 C0 00 40 */	li r6, 0x40
/* 80021FC8 0001EF28  38 E0 00 00 */	li r7, 0
/* 80021FCC 0001EF2C  39 20 00 00 */	li r9, 0
/* 80021FD0 0001EF30  48 2C 7D A5 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 80021FD4 0001EF34  7F E3 FB 78 */	mr r3, r31
/* 80021FD8 0001EF38  38 80 00 05 */	li r4, 5
/* 80021FDC 0001EF3C  4B FF FB 1D */	bl SetUIText__13SGBALinkFrameF7EUIType
/* 80021FE0 0001EF40  48 00 00 14 */	b lbl_80021FF4
lbl_80021FE4:
/* 80021FE4 0001EF44  38 60 00 01 */	li r3, 1
/* 80021FE8 0001EF48  48 00 00 10 */	b lbl_80021FF8
lbl_80021FEC:
/* 80021FEC 0001EF4C  38 60 00 02 */	li r3, 2
/* 80021FF0 0001EF50  48 00 00 08 */	b lbl_80021FF8
lbl_80021FF4:
/* 80021FF4 0001EF54  38 60 00 00 */	li r3, 0
lbl_80021FF8:
/* 80021FF8 0001EF58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80021FFC 0001EF5C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80022000 0001EF60  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80022004 0001EF64  7C 08 03 A6 */	mtlr r0
/* 80022008 0001EF68  38 21 00 20 */	addi r1, r1, 0x20
/* 8002200C 0001EF6C  4E 80 00 20 */	blr

.global Update__13SGBALinkFrameFf
Update__13SGBALinkFrameFf:
/* 80022010 0001EF70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80022014 0001EF74  7C 08 02 A6 */	mflr r0
/* 80022018 0001EF78  90 01 00 24 */	stw r0, 0x24(r1)
/* 8002201C 0001EF7C  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 80022020 0001EF80  FF E0 08 90 */	fmr f31, f1
/* 80022024 0001EF84  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80022028 0001EF88  7C 7F 1B 78 */	mr r31, r3
/* 8002202C 0001EF8C  80 63 00 04 */	lwz r3, 4(r3)
/* 80022030 0001EF90  48 22 68 E9 */	bl Update__11CGBASupportFv
/* 80022034 0001EF94  FC 20 F8 90 */	fmr f1, f31
/* 80022038 0001EF98  80 7F 00 08 */	lwz r3, 8(r31)
/* 8002203C 0001EF9C  48 2A 06 C9 */	bl Update__9CGuiFrameFf
/* 80022040 0001EFA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80022044 0001EFA4  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 80022048 0001EFA8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8002204C 0001EFAC  7C 08 03 A6 */	mtlr r0
/* 80022050 0001EFB0  38 21 00 20 */	addi r1, r1, 0x20
/* 80022054 0001EFB4  4E 80 00 20 */	blr

.global FinishedLoading__13SGBALinkFrameFv
FinishedLoading__13SGBALinkFrameFv:
/* 80022058 0001EFB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8002205C 0001EFBC  7C 08 02 A6 */	mflr r0
/* 80022060 0001EFC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80022064 0001EFC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80022068 0001EFC8  7C 7F 1B 78 */	mr r31, r3
/* 8002206C 0001EFCC  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 80022070 0001EFD0  38 A3 C6 44 */	addi r5, r3, lbl_803CC644@l
/* 80022074 0001EFD4  80 9F 00 08 */	lwz r4, 8(r31)
/* 80022078 0001EFD8  38 61 00 08 */	addi r3, r1, 8
/* 8002207C 0001EFDC  38 A5 01 81 */	addi r5, r5, 0x181
/* 80022080 0001EFE0  48 00 0D 79 */	bl FindTextPanePair__14SFrontEndFrameFPC9CGuiFramePCc
/* 80022084 0001EFE4  80 01 00 08 */	lwz r0, 8(r1)
/* 80022088 0001EFE8  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 8002208C 0001EFEC  38 63 C6 44 */	addi r3, r3, lbl_803CC644@l
/* 80022090 0001EFF0  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80022094 0001EFF4  38 83 03 A1 */	addi r4, r3, 0x3a1
/* 80022098 0001EFF8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8002209C 0001EFFC  90 1F 00 10 */	stw r0, 0x10(r31)
/* 800220A0 0001F000  80 7F 00 08 */	lwz r3, 8(r31)
/* 800220A4 0001F004  48 2A 00 B1 */	bl FindWidget__9CGuiFrameCFPCc
/* 800220A8 0001F008  90 7F 00 14 */	stw r3, 0x14(r31)
/* 800220AC 0001F00C  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 800220B0 0001F010  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 800220B4 0001F014  80 7F 00 08 */	lwz r3, 8(r31)
/* 800220B8 0001F018  38 84 03 AE */	addi r4, r4, 0x3ae
/* 800220BC 0001F01C  48 2A 00 99 */	bl FindWidget__9CGuiFrameCFPCc
/* 800220C0 0001F020  90 7F 00 18 */	stw r3, 0x18(r31)
/* 800220C4 0001F024  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 800220C8 0001F028  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 800220CC 0001F02C  80 7F 00 08 */	lwz r3, 8(r31)
/* 800220D0 0001F030  38 84 03 BA */	addi r4, r4, 0x3ba
/* 800220D4 0001F034  48 2A 00 81 */	bl FindWidget__9CGuiFrameCFPCc
/* 800220D8 0001F038  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 800220DC 0001F03C  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 800220E0 0001F040  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 800220E4 0001F044  80 7F 00 08 */	lwz r3, 8(r31)
/* 800220E8 0001F048  38 84 03 C3 */	addi r4, r4, 0x3c3
/* 800220EC 0001F04C  48 2A 00 69 */	bl FindWidget__9CGuiFrameCFPCc
/* 800220F0 0001F050  90 7F 00 20 */	stw r3, 0x20(r31)
/* 800220F4 0001F054  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 800220F8 0001F058  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 800220FC 0001F05C  80 7F 00 08 */	lwz r3, 8(r31)
/* 80022100 0001F060  38 84 03 CD */	addi r4, r4, 0x3cd
/* 80022104 0001F064  48 2A 00 51 */	bl FindWidget__9CGuiFrameCFPCc
/* 80022108 0001F068  90 7F 00 24 */	stw r3, 0x24(r31)
/* 8002210C 0001F06C  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 80022110 0001F070  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 80022114 0001F074  80 7F 00 08 */	lwz r3, 8(r31)
/* 80022118 0001F078  38 84 03 D9 */	addi r4, r4, 0x3d9
/* 8002211C 0001F07C  48 2A 00 39 */	bl FindWidget__9CGuiFrameCFPCc
/* 80022120 0001F080  90 7F 00 28 */	stw r3, 0x28(r31)
/* 80022124 0001F084  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 80022128 0001F088  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 8002212C 0001F08C  80 7F 00 08 */	lwz r3, 8(r31)
/* 80022130 0001F090  38 84 03 EC */	addi r4, r4, 0x3ec
/* 80022134 0001F094  48 2A 00 21 */	bl FindWidget__9CGuiFrameCFPCc
/* 80022138 0001F098  90 7F 00 2C */	stw r3, 0x2c(r31)
/* 8002213C 0001F09C  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 80022140 0001F0A0  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 80022144 0001F0A4  80 7F 00 08 */	lwz r3, 8(r31)
/* 80022148 0001F0A8  38 84 04 00 */	addi r4, r4, 0x400
/* 8002214C 0001F0AC  48 2A 00 09 */	bl FindWidget__9CGuiFrameCFPCc
/* 80022150 0001F0B0  90 7F 00 30 */	stw r3, 0x30(r31)
/* 80022154 0001F0B4  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 80022158 0001F0B8  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 8002215C 0001F0BC  80 7F 00 08 */	lwz r3, 8(r31)
/* 80022160 0001F0C0  38 84 04 18 */	addi r4, r4, 0x418
/* 80022164 0001F0C4  48 29 FF F1 */	bl FindWidget__9CGuiFrameCFPCc
/* 80022168 0001F0C8  90 7F 00 34 */	stw r3, 0x34(r31)
/* 8002216C 0001F0CC  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 80022170 0001F0D0  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 80022174 0001F0D4  80 7F 00 08 */	lwz r3, 8(r31)
/* 80022178 0001F0D8  38 84 04 25 */	addi r4, r4, 0x425
/* 8002217C 0001F0DC  48 29 FF D9 */	bl FindWidget__9CGuiFrameCFPCc
/* 80022180 0001F0E0  90 7F 00 38 */	stw r3, 0x38(r31)
/* 80022184 0001F0E4  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 80022188 0001F0E8  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 8002218C 0001F0EC  80 7F 00 08 */	lwz r3, 8(r31)
/* 80022190 0001F0F0  38 84 04 35 */	addi r4, r4, 0x435
/* 80022194 0001F0F4  48 29 FF C1 */	bl FindWidget__9CGuiFrameCFPCc
/* 80022198 0001F0F8  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 8002219C 0001F0FC  7F E3 FB 78 */	mr r3, r31
/* 800221A0 0001F100  38 80 00 00 */	li r4, 0
/* 800221A4 0001F104  4B FF F9 55 */	bl SetUIText__13SGBALinkFrameF7EUIType
/* 800221A8 0001F108  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800221AC 0001F10C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800221B0 0001F110  7C 08 03 A6 */	mtlr r0
/* 800221B4 0001F114  38 21 00 20 */	addi r1, r1, 0x20
/* 800221B8 0001F118  4E 80 00 20 */	blr

.global Draw__13SGBALinkFrameFv
Draw__13SGBALinkFrameFv:
/* 800221BC 0001F11C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800221C0 0001F120  7C 08 02 A6 */	mflr r0
/* 800221C4 0001F124  3C 80 80 5A */	lis r4, lbl_8059FD08@ha
/* 800221C8 0001F128  90 01 00 14 */	stw r0, 0x14(r1)
/* 800221CC 0001F12C  38 84 FD 08 */	addi r4, r4, lbl_8059FD08@l
/* 800221D0 0001F130  80 63 00 08 */	lwz r3, 8(r3)
/* 800221D4 0001F134  48 2A 05 61 */	bl Draw__9CGuiFrameCFRC19CGuiWidgetDrawParms
/* 800221D8 0001F138  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800221DC 0001F13C  7C 08 03 A6 */	mtlr r0
/* 800221E0 0001F140  38 21 00 10 */	addi r1, r1, 0x10
/* 800221E4 0001F144  4E 80 00 20 */	blr

.global __dt__13SGBALinkFrameFv
__dt__13SGBALinkFrameFv:
/* 800221E8 0001F148  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800221EC 0001F14C  7C 08 02 A6 */	mflr r0
/* 800221F0 0001F150  90 01 00 14 */	stw r0, 0x14(r1)
/* 800221F4 0001F154  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800221F8 0001F158  7C 7F 1B 79 */	or. r31, r3, r3
/* 800221FC 0001F15C  41 82 00 10 */	beq lbl_8002220C
/* 80022200 0001F160  7C 80 07 35 */	extsh. r0, r4
/* 80022204 0001F164  40 81 00 08 */	ble lbl_8002220C
/* 80022208 0001F168  48 2F 37 29 */	bl Free__7CMemoryFPCv
lbl_8002220C:
/* 8002220C 0001F16C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80022210 0001F170  7F E3 FB 78 */	mr r3, r31
/* 80022214 0001F174  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80022218 0001F178  7C 08 03 A6 */	mtlr r0
/* 8002221C 0001F17C  38 21 00 10 */	addi r1, r1, 0x10
/* 80022220 0001F180  4E 80 00 20 */	blr

.global __ct__13SGBALinkFrameFPC9CGuiFrameP11CGBASupportb
__ct__13SGBALinkFrameFPC9CGuiFrameP11CGBASupportb:
/* 80022224 0001F184  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80022228 0001F188  7C 08 02 A6 */	mflr r0
/* 8002222C 0001F18C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80022230 0001F190  38 00 FF FF */	li r0, -1
/* 80022234 0001F194  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80022238 0001F198  7C DF 33 78 */	mr r31, r6
/* 8002223C 0001F19C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80022240 0001F1A0  7C BE 2B 78 */	mr r30, r5
/* 80022244 0001F1A4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80022248 0001F1A8  7C 7D 1B 78 */	mr r29, r3
/* 8002224C 0001F1AC  90 03 00 00 */	stw r0, 0(r3)
/* 80022250 0001F1B0  38 7D 00 0C */	addi r3, r29, 0xc
/* 80022254 0001F1B4  93 DD 00 04 */	stw r30, 4(r29)
/* 80022258 0001F1B8  90 9D 00 08 */	stw r4, 8(r29)
/* 8002225C 0001F1BC  48 00 0C 19 */	bl __ct__12SGuiTextPairFv
/* 80022260 0001F1C0  38 00 00 00 */	li r0, 0
/* 80022264 0001F1C4  7F C3 F3 78 */	mr r3, r30
/* 80022268 0001F1C8  90 1D 00 14 */	stw r0, 0x14(r29)
/* 8002226C 0001F1CC  90 1D 00 18 */	stw r0, 0x18(r29)
/* 80022270 0001F1D0  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 80022274 0001F1D4  90 1D 00 20 */	stw r0, 0x20(r29)
/* 80022278 0001F1D8  90 1D 00 24 */	stw r0, 0x24(r29)
/* 8002227C 0001F1DC  90 1D 00 28 */	stw r0, 0x28(r29)
/* 80022280 0001F1E0  90 1D 00 2C */	stw r0, 0x2c(r29)
/* 80022284 0001F1E4  90 1D 00 30 */	stw r0, 0x30(r29)
/* 80022288 0001F1E8  90 1D 00 34 */	stw r0, 0x34(r29)
/* 8002228C 0001F1EC  90 1D 00 38 */	stw r0, 0x38(r29)
/* 80022290 0001F1F0  90 1D 00 3C */	stw r0, 0x3c(r29)
/* 80022294 0001F1F4  9B FD 00 40 */	stb r31, 0x40(r29)
/* 80022298 0001F1F8  48 22 69 B9 */	bl InitializeSupport__11CGBASupportFv
/* 8002229C 0001F1FC  7F A3 EB 78 */	mr r3, r29
/* 800222A0 0001F200  4B FF FD B9 */	bl FinishedLoading__13SGBALinkFrameFv
/* 800222A4 0001F204  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800222A8 0001F208  7F A3 EB 78 */	mr r3, r29
/* 800222AC 0001F20C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800222B0 0001F210  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800222B4 0001F214  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800222B8 0001F218  7C 08 03 A6 */	mtlr r0
/* 800222BC 0001F21C  38 21 00 20 */	addi r1, r1, 0x20
/* 800222C0 0001F220  4E 80 00 20 */	blr

.global Draw__17SNesEmulatorFrameFRC15CSaveGameScreen
Draw__17SNesEmulatorFrameFRC15CSaveGameScreen:
/* 800222C4 0001F224  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800222C8 0001F228  7C 08 02 A6 */	mflr r0
/* 800222CC 0001F22C  90 01 00 64 */	stw r0, 0x64(r1)
/* 800222D0 0001F230  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 800222D4 0001F234  93 C1 00 58 */	stw r30, 0x58(r1)
/* 800222D8 0001F238  7C 9E 23 78 */	mr r30, r4
/* 800222DC 0001F23C  93 A1 00 54 */	stw r29, 0x54(r1)
/* 800222E0 0001F240  7C 7D 1B 78 */	mr r29, r3
/* 800222E4 0001F244  48 32 7C C9 */	bl White__6CColorFv
/* 800222E8 0001F248  80 83 00 00 */	lwz r4, 0(r3)
/* 800222EC 0001F24C  38 60 00 60 */	li r3, 0x60
/* 800222F0 0001F250  38 00 00 FF */	li r0, 0xff
/* 800222F4 0001F254  28 1E 00 00 */	cmplwi r30, 0
/* 800222F8 0001F258  90 81 00 0C */	stw r4, 0xc(r1)
/* 800222FC 0001F25C  3B E0 00 00 */	li r31, 0
/* 80022300 0001F260  98 61 00 08 */	stb r3, 8(r1)
/* 80022304 0001F264  98 61 00 09 */	stb r3, 9(r1)
/* 80022308 0001F268  98 61 00 0A */	stb r3, 0xa(r1)
/* 8002230C 0001F26C  98 01 00 0B */	stb r0, 0xb(r1)
/* 80022310 0001F270  41 82 00 14 */	beq lbl_80022324
/* 80022314 0001F274  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 80022318 0001F278  2C 00 00 10 */	cmpwi r0, 0x10
/* 8002231C 0001F27C  41 82 00 08 */	beq lbl_80022324
/* 80022320 0001F280  3B E0 00 01 */	li r31, 1
lbl_80022324:
/* 80022324 0001F284  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80022328 0001F288  41 82 00 10 */	beq lbl_80022338
/* 8002232C 0001F28C  38 00 00 00 */	li r0, 0
/* 80022330 0001F290  90 01 00 0C */	stw r0, 0xc(r1)
/* 80022334 0001F294  48 00 00 18 */	b lbl_8002234C
lbl_80022338:
/* 80022338 0001F298  80 1D 00 08 */	lwz r0, 8(r29)
/* 8002233C 0001F29C  28 00 00 00 */	cmplwi r0, 0
/* 80022340 0001F2A0  41 82 00 0C */	beq lbl_8002234C
/* 80022344 0001F2A4  80 01 00 08 */	lwz r0, 8(r1)
/* 80022348 0001F2A8  90 01 00 0C */	stw r0, 0xc(r1)
lbl_8002234C:
/* 8002234C 0001F2AC  88 BD 00 15 */	lbz r5, 0x15(r29)
/* 80022350 0001F2B0  38 81 00 0C */	addi r4, r1, 0xc
/* 80022354 0001F2B4  80 7D 00 04 */	lwz r3, 4(r29)
/* 80022358 0001F2B8  48 27 17 FD */	bl Draw__12CNESEmulatorFRC6CColorb
/* 8002235C 0001F2BC  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80022360 0001F2C0  40 82 00 18 */	bne lbl_80022378
/* 80022364 0001F2C4  80 7D 00 08 */	lwz r3, 8(r29)
/* 80022368 0001F2C8  28 03 00 00 */	cmplwi r3, 0
/* 8002236C 0001F2CC  41 82 00 0C */	beq lbl_80022378
/* 80022370 0001F2D0  48 22 26 4D */	bl Draw__15CQuitGameScreenFv
/* 80022374 0001F2D4  48 00 00 0C */	b lbl_80022380
lbl_80022378:
/* 80022378 0001F2D8  88 7D 00 15 */	lbz r3, 0x15(r29)
/* 8002237C 0001F2DC  48 2E 74 91 */	bl SetUseVideoFilter__9CGraphicsFb
lbl_80022380:
/* 80022380 0001F2E0  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 80022384 0001F2E4  C0 02 82 F0 */	lfs f0, lbl_805AA010@sda21(r2)
/* 80022388 0001F2E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8002238C 0001F2EC  40 80 00 A0 */	bge lbl_8002242C
/* 80022390 0001F2F0  C0 02 82 9C */	lfs f0, lbl_805A9FBC@sda21(r2)
/* 80022394 0001F2F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80022398 0001F2F8  40 81 00 94 */	ble lbl_8002242C
/* 8002239C 0001F2FC  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 800223A0 0001F300  48 2A 78 C5 */	bl GetIsTextSupportFinishedLoading__15CGuiTextSupportCFv
/* 800223A4 0001F304  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800223A8 0001F308  41 82 00 84 */	beq lbl_8002242C
/* 800223AC 0001F30C  38 60 00 00 */	li r3, 0
/* 800223B0 0001F310  48 2E 96 C1 */	bl SetCullMode__9CGraphicsF12ERglCullMode
/* 800223B4 0001F314  80 8D A0 68 */	lwz r4, gpRender@sda21(r13)
/* 800223B8 0001F318  38 61 00 10 */	addi r3, r1, 0x10
/* 800223BC 0001F31C  C0 22 82 A4 */	lfs f1, lbl_805A9FC4@sda21(r2)
/* 800223C0 0001F320  38 A0 00 01 */	li r5, 1
/* 800223C4 0001F324  81 84 00 00 */	lwz r12, 0(r4)
/* 800223C8 0001F328  C0 42 82 A8 */	lfs f2, lbl_805A9FC8@sda21(r2)
/* 800223CC 0001F32C  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 800223D0 0001F330  7D 89 03 A6 */	mtctr r12
/* 800223D4 0001F334  4E 80 04 21 */	bctrl
/* 800223D8 0001F338  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 800223DC 0001F33C  81 83 00 00 */	lwz r12, 0(r3)
/* 800223E0 0001F340  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 800223E4 0001F344  7D 89 03 A6 */	mtctr r12
/* 800223E8 0001F348  4E 80 04 21 */	bctrl
/* 800223EC 0001F34C  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 800223F0 0001F350  38 80 00 00 */	li r4, 0
/* 800223F4 0001F354  38 A0 00 00 */	li r5, 0
/* 800223F8 0001F358  81 83 00 00 */	lwz r12, 0(r3)
/* 800223FC 0001F35C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80022400 0001F360  7D 89 03 A6 */	mtctr r12
/* 80022404 0001F364  4E 80 04 21 */	bctrl
/* 80022408 0001F368  C0 22 82 F4 */	lfs f1, lbl_805AA014@sda21(r2)
/* 8002240C 0001F36C  38 61 00 20 */	addi r3, r1, 0x20
/* 80022410 0001F370  C0 42 82 9C */	lfs f2, lbl_805A9FBC@sda21(r2)
/* 80022414 0001F374  C0 62 82 F8 */	lfs f3, lbl_805AA018@sda21(r2)
/* 80022418 0001F378  48 2F 0D 71 */	bl Translate__12CTransform4fFfff
/* 8002241C 0001F37C  38 61 00 20 */	addi r3, r1, 0x20
/* 80022420 0001F380  48 2E A1 C1 */	bl SetModelMatrix__9CGraphicsFRC12CTransform4f
/* 80022424 0001F384  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 80022428 0001F388  48 2A 71 1D */	bl Render__15CGuiTextSupportFv
lbl_8002242C:
/* 8002242C 0001F38C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80022430 0001F390  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80022434 0001F394  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80022438 0001F398  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 8002243C 0001F39C  7C 08 03 A6 */	mtlr r0
/* 80022440 0001F3A0  38 21 00 60 */	addi r1, r1, 0x60
/* 80022444 0001F3A4  4E 80 00 20 */	blr

.global ProcessUserInput__17SNesEmulatorFrameFRC11CFinalInputPC15CSaveGameScreen
ProcessUserInput__17SNesEmulatorFrameFRC11CFinalInputPC15CSaveGameScreen:
/* 80022448 0001F3A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8002244C 0001F3AC  7C 08 02 A6 */	mflr r0
/* 80022450 0001F3B0  28 05 00 00 */	cmplwi r5, 0
/* 80022454 0001F3B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80022458 0001F3B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8002245C 0001F3BC  3B E0 00 01 */	li r31, 1
/* 80022460 0001F3C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80022464 0001F3C4  7C 9E 23 78 */	mr r30, r4
/* 80022468 0001F3C8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8002246C 0001F3CC  7C 7D 1B 78 */	mr r29, r3
/* 80022470 0001F3D0  41 82 00 14 */	beq lbl_80022484
/* 80022474 0001F3D4  80 05 00 10 */	lwz r0, 0x10(r5)
/* 80022478 0001F3D8  2C 00 00 10 */	cmpwi r0, 0x10
/* 8002247C 0001F3DC  41 82 00 08 */	beq lbl_80022484
/* 80022480 0001F3E0  3B E0 00 00 */	li r31, 0
lbl_80022484:
/* 80022484 0001F3E4  28 05 00 00 */	cmplwi r5, 0
/* 80022488 0001F3E8  41 82 00 10 */	beq lbl_80022498
/* 8002248C 0001F3EC  7C A3 2B 78 */	mr r3, r5
/* 80022490 0001F3F0  7F C4 F3 78 */	mr r4, r30
/* 80022494 0001F3F4  48 22 D2 DD */	bl ProcessUserInput__15CSaveGameScreenFRC11CFinalInput
lbl_80022498:
/* 80022498 0001F3F8  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8002249C 0001F3FC  41 82 00 64 */	beq lbl_80022500
/* 800224A0 0001F400  80 1D 00 00 */	lwz r0, 0(r29)
/* 800224A4 0001F404  2C 00 00 00 */	cmpwi r0, 0
/* 800224A8 0001F408  41 82 00 14 */	beq lbl_800224BC
/* 800224AC 0001F40C  41 80 00 54 */	blt lbl_80022500
/* 800224B0 0001F410  2C 00 00 04 */	cmpwi r0, 4
/* 800224B4 0001F414  40 80 00 4C */	bge lbl_80022500
/* 800224B8 0001F418  48 00 00 3C */	b lbl_800224F4
lbl_800224BC:
/* 800224BC 0001F41C  80 7D 00 04 */	lwz r3, 4(r29)
/* 800224C0 0001F420  7F C4 F3 78 */	mr r4, r30
/* 800224C4 0001F424  38 A0 00 04 */	li r5, 4
/* 800224C8 0001F428  48 27 1E 29 */	bl ProcessUserInput__12CNESEmulatorFRC11CFinalInputi
/* 800224CC 0001F42C  80 1E 00 04 */	lwz r0, 4(r30)
/* 800224D0 0001F430  2C 00 00 00 */	cmpwi r0, 0
/* 800224D4 0001F434  40 82 00 2C */	bne lbl_80022500
/* 800224D8 0001F438  88 1E 00 2E */	lbz r0, 0x2e(r30)
/* 800224DC 0001F43C  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 800224E0 0001F440  41 82 00 20 */	beq lbl_80022500
/* 800224E4 0001F444  7F A3 EB 78 */	mr r3, r29
/* 800224E8 0001F448  38 80 00 03 */	li r4, 3
/* 800224EC 0001F44C  48 00 03 41 */	bl SetMode__17SNesEmulatorFrameF5EMode
/* 800224F0 0001F450  48 00 00 10 */	b lbl_80022500
lbl_800224F4:
/* 800224F4 0001F454  80 7D 00 08 */	lwz r3, 8(r29)
/* 800224F8 0001F458  7F C4 F3 78 */	mr r4, r30
/* 800224FC 0001F45C  48 22 25 A5 */	bl ProcessUserInput__15CQuitGameScreenFRC11CFinalInput
lbl_80022500:
/* 80022500 0001F460  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80022504 0001F464  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80022508 0001F468  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8002250C 0001F46C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80022510 0001F470  7C 08 03 A6 */	mtlr r0
/* 80022514 0001F474  38 21 00 20 */	addi r1, r1, 0x20
/* 80022518 0001F478  4E 80 00 20 */	blr

.global Update__17SNesEmulatorFrameFfR15CSaveGameScreen
Update__17SNesEmulatorFrameFfR15CSaveGameScreen:
/* 8002251C 0001F47C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80022520 0001F480  7C 08 02 A6 */	mflr r0
/* 80022524 0001F484  90 01 00 64 */	stw r0, 0x64(r1)
/* 80022528 0001F488  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8002252C 0001F48C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 80022530 0001F490  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80022534 0001F494  F3 C1 00 48 */	psq_st f30, 72(r1), 0, qr0
/* 80022538 0001F498  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 8002253C 0001F49C  F3 A1 00 38 */	psq_st f29, 56(r1), 0, qr0
/* 80022540 0001F4A0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80022544 0001F4A4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80022548 0001F4A8  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8002254C 0001F4AC  93 81 00 20 */	stw r28, 0x20(r1)
/* 80022550 0001F4B0  7C 9F 23 79 */	or. r31, r4, r4
/* 80022554 0001F4B4  FF A0 08 90 */	fmr f29, f1
/* 80022558 0001F4B8  7C 7E 1B 78 */	mr r30, r3
/* 8002255C 0001F4BC  3B 80 00 01 */	li r28, 1
/* 80022560 0001F4C0  41 82 00 14 */	beq lbl_80022574
/* 80022564 0001F4C4  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 80022568 0001F4C8  2C 00 00 10 */	cmpwi r0, 0x10
/* 8002256C 0001F4CC  41 82 00 08 */	beq lbl_80022574
/* 80022570 0001F4D0  3B 80 00 00 */	li r28, 0
lbl_80022574:
/* 80022574 0001F4D4  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80022578 0001F4D8  C0 0D 81 18 */	lfs f0, lbl_805A6CD8@sda21(r13)
/* 8002257C 0001F4DC  EC 21 E8 28 */	fsubs f1, f1, f29
/* 80022580 0001F4E0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80022584 0001F4E4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80022588 0001F4E8  40 80 00 0C */	bge lbl_80022594
/* 8002258C 0001F4EC  38 61 00 10 */	addi r3, r1, 0x10
/* 80022590 0001F4F0  48 00 00 08 */	b lbl_80022598
lbl_80022594:
/* 80022594 0001F4F4  38 6D 81 18 */	addi r3, r13, lbl_805A6CD8@sda21
lbl_80022598:
/* 80022598 0001F4F8  C0 03 00 00 */	lfs f0, 0(r3)
/* 8002259C 0001F4FC  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 800225A0 0001F500  C0 2D 81 1C */	lfs f1, lbl_805A6CDC@sda21(r13)
/* 800225A4 0001F504  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 800225A8 0001F508  83 BE 00 0C */	lwz r29, 0xc(r30)
/* 800225AC 0001F50C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800225B0 0001F510  40 80 00 0C */	bge lbl_800225BC
/* 800225B4 0001F514  38 6D 81 1C */	addi r3, r13, lbl_805A6CDC@sda21
/* 800225B8 0001F518  48 00 00 08 */	b lbl_800225C0
lbl_800225BC:
/* 800225BC 0001F51C  38 7E 00 10 */	addi r3, r30, 0x10
lbl_800225C0:
/* 800225C0 0001F520  C3 E3 00 00 */	lfs f31, 0(r3)
/* 800225C4 0001F524  48 32 79 E9 */	bl White__6CColorFv
/* 800225C8 0001F528  C0 02 82 AC */	lfs f0, lbl_805A9FCC@sda21(r2)
/* 800225CC 0001F52C  EF C0 07 F2 */	fmuls f30, f0, f31
/* 800225D0 0001F530  F3 C1 A0 08 */	psq_st f30, 8(r1), 1, qr2
/* 800225D4 0001F534  38 81 00 0C */	addi r4, r1, 0xc
/* 800225D8 0001F538  80 A3 00 00 */	lwz r5, 0(r3)
/* 800225DC 0001F53C  7F A3 EB 78 */	mr r3, r29
/* 800225E0 0001F540  88 01 00 08 */	lbz r0, 8(r1)
/* 800225E4 0001F544  50 A0 00 2E */	rlwimi r0, r5, 0, 0, 0x17
/* 800225E8 0001F548  90 01 00 0C */	stw r0, 0xc(r1)
/* 800225EC 0001F54C  48 2A 70 21 */	bl SetGeometryColor__15CGuiTextSupportFRC6CColor
/* 800225F0 0001F550  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 800225F4 0001F554  48 2A 76 71 */	bl GetIsTextSupportFinishedLoading__15CGuiTextSupportCFv
/* 800225F8 0001F558  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800225FC 0001F55C  41 82 00 3C */	beq lbl_80022638
/* 80022600 0001F560  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80022604 0001F564  48 2A 57 6D */	bl GetBounds__15CGuiTextSupportFv
/* 80022608 0001F568  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 8002260C 0001F56C  80 03 00 08 */	lwz r0, 8(r3)
/* 80022610 0001F570  7C 83 23 78 */	mr r3, r4
/* 80022614 0001F574  90 04 00 34 */	stw r0, 0x34(r4)
/* 80022618 0001F578  48 2A 5D 4D */	bl ClearRenderBuffer__15CGuiTextSupportFv
/* 8002261C 0001F57C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80022620 0001F580  48 2A 57 51 */	bl GetBounds__15CGuiTextSupportFv
/* 80022624 0001F584  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 80022628 0001F588  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8002262C 0001F58C  7C 83 23 78 */	mr r3, r4
/* 80022630 0001F590  90 04 00 38 */	stw r0, 0x38(r4)
/* 80022634 0001F594  48 2A 5D 31 */	bl ClearRenderBuffer__15CGuiTextSupportFv
lbl_80022638:
/* 80022638 0001F598  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 8002263C 0001F59C  41 82 01 B4 */	beq lbl_800227F0
/* 80022640 0001F5A0  80 1E 00 00 */	lwz r0, 0(r30)
/* 80022644 0001F5A4  2C 00 00 02 */	cmpwi r0, 2
/* 80022648 0001F5A8  41 82 01 44 */	beq lbl_8002278C
/* 8002264C 0001F5AC  40 80 00 14 */	bge lbl_80022660
/* 80022650 0001F5B0  2C 00 00 00 */	cmpwi r0, 0
/* 80022654 0001F5B4  41 82 00 18 */	beq lbl_8002266C
/* 80022658 0001F5B8  40 80 00 B8 */	bge lbl_80022710
/* 8002265C 0001F5BC  48 00 01 94 */	b lbl_800227F0
lbl_80022660:
/* 80022660 0001F5C0  2C 00 00 04 */	cmpwi r0, 4
/* 80022664 0001F5C4  40 80 01 8C */	bge lbl_800227F0
/* 80022668 0001F5C8  48 00 01 58 */	b lbl_800227C0
lbl_8002266C:
/* 8002266C 0001F5CC  80 7E 00 04 */	lwz r3, 4(r30)
/* 80022670 0001F5D0  48 27 1A E1 */	bl Update__12CNESEmulatorFv
/* 80022674 0001F5D4  80 7E 00 04 */	lwz r3, 4(r30)
/* 80022678 0001F5D8  48 27 14 91 */	bl IsGameOver__12CNESEmulatorFv
/* 8002267C 0001F5DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80022680 0001F5E0  40 82 00 0C */	bne lbl_8002268C
/* 80022684 0001F5E4  38 00 00 00 */	li r0, 0
/* 80022688 0001F5E8  98 1E 00 14 */	stb r0, 0x14(r30)
lbl_8002268C:
/* 8002268C 0001F5EC  80 7E 00 04 */	lwz r3, 4(r30)
/* 80022690 0001F5F0  48 27 14 79 */	bl IsGameOver__12CNESEmulatorFv
/* 80022694 0001F5F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80022698 0001F5F8  41 82 00 4C */	beq lbl_800226E4
/* 8002269C 0001F5FC  88 1E 00 14 */	lbz r0, 0x14(r30)
/* 800226A0 0001F600  28 00 00 00 */	cmplwi r0, 0
/* 800226A4 0001F604  40 82 00 40 */	bne lbl_800226E4
/* 800226A8 0001F608  38 00 00 01 */	li r0, 1
/* 800226AC 0001F60C  28 1F 00 00 */	cmplwi r31, 0
/* 800226B0 0001F610  98 1E 00 14 */	stb r0, 0x14(r30)
/* 800226B4 0001F614  41 82 00 20 */	beq lbl_800226D4
/* 800226B8 0001F618  88 1F 00 92 */	lbz r0, 0x92(r31)
/* 800226BC 0001F61C  28 00 00 00 */	cmplwi r0, 0
/* 800226C0 0001F620  40 82 00 14 */	bne lbl_800226D4
/* 800226C4 0001F624  7F C3 F3 78 */	mr r3, r30
/* 800226C8 0001F628  38 80 00 01 */	li r4, 1
/* 800226CC 0001F62C  48 00 01 61 */	bl SetMode__17SNesEmulatorFrameF5EMode
/* 800226D0 0001F630  48 00 01 20 */	b lbl_800227F0
lbl_800226D4:
/* 800226D4 0001F634  7F C3 F3 78 */	mr r3, r30
/* 800226D8 0001F638  38 80 00 02 */	li r4, 2
/* 800226DC 0001F63C  48 00 01 51 */	bl SetMode__17SNesEmulatorFrameF5EMode
/* 800226E0 0001F640  48 00 01 10 */	b lbl_800227F0
lbl_800226E4:
/* 800226E4 0001F644  80 7E 00 04 */	lwz r3, 4(r30)
/* 800226E8 0001F648  48 27 14 65 */	bl GetPasswordEntryState__12CNESEmulatorFv
/* 800226EC 0001F64C  2C 03 00 01 */	cmpwi r3, 1
/* 800226F0 0001F650  40 82 01 00 */	bne lbl_800227F0
/* 800226F4 0001F654  28 1F 00 00 */	cmplwi r31, 0
/* 800226F8 0001F658  41 82 00 F8 */	beq lbl_800227F0
/* 800226FC 0001F65C  80 8D A0 80 */	lwz r4, gpGameState@sda21(r13)
/* 80022700 0001F660  80 7E 00 04 */	lwz r3, 4(r30)
/* 80022704 0001F664  38 84 00 AC */	addi r4, r4, 0xac
/* 80022708 0001F668  48 27 14 09 */	bl LoadPassword__12CNESEmulatorFPCc
/* 8002270C 0001F66C  48 00 00 E4 */	b lbl_800227F0
lbl_80022710:
/* 80022710 0001F670  28 1F 00 00 */	cmplwi r31, 0
/* 80022714 0001F674  41 82 00 68 */	beq lbl_8002277C
/* 80022718 0001F678  FC 20 E8 90 */	fmr f1, f29
/* 8002271C 0001F67C  80 7E 00 08 */	lwz r3, 8(r30)
/* 80022720 0001F680  48 22 22 09 */	bl Update__15CQuitGameScreenFv
/* 80022724 0001F684  2C 03 00 01 */	cmpwi r3, 1
/* 80022728 0001F688  40 82 00 3C */	bne lbl_80022764
/* 8002272C 0001F68C  80 8D A0 80 */	lwz r4, gpGameState@sda21(r13)
/* 80022730 0001F690  80 7E 00 04 */	lwz r3, 4(r30)
/* 80022734 0001F694  3B 84 00 AC */	addi r28, r4, 0xac
/* 80022738 0001F698  48 27 13 C9 */	bl GetPassword__12CNESEmulatorFv
/* 8002273C 0001F69C  7C 64 1B 78 */	mr r4, r3
/* 80022740 0001F6A0  7F 83 E3 78 */	mr r3, r28
/* 80022744 0001F6A4  38 A0 00 12 */	li r5, 0x12
/* 80022748 0001F6A8  4B FE 0D 49 */	bl memcpy
/* 8002274C 0001F6AC  7F E3 FB 78 */	mr r3, r31
/* 80022750 0001F6B0  48 22 CF 21 */	bl SaveNESState__15CSaveGameScreenFv
/* 80022754 0001F6B4  7F C3 F3 78 */	mr r3, r30
/* 80022758 0001F6B8  38 80 00 02 */	li r4, 2
/* 8002275C 0001F6BC  48 00 00 D1 */	bl SetMode__17SNesEmulatorFrameF5EMode
/* 80022760 0001F6C0  48 00 00 90 */	b lbl_800227F0
lbl_80022764:
/* 80022764 0001F6C4  2C 03 00 02 */	cmpwi r3, 2
/* 80022768 0001F6C8  40 82 00 88 */	bne lbl_800227F0
/* 8002276C 0001F6CC  7F C3 F3 78 */	mr r3, r30
/* 80022770 0001F6D0  38 80 00 02 */	li r4, 2
/* 80022774 0001F6D4  48 00 00 B9 */	bl SetMode__17SNesEmulatorFrameF5EMode
/* 80022778 0001F6D8  48 00 00 78 */	b lbl_800227F0
lbl_8002277C:
/* 8002277C 0001F6DC  7F C3 F3 78 */	mr r3, r30
/* 80022780 0001F6E0  38 80 00 02 */	li r4, 2
/* 80022784 0001F6E4  48 00 00 A9 */	bl SetMode__17SNesEmulatorFrameF5EMode
/* 80022788 0001F6E8  48 00 00 68 */	b lbl_800227F0
lbl_8002278C:
/* 8002278C 0001F6EC  FC 20 E8 90 */	fmr f1, f29
/* 80022790 0001F6F0  80 7E 00 08 */	lwz r3, 8(r30)
/* 80022794 0001F6F4  48 22 21 95 */	bl Update__15CQuitGameScreenFv
/* 80022798 0001F6F8  2C 03 00 01 */	cmpwi r3, 1
/* 8002279C 0001F6FC  40 82 00 14 */	bne lbl_800227B0
/* 800227A0 0001F700  7F C3 F3 78 */	mr r3, r30
/* 800227A4 0001F704  38 80 00 00 */	li r4, 0
/* 800227A8 0001F708  48 00 00 85 */	bl SetMode__17SNesEmulatorFrameF5EMode
/* 800227AC 0001F70C  48 00 00 44 */	b lbl_800227F0
lbl_800227B0:
/* 800227B0 0001F710  2C 03 00 02 */	cmpwi r3, 2
/* 800227B4 0001F714  40 82 00 3C */	bne lbl_800227F0
/* 800227B8 0001F718  38 60 00 01 */	li r3, 1
/* 800227BC 0001F71C  48 00 00 38 */	b lbl_800227F4
lbl_800227C0:
/* 800227C0 0001F720  FC 20 E8 90 */	fmr f1, f29
/* 800227C4 0001F724  80 7E 00 08 */	lwz r3, 8(r30)
/* 800227C8 0001F728  48 22 21 61 */	bl Update__15CQuitGameScreenFv
/* 800227CC 0001F72C  2C 03 00 01 */	cmpwi r3, 1
/* 800227D0 0001F730  40 82 00 0C */	bne lbl_800227DC
/* 800227D4 0001F734  38 60 00 01 */	li r3, 1
/* 800227D8 0001F738  48 00 00 1C */	b lbl_800227F4
lbl_800227DC:
/* 800227DC 0001F73C  2C 03 00 02 */	cmpwi r3, 2
/* 800227E0 0001F740  40 82 00 10 */	bne lbl_800227F0
/* 800227E4 0001F744  7F C3 F3 78 */	mr r3, r30
/* 800227E8 0001F748  38 80 00 00 */	li r4, 0
/* 800227EC 0001F74C  48 00 00 41 */	bl SetMode__17SNesEmulatorFrameF5EMode
lbl_800227F0:
/* 800227F0 0001F750  38 60 00 00 */	li r3, 0
lbl_800227F4:
/* 800227F4 0001F754  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 800227F8 0001F758  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 800227FC 0001F75C  E3 C1 00 48 */	psq_l f30, 72(r1), 0, qr0
/* 80022800 0001F760  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80022804 0001F764  E3 A1 00 38 */	psq_l f29, 56(r1), 0, qr0
/* 80022808 0001F768  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 8002280C 0001F76C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80022810 0001F770  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80022814 0001F774  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80022818 0001F778  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8002281C 0001F77C  83 81 00 20 */	lwz r28, 0x20(r1)
/* 80022820 0001F780  7C 08 03 A6 */	mtlr r0
/* 80022824 0001F784  38 21 00 60 */	addi r1, r1, 0x60
/* 80022828 0001F788  4E 80 00 20 */	blr

.global SetMode__17SNesEmulatorFrameF5EMode
SetMode__17SNesEmulatorFrameF5EMode:
/* 8002282C 0001F78C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80022830 0001F790  7C 08 02 A6 */	mflr r0
/* 80022834 0001F794  90 01 00 24 */	stw r0, 0x24(r1)
/* 80022838 0001F798  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8002283C 0001F79C  7C 9F 23 78 */	mr r31, r4
/* 80022840 0001F7A0  2C 1F 00 02 */	cmpwi r31, 2
/* 80022844 0001F7A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80022848 0001F7A8  7C 7E 1B 78 */	mr r30, r3
/* 8002284C 0001F7AC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80022850 0001F7B0  93 81 00 10 */	stw r28, 0x10(r1)
/* 80022854 0001F7B4  41 82 00 FC */	beq lbl_80022950
/* 80022858 0001F7B8  40 80 00 14 */	bge lbl_8002286C
/* 8002285C 0001F7BC  2C 1F 00 00 */	cmpwi r31, 0
/* 80022860 0001F7C0  41 82 00 18 */	beq lbl_80022878
/* 80022864 0001F7C4  40 80 00 50 */	bge lbl_800228B4
/* 80022868 0001F7C8  48 00 02 1C */	b lbl_80022A84
lbl_8002286C:
/* 8002286C 0001F7CC  2C 1F 00 04 */	cmpwi r31, 4
/* 80022870 0001F7D0  40 80 02 14 */	bge lbl_80022A84
/* 80022874 0001F7D4  48 00 01 78 */	b lbl_800229EC
lbl_80022878:
/* 80022878 0001F7D8  83 BE 00 08 */	lwz r29, 8(r30)
/* 8002287C 0001F7DC  28 1D 00 00 */	cmplwi r29, 0
/* 80022880 0001F7E0  41 82 00 28 */	beq lbl_800228A8
/* 80022884 0001F7E4  34 1D 00 04 */	addic. r0, r29, 4
/* 80022888 0001F7E8  41 82 00 18 */	beq lbl_800228A0
/* 8002288C 0001F7EC  34 1D 00 04 */	addic. r0, r29, 4
/* 80022890 0001F7F0  41 82 00 10 */	beq lbl_800228A0
/* 80022894 0001F7F4  38 7D 00 04 */	addi r3, r29, 4
/* 80022898 0001F7F8  38 80 00 00 */	li r4, 0
/* 8002289C 0001F7FC  48 31 E5 A5 */	bl __dt__6CTokenFv
lbl_800228A0:
/* 800228A0 0001F800  7F A3 EB 78 */	mr r3, r29
/* 800228A4 0001F804  48 2F 30 8D */	bl Free__7CMemoryFPCv
lbl_800228A8:
/* 800228A8 0001F808  38 00 00 00 */	li r0, 0
/* 800228AC 0001F80C  90 1E 00 08 */	stw r0, 8(r30)
/* 800228B0 0001F810  48 00 01 D4 */	b lbl_80022A84
lbl_800228B4:
/* 800228B4 0001F814  83 BE 00 08 */	lwz r29, 8(r30)
/* 800228B8 0001F818  28 1D 00 00 */	cmplwi r29, 0
/* 800228BC 0001F81C  41 82 00 28 */	beq lbl_800228E4
/* 800228C0 0001F820  34 1D 00 04 */	addic. r0, r29, 4
/* 800228C4 0001F824  41 82 00 18 */	beq lbl_800228DC
/* 800228C8 0001F828  34 1D 00 04 */	addic. r0, r29, 4
/* 800228CC 0001F82C  41 82 00 10 */	beq lbl_800228DC
/* 800228D0 0001F830  38 7D 00 04 */	addi r3, r29, 4
/* 800228D4 0001F834  38 80 00 00 */	li r4, 0
/* 800228D8 0001F838  48 31 E5 69 */	bl __dt__6CTokenFv
lbl_800228DC:
/* 800228DC 0001F83C  7F A3 EB 78 */	mr r3, r29
/* 800228E0 0001F840  48 2F 30 51 */	bl Free__7CMemoryFPCv
lbl_800228E4:
/* 800228E4 0001F844  38 00 00 00 */	li r0, 0
/* 800228E8 0001F848  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 800228EC 0001F84C  38 63 C6 44 */	addi r3, r3, lbl_803CC644@l
/* 800228F0 0001F850  90 1E 00 08 */	stw r0, 8(r30)
/* 800228F4 0001F854  38 83 01 14 */	addi r4, r3, 0x114
/* 800228F8 0001F858  38 60 00 1C */	li r3, 0x1c
/* 800228FC 0001F85C  38 A0 00 00 */	li r5, 0
/* 80022900 0001F860  48 2F 2F 6D */	bl __nw__FUlPCcPCc
/* 80022904 0001F864  7C 7C 1B 79 */	or. r28, r3, r3
/* 80022908 0001F868  41 82 00 10 */	beq lbl_80022918
/* 8002290C 0001F86C  38 80 00 02 */	li r4, 2
/* 80022910 0001F870  48 22 22 01 */	bl __ct__15CQuitGameScreenF9EQuitType
/* 80022914 0001F874  7C 7C 1B 78 */	mr r28, r3
lbl_80022918:
/* 80022918 0001F878  83 BE 00 08 */	lwz r29, 8(r30)
/* 8002291C 0001F87C  28 1D 00 00 */	cmplwi r29, 0
/* 80022920 0001F880  41 82 00 28 */	beq lbl_80022948
/* 80022924 0001F884  34 1D 00 04 */	addic. r0, r29, 4
/* 80022928 0001F888  41 82 00 18 */	beq lbl_80022940
/* 8002292C 0001F88C  34 1D 00 04 */	addic. r0, r29, 4
/* 80022930 0001F890  41 82 00 10 */	beq lbl_80022940
/* 80022934 0001F894  38 7D 00 04 */	addi r3, r29, 4
/* 80022938 0001F898  38 80 00 00 */	li r4, 0
/* 8002293C 0001F89C  48 31 E5 05 */	bl __dt__6CTokenFv
lbl_80022940:
/* 80022940 0001F8A0  7F A3 EB 78 */	mr r3, r29
/* 80022944 0001F8A4  48 2F 2F ED */	bl Free__7CMemoryFPCv
lbl_80022948:
/* 80022948 0001F8A8  93 9E 00 08 */	stw r28, 8(r30)
/* 8002294C 0001F8AC  48 00 01 38 */	b lbl_80022A84
lbl_80022950:
/* 80022950 0001F8B0  83 BE 00 08 */	lwz r29, 8(r30)
/* 80022954 0001F8B4  28 1D 00 00 */	cmplwi r29, 0
/* 80022958 0001F8B8  41 82 00 28 */	beq lbl_80022980
/* 8002295C 0001F8BC  34 1D 00 04 */	addic. r0, r29, 4
/* 80022960 0001F8C0  41 82 00 18 */	beq lbl_80022978
/* 80022964 0001F8C4  34 1D 00 04 */	addic. r0, r29, 4
/* 80022968 0001F8C8  41 82 00 10 */	beq lbl_80022978
/* 8002296C 0001F8CC  38 7D 00 04 */	addi r3, r29, 4
/* 80022970 0001F8D0  38 80 00 00 */	li r4, 0
/* 80022974 0001F8D4  48 31 E4 CD */	bl __dt__6CTokenFv
lbl_80022978:
/* 80022978 0001F8D8  7F A3 EB 78 */	mr r3, r29
/* 8002297C 0001F8DC  48 2F 2F B5 */	bl Free__7CMemoryFPCv
lbl_80022980:
/* 80022980 0001F8E0  38 00 00 00 */	li r0, 0
/* 80022984 0001F8E4  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 80022988 0001F8E8  38 63 C6 44 */	addi r3, r3, lbl_803CC644@l
/* 8002298C 0001F8EC  90 1E 00 08 */	stw r0, 8(r30)
/* 80022990 0001F8F0  38 83 01 14 */	addi r4, r3, 0x114
/* 80022994 0001F8F4  38 60 00 1C */	li r3, 0x1c
/* 80022998 0001F8F8  38 A0 00 00 */	li r5, 0
/* 8002299C 0001F8FC  48 2F 2E D1 */	bl __nw__FUlPCcPCc
/* 800229A0 0001F900  7C 7C 1B 79 */	or. r28, r3, r3
/* 800229A4 0001F904  41 82 00 10 */	beq lbl_800229B4
/* 800229A8 0001F908  38 80 00 04 */	li r4, 4
/* 800229AC 0001F90C  48 22 21 65 */	bl __ct__15CQuitGameScreenF9EQuitType
/* 800229B0 0001F910  7C 7C 1B 78 */	mr r28, r3
lbl_800229B4:
/* 800229B4 0001F914  83 BE 00 08 */	lwz r29, 8(r30)
/* 800229B8 0001F918  28 1D 00 00 */	cmplwi r29, 0
/* 800229BC 0001F91C  41 82 00 28 */	beq lbl_800229E4
/* 800229C0 0001F920  34 1D 00 04 */	addic. r0, r29, 4
/* 800229C4 0001F924  41 82 00 18 */	beq lbl_800229DC
/* 800229C8 0001F928  34 1D 00 04 */	addic. r0, r29, 4
/* 800229CC 0001F92C  41 82 00 10 */	beq lbl_800229DC
/* 800229D0 0001F930  38 7D 00 04 */	addi r3, r29, 4
/* 800229D4 0001F934  38 80 00 00 */	li r4, 0
/* 800229D8 0001F938  48 31 E4 69 */	bl __dt__6CTokenFv
lbl_800229DC:
/* 800229DC 0001F93C  7F A3 EB 78 */	mr r3, r29
/* 800229E0 0001F940  48 2F 2F 51 */	bl Free__7CMemoryFPCv
lbl_800229E4:
/* 800229E4 0001F944  93 9E 00 08 */	stw r28, 8(r30)
/* 800229E8 0001F948  48 00 00 9C */	b lbl_80022A84
lbl_800229EC:
/* 800229EC 0001F94C  83 BE 00 08 */	lwz r29, 8(r30)
/* 800229F0 0001F950  28 1D 00 00 */	cmplwi r29, 0
/* 800229F4 0001F954  41 82 00 28 */	beq lbl_80022A1C
/* 800229F8 0001F958  34 1D 00 04 */	addic. r0, r29, 4
/* 800229FC 0001F95C  41 82 00 18 */	beq lbl_80022A14
/* 80022A00 0001F960  34 1D 00 04 */	addic. r0, r29, 4
/* 80022A04 0001F964  41 82 00 10 */	beq lbl_80022A14
/* 80022A08 0001F968  38 7D 00 04 */	addi r3, r29, 4
/* 80022A0C 0001F96C  38 80 00 00 */	li r4, 0
/* 80022A10 0001F970  48 31 E4 31 */	bl __dt__6CTokenFv
lbl_80022A14:
/* 80022A14 0001F974  7F A3 EB 78 */	mr r3, r29
/* 80022A18 0001F978  48 2F 2F 19 */	bl Free__7CMemoryFPCv
lbl_80022A1C:
/* 80022A1C 0001F97C  38 00 00 00 */	li r0, 0
/* 80022A20 0001F980  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 80022A24 0001F984  38 63 C6 44 */	addi r3, r3, lbl_803CC644@l
/* 80022A28 0001F988  90 1E 00 08 */	stw r0, 8(r30)
/* 80022A2C 0001F98C  38 83 01 14 */	addi r4, r3, 0x114
/* 80022A30 0001F990  38 60 00 1C */	li r3, 0x1c
/* 80022A34 0001F994  38 A0 00 00 */	li r5, 0
/* 80022A38 0001F998  48 2F 2E 35 */	bl __nw__FUlPCcPCc
/* 80022A3C 0001F99C  7C 7C 1B 79 */	or. r28, r3, r3
/* 80022A40 0001F9A0  41 82 00 10 */	beq lbl_80022A50
/* 80022A44 0001F9A4  38 80 00 03 */	li r4, 3
/* 80022A48 0001F9A8  48 22 20 C9 */	bl __ct__15CQuitGameScreenF9EQuitType
/* 80022A4C 0001F9AC  7C 7C 1B 78 */	mr r28, r3
lbl_80022A50:
/* 80022A50 0001F9B0  83 BE 00 08 */	lwz r29, 8(r30)
/* 80022A54 0001F9B4  28 1D 00 00 */	cmplwi r29, 0
/* 80022A58 0001F9B8  41 82 00 28 */	beq lbl_80022A80
/* 80022A5C 0001F9BC  34 1D 00 04 */	addic. r0, r29, 4
/* 80022A60 0001F9C0  41 82 00 18 */	beq lbl_80022A78
/* 80022A64 0001F9C4  34 1D 00 04 */	addic. r0, r29, 4
/* 80022A68 0001F9C8  41 82 00 10 */	beq lbl_80022A78
/* 80022A6C 0001F9CC  38 7D 00 04 */	addi r3, r29, 4
/* 80022A70 0001F9D0  38 80 00 00 */	li r4, 0
/* 80022A74 0001F9D4  48 31 E3 CD */	bl __dt__6CTokenFv
lbl_80022A78:
/* 80022A78 0001F9D8  7F A3 EB 78 */	mr r3, r29
/* 80022A7C 0001F9DC  48 2F 2E B5 */	bl Free__7CMemoryFPCv
lbl_80022A80:
/* 80022A80 0001F9E0  93 9E 00 08 */	stw r28, 8(r30)
lbl_80022A84:
/* 80022A84 0001F9E4  93 FE 00 00 */	stw r31, 0(r30)
/* 80022A88 0001F9E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80022A8C 0001F9EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80022A90 0001F9F0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80022A94 0001F9F4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80022A98 0001F9F8  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80022A9C 0001F9FC  7C 08 03 A6 */	mtlr r0
/* 80022AA0 0001FA00  38 21 00 20 */	addi r1, r1, 0x20
/* 80022AA4 0001FA04  4E 80 00 20 */	blr

.global __dt__17SNesEmulatorFrameFv
__dt__17SNesEmulatorFrameFv:
/* 80022AA8 0001FA08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80022AAC 0001FA0C  7C 08 02 A6 */	mflr r0
/* 80022AB0 0001FA10  90 01 00 24 */	stw r0, 0x24(r1)
/* 80022AB4 0001FA14  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80022AB8 0001FA18  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80022ABC 0001FA1C  7C 9E 23 78 */	mr r30, r4
/* 80022AC0 0001FA20  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80022AC4 0001FA24  7C 7D 1B 79 */	or. r29, r3, r3
/* 80022AC8 0001FA28  41 82 00 74 */	beq lbl_80022B3C
/* 80022ACC 0001FA2C  34 1D 00 0C */	addic. r0, r29, 0xc
/* 80022AD0 0001FA30  41 82 00 10 */	beq lbl_80022AE0
/* 80022AD4 0001FA34  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 80022AD8 0001FA38  38 80 00 01 */	li r4, 1
/* 80022ADC 0001FA3C  48 2A 71 BD */	bl __dt__15CGuiTextSupportFv
lbl_80022AE0:
/* 80022AE0 0001FA40  34 1D 00 08 */	addic. r0, r29, 8
/* 80022AE4 0001FA44  41 82 00 34 */	beq lbl_80022B18
/* 80022AE8 0001FA48  83 FD 00 08 */	lwz r31, 8(r29)
/* 80022AEC 0001FA4C  28 1F 00 00 */	cmplwi r31, 0
/* 80022AF0 0001FA50  41 82 00 28 */	beq lbl_80022B18
/* 80022AF4 0001FA54  34 1F 00 04 */	addic. r0, r31, 4
/* 80022AF8 0001FA58  41 82 00 18 */	beq lbl_80022B10
/* 80022AFC 0001FA5C  34 1F 00 04 */	addic. r0, r31, 4
/* 80022B00 0001FA60  41 82 00 10 */	beq lbl_80022B10
/* 80022B04 0001FA64  38 7F 00 04 */	addi r3, r31, 4
/* 80022B08 0001FA68  38 80 00 00 */	li r4, 0
/* 80022B0C 0001FA6C  48 31 E3 35 */	bl __dt__6CTokenFv
lbl_80022B10:
/* 80022B10 0001FA70  7F E3 FB 78 */	mr r3, r31
/* 80022B14 0001FA74  48 2F 2E 1D */	bl Free__7CMemoryFPCv
lbl_80022B18:
/* 80022B18 0001FA78  34 1D 00 04 */	addic. r0, r29, 4
/* 80022B1C 0001FA7C  41 82 00 10 */	beq lbl_80022B2C
/* 80022B20 0001FA80  80 7D 00 04 */	lwz r3, 4(r29)
/* 80022B24 0001FA84  38 80 00 01 */	li r4, 1
/* 80022B28 0001FA88  48 27 19 FD */	bl __dt__12CNESEmulatorFv
lbl_80022B2C:
/* 80022B2C 0001FA8C  7F C0 07 35 */	extsh. r0, r30
/* 80022B30 0001FA90  40 81 00 0C */	ble lbl_80022B3C
/* 80022B34 0001FA94  7F A3 EB 78 */	mr r3, r29
/* 80022B38 0001FA98  48 2F 2D F9 */	bl Free__7CMemoryFPCv
lbl_80022B3C:
/* 80022B3C 0001FA9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80022B40 0001FAA0  7F A3 EB 78 */	mr r3, r29
/* 80022B44 0001FAA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80022B48 0001FAA8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80022B4C 0001FAAC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80022B50 0001FAB0  7C 08 03 A6 */	mtlr r0
/* 80022B54 0001FAB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80022B58 0001FAB8  4E 80 00 20 */	blr

.global __ct__17SNesEmulatorFrameFv
__ct__17SNesEmulatorFrameFv:
/* 80022B5C 0001FABC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80022B60 0001FAC0  7C 08 02 A6 */	mflr r0
/* 80022B64 0001FAC4  38 A0 00 00 */	li r5, 0
/* 80022B68 0001FAC8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80022B6C 0001FACC  38 00 00 00 */	li r0, 0
/* 80022B70 0001FAD0  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80022B74 0001FAD4  7C 7F 1B 78 */	mr r31, r3
/* 80022B78 0001FAD8  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 80022B7C 0001FADC  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80022B80 0001FAE0  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 80022B84 0001FAE4  38 60 00 54 */	li r3, 0x54
/* 80022B88 0001FAE8  93 A1 00 44 */	stw r29, 0x44(r1)
/* 80022B8C 0001FAEC  38 84 01 14 */	addi r4, r4, 0x114
/* 80022B90 0001FAF0  93 81 00 40 */	stw r28, 0x40(r1)
/* 80022B94 0001FAF4  90 1F 00 00 */	stw r0, 0(r31)
/* 80022B98 0001FAF8  48 2F 2C D5 */	bl __nw__FUlPCcPCc
/* 80022B9C 0001FAFC  7C 60 1B 79 */	or. r0, r3, r3
/* 80022BA0 0001FB00  41 82 00 0C */	beq lbl_80022BAC
/* 80022BA4 0001FB04  48 27 1A C5 */	bl __ct__12CNESEmulatorFv
/* 80022BA8 0001FB08  7C 60 1B 78 */	mr r0, r3
lbl_80022BAC:
/* 80022BAC 0001FB0C  90 1F 00 04 */	stw r0, 4(r31)
/* 80022BB0 0001FB10  38 C0 00 00 */	li r6, 0
/* 80022BB4 0001FB14  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 80022BB8 0001FB18  C0 02 82 FC */	lfs f0, lbl_805AA01C@sda21(r2)
/* 80022BBC 0001FB1C  90 DF 00 08 */	stw r6, 8(r31)
/* 80022BC0 0001FB20  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 80022BC4 0001FB24  38 00 00 01 */	li r0, 1
/* 80022BC8 0001FB28  38 60 03 0C */	li r3, 0x30c
/* 80022BCC 0001FB2C  90 DF 00 0C */	stw r6, 0xc(r31)
/* 80022BD0 0001FB30  38 84 01 14 */	addi r4, r4, 0x114
/* 80022BD4 0001FB34  38 A0 00 00 */	li r5, 0
/* 80022BD8 0001FB38  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 80022BDC 0001FB3C  98 DF 00 14 */	stb r6, 0x14(r31)
/* 80022BE0 0001FB40  98 1F 00 15 */	stb r0, 0x15(r31)
/* 80022BE4 0001FB44  48 2F 2C 89 */	bl __nw__FUlPCcPCc
/* 80022BE8 0001FB48  7C 7C 1B 79 */	or. r28, r3, r3
/* 80022BEC 0001FB4C  41 82 00 88 */	beq lbl_80022C74
/* 80022BF0 0001FB50  38 00 FF FF */	li r0, -1
/* 80022BF4 0001FB54  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 80022BF8 0001FB58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80022BFC 0001FB5C  38 83 C6 44 */	addi r4, r3, lbl_803CC644@l
/* 80022C00 0001FB60  80 6D A0 60 */	lwz r3, gpResourceFactory@sda21(r13)
/* 80022C04 0001FB64  38 84 04 43 */	addi r4, r4, 0x443
/* 80022C08 0001FB68  90 01 00 10 */	stw r0, 0x10(r1)
/* 80022C0C 0001FB6C  81 83 00 00 */	lwz r12, 0(r3)
/* 80022C10 0001FB70  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80022C14 0001FB74  7D 89 03 A6 */	mtctr r12
/* 80022C18 0001FB78  4E 80 04 21 */	bctrl
/* 80022C1C 0001FB7C  7C 7D 1B 78 */	mr r29, r3
/* 80022C20 0001FB80  48 32 73 95 */	bl Black__6CColorFv
/* 80022C24 0001FB84  7C 7E 1B 78 */	mr r30, r3
/* 80022C28 0001FB88  38 61 00 28 */	addi r3, r1, 0x28
/* 80022C2C 0001FB8C  38 80 00 00 */	li r4, 0
/* 80022C30 0001FB90  38 A0 00 01 */	li r5, 1
/* 80022C34 0001FB94  38 C0 00 00 */	li r6, 0
/* 80022C38 0001FB98  38 E0 00 01 */	li r7, 1
/* 80022C3C 0001FB9C  39 00 00 00 */	li r8, 0
/* 80022C40 0001FBA0  48 2A 74 05 */	bl __ct__18CGuiTextPropertiesFv
/* 80022C44 0001FBA4  80 0D A0 64 */	lwz r0, gpSimplePool@sda21(r13)
/* 80022C48 0001FBA8  7C 65 1B 78 */	mr r5, r3
/* 80022C4C 0001FBAC  7F 83 E3 78 */	mr r3, r28
/* 80022C50 0001FBB0  7F C7 F3 78 */	mr r7, r30
/* 80022C54 0001FBB4  90 01 00 08 */	stw r0, 8(r1)
/* 80022C58 0001FBB8  38 C1 00 10 */	addi r6, r1, 0x10
/* 80022C5C 0001FBBC  39 01 00 14 */	addi r8, r1, 0x14
/* 80022C60 0001FBC0  39 20 00 00 */	li r9, 0
/* 80022C64 0001FBC4  80 9D 00 04 */	lwz r4, 4(r29)
/* 80022C68 0001FBC8  39 40 00 00 */	li r10, 0
/* 80022C6C 0001FBCC  48 2A 71 D1 */	bl __ct__15CGuiTextSupportFv
/* 80022C70 0001FBD0  7C 7C 1B 78 */	mr r28, r3
lbl_80022C74:
/* 80022C74 0001FBD4  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80022C78 0001FBD8  38 80 00 01 */	li r4, 1
/* 80022C7C 0001FBDC  48 2A 70 1D */	bl __dt__15CGuiTextSupportFv
/* 80022C80 0001FBE0  93 9F 00 0C */	stw r28, 0xc(r31)
/* 80022C84 0001FBE4  38 80 00 67 */	li r4, 0x67
/* 80022C88 0001FBE8  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 80022C8C 0001FBEC  48 33 3A 71 */	bl GetString__12CStringTableCFi
/* 80022C90 0001FBF0  7C 64 1B 78 */	mr r4, r3
/* 80022C94 0001FBF4  38 61 00 18 */	addi r3, r1, 0x18
/* 80022C98 0001FBF8  4B FF 2D 59 */	bl wstring_l__4rstlFPCw
/* 80022C9C 0001FBFC  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80022CA0 0001FC00  38 81 00 18 */	addi r4, r1, 0x18
/* 80022CA4 0001FC04  38 A0 00 00 */	li r5, 0
/* 80022CA8 0001FC08  48 2A 6B DD */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80022CAC 0001FC0C  38 61 00 18 */	addi r3, r1, 0x18
/* 80022CB0 0001FC10  48 31 A4 85 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 80022CB4 0001FC14  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80022CB8 0001FC18  48 2A 50 B9 */	bl GetBounds__15CGuiTextSupportFv
/* 80022CBC 0001FC1C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80022CC0 0001FC20  80 03 00 08 */	lwz r0, 8(r3)
/* 80022CC4 0001FC24  7C 83 23 78 */	mr r3, r4
/* 80022CC8 0001FC28  90 04 00 34 */	stw r0, 0x34(r4)
/* 80022CCC 0001FC2C  48 2A 56 99 */	bl ClearRenderBuffer__15CGuiTextSupportFv
/* 80022CD0 0001FC30  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80022CD4 0001FC34  48 2A 50 9D */	bl GetBounds__15CGuiTextSupportFv
/* 80022CD8 0001FC38  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80022CDC 0001FC3C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80022CE0 0001FC40  7C 83 23 78 */	mr r3, r4
/* 80022CE4 0001FC44  90 04 00 38 */	stw r0, 0x38(r4)
/* 80022CE8 0001FC48  48 2A 56 7D */	bl ClearRenderBuffer__15CGuiTextSupportFv
/* 80022CEC 0001FC4C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80022CF0 0001FC50  7F E3 FB 78 */	mr r3, r31
/* 80022CF4 0001FC54  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80022CF8 0001FC58  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80022CFC 0001FC5C  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 80022D00 0001FC60  83 81 00 40 */	lwz r28, 0x40(r1)
/* 80022D04 0001FC64  7C 08 03 A6 */	mtlr r0
/* 80022D08 0001FC68  38 21 00 50 */	addi r1, r1, 0x50
/* 80022D0C 0001FC6C  4E 80 00 20 */	blr

.global sub_80022d10
sub_80022d10:
/* 80022D10 0001FC70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80022D14 0001FC74  7C 08 02 A6 */	mflr r0
/* 80022D18 0001FC78  38 A0 00 00 */	li r5, 0
/* 80022D1C 0001FC7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80022D20 0001FC80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80022D24 0001FC84  7C 9F 23 78 */	mr r31, r4
/* 80022D28 0001FC88  93 C1 00 08 */	stw r30, 8(r1)
/* 80022D2C 0001FC8C  7C 7E 1B 78 */	mr r30, r3
/* 80022D30 0001FC90  80 63 00 00 */	lwz r3, 0(r3)
/* 80022D34 0001FC94  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80022D38 0001FC98  48 2A 6B 4D */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80022D3C 0001FC9C  80 7E 00 04 */	lwz r3, 4(r30)
/* 80022D40 0001FCA0  7F E4 FB 78 */	mr r4, r31
/* 80022D44 0001FCA4  38 A0 00 00 */	li r5, 0
/* 80022D48 0001FCA8  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80022D4C 0001FCAC  48 2A 6B 39 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80022D50 0001FCB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80022D54 0001FCB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80022D58 0001FCB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80022D5C 0001FCBC  7C 08 03 A6 */	mtlr r0
/* 80022D60 0001FCC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80022D64 0001FCC4  4E 80 00 20 */	blr

.global SetPairText__12SGuiTextPairFRCQ24rstl7wstring
SetPairText__12SGuiTextPairFRCQ24rstl7wstring:
/* 80022D68 0001FCC8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80022D6C 0001FCCC  7C 08 02 A6 */	mflr r0
/* 80022D70 0001FCD0  38 A0 FF FF */	li r5, -1
/* 80022D74 0001FCD4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80022D78 0001FCD8  38 C1 00 0C */	addi r6, r1, 0xc
/* 80022D7C 0001FCDC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80022D80 0001FCE0  7C 9F 23 78 */	mr r31, r4
/* 80022D84 0001FCE4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80022D88 0001FCE8  7C 7E 1B 78 */	mr r30, r3
/* 80022D8C 0001FCEC  38 61 00 20 */	addi r3, r1, 0x20
/* 80022D90 0001FCF0  48 31 AA 2D */	bl "__ct__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>FPCwiRCQ24rstl17rmemory_allocator"
/* 80022D94 0001FCF4  80 7E 00 00 */	lwz r3, 0(r30)
/* 80022D98 0001FCF8  38 81 00 20 */	addi r4, r1, 0x20
/* 80022D9C 0001FCFC  38 A0 00 00 */	li r5, 0
/* 80022DA0 0001FD00  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80022DA4 0001FD04  48 2A 6A E1 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80022DA8 0001FD08  38 61 00 20 */	addi r3, r1, 0x20
/* 80022DAC 0001FD0C  48 31 A3 89 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 80022DB0 0001FD10  7F E4 FB 78 */	mr r4, r31
/* 80022DB4 0001FD14  38 61 00 10 */	addi r3, r1, 0x10
/* 80022DB8 0001FD18  38 C1 00 08 */	addi r6, r1, 8
/* 80022DBC 0001FD1C  38 A0 FF FF */	li r5, -1
/* 80022DC0 0001FD20  48 31 A9 FD */	bl "__ct__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>FPCwiRCQ24rstl17rmemory_allocator"
/* 80022DC4 0001FD24  80 7E 00 04 */	lwz r3, 4(r30)
/* 80022DC8 0001FD28  38 81 00 10 */	addi r4, r1, 0x10
/* 80022DCC 0001FD2C  38 A0 00 00 */	li r5, 0
/* 80022DD0 0001FD30  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80022DD4 0001FD34  48 2A 6A B1 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80022DD8 0001FD38  38 61 00 10 */	addi r3, r1, 0x10
/* 80022DDC 0001FD3C  48 31 A3 59 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 80022DE0 0001FD40  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80022DE4 0001FD44  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80022DE8 0001FD48  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80022DEC 0001FD4C  7C 08 03 A6 */	mtlr r0
/* 80022DF0 0001FD50  38 21 00 40 */	addi r1, r1, 0x40
/* 80022DF4 0001FD54  4E 80 00 20 */	blr

.global FindTextPanePair__14SFrontEndFrameFPC9CGuiFramePCc
FindTextPanePair__14SFrontEndFrameFPC9CGuiFramePCc:
/* 80022DF8 0001FD58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80022DFC 0001FD5C  7C 08 02 A6 */	mflr r0
/* 80022E00 0001FD60  90 01 00 24 */	stw r0, 0x24(r1)
/* 80022E04 0001FD64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80022E08 0001FD68  7C BF 2B 78 */	mr r31, r5
/* 80022E0C 0001FD6C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80022E10 0001FD70  7C 9E 23 78 */	mr r30, r4
/* 80022E14 0001FD74  7F E4 FB 78 */	mr r4, r31
/* 80022E18 0001FD78  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80022E1C 0001FD7C  7C 7D 1B 78 */	mr r29, r3
/* 80022E20 0001FD80  7F C3 F3 78 */	mr r3, r30
/* 80022E24 0001FD84  48 29 F3 31 */	bl FindWidget__9CGuiFrameCFPCc
/* 80022E28 0001FD88  3C 80 80 3D */	lis r4, lbl_803CC644@ha
/* 80022E2C 0001FD8C  90 7D 00 00 */	stw r3, 0(r29)
/* 80022E30 0001FD90  38 64 C6 44 */	addi r3, r4, lbl_803CC644@l
/* 80022E34 0001FD94  7F E4 FB 78 */	mr r4, r31
/* 80022E38 0001FD98  38 63 04 52 */	addi r3, r3, 0x452
/* 80022E3C 0001FD9C  4C C6 31 82 */	crclr 6
/* 80022E40 0001FDA0  48 2B 33 71 */	bl Stringize__7CBasicsFPCce
/* 80022E44 0001FDA4  7C 64 1B 78 */	mr r4, r3
/* 80022E48 0001FDA8  7F C3 F3 78 */	mr r3, r30
/* 80022E4C 0001FDAC  48 29 F3 09 */	bl FindWidget__9CGuiFrameCFPCc
/* 80022E50 0001FDB0  90 7D 00 04 */	stw r3, 4(r29)
/* 80022E54 0001FDB4  7F A3 EB 78 */	mr r3, r29
/* 80022E58 0001FDB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80022E5C 0001FDBC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80022E60 0001FDC0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80022E64 0001FDC4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80022E68 0001FDC8  7C 08 03 A6 */	mtlr r0
/* 80022E6C 0001FDCC  38 21 00 20 */	addi r1, r1, 0x20
/* 80022E70 0001FDD0  4E 80 00 20 */	blr

.global __ct__12SGuiTextPairFv
__ct__12SGuiTextPairFv:
/* 80022E74 0001FDD4  38 00 00 00 */	li r0, 0
/* 80022E78 0001FDD8  90 03 00 00 */	stw r0, 0(r3)
/* 80022E7C 0001FDDC  90 03 00 04 */	stw r0, 4(r3)
/* 80022E80 0001FDE0  4E 80 00 20 */	blr

.global FindAndSetPairText__14SFrontEndFrameFR9CGuiFramePCcRCQ24rstl7wstring
FindAndSetPairText__14SFrontEndFrameFR9CGuiFramePCcRCQ24rstl7wstring:
/* 80022E84 0001FDE4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80022E88 0001FDE8  7C 08 02 A6 */	mflr r0
/* 80022E8C 0001FDEC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80022E90 0001FDF0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80022E94 0001FDF4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80022E98 0001FDF8  7C BE 2B 78 */	mr r30, r5
/* 80022E9C 0001FDFC  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80022EA0 0001FE00  7C 9D 23 78 */	mr r29, r4
/* 80022EA4 0001FE04  93 81 00 30 */	stw r28, 0x30(r1)
/* 80022EA8 0001FE08  7C 7C 1B 78 */	mr r28, r3
/* 80022EAC 0001FE0C  48 29 F2 A9 */	bl FindWidget__9CGuiFrameCFPCc
/* 80022EB0 0001FE10  7C 7F 1B 78 */	mr r31, r3
/* 80022EB4 0001FE14  7F C4 F3 78 */	mr r4, r30
/* 80022EB8 0001FE18  38 61 00 20 */	addi r3, r1, 0x20
/* 80022EBC 0001FE1C  38 C1 00 0C */	addi r6, r1, 0xc
/* 80022EC0 0001FE20  38 A0 FF FF */	li r5, -1
/* 80022EC4 0001FE24  48 31 A8 F9 */	bl "__ct__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>FPCwiRCQ24rstl17rmemory_allocator"
/* 80022EC8 0001FE28  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 80022ECC 0001FE2C  38 81 00 20 */	addi r4, r1, 0x20
/* 80022ED0 0001FE30  38 A0 00 00 */	li r5, 0
/* 80022ED4 0001FE34  48 2A 69 B1 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80022ED8 0001FE38  38 61 00 20 */	addi r3, r1, 0x20
/* 80022EDC 0001FE3C  48 31 A2 59 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 80022EE0 0001FE40  3C 60 80 3D */	lis r3, lbl_803CC644@ha
/* 80022EE4 0001FE44  7F A4 EB 78 */	mr r4, r29
/* 80022EE8 0001FE48  38 63 C6 44 */	addi r3, r3, lbl_803CC644@l
/* 80022EEC 0001FE4C  38 63 04 52 */	addi r3, r3, 0x452
/* 80022EF0 0001FE50  4C C6 31 82 */	crclr 6
/* 80022EF4 0001FE54  48 2B 32 BD */	bl Stringize__7CBasicsFPCce
/* 80022EF8 0001FE58  7C 64 1B 78 */	mr r4, r3
/* 80022EFC 0001FE5C  7F 83 E3 78 */	mr r3, r28
/* 80022F00 0001FE60  48 29 F2 55 */	bl FindWidget__9CGuiFrameCFPCc
/* 80022F04 0001FE64  7C 7F 1B 78 */	mr r31, r3
/* 80022F08 0001FE68  7F C4 F3 78 */	mr r4, r30
/* 80022F0C 0001FE6C  38 61 00 10 */	addi r3, r1, 0x10
/* 80022F10 0001FE70  38 C1 00 08 */	addi r6, r1, 8
/* 80022F14 0001FE74  38 A0 FF FF */	li r5, -1
/* 80022F18 0001FE78  48 31 A8 A5 */	bl "__ct__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>FPCwiRCQ24rstl17rmemory_allocator"
/* 80022F1C 0001FE7C  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 80022F20 0001FE80  38 81 00 10 */	addi r4, r1, 0x10
/* 80022F24 0001FE84  38 A0 00 00 */	li r5, 0
/* 80022F28 0001FE88  48 2A 69 5D */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80022F2C 0001FE8C  38 61 00 10 */	addi r3, r1, 0x10
/* 80022F30 0001FE90  48 31 A2 05 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 80022F34 0001FE94  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80022F38 0001FE98  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80022F3C 0001FE9C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80022F40 0001FEA0  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80022F44 0001FEA4  83 81 00 30 */	lwz r28, 0x30(r1)
/* 80022F48 0001FEA8  7C 08 03 A6 */	mtlr r0
/* 80022F4C 0001FEAC  38 21 00 40 */	addi r1, r1, 0x40
/* 80022F50 0001FEB0  4E 80 00 20 */	blr

.global PlayAdvanceSfx__11CFrontEndUIFv
PlayAdvanceSfx__11CFrontEndUIFv:
/* 80022F54 0001FEB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80022F58 0001FEB8  7C 08 02 A6 */	mflr r0
/* 80022F5C 0001FEBC  A9 02 C5 FA */	lha r8, lbl_805AE31A@sda21(r2)
/* 80022F60 0001FEC0  38 80 04 48 */	li r4, 0x448
/* 80022F64 0001FEC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80022F68 0001FEC8  38 61 00 0C */	addi r3, r1, 0xc
/* 80022F6C 0001FECC  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 80022F70 0001FED0  38 A0 00 7F */	li r5, 0x7f
/* 80022F74 0001FED4  38 C0 00 40 */	li r6, 0x40
/* 80022F78 0001FED8  38 E0 00 00 */	li r7, 0
/* 80022F7C 0001FEDC  39 20 00 00 */	li r9, 0
/* 80022F80 0001FEE0  48 2C 6D F5 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 80022F84 0001FEE4  A9 02 C5 FA */	lha r8, lbl_805AE31A@sda21(r2)
/* 80022F88 0001FEE8  38 61 00 08 */	addi r3, r1, 8
/* 80022F8C 0001FEEC  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 80022F90 0001FEF0  38 80 04 43 */	li r4, 0x443
/* 80022F94 0001FEF4  38 A0 00 7F */	li r5, 0x7f
/* 80022F98 0001FEF8  38 C0 00 40 */	li r6, 0x40
/* 80022F9C 0001FEFC  38 E0 00 00 */	li r7, 0
/* 80022FA0 0001FF00  39 20 00 00 */	li r9, 0
/* 80022FA4 0001FF04  48 2C 6D D1 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 80022FA8 0001FF08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80022FAC 0001FF0C  7C 08 03 A6 */	mtlr r0
/* 80022FB0 0001FF10  38 21 00 10 */	addi r1, r1, 0x10
/* 80022FB4 0001FF14  4E 80 00 20 */	blr

.global __sinit_CFrontEndUI_cpp
__sinit_CFrontEndUI_cpp:
/* 80022FB8 0001FF18  3C 60 4D 4C */	lis r3, 0x4D4C564C@ha
/* 80022FBC 0001FF1C  3C 80 15 8F */	lis r4, 0x158EFE17@ha
/* 80022FC0 0001FF20  38 A3 56 4C */	addi r5, r3, 0x4D4C564C@l
/* 80022FC4 0001FF24  38 6D A0 F0 */	addi r3, r13, lbl_805A8CB0@sda21
/* 80022FC8 0001FF28  38 04 FE 17 */	addi r0, r4, 0x158EFE17@l
/* 80022FCC 0001FF2C  90 AD A0 F0 */	stw r5, lbl_805A8CB0@sda21(r13)
/* 80022FD0 0001FF30  90 03 00 04 */	stw r0, 4(r3)
/* 80022FD4 0001FF34  4E 80 00 20 */	blr
