.include "macros.inc"

.section .rodata, "a"  # 0x803CB3A0 - 0x803D8D60

.global lbl_803CCB18
lbl_803CCB18:
	# ROM: 0x3C9B18
	.4byte 0x803CCB50
	.4byte 0x803CCB62
	.4byte 0x803CCB62
	.4byte 0x803CCB79
	.4byte 0x803CCB8C
	.4byte 0x803CCBA4
	.4byte 0x803CCBBB
	.4byte 0x803CCBD3

.global lbl_803CCB38
lbl_803CCB38:
	# ROM: 0x3C9B38
	.4byte 0x803CCBE6
	.4byte 0x803CCBFE
	.4byte 0x803CCC15
	.4byte 0x803CCC2B
	.4byte 0x803CCC44
	.4byte 0x803CCC5C

.global lbl_803CCB50
lbl_803CCB50:
	# ROM: 0x3C9B50
	.asciz "Video/wingame.thp"
	.byte 0x56, 0x69
	.asciz "deo/wingame_best.thp"
	.byte 0x56, 0x69, 0x64
	.asciz "eo/losegame.thp"
	.asciz "Video/05_tallonText.thp"
	.asciz "Video/AfterCredits.thp"
	.byte 0x56
	.asciz "ideo/SpecialEnding.thp"
	.byte 0x56
	.asciz "ideo/creditBG.thp"
	.byte 0x56, 0x69
	.asciz "deo/win_bad_begin.thp"
	.byte 0x56, 0x69
	.asciz "deo/win_bad_loop.thp"
	.byte 0x56, 0x69, 0x64
	.asciz "eo/win_bad_end.thp"
	.byte 0x56
	.asciz "ideo/win_good_begin.thp"
	.asciz "Video/win_good_loop.thp"
	.asciz "Video/win_good_end.thp"
	.byte 0x41
	.asciz "udio/ending3.rsf"
	.byte 0x41, 0x75, 0x64
	.asciz "io/samusjak.rsf"
	.asciz "AutoSave"
	.byte 0x3F, 0x3F, 0x28
	.4byte 0x3F3F2900
	.asciz "Credits"
	.asciz " %d%%\n"
	.byte 0x20
	.asciz "%02d:%02d\n"
	.byte 0x50
	.asciz "layMovie"
	.balign 4

.global lbl_803CCCD0
lbl_803CCCD0:
	# ROM: 0x3C9CD0
	.4byte 0x803CCCDC
	.4byte 0x803CCCEE
	.4byte 0x803CCCFD

.global lbl_803CCCDC
lbl_803CCCDC:
	# ROM: 0x3C9CDC
	.asciz "TXTR_NintendoLogo"
	.byte 0x54, 0x58
	.asciz "TR_RetroLogo"
	.byte 0x54, 0x58, 0x54
	.asciz "R_DolbyLogo"
	.asciz "??(??)"
	.byte 0x53
	.asciz "plashScreen"

.global lbl_803CCD20
lbl_803CCD20:
	# ROM: 0x3C9D20
	.asciz "??(??)"
	.balign 4
	.asciz "root"
	.byte 0x43, 0x68, 0x61
	.asciz "racter "
	.asciz " has invalid initial animation, so defaulting to first.\n"
	.balign 4
	.4byte 0

.global lbl_803CCD78
lbl_803CCD78:
	# ROM: 0x3C9D78
	.asciz "??(??)"
	.balign 4

.global lbl_803CCD80
lbl_803CCD80:
	# ROM: 0x3C9D80
	.asciz "??(??)"
	.balign 4

.global lbl_803CCD88
lbl_803CCD88:
	# ROM: 0x3C9D88
	.asciz "GunRes"
	.byte 0x3F
	.asciz "?(??)"
	.byte 0x50, 0x6C
	.asciz "ayerRes"
	.asciz "Particle"
	.byte 0x50, 0x6C, 0x61
	.4byte 0x79657200
	.asciz "CameraBob"
	.byte 0x42, 0x61
	.4byte 0x6C6C0050
	.asciz "layerGun"
	.byte 0x54, 0x61, 0x72
	.asciz "geting"
	.byte 0x47
	.4byte 0x616D6500
	.asciz "GuiColors"
	.byte 0x41, 0x75
	.asciz "toMapper"
	.byte 0x47, 0x75, 0x69
	.4byte 0x00506C61
	.asciz "yerControls"
	.asciz "PlayerControls2"
	.asciz "SlideShow"
	.balign 4
	.4byte 0

.global lbl_803CCE20
lbl_803CCE20:
	# ROM: 0x3C9E20
	.asciz "??(??)"
	.byte 0x56
	.asciz "isorAcid"
	.balign 4
	.4byte 0

.global lbl_803CCE38
lbl_803CCE38:
	# ROM: 0x3C9E38
	.4byte 0xBA83126F
	.4byte 0
	.4byte 0x3A83126F

.global lbl_803CCE44
lbl_803CCE44:
	# ROM: 0x3C9E44
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001

.global lbl_803CCE54
lbl_803CCE54:
	# ROM: 0x3C9E54
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003

.global lbl_803CCE64
lbl_803CCE64:
	# ROM: 0x3C9E64
	.4byte 0x0000000B
	.4byte 0x0000000E
	.4byte 0x0000001C
	.4byte 0x00000008

.global lbl_803CCE74
lbl_803CCE74:
	# ROM: 0x3C9E74
	.4byte 0x00000013
	.4byte 0x00000014
	.4byte 0x00000015
	.4byte 0x00000016

.global lbl_803CCE84
lbl_803CCE84:
	# ROM: 0x3C9E84
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0

.global lbl_803CCE98
lbl_803CCE98:
	# ROM: 0x3C9E98
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803CCEB0
lbl_803CCEB0:
	# ROM: 0x3C9EB0
	.asciz "GBSE_SDK"
	.byte 0x3F, 0x3F, 0x28
	.4byte 0x3F3F2900
	.asciz "GunLite"
	.asciz "elbow"
	.byte 0x57, 0x68
	.asciz "ole Body"
	.balign 4
	.4byte 0

.global lbl_803CCEE0
lbl_803CCEE0:
	# ROM: 0x3C9EE0
	.asciz "??(??)"
	.byte 0x50
	.asciz "roj col resp"
	.byte 0x00, 0x4F, 0x62
	.asciz "ject list full!"
	.asciz "DefaultShadow"
	.balign 4

.global lbl_803CCF18
lbl_803CCF18:
	# ROM: 0x3C9F18
	.asciz "??(??)"
	.balign 4

.global lbl_803CCF20
lbl_803CCF20:
	# ROM: 0x3C9F20
	.asciz "??(??)"
	.balign 4

.global lbl_803CCF28
lbl_803CCF28:
	# ROM: 0x3C9F28
	.asciz "Msg[%3d] %s"
	.asciz "-------------------------"
	.byte 0x44, 0x72
	.asciz "aw[%3d] %s"
	.byte 0x3F
	.asciz "?(??)"
	.balign 4
	.4byte 0

.global lbl_803CCF68
lbl_803CCF68:
	# ROM: 0x3C9F68
	.asciz "??(??)"
	.balign 4

.global lbl_803CCF70
lbl_803CCF70:
	# ROM: 0x3C9F70
	.4byte 0x003F3F28
	.4byte 0x3F3F2900

.global lbl_803CCF78
lbl_803CCF78:
	# ROM: 0x3C9F78
	.asciz "??(??)"
	.byte 0x45
	.asciz "xplodePLight_"
	.balign 4

.global lbl_803CCF90
lbl_803CCF90:
	# ROM: 0x3C9F90
	.asciz "??(??)"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803CCFAC
lbl_803CCFAC:
	# ROM: 0x3C9FAC
	.asciz "??(??)"
	.balign 4
	.4byte 0

.global lbl_803CCFB8
lbl_803CCFB8:
	# ROM: 0x3C9FB8
	.asciz "FRME_BaseHud"
	.balign 4

.global lbl_803CCFC8
lbl_803CCFC8:
	# ROM: 0x3C9FC8
	.asciz "FRME_Helmet"
	.asciz "FRME_CombatHud"
	.balign 4
	.asciz "FRME_XRayHudNew"
	.asciz "FRME_ScanHud"
	.balign 4
	.asciz "FRME_ThermalHud"
	.asciz "FRME_BallHud"
	.balign 4

.global lbl_803CD024
lbl_803CD024:
	# ROM: 0x3CA024
	.asciz "basewidget_pivot"
	.balign 4
	.asciz "Model_AutoMapper"
	.balign 4
	.asciz "textpane_counter"
	.balign 4
	.asciz "model_videoband"
	.asciz "textpane_message"
	.balign 4
	.4byte 0x803CD0C0
	.4byte 0x803CD0D4
	.4byte 0x803CD0E8
	.4byte 0x803CD0FC
	.4byte 0x803CD110
	.4byte 0x803CD124
	.4byte 0x803CD138
	.4byte 0x803CD14C
	.4byte 0x803CD160
	.4byte 0x803CD174
	.4byte 0x803CD188
	.4byte 0x803CD19C
	.4byte 0x803CD1B0
	.4byte 0x803CD1C4
	.4byte 0x803CD1D8

.global lbl_803CD0C0
lbl_803CD0C0:
	# ROM: 0x3CA0C0
	.asciz "              Radar"
	.asciz "                Lag"
	.asciz "             Lights"
	.asciz "          Targeting"
	.asciz "             Damage"
	.asciz "          FrameGlue"
	.asciz "          BaseFrame"
	.asciz "        EnergyGroup"
	.asciz "        ThreatGroup"
	.asciz "       MissileGroup"
	.asciz "      FreeLookGroup"
	.asciz "        HelmetGroup"
	.asciz "          DecoGroup"
	.asciz "           CamDebug"
	.asciz "              Total"
	.asciz "%02d:%02d:%02d"
	.byte 0x3F
	.asciz "?(??)"
	.byte 0x44, 0x61
	.asciz "mageSpotLight"
	.byte 0x42, 0x61
	.asciz "seWidget_Pivot"
	.byte 0x62
	.asciz "asewidget_message"
	.byte 0x6D, 0x6F
	.asciz "del_abutton"
	.asciz "%s%d"
	.balign 4
	.4byte 0

.global lbl_803CD250
lbl_803CD250:
	# ROM: 0x3CA250
	.asciz "??(??)"
	.byte 0x4D
	.asciz "eta-animation name unavailable in Release mode."

.global lbl_803CD288
lbl_803CD288:
	# ROM: 0x3CA288
	.asciz "??(??)"
	.balign 4

.global lbl_803CD290
lbl_803CD290:
	# ROM: 0x3CA290
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803CD2A4
lbl_803CD2A4:
	# ROM: 0x3CA2A4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803CD2B8
lbl_803CD2B8:
	# ROM: 0x3CA2B8
	.4byte 0x00260069
	.4byte 0x006D0061
	.4byte 0x00670065
	.4byte 0x003D0000

.global lbl_803CD2C8
lbl_803CD2C8:
	# ROM: 0x3CA2C8
	.4byte 0x00260069
	.4byte 0x006D0061
	.4byte 0x00670065
	.4byte 0x003D0000

.global lbl_803CD2D8
lbl_803CD2D8:
	# ROM: 0x3CA2D8
	.asciz "basewidget_pivot"
	.byte 0x62, 0x61, 0x73
	.asciz "ewidget_bgframe"
	.asciz "basewidget_leftside"
	.asciz "basewidget_leftlog"
	.byte 0x74
	.asciz "ablegroup_leftlog"
	.byte 0x62, 0x61
	.asciz "sewidget_leftguages"
	.asciz "model_lefthighlight"
	.asciz "basewidget_rightside"
	.byte 0x62, 0x61, 0x73
	.asciz "ewidget_rightlog"
	.byte 0x74, 0x61, 0x62
	.asciz "legroup_rightlog"
	.byte 0x62, 0x61, 0x73
	.asciz "ewidget_rightguages"
	.asciz "model_righthighlight"
	.byte 0x6D, 0x6F, 0x64
	.asciz "el_textarrowtop"
	.asciz "model_textarrowbottom"
	.byte 0x6D, 0x6F
	.asciz "del_scrollleftup"
	.byte 0x6D, 0x6F, 0x64
	.asciz "el_scrollleftdown"
	.byte 0x6D, 0x6F
	.asciz "del_scrollrightup"
	.byte 0x6D, 0x6F
	.asciz "del_scrollrightdown"
	.asciz "textpane_title"
	.byte 0x74
	.asciz "extpane_body"
	.byte 0x62, 0x61, 0x73
	.asciz "ewidget_yicon"
	.byte 0x6D, 0x6F
	.asciz "del_textalpha"
	.byte 0x74, 0x65
	.asciz "xtpane_yicon"
	.byte 0x74, 0x65, 0x78
	.asciz "tpane_ytext"
	.asciz "%8.8X"
	.byte 0x73, 0x6C
	.asciz "idergroup_slider"
	.byte 0x74, 0x61, 0x62
	.asciz "legroup_double"
	.byte 0x74
	.asciz "ablegroup_triple"
	.byte 0x74, 0x65, 0x78
	.asciz "tpane_title%d"
	.byte 0x6D, 0x6F
	.asciz "del_title%d"
	.asciz "model_righttitledeco%d"
	.byte 0x74
	.asciz "extpane_category%d"
	.byte 0x6D
	.asciz "odel_category%d"
	.asciz "??(??)"
	.byte 0x74
	.asciz "extpane_l1"
	.byte 0x74
	.asciz "extpane_r"
	.byte 0x74, 0x65
	.asciz "xtpane_a"
	.byte 0x74, 0x65, 0x78
	.asciz "tpane_b"
	.asciz "textpane_return"
	.asciz "textpane_next"
	.byte 0x74, 0x65
	.asciz "xtpane_back"
	.asciz "basewidget_deco"
	.asciz "STRG_PauseScreen"
	.byte 0x46, 0x52, 0x4D
	.asciz "E_PauseScreenInstructions"
	.byte 0x46, 0x52
	.asciz "ME_PauseScreen"
	.balign 4

.global lbl_803CD5E8
lbl_803CD5E8:
	# ROM: 0x3CA5E8
	.asciz "Whole Body"
	.balign 4
	.4byte 0

.global lbl_803CD5F8
lbl_803CD5F8:
	# ROM: 0x3CA5F8
	.asciz "??(??)"
	.balign 4

.global lbl_803CD600
lbl_803CD600:
	# ROM: 0x3CA600
	.asciz "??(??)"
	.byte 0x6C
	.asciz "ockon_target_LCTR"
	.byte 0x44, 0x65
	.4byte 0x61640053
	.asciz "tart"
	.balign 4

.global lbl_803CD628
lbl_803CD628:
	# ROM: 0x3CA628
	.asciz "??(??)"
	.balign 4

.global lbl_803CD630
lbl_803CD630:
	# ROM: 0x3CA630
	.4byte 0x00000009
	.4byte 0x00000002
	.4byte 0x000000FF
	.4byte 0

.global lbl_803CD640
lbl_803CD640:
	# ROM: 0x3CA640
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x01010102
	.4byte 0x01020201
	.4byte 0x01020201
	.4byte 0x02010102
	.4byte 0x01020201
	.4byte 0x02010202
	.4byte 0x02020000

.global lbl_803CD66C
lbl_803CD66C:
	# ROM: 0x3CA66C
	.asciz "??(??)"
	.balign 4
	.4byte 0

.global lbl_803CD678
lbl_803CD678:
	# ROM: 0x3CA678
	.asciz "??(??)"
	.byte 0x42
	.asciz "all Camera"
	.balign 4
	.4byte 0

.global lbl_803CD690
lbl_803CD690:
	# ROM: 0x3CA690
	.asciz "??(??)"
	.byte 0x45
	.asciz "ffectPLight_"
	.balign 4

.global lbl_803CD6A8
lbl_803CD6A8:
	# ROM: 0x3CA6A8
	.asciz "??(??)"
	.byte 0x42
	.asciz "ombPLight_"
	.byte 0x42
	.4byte 0x6F6D6200

.global lbl_803CD6C0
lbl_803CD6C0:
	# ROM: 0x3CA6C0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x000000FA
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000008
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0000000E
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001

.global lbl_803CD764
lbl_803CD764:
	# ROM: 0x3CA764
	.4byte 0x00000005
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x00000001

.global lbl_803CD778
lbl_803CD778:
	# ROM: 0x3CA778
	.4byte 0x3E4CCCCD
	.4byte 0x3DCCCCCD
	.4byte 0x3E4CCCCD
	.4byte 0x3E4CCCCD
	.4byte 0x3F800000

.global lbl_803CD78C
lbl_803CD78C:
	# ROM: 0x3CA78C
	.asciz "CombatVisor"
	.asciz "XRayVisor"
	.byte 0x53, 0x63
	.asciz "anVisor"
	.asciz "ThermalVisor"
	.byte 0x3F, 0x3F, 0x28
	.4byte 0x3F3F2900

.global lbl_803CD7C0
lbl_803CD7C0:
	# ROM: 0x3CA7C0
	.asciz "L_eye"
	.byte 0x52, 0x5F
	.4byte 0x65796500
	.asciz "??(??)"
	.balign 4
	.4byte 0

.global lbl_803CD7D8
lbl_803CD7D8:
	# ROM: 0x3CA7D8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803CD7EC
lbl_803CD7EC:
	# ROM: 0x3CA7EC
	.4byte 0x00260069
	.4byte 0x006D0061
	.4byte 0x00670065
	.4byte 0x003D0000

.global lbl_803CD7FC
lbl_803CD7FC:
	# ROM: 0x3CA7FC
	.4byte 0x00260069
	.4byte 0x006D0061
	.4byte 0x00670065
	.4byte 0x003D0000

.global lbl_803CD80C
lbl_803CD80C:
	# ROM: 0x3CA80C
	.asciz "FRME_MapScreen"
	.byte 0x3F
	.asciz "?(??)"
	.byte 0x74, 0x65
	.asciz "xtpane_left"
	.asciz "textpane_yicon"
	.byte 0x74
	.asciz "extpane_hint"
	.byte 0x74, 0x65, 0x78
	.asciz "tpane_instructions"
	.byte 0x74
	.asciz "extpane_instructions1"
	.byte 0x74, 0x65
	.asciz "xtpane_instructions2"
	.byte 0x74, 0x65, 0x78
	.asciz "tpane_mapLegend"
	.asciz "basewidget_leftPane"
	.asciz "basewidget_yButtonPane"
	.byte 0x62
	.asciz "asewidget_bottomPane"
	.byte 0x74, 0x65, 0x78
	.asciz "tpane_areaname"
	.byte 0x74
	.asciz "extpane_right1"
	.byte 0x25
	.asciz "8.8X"
	.byte 0x74, 0x65, 0x78
	.asciz "tpane_right"
	.asciz "SI,0.6,1.0,%8.8X"
	.byte 0x4D, 0x41, 0x50
	.asciz "U_MapUniverse"
	.byte 0x43, 0x4D
	.asciz "DL_MiniMapSamus"
	.asciz "TXTR_HintBeacon"

.global lbl_803CD960
lbl_803CD960:
	# ROM: 0x3CA960
	.asciz "??(??)"
	.balign 4

.global lbl_803CD968
lbl_803CD968:
	# ROM: 0x3CA968
	.asciz "Patrol"
	.byte 0x46
	.asciz "ollowPattern"
	.byte 0x44, 0x65, 0x61
	.4byte 0x64005061
	.asciz "thFind"
	.byte 0x53
	.asciz "tart"
	.byte 0x53, 0x65, 0x6C
	.asciz "ectTarget"
	.byte 0x54, 0x61
	.asciz "rgetPatrol"
	.byte 0x54
	.asciz "argetPlayer"
	.asciz "TargetCover"
	.asciz "Halt"
	.byte 0x57, 0x61, 0x6C
	.4byte 0x6B005275
	.4byte 0x6E004765
	.asciz "nerate"
	.byte 0x44
	.asciz "eactivate"
	.byte 0x41, 0x74
	.asciz "tack"
	.byte 0x4C, 0x6F, 0x6F
	.asciz "pedAttack"
	.byte 0x4A, 0x75
	.asciz "mpBack"
	.byte 0x44
	.asciz "oubleSnap"
	.byte 0x53, 0x68
	.asciz "uffle"
	.byte 0x54, 0x75
	.asciz "rnAround"
	.byte 0x53, 0x6B, 0x69
	.4byte 0x64004163
	.asciz "tive"
	.byte 0x49, 0x6E, 0x41
	.asciz "ctive"
	.byte 0x43, 0x6F
	.asciz "verAttack"
	.byte 0x43, 0x72
	.asciz "ouch"
	.byte 0x46, 0x61, 0x64
	.4byte 0x65496E00
	.asciz "FadeOut"
	.asciz "GetUp"
	.byte 0x54, 0x61
	.4byte 0x756E7400
	.asciz "Suck"
	.byte 0x46, 0x6C, 0x65
	.4byte 0x65004C75
	.4byte 0x726B0050
	.asciz "rojectileAttack"
	.asciz "Flinch"
	.byte 0x48
	.asciz "urled"
	.byte 0x54, 0x65
	.asciz "legraphAttack"
	.byte 0x4A, 0x75
	.4byte 0x6D700045
	.asciz "xplode"
	.byte 0x44
	.asciz "odge"
	.byte 0x52, 0x65, 0x74
	.asciz "reat"
	.byte 0x43, 0x6F, 0x76
	.4byte 0x65720041
	.asciz "pproach"
	.asciz "WallHang"
	.byte 0x57, 0x61, 0x6C
	.asciz "lDetach"
	.asciz "Enraged"
	.asciz "SpecialAttack"
	.byte 0x47, 0x72
	.asciz "owth"
	.byte 0x46, 0x61, 0x69
	.4byte 0x6E74004C
	.4byte 0x616E6400
	.asciz "Bounce"
	.byte 0x50
	.asciz "athFindEx"
	.byte 0x44, 0x69
	.4byte 0x7A7A7900
	.asciz "CallForBackup"
	.byte 0x42, 0x75
	.asciz "lbAttack"
	.byte 0x50, 0x6F, 0x64
	.asciz "Attack"
	.byte 0x49
	.asciz "nAttackPosition"
	.asciz "Leash"
	.byte 0x4F, 0x66
	.asciz "fLine"
	.byte 0x41, 0x74
	.asciz "tacked"
	.byte 0x50
	.asciz "athShagged"
	.byte 0x50
	.asciz "athOver"
	.asciz "PathFound"
	.byte 0x54, 0x6F
	.asciz "oClose"
	.byte 0x49
	.asciz "nRange"
	.byte 0x49
	.asciz "nMaxRange"
	.byte 0x49, 0x6E
	.asciz "DetectionRange"
	.byte 0x53
	.asciz "potPlayer"
	.byte 0x50, 0x6C
	.asciz "ayerSpot"
	.byte 0x50, 0x61, 0x74
	.asciz "ternOver"
	.byte 0x50, 0x61, 0x74
	.asciz "ternShagged"
	.asciz "HasAttackPattern"
	.byte 0x48, 0x61, 0x73
	.asciz "PatrolPath"
	.byte 0x48
	.asciz "asRetreatPattern"
	.byte 0x44, 0x65, 0x6C
	.4byte 0x61790052
	.asciz "andomDelay"
	.byte 0x46
	.asciz "ixedDelay"
	.byte 0x44, 0x65
	.asciz "fault"
	.byte 0x41, 0x6E
	.asciz "imOver"
	.byte 0x53
	.asciz "houldAttack"
	.asciz "ShouldDoubleSnap"
	.byte 0x49, 0x6E, 0x50
	.asciz "osition"
	.asciz "ShouldTurn"
	.byte 0x48
	.asciz "itSomething"
	.asciz "ShouldJumpBack"
	.byte 0x53
	.asciz "tuck"
	.byte 0x4E, 0x6F, 0x50
	.asciz "athNodes"
	.byte 0x4C, 0x61, 0x6E
	.4byte 0x64656400
	.asciz "HearShot"
	.byte 0x48, 0x65, 0x61
	.asciz "rPlayer"
	.asciz "CoverCheck"
	.byte 0x43
	.asciz "overFind"
	.byte 0x43, 0x6F, 0x76
	.asciz "erBlown"
	.asciz "CoverNearlyBlown"
	.byte 0x43, 0x6F, 0x76
	.asciz "eringFire"
	.byte 0x47, 0x6F
	.4byte 0x74557000
	.asciz "LineOfSight"
	.asciz "AggressionCheck"
	.asciz "AttackOver"
	.byte 0x53
	.asciz "houldTaunt"
	.byte 0x49
	.asciz "nside"
	.byte 0x53, 0x68
	.asciz "ouldFire"
	.byte 0x53, 0x68, 0x6F
	.asciz "uldFlinch"
	.byte 0x50, 0x61
	.asciz "trolPathOver"
	.byte 0x53, 0x68, 0x6F
	.asciz "uldDodge"
	.byte 0x53, 0x68, 0x6F
	.asciz "uldRetreat"
	.byte 0x53
	.asciz "houldCrouch"
	.asciz "ShouldMove"
	.byte 0x53
	.asciz "hotAt"
	.byte 0x48, 0x61
	.asciz "sTargetingPoint"
	.asciz "ShouldWallHang"
	.byte 0x53
	.asciz "etAIStage"
	.byte 0x41, 0x49
	.asciz "Stage"
	.byte 0x53, 0x74
	.asciz "artAttack"
	.byte 0x42, 0x72
	.asciz "eakAttack"
	.byte 0x53, 0x68
	.asciz "ouldStrafe"
	.byte 0x53
	.asciz "houldSpecialAttack"
	.byte 0x4C
	.asciz "ostInterest"
	.asciz "CodeTrigger"
	.asciz "BounceFind"
	.byte 0x52
	.asciz "andom"
	.byte 0x46, 0x69
	.asciz "xedRandom"
	.byte 0x49, 0x73
	.asciz "Dizzy"
	.byte 0x53, 0x68
	.asciz "ouldCallForBackup"
	.byte 0x3F, 0x3F
	.asciz "(??)"
	.balign 4
	.4byte 0

.global lbl_803CDE70
lbl_803CDE70:
	# ROM: 0x3CAE70
	.asciz "??(??)"
	.balign 4

.global lbl_803CDE78
lbl_803CDE78:
	# ROM: 0x3CAE78
	.asciz "??(??)"
	.balign 4

.global lbl_803CDE80
lbl_803CDE80:
	# ROM: 0x3CAE80
	.asciz "??(??)"
	.balign 4

.global lbl_803CDE88
lbl_803CDE88:
	# ROM: 0x3CAE88
	.asciz "??(??)"
	.byte 0x50
	.asciz "articleLight"
	.balign 4

.global lbl_803CDEA0
lbl_803CDEA0:
	# ROM: 0x3CAEA0
	.asciz "??(??)"
	.byte 0x4E
	.asciz "OT_A_VALID_LOCATOR"
	.balign 4
	.4byte 0

.global lbl_803CDEC0
lbl_803CDEC0:
	# ROM: 0x3CAEC0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803CDED4
lbl_803CDED4:
	# ROM: 0x3CAED4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803CDEE8
lbl_803CDEE8:
	# ROM: 0x3CAEE8
	.asciz "CMDL_Crosshairs"
	.asciz "CMDL_OrbitZone"
	.balign 4
	.asciz "CMDL_Seeker"
	.asciz "CMDL_LockConfirm"
	.balign 4
	.asciz "CMDL_TargetFlower"
	.balign 4
	.asciz "CMDL_MissileBracket"
	.asciz "CMDL_ChargeGauge"
	.balign 4
	.asciz "CMDL_ChargeTickFirst"
	.balign 4
	.asciz "CMDL_BeamSquare"
	.asciz "CMDL_InnerBeamIcon"
	.balign 4
	.asciz "CMDL_LockFire"
	.balign 4
	.asciz "CMDL_LockDagger0"
	.balign 4
	.asciz "CMDL_Grapple"
	.balign 4
	.asciz "CMDL_XRayRetRing"
	.balign 4
	.asciz "CMDL_ThermalRet"

.global lbl_803CDFF8
lbl_803CDFF8:
	# ROM: 0x3CAFF8
	.asciz "CMDL_OrbitPoint"

.global lbl_803CE008
lbl_803CE008:
	# ROM: 0x3CB008
	.asciz "%s%d"
	.byte 0x3F, 0x3F, 0x28
	.4byte 0x3F3F2900
	.4byte 0

.global lbl_803CE018
lbl_803CE018:
	# ROM: 0x3CB018
	.asciz "??(??)"
	.balign 4

.global lbl_803CE020
lbl_803CE020:
	# ROM: 0x3CB020
	.asciz "??(??)"
	.byte 0x45
	.asciz "xplosion - Pickup Effect"
	.byte 0x53, 0x54, 0x52
	.asciz "G_AllPickupsFound_2"
	.asciz "STRG_AllPickupsFound_1"
	.balign 4
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002

.global lbl_803CE07C
lbl_803CE07C:
	# ROM: 0x3CB07C
	.asciz "Atomic Alpha"
	.byte 0x3F, 0x3F, 0x28
	.4byte 0x3F3F2900
	.asciz "PhazonHealingNodule"
	.asciz "Omega Pirate"
	.byte 0x42, 0x75, 0x72
	.asciz "rower"
	.byte 0x53, 0x65
	.asciz "edling"
	.byte 0x54
	.asciz "ryclops"
	.asciz "Puffer"
	.byte 0x52
	.asciz "idley"
	.byte 0x49, 0x63
	.asciz "eZoomer"
	.asciz "Atomic Beta"
	.4byte 0x00476565
	.4byte 0x6D657200
	.asciz "Oculus"
	.byte 0x4D
	.asciz "agdolite"
	.byte 0x45, 0x6C, 0x69
	.asciz "te Pirate"
	.byte 0x45, 0x79
	.asciz "eball"
	.byte 0x42, 0x61
	.asciz "bygoth"
	.byte 0x54
	.asciz "hardus Rock Projectile"
	.byte 0x46
	.asciz "laahgra Tenticle"
	.byte 0x54, 0x68, 0x61
	.asciz "rdus"
	.byte 0x4A, 0x65, 0x6C
	.asciz "lyZap"
	.byte 0x44, 0x72
	.4byte 0x6F6E6500
	.asciz "Ice Sheegoth"
	.byte 0x4D, 0x65, 0x74
	.asciz "roid"
	.byte 0x52, 0x69, 0x70
	.4byte 0x70657200
	.asciz "Parasite"
	.byte 0x46, 0x6C, 0x61
	.asciz "ahgra"
	.byte 0x4E, 0x65
	.asciz "wIntroBoss"
	.byte 0x4D
	.asciz "etaree"
	.byte 0x53
	.asciz "pankWeed"
	.byte 0x46, 0x69, 0x72
	.asciz "eFlea"
	.byte 0x47, 0x61
	.asciz "mma Puddle Toad"
	.asciz "Puddle Spore"
	.byte 0x43, 0x68, 0x6F
	.asciz "zo Ghost"
	.byte 0x46, 0x6C, 0x69
	.asciz "ckerBat"
	.asciz "Blood Flower"
	.byte 0x46, 0x6C, 0x79
	.asciz "ingPirate"
	.byte 0x53, 0x70
	.asciz "ace Pirate"
	.byte 0x53
	.asciz "pace pirate <"
	.byte 0x3E, 0x20
	.asciz "has AnimationInformation property with invalid character selected.\n"
	.asciz "ERROR: Actor/Ai keyframe '"
	.byte 0x27
	.asciz " not loaded because it has no valid animation selected.\n"
	.byte 0x57, 0x61, 0x72
	.asciz "wasp"
	.byte 0x42, 0x65, 0x65
	.4byte 0x746C6500
	.4byte 0

.global lbl_803CE2D8
lbl_803CE2D8:
	# ROM: 0x3CB2D8
	.4byte 0
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x0000000A
	.4byte 0x00000010
	.4byte 0x00000018
	.4byte 0x00000014
	.4byte 0x0000001C

.global lbl_803CE2F8
lbl_803CE2F8:
	# ROM: 0x3CB2F8
	.4byte 0x0000000E
	.4byte 0x0000000F
	.4byte 0x00000008
	.4byte 0x00000009
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x0000000C
	.4byte 0x0000000D
	.4byte 0x00000012
	.4byte 0x00000013
	.4byte 0x0000001A
	.4byte 0x0000001B
	.4byte 0x00000016
	.4byte 0x00000017
	.4byte 0x0000001E
	.4byte 0x0000001F

.global lbl_803CE338
lbl_803CE338:
	# ROM: 0x3CB338
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x0000000B
	.4byte 0x00000011
	.4byte 0x00000019
	.4byte 0x00000015
	.4byte 0x0000001D
	.4byte 0x803CE3AC
	.4byte 0x803CE3BE
	.4byte 0x803CE3CE
	.4byte 0x803CE3DF
	.4byte 0x803CE3AC
	.4byte 0x803CE3F2
	.4byte 0x803CE400
	.4byte 0x803CE3F2
	.4byte 0x803CE415
	.4byte 0x803CE429
	.4byte 0x803CE429
	.4byte 0x803CE429
	.4byte 0x803CE429
	.4byte 0x803CE43D
	.4byte 0x803CE43D
	.4byte 0x803CE43D
	.4byte 0x803CE43D
	.4byte 0x803CE43D
	.4byte 0x803CE44F
	.4byte 0x803CE461
	.4byte 0x803CE475

.global lbl_803CE3AC
lbl_803CE3AC:
	# ROM: 0x3CB3AC
	.asciz "CMDL_InvPowerBeam"
	.byte 0x43, 0x4D
	.asciz "DL_InvIceBeam"
	.byte 0x43, 0x4D
	.asciz "DL_InvWaveBeam"
	.byte 0x43
	.asciz "MDL_InvPlasmaBeam"
	.byte 0x43, 0x4D
	.asciz "DL_InvVisor"
	.asciz "CMDL_InvGravityVisor"
	.byte 0x43, 0x4D, 0x44
	.asciz "L_InvPhazonVisor"
	.byte 0x43, 0x4D, 0x44
	.asciz "L_InvFusionVisor"
	.byte 0x43, 0x4D, 0x44
	.asciz "L_InvPowerFins"
	.byte 0x43
	.asciz "MDL_InvVariaFins"
	.byte 0x43, 0x4D, 0x44
	.asciz "L_InvGravityFins"
	.byte 0x43, 0x4D, 0x44
	.asciz "L_InvPhazonFins"
	.asciz "CMDL_InvGrappleBeam"
	.asciz "GUN_LCTR"
	.byte 0x47, 0x52, 0x41
	.asciz "PPLE_LCTR"
	.byte 0x56, 0x49
	.asciz "SOR_LCTR"
	.byte 0x53, 0x61, 0x6D
	.asciz "usBallANCS"
	.byte 0x3F
	.asciz "?(??)"
	.byte 0x50, 0x68
	.asciz "azonIndirectTexture"
	.asciz "ANCS_ItemScreenSamus"
	.byte 0x42, 0x61, 0x6C
	.asciz "lInnerGlow"
	.byte 0x4D
	.asciz "orphBallTransitionFlash"
	.4byte 0

.global lbl_803CE528
lbl_803CE528:
	# ROM: 0x3CB528
	.asciz "??(??)"
	.balign 4

.global lbl_803CE530
lbl_803CE530:
	# ROM: 0x3CB530
	.asciz "??(??)"
	.byte 0x50
	.asciz "lasma2nd_1"
	.balign 4
	.4byte 0

.global lbl_803CE548
lbl_803CE548:
	# ROM: 0x3CB548
	.asciz "??(??)"
	.byte 0x53
	.asciz "hotSmoke"
	.byte 0x50, 0x6F, 0x77
	.asciz "er2nd_1"
	.4byte 0

.global lbl_803CE568
lbl_803CE568:
	# ROM: 0x3CB568
	.asciz "??(??)"
	.byte 0x57
	.asciz "aveBeam"
	.asciz "Wave2nd_1"
	.byte 0x57, 0x61
	.asciz "ve2nd_2"
	.asciz "Wave2nd_3"
	.balign 4

.global lbl_803CE598
lbl_803CE598:
	# ROM: 0x3CB598
	.asciz "??(??)"
	.byte 0x49
	.asciz "ceSmoke"
	.asciz "Ice2nd_1"
	.byte 0x49, 0x63, 0x65
	.asciz "2nd_2"
	.balign 4
	.4byte 0

.global lbl_803CE5C0
lbl_803CE5C0:
	# ROM: 0x3CB5C0
	.asciz "??(??)"
	.balign 4

.global lbl_803CE5C8
lbl_803CE5C8:
	# ROM: 0x3CB5C8
	.asciz "??(??)"
	.balign 4
	.asciz "LCTR_GARMOUTH"
	.byte 0x54, 0x61
	.asciz "rget_Tail"
	.balign 4
	.4byte 0

.global lbl_803CE5F0
lbl_803CE5F0:
	# ROM: 0x3CB5F0
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x06040200
	.4byte 0
	.4byte 0
	.4byte 0x3F800000
	.4byte 0x03010705
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0x01000504
	.4byte 0
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x07060302
	.4byte 0xBF800000
	.4byte 0
	.4byte 0
	.4byte 0x03020100
	.4byte 0x3F800000
	.4byte 0
	.4byte 0
	.4byte 0x05040706

.global lbl_803CE650
lbl_803CE650:
	# ROM: 0x3CB650
	.4byte 0x803CE738
	.4byte 0x803CE744
	.4byte 0x803CE750
	.4byte 0x803CE75C
	.4byte 0x803CE768
	.4byte 0x803CE774
	.4byte 0x803CE780
	.4byte 0x803CE78C
	.4byte 0x803CE798
	.4byte 0x803CE7A4
	.4byte 0x803CE7C5
	.4byte 0x803CE7E6
	.4byte 0x803CE807
	.4byte 0x803CE828
	.4byte 0x803CE849
	.4byte 0x803CE86A
	.4byte 0x803CE88B
	.4byte 0x803CE8AC
	.4byte 0x803CE8CD
	.4byte 0x803CE8D6
	.4byte 0x803CE8DF
	.4byte 0x803CE8E8

.global lbl_803CE6A8
lbl_803CE6A8:
	# ROM: 0x3CB6A8
	.4byte 0x803CE8F1
	.4byte 0x803CE8F1
	.4byte 0x803CE8F1
	.4byte 0x803CE8F2
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0x00000001
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0
	.4byte 0x3F800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3F800000
	.4byte 0
	.4byte 0

.global lbl_803CE738
lbl_803CE738:
	# ROM: 0x3CB738
	.asciz "PassThru   "
	.asciz "Multiply   "
	.asciz "Invert     "
	.asciz "Add        "
	.asciz "Subtract   "
	.asciz "Blend      "
	.asciz "WideScreen "
	.asciz "SceneAdd   "
	.asciz "NoColor    "
	.asciz "FullScreen                      "
	.byte 0x46, 0x75, 0x6C
	.asciz "lScreenHalvesLeftRight       "
	.byte 0x46, 0x75
	.asciz "llScreenHalvesTopBottom       "
	.byte 0x46
	.asciz "ullScreenQuarters              "
	.asciz "CinemaBars                      "
	.byte 0x53, 0x63, 0x61
	.asciz "nLinesEven                   "
	.byte 0x53, 0x63
	.asciz "anLinesOdd                    "
	.byte 0x52
	.asciz "andomStatic                    "
	.asciz "CookieCutterDepthRandomStatic   "
	.byte 0x4E, 0x6F, 0x42
	.asciz "lur  "
	.byte 0x4C, 0x6F
	.asciz "Blur  "
	.byte 0x48
	.asciz "iBlur  "
	.asciz "XRay    "
	.byte 0x00, 0x54, 0x58
	.asciz "TR_XRayPalette"
	.byte 0x3F
	.asciz "?(??)"
	.balign 4
	.4byte 0

.global lbl_803CE910
lbl_803CE910:
	# ROM: 0x3CB910
	.4byte 0x803CEBF4
	.4byte 0
	.4byte 0x803CEBF4
	.4byte 0
	.4byte 0x803CEBF4
	.4byte 0x00000001
	.4byte 0x803CEBF4
	.4byte 0
	.4byte 0x803CEC02
	.4byte 0
	.4byte 0x803CEC02
	.4byte 0x00000002
	.4byte 0x803CEC02
	.4byte 0x00000001
	.4byte 0x803CEC02
	.4byte 0x00000003
	.4byte 0x803CEC16
	.4byte 0
	.4byte 0x803CEC16
	.4byte 0
	.4byte 0x803CEC16
	.4byte 0x00000001
	.4byte 0x803CEC16
	.4byte 0
	.4byte 0x803CEC2B
	.4byte 0
	.4byte 0x803CEC2B
	.4byte 0x00000002
	.4byte 0x803CEC2B
	.4byte 0x00000001
	.4byte 0x803CEC2B
	.4byte 0x00000003
	.4byte 0x803CEC46
	.4byte 0
	.4byte 0x803CEC46
	.4byte 0
	.4byte 0x803CEC46
	.4byte 0x00000001
	.4byte 0x803CEC46
	.4byte 0x00000002
	.4byte 0x803CEC2B
	.4byte 0
	.4byte 0x803CEC2B
	.4byte 0x00000002
	.4byte 0x803CEC2B
	.4byte 0x00000001
	.4byte 0x803CEC2B
	.4byte 0x00000003

.global lbl_803CE9D0
lbl_803CE9D0:
	# ROM: 0x3CB9D0
	.4byte 0x803CEC61
	.4byte 0
	.4byte 0x803CEC61
	.4byte 0
	.4byte 0x803CEC61
	.4byte 0x00000001
	.4byte 0x803CEC75
	.4byte 0
	.4byte 0x803CEC02
	.4byte 0
	.4byte 0x803CEC02
	.4byte 0x00000002
	.4byte 0x803CEC02
	.4byte 0x00000001
	.4byte 0x803CEC02
	.4byte 0x00000003

.global lbl_803CEA10
lbl_803CEA10:
	# ROM: 0x3CBA10
	.4byte 0x803CEC89
	.4byte 0
	.4byte 0x803CEC89
	.4byte 0
	.4byte 0x803CEC89
	.4byte 0x00000001
	.4byte 0x803CECA2
	.4byte 0
	.4byte 0x803CEC89
	.4byte 0
	.4byte 0x803CEC89
	.4byte 0
	.4byte 0x803CEC89
	.4byte 0x00000001
	.4byte 0x803CECA2
	.4byte 0
	.4byte 0x803CECBB
	.4byte 0
	.4byte 0x803CECBB
	.4byte 0
	.4byte 0x803CECBB
	.4byte 0
	.4byte 0x803CECBB
	.4byte 0
	.4byte 0x803CECBB
	.4byte 0
	.4byte 0x803CECBB
	.4byte 0
	.4byte 0x803CECBB
	.4byte 0
	.4byte 0x803CECBB
	.4byte 0

.global lbl_803CEA90
lbl_803CEA90:
	# ROM: 0x3CBA90
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0x00000008

.global lbl_803CEAB0
lbl_803CEAB0:
	# ROM: 0x3CBAB0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0x00000008

.global lbl_803CEAD0
lbl_803CEAD0:
	# ROM: 0x3CBAD0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFD519FF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFF00

.global lbl_803CEAEC
lbl_803CEAEC:
	# ROM: 0x3CBAEC
	.4byte 0xC27E1066
	.4byte 0xC4FF60FF
	.4byte 0x903333FF
	.4byte 0xFF202000
	.4byte 0x9DB6D3F1
	.4byte 0x00A686D8
	.4byte 0xFB982100

.global lbl_803CEB08
lbl_803CEB08:
	# ROM: 0x3CBB08
	.4byte 0xC27E1066
	.4byte 0xC4FF6CFF
	.4byte 0x613333FF
	.4byte 0xFF202000
	.4byte 0x9DB6D3F1
	.4byte 0x00A686D8
	.4byte 0xFB982100
	.4byte 0xC28F1770
	.4byte 0xD4FF6AFF
	.4byte 0x8A3D4DFF
	.4byte 0xC0000000
	.4byte 0xBEDCDFFF
	.4byte 0x00C49EFF
	.4byte 0xFF9A2200
	.4byte 0xFFE600FF
	.4byte 0xE600FFE6
	.4byte 0x00FFE600
	.4byte 0xFF8020FF
	.4byte 0xE600FFE6
	.4byte 0x00FFE600
	.4byte 0xFFE60000
	.4byte 0xFFCC00FF
	.4byte 0xCC00FFCC
	.4byte 0x00FFCC00
	.4byte 0xFFD519FF
	.4byte 0xCC00FFCC
	.4byte 0x00FFCC00
	.4byte 0xFFCC0000

.global lbl_803CEB78
lbl_803CEB78:
	# ROM: 0x3CBB78
	.4byte 0xC27E1066
	.4byte 0xC4FF60FF
	.4byte 0x903333FF
	.4byte 0xFF808000
	.4byte 0x9DB6D3F1
	.4byte 0x006033FF
	.4byte 0xFB982100

.global lbl_803CEB94
lbl_803CEB94:
	# ROM: 0x3CBB94
	.4byte 0xFFFF05DE
	.4byte 0x05DD062F
	.4byte 0x0786FFFF
	.4byte 0x05DC060B
	.4byte 0x05C8088A
	.4byte 0x06980787
	.4byte 0x0630FFFF
	.4byte 0x062805DD
	.4byte 0x05DD05C8
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x05FE0628

.global lbl_803CEBC4
lbl_803CEBC4:
	# ROM: 0x3CBBC4
	.4byte 0xFFFF05C3
	.4byte 0x05E0062C
	.4byte 0x065BFFFF
	.4byte 0x05DA0609
	.4byte 0x05C00697
	.4byte 0x0697065C
	.4byte 0x062DFFFF
	.4byte 0x062705E0
	.4byte 0x05E005C0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x05FD0627

.global lbl_803CEBF4
lbl_803CEBF4:
	# ROM: 0x3CBBF4
	.asciz "SamusBallANCS"
	.byte 0x53, 0x61
	.asciz "musFusionBallANCS"
	.byte 0x53, 0x61
	.asciz "musBallLowPolyCMDL"
	.byte 0x53
	.asciz "amusBallFusionLowPolyCMDL"
	.byte 0x53, 0x61
	.asciz "musSpiderBallLowPolyCMDL"
	.byte 0x53, 0x61, 0x6D
	.asciz "usSpiderBallANCS"
	.byte 0x53, 0x61, 0x6D
	.asciz "usPhazonBallANCS"
	.byte 0x53, 0x61, 0x6D
	.asciz "usSpiderBallGlassCMDL"
	.byte 0x53, 0x61
	.asciz "musPhazonBallGlassCMDL"
	.byte 0x53
	.asciz "amusBallFrozenCMDL"
	.balign 4
	.asciz "??(??)"
	.byte 0x54
	.asciz "XTR_BallFade"
	.byte 0x44, 0x69, 0x72
	.asciz "tWake"
	.byte 0x50, 0x68
	.asciz "azonWake"
	.byte 0x50, 0x68, 0x61
	.asciz "zonWakeOrange"
	.byte 0x4C, 0x61
	.asciz "vaWake"
	.byte 0x53
	.asciz "nowWake"
	.asciz "MudWake"
	.asciz "SandWake"
	.byte 0x52, 0x61, 0x69
	.asciz "nWake"
	.byte 0x5F, 0x44
	.4byte 0x47525000
	.asciz "BallLight"
	.byte 0x53, 0x6C
	.asciz "owBlueTailSwoosh"
	.byte 0x53, 0x6C, 0x6F
	.asciz "wBlueTailSwoosh2"
	.byte 0x4A, 0x61, 0x67
	.asciz "gyTrail"
	.asciz "WallSpark"
	.byte 0x42, 0x61
	.asciz "llInnerGlow"
	.asciz "SpiderBallMagnetEffect"
	.byte 0x42
	.asciz "oostBallGlow"
	.byte 0x53, 0x70, 0x69
	.asciz "derElectric"
	.asciz "MorphBallTransitionFlash"
	.byte 0x45, 0x66, 0x66
	.asciz "ect_MorphBallIceBreak"
	.balign 4

.global lbl_803CEDF8
lbl_803CEDF8:
	# ROM: 0x3CBDF8
	.asciz "??(??)"
	.balign 4

.global lbl_803CEE00
lbl_803CEE00:
	# ROM: 0x3CBE00
	.asciz "ConsoleOutputWindow"
	.4byte 0x003F3F28
	.4byte 0x3F3F2900
	.4byte 0

.global lbl_803CEE20
lbl_803CEE20:
	# ROM: 0x3CBE20
	.4byte 0x3F800000
	.4byte 0x40400000
	.4byte 0x3F35C28F
	.4byte 0x3F9851EC
	.4byte 0x3F35C28F
	.4byte 0x3F800000

.global lbl_803CEE38
lbl_803CEE38:
	# ROM: 0x3CBE38
	.asciz "??(??)"
	.balign 4

.global lbl_803CEE40
lbl_803CEE40:
	# ROM: 0x3CBE40
	.4byte 0xBF800000
	.4byte 0xBF800000
	.4byte 0xBF800000
	.4byte 0xBF800000

.global lbl_803CEE50
lbl_803CEE50:
	# ROM: 0x3CBE50
	.asciz "??(??)"
	.balign 4

.global lbl_803CEE58
lbl_803CEE58:
	# ROM: 0x3CBE58
	.4byte 0x803CEF50
	.4byte 0x803CEF5F
	.4byte 0x803CEF68
	.4byte 0x803CEF74
	.4byte 0x803CEF80
	.4byte 0x803CEF8B
	.4byte 0x803CEF95
	.4byte 0x803CEFA9
	.4byte 0x803CEFBA
	.4byte 0x803CEFC8
	.4byte 0x803CEFD9
	.4byte 0x803CEFE8
	.4byte 0x803CEFF8
	.4byte 0x803CF007

.global lbl_803CEE90
lbl_803CEE90:
	# ROM: 0x3CBE90
	.4byte 0x803CF016
	.4byte 0x803CF02E
	.4byte 0x803CF046
	.4byte 0x803CF060
	.4byte 0x803CF079
	.4byte 0x803CF097
	.4byte 0x803CF0B5
	.4byte 0x803CF0D5
	.4byte 0x803CF0F4
	.4byte 0x803CF107
	.4byte 0x803CF120
	.4byte 0x803CF139
	.4byte 0x803CF159

.global lbl_803CEEC4
lbl_803CEEC4:
	# ROM: 0x3CBEC4
	.asciz "FaceplateDecoration"
	.asciz "     FaceReflection"
	.asciz "        PlayerVisor"
	.asciz "                Hud"
	.asciz "         AutoMapper"
	.asciz "        PauseScreen"
	.asciz "              Total"
	.asciz "InGameGui_DGRP"
	.byte 0x49
	.asciz "ce_DGRP"
	.asciz "Phazon_DGRP"
	.asciz "Plasma_DGRP"
	.asciz "Power_DGRP"
	.byte 0x57
	.asciz "ave_DGRP"
	.byte 0x42, 0x61, 0x6C
	.asciz "lTransition_DGRP"
	.byte 0x47, 0x72, 0x61
	.asciz "vitySuit_DGRP"
	.byte 0x49, 0x63
	.asciz "e_Anim_DGRP"
	.asciz "Plasma_Anim_DGRP"
	.byte 0x50, 0x6F, 0x77
	.asciz "erSuit_DGRP"
	.asciz "Power_Anim_DGRP"
	.asciz "VariaSuit_DGRP"
	.byte 0x57
	.asciz "ave_Anim_DGRP"
	.byte 0x49, 0x6E
	.asciz "ventorySuitPower_DGRP"
	.byte 0x49, 0x6E
	.asciz "ventorySuitVaria_DGRP"
	.byte 0x49, 0x6E
	.asciz "ventorySuitGravity_DGRP"
	.asciz "InventorySuitPhazon_DGRP"
	.byte 0x49, 0x6E, 0x76
	.asciz "entorySuitFusionPower_DGRP"
	.byte 0x49
	.asciz "nventorySuitFusionVaria_DGRP"
	.byte 0x49, 0x6E, 0x76
	.asciz "entorySuitFusionGravity_DGRP"
	.byte 0x49, 0x6E, 0x76
	.asciz "entorySuitFusionPhazon_DGRP"
	.asciz "SamusBallANCS_DGRP"
	.byte 0x53
	.asciz "amusSpiderBallANCS_DGRP"
	.asciz "PauseScreenDontDump_DGRP"
	.byte 0x50, 0x61, 0x75
	.asciz "seScreenDontDump_NoARAM_DGRP"
	.byte 0x50, 0x61, 0x75
	.asciz "seScreenTokens_DGRP"
	.asciz "??(??)"
	.byte 0x42
	.asciz "aseWidget_AutoMapper"
	.byte 0x4D, 0x6F, 0x64
	.asciz "el_AutoMapper"
	.byte 0x42, 0x61
	.asciz "seWidget_Functional"
	.asciz "PreLoadIGGM_DGRP"
	.byte 0x54, 0x58, 0x54
	.asciz "R_DeathDot"
	.balign 4
	.4byte 0

.global lbl_803CF1D8
lbl_803CF1D8:
	# ROM: 0x3CC1D8
	.4byte 0x3ECCCCCD
	.4byte 0x3F19999A
	.4byte 0x3F800000
	.asciz "LCTR_WARTAIL"
	.balign 4
	.4byte 0

.global lbl_803CF1F8
lbl_803CF1F8:
	# ROM: 0x3CC1F8
	.asciz "??(??)"
	.balign 4

.global lbl_803CF200
lbl_803CF200:
	# ROM: 0x3CC200
	.asciz "CAudioStateWin"
	.balign 4

.global lbl_803CF210
lbl_803CF210:
	# ROM: 0x3CC210
	.asciz "CMDL_ScanFrameCorner"
	.byte 0x43, 0x4D, 0x44
	.asciz "L_ScanFrameCenterSide"
	.byte 0x43, 0x4D
	.asciz "DL_ScanFrameCenterTop"
	.byte 0x43, 0x4D
	.asciz "DL_ScanFrameStretchSide"
	.asciz "CMDL_ScanFrameStretchTop"
	.byte 0x43, 0x4D, 0x44
	.asciz "L_NewScanPane"
	.byte 0x43, 0x4D
	.asciz "DL_ScanShield"
	.byte 0x43, 0x4D
	.asciz "DL_ScanIconNoncritical"
	.byte 0x43
	.asciz "MDL_ScanIconCritical"
	.byte 0x54, 0x58, 0x54
	.asciz "R_XRayPalette"
	.balign 4
	.4byte 0

.global lbl_803CF2F0
lbl_803CF2F0:
	# ROM: 0x3CC2F0
	.asciz "LCTR_FLOFLOWER"
	.byte 0x46
	.asciz "ire1"
	.byte 0x46, 0x69, 0x72
	.4byte 0x65320046
	.asciz "ire3"
	.byte 0x3F, 0x3F, 0x28
	.4byte 0x3F3F2900

.global lbl_803CF318
lbl_803CF318:
	# ROM: 0x3CC318
	.asciz "??(??)"
	.balign 4

.global lbl_803CF320
lbl_803CF320:
	# ROM: 0x3CC320
	.4byte 0x803CF3A2
	.4byte 0x803CF3B1
	.4byte 0x803CF3C2
	.4byte 0x803CF3D1
	.4byte 0x803CF3E1
	.4byte 0x803CF3F1
	.4byte 0x803CF402
	.4byte 0x803CF413

.global lbl_803CF340
lbl_803CF340:
	# ROM: 0x3CC340
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000007

.global lbl_803CF360
lbl_803CF360:
	# ROM: 0x3CC360
	.asciz "GrappleGear"
	.asciz "GrapNoz1"
	.byte 0x47, 0x72, 0x61
	.asciz "pNoz2"
	.byte 0x67, 0x72
	.asciz "apLocator_SDK"
	.byte 0x67, 0x4E
	.asciz "ozLoc1_SDK"
	.byte 0x4C
	.asciz "GBeam"
	.byte 0x50, 0x6F
	.asciz "werSuit_DGRP"
	.byte 0x47, 0x72, 0x61
	.asciz "vitySuit_DGRP"
	.byte 0x56, 0x61
	.asciz "riaSuit_DGRP"
	.byte 0x50, 0x68, 0x61
	.asciz "zonSuit_DGRP"
	.byte 0x46, 0x75, 0x73
	.asciz "ionSuit_DGRP"
	.byte 0x46, 0x75, 0x73
	.asciz "ionSuitG_DGRP"
	.byte 0x46, 0x75
	.asciz "sionSuitV_DGRP"
	.byte 0x46
	.asciz "usionSuitP_DGRP"
	.asciz "??(??)"
	.byte 0x57
	.asciz "hole Body"
	.balign 4

.global lbl_803CF438
lbl_803CF438:
	# ROM: 0x3CC438
	.4byte 0x3EE66666
	.4byte 0x3F051EB8
	.4byte 0x3EB33333
	.4byte 0x3DCCCCCD
	.4byte 0x3E19999A
	.4byte 0x3EB33333
	.4byte 0x3DCCCCCD
	.4byte 0x3E19999A
	.4byte 0x3E19999A
	.4byte 0x3E19999A
	.4byte 0x3E19999A
	.4byte 0x3E19999A
	.4byte 0x3E19999A
	.4byte 0x3E19999A
	.4byte 0x00000014
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x00000006
	.4byte 0x00000005
	.4byte 0x00000004
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0x00000005
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000F
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0x00000005
	.4byte 0x00000004
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x0000000F
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x0000000F
	.4byte 0x00000006
	.4byte 0x00000005
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x0000000F
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000028
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x00000028
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0x00000005
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x0000000A
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x0000000A
	.4byte 0x00000006
	.4byte 0x00000005
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000014
	.4byte 0x00000010
	.4byte 0x00000004
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x00000028
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x00000028
	.4byte 0x00000001
	.4byte 0x0000000A
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000F
	.4byte 0x00000010
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x00000019
	.4byte 0x00000007
	.4byte 0x00000005
	.4byte 0x00000004
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x00000019
	.4byte 0x00000002
	.4byte 0x00000006
	.4byte 0x00000004
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x0000000F
	.4byte 0x00000007
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000023
	.4byte 0x00000007
	.4byte 0x0000000D
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x00000023
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x0000001E
	.4byte 0x00000010
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000A
	.4byte 0x00000010
	.4byte 0x0000000F
	.4byte 0x0000000D
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x0000000D
	.4byte 0x0000000C
	.4byte 0x0000000A
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x0000001E
	.4byte 0x00000009
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x0000001E
	.4byte 0x0000000E
	.4byte 0x0000000A
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x0000000A
	.4byte 0x00000009
	.4byte 0x0000000B
	.4byte 0x0000000D
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000001A
	.4byte 0x00000010
	.4byte 0x00000008
	.4byte 0x0000000B
	.4byte 0x0000000E
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x0000001A
	.4byte 0x00000010
	.4byte 0x0000000D
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x00000010
	.4byte 0x00000009
	.4byte 0x0000000B
	.4byte 0x0000000D
	.4byte 0x0000000A
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x00000010
	.4byte 0x0000000E
	.4byte 0x0000000D
	.4byte 0x0000000C
	.4byte 0x0000000B
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x00000008
	.4byte 0x0000000A
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0x0000000D
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x00000008
	.4byte 0x00000006
	.4byte 0x00000008
	.4byte 0x0000000B
	.4byte 0x0000000D
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000028
	.4byte 0x00000001
	.4byte 0x00000010
	.4byte 0x0000000E
	.4byte 0x0000000C
	.4byte 0x0000000A
	.4byte 0x0000000B
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x00000028
	.4byte 0x00000009
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0x0000000D
	.4byte 0x0000000B
	.4byte 0x00000007
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x0000000A
	.4byte 0x00000008
	.4byte 0x0000000A
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0x0000000D
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x0000000A
	.4byte 0x0000000F
	.4byte 0x0000000D
	.4byte 0x0000000C
	.4byte 0x0000000A
	.4byte 0x0000000C
	.4byte 0x00000009
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000028
	.4byte 0x00000007
	.4byte 0x0000000D
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x00000028
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x00000010
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000001E
	.4byte 0x00000009
	.4byte 0x0000000B
	.4byte 0x0000000D
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x0000000A
	.4byte 0x0000000D
	.4byte 0x0000000C
	.4byte 0x0000000A
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x0000000F
	.4byte 0x00000009
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x0000000F
	.4byte 0x0000000E
	.4byte 0x0000000A
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x0000001E
	.4byte 0x00000010
	.4byte 0x0000000F
	.4byte 0x0000000D
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000023
	.4byte 0x00000007
	.4byte 0x0000000D
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x00000023
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x0000001E
	.4byte 0x00000010
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803CFF70
lbl_803CFF70:
	# ROM: 0x3CCF70
	.asciz "Ambushing"
	.byte 0x3F, 0x3F
	.asciz "(??)"
	.byte 0x47, 0x65, 0x74
	.asciz "UpNow"
	.byte 0x48, 0x65
	.asciz "ad_1"
	.byte 0x52, 0x5F, 0x67
	.asciz "un_LCTR"
	.asciz "R_elbow"
	.asciz "R_wrist"
	.asciz "Swoosh_LCTR"
	.asciz "Skeleton_Root"
	.byte 0x43, 0x6F
	.asciz "llar"
	.byte 0x4E, 0x65, 0x63
	.4byte 0x6B5F3100
	.asciz "R_shoulder"
	.byte 0x4C
	.asciz "_shoulder"
	.byte 0x4C, 0x5F
	.asciz "elbow"
	.byte 0x4C, 0x5F
	.asciz "wrist"
	.byte 0x52, 0x5F
	.4byte 0x68697000
	.4byte 0x525F6B6E

.global lbl_803D0004
lbl_803D0004:
	# ROM: 0x3CD004
	.4byte 0x65650052

.global lbl_803D0008
lbl_803D0008:
	# ROM: 0x3CD008
	.asciz "_ankle"
	.byte 0x4C
	.asciz "_hip"
	.byte 0x4C, 0x5F, 0x6B
	.4byte 0x6E656500
	.asciz "L_ankle"
	.asciz "OneEye"
	.byte 0x54
	.asciz "woEyes"
	.balign 4
	.4byte 0

.global lbl_803D0038
lbl_803D0038:
	# ROM: 0x3CD038
	.asciz "??(??)"
	.byte 0x53
	.asciz "plash"
	.balign 4

.global lbl_803D0048
lbl_803D0048:
	# ROM: 0x3CD048
	.asciz "??(??)"
	.balign 4

.global lbl_803D0050
lbl_803D0050:
	# ROM: 0x3CD050
	.asciz "??(??)"
	.balign 4

.global lbl_803D0058
lbl_803D0058:
	# ROM: 0x3CD058
	.asciz "??(??)"
	.balign 4

.global lbl_803D0060
lbl_803D0060:
	# ROM: 0x3CD060
	.asciz "Whole Body"
	.balign 4
	.4byte 0

.global lbl_803D0070
lbl_803D0070:
	# ROM: 0x3CD070
	.asciz "??(??)"
	.balign 4

.global lbl_803D0078
lbl_803D0078:
	# ROM: 0x3CD078
	.asciz "Hurled"
	.byte 0x48
	.asciz "ead_1"
	.byte 0x53, 0x70
	.asciz "eedSwoosh"
	.balign 4
	.4byte 0

.global lbl_803D0098
lbl_803D0098:
	# ROM: 0x3CD098
	.4byte 0x003F3F28
	.4byte 0x3F3F2900

.global lbl_803D00A0
lbl_803D00A0:
	# ROM: 0x3CD0A0
	.asciz "Glow_1_LCTR"
	.asciz "Glow_2_LCTR"
	.asciz "Glow_3_LCTR"
	.asciz "Glow_4_LCTR"
	.asciz "Glow_5_LCTR"
	.asciz "Glow_6_LCTR"
	.asciz "Glow_7_LCTR"
	.asciz "Glow_8_LCTR"
	.asciz "Glow_9_LCTR"
	.asciz "Glow_10_LCTR"
	.byte 0x47, 0x6C, 0x6F
	.asciz "w_11_LCTR"
	.byte 0x47, 0x6C
	.asciz "ow_12_LCTR"
	.byte 0x47
	.asciz "low_13_LCTR"
	.asciz "Glow_14_LCTR"
	.byte 0x47, 0x6C, 0x6F
	.asciz "w_15_LCTR"
	.byte 0x47, 0x6C
	.asciz "ow_16_LCTR"
	.byte 0x3F
	.asciz "?(??)"
	.balign 4

.global lbl_803D0170
lbl_803D0170:
	# ROM: 0x3CD170
	.asciz "MOUTH_LCTR_SDK"
	.byte 0x53
	.asciz "AMUS_POS_LCTR_SDK"
	.byte 0x3F, 0x3F
	.asciz "(??)"
	.balign 4
	.4byte 0

.global lbl_803D01A0
lbl_803D01A0:
	# ROM: 0x3CD1A0
	.asciz "PowerBomb"
	.byte 0x3F, 0x3F
	.asciz "(??)"
	.balign 4
	.4byte 0

.global lbl_803D01B8
lbl_803D01B8:
	# ROM: 0x3CD1B8
	.4byte 0x00000014
	.4byte 0x00000001
	.4byte 0x00000015
	.4byte 0x00000016
	.4byte 0x00000017
	.4byte 0

.global lbl_803D01D0
lbl_803D01D0:
	# ROM: 0x3CD1D0
	.asciz "AllowWrap"
	.byte 0x4E, 0x6F
	.asciz "Backward"
	.byte 0x3F, 0x3F, 0x28
	.4byte 0x3F3F2900
	.4byte 0

.global lbl_803D01F0
lbl_803D01F0:
	# ROM: 0x3CD1F0
	.asciz "??(??)"
	.balign 4

.global lbl_803D01F8
lbl_803D01F8:
	# ROM: 0x3CD1F8
	.4byte 0x803D023C
	.4byte 0x3FC00000
	.4byte 0x803D0248
	.4byte 0x3F800000
	.4byte 0x803D024E
	.4byte 0x3F800000
	.4byte 0x803D0254
	.4byte 0x3F800000
	.4byte 0x803D025A
	.4byte 0x3F800000
	.4byte 0x803D0267
	.4byte 0x3F800000
	.4byte 0x803D027D
	.4byte 0x3FC00000

.global lbl_803D0230
lbl_803D0230:
	# ROM: 0x3CD230
	.asciz "Arm_2"
	.byte 0x41, 0x72
	.4byte 0x6D5F3300
	.asciz "Arm_4"
	.byte 0x41, 0x72
	.4byte 0x6D5F3500
	.asciz "Arm_6"
	.byte 0x41, 0x72
	.4byte 0x6D5F3700
	.asciz "Arm_8"
	.byte 0x41, 0x72
	.4byte 0x6D5F3900
	.asciz "Arm_10"
	.byte 0x41
	.asciz "rm_11"
	.byte 0x41, 0x72
	.asciz "m_12"
	.byte 0x41, 0x72, 0x6D
	.asciz "_end"
	.byte 0x73, 0x77, 0x6F
	.asciz "osh_LCTR"
	.byte 0x6C, 0x6F, 0x63
	.asciz "kon_target_LCTR"
	.4byte 0x45796500
	.asciz "??(??)"
	.byte 0x57
	.asciz "ARNING: Non-uniform scale (%.2f, %.2f, %.2f) applied to Spank Weed...changing scale to (%.2f, %.2f, %.2f)\n"
	.byte 0x53
	.asciz "pank Weed Collision "
	.balign 4
	.4byte 0

.global lbl_803D0330
lbl_803D0330:
	# ROM: 0x3CD330
	.asciz "Ice_LCTR"
	.byte 0x3F, 0x3F, 0x28
	.4byte 0x3F3F2900

.global lbl_803D0340
lbl_803D0340:
	# ROM: 0x3CD340
	.asciz "ACS_SamusFace"
	.byte 0x3F, 0x3F
	.asciz "(??)"
	.balign 4

.global lbl_803D0358
lbl_803D0358:
	# ROM: 0x3CD358
	.asciz "??(??)"
	.byte 0x52
	.asciz "ipper Controlled Platform"
	.byte 0x52, 0x69
	.asciz "pperGrapplePoint"
	.balign 4

.global lbl_803D0390
lbl_803D0390:
	# ROM: 0x3CD390
	.asciz "??(??)"
	.balign 4

.global lbl_803D0398
lbl_803D0398:
	# ROM: 0x3CD398
	.asciz "Beacon_LCTR"
	.asciz "R_GUN_TOP_LCTR"
	.byte 0x4C
	.asciz "_GUN_TOP_LCTR"
	.byte 0x53, 0x68
	.asciz "ield_LCTR"
	.byte 0x44, 0x65
	.4byte 0x6164003F
	.asciz "?(??)"
	.byte 0x57, 0x68
	.asciz "ole Body"
	.byte 0x53, 0x6B, 0x65
	.asciz "leton_Root"
	.byte 0x44
	.asciz "roneVisorFlare"
	.byte 0x4C
	.asciz "aserLight"
	.byte 0x4C, 0x61
	.asciz "serScanner"
	.byte 0x44
	.asciz "roneLaser"
	.balign 4

.global lbl_803D0428
lbl_803D0428:
	# ROM: 0x3CD428
	.asciz "??(??)"
	.balign 4

.global lbl_803D0430
lbl_803D0430:
	# ROM: 0x3CD430
	.asciz "imagepane_pane"
	.balign 4

.global lbl_803D0440
lbl_803D0440:
	# ROM: 0x3CD440
	.4byte 0x803D0490
	.4byte 0x803D0492
	.4byte 0x803D0494
	.4byte 0x803D0496
	.4byte 0x803D0498
	.4byte 0x803D049B
	.4byte 0x803D049E
	.4byte 0x803D04A1
	.4byte 0x803D04A5
	.4byte 0x803D04A9
	.4byte 0x803D04AE
	.4byte 0x803D04B0
	.4byte 0x803D04B2
	.4byte 0x803D04B4
	.4byte 0x803D04B6
	.4byte 0x803D04B9
	.4byte 0x803D04BC
	.4byte 0x803D04BF
	.4byte 0x803D04C3
	.4byte 0x803D04C7

.global lbl_803D0490
lbl_803D0490:
	# ROM: 0x3CD490
	.4byte 0x30003100
	.4byte 0x32003300
	.4byte 0x30310031
	.4byte 0x32003233
	.4byte 0x00303132
	.4byte 0x00313233
	.4byte 0x00303132
	.4byte 0x33003400
	.4byte 0x35003600
	.4byte 0x37003435
	.4byte 0x00353600
	.4byte 0x36370034
	.4byte 0x35360035
	.4byte 0x36370034
	.4byte 0x35363700
	.asciz "??(??)"
	.byte 0x25
	.4byte 0x73257300

.global lbl_803D04D8
lbl_803D04D8:
	# ROM: 0x3CD4D8
	.4byte 0x803D0550
	.4byte 0x803D0557
	.4byte 0x803D055F
	.4byte 0x803D0567
	.4byte 0x803D056D
	.4byte 0x803D0574
	.4byte 0x803D057F
	.4byte 0x803D058D
	.4byte 0x803D0595
	.4byte 0x803D059C
	.4byte 0x803D05A4
	.4byte 0x803D05AC
	.4byte 0x803D05B2
	.4byte 0x803D05B9
	.4byte 0x803D05C4
	.4byte 0x803D05D2
	.4byte 0x803D05DA

.global lbl_803D051C
lbl_803D051C:
	# ROM: 0x3CD51C
	.4byte 0x42B40000
	.4byte 0x433E0000
	.4byte 0x43160000
	.4byte 0x42B40000
	.4byte 0x42C80000

.global lbl_803D0530
lbl_803D0530:
	# ROM: 0x3CD530
	.4byte 0x42B40000
	.4byte 0x43070000
	.4byte 0x42340000
	.4byte 0x43340000
	.4byte 0
	.4byte 0x43610000
	.4byte 0x439D8000
	.4byte 0x43870000

.global lbl_803D0550
lbl_803D0550:
	# ROM: 0x3CD550
	.asciz "Head_1"
	.byte 0x4C
	.asciz "_ankle"
	.byte 0x4C
	.asciz "_elbow"
	.byte 0x4C
	.asciz "_hip"
	.byte 0x4C, 0x5F, 0x6B
	.4byte 0x6E656500
	.asciz "L_shoulder"
	.byte 0x4C
	.asciz "_varias2_SDK"
	.byte 0x4C, 0x5F, 0x77
	.asciz "rist"
	.byte 0x50, 0x65, 0x6C
	.4byte 0x76697300
	.asciz "R_ankle"
	.asciz "R_elbow"
	.asciz "R_hip"
	.byte 0x52, 0x5F
	.asciz "knee"
	.byte 0x52, 0x5F, 0x73
	.asciz "houlder"
	.asciz "R_varias2_SDK"
	.byte 0x53, 0x70
	.asciz "ine_1"
	.byte 0x53, 0x70
	.asciz "ine_2"
	.byte 0x6C, 0x6F
	.asciz "ckon_target_LCTR"
	.byte 0x53, 0x6B, 0x65
	.asciz "leton_Root"
	.byte 0x3F
	.asciz "?(??)"
	.byte 0x53, 0x70
	.asciz "awned Metroid"
	.balign 4
	.4byte 0

.global lbl_803D0620
lbl_803D0620:
	# ROM: 0x3CD620
	.asciz "TXTR_DataDot"
	.balign 4

.global lbl_803D0630
lbl_803D0630:
	# ROM: 0x3CD630
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000B
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D0650
lbl_803D0650:
	# ROM: 0x3CD650
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000B
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D0668
lbl_803D0668:
	# ROM: 0x3CD668
	.asciz "??(??)"
	.byte 0x50
	.asciz "lasmaElectricFx"
	.asciz "PlasmaVisorFx"
	.balign 4

.global lbl_803D0690
lbl_803D0690:
	# ROM: 0x3CD690
	.asciz "CCollidableSphere"
	.byte 0x43, 0x43
	.asciz "ollidableOBBTreeGroup"
	.byte 0x43, 0x43
	.asciz "ollidableAABox"
	.balign 4
	.4byte 0

.global lbl_803D06D0
lbl_803D06D0:
	# ROM: 0x3CD6D0
	.4byte 0x803D07E4
	.4byte 0x803D07EB
	.4byte 0x40800000
	.4byte 0x3F800000
	.4byte 0x40800000
	.4byte 0x803D07EB
	.4byte 0x803D07F3
	.4byte 0x40000000
	.4byte 0x3F800000
	.4byte 0x40000000
	.4byte 0x803D07F3
	.4byte 0x803D07FA
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x803D07FA
	.4byte 0x803D0801
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x803D0801
	.4byte 0x803D0808
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x803D080F
	.4byte 0x803D0820
	.4byte 0x3F000000
	.4byte 0x3F000000
	.4byte 0x3F000000
	.4byte 0x803D0820
	.4byte 0x803D082E
	.4byte 0x3F000000
	.4byte 0x3F000000
	.4byte 0x3F000000
	.4byte 0x803D083C
	.4byte 0x803D084D
	.4byte 0x3F000000
	.4byte 0x3F000000
	.4byte 0x3F000000
	.4byte 0x803D084D
	.4byte 0x803D085B
	.4byte 0x3F000000
	.4byte 0x3F000000
	.4byte 0x3F000000
	.4byte 0x803D0869
	.4byte 0x803D0879
	.4byte 0x3F000000
	.4byte 0x3F000000
	.4byte 0x3F000000
	.4byte 0x803D0879
	.4byte 0x803D0886
	.4byte 0x3F000000
	.4byte 0x3F000000
	.4byte 0x3F000000
	.4byte 0x803D0893
	.4byte 0x803D08A3
	.4byte 0x3F000000
	.4byte 0x3F000000
	.4byte 0x3F000000
	.4byte 0x803D08A3
	.4byte 0x803D08B0
	.4byte 0x3F000000
	.4byte 0x3F000000
	.4byte 0x3F000000

.global lbl_803D07D4
lbl_803D07D4:
	# ROM: 0x3CD7D4
	.4byte 0x803D08BD
	.4byte 0x3FC00000
	.4byte 0x803D08C4
	.4byte 0x3FC00000

.global lbl_803D07E4
lbl_803D07E4:
	# ROM: 0x3CD7E4
	.asciz "Pelvis"
	.byte 0x53
	.asciz "pine_3"
	.byte 0x54
	.asciz "ail_1"
	.byte 0x54, 0x61
	.asciz "il_2"
	.byte 0x54, 0x61, 0x69
	.4byte 0x6C5F3300
	.asciz "Tail_4"
	.byte 0x52
	.asciz "_shoulder_front"
	.asciz "R_elbow_front"
	.byte 0x52, 0x5F
	.asciz "wrist_front"
	.asciz "L_shoulder_front"
	.byte 0x4C, 0x5F, 0x65
	.asciz "lbow_front"
	.byte 0x4C
	.asciz "_wrist_front"
	.byte 0x52, 0x5F, 0x73
	.asciz "houlder_back"
	.byte 0x52, 0x5F, 0x65
	.asciz "lbow_back"
	.byte 0x52, 0x5F
	.asciz "wrist_back"
	.byte 0x4C
	.asciz "_shoulder_back"
	.byte 0x4C
	.asciz "_elbow_back"
	.asciz "L_wrist_back"
	.byte 0x48, 0x65, 0x61
	.4byte 0x645F3100
	.asciz "Tail_5"
	.byte 0x3F
	.asciz "?(??)"
	.byte 0x49, 0x6E
	.asciz "troBoss_Beam"
	.byte 0x49, 0x6E, 0x74
	.asciz "roBoss_Beam_Stage2"
	.balign 4

.global lbl_803D08F8
lbl_803D08F8:
	# ROM: 0x3CD8F8
	.asciz "PhazonVeins"
	.asciz "PhazonVeins_2"
	.byte 0x70, 0x68
	.asciz "azonScale_LCTR_SDK"
	.byte 0x3F
	.asciz "?(??)"
	.byte 0x50, 0x68
	.asciz "azon2nd_1"
	.balign 4
	.4byte 0

.global lbl_803D0940
lbl_803D0940:
	# ROM: 0x3CD940
	.asciz "??(??)"
	.balign 4

.global lbl_803D0948
lbl_803D0948:
	# ROM: 0x3CD948
	.asciz "basewidget_energystuff"
	.balign 4
	.asciz "textpane_energydigits"
	.balign 4
	.asciz "meter_energytanks"
	.balign 4
	.asciz "textpane_energywarning"
	.balign 4
	.asciz "energybart01_energybar"
	.balign 4
	.asciz "basewidget_energydeco0"
	.balign 4

.global lbl_803D09D4
lbl_803D09D4:
	# ROM: 0x3CD9D4
	.asciz "basewidget_bossenergystuff"
	.balign 4

.global lbl_803D09F0
lbl_803D09F0:
	# ROM: 0x3CD9F0
	.asciz "energybart01_bossbar"
	.balign 4
	.4byte 0x8018FFA0  ;# ptr
	.4byte 0x8018FFA0  ;# ptr
	.4byte 0x8018FE7C  ;# ptr
	.4byte 0x8018FF18  ;# ptr
	.4byte 0x8018FF44  ;# ptr
	.4byte 0x3E4CCCCD
	.4byte 0x3E4CCCCD
	.4byte 0x3DCCCCCD
	.4byte 0x3E4CCCCD
	.4byte 0x3F800000

.global lbl_803D0A30
lbl_803D0A30:
	# ROM: 0x3CDA30
	.asciz "textpane_boss"
	.byte 0x25, 0x30
	.4byte 0x32640000
	.4byte 0

.global lbl_803D0A48
lbl_803D0A48:
	# ROM: 0x3CDA48
	.asciz "basewidget_freelook"
	.asciz "model_freelookleft"
	.balign 4
	.asciz "model_freelookright"
	.asciz "basewidget_freelookleft"
	.asciz "model_shieldleft"
	.balign 4
	.asciz "model_freetickaleft"
	.asciz "model_freetickbleft"
	.asciz "textpane_freelookleftdigits"
	.asciz "basewidget_freelookleftdeco0"
	.balign 4
	.asciz "basewidget_freelookright"
	.balign 4
	.asciz "model_shieldright"
	.balign 4
	.asciz "model_freetickaright"
	.balign 4
	.asciz "model_freetickbright"
	.balign 4
	.asciz "textpane_freelookrightdigits"
	.balign 4
	.asciz "basewidget_freelookrightdeco0"
	.balign 4

.global lbl_803D0BB4
lbl_803D0BB4:
	# ROM: 0x3CDBB4
	.asciz "basewidget_outlinesb"
	.byte 0x6D, 0x6F, 0x64
	.asciz "el_shield"
	.balign 4

.global lbl_803D0BD8
lbl_803D0BD8:
	# ROM: 0x3CDBD8
	.asciz "BaseWidget_Pivot"
	.balign 4
	.asciz "BaseWidget_Helmet"
	.balign 4
	.asciz "BaseWidget_Glow"
	.asciz "BaseWidget_HelmetLight"
	.balign 4

.global lbl_803D0C28
lbl_803D0C28:
	# ROM: 0x3CDC28
	.asciz "basewidget_missileicon"
	.balign 4
	.asciz "textpane_missiledigits"
	.balign 4
	.asciz "energybart01_missilebar"
	.asciz "textpane_missilewarning"
	.asciz "model_missilearrowup"
	.balign 4
	.asciz "model_missilearrowdown"
	.balign 4
	.asciz "basewidget_missileicon"
	.balign 4
	.asciz "basewidget_missilestuff"
	.asciz "meter_mistop"
	.balign 4
	.asciz "meter_misbot"
	.balign 4

.global lbl_803D0D08
lbl_803D0D08:
	# ROM: 0x3CDD08
	.4byte 0x40C1999A
	.4byte 0
	.4byte 0
	.4byte 0x41066666
	.4byte 0
	.4byte 0x80191EB0  ;# ptr
	.4byte 0
	.4byte 0x80191D98  ;# ptr
	.4byte 0x80191E34  ;# ptr
	.4byte 0

.global lbl_803D0D30
lbl_803D0D30:
	# ROM: 0x3CDD30
	.4byte 0x25336400
	.4byte 0

.global lbl_803D0D38
lbl_803D0D38:
	# ROM: 0x3CDD38
	.asciz "BaseWidget_RadarStuff"
	.balign 4

.global lbl_803D0D50
lbl_803D0D50:
	# ROM: 0x3CDD50
	.asciz "TXTR_RadarPaint"

.global lbl_803D0D60
lbl_803D0D60:
	# ROM: 0x3CDD60
	.asciz "basewidget_threatstuff"
	.balign 4
	.asciz "basewidget_threaticon"
	.balign 4
	.asciz "model_threatarrowup"
	.asciz "model_threatarrowdown"
	.balign 4
	.asciz "textpane_threatwarning"
	.balign 4
	.asciz "energybart01_threatbar"
	.balign 4
	.asciz "textpane_threatdigits"
	.balign 4

.global lbl_803D0E04
lbl_803D0E04:
	# ROM: 0x3CDE04
	.4byte 0x40C1999A
	.4byte 0
	.4byte 0
	.4byte 0x41066666
	.4byte 0
	.4byte 0x80193788  ;# ptr
	.4byte 0
	.4byte 0x8019367C  ;# ptr
	.4byte 0x80193710  ;# ptr
	.4byte 0

.global lbl_803D0E2C
lbl_803D0E2C:
	# ROM: 0x3CDE2C
	.asciz "%01.1f"
	.balign 4
	.4byte 0

.global lbl_803D0E38
lbl_803D0E38:
	# ROM: 0x3CDE38
	.4byte 0
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000007

.global lbl_803D0E58
lbl_803D0E58:
	# ROM: 0x3CDE58
	.asciz "BaseWidget_VisorMenu"
	.byte 0x42, 0x61, 0x73
	.asciz "eWidget_BeamMenu"
	.byte 0x54, 0x65, 0x78
	.asciz "tPane_VisorMenu"
	.asciz "TextPane_BeamMenu"
	.byte 0x62, 0x61
	.asciz "sewidget_visormenutitle"
	.asciz "basewidget_beammenutitle"
	.byte 0x6D, 0x6F, 0x64
	.asciz "el_visor"
	.byte 0x6D, 0x6F, 0x64
	.asciz "el_beam"
	.4byte 0x6C6F7A00
	.asciz "icon"
	.byte 0x67, 0x68, 0x6F
	.4byte 0x73740025
	.4byte 0x73257300
	.asciz "%s%s%c"
	.balign 4
	.4byte 0

.global lbl_803D0F10
lbl_803D0F10:
	# ROM: 0x3CDF10
	.asciz "basewidget_deco"
	.asciz "basewidget_tickdeco0"
	.balign 4

.global lbl_803D0F38
lbl_803D0F38:
	# ROM: 0x3CDF38
	.asciz "basewidget_pivot"
	.balign 4
	.asciz "basewidget_frame"
	.balign 4

.global lbl_803D0F60
lbl_803D0F60:
	# ROM: 0x3CDF60
	.asciz "basewidget_seeker"
	.balign 4
	.asciz "basewidget_leftside"
	.asciz "basewidget_leftguages"
	.balign 4
	.asciz "basewidget_databankl"
	.balign 4
	.asciz "basewidget_rightside"
	.balign 4
	.asciz "basewidget_rightguages"
	.balign 4
	.asciz "basewidget_databankr"
	.balign 4
	.asciz "basewidget_leftsidedeco"
	.asciz "basewidget_rightsidedeco"
	.balign 4
	.asciz "textpane_scanning"
	.balign 4
	.asciz "energybart01_scanbar"
	.balign 4
	.asciz "basewidget_scanguage"
	.balign 4
	.asciz "basewidget_textgroup"
	.balign 4
	.asciz "textpane_message"
	.balign 4
	.asciz "textpane_scrollmessage"
	.balign 4
	.asciz "model_xmark"
	.asciz "model_abutton"
	.balign 4
	.asciz "model_dash"
	.balign 4

.global lbl_803D10E4
lbl_803D10E4:
	# ROM: 0x3CE0E4
	.asciz "basewidget_reticle"
	.byte 0x6D
	.asciz "odel_retflash"
	.byte 0x62, 0x61
	.asciz "sewidget_lock"
	.byte 0x62, 0x61
	.asciz "sewidget_lockon"
	.asciz "basewidget_deco"
	.asciz "basewidget_oultlinesa"
	.byte 0x6D, 0x6F
	.asciz "del_threaticon"
	.byte 0x6D
	.asciz "odel_missileicon"
	.byte 0x46, 0x52, 0x4D
	.asciz "E_ScanHudFlat"
	.byte 0x62, 0x61
	.asciz "sewidget_rotate"
	.asciz "basewidget_energydeco"
	.byte 0x6D, 0x6F
	.asciz "del_frame"
	.byte 0x6D, 0x6F
	.asciz "del_frame1"
	.byte 0x6D
	.asciz "odel_frame2"
	.asciz "model_frame3"
	.byte 0x6D, 0x6F, 0x64
	.asciz "el_misslieslider"
	.byte 0x6D, 0x6F, 0x64
	.asciz "el_threatslider"
	.asciz "??(??)"
	.balign 4
	.4byte 0

.global lbl_803D1210
lbl_803D1210:
	# ROM: 0x3CE210
	.asciz "??(??)"
	.byte 0x46
	.asciz "lameThrower_Light"
	.balign 4
	.4byte 0

.global lbl_803D1230
lbl_803D1230:
	# ROM: 0x3CE230
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803D12F8
lbl_803D12F8:
	# ROM: 0x3CE2F8
	.asciz "??(??)"
	.balign 4

.global lbl_803D1300
lbl_803D1300:
	# ROM: 0x3CE300
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803D1360
lbl_803D1360:
	# ROM: 0x3CE360
	.4byte 0x803D13D8
	.4byte 0x803D13DE
	.4byte 0x3ECCCCCD
	.4byte 0x3F400000
	.4byte 0x803D13E5
	.4byte 0x803D13ED
	.4byte 0x3ECCCCCD
	.4byte 0x3F400000
	.4byte 0x803D13F5
	.4byte 0x803D13FB
	.4byte 0x3ECCCCCD
	.4byte 0x3F400000
	.4byte 0x803D1402
	.4byte 0x803D140A
	.4byte 0x3ECCCCCD
	.4byte 0x3F400000
	.4byte 0x803D1412
	.4byte 0x3F0CCCCD
	.4byte 0x803D141F
	.4byte 0x3F8CCCCD
	.4byte 0x803D1426
	.4byte 0x3F8CCCCD
	.4byte 0x803D1434
	.4byte 0x3F333333
	.4byte 0x803D143E
	.4byte 0x3F99999A
	.4byte 0x803D144E
	.4byte 0x3F19999A
	.4byte 0x803D1459
	.4byte 0x3F19999A

.global lbl_803D13D8
lbl_803D13D8:
	# ROM: 0x3CE3D8
	.asciz "L_hip"
	.byte 0x4C, 0x5F
	.asciz "knee"
	.byte 0x4C, 0x5F, 0x61
	.asciz "nkle"
	.byte 0x4C, 0x5F, 0x54
	.asciz "oe_3"
	.byte 0x52, 0x5F, 0x68
	.4byte 0x69700052
	.asciz "_knee"
	.byte 0x52, 0x5F
	.asciz "ankle"
	.byte 0x52, 0x5F
	.asciz "Toe_3"
	.byte 0x4A, 0x61
	.asciz "w_end_LCTR"
	.byte 0x50
	.asciz "elvis"
	.byte 0x4C, 0x43
	.asciz "TR_SHEMOUTH"
	.asciz "butt_LCTR"
	.byte 0x49, 0x63
	.asciz "e_Shards_LCTR"
	.byte 0x47, 0x69
	.asciz "llL_LCTR"
	.byte 0x47, 0x69, 0x6C
	.asciz "lR_LCTR"
	.asciz "??(??)"
	.byte 0x49
	.asciz "ceSheegoth_Flame"
	.byte 0x48, 0x65, 0x61
	.4byte 0x645F3100
	.asciz "FlameThrower"
	.balign 4
	.4byte 0

.global lbl_803D1498
lbl_803D1498:
	# ROM: 0x3CE498
	.asciz "??(??)"
	.balign 4

.global lbl_803D14A0
lbl_803D14A0:
	# ROM: 0x3CE4A0
	.asciz "CollisionActor"
	.byte 0x3F
	.asciz "?(??)"
	.balign 4

.global lbl_803D14B8
lbl_803D14B8:
	# ROM: 0x3CE4B8
	.asciz "GUN_LCTR"
	.byte 0x3F, 0x3F, 0x28
	.4byte 0x3F3F2900
	.asciz "PhazonIndirectTexture"
	.balign 4

.global lbl_803D14E0
lbl_803D14E0:
	# ROM: 0x3CE4E0
	.4byte 0x803D1590
	.4byte 0x803D1598
	.4byte 0x3F19999A
	.4byte 0x3F800000
	.4byte 0x803D1598
	.4byte 0x803D15A0
	.4byte 0x3F19999A
	.4byte 0x3F800000
	.4byte 0x803D15A0
	.4byte 0x803D15AC
	.4byte 0x3F19999A
	.4byte 0x3F800000
	.4byte 0x803D15BC
	.4byte 0x803D15C4
	.4byte 0x3F19999A
	.4byte 0x3F800000
	.4byte 0x803D15C4
	.4byte 0x803D15CC
	.4byte 0x3F19999A
	.4byte 0x3F800000
	.4byte 0x803D15CC
	.4byte 0x803D15D8
	.4byte 0x3F19999A
	.4byte 0x3F800000
	.4byte 0x803D15E8
	.4byte 0x3FC00000
	.4byte 0x803D15EF
	.4byte 0x3FC00000
	.4byte 0x803D15F7
	.4byte 0x3FC00000
	.4byte 0x803D15FF
	.4byte 0x3FC00000
	.4byte 0x803D1607
	.4byte 0x3FC00000

.global lbl_803D1568
lbl_803D1568:
	# ROM: 0x3CE568
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000001
	.4byte 0
	.4byte 0xFFFFFFFF

.global lbl_803D157C
lbl_803D157C:
	# ROM: 0x3CE57C
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0xFFFFFFFF

.global lbl_803D1590
lbl_803D1590:
	# ROM: 0x3CE590
	.asciz "L_elbow"
	.asciz "L_blade"
	.asciz "L_CLAW_LCTR"
	.asciz "L_CLAW_END_LCTR"
	.asciz "R_elbow"
	.asciz "R_blade"
	.asciz "R_CLAW_LCTR"
	.asciz "R_CLAW_END_LCTR"
	.asciz "Head_1"
	.byte 0x53
	.asciz "pine_2"
	.byte 0x53
	.asciz "pine_4"
	.byte 0x53
	.asciz "pine_6"
	.byte 0x43
	.asciz "ollar"
	.byte 0x3F, 0x3F
	.asciz "(??)"
	.byte 0x44, 0x65, 0x61
	.4byte 0x6400466C
	.asciz "aahgra Renderer"
	.4byte 0

.global lbl_803D1630
lbl_803D1630:
	# ROM: 0x3CE630
	.asciz "??(??)"
	.balign 4

.global lbl_803D1638
lbl_803D1638:
	# ROM: 0x3CE638
	.asciz "??(??)"
	.balign 4

.global lbl_803D1640
lbl_803D1640:
	# ROM: 0x3CE640
	.asciz "??(??)"
	.byte 0x49
	.asciz "cePLight_"
	.balign 4
	.4byte 0

.global lbl_803D1658
lbl_803D1658:
	# ROM: 0x3CE658
	.4byte 0x0712072D
	.4byte 0x07370732
	.4byte 0x07120000

.global lbl_803D1664
lbl_803D1664:
	# ROM: 0x3CE664
	.4byte 0x803D1678
	.4byte 0x803D1685
	.4byte 0x803D168E
	.4byte 0x803D1699
	.4byte 0x803D1678

.global lbl_803D1678
lbl_803D1678:
	# ROM: 0x3CE678
	.asciz "SuperMissile"
	.byte 0x49, 0x63, 0x65
	.asciz "Combo"
	.byte 0x57, 0x61
	.asciz "veBuster"
	.byte 0x46, 0x6C, 0x61
	.asciz "meThrower"
	.byte 0x3F, 0x3F
	.asciz "(??)"
	.byte 0x4E, 0x46, 0x54
	.asciz "SecondarySparks"
	.asciz "NFTSecondaryFire"
	.byte 0x4E, 0x46, 0x54
	.asciz "SecondarySmoke"
	.byte 0x4E
	.asciz "FTSwooshFire"
	.byte 0x4E, 0x46, 0x54
	.asciz "SwooshCenter"
	.byte 0x4E, 0x46, 0x54
	.asciz "MainSmoke"
	.byte 0x4E, 0x46
	.asciz "TMainFire"
	.byte 0x50, 0x6C
	.asciz "ayer_FlameThrower"
	.byte 0x4D, 0x69
	.asciz "ssile"
	.byte 0x46, 0x6C
	.asciz "ameMuzzle"
	.byte 0x42, 0x75
	.asciz "sterMuzzle"
	.balign 4

.global lbl_803D1750
lbl_803D1750:
	# ROM: 0x3CE750
	.4byte 0x803D1828
	.4byte 0x803D1834
	.4byte 0x803D1840
	.4byte 0x803D184A
	.4byte 0x803D1828
	.4byte 0x803D1854
	.4byte 0x803D185F
	.4byte 0x803D186C
	.4byte 0x803D1879
	.4byte 0x803D1886

.global lbl_803D1778
lbl_803D1778:
	# ROM: 0x3CE778
	.4byte 0x803D1892
	.4byte 0x803D189E
	.4byte 0x803D18A7
	.4byte 0x803D189E
	.4byte 0x803D18B1
	.4byte 0x803D189E
	.4byte 0x803D18BC
	.4byte 0x803D189E
	.4byte 0x803D18A7
	.4byte 0x803D189E

.global lbl_803D17A0
lbl_803D17A0:
	# ROM: 0x3CE7A0
	.4byte 0x803D18C9
	.4byte 0x803D18D3
	.4byte 0x803D18DB
	.4byte 0x803D18E4
	.4byte 0x803D18EF

.global lbl_803D17B4
lbl_803D17B4:
	# ROM: 0x3CE7B4
	.4byte 0x803D18FA
	.4byte 0x803D190A
	.4byte 0x803D1918
	.4byte 0x803D1927
	.4byte 0x803D1938

.global lbl_803D17C8
lbl_803D17C8:
	# ROM: 0x3CE7C8
	.4byte 0x803D1949
	.4byte 0x803D1954
	.4byte 0x803D195D
	.4byte 0x803D1967
	.4byte 0x803D1973

.global lbl_803D17DC
lbl_803D17DC:
	# ROM: 0x3CE7DC
	.4byte 0x803D197F
	.4byte 0x803D1988
	.4byte 0x803D1993
	.4byte 0x803D199C
	.4byte 0x803D19A6
	.4byte 0x803D19B0
	.4byte 0x803D19BB
	.4byte 0x803D19C6

.global lbl_803D17FC
lbl_803D17FC:
	# ROM: 0x3CE7FC
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000007
	.4byte 0x00000008
	.4byte 0x00000009
	.4byte 0x0000000A

.global lbl_803D1828
lbl_803D1828:
	# ROM: 0x3CE828
	.asciz "PowerMuzzle"
	.asciz "PowerCharge"
	.asciz "IceMuzzle"
	.byte 0x49, 0x63
	.asciz "eCharge"
	.asciz "WaveCharge"
	.byte 0x50
	.asciz "lasmaMuzzle"
	.asciz "PlasmaCharge"
	.byte 0x50, 0x68, 0x61
	.asciz "zonMuzzle"
	.byte 0x45, 0x6D
	.asciz "ptyMuzzle"
	.byte 0x70, 0x6F
	.asciz "werFrozen"
	.byte 0x49, 0x63
	.asciz "e2nd_2"
	.byte 0x69
	.asciz "ceFrozen"
	.byte 0x77, 0x61, 0x76
	.asciz "eFrozen"
	.asciz "plasmaFrozen"
	.byte 0x50, 0x6F, 0x77
	.asciz "erXfer"
	.byte 0x49
	.asciz "ceXfer"
	.byte 0x57
	.asciz "aveXfer"
	.asciz "PlasmaXfer"
	.byte 0x50
	.asciz "hazonXfer"
	.byte 0x50, 0x6F
	.asciz "wer_Anim_DGRP"
	.byte 0x49, 0x63
	.asciz "e_Anim_DGRP"
	.asciz "Wave_Anim_DGRP"
	.byte 0x50
	.asciz "lasma_Anim_DGRP"
	.asciz "Phazon_Anim_DGRP"
	.byte 0x50, 0x6F, 0x77
	.asciz "er_DGRP"
	.asciz "Ice_DGRP"
	.byte 0x57, 0x61, 0x76
	.asciz "e_DGRP"
	.byte 0x50
	.asciz "lasma_DGRP"
	.byte 0x50
	.asciz "hazon_DGRP"
	.byte 0x50
	.asciz "owerArm"
	.asciz "GravityArm"
	.byte 0x56
	.asciz "ariaArm"
	.asciz "PhazonArm"
	.byte 0x46, 0x75
	.asciz "sionArm"
	.asciz "FusionArmG"
	.byte 0x46
	.asciz "usionArmV"
	.byte 0x46, 0x75
	.asciz "sionArmP"
	.byte 0x4C, 0x42, 0x45
	.4byte 0x414D0065
	.asciz "lbow"
	.byte 0x3F, 0x3F, 0x28
	.4byte 0x3F3F2900
	.asciz "Whole Body"
	.balign 4

.global lbl_803D19F0
lbl_803D19F0:
	# ROM: 0x3CE9F0
	.4byte 0
	.4byte 0

.global lbl_803D19F8
lbl_803D19F8:
	# ROM: 0x3CE9F8
	.4byte 0xFFFFFFFF
	.4byte 0xFF00FFFF
	.4byte 0xFF0000FF
	.4byte 0x0000FFFF

.global lbl_803D1A08
lbl_803D1A08:
	# ROM: 0x3CEA08
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000B
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D1A20
lbl_803D1A20:
	# ROM: 0x3CEA20
	.asciz "WaveBuster_Light"
	.byte 0x57, 0x61, 0x76
	.asciz "eBuster"
	.asciz "BusterSwoosh1"
	.byte 0x42, 0x75
	.asciz "sterSwoosh2"
	.asciz "BusterSparks"
	.byte 0x42, 0x75, 0x73
	.asciz "terLight"
	.byte 0x3F, 0x3F, 0x28
	.4byte 0x3F3F2900

.global lbl_803D1A78
lbl_803D1A78:
	# ROM: 0x3CEA78
	.asciz "??(??)"
	.balign 4

.global lbl_803D1A80
lbl_803D1A80:
	# ROM: 0x3CEA80
	.asciz "Pelvis"
	.byte 0x4C
	.asciz "_Claw_1"
	.asciz "R_Claw_1"
	.byte 0x3F, 0x3F, 0x28
	.4byte 0x3F3F2900

.global lbl_803D1AA0
lbl_803D1AA0:
	# ROM: 0x3CEAA0
	.asciz "??(??)"
	.balign 4

.global lbl_803D1AA8
lbl_803D1AA8:
	# ROM: 0x3CEAA8
	.asciz "Whole Body"
	.balign 4
	.4byte 0

.global lbl_803D1AB8
lbl_803D1AB8:
	# ROM: 0x3CEAB8
	.asciz "Whole Body"
	.balign 4
	.4byte 0

.global lbl_803D1AC8
lbl_803D1AC8:
	# ROM: 0x3CEAC8
	.asciz "Whole Body"
	.balign 4
	.4byte 0

.global lbl_803D1AD8
lbl_803D1AD8:
	# ROM: 0x3CEAD8
	.asciz "basewidget_bombstuff"
	.balign 4
	.asciz "textpane_bombdigits"
	.asciz "group_bombcount"
	.asciz "model_bomb_text"
	.asciz "model_bombicon"
	.balign 4
	.asciz "basewidget_energydeco"
	.balign 4
	.asciz "basewidget_bombdeco"

.global lbl_803D1B60
lbl_803D1B60:
	# ROM: 0x3CEB60
	.asciz "%02d"
	.byte 0x25, 0x73, 0x25
	.4byte 0x64000000
	.4byte 0

.global lbl_803D1B70
lbl_803D1B70:
	# ROM: 0x3CEB70
	.asciz "??(??)"
	.byte 0x57
	.asciz "hole Body"
	.balign 4
	.4byte 0

.global lbl_803D1B88
lbl_803D1B88:
	# ROM: 0x3CEB88
	.asciz "??(??)"
	.balign 4

.global lbl_803D1B90
lbl_803D1B90:
	# ROM: 0x3CEB90
	.asciz "??(??)"
	.byte 0x56
	.asciz "isorGoo"

.global lbl_803D1BA0
lbl_803D1BA0:
	# ROM: 0x3CEBA0
	.4byte 0x803D1CBF
	.4byte 0x803D1CC6
	.4byte 0x803D1CD0
	.4byte 0x803D1CD8
	.4byte 0x803D1CDE
	.4byte 0x803D1CF3
	.4byte 0x803D1CB8

.global lbl_803D1BBC
lbl_803D1BBC:
	# ROM: 0x3CEBBC
	.4byte 0x803D1CBF
	.4byte 0x803D1D04
	.4byte 0x803D1D1B
	.4byte 0x803D1D32
	.4byte 0x803D1D48
	.4byte 0x803D1D63
	.4byte 0x803D1D7E

.global lbl_803D1BD8
lbl_803D1BD8:
	# ROM: 0x3CEBD8
	.4byte 0x803D1D92
	.4byte 0
	.4byte 0x41300000
	.4byte 0
	.4byte 0x803D1D92
	.4byte 0
	.4byte 0x41100000
	.4byte 0
	.4byte 0x803D1D92
	.4byte 0
	.4byte 0x40E00000
	.4byte 0
	.4byte 0x803D1D92
	.4byte 0xC0400000
	.4byte 0x41100000
	.4byte 0
	.4byte 0x803D1D92
	.4byte 0x40800000
	.4byte 0x40E00000
	.4byte 0
	.4byte 0x803D1D92
	.4byte 0xC0800000
	.4byte 0x41000000
	.4byte 0
	.4byte 0x803D1CBF
	.4byte 0x3F800000
	.4byte 0x803D1D04
	.4byte 0x3FC00000
	.4byte 0x803D1D1B
	.4byte 0x3FC00000
	.4byte 0x803D1D32
	.4byte 0x3F800000
	.4byte 0x803D1D48
	.4byte 0x40200000
	.4byte 0x803D1D63
	.4byte 0x3FC00000
	.4byte 0x803D1D7E
	.4byte 0x3FC00000
	.4byte 0x803D1D93
	.4byte 0x3F400000
	.4byte 0x803D1DAD
	.4byte 0x3F400000
	.4byte 0x803D1DC7
	.4byte 0x3F400000
	.4byte 0x803D1DDC
	.4byte 0x40100000
	.4byte 0x803D1DF2
	.4byte 0x40000000
	.4byte 0x803D1E08
	.4byte 0x40400000
	.4byte 0x40400000
	.4byte 0x3F800000
	.4byte 0x803D1E1E
	.4byte 0x40400000
	.4byte 0x40000000
	.4byte 0x40400000

.global lbl_803D1CB8
lbl_803D1CB8:
	# ROM: 0x3CECB8
	.asciz "Neck_1"
	.byte 0x52
	.asciz "_knee"
	.byte 0x52, 0x5F
	.asciz "forearm"
	.asciz "L_elbow"
	.asciz "L_hip"
	.byte 0x52, 0x5F
	.asciz "collar_BigRock_SDK"
	.byte 0x63
	.asciz "ollar_rock4_SDK"
	.asciz "R_Elbow_Collision_LCTR"
	.byte 0x4C
	.asciz "_Elbow_Collision_LCTR"
	.byte 0x4C, 0x5F
	.asciz "Knee_Collision_LCTR"
	.asciz "R_Back_Rock_Collision_LCTR"
	.byte 0x4C
	.asciz "_Back_Rock_Collision_LCTR"
	.byte 0x48, 0x65
	.asciz "ad_Collision_LCTR"
	.byte 0x00, 0x52
	.asciz "_Shoulder_Collision_LCTR"
	.byte 0x4C, 0x5F, 0x53
	.asciz "houlder_Collision_LCTR"
	.byte 0x53
	.asciz "pine_Collision_LCTR"
	.asciz "R_Hand_Collision_LCTR"
	.byte 0x4C, 0x5F
	.asciz "Hand_Collision_LCTR"
	.asciz "R_Foot_Collision_LCTR"
	.byte 0x4C, 0x5F
	.asciz "Foot_Collision_LCTR"
	.asciz "center_LCTR"
	.asciz "ROCK_EFFECT"
	.4byte 0x2D005375
	.4byte 0x636B0044
	.asciz "oubleSnap"
	.byte 0x46, 0x6C
	.asciz "inch"
	.byte 0x46, 0x61, 0x69
	.4byte 0x6E74003F
	.asciz "?(??)"
	.byte 0x4C, 0x5F
	.asciz "wrist"
	.byte 0x52, 0x5F
	.asciz "ankle"
	.byte 0x54, 0x68
	.asciz "ermal_Spot_2"
	.balign 4
	.4byte 0

.global lbl_803D1E98
lbl_803D1E98:
	# ROM: 0x3CEE98
	.4byte 0x803D1EB0
	.4byte 0x803D1EBE
	.4byte 0x803D1ECE
	.4byte 0x803D1ED9
	.4byte 0x803D1EE8
	.4byte 0x803D1EF8

.global lbl_803D1EB0
lbl_803D1EB0:
	# ROM: 0x3CEEB0
	.asciz "Effect_OnFire"
	.byte 0x45, 0x66
	.asciz "fect_IceBreak"
	.byte 0x45, 0x66
	.asciz "fect_Ash"
	.byte 0x45, 0x66, 0x66
	.asciz "ect_FirePop"
	.asciz "Effect_Electric"
	.asciz "Effect_IcePop"
	.byte 0x5F, 0x44
	.4byte 0x47525000
	.asciz "??(??)"
	.byte 0x54
	.asciz "XTR_Ashy"
	.balign 4

.global lbl_803D1F20
lbl_803D1F20:
	# ROM: 0x3CEF20
	.4byte 0x00000008
	.4byte 0x00000002
	.4byte 0
	.4byte 0

.global lbl_803D1F30
lbl_803D1F30:
	# ROM: 0x3CEF30
	.asciz "Whole Body"
	.byte 0x3F
	.asciz "?(??)"
	.balign 4
	.4byte 0

.global lbl_803D1F48
lbl_803D1F48:
	# ROM: 0x3CEF48
	.asciz "textpane_message"
	.byte 0x62, 0x61, 0x73
	.asciz "ewidget_top"
	.asciz "basewidget_center"
	.byte 0x62, 0x61
	.asciz "sewidget_bottom"
	.asciz "model_abutton"
	.byte 0x6D, 0x6F
	.asciz "del_top"
	.asciz "model_bottom"
	.byte 0x6D, 0x6F, 0x64
	.asciz "el_center"
	.byte 0x6D, 0x6F
	.asciz "del_bg"
	.byte 0x6D
	.asciz "odel_videoband"
	.byte 0x62
	.asciz "asewidget_centerdeco"
	.byte 0x46, 0x52, 0x4D
	.asciz "E_MsgScreen"
	.4byte 0

.global lbl_803D2000
lbl_803D2000:
	# ROM: 0x3CF000
	.4byte 0x803D2018
	.4byte 0x40000000
	.4byte 0x803D201E
	.4byte 0x3F99999A
	.4byte 0x803D2025
	.4byte 0x3F99999A

.global lbl_803D2018
lbl_803D2018:
	# ROM: 0x3CF018
	.asciz "Arm_8"
	.byte 0x41, 0x72
	.asciz "m_10"
	.byte 0x41, 0x72, 0x6D
	.4byte 0x5F313200
	.asciz "??(??)"
	.byte 0x44
	.4byte 0x65616400

.global lbl_803D2038
lbl_803D2038:
	# ROM: 0x3CF038
	.asciz "Whole Body"
	.byte 0x3F
	.asciz "?(??)"
	.balign 4
	.4byte 0

.global lbl_803D2050
lbl_803D2050:
	# ROM: 0x3CF050
	.asciz "??(??)"
	.byte 0x49
	.asciz "ceAttackProjectile"
	.balign 4
	.4byte 0

.global lbl_803D2070
lbl_803D2070:
	# ROM: 0x3CF070
	.asciz "??(??)"
	.balign 4
	.4byte 0x0000000A
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x0000000A
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0x0000000D
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x00000019
	.4byte 0x0000000F
	.4byte 0x00000010
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x00000019
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000007
	.4byte 0x00000008
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x0000000A
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0x0000000D
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x00000028
	.4byte 0x0000000F
	.4byte 0x00000010
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x00000023
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000007
	.4byte 0x00000008
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000001E
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0x00000004
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x00000005
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x0000000D
	.4byte 0x0000000C
	.4byte 0x0000000B
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x0000001E
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000A
	.4byte 0x00000006
	.4byte 0x00000005
	.4byte 0x00000004
	.4byte 0x0000000E
	.4byte 0x0000000D
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x0000000E
	.4byte 0x0000000D
	.4byte 0x0000000C
	.4byte 0x0000000B
	.4byte 0x0000000A
	.4byte 0x00000009
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x0000000E
	.4byte 0x0000000F
	.4byte 0x00000010
	.4byte 0x0000000B
	.4byte 0x0000000A
	.4byte 0x00000009
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0x00000032
	.4byte 0x0000000B
	.4byte 0x0000000A
	.4byte 0x00000009
	.4byte 0x00000008
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803D2440
lbl_803D2440:
	# ROM: 0x3CF440
	.4byte 0x3EE66666
	.4byte 0x3F051EB8
	.4byte 0x3EB33333
	.4byte 0x3DCCCCCD
	.4byte 0x3E19999A
	.4byte 0x3EB33333
	.4byte 0x3DCCCCCD
	.4byte 0x3E19999A
	.4byte 0x3E19999A
	.4byte 0x3E19999A
	.4byte 0x3E19999A
	.4byte 0x3E19999A
	.4byte 0x3E19999A
	.4byte 0x3E19999A
	.4byte 0x3EB33333

.global lbl_803D247C
lbl_803D247C:
	# ROM: 0x3CF47C
	.asciz "Explode"
	.asciz "??(??)"
	.balign 4
	.asciz "GetUpNow"
	.byte 0x48, 0x65, 0x61
	.4byte 0x645F3100
	.asciz "L_gun_LCTR"
	.byte 0x4C
	.asciz "_Missile_LCTR"
	.byte 0x52, 0x5F
	.asciz "Missile_LCTR"
	.byte 0x53, 0x6B, 0x65
	.asciz "leton_Root"
	.byte 0x4A
	.asciz "etPack"
	.byte 0x53
	.asciz "cubaGear"
	.byte 0x53, 0x63, 0x75
	.asciz "baBubbles"
	.byte 0x53, 0x70
	.asciz "arks"
	.byte 0x4C, 0x61, 0x6E
	.asciz "dingSmoke"
	.byte 0x45, 0x79
	.4byte 0x65730043
	.asciz "ollar"
	.byte 0x52, 0x5F
	.asciz "shoulder"
	.byte 0x52, 0x5F, 0x65
	.asciz "lbow"
	.byte 0x52, 0x5F, 0x77
	.asciz "rist"
	.byte 0x4C, 0x5F, 0x73
	.asciz "houlder"
	.asciz "L_elbow"
	.asciz "L_wrist"
	.asciz "R_hip"
	.byte 0x52, 0x5F
	.asciz "knee"
	.byte 0x52, 0x5F, 0x61
	.asciz "nkle"
	.byte 0x4C, 0x5F, 0x68
	.4byte 0x6970004C
	.asciz "_knee"
	.byte 0x4C, 0x5F
	.asciz "ankle"
	.byte 0x72, 0x6F
	.asciz "cket_LCTR"
	.balign 4

.global lbl_803D2580
lbl_803D2580:
	# ROM: 0x3CF580
	.asciz "??(??)"
	.balign 4

.global lbl_803D2588
lbl_803D2588:
	# ROM: 0x3CF588
	.asciz "??(??)"
	.balign 4

.global lbl_803D2590
lbl_803D2590:
	# ROM: 0x3CF590
	.asciz "Rock_01_Collision_LCTR"
	.byte 0x52
	.asciz "OCK_PROJECTILE_EFFECT-%u-%i"
	.asciz "??(??)"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0x00000024
	.4byte 0x00000046
	.4byte 0x00000001
	.4byte 0x00000025
	.4byte 0x00000048
	.4byte 0x00000002
	.4byte 0x00000026
	.4byte 0x0000004A
	.4byte 0x00000003
	.4byte 0x00000027
	.4byte 0x0000004C
	.4byte 0x00000004
	.4byte 0x00000028
	.4byte 0x0000004E
	.4byte 0x00000005
	.4byte 0x0000002E
	.4byte 0x00000057
	.4byte 0x00000006
	.4byte 0x0000002F
	.4byte 0x00000058
	.4byte 0x00000007
	.4byte 0x00000030
	.4byte 0x00000059
	.4byte 0x00000008
	.4byte 0x00000031
	.4byte 0x0000005A
	.4byte 0x00000009
	.4byte 0x00000032
	.4byte 0x0000005B
	.4byte 0x0000000A
	.4byte 0x00000033
	.4byte 0x00000052
	.4byte 0x0000000B
	.4byte 0x00000034
	.4byte 0x00000053
	.4byte 0x0000000C
	.4byte 0x00000035
	.4byte 0x00000054
	.4byte 0x0000000D
	.4byte 0x00000036
	.4byte 0x00000055
	.4byte 0x0000000E
	.4byte 0x00000037
	.4byte 0x00000056
	.4byte 0x0000000F
	.4byte 0x00000038
	.4byte 0x00000042
	.4byte 0x00000010
	.4byte 0x00000039
	.4byte 0x00000043
	.4byte 0x00000011
	.4byte 0x0000003A
	.4byte 0x00000044
	.4byte 0x00000012
	.4byte 0x0000003B
	.4byte 0x00000045

.global lbl_803D26B4
lbl_803D26B4:
	# ROM: 0x3CF6B4
	.4byte 0x00000013
	.4byte 0x0000003C
	.4byte 0x0000004F
	.4byte 0x00000014
	.4byte 0x0000003D
	.4byte 0x00000050
	.4byte 0x00000015
	.4byte 0x0000003E
	.4byte 0x00000051
	.4byte 0x00000016
	.4byte 0x0000003F
	.4byte 0x0000005C
	.4byte 0x00000017
	.4byte 0x00000040
	.4byte 0x0000005D

.global lbl_803D26F0
lbl_803D26F0:
	# ROM: 0x3CF6F0
	.4byte 0x00000005
	.4byte 0x803D25D0
	.4byte 0x00000005
	.4byte 0x803D260C
	.4byte 0x00000005
	.4byte 0x803D2648
	.4byte 0x00000004
	.4byte 0x803D2684
	.4byte 0x00000005
	.4byte 0x803D26B4

.global lbl_803D2718
lbl_803D2718:
	# ROM: 0x3CF718
	.asciz "??(??)"
	.balign 4

.global lbl_803D2720
lbl_803D2720:
	# ROM: 0x3CF720
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D2738
lbl_803D2738:
	# ROM: 0x3CF738
	.asciz "??(??)"
	.byte 0x46
	.asciz "laahgra Plants"
	.balign 4

.global lbl_803D2750
lbl_803D2750:
	# ROM: 0x3CF750
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D2768
lbl_803D2768:
	# ROM: 0x3CF768
	.asciz "??(??)"
	.byte 0x47
	.asciz "UN_LCTR"

.global lbl_803D2778
lbl_803D2778:
	# ROM: 0x3CF778
	.asciz "L.dsp"
	.byte 0x52, 0x2E
	.4byte 0x64737000
	.4byte 0x7377002E
	.4byte 0x64737000
	.4byte 0

.global lbl_803D2790
lbl_803D2790:
	# ROM: 0x3CF790
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x41200000
	.4byte 0

.global lbl_803D27B0
lbl_803D27B0:
	# ROM: 0x3CF7B0
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D27C8
lbl_803D27C8:
	# ROM: 0x3CF7C8
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D27E0
lbl_803D27E0:
	# ROM: 0x3CF7E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xC1200000
	.4byte 0

.global lbl_803D2800
lbl_803D2800:
	# ROM: 0x3CF800
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000B
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D2818
lbl_803D2818:
	# ROM: 0x3CF818
	.asciz "DUMB_SnowForces"
	.asciz "??(??)"
	.byte 0x56
	.asciz "isorRainSplashes"
	.byte 0x54, 0x58, 0x54
	.asciz "R_EnvGradient"
	.byte 0x50, 0x41
	.asciz "RT_EnvRainSplash"
	.byte 0x54, 0x58, 0x54
	.asciz "R_SnowFlake"
	.asciz "TXTR_UnderwaterFlake"
	.balign 4
	.4byte 0

.global lbl_803D2890
lbl_803D2890:
	# ROM: 0x3CF890
	.asciz "ProjectileLight_GameProjectile"
	.byte 0x3F
	.asciz "?(??)"
	.byte 0x50, 0x72
	.asciz "ojectile collision response"
	.asciz "IceSpread1"
	.byte 0x49
	.asciz "ce spread explosion"
	.asciz "GameProjectile"
	.balign 4
	.4byte 0

.global lbl_803D2908
lbl_803D2908:
	# ROM: 0x3CF908
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000009
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3E19999A
	.4byte 0x3D4CCCCD
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3E19999A
	.4byte 0x3D4CCCCD
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3E19999A
	.4byte 0x3D4CCCCD
	.4byte 0x0000003C
	.4byte 0x00000010
	.4byte 0x00000004
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3E19999A
	.4byte 0x3D4CCCCD
	.4byte 0x0000001E
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3E19999A
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000001E
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000004
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3E19999A
	.4byte 0x3D4CCCCD
	.4byte 0x0000001E
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3E19999A
	.4byte 0x3D4CCCCD
	.4byte 0x0000001E
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3E19999A
	.4byte 0x3D4CCCCD
	.4byte 0x00000005
	.4byte 0x00000010
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3E19999A
	.4byte 0x3D4CCCCD
	.4byte 0x00000005
	.4byte 0x00000008
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3E19999A
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000005
	.4byte 0x00000010
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3E19999A
	.4byte 0x3D4CCCCD
	.4byte 0x00000005
	.4byte 0x00000009
	.4byte 0x00000008
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3E19999A
	.4byte 0x3D4CCCCD
	.4byte 0x0000000F
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3E19999A
	.4byte 0x3D4CCCCD
	.4byte 0x0000000F
	.4byte 0x00000005
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3E19999A
	.4byte 0x3D4CCCCD
	.4byte 0x0000000F
	.4byte 0x0000000A
	.4byte 0x0000000B
	.4byte 0x00000004
	.4byte 0x0000000D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3E19999A
	.4byte 0x3D4CCCCD
	.4byte 0x0000000F
	.4byte 0x0000000E
	.4byte 0x0000000D
	.4byte 0x00000004
	.4byte 0x0000000B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3E19999A
	.4byte 0x3D4CCCCD
	.4byte 0x0000001E
	.4byte 0x00000002
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3E19999A
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000014
	.4byte 0x00000010
	.4byte 0x0000000F
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3E19999A
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x00000008
	.4byte 0x00000009
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3E19999A
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x0000000D
	.4byte 0x0000000B
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3E19999A
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x00000002
	.4byte 0x00000006
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3E19999A
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3E19999A
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000A
	.4byte 0x0000000E
	.4byte 0x00000004
	.4byte 0x0000000A
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3E19999A
	.4byte 0x3D4CCCCD
	.4byte 0x0000000A
	.4byte 0x0000000F
	.4byte 0x0000000D
	.4byte 0x00000004
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3E19999A
	.4byte 0x3D4CCCCD
	.4byte 0x0000000A
	.4byte 0x00000009
	.4byte 0x0000000B
	.4byte 0x00000004
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3E19999A
	.4byte 0x3D4CCCCD
	.4byte 0x00000023
	.4byte 0x0000000F
	.4byte 0x0000000D
	.4byte 0x0000000B
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3E19999A
	.4byte 0x3D4CCCCD
	.4byte 0x00000023
	.4byte 0x00000009
	.4byte 0x0000000B
	.4byte 0x0000000D
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3E19999A
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000A
	.4byte 0x0000000E
	.4byte 0x0000000D
	.4byte 0x00000004
	.4byte 0x0000000B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3E19999A
	.4byte 0x3D4CCCCD
	.4byte 0x0000001E
	.4byte 0x00000001
	.4byte 0x0000000F
	.4byte 0x0000000D
	.4byte 0x0000000B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3E19999A
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x00000010
	.4byte 0x0000000F
	.4byte 0x0000000E
	.4byte 0x0000000D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3E19999A
	.4byte 0x3D4CCCCD
	.4byte 0x0000000A
	.4byte 0x00000008
	.4byte 0x00000009
	.4byte 0x0000000B
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3E19999A
	.4byte 0x3D4CCCCD
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x0000000F
	.4byte 0x0000000D
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3E19999A
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x00000008
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x0000000B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3E19999A
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803D2FF0
lbl_803D2FF0:
	# ROM: 0x3CFFF0
	.asciz "Gun_SDK"
	.asciz "Blast_LCTR"
	.byte 0x6C
	.asciz "ight_LCTR"
	.byte 0x6C, 0x6F
	.asciz "ckon_target_LCTR"
	.byte 0x3F, 0x3F, 0x28
	.4byte 0x3F3F2900
	.asciz "ParticleLight_"
	.balign 4

.global lbl_803D3038
lbl_803D3038:
	# ROM: 0x3D0038
	.asciz "String"
	.byte 0x49
	.4byte 0x6E740052
	.4byte 0x65616C00
	.asciz "Bool"
	.byte 0x41, 0x75, 0x64
	.4byte 0x696F003F
	.asciz "?(??)"
	.byte 0x4D, 0x69
	.asciz "diObject"
	.byte 0x57, 0x6F, 0x72
	.asciz "ld %8.8x"
	.byte 0x41, 0x72, 0x65
	.asciz "a %8.8x MusicObject: %s"
	.asciz "World %8.8x Area %8.8x MidiObject: %s"
	.byte 0x57, 0x6F
	.asciz "rldDefault: %8.8x"
	.byte 0x2E, 0x61
	.4byte 0x64700041
	.asciz "udio/"
	.byte 0x4D, 0x49
	.asciz "DI: "
	.byte 0x54, 0x77, 0x65
	.asciz "akFile\n"
	.asciz "Version %d\n"
	.asciz "Value Count: %d\n"
	.byte 0x5F, 0x5F, 0x42
	.asciz "AD_TOKEN__"
	.byte 0x56
	.asciz "alue\n{\n   Name: %s\n   Type: %s\n   Value: %s\n}\n"
	.byte 0x54
	.asciz "weakFile"
	.byte 0x56, 0x65, 0x72
	.asciz "sion %d"
	.asciz "Value Count: %d"
	.4byte 0x00547275
	.4byte 0x65003B00
	.4byte 0x25640025
	.4byte 0x66004661
	.4byte 0x6C736500
	.asciz "%f;%f;%f;%s;%d"
	.byte 0x56
	.asciz "alue"
	.byte 0x7B, 0x00, 0x4E
	.asciz "ame:"
	.byte 0x54, 0x79, 0x70
	.4byte 0x653A0056
	.asciz "alue:"
	.byte 0x20, 0x09
	.4byte 0x0A0D2200

.global lbl_803D31A8
lbl_803D31A8:
	# ROM: 0x3D01A8
	.4byte 0x803D31D0
	.4byte 0x3F99999A
	.4byte 0x803D31D7
	.4byte 0x3F99999A
	.4byte 0x803D31DE
	.4byte 0x3FD9999A
	.4byte 0x803D31EC
	.4byte 0x3F99999A
	.4byte 0x803D31F3
	.4byte 0x3F666666

.global lbl_803D31D0
lbl_803D31D0:
	# ROM: 0x3D01D0
	.asciz "L_knee"
	.byte 0x52
	.asciz "_knee"
	.byte 0x4C, 0x43
	.asciz "TR_SHEMOUTH"
	.asciz "Pelvis"
	.byte 0x62
	.asciz "utt_LCTR"
	.byte 0x3F, 0x3F, 0x28
	.4byte 0x3F3F2900
	.asciz "Babygoth Shell Crack Fx"
	.asciz "GetUp"
	.byte 0x49, 0x63
	.asciz "eSheegoth_Flame"
	.asciz "Head_1"
	.byte 0x46
	.asciz "lameThrower"

.global lbl_803D3248
lbl_803D3248:
	# ROM: 0x3D0248
	.asciz "Laser_LCTR"
	.byte 0x57
	.asciz "hole Body"
	.byte 0x3F, 0x3F
	.asciz "(??)"
	.byte 0x45, 0x79, 0x65
	.asciz "Ball_Beam"
	.byte 0x45, 0x79
	.4byte 0x65000000

.global lbl_803D3278
lbl_803D3278:
	# ROM: 0x3D0278
	.4byte 0x803D3310
	.4byte 0x803D331B
	.4byte 0x3F800000
	.4byte 0x3FC00000
	.4byte 0x803D331B
	.4byte 0x803D3323
	.4byte 0x3F666666
	.4byte 0x3FA66666
	.4byte 0x803D332B
	.4byte 0x803D3332
	.4byte 0x3F666666
	.4byte 0x3FA66666

.global lbl_803D32A8
lbl_803D32A8:
	# ROM: 0x3D02A8
	.4byte 0x803D333A
	.4byte 0x803D3345
	.4byte 0x3F800000
	.4byte 0x3FC00000
	.4byte 0x803D3345
	.4byte 0x803D334D
	.4byte 0x3F666666
	.4byte 0x3FA66666
	.4byte 0x803D3355
	.4byte 0x803D335C
	.4byte 0x3F666666
	.4byte 0x3FA66666
	.4byte 0x803D3364
	.4byte 0x3F99999A
	.4byte 0x803D336B
	.4byte 0x3FC00000
	.4byte 0x803D3377
	.4byte 0x3FC00000
	.4byte 0x803D3383
	.4byte 0x3FC00000
	.4byte 0x803D338B
	.4byte 0x3F99999A
	.4byte 0x803D3392
	.4byte 0x3F4CCCCD
	.4byte 0x803D3399
	.4byte 0x3F4CCCCD

.global lbl_803D3310
lbl_803D3310:
	# ROM: 0x3D0310
	.asciz "L_shoulder"
	.byte 0x4C
	.asciz "_elbow"
	.byte 0x4C
	.asciz "_wrist"
	.byte 0x4C
	.asciz "_knee"
	.byte 0x4C, 0x5F
	.asciz "ankle"
	.byte 0x52, 0x5F
	.asciz "shoulder"
	.byte 0x52, 0x5F, 0x65
	.asciz "lbow"
	.byte 0x52, 0x5F, 0x77
	.asciz "rist"
	.byte 0x52, 0x5F, 0x6B
	.4byte 0x6E656500
	.asciz "R_ankle"
	.asciz "Head_1"
	.byte 0x4C
	.asciz "_Palm_LCTR"
	.byte 0x52
	.asciz "_Palm_LCTR"
	.byte 0x53
	.asciz "pine_1"
	.byte 0x43
	.asciz "ollar"
	.byte 0x4C, 0x5F
	.asciz "ball"
	.byte 0x52, 0x5F, 0x62
	.4byte 0x616C6C00
	.asciz "grenadeLauncher_LCTR"
	.byte 0x6C, 0x6F, 0x63
	.asciz "kon_target_LCTR"
	.asciz "??(??)"
	.byte 0x41
	.asciz "bsorb energy Fx"
	.asciz "Grenade Launcher"
	.byte 0x53, 0x68, 0x69
	.4byte 0x656C6400
	.asciz "Shock Wave"
	.balign 4
	.4byte 0

.global lbl_803D3408
lbl_803D3408:
	# ROM: 0x3D0408
	.asciz "??(??)"
	.balign 4

.global lbl_803D3410
lbl_803D3410:
	# ROM: 0x3D0410
	.asciz "grenade_LCTR"
	.byte 0x6C, 0x6F, 0x63
	.asciz "kon_target_LCTR"
	.asciz "??(??)"
	.byte 0x47
	.asciz "renade Launcher Explode Fx"
	.byte 0x42
	.asciz "ouncy Grenade"
	.balign 4
	.4byte 0

.global lbl_803D3468
lbl_803D3468:
	# ROM: 0x3D0468
	.asciz "??(??)"
	.byte 0x53
	.asciz "hockWaveLight_"
	.byte 0x56
	.asciz "isorElectricFx"
	.balign 4

.global lbl_803D3490
lbl_803D3490:
	# ROM: 0x3D0490
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803D34A0
lbl_803D34A0:
	# ROM: 0x3D04A0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0
	.4byte 0xBF800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0
	.4byte 0xBF800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0
	.4byte 0xBF800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x40000000
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0
	.4byte 0xBF800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0x40000000
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0x40800000
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0x40800000
	.4byte 0xBF800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x40800000
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x40200000
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x40200000
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x40B00000
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x40B00000
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x41080000
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x40900000
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0
	.4byte 0xBF800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0x40000000
	.4byte 0xBF800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x40000000
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0x40000000
	.4byte 0xBF800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0x40000000
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0x40800000
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x40800000
	.4byte 0xBF800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x40800000
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x40800000
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x40200000
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x40200000
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x40B00000
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x40B00000
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x41080000
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x41080000
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x40900000
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x40900000
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x40C00000
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000008
	.4byte 0x40C00000
	.4byte 0xBF800000
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x40C00000
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000002
	.4byte 0x00000008
	.4byte 0x40C00000
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000008
	.4byte 0x40C00000
	.4byte 0xBF800000
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x40C00000
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0
	.4byte 0x00000003
	.4byte 0x40C00000
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000008
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x40C00000
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000002
	.4byte 0x00000007
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0x00000009
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000009
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0x40000000
	.4byte 0xBF800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x40000000
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0x40000000
	.4byte 0xBF800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0x40000000
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0x40800000
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x40800000
	.4byte 0xBF800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0x40800000
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x40800000
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x40800000
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x40800000
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x40200000
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x40200000
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x40200000
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x40200000
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x40900000
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x40900000
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x40200000
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x40200000
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x40C00000
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x40C00000
	.4byte 0xBF800000
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x40C00000
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x40C00000
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x40C00000
	.4byte 0xBF800000
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x40C00000
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0
	.4byte 0x00000003
	.4byte 0x40C00000
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000008
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x40C00000
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000002
	.4byte 0x00000007
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0x00000009
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0x00000009
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000

.global lbl_803D42E0
lbl_803D42E0:
	# ROM: 0x3D12E0
	.asciz "??(??)"
	.balign 4

.global lbl_803D42E8
lbl_803D42E8:
	# ROM: 0x3D12E8
	.4byte 0x803D4338
	.4byte 0x3F400000
	.4byte 0x803D433F
	.4byte 0x3F400000
	.4byte 0x803D4346
	.4byte 0x3F400000
	.4byte 0x803D434D
	.4byte 0x3F400000
	.4byte 0x803D4354
	.4byte 0x3F400000

.global lbl_803D4310
lbl_803D4310:
	# ROM: 0x3D1310
	.asciz "LCTR_MAGMOUTH"
	.byte 0x68, 0x65
	.4byte 0x61640054
	.asciz "op_LCTR"
	.asciz "Bottom_LCTR"
	.asciz "spine1"
	.byte 0x73
	.asciz "pine3"
	.byte 0x73, 0x70
	.asciz "ine5"
	.byte 0x73, 0x70, 0x69
	.4byte 0x6E653700
	.asciz "spine9"
	.byte 0x3F
	.asciz "?(??)"
	.byte 0x4D, 0x61
	.asciz "gdolite_Flame"
	.byte 0x46, 0x6C
	.asciz "ameThrower"
	.balign 4

.global lbl_803D4380
lbl_803D4380:
	# ROM: 0x3D1380
	.asciz "??(??)"
	.balign 4

.global lbl_803D4388
lbl_803D4388:
	# ROM: 0x3D1388
	.asciz "Whole Body"
	.byte 0x3F
	.asciz "?(??)"
	.balign 4
	.4byte 0

.global lbl_803D43A0
lbl_803D43A0:
	# ROM: 0x3D13A0
	.asciz "??(??)"
	.byte 0x43
	.asciz "ontraption_Flame"
	.byte 0x46, 0x6C, 0x61
	.asciz "meThrower"
	.balign 4

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
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x3F800000

.global lbl_803D43F0
lbl_803D43F0:
	# ROM: 0x3D13F0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00000015
	.4byte 0
	.4byte 0x437F0000
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000016
	.4byte 0
	.4byte 0x437F0000
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x00000002
	.4byte 0x00000017
	.4byte 0
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x00000018
	.4byte 0
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x00000001
	.4byte 0x0000000E
	.4byte 0x00000023
	.4byte 0
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000019
	.4byte 0
	.4byte 0x41000000
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x00000005
	.4byte 0x0000001A
	.4byte 0xC1F00000
	.4byte 0x41F00000
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x00000006
	.4byte 0x0000001B
	.4byte 0xC1F00000
	.4byte 0x41F00000
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x00000007
	.4byte 0x0000001C
	.4byte 0xC1200000
	.4byte 0x41200000
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x0000000E
	.4byte 0x00000023
	.4byte 0
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x00000003
	.4byte 0x00000008
	.4byte 0x0000001D
	.4byte 0
	.4byte 0x42FE0000
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x00000009
	.4byte 0x0000001E
	.4byte 0
	.4byte 0x42FE0000
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x0000000A
	.4byte 0x0000001F
	.4byte 0
	.4byte 0x40000000
	.4byte 0x3F800000
	.4byte 0x00000002
	.4byte 0x0000000E
	.4byte 0x00000023
	.4byte 0
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x00000003
	.4byte 0x0000000B
	.4byte 0x00000020
	.4byte 0
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x00000001
	.4byte 0x0000000C
	.4byte 0x00000021
	.4byte 0
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000022
	.4byte 0
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x00000001
	.4byte 0x0000000E
	.4byte 0x00000023
	.4byte 0
	.4byte 0x3F800000
	.4byte 0x3F800000
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

.global lbl_803D4730
lbl_803D4730:
	# ROM: 0x3D1730
	.asciz "bomb1_LCTR"
	.byte 0x62
	.asciz "omb2_LCTR"
	.byte 0x62, 0x6F
	.asciz "mb3_LCTR"
	.byte 0x62, 0x6F, 0x6D
	.asciz "b4_LCTR"
	.4byte 0

.global lbl_803D4760
lbl_803D4760:
	# ROM: 0x3D1760
	.asciz "??(??)"
	.balign 4

.global lbl_803D4768
lbl_803D4768:
	# ROM: 0x3D1768
	.asciz "client_pad.bin"
	.byte 0x3F
	.asciz "?(??)"
	.balign 4

.global lbl_803D4780
lbl_803D4780:
	# ROM: 0x3D1780
	.asciz "??(??)"
	.byte 0x48
	.asciz "INT_Hints"
	.balign 4
	.4byte 0

.global lbl_803D4798
lbl_803D4798:
	# ROM: 0x3D1798
	.asciz "Whole Body"
	.balign 4
	.4byte 0

.global lbl_803D47A8
lbl_803D47A8:
	# ROM: 0x3D17A8
	.asciz "Metroid Prime                   "
	.balign 4

.global lbl_803D47CC
lbl_803D47CC:
	# ROM: 0x3D17CC
	.asciz "MetroidPrime A"
	.byte 0x4D
	.asciz "etroidPrime B"
	.byte 0x4E, 0x6F
	.asciz "tLoaded"
	.asciz "Loaded"
	.byte 0x4E
	.asciz "oCard"
	.byte 0x53, 0x61
	.4byte 0x76656400
	.asciz "Formatted"
	.byte 0x50, 0x72
	.asciz "obed"
	.byte 0x4D, 0x6F, 0x75
	.asciz "nted"
	.byte 0x43, 0x68, 0x65
	.asciz "ckedCard"
	.byte 0x43, 0x72, 0x65
	.asciz "atedInitial"
	.asciz "CreatedCopy"
	.asciz "WroteCopy"
	.byte 0x44, 0x65
	.asciz "letedOriginal"
	.byte 0x46, 0x61
	.asciz "iledProbe"
	.byte 0x46, 0x61
	.asciz "iledMount"
	.byte 0x46, 0x61
	.asciz "iledCheck"
	.byte 0x46, 0x61
	.asciz "iledDeleteCorruptedFile"
	.asciz "FailedDeleteDuplicateFile"
	.byte 0x46, 0x61
	.asciz "iledLoad"
	.byte 0x46, 0x61, 0x69
	.asciz "ledCreateInitial"
	.byte 0x46, 0x61, 0x69
	.asciz "ledWriteInitial"
	.asciz "FailedCreateCopy"
	.byte 0x46, 0x61, 0x69
	.asciz "ledWriteCopy"
	.byte 0x46, 0x61, 0x69
	.asciz "ledDeleteOriginal"
	.byte 0x46, 0x61
	.asciz "iledRenameCopy"
	.byte 0x46
	.asciz "ailedFormat"
	.asciz "Probing"
	.asciz "Mounting"
	.byte 0x43, 0x68, 0x65
	.asciz "ckingCard"
	.byte 0x44, 0x65
	.asciz "letingCorruptedFile"
	.asciz "Reading"
	.asciz "DeletingDuplicateFile"
	.byte 0x43, 0x72
	.asciz "eatingInitial"
	.byte 0x57, 0x72
	.asciz "itingInitial"
	.byte 0x43, 0x72, 0x65
	.asciz "atingCopy"
	.byte 0x57, 0x72
	.asciz "itingCopy"
	.byte 0x44, 0x65
	.asciz "letingOriginal"
	.byte 0x52
	.asciz "enamingCopy"
	.asciz "Formatting"
	.byte 0x4E
	.asciz "oError"
	.byte 0x43
	.asciz "orruptedFile"
	.byte 0x45, 0x6E, 0x63
	.asciz "odingMismatch"
	.byte 0x44, 0x61
	.asciz "maged"
	.byte 0x57, 0x72
	.asciz "ongDevice"
	.byte 0x49, 0x6E
	.asciz "sufficientSpace"
	.asciz "InsufficientBackupSpace"
	.asciz "BadSectorSize"
	.byte 0x4E, 0x6F
	.asciz "File"
	.byte 0x3F, 0x3F, 0x28
	.4byte 0x3F3F2900
	.asciz "%02d.%02d.%02d  %02d:%02d"
	.balign 4

.global lbl_803D4A90
lbl_803D4A90:
	# ROM: 0x3D1A90
	.asciz "TXTR_SaveBanner"
	.asciz "TXTR_SaveIcon0"
	.byte 0x54
	.asciz "XTR_SaveIcon1"
	.byte 0x53, 0x54
	.asciz "RG_MemoryCard"
	.byte 0x46, 0x52
	.asciz "ME_GenericMenu"
	.byte 0x74
	.asciz "extpane_message"
	.asciz "tablegroup_choices"
	.byte 0x74
	.asciz "extpane_choice0"
	.asciz "textpane_choice1"
	.byte 0x74, 0x65, 0x78
	.asciz "tpane_choice2"
	.byte 0x74, 0x65
	.asciz "xtpane_choice3"
	.byte 0x3F
	.asciz "?(??)"
	.balign 4

.global lbl_803D4B50
lbl_803D4B50:
	# ROM: 0x3D1B50
	.asciz "bomb2_LCTR"
	.byte 0x62
	.asciz "omb3_LCTR"
	.byte 0x62, 0x6F
	.asciz "mb4_LCTR"
	.byte 0x3F, 0x3F, 0x28
	.4byte 0x3F3F2900

.global lbl_803D4B78
lbl_803D4B78:
	# ROM: 0x3D1B78
	.asciz "ElectricBeamProjectile"
	.byte 0x3F
	.asciz "?(??)"
	.balign 4

.global lbl_803D4B98
lbl_803D4B98:
	# ROM: 0x3D1B98
	.4byte 0x803D4D5C
	.4byte 0x803D4D63
	.4byte 0x3F28F5C3
	.4byte 0x803D4D63
	.4byte 0x803D4D6A
	.4byte 0x3F28F5C3
	.4byte 0x803D4D6A
	.4byte 0x803D4D71
	.4byte 0x3F28F5C3
	.4byte 0x803D4D71
	.4byte 0x803D4D78
	.4byte 0x3F28F5C3

.global lbl_803D4BC8
lbl_803D4BC8:
	# ROM: 0x3D1BC8
	.4byte 0x803D4D7F
	.4byte 0x3F19999A
	.4byte 0x803D4D8D
	.4byte 0x3F19999A
	.4byte 0x803D4D95
	.4byte 0x3E99999A
	.4byte 0x803D4DA6
	.4byte 0x3F19999A
	.4byte 0x803D4DAD
	.4byte 0x3F000000
	.4byte 0x803D4DB5
	.4byte 0x3F000000
	.4byte 0x803D4DBD
	.4byte 0x3F19999A
	.4byte 0x803D4DC5
	.4byte 0x3F19999A
	.4byte 0x803D4DCD
	.4byte 0x3ECCCCCD
	.4byte 0x803D4DD7
	.4byte 0x3ECCCCCD

.global lbl_803D4C18
lbl_803D4C18:
	# ROM: 0x3D1C18
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0x42480000
	.4byte 0x42480000
	.4byte 0
	.4byte 0x42040000
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0x41A00000
	.4byte 0x41A00000
	.4byte 0x42700000
	.4byte 0x42480000
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0x42200000
	.4byte 0x42200000
	.4byte 0x41A00000
	.4byte 0x42480000
	.4byte 0x42480000
	.4byte 0x00000002
	.4byte 0x01000000
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x41200000
	.4byte 0x41700000
	.4byte 0x42960000
	.4byte 0x42C80000
	.4byte 0x41C80000
	.4byte 0x00000002
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x41F00000
	.4byte 0x41F00000
	.4byte 0x42200000
	.4byte 0x42480000
	.4byte 0x42480000
	.4byte 0x00000002
	.4byte 0x01000000

.global lbl_803D4CCC
lbl_803D4CCC:
	# ROM: 0x3D1CCC
	.4byte 0
	.4byte 0x41A00000
	.4byte 0x42200000
	.4byte 0
	.4byte 0
	.4byte 0x42200000
	.4byte 0
	.4byte 0
	.4byte 0x428C0000
	.4byte 0
	.4byte 0
	.4byte 0x41F00000
	.4byte 0
	.4byte 0x42700000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x42200000
	.4byte 0
	.4byte 0x42200000
	.4byte 0x41F00000
	.4byte 0
	.4byte 0
	.4byte 0x41F00000
	.4byte 0
	.4byte 0
	.4byte 0x42480000
	.4byte 0
	.4byte 0
	.4byte 0x42480000
	.4byte 0
	.4byte 0x42200000
	.4byte 0x42700000
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803D4D5C
lbl_803D4D5C:
	# ROM: 0x3D1D5C
	.asciz "Tail_1"
	.byte 0x54
	.asciz "ail_3"
	.byte 0x54, 0x61
	.asciz "il_5"
	.byte 0x54, 0x61, 0x69
	.4byte 0x6C5F3700
	.asciz "Tail_9"
	.byte 0x53
	.asciz "keleton_Root"
	.byte 0x53, 0x70, 0x69
	.asciz "ne_2"
	.byte 0x62, 0x72, 0x65
	.asciz "astPlate_LCTR"
	.byte 0x48, 0x65
	.asciz "ad_1"
	.byte 0x4C, 0x5F, 0x77
	.asciz "rist"
	.byte 0x52, 0x5F, 0x77
	.asciz "rist"
	.byte 0x4C, 0x5F, 0x61
	.asciz "nkle"
	.byte 0x52, 0x5F, 0x61
	.asciz "nkle"
	.byte 0x4C, 0x5F, 0x70
	.asciz "inky_1"
	.byte 0x52
	.asciz "_pinky_1"
	.byte 0x3F, 0x3F, 0x28
	.4byte 0x3F3F2900
	.4byte 0x00202D20
	.asciz "Collision Actor "
	.byte 0x6D, 0x6F, 0x75
	.asciz "th_LCTR"
	.asciz "WingSmokeSmall1"
	.asciz "WingSmokeSmall2"
	.asciz "WingSmokeSmall3"
	.asciz "WingSmokeSmall4"
	.asciz "WingSmokeSmall5"
	.asciz "WingSmokeSmall6"
	.asciz "WingSmokeSmall7"
	.asciz "WingSmokeSmall8"
	.asciz "WingFire1"
	.byte 0x57, 0x69
	.asciz "ngFire2"
	.asciz "WingFire3"
	.byte 0x57, 0x69
	.asciz "ngFire4"
	.asciz "WingFire5"
	.byte 0x57, 0x69
	.asciz "ngFire6"
	.asciz "WingFire7"
	.byte 0x57, 0x69
	.asciz "ngFire8"
	.asciz "WingSparks1"
	.asciz "WingSparks2"
	.asciz "WingSparks3"
	.asciz "WingSparks4"
	.asciz "WingSparks5"
	.asciz "WingSparks6"
	.asciz "WingSparks7"
	.asciz "WingSparks8"
	.asciz "L_wingBone1_1"
	.byte 0x4C, 0x5F
	.asciz "wingBone1_2"
	.asciz "L_wingBone2_1"
	.byte 0x4C, 0x5F
	.asciz "wingBone2_2"
	.asciz "L_wingBone3_1"
	.byte 0x4C, 0x5F
	.asciz "wingBone3_2"
	.asciz "L_wingFlesh1_1"
	.byte 0x4C
	.asciz "_wingFlesh1_2"
	.byte 0x4C, 0x5F
	.asciz "wingFlesh2_1"
	.byte 0x4C, 0x5F, 0x77
	.asciz "ingFlesh2_2"
	.asciz "L_wingFlesh3_1"
	.byte 0x4C
	.asciz "_wingFlesh3_2"
	.byte 0x52, 0x5F
	.asciz "wingBone1_1"
	.asciz "R_wingBone1_2"
	.byte 0x52, 0x5F
	.asciz "wingBone2_1"
	.asciz "R_wingBone2_2"
	.byte 0x52, 0x5F
	.asciz "wingBone3_1"
	.asciz "R_wingBone3_2"
	.byte 0x52, 0x5F
	.asciz "wingFlesh1_1"
	.byte 0x52, 0x5F, 0x77
	.asciz "ingFlesh1_2"
	.asciz "R_wingFlesh2_1"
	.byte 0x52
	.asciz "_wingFlesh2_2"
	.byte 0x52, 0x5F
	.asciz "wingFlesh3_1"
	.byte 0x52, 0x5F, 0x77
	.asciz "ingFlesh3_2"
	.asciz "L_wingtip_1_LCTR"
	.byte 0x4C, 0x5F, 0x77
	.asciz "ingtip_2_LCTR"
	.byte 0x4C, 0x5F
	.asciz "wingtip_3_LCTR"
	.byte 0x52
	.asciz "_wingtip_1_LCTR"
	.asciz "R_wingtip_2_LCTR"
	.byte 0x52, 0x5F, 0x77
	.asciz "ingtip_3_LCTR"
	.balign 4
	.4byte 0

.global lbl_803D5100
lbl_803D5100:
	# ROM: 0x3D2100
	.asciz "GasJet01"
	.byte 0x47, 0x61, 0x73
	.asciz "Jet02"
	.byte 0x47, 0x61
	.asciz "sJet03"
	.byte 0x47
	.asciz "asJet04"
	.asciz "GasJet05"
	.byte 0x47, 0x61, 0x73
	.asciz "Jet06"
	.byte 0x47, 0x61
	.asciz "sJet07"
	.byte 0x47
	.asciz "asJet08"
	.asciz "GasJet09"
	.byte 0x47, 0x61, 0x73
	.asciz "Jet10"
	.byte 0x47, 0x61
	.asciz "sJet11"
	.byte 0x47
	.asciz "asJet12"
	.asciz "GasJet13"
	.byte 0x47, 0x61, 0x73
	.asciz "Jet14"
	.byte 0x47, 0x61
	.asciz "s_01_LCTR"
	.byte 0x47, 0x61
	.asciz "s_02_LCTR"
	.byte 0x47, 0x61
	.asciz "s_03_LCTR"
	.byte 0x47, 0x61
	.asciz "s_04_LCTR"
	.byte 0x47, 0x61
	.asciz "s_05_LCTR"
	.byte 0x47, 0x61
	.asciz "s_06_LCTR"
	.byte 0x47, 0x61
	.asciz "s_07_LCTR"
	.byte 0x47, 0x61
	.asciz "s_08_LCTR"
	.byte 0x47, 0x61
	.asciz "s_09_LCTR"
	.byte 0x47, 0x61
	.asciz "s_10_LCTR"
	.byte 0x47, 0x61
	.asciz "s_11_LCTR"
	.byte 0x47, 0x61
	.asciz "s_12_LCTR"
	.byte 0x47, 0x61
	.asciz "s_13_LCTR"
	.byte 0x47, 0x61
	.asciz "s_14_LCTR"
	.byte 0x3F, 0x3F
	.asciz "(??)"
	.balign 4

.global lbl_803D5230
lbl_803D5230:
	# ROM: 0x3D2230
	.asciz "Fire"
	.byte 0x3F, 0x3F, 0x28
	.4byte 0x3F3F2900
	.4byte 0

.global lbl_803D5240
lbl_803D5240:
	# ROM: 0x3D2240
	.asciz "TXTR_MapLightQuarter"
	.balign 4
	.asciz "ballGrab_locator"
	.byte 0x53, 0x6B, 0x65
	.asciz "leton_Root"
	.balign 4

.global lbl_803D5278
lbl_803D5278:
	# ROM: 0x3D2278
	.asciz "??(??)"
	.byte 0x46
	.asciz "lamethrowerLight"
	.balign 4
	.4byte 0

.global lbl_803D5298
lbl_803D5298:
	# ROM: 0x3D2298
	.asciz "Interpolation Camera"
	.balign 4

.global lbl_803D52B0
lbl_803D52B0:
	# ROM: 0x3D22B0
	.4byte 0x803D52E0
	.4byte 0x803D52F2
	.4byte 0x803D5304
	.4byte 0x803D5316
	.4byte 0x803D5328
	.4byte 0x803D533A
	.4byte 0x803D534C
	.4byte 0x803D535E
	.4byte 0x803D5370
	.4byte 0x803D5382
	.4byte 0x803D5394
	.4byte 0x803D53A6

.global lbl_803D52E0
lbl_803D52E0:
	# ROM: 0x3D22E0
	.asciz "A_spike1_LCTR_SDK"
	.byte 0x41, 0x5F
	.asciz "spike2_LCTR_SDK"
	.asciz "A_spike3_LCTR_SDK"
	.byte 0x41, 0x5F
	.asciz "spike4_LCTR_SDK"
	.asciz "A_spike5_LCTR_SDK"
	.byte 0x41, 0x5F
	.asciz "spike6_LCTR_SDK"
	.asciz "B_spike1_LCTR_SDK"
	.byte 0x42, 0x5F
	.asciz "spike2_LCTR_SDK"
	.asciz "B_spike3_LCTR_SDK"
	.byte 0x42, 0x5F
	.asciz "spike4_LCTR_SDK"
	.asciz "B_spike5_LCTR_SDK"
	.byte 0x42, 0x5F
	.asciz "spike6_LCTR_SDK"
	.asciz "??(??)"
	.balign 4

.global lbl_803D53C0
lbl_803D53C0:
	# ROM: 0x3D23C0
	.asciz "??(??)"
	.balign 4
	.asciz "BendingAnimationHack"
	.balign 4

.global lbl_803D53E0
lbl_803D53E0:
	# ROM: 0x3D23E0
	.asciz "Error output window"
	.4byte 0

.global lbl_803D53F8
lbl_803D53F8:
	# ROM: 0x3D23F8
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000B
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D5410
lbl_803D5410:
	# ROM: 0x3D2410
	.asciz "??(??)"
	.balign 4

.global lbl_803D5418
lbl_803D5418:
	# ROM: 0x3D2418
	.asciz "??(??)"
	.balign 4

.global lbl_803D5420
lbl_803D5420:
	# ROM: 0x3D2420
	.asciz "??(??)"
	.balign 4

.global lbl_803D5428
lbl_803D5428:
	# ROM: 0x3D2428
	.4byte 0x40400000
	.4byte 0x40E00000
	.4byte 0x41700000

.global lbl_803D5434
lbl_803D5434:
	# ROM: 0x3D2434
	.4byte 0x45174000
	.4byte 0x44DC0000
	.4byte 0x445C0000
	.4byte 0

.global lbl_803D5444
lbl_803D5444:
	# ROM: 0x3D2444
	.4byte 0x803D5644
	.4byte 0x803D564F
	.4byte 0x803D5660
	.4byte 0x803D5670

.global lbl_803D5454
lbl_803D5454:
	# ROM: 0x3D2454
	.4byte 0x803D56BB
	.4byte 0x803D56C3
	.4byte 0x803D5634
	.4byte 0x803D56CB
	.4byte 0x803D56D3
	.4byte 0x803D563C

.global lbl_803D546C
lbl_803D546C:
	# ROM: 0x3D246C
	.4byte 0x0000000A
	.4byte 0x0000000B
	.4byte 0x0000000C

.global lbl_803D5478
lbl_803D5478:
	# ROM: 0x3D2478
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0
	.4byte 0x00000007
	.4byte 0x00000005
	.4byte 0x00000012
	.4byte 0x00000012
	.4byte 0x00000012
	.4byte 0x00000012
	.4byte 0x00000012
	.4byte 0x00000012
	.4byte 0x00000012
	.4byte 0x00000007
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000011
	.4byte 0x00000012
	.4byte 0x00000009
	.4byte 0x00000002
	.4byte 0x0000000B

.global lbl_803D54C8
lbl_803D54C8:
	# ROM: 0x3D24C8
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000005
	.4byte 0x00000005
	.4byte 0x00000005
	.4byte 0x00000008
	.4byte 0x00000008
	.4byte 0x00000008
	.4byte 0x0000000B
	.4byte 0x0000000B
	.4byte 0x0000000B
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803D5570
lbl_803D5570:
	# ROM: 0x3D2570
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x0000000A
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x00000008
	.4byte 0x00000008
	.4byte 0x00000008
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF

.global lbl_803D5618
lbl_803D5618:
	# ROM: 0x3D2618
	.asciz "driller_LCTR1"
	.byte 0x64, 0x72
	.asciz "iller_LCTR2"
	.asciz "L_eye_3"
	.asciz "R_eye_3"
	.asciz "Flame_Head"
	.byte 0x46
	.asciz "lame_HeadLockOn"
	.asciz "Flame_Lshoulder"
	.asciz "Flame_Rshoulder"
	.asciz "Head_LockON_SDK"
	.asciz "Jaw_1"
	.byte 0x43, 0x5F
	.asciz "bottomtooth"
	.asciz "B_headup_additive_body"
	.byte 0x4C
	.asciz "_eye_1"
	.byte 0x4C
	.asciz "_eye_2"
	.byte 0x52
	.asciz "_eye_1"
	.byte 0x52
	.asciz "_eye_2"
	.byte 0x53
	.asciz "phere_LCTR"
	.byte 0x53
	.asciz "keleton_Root"
	.byte 0x52, 0x5F, 0x73
	.asciz "houlder"
	.asciz "R_elbow"
	.asciz "R_wrist"
	.asciz "R_hand_LCTR"
	.asciz "R_leg_LCTR"
	.byte 0x52
	.asciz "_front_1"
	.byte 0x52, 0x5F, 0x66
	.asciz "ront_2"
	.byte 0x52
	.asciz "_front_3"
	.byte 0x46, 0x5F, 0x52
	.asciz "_leg_LCTR"
	.byte 0x52, 0x5F
	.asciz "stinger_1"
	.byte 0x52, 0x5F
	.asciz "stinger_2"
	.byte 0x52, 0x5F
	.asciz "spike_LCTR"
	.byte 0x4C
	.asciz "_shoulder"
	.byte 0x4C, 0x5F
	.asciz "elbow"
	.byte 0x4C, 0x5F
	.asciz "wrist"
	.byte 0x4C, 0x5F
	.asciz "hand_LCTR"
	.byte 0x4C, 0x5F
	.asciz "leg_LCTR"
	.byte 0x4C, 0x5F, 0x66
	.asciz "ront_1"
	.byte 0x4C
	.asciz "_front_2"
	.byte 0x4C, 0x5F, 0x66
	.asciz "ront_3"
	.byte 0x46
	.asciz "_L_leg_LCTR"
	.asciz "L_stinger_1"
	.asciz "L_stinger_2"
	.asciz "L_spike_LCTR"
	.byte 0x42, 0x5F, 0x73
	.asciz "houlder"
	.asciz "B_elbow"
	.asciz "B_wrist"
	.asciz "B_leg_LCTR"
	.byte 0x48
	.asciz "ead_LCTR"
	.byte 0x48, 0x6F, 0x72
	.asciz "n_LCTR"
	.byte 0x48
	.4byte 0x65616400
	.asciz "??(??)"
	.balign 4
	.asciz "ColorChange"
	.asciz "Eyes"
	.byte 0x45, 0x66, 0x66
	.asciz "ect_Electric"
	.balign 4
	.4byte 0

.global lbl_803D5868
lbl_803D5868:
	# ROM: 0x3D2868
	.asciz "??(??)"
	.byte 0x2D
	.asciz "Projectile"
	.balign 4
	.4byte 0

.global lbl_803D5880
lbl_803D5880:
	# ROM: 0x3D2880
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000002

.global lbl_803D5890
lbl_803D5890:
	# ROM: 0x3D2890
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003

.global lbl_803D589C
lbl_803D589C:
	# ROM: 0x3D289C
	.asciz "lockon_target_LCTR"
	.byte 0x45
	.4byte 0x79657300
	.asciz "Head"
	.byte 0x3F, 0x3F, 0x28
	.4byte 0x3F3F2900
	.asciz "Shockwave"
	.byte 0x57, 0x68
	.asciz "ole Body"
	.balign 4

.global lbl_803D58D8
lbl_803D58D8:
	# ROM: 0x3D28D8
	.asciz "??(??)"
	.byte 0x4D
	.asciz "etroid Prime! (Stage 1)"
	.asciz "Metroid Prime"
	.balign 4

.global lbl_803D5908
lbl_803D5908:
	# ROM: 0x3D2908
	.4byte 0x413CCCCD
	.4byte 0x413CCCCD
	.4byte 0x413CCCCD
	.4byte 0x40A00000
	.4byte 0x40C00000
	.4byte 0x40A00000
	.4byte 0x40A00000
	.4byte 0x40C00000
	.4byte 0x413CCCCD
	.4byte 0x41F00000
	.4byte 0x41B4CCCD
	.4byte 0x41200000
	.4byte 0x41200000
	.4byte 0x41200000
	.4byte 0x41200000
	.4byte 0x41200000
	.4byte 0x413CCCCD
	.4byte 0x413CCCCD
	.4byte 0x413CCCCD
	.4byte 0x40A00000
	.4byte 0x40C00000
	.4byte 0x40A00000
	.4byte 0x40A00000
	.4byte 0x40C00000

.global lbl_803D5968
lbl_803D5968:
	# ROM: 0x3D2968
	.asciz "Whole Body"
	.byte 0x3F
	.asciz "?(??)"
	.balign 4
	.4byte 0

.global lbl_803D5980
lbl_803D5980:
	# ROM: 0x3D2980
	.asciz "DUMB_MazeSeeds"
	.byte 0x3F
	.asciz "?(??)"
	.balign 4

.global lbl_803D5998
lbl_803D5998:
	# ROM: 0x3D2998
	.4byte 0x803D5A9D
	.4byte 0x803D5AA5
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x803D5AAC
	.4byte 0x803D5AB4
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x803D5ABC
	.4byte 0x803D5AC4
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x803D5ACC
	.4byte 0x803D5AAC
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x803D5AD3
	.4byte 0x803D5ABC
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x803D5ADA
	.4byte 0x803D5AE2
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x803D5AEA
	.4byte 0x803D5AF2
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x803D5AE2
	.4byte 0x803D5AFA
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x803D5AF2
	.4byte 0x803D5B04
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x803D5AFA
	.4byte 0x803D5B0E
	.4byte 0x40000000
	.4byte 0x40000000
	.4byte 0x40000000
	.4byte 0x803D5B04
	.4byte 0x803D5B1C
	.4byte 0x40000000
	.4byte 0x40000000
	.4byte 0x40000000

.global lbl_803D5A74
lbl_803D5A74:
	# ROM: 0x3D2A74
	.asciz "grenadeLauncher2_LCTR"
	.byte 0x6C, 0x6F
	.asciz "ckon_target_LCTR"
	.byte 0x53, 0x70, 0x69
	.asciz "ne_2"
	.byte 0x43, 0x6F, 0x6C
	.4byte 0x6C617200
	.asciz "R_ankle"
	.asciz "R_toe_1"
	.asciz "L_ankle"
	.asciz "L_toe_1"
	.asciz "R_knee"
	.byte 0x4C
	.asciz "_knee"
	.byte 0x52, 0x5F
	.asciz "elbow"
	.byte 0x52, 0x5F
	.asciz "wrist"
	.byte 0x4C, 0x5F
	.asciz "elbow"
	.byte 0x4C, 0x5F
	.asciz "wrist"
	.byte 0x52, 0x5F
	.asciz "index_1"
	.asciz "L_index_1"
	.byte 0x52, 0x5F
	.asciz "index_3_SDK"
	.asciz "L_index_3_SDK"
	.byte 0x4F, 0x6D
	.asciz "ega Pirate Flash"
	.byte 0x3F, 0x3F, 0x28
	.4byte 0x3F3F2900
	.asciz "Omega_Pirate_OBB_"
	.byte 0x4A, 0x75
	.asciz "mpBack"
	.balign 4
	.asciz "root"
	.byte 0x54, 0x68, 0x65
	.asciz "rmal_Spot_2"
	.4byte 0

.global lbl_803D5B78
lbl_803D5B78:
	# ROM: 0x3D2B78
	.asciz "??(??)"
	.balign 4

.global lbl_803D5B80
lbl_803D5B80:
	# ROM: 0x3D2B80
	.asciz "NESemuP.rel"

.global lbl_803D5B8C
lbl_803D5B8C:
	# ROM: 0x3D2B8C
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D5BA4
lbl_803D5BA4:
	# ROM: 0x3D2BA4
	.asciz "??(??)"
	.balign 4
	.4byte 0

.global lbl_803D5BB0
lbl_803D5BB0:
	# ROM: 0x3D2BB0
	.asciz "Electricity_LCTR"
	.byte 0x50, 0x61, 0x74
	.4byte 0x726F6C00
	.asciz "??(??)"
	.balign 4

.global lbl_803D5BD0
lbl_803D5BD0:
	# ROM: 0x3D2BD0
	.4byte 0x3F800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0
	.4byte 0x3F800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3F800000

.global lbl_803D5C00
lbl_803D5C00:
	# ROM: 0x3D2C00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3F800000
	.4byte 0
	.4byte 0
	.4byte 0x3F800000
	.4byte 0xBD800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3F800000

.global lbl_803D5C30
lbl_803D5C30:
	# ROM: 0x3D2C30
	.asciz "??(??)"
	.balign 4

.global lbl_803D5C38
lbl_803D5C38:
	# ROM: 0x3D2C38
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803D5C48
lbl_803D5C48:
	# ROM: 0x3D2C48
	.asciz "slideshow"
	.byte 0x47, 0x61
	.asciz "llery"
	.byte 0x47, 0x61
	.asciz "lleryAssets_DGRP"
	.byte 0x54, 0x58, 0x54
	.asciz "R_GalleryTag"
	.byte 0x43, 0x4D, 0x44
	.asciz "L_GalleryBorder"
	.asciz "Audio/frontend_1.rsf"
	.byte 0x53, 0x54, 0x52
	.asciz "G_SlideShow_Unlock1_"
	.byte 0x53, 0x54, 0x52
	.asciz "G_SlideShow_Unlock2_"
	.byte 0x25, 0x64, 0x2F
	.4byte 0x25640025
	.asciz "sSI,0.6,1.0,%8.8X%s"
	.4byte 0x20202000
	.asciz "%s%8.8X%s"
	.byte 0x20, 0x00
	.4byte 0x20200025
	.asciz "sSI,1.0,1.0,%8.8X%s"
	.asciz "??(??)"
	.byte 0x31
	.4byte 0x00320025
	.asciz "s%02d_DGRP"
	.byte 0x25
	.asciz "s%02d"
	.byte 0x25, 0x73
	.asciz "_%02d_%03d"
	.byte 0x53
	.asciz "lideShow"
	.balign 4

.global lbl_803D5D50
lbl_803D5D50:
	# ROM: 0x3D2D50
	.4byte 0x803D5DB0
	.4byte 0x803D5DBC
	.4byte 0x803D5DC8
	.4byte 0x803D5DD4
	.4byte 0x803D5DE0
	.4byte 0x803D5DEC
	.4byte 0x803D5DF8
	.4byte 0x803D5E04
	.4byte 0x803D5E10
	.4byte 0x803D5E1C
	.4byte 0x803D5E29
	.4byte 0x803D5E36

.global lbl_803D5D80
lbl_803D5D80:
	# ROM: 0x3D2D80
	.4byte 0x32C9DDCE
	.4byte 0xB45DAF60
	.4byte 0x7F017CC5
	.4byte 0x62044C7D
	.4byte 0xA9589FD8
	.4byte 0x2FCCED76
	.4byte 0xE4903ED3
	.4byte 0x15C68C06
	.4byte 0xDE9A5FA3
	.4byte 0xFBBE9D9A
	.4byte 0x30E24E3F
	.4byte 0xB6763C91

.global lbl_803D5DB0
lbl_803D5DB0:
	# ROM: 0x3D2DB0
	.asciz "CMDL_Piece1"
	.asciz "CMDL_Piece2"
	.asciz "CMDL_Piece3"
	.asciz "CMDL_Piece4"
	.asciz "CMDL_Piece5"
	.asciz "CMDL_Piece6"
	.asciz "CMDL_Piece7"
	.asciz "CMDL_Piece8"
	.asciz "CMDL_Piece9"
	.asciz "CMDL_Piece10"
	.byte 0x43, 0x4D, 0x44
	.asciz "L_Piece11"
	.byte 0x43, 0x4D
	.asciz "DL_Piece12"
	.byte 0x3F
	.asciz "?(??)"
	.balign 4
	.4byte 0

.global lbl_803D5E50
lbl_803D5E50:
	# ROM: 0x3D2E50
	.4byte 0x3F800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0
	.4byte 0x3F800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3F800000

.global lbl_803D5E80
lbl_803D5E80:
	# ROM: 0x3D2E80
	.asciz "Pre front-end window"
	.balign 4

.global lbl_803D5E98
lbl_803D5E98:
	# ROM: 0x3D2E98
	.asciz "CMDL_GameCube"
	.byte 0x3F, 0x3F
	.asciz "(??)"
	.balign 4

.global lbl_803D5EB0
lbl_803D5EB0:
	# ROM: 0x3D2EB0
	.asciz "??(??)"
	.balign 4

.global lbl_803D5EB8
lbl_803D5EB8:
	# ROM: 0x3D2EB8
	.asciz "??(??)"
	.byte 0x50
	.asciz "lasmaElectricFx"
	.asciz "PlasmaVisorFx"
	.byte 0x53, 0x75
	.asciz "sDamage"

.global lbl_803D5EE8
lbl_803D5EE8:
	# ROM: 0x3D2EE8
	.asciz "??(??)"
	.balign 4

.global lbl_803D5EF0
lbl_803D5EF0:
	# ROM: 0x3D2EF0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000004
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000008
	.4byte 0x0000000A
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000008
	.4byte 0x0000000A
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000009
	.4byte 0x0000000B
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000009
	.4byte 0x0000000C
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000008
	.4byte 0x0000000D
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000008
	.4byte 0x0000000E
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000009
	.4byte 0x0000000F
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000009
	.4byte 0x0000000F

.global lbl_803D6008
lbl_803D6008:
	# ROM: 0x3D3008
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0

.global lbl_803D6018
lbl_803D6018:
	# ROM: 0x3D3018
	.asciz "??(??)"
	.balign 4

.global lbl_803D6020
lbl_803D6020:
	# ROM: 0x3D3020
	.asciz "??(??)"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803D6038
lbl_803D6038:
	# ROM: 0x3D3038
	.4byte 0x02000000
	.4byte 0x00020000
	.4byte 0x00000200
	.4byte 0x00020000
	.4byte 0x02020000
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00040001
	.4byte 0x00010005
	.4byte 0x00050004
	.4byte 0x00040000
	.4byte 0x00000001
	.4byte 0x00070002
	.4byte 0x00020006
	.4byte 0x00060007
	.4byte 0x00070003
	.4byte 0x00030002
	.4byte 0x00060000
	.4byte 0x00040006
	.4byte 0x00020000
	.4byte 0x00050003
	.4byte 0x00070005
	.4byte 0x00010003
	.4byte 0x00060005
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0x00020000
	.4byte 0x00030004
	.4byte 0x00050006
	.4byte 0x00070005
	.4byte 0x00080009
	.4byte 0x000A0003
	.4byte 0x000B000A
	.4byte 0x0006000C
	.4byte 0x000D0008
	.4byte 0x000E000D
	.4byte 0x0001000F
	.4byte 0x0010000E
	.4byte 0x00070010
	.4byte 0x000B0002
	.4byte 0x0011000F
	.4byte 0x00040011
	.4byte 0x000C0009

.global lbl_803D60E8
lbl_803D60E8:
	# ROM: 0x3D30E8
	.asciz "??(??)"
	.balign 4

.global lbl_803D60F0
lbl_803D60F0:
	# ROM: 0x3D30F0
	.asciz "CCollidableOBBTreeGroup"
	.asciz "??(??)"
	.balign 4

.global lbl_803D6110
lbl_803D6110:
	# ROM: 0x3D3110
	.asciz "??(??)"
	.balign 4

.global lbl_803D6118
lbl_803D6118:
	# ROM: 0x3D3118
	.4byte 0
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0x00000008

.global lbl_803D6138
lbl_803D6138:
	# ROM: 0x3D3138
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0
	.4byte 0x00000001

.global lbl_803D6188
lbl_803D6188:
	# ROM: 0x3D3188
	.asciz "??(??)"
	.balign 4

.global lbl_803D6190
lbl_803D6190:
	# ROM: 0x3D3190
	.asciz "??(??)"
	.balign 4

.global lbl_803D6198
lbl_803D6198:
	# ROM: 0x3D3198
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x00000004
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x00000005
	.4byte 0x00000009
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0000000B
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001

.global lbl_803D6218
lbl_803D6218:
	# ROM: 0x3D3218
	.4byte 0x4E4F4450
	.4byte 0x44454653
	.4byte 0x43525453
	.4byte 0x4D544C53
	.4byte 0x47524153
	.4byte 0x49434545
	.4byte 0x474F4F4F
	.4byte 0x574F4453
	.4byte 0x57415452
	.4byte 0x314D5544
	.4byte 0x314C4156
	.4byte 0x3153414E
	.4byte 0x3150524A
	.4byte 0x44434852
	.4byte 0x44434853
	.4byte 0x44435348
	.4byte 0x44454E4D
	.4byte 0x44455350
	.4byte 0x44455348
	.4byte 0x42544C45
	.4byte 0x57415350
	.4byte 0x54414C50
	.4byte 0x5054474D
	.4byte 0x53504952
	.4byte 0x46504952
	.4byte 0x46464C45
	.4byte 0x50415241
	.4byte 0x424D4F4E
	.4byte 0x42464C52
	.4byte 0x50424F53
	.4byte 0x49424F53
	.4byte 0x31535641
	.4byte 0x31525052
	.4byte 0x314D5452
	.4byte 0x31504453
	.4byte 0x31464C42
	.4byte 0x3144524E
	.4byte 0x314D5245
	.4byte 0x43484F5A
	.4byte 0x4A5A4150
	.4byte 0x31495345
	.4byte 0x31425345
	.4byte 0x31415442
	.4byte 0x31415441
	.4byte 0x42545350
	.4byte 0x57575350
	.4byte 0x54415350
	.4byte 0x54475350
	.4byte 0x53505350
	.4byte 0x46505350
	.4byte 0x46465350
	.4byte 0x50535350
	.4byte 0x424D5350
	.4byte 0x42465350
	.4byte 0x50425350
	.4byte 0x49425350
	.4byte 0x32535641
	.4byte 0x32525052
	.4byte 0x324D5452
	.4byte 0x32504453
	.4byte 0x32464C42
	.4byte 0x3244524E
	.4byte 0x324D5245
	.4byte 0x43485350
	.4byte 0x4A5A5350
	.4byte 0x33495345
	.4byte 0x33425345
	.4byte 0x33415442
	.4byte 0x33415441
	.4byte 0x42545348
	.4byte 0x57575348
	.4byte 0x54415348
	.4byte 0x54475348
	.4byte 0x53505348
	.4byte 0x46505348
	.4byte 0x46465348
	.4byte 0x50535348
	.4byte 0x424D5348
	.4byte 0x42465348
	.4byte 0x50425348
	.4byte 0x49425348
	.4byte 0x33535641
	.4byte 0x33525052
	.4byte 0x334D5452
	.4byte 0x33504453
	.4byte 0x33464C42
	.4byte 0x3344524E
	.4byte 0x334D5245
	.4byte 0x43485348
	.4byte 0x4A5A5348
	.4byte 0x35495345
	.4byte 0x35425345
	.4byte 0x35415442
	.4byte 0x35415441

.global lbl_803D6390
lbl_803D6390:
	# ROM: 0x3D3390
	.4byte 0x4E534658
	.4byte 0x44534658
	.4byte 0x43534658
	.4byte 0x4D534658
	.4byte 0x47524658
	.4byte 0x49434658
	.4byte 0x474F4658
	.4byte 0x57534658
	.4byte 0x57544658
	.4byte 0x324D5544
	.4byte 0x324C4156
	.4byte 0x3253414E
	.4byte 0x3250524A
	.4byte 0x44434658
	.4byte 0x44534658
	.4byte 0x44534858
	.4byte 0x44454658
	.4byte 0x45534658
	.4byte 0x53484658
	.4byte 0x42454658
	.4byte 0x57574658
	.4byte 0x54414658
	.4byte 0x47544658
	.4byte 0x53504658
	.4byte 0x46504658
	.4byte 0x46464658
	.4byte 0x50414658
	.4byte 0x424D4658
	.4byte 0x42464658
	.4byte 0x50424658
	.4byte 0x49424658
	.4byte 0x34535641
	.4byte 0x34525052
	.4byte 0x344D5452
	.4byte 0x34504453
	.4byte 0x34464C42
	.4byte 0x3444524E
	.4byte 0x344D5245
	.4byte 0x435A4658
	.4byte 0x4A5A4153
	.4byte 0x32495345
	.4byte 0x32425345
	.4byte 0x32415442
	.4byte 0x32415441
	.4byte 0x42534658
	.4byte 0x57534658
	.4byte 0x54534658
	.4byte 0x47534658
	.4byte 0x53534658
	.4byte 0x46534658
	.4byte 0x53464658
	.4byte 0x50534658
	.4byte 0x4D534658
	.4byte 0x53424658
	.4byte 0x50425358
	.4byte 0x49425358
	.4byte 0x35535641
	.4byte 0x35525052
	.4byte 0x354D5452
	.4byte 0x35504453
	.4byte 0x35464C42
	.4byte 0x3544524E
	.4byte 0x354D5245
	.4byte 0x43534658
	.4byte 0x4A5A5053
	.4byte 0x34495345
	.4byte 0x34425345
	.4byte 0x34415442
	.4byte 0x34415441
	.4byte 0x42484658
	.4byte 0x57484658
	.4byte 0x54484658
	.4byte 0x47484658
	.4byte 0x53484658
	.4byte 0x46484658
	.4byte 0x48464658
	.4byte 0x50484658
	.4byte 0x4D484658
	.4byte 0x48424658
	.4byte 0x50424858
	.4byte 0x49424858
	.4byte 0x36535641
	.4byte 0x36525052
	.4byte 0x364D5452
	.4byte 0x36504453
	.4byte 0x36464C42
	.4byte 0x3644524E
	.4byte 0x364D5245
	.4byte 0x43484658
	.4byte 0x4A5A4853
	.4byte 0x36495345
	.4byte 0x36425345
	.4byte 0x36415442
	.4byte 0x36415441

.global lbl_803D6508
lbl_803D6508:
	# ROM: 0x3D3508
	.4byte 0x4E44434C
	.4byte 0x4444434C
	.4byte 0x434F444C
	.4byte 0x4D45444C
	.4byte 0x4752444C
	.4byte 0x4943444C
	.4byte 0x474F444C
	.4byte 0x574F444C
	.4byte 0x5754444C
	.4byte 0x334D5544
	.4byte 0x334C4156
	.4byte 0x3353414E
	.4byte 0x4348444C
	.4byte 0x454E444C

.global lbl_803D6540
lbl_803D6540:
	# ROM: 0x3D3540
	.asciz "??(??)"
	.balign 4

.global lbl_803D6548
lbl_803D6548:
	# ROM: 0x3D3548
	.asciz "??(??)"
	.balign 4

.global lbl_803D6550
lbl_803D6550:
	# ROM: 0x3D3550
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000B
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D6570
lbl_803D6570:
	# ROM: 0x3D3570
	.4byte 0xBF800000
	.4byte 0xBF800000
	.4byte 0xBF800000
	.4byte 0xBF800000

.global lbl_803D6580
lbl_803D6580:
	# ROM: 0x3D3580
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x0000000B
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D65A0
lbl_803D65A0:
	# ROM: 0x3D35A0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803D65B8
lbl_803D65B8:
	# ROM: 0x3D35B8
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x0000000E
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803D65FC
lbl_803D65FC:
	# ROM: 0x3D35FC
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0x00000001

.global lbl_803D6614
lbl_803D6614:
	# ROM: 0x3D3614
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D6624
lbl_803D6624:
	# ROM: 0x3D3624
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D663C
lbl_803D663C:
	# ROM: 0x3D363C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803D6654
lbl_803D6654:
	# ROM: 0x3D3654
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000001
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x00000002
	.4byte 0x00000006
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D6704
lbl_803D6704:
	# ROM: 0x3D3704
	.4byte 0x3F000000
	.4byte 0
	.4byte 0
	.4byte 0x3F000000
	.4byte 0
	.4byte 0
	.4byte 0x3F000000
	.4byte 0x3F000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3F800000

.global lbl_803D6734
lbl_803D6734:
	# ROM: 0x3D3734
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3F800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3F800000

.global lbl_803D6764
lbl_803D6764:
	# ROM: 0x3D3764
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3F800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3F800000

.global lbl_803D6794
lbl_803D6794:
	# ROM: 0x3D3794
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000B
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D67B4
lbl_803D67B4:
	# ROM: 0x3D37B4
	.4byte 0xBF800000
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0xBF800000
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0xBF800000
	.4byte 0
	.4byte 0x3F800000
	.4byte 0
	.4byte 0
	.4byte 0x3F800000
	.4byte 0
	.4byte 0xBF800000

.global lbl_803D67F4
lbl_803D67F4:
	# ROM: 0x3D37F4
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000B
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D6814
lbl_803D6814:
	# ROM: 0x3D3814
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803D682C
lbl_803D682C:
	# ROM: 0x3D382C
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000B
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x0000000E
	.4byte 0x00000001
	.4byte 0x0000000F
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D685C
lbl_803D685C:
	# ROM: 0x3D385C
	.asciz "??(??)"
	.byte 0x54
	.asciz "XTR_ThermoPalette"
	.balign 4

.global lbl_803D6878
lbl_803D6878:
	# ROM: 0x3D3878
	.asciz "??(??)"
	.balign 4

.global lbl_803D6880
lbl_803D6880:
	# ROM: 0x3D3880
	.asciz "??(??)"
	.balign 4

.global lbl_803D6888
lbl_803D6888:
	# ROM: 0x3D3888
	.asciz "??(??)"
	.balign 4

.global lbl_803D6890
lbl_803D6890:
	# ROM: 0x3D3890
	.asciz "??(??)"
	.balign 4

.global lbl_803D6898
lbl_803D6898:
	# ROM: 0x3D3898
	.asciz "??(??)"
	.balign 4

.global lbl_803D68A0
lbl_803D68A0:
	# ROM: 0x3D38A0
	.asciz "??(??)"
	.balign 4

.global lbl_803D68A8
lbl_803D68A8:
	# ROM: 0x3D38A8
	.asciz "??(??)"
	.balign 4

.global lbl_803D68B0
lbl_803D68B0:
	# ROM: 0x3D38B0
	.asciz "??(??)"
	.balign 4

.global lbl_803D68B8
lbl_803D68B8:
	# ROM: 0x3D38B8
	.asciz "??(??)"
	.balign 4

.global lbl_803D68C0
lbl_803D68C0:
	# ROM: 0x3D38C0
	.asciz "??(??)"
	.balign 4

.global lbl_803D68C8
lbl_803D68C8:
	# ROM: 0x3D38C8
	.asciz "??(??)"
	.balign 4

.global lbl_803D68D0
lbl_803D68D0:
	# ROM: 0x3D38D0
	.asciz "??(??)"
	.balign 4

.global lbl_803D68D8
lbl_803D68D8:
	# ROM: 0x3D38D8
	.asciz "??(??)"
	.balign 4

.global lbl_803D68E0
lbl_803D68E0:
	# ROM: 0x3D38E0
	.asciz "??(??)"
	.byte 0x26
	.asciz "font=%8.8X;"
	.4byte 0

.global lbl_803D68F8
lbl_803D68F8:
	# ROM: 0x3D38F8
	.asciz "Warning: Discarding useless worker id.  Parent is not a compound widget."
	.byte 0x3F, 0x3F, 0x28
	.4byte 0x3F3F2900

.global lbl_803D6948
lbl_803D6948:
	# ROM: 0x3D3948
	.asciz "not found"
	.byte 0x6B, 0x47
	.asciz "SYS_DummyWidgetID"
	.byte 0x6B, 0x47
	.asciz "SYS_HeadWidgetID"
	.byte 0x6B, 0x47, 0x53
	.asciz "YS_DefaultCameraID"
	.byte 0x6B
	.asciz "GSYS_DefaultLightID"
	.asciz "??(??)"
	.balign 4
	.4byte 0

.global lbl_803D69B0
lbl_803D69B0:
	# ROM: 0x3D39B0
	.asciz "TextureId"
	.byte 0x3F, 0x3F
	.asciz "(??)"
	.balign 4
	.4byte 0

.global lbl_803D69C8
lbl_803D69C8:
	# ROM: 0x3D39C8
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D69E0
lbl_803D69E0:
	# ROM: 0x3D39E0
	.asciz "??(??)"
	.balign 4

.global lbl_803D69E8
lbl_803D69E8:
	# ROM: 0x3D39E8
	.asciz "CCollidableAABox"
	.balign 4
	.4byte 0

.global lbl_803D6A00
lbl_803D6A00:
	# ROM: 0x3D3A00
	.asciz "CCollidableCollisionSurface"
	.4byte 0

.global lbl_803D6A20
lbl_803D6A20:
	# ROM: 0x3D3A20
	.asciz "CCollidableAABox"
	.byte 0x43, 0x43, 0x6F
	.asciz "llidableSphere"
	.balign 4
	.4byte 0

.global lbl_803D6A48
lbl_803D6A48:
	# ROM: 0x3D3A48
	.asciz "??(??)"
	.balign 4

.global lbl_803D6A50
lbl_803D6A50:
	# ROM: 0x3D3A50
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000002

.global lbl_803D6A5C
lbl_803D6A5C:
	# ROM: 0x3D3A5C
	.4byte 0xBF800000
	.4byte 0xBF800000
	.4byte 0xBF800000
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0

.global lbl_803D6A78
lbl_803D6A78:
	# ROM: 0x3D3A78
	.4byte 0xBFF00000
	.4byte 0
	.4byte 0xBFF00000
	.4byte 0
	.4byte 0xBFF00000
	.4byte 0

.global lbl_803D6A90
lbl_803D6A90:
	# ROM: 0x3D3A90
	.asciz "CCollidableSphere"
	.balign 4
	.4byte 0

.global lbl_803D6AA8
lbl_803D6AA8:
	# ROM: 0x3D3AA8
	.asciz "UnknownType"
	.4byte 0

.global lbl_803D6AB8
lbl_803D6AB8:
	# ROM: 0x3D3AB8
	.asciz "Unhandled exception %d - Production\n"
	.byte 0x25, 0x73, 0x0A
	.4byte 0x002D2D2D
	.asciz "---------------------- Context 0x%08x -------------------------\n"
	.byte 0x72, 0x25, 0x2D
	.asciz "2d  = 0x%08x (%14d)  r%-2d  = 0x%08x (%14d)\n"
	.byte 0x4C, 0x52, 0x20
	.asciz "  = 0x%08x                   CR   = 0x%08x\n"
	.asciz "SRR0 = 0x%08x                   SRR1 = 0x%08x\n"
	.byte 0x44
	.asciz "SISR= 0x%08x                   DAR  = 0x%08x\n"
	.byte 0x20, 0x2D
	.asciz " Production\n"
	.byte 0x45, 0x78, 0x63
	.asciz "eption %d - Production\n"
	.asciz "IP: 0x%8.8x  Mem: 0x%8.8x"
	.byte 0x20, 0x2D
	.4byte 0x20256400
	.4byte 0x0A0A000A
	.asciz "Address:      Back Chain    LR Save\n"
	.byte 0x30, 0x78, 0x25
	.asciz "08x:   0x%08x    0x%08x\n"
	.byte 0x30, 0x78, 0x25
	.asciz "08x: 0x%08x 0x%08x\n"
	.asciz "0x%08x:   BAD PTR\n"
	.byte 0x30
	.asciz "x%08x: BAD PTR\n"
	.asciz "\nInstruction at 0x%x (read from SRR0) attempted to access invalid address 0x%x (read from DAR)\n"
	.4byte 0x2573000A
	.4byte 0x00307825
	.asciz "08x: 0x%08x 0x%08x"
	.balign 4

.global lbl_803D6D28
lbl_803D6D28:
	# ROM: 0x3D3D28
	.asciz "??(??)"
	.balign 4

.global lbl_803D6D30
lbl_803D6D30:
	# ROM: 0x3D3D30
	.asciz "??(??)"
	.balign 4

.global lbl_803D6D38
lbl_803D6D38:
	# ROM: 0x3D3D38
	.4byte 0x003F3F28
	.4byte 0x3F3F2900

.global lbl_803D6D40
lbl_803D6D40:
	# ROM: 0x3D3D40
	.4byte 0x003F3F28
	.4byte 0x3F3F2900

.global lbl_803D6D48
lbl_803D6D48:
	# ROM: 0x3D3D48
	.asciz "??(??)"
	.balign 4

.global lbl_803D6D50
lbl_803D6D50:
	# ROM: 0x3D3D50
	.asciz "??(??)"
	.balign 4

.global lbl_803D6D58
lbl_803D6D58:
	# ROM: 0x3D3D58
	.asciz "??(??)"
	.balign 4

.global lbl_803D6D60
lbl_803D6D60:
	# ROM: 0x3D3D60
	.asciz "??(??)"
	.balign 4

.global lbl_803D6D68
lbl_803D6D68:
	# ROM: 0x3D3D68
	.asciz "??(??)"
	.balign 4

.global lbl_803D6D70
lbl_803D6D70:
	# ROM: 0x3D3D70
	.asciz "??(??)"
	.balign 4

.global lbl_803D6D78
lbl_803D6D78:
	# ROM: 0x3D3D78
	.asciz "??(??)"
	.balign 4

.global lbl_803D6D80
lbl_803D6D80:
	# ROM: 0x3D3D80
	.asciz "??(??)"
	.balign 4

.global lbl_803D6D88
lbl_803D6D88:
	# ROM: 0x3D3D88
	.asciz "??(??)"
	.balign 4

.global lbl_803D6D90
lbl_803D6D90:
	# ROM: 0x3D3D90
	.asciz "??(??)"
	.balign 4

.global lbl_803D6D98
lbl_803D6D98:
	# ROM: 0x3D3D98
	.asciz "??(??)"
	.balign 4

.global lbl_803D6DA0
lbl_803D6DA0:
	# ROM: 0x3D3DA0
	.asciz "??(??)"
	.balign 4

.global lbl_803D6DA8
lbl_803D6DA8:
	# ROM: 0x3D3DA8
	.asciz "??(??)"
	.balign 4

.global lbl_803D6DB0
lbl_803D6DB0:
	# ROM: 0x3D3DB0
	.asciz "??(??)"
	.balign 4

.global lbl_803D6DB8
lbl_803D6DB8:
	# ROM: 0x3D3DB8
	.asciz "??(??)"
	.balign 4
	.asciz "root"
	.balign 4

.global lbl_803D6DC8
lbl_803D6DC8:
	# ROM: 0x3D3DC8
	.asciz "??(??)"
	.balign 4

.global lbl_803D6DD0
lbl_803D6DD0:
	# ROM: 0x3D3DD0
	.asciz "??(??)"
	.balign 4

.global lbl_803D6DD8
lbl_803D6DD8:
	# ROM: 0x3D3DD8
	.asciz "??(??)"
	.balign 4

.global lbl_803D6DE0
lbl_803D6DE0:
	# ROM: 0x3D3DE0
	.asciz "??(??)"
	.balign 4

.global lbl_803D6DE8
lbl_803D6DE8:
	# ROM: 0x3D3DE8
	.4byte 0x003F3F28
	.4byte 0x3F3F2900

.global lbl_803D6DF0
lbl_803D6DF0:
	# ROM: 0x3D3DF0
	.asciz "??(??)"
	.balign 4

.global lbl_803D6DF8
lbl_803D6DF8:
	# ROM: 0x3D3DF8
	.4byte 0x003F3F28
	.4byte 0x3F3F2900

.global lbl_803D6E00
lbl_803D6E00:
	# ROM: 0x3D3E00
	.asciz "??(??)"
	.balign 4

.global lbl_803D6E08
lbl_803D6E08:
	# ROM: 0x3D3E08
	.4byte 0x003F3F28
	.4byte 0x3F3F2900

.global lbl_803D6E10
lbl_803D6E10:
	# ROM: 0x3D3E10
	.4byte 0x003F3F28
	.4byte 0x3F3F2900
	.asciz "Loop"
	.balign 4

.global lbl_803D6E20
lbl_803D6E20:
	# ROM: 0x3D3E20
	.asciz "??(??)"
	.balign 4

.global lbl_803D6E28
lbl_803D6E28:
	# ROM: 0x3D3E28
	.asciz "??(??)"
	.balign 4

.global lbl_803D6E30
lbl_803D6E30:
	# ROM: 0x3D3E30
	.asciz "??(??)"
	.balign 4

.global lbl_803D6E38
lbl_803D6E38:
	# ROM: 0x3D3E38
	.asciz "??(??)"
	.balign 4

.global lbl_803D6E40
lbl_803D6E40:
	# ROM: 0x3D3E40
	.asciz "??(??)"
	.balign 4

.global lbl_803D6E48
lbl_803D6E48:
	# ROM: 0x3D3E48
	.asciz "??(??)"
	.balign 4

.global lbl_803D6E50
lbl_803D6E50:
	# ROM: 0x3D3E50
	.asciz "??(??)"
	.balign 4

.global lbl_803D6E58
lbl_803D6E58:
	# ROM: 0x3D3E58
	.asciz "??(??)"
	.balign 4

.global lbl_803D6E60
lbl_803D6E60:
	# ROM: 0x3D3E60
	.asciz "??(??)"
	.balign 4

.global lbl_803D6E68
lbl_803D6E68:
	# ROM: 0x3D3E68
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D6E80
lbl_803D6E80:
	# ROM: 0x3D3E80
	.asciz "??(??)"
	.balign 4

.global lbl_803D6E88
lbl_803D6E88:
	# ROM: 0x3D3E88
	.asciz "??(??)"
	.balign 4

.global lbl_803D6E90
lbl_803D6E90:
	# ROM: 0x3D3E90
	.asciz "??(??)"
	.balign 4

.global lbl_803D6E98
lbl_803D6E98:
	# ROM: 0x3D3E98
	.asciz "??(??)"
	.balign 4

.global lbl_803D6EA0
lbl_803D6EA0:
	# ROM: 0x3D3EA0
	.asciz "%02x%02x%02x%02x"
	.byte 0x3F, 0x3F, 0x28
	.4byte 0x3F3F2900
	.4byte 0x2C004100
	.4byte 0x53410053
	.4byte 0x49000000
	.4byte 0

.global lbl_803D6EC8
lbl_803D6EC8:
	# ROM: 0x3D3EC8
	.4byte 0x00210000
	.4byte 0x00000001
	.4byte 0x00290000
	.4byte 0x00000001
	.4byte 0x002C0000
	.4byte 0x00000001
	.4byte 0x002D0000
	.4byte 0x00000001
	.4byte 0x002E0000
	.4byte 0x00000001
	.4byte 0x003A0000
	.4byte 0x00000001
	.4byte 0x003B0000
	.4byte 0x00000001
	.4byte 0x003F0000
	.4byte 0x00000001
	.4byte 0x005D0000
	.4byte 0x00000001
	.4byte 0x007D0000
	.4byte 0x00000001
	.4byte 0x00920000
	.4byte 0x00000001
	.4byte 0x00940000
	.4byte 0x00000001
	.4byte 0x00BB0000
	.4byte 0x00000001
	.4byte 0x30010000
	.4byte 0x00000001
	.4byte 0x30020000
	.4byte 0x00000001
	.4byte 0x30050000
	.4byte 0x00000001
	.4byte 0x300D0000
	.4byte 0x00000001
	.4byte 0x300F0000
	.4byte 0x00000001
	.4byte 0x30110000
	.4byte 0x00000001
	.4byte 0x30150000
	.4byte 0x00000001
	.4byte 0x30170000
	.4byte 0x00000001
	.4byte 0x30190000
	.4byte 0x00000001
	.4byte 0x301B0000
	.4byte 0x00000001
	.4byte 0x301C0000
	.4byte 0x00000003
	.4byte 0x301E0000
	.4byte 0x00000001
	.4byte 0x302B0000
	.4byte 0x00000003
	.4byte 0x30410000
	.4byte 0x00000002
	.4byte 0x30430000
	.4byte 0x00000002
	.4byte 0x30450000
	.4byte 0x00000002
	.4byte 0x30470000
	.4byte 0x00000002
	.4byte 0x30490000
	.4byte 0x00000002
	.4byte 0x30630000
	.4byte 0x00000002
	.4byte 0x30830000
	.4byte 0x00000002
	.4byte 0x30850000
	.4byte 0x00000002
	.4byte 0x30870000
	.4byte 0x00000002
	.4byte 0x308E0000
	.4byte 0x00000002
	.4byte 0x309D0000
	.4byte 0x00000003
	.4byte 0x309E0000
	.4byte 0x00000003
	.4byte 0x30A10000
	.4byte 0x00000002
	.4byte 0x30A30000
	.4byte 0x00000002
	.4byte 0x30A50000
	.4byte 0x00000002
	.4byte 0x30A70000
	.4byte 0x00000002
	.4byte 0x30A90000
	.4byte 0x00000002
	.4byte 0x30C30000
	.4byte 0x00000002
	.4byte 0x30E30000
	.4byte 0x00000002
	.4byte 0x30E50000
	.4byte 0x00000002
	.4byte 0x30E70000
	.4byte 0x00000002
	.4byte 0x30EE0000
	.4byte 0x00000002
	.4byte 0x30F50000
	.4byte 0x00000002
	.4byte 0x30F60000
	.4byte 0x00000002
	.4byte 0x30FC0000
	.4byte 0x00000002
	.4byte 0x30FD0000
	.4byte 0x00000003
	.4byte 0x30FE0000
	.4byte 0x00000003
	.4byte 0xFF010000
	.4byte 0x00000001
	.4byte 0xFF050000
	.4byte 0x00000003
	.4byte 0xFF090000
	.4byte 0x00000001
	.4byte 0xFF0D0000
	.4byte 0x00000001
	.4byte 0xFF3D0000
	.4byte 0x00000001
	.4byte 0xFF5D0000
	.4byte 0x00000001
	.4byte 0xFF610000
	.4byte 0x00000001
	.4byte 0xFF630000
	.4byte 0x00000001
	.4byte 0xFF640000
	.4byte 0x00000001
	.4byte 0xFF1F0000
	.4byte 0x00000001

.global lbl_803D70C0
lbl_803D70C0:
	# ROM: 0x3D40C0
	.4byte 0x00230000
	.4byte 0x00000002
	.4byte 0x00240000
	.4byte 0x00000002
	.4byte 0x00280000
	.4byte 0x00000001
	.4byte 0x00400000
	.4byte 0x00000002
	.4byte 0x00420000
	.4byte 0x00000004
	.4byte 0x00430000
	.4byte 0x00000004
	.4byte 0x00440000
	.4byte 0x00000004
	.4byte 0x00460000
	.4byte 0x00000004
	.4byte 0x00470000
	.4byte 0x00000004
	.4byte 0x00480000
	.4byte 0x00000004
	.4byte 0x004A0000
	.4byte 0x00000004
	.4byte 0x004B0000
	.4byte 0x00000004
	.4byte 0x004C0000
	.4byte 0x00000004
	.4byte 0x004D0000
	.4byte 0x00000004
	.4byte 0x004E0000
	.4byte 0x00000004
	.4byte 0x00500000
	.4byte 0x00000004
	.4byte 0x00510000
	.4byte 0x00000004
	.4byte 0x00520000
	.4byte 0x00000004
	.4byte 0x00530000
	.4byte 0x00000004
	.4byte 0x00540000
	.4byte 0x00000004
	.4byte 0x00560000
	.4byte 0x00000004
	.4byte 0x00570000
	.4byte 0x00000004
	.4byte 0x00580000
	.4byte 0x00000004
	.4byte 0x00590000
	.4byte 0x00000004
	.4byte 0x005A0000
	.4byte 0x00000004
	.4byte 0x00620000
	.4byte 0x00000004
	.4byte 0x00630000
	.4byte 0x00000004
	.4byte 0x00640000
	.4byte 0x00000004
	.4byte 0x00660000
	.4byte 0x00000004
	.4byte 0x00670000
	.4byte 0x00000004
	.4byte 0x00680000
	.4byte 0x00000004
	.4byte 0x006A0000
	.4byte 0x00000004
	.4byte 0x006B0000
	.4byte 0x00000004
	.4byte 0x006C0000
	.4byte 0x00000004
	.4byte 0x006D0000
	.4byte 0x00000004
	.4byte 0x006E0000
	.4byte 0x00000004
	.4byte 0x00700000
	.4byte 0x00000004
	.4byte 0x00710000
	.4byte 0x00000004
	.4byte 0x00720000
	.4byte 0x00000004
	.4byte 0x00730000
	.4byte 0x00000004
	.4byte 0x00740000
	.4byte 0x00000004
	.4byte 0x00760000
	.4byte 0x00000004
	.4byte 0x00770000
	.4byte 0x00000004
	.4byte 0x00780000
	.4byte 0x00000004
	.4byte 0x00790000
	.4byte 0x00000004
	.4byte 0x007A0000
	.4byte 0x00000004
	.4byte 0x00D10000
	.4byte 0x00000004
	.4byte 0x00F10000
	.4byte 0x00000004
	.4byte 0x005B0000
	.4byte 0x00000001
	.4byte 0x007B0000
	.4byte 0x00000001
	.4byte 0x00910000
	.4byte 0x00000001
	.4byte 0x00930000
	.4byte 0x00000001
	.4byte 0x00910000
	.4byte 0x00000001
	.4byte 0x00930000
	.4byte 0x00000001
	.4byte 0x00A20000
	.4byte 0x00000002
	.4byte 0x00A30000
	.4byte 0x00000002
	.4byte 0x00A50000
	.4byte 0x00000002
	.4byte 0x00A70000
	.4byte 0x00000002
	.4byte 0x00A90000
	.4byte 0x00000002
	.4byte 0x00AB0000
	.4byte 0x00000001
	.4byte 0x20A00000
	.4byte 0x00000002
	.4byte 0x20A10000
	.4byte 0x00000002
	.4byte 0x20A20000
	.4byte 0x00000002
	.4byte 0x20A30000
	.4byte 0x00000002
	.4byte 0x20A40000
	.4byte 0x00000002
	.4byte 0x20A50000
	.4byte 0x00000002
	.4byte 0x20A60000
	.4byte 0x00000002
	.4byte 0x20A70000
	.4byte 0x00000002
	.4byte 0x20A80000
	.4byte 0x00000002
	.4byte 0x20A90000
	.4byte 0x00000002
	.4byte 0x20AA0000
	.4byte 0x00000002
	.4byte 0x20AB0000
	.4byte 0x00000002
	.4byte 0x20AC0000
	.4byte 0x00000002
	.4byte 0x300C0000
	.4byte 0x00000001
	.4byte 0x300E0000
	.4byte 0x00000001
	.4byte 0x30100000
	.4byte 0x00000001
	.4byte 0x30120000
	.4byte 0x00000002
	.4byte 0x30140000
	.4byte 0x00000001
	.4byte 0x30160000
	.4byte 0x00000001
	.4byte 0x30180000
	.4byte 0x00000001
	.4byte 0x301A0000
	.4byte 0x00000001
	.4byte 0xFF030000
	.4byte 0x00000002
	.4byte 0xFF040000
	.4byte 0x00000002
	.4byte 0xFF200000
	.4byte 0x00000002
	.4byte 0xFF3C0000
	.4byte 0x00000001
	.4byte 0xFF5C0000
	.4byte 0x00000001
	.4byte 0xFFE00000
	.4byte 0x00000002
	.4byte 0xFFE10000
	.4byte 0x00000002
	.4byte 0xFFEF0000
	.4byte 0x00000002

.global lbl_803D7388
lbl_803D7388:
	# ROM: 0x3D4388
	.4byte 0x00000009
	.4byte 0x00000003
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D7398
lbl_803D7398:
	# ROM: 0x3D4398
	.asciz "??(??)"
	.balign 4

.global lbl_803D73A0
lbl_803D73A0:
	# ROM: 0x3D43A0
	.4byte 0x3F000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3F000000
	.4byte 0

.global lbl_803D73B8
lbl_803D73B8:
	# ROM: 0x3D43B8
	.4byte 0x00000009
	.4byte 0x00000003
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D73C8
lbl_803D73C8:
	# ROM: 0x3D43C8
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000B
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D73E8
lbl_803D73E8:
	# ROM: 0x3D43E8
	.asciz "??(??)"
	.balign 4

.global lbl_803D73F0
lbl_803D73F0:
	# ROM: 0x3D43F0
	.4byte 0x000000FF
	.4byte 0x0000FF00
	.4byte 0x00FF0000
	.4byte 0x0000FFFF

.global lbl_803D7400
lbl_803D7400:
	# ROM: 0x3D4400
	.asciz "??(??)"
	.balign 4

.global gkCRC32Table
gkCRC32Table:
	# ROM: 0x3D4408
	.4byte 0
	.4byte 0x77073096
	.4byte 0xEE0E612C
	.4byte 0x990951BA
	.4byte 0x076DC419
	.4byte 0x706AF48F
	.4byte 0xE963A535
	.4byte 0x9E6495A3
	.4byte 0x0EDB8832
	.4byte 0x79DCB8A4
	.4byte 0xE0D5E91E
	.4byte 0x97D2D988
	.4byte 0x09B64C2B
	.4byte 0x7EB17CBD
	.4byte 0xE7B82D07
	.4byte 0x90BF1D91
	.4byte 0x1DB71064
	.4byte 0x6AB020F2
	.4byte 0xF3B97148
	.4byte 0x84BE41DE
	.4byte 0x1ADAD47D
	.4byte 0x6DDDE4EB
	.4byte 0xF4D4B551
	.4byte 0x83D385C7
	.4byte 0x136C9856
	.4byte 0x646BA8C0
	.4byte 0xFD62F97A
	.4byte 0x8A65C9EC
	.4byte 0x14015C4F
	.4byte 0x63066CD9
	.4byte 0xFA0F3D63
	.4byte 0x8D080DF5
	.4byte 0x3B6E20C8
	.4byte 0x4C69105E
	.4byte 0xD56041E4
	.4byte 0xA2677172
	.4byte 0x3C03E4D1
	.4byte 0x4B04D447
	.4byte 0xD20D85FD
	.4byte 0xA50AB56B
	.4byte 0x35B5A8FA
	.4byte 0x42B2986C
	.4byte 0xDBBBC9D6
	.4byte 0xACBCF940
	.4byte 0x32D86CE3
	.4byte 0x45DF5C75
	.4byte 0xDCD60DCF
	.4byte 0xABD13D59
	.4byte 0x26D930AC
	.4byte 0x51DE003A
	.4byte 0xC8D75180
	.4byte 0xBFD06116
	.4byte 0x21B4F4B5
	.4byte 0x56B3C423
	.4byte 0xCFBA9599
	.4byte 0xB8BDA50F
	.4byte 0x2802B89E
	.4byte 0x5F058808
	.4byte 0xC60CD9B2
	.4byte 0xB10BE924
	.4byte 0x2F6F7C87
	.4byte 0x58684C11
	.4byte 0xC1611DAB
	.4byte 0xB6662D3D
	.4byte 0x76DC4190
	.4byte 0x01DB7106
	.4byte 0x98D220BC
	.4byte 0xEFD5102A
	.4byte 0x71B18589
	.4byte 0x06B6B51F
	.4byte 0x9FBFE4A5
	.4byte 0xE8B8D433
	.4byte 0x7807C9A2
	.4byte 0x0F00F934
	.4byte 0x9609A88E
	.4byte 0xE10E9818
	.4byte 0x7F6A0DBB
	.4byte 0x086D3D2D
	.4byte 0x91646C97
	.4byte 0xE6635C01
	.4byte 0x6B6B51F4
	.4byte 0x1C6C6162
	.4byte 0x856530D8
	.4byte 0xF262004E
	.4byte 0x6C0695ED
	.4byte 0x1B01A57B
	.4byte 0x8208F4C1
	.4byte 0xF50FC457
	.4byte 0x65B0D9C6
	.4byte 0x12B7E950
	.4byte 0x8BBEB8EA
	.4byte 0xFCB9887C
	.4byte 0x62DD1DDF
	.4byte 0x15DA2D49
	.4byte 0x8CD37CF3
	.4byte 0xFBD44C65
	.4byte 0x4DB26158
	.4byte 0x3AB551CE
	.4byte 0xA3BC0074
	.4byte 0xD4BB30E2
	.4byte 0x4ADFA541
	.4byte 0x3DD895D7
	.4byte 0xA4D1C46D
	.4byte 0xD3D6F4FB
	.4byte 0x4369E96A
	.4byte 0x346ED9FC
	.4byte 0xAD678846
	.4byte 0xDA60B8D0
	.4byte 0x44042D73
	.4byte 0x33031DE5
	.4byte 0xAA0A4C5F
	.4byte 0xDD0D7CC9
	.4byte 0x5005713C
	.4byte 0x270241AA
	.4byte 0xBE0B1010
	.4byte 0xC90C2086
	.4byte 0x5768B525
	.4byte 0x206F85B3
	.4byte 0xB966D409
	.4byte 0xCE61E49F
	.4byte 0x5EDEF90E
	.4byte 0x29D9C998
	.4byte 0xB0D09822
	.4byte 0xC7D7A8B4
	.4byte 0x59B33D17
	.4byte 0x2EB40D81
	.4byte 0xB7BD5C3B
	.4byte 0xC0BA6CAD
	.4byte 0xEDB88320
	.4byte 0x9ABFB3B6
	.4byte 0x03B6E20C
	.4byte 0x74B1D29A
	.4byte 0xEAD54739
	.4byte 0x9DD277AF
	.4byte 0x04DB2615
	.4byte 0x73DC1683
	.4byte 0xE3630B12
	.4byte 0x94643B84
	.4byte 0x0D6D6A3E
	.4byte 0x7A6A5AA8
	.4byte 0xE40ECF0B
	.4byte 0x9309FF9D
	.4byte 0x0A00AE27
	.4byte 0x7D079EB1
	.4byte 0xF00F9344
	.4byte 0x8708A3D2
	.4byte 0x1E01F268
	.4byte 0x6906C2FE
	.4byte 0xF762575D
	.4byte 0x806567CB
	.4byte 0x196C3671
	.4byte 0x6E6B06E7
	.4byte 0xFED41B76
	.4byte 0x89D32BE0
	.4byte 0x10DA7A5A
	.4byte 0x67DD4ACC
	.4byte 0xF9B9DF6F
	.4byte 0x8EBEEFF9
	.4byte 0x17B7BE43
	.4byte 0x60B08ED5
	.4byte 0xD6D6A3E8
	.4byte 0xA1D1937E
	.4byte 0x38D8C2C4
	.4byte 0x4FDFF252
	.4byte 0xD1BB67F1
	.4byte 0xA6BC5767
	.4byte 0x3FB506DD
	.4byte 0x48B2364B
	.4byte 0xD80D2BDA
	.4byte 0xAF0A1B4C
	.4byte 0x36034AF6
	.4byte 0x41047A60
	.4byte 0xDF60EFC3
	.4byte 0xA867DF55
	.4byte 0x316E8EEF
	.4byte 0x4669BE79
	.4byte 0xCB61B38C
	.4byte 0xBC66831A
	.4byte 0x256FD2A0
	.4byte 0x5268E236
	.4byte 0xCC0C7795
	.4byte 0xBB0B4703
	.4byte 0x220216B9
	.4byte 0x5505262F
	.4byte 0xC5BA3BBE
	.4byte 0xB2BD0B28
	.4byte 0x2BB45A92
	.4byte 0x5CB36A04
	.4byte 0xC2D7FFA7
	.4byte 0xB5D0CF31
	.4byte 0x2CD99E8B
	.4byte 0x5BDEAE1D
	.4byte 0x9B64C2B0
	.4byte 0xEC63F226
	.4byte 0x756AA39C
	.4byte 0x026D930A
	.4byte 0x9C0906A9
	.4byte 0xEB0E363F
	.4byte 0x72076785
	.4byte 0x05005713
	.4byte 0x95BF4A82
	.4byte 0xE2B87A14
	.4byte 0x7BB12BAE
	.4byte 0x0CB61B38
	.4byte 0x92D28E9B
	.4byte 0xE5D5BE0D
	.4byte 0x7CDCEFB7
	.4byte 0x0BDBDF21
	.4byte 0x86D3D2D4
	.4byte 0xF1D4E242
	.4byte 0x68DDB3F8
	.4byte 0x1FDA836E
	.4byte 0x81BE16CD
	.4byte 0xF6B9265B
	.4byte 0x6FB077E1
	.4byte 0x18B74777
	.4byte 0x88085AE6
	.4byte 0xFF0F6A70
	.4byte 0x66063BCA
	.4byte 0x11010B5C
	.4byte 0x8F659EFF
	.4byte 0xF862AE69
	.4byte 0x616BFFD3
	.4byte 0x166CCF45
	.4byte 0xA00AE278
	.4byte 0xD70DD2EE
	.4byte 0x4E048354
	.4byte 0x3903B3C2
	.4byte 0xA7672661
	.4byte 0xD06016F7
	.4byte 0x4969474D
	.4byte 0x3E6E77DB
	.4byte 0xAED16A4A
	.4byte 0xD9D65ADC
	.4byte 0x40DF0B66
	.4byte 0x37D83BF0
	.4byte 0xA9BCAE53
	.4byte 0xDEBB9EC5
	.4byte 0x47B2CF7F
	.4byte 0x30B5FFE9
	.4byte 0xBDBDF21C
	.4byte 0xCABAC28A
	.4byte 0x53B39330
	.4byte 0x24B4A3A6
	.4byte 0xBAD03605
	.4byte 0xCDD70693
	.4byte 0x54DE5729
	.4byte 0x23D967BF
	.4byte 0xB3667A2E
	.4byte 0xC4614AB8
	.4byte 0x5D681B02
	.4byte 0x2A6F2B94
	.4byte 0xB40BBE37
	.4byte 0xC30C8EA1
	.4byte 0x5A05DF1B
	.4byte 0x2D02EF8D

.global lbl_803D7808
lbl_803D7808:
	# ROM: 0x3D4808
	.asciz "Alloc failed - Size: %d"

.global lbl_803D7820
lbl_803D7820:
	# ROM: 0x3D4820
	.4byte 0
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0x00000008

.global lbl_803D7840
lbl_803D7840:
	# ROM: 0x3D4840
	.asciz "??(??)"
	.balign 4

.global lbl_803D7848
lbl_803D7848:
	# ROM: 0x3D4848
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000B
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D7868
lbl_803D7868:
	# ROM: 0x3D4868
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000B
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D7888
lbl_803D7888:
	# ROM: 0x3D4888
	.4byte 0x3F000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3F000000
	.4byte 0

.global lbl_803D78A0
lbl_803D78A0:
	# ROM: 0x3D48A0
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000B
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x0000000E
	.4byte 0x00000001
	.4byte 0x0000000F
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D78D0
lbl_803D78D0:
	# ROM: 0x3D48D0
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000B
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D78F0
lbl_803D78F0:
	# ROM: 0x3D48F0
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000B
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D7910
lbl_803D7910:
	# ROM: 0x3D4910
	.asciz "??(??)"
	.balign 4

.global lbl_803D7918
lbl_803D7918:
	# ROM: 0x3D4918
	.asciz "??(??)"
	.balign 4

.global lbl_803D7920
lbl_803D7920:
	# ROM: 0x3D4920
	.asciz "??(??)"
	.balign 4

.global lbl_803D7928
lbl_803D7928:
	# ROM: 0x3D4928
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000B
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D7948
lbl_803D7948:
	# ROM: 0x3D4948
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000B
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D7968
lbl_803D7968:
	# ROM: 0x3D4968
	.asciz "??(??)"
	.balign 4

.global lbl_803D7970
lbl_803D7970:
	# ROM: 0x3D4970
	.asciz "??(??)"
	.balign 4

.global lbl_803D7978
lbl_803D7978:
	# ROM: 0x3D4978
	.asciz "??(??)"
	.balign 4

.global lbl_803D7980
lbl_803D7980:
	# ROM: 0x3D4980
	.asciz "??(??)"
	.balign 4

.global lbl_803D7988
lbl_803D7988:
	# ROM: 0x3D4988
	.4byte 0x434C534E
	.4byte 0x434D444C
	.4byte 0x43534B52
	.4byte 0x414E494D
	.4byte 0x43494E46
	.4byte 0x54585452
	.4byte 0x504C5454
	.4byte 0x464F4E54
	.4byte 0x414E4353
	.4byte 0x45564E54
	.4byte 0x4D414446
	.4byte 0x4D4C564C
	.4byte 0x4D524541
	.4byte 0x4D415057
	.4byte 0x4D415041
	.4byte 0x53415657
	.4byte 0x53415641
	.4byte 0x50415254
	.4byte 0x57505343
	.4byte 0x53574843
	.4byte 0x44505343
	.4byte 0x454C5343
	.4byte 0x43525343
	.4byte 0x4146534D
	.4byte 0x44434C4E
	.4byte 0x41475343
	.4byte 0x4154424C
	.4byte 0x43534E47
	.4byte 0x53545247
	.4byte 0x5343414E
	.4byte 0x50415448
	.4byte 0x44475250
	.4byte 0x484D4150
	.4byte 0x4354574B
	.4byte 0x46524D45
	.4byte 0x48494E54
	.4byte 0x4D415055
	.4byte 0x44554D42

.global lbl_803D7A20
lbl_803D7A20:
	# ROM: 0x3D4A20
	.asciz "??(??)"
	.balign 4

.global lbl_803D7A28
lbl_803D7A28:
	# ROM: 0x3D4A28
	.asciz "??(??)"
	.byte 0x31
	.asciz ".1.3"
	.balign 4

.global lbl_803D7A38
lbl_803D7A38:
	# ROM: 0x3D4A38
	.asciz "??(??)"
	.byte 0x2E
	.4byte 0x70616B00
	.4byte 0

.global lbl_803D7A48
lbl_803D7A48:
	# ROM: 0x3D4A48
	.asciz "??(??)"
	.balign 4

.global lbl_803D7A50
lbl_803D7A50:
	# ROM: 0x3D4A50
	.asciz "??(??)"
	.byte 0x25
	.asciz "%.%df"
	.byte 0x30, 0x00
	.4byte 0x2D000000
	.4byte 0

.global lbl_803D7A68
lbl_803D7A68:
	# ROM: 0x3D4A68
	.asciz "??(??)"
	.balign 4

.global lbl_803D7A70
lbl_803D7A70:
	# ROM: 0x3D4A70
	.asciz "??(??)"
	.balign 4

.global lbl_803D7A78
lbl_803D7A78:
	# ROM: 0x3D4A78
	.asciz "??(??)"
	.byte 0x31
	.asciz ".1.3"
	.balign 4

.global lbl_803D7A88
lbl_803D7A88:
	# ROM: 0x3D4A88
	.asciz "??(??)"
	.byte 0x31
	.asciz ".1.3"
	.balign 4

.global lbl_803D7A98
lbl_803D7A98:
	# ROM: 0x3D4A98
	.asciz "??(??)"
	.balign 4

.global lbl_803D7AA0
lbl_803D7AA0:
	# ROM: 0x3D4AA0
	.asciz "??(??)"
	.balign 4

.global lbl_803D7AA8
lbl_803D7AA8:
	# ROM: 0x3D4AA8
	.4byte 0x00000010
	.4byte 0x00000011
	.4byte 0x00000012
	.4byte 0
	.4byte 0x00000008
	.4byte 0x00000007
	.4byte 0x00000009
	.4byte 0x00000006
	.4byte 0x0000000A
	.4byte 0x00000005
	.4byte 0x0000000B
	.4byte 0x00000004
	.4byte 0x0000000C
	.4byte 0x00000003
	.4byte 0x0000000D
	.4byte 0x00000002
	.4byte 0x0000000E
	.4byte 0x00000001
	.4byte 0x0000000F

.global lbl_803D7AF4
lbl_803D7AF4:
	# ROM: 0x3D4AF4
	.asciz "invalid block type"
	.byte 0x69
	.asciz "nvalid stored block lengths"
	.asciz "too many length or distance symbols"
	.asciz "invalid bit length repeat"
	.balign 4
	.4byte 0

.global lbl_803D7B68
lbl_803D7B68:
	# ROM: 0x3D4B68
	.asciz "invalid literal/length code"
	.asciz "invalid distance code"
	.balign 4
	.4byte 0

.global lbl_803D7BA0
lbl_803D7BA0:
	# ROM: 0x3D4BA0
	.asciz "invalid distance code"
	.byte 0x69, 0x6E
	.asciz "valid literal/length code"
	.balign 4
	.4byte 0

.global lbl_803D7BD8
lbl_803D7BD8:
	# ROM: 0x3D4BD8
	.asciz "unknown compression method"
	.byte 0x69
	.asciz "nvalid window size"
	.byte 0x69
	.asciz "ncorrect header check"
	.byte 0x6E, 0x65
	.asciz "ed dictionary"
	.byte 0x69, 0x6E
	.asciz "correct data check"
	.byte 0x31
	.asciz ".1.3"
	.balign 4
	.4byte 0

.global lbl_803D7C50
lbl_803D7C50:
	# ROM: 0x3D4C50
	.asciz " inflate 1.1.3 Copyright 1995-1998 Mark Adler "
	.balign 4
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000007
	.4byte 0x00000008
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x0000000B
	.4byte 0x0000000D
	.4byte 0x0000000F
	.4byte 0x00000011
	.4byte 0x00000013
	.4byte 0x00000017
	.4byte 0x0000001B
	.4byte 0x0000001F
	.4byte 0x00000023
	.4byte 0x0000002B
	.4byte 0x00000033
	.4byte 0x0000003B
	.4byte 0x00000043
	.4byte 0x00000053
	.4byte 0x00000063
	.4byte 0x00000073
	.4byte 0x00000083
	.4byte 0x000000A3
	.4byte 0x000000C3
	.4byte 0x000000E3
	.4byte 0x00000102
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000005
	.4byte 0x00000005
	.4byte 0x00000005
	.4byte 0
	.4byte 0x00000070
	.4byte 0x00000070
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000009
	.4byte 0x0000000D
	.4byte 0x00000011
	.4byte 0x00000019
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000041
	.4byte 0x00000061
	.4byte 0x00000081
	.4byte 0x000000C1
	.4byte 0x00000101
	.4byte 0x00000181
	.4byte 0x00000201
	.4byte 0x00000301
	.4byte 0x00000401
	.4byte 0x00000601
	.4byte 0x00000801
	.4byte 0x00000C01
	.4byte 0x00001001
	.4byte 0x00001801
	.4byte 0x00002001
	.4byte 0x00003001
	.4byte 0x00004001
	.4byte 0x00006001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000008
	.4byte 0x00000008
	.4byte 0x00000009
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x0000000B
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0x0000000C
	.4byte 0x0000000D
	.4byte 0x0000000D

.global lbl_803D7E68
lbl_803D7E68:
	# ROM: 0x3D4E68
	.asciz "oversubscribed literal/length tree"
	.byte 0x69
	.asciz "ncomplete literal/length tree"
	.byte 0x6F, 0x76
	.asciz "ersubscribed distance tree"
	.byte 0x69
	.asciz "ncomplete distance tree"
	.asciz "empty distance tree with lengths"
	.byte 0x6F, 0x76, 0x65
	.asciz "rsubscribed dynamic bit lengths tree"
	.byte 0x69, 0x6E, 0x63
	.asciz "omplete dynamic bit lengths tree"
	.balign 4

.global lbl_803D7F50
lbl_803D7F50:
	# ROM: 0x3D4F50
	.asciz "??(??)"
	.balign 4

.global lbl_803D7F58
lbl_803D7F58:
	# ROM: 0x3D4F58
	.4byte 0x3F000000
	.4byte 0
	.4byte 0
	.4byte 0x3F000000
	.4byte 0
	.4byte 0
	.4byte 0x3F000000
	.4byte 0x3F000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3F800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3F800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3F000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3F000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3F800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3F800000

.global lbl_803D8048
lbl_803D8048:
	# ROM: 0x3D5048
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3F800000

.global lbl_803D8078
lbl_803D8078:
	# ROM: 0x3D5078
	.4byte 0x3F000000
	.4byte 0
	.4byte 0
	.4byte 0x3F000000
	.4byte 0
	.4byte 0
	.4byte 0x3F000000
	.4byte 0x3F000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3F800000

.global lbl_803D80A8
lbl_803D80A8:
	# ROM: 0x3D50A8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3F800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3F800000

.global lbl_803D8108
lbl_803D8108:
	# ROM: 0x3D5108
	.asciz "??(??)"
	.balign 4

.global lbl_803D8110
lbl_803D8110:
	# ROM: 0x3D5110
	.4byte 0x00000002
	.4byte 0x00080012
	.4byte 0x00200032
	.4byte 0x00490063
	.4byte 0x008200A4
	.4byte 0x00CB00F5
	.4byte 0x01240157
	.4byte 0x018E01C9
	.4byte 0x0208024B
	.4byte 0x029202DD
	.4byte 0x032C037F
	.4byte 0x03D70432
	.4byte 0x049204F5
	.4byte 0x055D05C9
	.4byte 0x063806AC
	.4byte 0x072407A0
	.4byte 0x082008A4
	.4byte 0x092C09B8
	.4byte 0x0A480ADD
	.4byte 0x0B750C12
	.4byte 0x0CB20D57
	.4byte 0x0DFF0EAC
	.4byte 0x0F5D1012
	.4byte 0x10CA1187
	.4byte 0x1248130D
	.4byte 0x13D714A4
	.4byte 0x1575164A
	.4byte 0x17241801
	.4byte 0x18E319C8
	.4byte 0x1AB21BA0
	.4byte 0x1C911D87
	.4byte 0x1E811F7F
	.4byte 0x20812187
	.4byte 0x2291239F
	.4byte 0x24B225C8
	.4byte 0x26E22801
	.4byte 0x29232A4A
	.4byte 0x2B752CA3
	.4byte 0x2DD62F0D
	.4byte 0x30483187
	.4byte 0x32CA3411
	.4byte 0x355C36AB
	.4byte 0x37FF3956
	.4byte 0x3AB13C11
	.4byte 0x3D743EDC
	.4byte 0x404841B7
	.4byte 0x432B44A3
	.4byte 0x461F479F
	.4byte 0x49234AAB
	.4byte 0x4C374DC7
	.4byte 0x4F5C50F4
	.4byte 0x52905431
	.4byte 0x55D6577E
	.4byte 0x592B5ADC
	.4byte 0x5C905E49
	.4byte 0x600661C7
	.4byte 0x638C6555
	.4byte 0x672268F4
	.4byte 0x6AC96CA2
	.4byte 0x6E807061
	.4byte 0x72477430
	.4byte 0x761E7810
	.4byte 0x7A067C00
	.4byte 0x7DFE8000

.global lbl_803D8210
lbl_803D8210:
	# ROM: 0x3D5210
	.asciz "??(??)"
	.byte 0x4E
	.4byte 0x554C4C00
	.4byte 0

.global lbl_803D8220
lbl_803D8220:
	# ROM: 0x3D5220
	.asciz "??(??)"
	.balign 4

.global lbl_803D8228
lbl_803D8228:
	# ROM: 0x3D5228
	.asciz "??(??)"
	.balign 4

.global lbl_803D8230
lbl_803D8230:
	# ROM: 0x3D5230
	.asciz "??(??)"
	.byte 0x61
	.asciz "ram:"
	.balign 4

.global lbl_803D8240
lbl_803D8240:
	# ROM: 0x3D5240
	.asciz "??(??)"
	.balign 4

.global lbl_803D8248
lbl_803D8248:
	# ROM: 0x3D5248
	.asciz "<NULL>"
	.byte 0x3C
	.asciz "SOURCE MODULE UNLOADED>"
	.4byte 0x004D6564
	.asciz "iumAllocMainData   "
	.asciz " - Ignore"
	.byte 0x4D, 0x65
	.asciz "mHead"
	.byte 0x4D, 0x65
	.asciz "mTail"
	.byte 0x53, 0x6D
	.asciz "allAllocMainData   "
	.asciz "SmallAllocBookKeeping"
	.byte 0x53, 0x6D
	.asciz "allAllocClass      "
	.asciz "MediumAllocClass      "
	.balign 4
	.4byte 0

.global lbl_803D82F8
lbl_803D82F8:
	# ROM: 0x3D52F8
	.asciz "??(??)"
	.balign 4

.global lbl_803D8300
lbl_803D8300:
	# ROM: 0x3D5300
	.asciz "??(??)"
	.balign 4

.global lbl_803D8308
lbl_803D8308:
	# ROM: 0x3D5308
	.asciz "??(??)"
	.balign 4

.global lbl_803D8310
lbl_803D8310:
	# ROM: 0x3D5310
	.4byte 0x0049006E
	.4byte 0x00760061
	.4byte 0x006C0069
	.4byte 0x00640000

.global lbl_803D8320
lbl_803D8320:
	# ROM: 0x3D5320
	.asciz "??(??)"
	.balign 4

.global lbl_803D8328
lbl_803D8328:
	# ROM: 0x3D5328
	.asciz "??(??)"
	.balign 4

.global lbl_803D8330
lbl_803D8330:
	# ROM: 0x3D5330
	.asciz "??(??)"
	.balign 4

.global lbl_803D8338
lbl_803D8338:
	# ROM: 0x3D5338
	.asciz "??(??)"
	.balign 4

.global lbl_803D8340
lbl_803D8340:
	# ROM: 0x3D5340
	.asciz "??(??)"
	.balign 4

.global lbl_803D8348
lbl_803D8348:
	# ROM: 0x3D5348
	.asciz "??(??)"
	.balign 4

.global lbl_803D8350
lbl_803D8350:
	# ROM: 0x3D5350
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D8368
lbl_803D8368:
	# ROM: 0x3D5368
	.asciz "??(??)"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803D8380
lbl_803D8380:
	# ROM: 0x3D5380
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0
	.4byte 0x3E000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3E800000
	.4byte 0

.global lbl_803D83D8
lbl_803D83D8:
	# ROM: 0x3D53D8
	.asciz "??(??)"
	.balign 4

.global lbl_803D83E0
lbl_803D83E0:
	# ROM: 0x3D53E0
	.asciz "??(??)"
	.balign 4

.global lbl_803D83E8
lbl_803D83E8:
	# ROM: 0x3D53E8
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D83F8
lbl_803D83F8:
	# ROM: 0x3D53F8
	.asciz "??(??)"
	.balign 4

.global lbl_803D8400
lbl_803D8400:
	# ROM: 0x3D5400
	.4byte 0
	.4byte 0

.global lbl_803D8408
lbl_803D8408:
	# ROM: 0x3D5408
	.asciz "??(??)"
	.balign 4

.global lbl_803D8410
lbl_803D8410:
	# ROM: 0x3D5410
	.4byte 0
	.4byte 0

.global lbl_803D8418
lbl_803D8418:
	# ROM: 0x3D5418
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000008
	.4byte 0x0000000C
	.4byte 0x00000010
	.4byte 0x00000014
	.4byte 0x00000018
	.4byte 0x0000001C
	.4byte 0x00000020
	.4byte 0x00000024
	.4byte 0x00000028
	.4byte 0x0000002C
	.4byte 0x00000034
	.4byte 0x00000038
	.4byte 0x0000003C
	.4byte 0x00000040
	.4byte 0x00000044
	.4byte 0x00000058
	.4byte 0x0000005C
	.4byte 0x00000060
	.4byte 0x00000064
	.4byte 0x00000068
	.4byte 0x0000006C
	.4byte 0x00000070
	.4byte 0x00000074
	.4byte 0x00000088
	.4byte 0x0000008C
	.4byte 0x000000A0
	.4byte 0x000000B4
	.4byte 0x000000B8
	.4byte 0x000000D0
	.4byte 0x000000D4
	.4byte 0x000000E4
	.4byte 0x000000E8
	.4byte 0x000000EC
	.4byte 0x000000F0
	.4byte 0x000000F4
	.4byte 0x000000F8
	.4byte 0x000000FC
	.4byte 0x00000100
	.4byte 0x00000104
	.4byte 0x00000108
	.4byte 0x0000010C
	.4byte 0x00000110
	.4byte 0x00000114
	.4byte 0x00000118
	.4byte 0x0000011C
	.4byte 0x00000120
	.4byte 0x00000124
	.4byte 0x00000128

.global lbl_803D84E0
lbl_803D84E0:
	# ROM: 0x3D54E0
	.asciz "%s: Incompatible pak file version -- Current version is %x, you're using %x"
	.asciz "??(??)"
	.balign 4
	.4byte 0

.global lbl_803D8538
lbl_803D8538:
	# ROM: 0x3D5538
	.asciz "??(??)"
	.balign 4

.global lbl_803D8540
lbl_803D8540:
	# ROM: 0x3D5540
	.asciz "??(??)"
	.balign 4

.global lbl_803D8548
lbl_803D8548:
	# ROM: 0x3D5548
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000002

.global lbl_803D8558
lbl_803D8558:
	# ROM: 0x3D5558
	.asciz "??(??)"
	.balign 4

.global lbl_803D8560
lbl_803D8560:
	# ROM: 0x3D5560
	.asciz "??(??)"
	.balign 4

.global lbl_803D8568
lbl_803D8568:
	# ROM: 0x3D5568
	.asciz "??(??)"
	.balign 4

