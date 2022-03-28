.include "macros.inc"

.section .sbss, "wa"  # 0x805A8C20 - 0x805A9D1F

# main
.global gpResourceFactory
gpResourceFactory:
	.skip 0x4
.global gpSimplePool
gpSimplePool:
	.skip 0x4
.global gpRender
gpRender:
	.skip 0x4
.global gpCharacterFactoryBuilder
gpCharacterFactoryBuilder:
	.skip 0x4
.global gGuiSystem
gGuiSystem:
	.skip 0x4
.global gpStringTable
gpStringTable:
	.skip 0x4
.global gpMain
gpMain:
	.skip 0x4
.global gpController
gpController:
	.skip 0x4
.global gpGameState
gpGameState:
	.skip 0x4
.global gpMemoryCard
gpMemoryCard:
	.skip 0x4
.global gpTweakManager
gpTweakManager:
	.skip 0x4
.global gpDefaultFont
gpDefaultFont:
	.skip 0x4
.global lbl_805A8C50
lbl_805A8C50:
	.skip 0x4
.global lbl_805A8C54
lbl_805A8C54:
	.skip 0x4
.global lbl_805A8C58
lbl_805A8C58:
	.skip 0x4
.global sARAMMemArray
sARAMMemArray:
	.skip 0x8

# CGameArchitectureSupport
.global lbl_805A8C64
lbl_805A8C64:
	.skip 0x4

# TOneStatic<CGameArchitectureSupport>
.global lbl_805A8C68
lbl_805A8C68:
	.skip 0x4
.global lbl_805A8C6C
lbl_805A8C6C:
	.skip 0x4

# TOneStatic<CGameGlobalObjects>
.global lbl_805A8C70
lbl_805A8C70:
	.skip 0x4
.global lbl_805A8C74
lbl_805A8C74:
	.skip 0x4

# CPlayer
.global lbl_805A8C78
lbl_805A8C78:
	.skip 0x4
.global lbl_805A8C7C
lbl_805A8C7C:
	.skip 0x4
.global lbl_805A8C80
lbl_805A8C80:
	.skip 0x1
.global lbl_805A8C81
lbl_805A8C81:
	.skip 0x3
.global lbl_805A8C84
lbl_805A8C84:
	.skip 0x4
.global lbl_805A8C88
lbl_805A8C88:
	.skip 0x4

# TOneStatic<CPlayerGun>
.global lbl_805A8C8C
lbl_805A8C8C:
	.skip 0x4
.global lbl_805A8C90
lbl_805A8C90:
	.skip 0x4

# TOneStatic<CPlayerCameraBob>
.global lbl_805A8C94
lbl_805A8C94:
	.skip 0x4
.global lbl_805A8C98
lbl_805A8C98:
	.skip 0x4

# TOneStatic<CMorphBall>
.global lbl_805A8C9C
lbl_805A8C9C:
	.skip 0x4
.global lbl_805A8CA0
lbl_805A8CA0:
	.skip 0x4

# TOneStatic<CPlayer>
.global lbl_805A8CA4
lbl_805A8CA4:
	.skip 0x4
.global lbl_805A8CA8
lbl_805A8CA8:
	.skip 0x8

# CFrontEndUI
.global lbl_805A8CB0
lbl_805A8CB0:
	.skip 0x8

# CMFGame
.global lbl_805A8CB8
lbl_805A8CB8:
	.skip 0x8

# TOneStatic<CStateManager>
.global lbl_805A8CC0
lbl_805A8CC0:
	.skip 0x4
.global lbl_805A8CC4
lbl_805A8CC4:
	.skip 0x4

# CAnimData
.global lbl_805A8CC8
lbl_805A8CC8:
	.skip 0x4
.global lbl_805A8CCC
lbl_805A8CCC:
	.skip 0x4

# TOneStatic<CTweakPlayer>
.global lbl_805A8CD0
lbl_805A8CD0:
	.skip 0x4
.global lbl_805A8CD4
lbl_805A8CD4:
	.skip 0x4

# CTweaks
.global gpTweakPlayer
gpTweakPlayer:
	.skip 0x4
.global gpTweakBall
gpTweakBall:
	.skip 0x4
.global gpTweakGame
gpTweakGame:
	.skip 0x4
.global gpTweakParticle
gpTweakParticle:
	.skip 0x4
.global gpTweakPlayerControlCurrent
gpTweakPlayerControlCurrent:
	.skip 0x4
.global gpTweakPlayerControl1
gpTweakPlayerControl1:
	.skip 0x4
.global gpTweakPlayerControl2
gpTweakPlayerControl2:
	.skip 0x4
.global gpTweakPlayerGun
gpTweakPlayerGun:
	.skip 0x4
.global gpTweakGui
gpTweakGui:
	.skip 0x4
.global gpTweakGuiColors
gpTweakGuiColors:
	.skip 0x4
.global gpTweakTargeting
gpTweakTargeting:
	.skip 0x4
.global gpTweakAutoMapper
gpTweakAutoMapper:
	.skip 0x4
.global gpTweakGunRes
gpTweakGunRes:
	.skip 0x4
.global gpTweakPlayerRes
gpTweakPlayerRes:
	.skip 0x4
.global gpTweakSlideShow
gpTweakSlideShow:
	.skip 0x4

# TOneStatic<CTweakSlideShow>
.global lbl_805A8D14
lbl_805A8D14:
	.skip 0x4
.global lbl_805A8D18
lbl_805A8D18:
	.skip 0x4

# TOneStatic<CTweakPlayerRes>
.global lbl_805A8D1C
lbl_805A8D1C:
	.skip 0x4
.global lbl_805A8D20
lbl_805A8D20:
	.skip 0x4

# TOneStatic<CTweakGunRes>
.global lbl_805A8D24
lbl_805A8D24:
	.skip 0x4
.global lbl_805A8D28
lbl_805A8D28:
	.skip 0x4

# TOneStatic<CTweakAutoMapper>
.global lbl_805A8D2C
lbl_805A8D2C:
	.skip 0x4
.global lbl_805A8D30
lbl_805A8D30:
	.skip 0x4

# TOneStatic<CTweakTargeting>
.global lbl_805A8D34
lbl_805A8D34:
	.skip 0x4
.global lbl_805A8D38
lbl_805A8D38:
	.skip 0x4

# TOneStatic<CTweakGuiColors>
.global lbl_805A8D3C
lbl_805A8D3C:
	.skip 0x4
.global lbl_805A8D40
lbl_805A8D40:
	.skip 0x4

# TOneStatic<CTweakGui>
.global lbl_805A8D44
lbl_805A8D44:
	.skip 0x4
.global lbl_805A8D48
lbl_805A8D48:
	.skip 0x4

# TOneStatic<CTweakPlayerGun>
.global lbl_805A8D4C
lbl_805A8D4C:
	.skip 0x4
.global lbl_805A8D50
lbl_805A8D50:
	.skip 0x4

# TOneStatic<CTweakParticle>
.global lbl_805A8D54
lbl_805A8D54:
	.skip 0x4
.global lbl_805A8D58
lbl_805A8D58:
	.skip 0x4

# TOneStatic<CTweakGame>
.global lbl_805A8D5C
lbl_805A8D5C:
	.skip 0x4
.global lbl_805A8D60
lbl_805A8D60:
	.skip 0x4

# TOneStatic<CTweakBall>
.global lbl_805A8D64
lbl_805A8D64:
	.skip 0x4
.global lbl_805A8D68
lbl_805A8D68:
	.skip 0x8

# CPlayerGun
.global lbl_805A8D70
lbl_805A8D70:
	.skip 0x4
.global lbl_805A8D74
lbl_805A8D74:
	.skip 0x4
.global lbl_805A8D78
lbl_805A8D78:
	.skip 0x4
.global lbl_805A8D7C
lbl_805A8D7C:
	.skip 0x4
.global lbl_805A8D80
lbl_805A8D80:
	.skip 0x4
.global lbl_805A8D84
lbl_805A8D84:
	.skip 0x8
.global lbl_805A8D8C
lbl_805A8D8C:
	.skip 0xC

# CStateManager
.global lbl_805A8D98
lbl_805A8D98:
	.skip 0x4
.global lbl_805A8D9C
lbl_805A8D9C:
	.skip 0x4
.global lbl_805A8DA0
lbl_805A8DA0:
	.skip 0x1
.global lbl_805A8DA1
lbl_805A8DA1:
	.skip 0x7
.global lbl_805A8DA8
lbl_805A8DA8:
	.skip 0x4
.global lbl_805A8DAC
lbl_805A8DAC:
	.skip 0x4
.global lbl_805A8DB0
lbl_805A8DB0:
	.skip 0x8
.global lbl_805A8DB8
lbl_805A8DB8:
	.skip 0x4
.global lbl_805A8DBC
lbl_805A8DBC:
	.skip 0x4
.global lbl_805A8DC0
lbl_805A8DC0:
	.skip 0x4
.global lbl_805A8DC4
lbl_805A8DC4:
	.skip 0x1
.global lbl_805A8DC5
lbl_805A8DC5:
	.skip 0x3
.global lbl_805A8DC8
lbl_805A8DC8:
	.skip 0x4
.global lbl_805A8DCC
lbl_805A8DCC:
	.skip 0x4

# TOneStatic<CStateManagerContainer>
.global lbl_805A8DD0
lbl_805A8DD0:
	.skip 0x4
.global lbl_805A8DD4
lbl_805A8DD4:
	.skip 0x4

# CWorld
.global lbl_805A8DD8
lbl_805A8DD8:
	.skip 0x4
.global lbl_805A8DDC
lbl_805A8DDC:
	.skip 0x4
.global lbl_805A8DE0
lbl_805A8DE0:
	.skip 0x4
.global lbl_805A8DE4
lbl_805A8DE4:
	.skip 0x4

# CSamusHud
.global lbl_805A8DE8
lbl_805A8DE8:
	.skip 0x8

# CTransitionDatabaseGame
.global lbl_805A8DF0
lbl_805A8DF0:
	.skip 0x4
.global lbl_805A8DF4
lbl_805A8DF4:
	.skip 0x4
.global lbl_805A8DF8
lbl_805A8DF8:
	.skip 0x4
.global lbl_805A8DFC
lbl_805A8DFC:
	.skip 0x4

# CScriptTrigger
.global lbl_805A8E00
lbl_805A8E00:
	.skip 0x4
.global lbl_805A8E04
lbl_805A8E04:
	.skip 0xC

# CPatterned
.global lbl_805A8E10
lbl_805A8E10:
	.skip 0x4
.global lbl_805A8E14
lbl_805A8E14:
	.skip 0x4
.global lbl_805A8E18
lbl_805A8E18:
	.skip 0x8
.global lbl_805A8E20
lbl_805A8E20:
	.skip 0x4
.global lbl_805A8E24
lbl_805A8E24:
	.skip 0x4
.global lbl_805A8E28
lbl_805A8E28:
	.skip 0x4
.global lbl_805A8E2C
lbl_805A8E2C:
	.skip 0x4
.global lbl_805A8E30
lbl_805A8E30:
	.skip 0x8
.global lbl_805A8E38
lbl_805A8E38:
	.skip 0x4
.global lbl_805A8E3C
lbl_805A8E3C:
	.skip 0x4

# CScriptDoor
.global lbl_805A8E40
lbl_805A8E40:
	.skip 0x4
.global lbl_805A8E44
lbl_805A8E44:
	.skip 0x4

# CBallCamera
.global lbl_805A8E48
lbl_805A8E48:
	.skip 0x4
.global lbl_805A8E4C
lbl_805A8E4C:
	.skip 0x4
.global lbl_805A8E50
lbl_805A8E50:
	.skip 0x4
.global lbl_805A8E54
lbl_805A8E54:
	.skip 0x4

# CScriptEffect
.global lbl_805A8E58
lbl_805A8E58:
	.skip 0x4
.global lbl_805A8E5C
lbl_805A8E5C:
	.skip 0x4

# CBomb
.global lbl_805A8E60
lbl_805A8E60:
	.skip 0x8

# CCinematicCamera
.global lbl_805A8E68
lbl_805A8E68:
	.skip 0x4
.global lbl_805A8E6C
lbl_805A8E6C:
	.skip 0x4
.global lbl_805A8E70
lbl_805A8E70:
	.skip 0x4
.global lbl_805A8E74
lbl_805A8E74:
	.skip 0x4

# CAi + CAiFuncMap
.global lbl_805A8E78
lbl_805A8E78:
	.skip 0x4
.global lbl_805A8E7C
lbl_805A8E7C:
	.skip 0x4
.global lbl_805A8E80
lbl_805A8E80:
	.skip 0x4
.global lbl_805A8E84
lbl_805A8E84:
	.skip 0x4
.global lbl_805A8E88
lbl_805A8E88:
	.skip 0x8

# CScriptSound
.global lbl_805A8E90
lbl_805A8E90:
	.skip 0x4
.global lbl_805A8E94
lbl_805A8E94:
	.skip 0x4
.global lbl_805A8E98
lbl_805A8E98:
	.skip 0x4
.global lbl_805A8E9C
lbl_805A8E9C:
	.skip 0x4
.global lbl_805A8EA0
lbl_805A8EA0:
	.skip 0x1
.global lbl_805A8EA1
lbl_805A8EA1:
	.skip 0x7

# CTweakTargeting
.global lbl_805A8EA8
lbl_805A8EA8:
	.skip 0x4
.global lbl_805A8EAC
lbl_805A8EAC:
	.skip 0x4

# CGameArea or CMApWorld
.global lbl_805A8EB0
lbl_805A8EB0:
	.skip 0x8

# CWaveBeam
.global lbl_805A8EB8
lbl_805A8EB8:
	.skip 0x8

# CBeetleFR
.global lbl_805A8EC0
lbl_805A8EC0:
	.skip 0x8
.global lbl_805A8EC8
lbl_805A8EC8:
	.skip 0x4
.global lbl_805A8ECC
lbl_805A8ECC:
	.skip 0x4

# CPlayerCameraBob
.global lbl_805A8ED0
lbl_805A8ED0:
	.skip 0x4
.global lbl_805A8ED4
lbl_805A8ED4:
	.skip 0x4
.global lbl_805A8ED8
lbl_805A8ED8:
	.skip 0x8

# CCameraFilter
.global lbl_805A8EE0
lbl_805A8EE0:
	.skip 0x8

# CMorphBall
.global lbl_805A8EE8
lbl_805A8EE8:
	.skip 0x4
.global lbl_805A8EEC
lbl_805A8EEC:
	.skip 0x4
.global lbl_805A8EF0
lbl_805A8EF0:
	.skip 0x4
.global lbl_805A8EF4
lbl_805A8EF4:
	.skip 0x4
.global lbl_805A8EF8
lbl_805A8EF8:
	.skip 0x4
.global lbl_805A8EFC
lbl_805A8EFC:
	.skip 0x4

# CConsoleOutputWindow
.global lbl_805A8F00
lbl_805A8F00:
	.skip 0x8

# CScriptWater
.global lbl_805A8F08
lbl_805A8F08:
	.skip 0x8

# CActorLights
.global lbl_805A8F10
lbl_805A8F10:
	.skip 0x4
.global lbl_805A8F14
lbl_805A8F14:
	.skip 0x4

# CWorldShadow
.global lbl_805A8F18
lbl_805A8F18:
	.skip 0x4
.global lbl_805A8F1C
lbl_805A8F1C:
	.skip 0x4
.global lbl_805A8F20
lbl_805A8F20:
	.skip 0x4
.global lbl_805A8F24
lbl_805A8F24:
	.skip 0x4

# CDecalManager
.global lbl_805A8F28
lbl_805A8F28:
	.skip 0x4
.global lbl_805A8F2C
lbl_805A8F2C:
	.skip 0x4
.global lbl_805A8F30
lbl_805A8F30:
	.skip 0x4
.global lbl_805A8F34
lbl_805A8F34:
	.skip 0x4
.global lbl_805A8F38
lbl_805A8F38:
	.skip 0x8

# CBloodFlower
.global lbl_805A8F40
lbl_805A8F40:
	.skip 0x4
.global lbl_805A8F44
lbl_805A8F44:
	.skip 0x4

# TGameTypes
.global lbl_805A8F48
lbl_805A8F48:
	.skip 0x4
.global lbl_805A8F4C
lbl_805A8F4C:
	.skip 0x4
.global lbl_805A8F50
lbl_805A8F50:
	.skip 0x4
.global lbl_805A8F54
lbl_805A8F54:
	.skip 0x4

# CRipple
.global lbl_805A8F58
lbl_805A8F58:
	.skip 0x4
.global lbl_805A8F5C
lbl_805A8F5C:
	.skip 0x4

# CPathCamera
.global lbl_805A8F60
lbl_805A8F60:
	.skip 0x4
.global lbl_805A8F64
lbl_805A8F64:
	.skip 0x4
.global lbl_805A8F68
lbl_805A8F68:
	.skip 0x4
.global lbl_805A8F6C
lbl_805A8F6C:
	.skip 0x4

# CHudBillboardEffect
.global lbl_805A8F70
lbl_805A8F70:
	.skip 0x4
.global lbl_805A8F74
lbl_805A8F74:
	.skip 0x4
.global lbl_805A8F78
lbl_805A8F78:
	.skip 0x8

# CBSFlyerLocomotion
.global lbl_805A8F80
lbl_805A8F80:
	.skip 0x8

# CTargetableProjectile
.global lbl_805A8F88
lbl_805A8F88:
	.skip 0x4
.global lbl_805A8F8C
lbl_805A8F8C:
	.skip 0x4

# CFireFlea
.global lbl_805A8F90
lbl_805A8F90:
	.skip 0x4
.global lbl_805A8F94
lbl_805A8F94:
	.skip 0x4
.global lbl_805A8F98
lbl_805A8F98:
	.skip 0x4
.global lbl_805A8F9C
lbl_805A8F9C:
	.skip 0x4

# CPuddleToadGamma
.global lbl_805A8FA0
lbl_805A8FA0:
	.skip 0x8

# CPowerBomb
.global lbl_805A8FA8
lbl_805A8FA8:
	.skip 0x8

# CParasite
.global lbl_805A8FB0
lbl_805A8FB0:
	.skip 0x4
.global lbl_805A8FB4
lbl_805A8FB4:
	.skip 0x4
.global lbl_805A8FB8
lbl_805A8FB8:
	.skip 0x4
.global lbl_805A8FBC
lbl_805A8FBC:
	.skip 0x4
.global lbl_805A8FC0
lbl_805A8FC0:
	.skip 0x4
.global lbl_805A8FC4
lbl_805A8FC4:
	.skip 0x4
.global lbl_805A8FC8
lbl_805A8FC8:
	.skip 0x1
.global lbl_805A8FC9
lbl_805A8FC9:
	.skip 0x1
.global lbl_805A8FCA
lbl_805A8FCA:
	.skip 0x6
.global lbl_805A8FD0
lbl_805A8FD0:
	.skip 0x4
.global lbl_805A8FD4
lbl_805A8FD4:
	.skip 0x4
.global lbl_805A8FD8
lbl_805A8FD8:
	.skip 0x8

# CDrone
.global lbl_805A8FE0
lbl_805A8FE0:
	.skip 0x1
.global lbl_805A8FE1
lbl_805A8FE1:
	.skip 0x1
.global lbl_805A8FE2
lbl_805A8FE2:
	.skip 0x1
.global lbl_805A8FE3
lbl_805A8FE3:
	.skip 0x1
.global lbl_805A8FE4
lbl_805A8FE4:
	.skip 0x4
.global lbl_805A8FE8
lbl_805A8FE8:
	.skip 0x4
.global lbl_805A8FEC
lbl_805A8FEC:
	.skip 0x4
.global lbl_805A8FF0
lbl_805A8FF0:
	.skip 0x4
.global lbl_805A8FF4
lbl_805A8FF4:
	.skip 0x4
.global lbl_805A8FF8
lbl_805A8FF8:
	.skip 0x8
.global lbl_805A9000
lbl_805A9000:
	.skip 0x4
.global lbl_805A9004
lbl_805A9004:
	.skip 0x4
.global lbl_805A9008
lbl_805A9008:
	.skip 0x4
.global lbl_805A900C
lbl_805A900C:
	.skip 0x4
.global lbl_805A9010
lbl_805A9010:
	.skip 0x4
.global lbl_805A9014
lbl_805A9014:
	.skip 0x4
.global lbl_805A9018
lbl_805A9018:
	.skip 0x4
.global lbl_805A901C
lbl_805A901C:
	.skip 0x4
.global lbl_805A9020
lbl_805A9020:
	.skip 0x8
.global lbl_805A9028
lbl_805A9028:
	.skip 0x4
.global lbl_805A902C
lbl_805A902C:
	.skip 0x4
.global lbl_805A9030
lbl_805A9030:
	.skip 0x4
.global lbl_805A9034
lbl_805A9034:
	.skip 0x4
.global lbl_805A9038
lbl_805A9038:
	.skip 0x4
.global lbl_805A903C
lbl_805A903C:
	.skip 0x4
.global lbl_805A9040
lbl_805A9040:
	.skip 0x1
.global lbl_805A9041
lbl_805A9041:
	.skip 0x7
.global lbl_805A9048
lbl_805A9048:
	.skip 0x8
.global lbl_805A9050
lbl_805A9050:
	.skip 0x4
.global lbl_805A9054
lbl_805A9054:
	.skip 0x4
.global lbl_805A9058
lbl_805A9058:
	.skip 0x4
.global lbl_805A905C
lbl_805A905C:
	.skip 0x4
.global lbl_805A9060
lbl_805A9060:
	.skip 0x8
.global lbl_805A9068
lbl_805A9068:
	.skip 0x4
.global lbl_805A906C
lbl_805A906C:
	.skip 0x4
.global lbl_805A9070
lbl_805A9070:
	.skip 0x8
.global lbl_805A9078
lbl_805A9078:
	.skip 0x8
.global lbl_805A9080
lbl_805A9080:
	.skip 0x4
.global lbl_805A9084
lbl_805A9084:
	.skip 0x4
.global lbl_805A9088
lbl_805A9088:
	.skip 0x4
.global lbl_805A908C
lbl_805A908C:
	.skip 0x4
.global lbl_805A9090
lbl_805A9090:
	.skip 0x4
.global lbl_805A9094
lbl_805A9094:
	.skip 0x4
.global lbl_805A9098
lbl_805A9098:
	.skip 0x4
.global lbl_805A909C
lbl_805A909C:
	.skip 0x4
.global lbl_805A90A0
lbl_805A90A0:
	.skip 0x8
.global lbl_805A90A8
lbl_805A90A8:
	.skip 0x4
.global lbl_805A90AC
lbl_805A90AC:
	.skip 0x4
.global lbl_805A90B0
lbl_805A90B0:
	.skip 0x4
.global lbl_805A90B4
lbl_805A90B4:
	.skip 0x4
.global lbl_805A90B8
lbl_805A90B8:
	.skip 0x4
.global lbl_805A90BC
lbl_805A90BC:
	.skip 0x4
.global lbl_805A90C0
lbl_805A90C0:
	.skip 0x4
.global lbl_805A90C4
lbl_805A90C4:
	.skip 0x4
.global lbl_805A90C8
lbl_805A90C8:
	.skip 0x4
.global lbl_805A90CC
lbl_805A90CC:
	.skip 0x4
.global lbl_805A90D0
lbl_805A90D0:
	.skip 0x4
.global lbl_805A90D4
lbl_805A90D4:
	.skip 0x4
.global lbl_805A90D8
lbl_805A90D8:
	.skip 0x8
.global lbl_805A90E0
lbl_805A90E0:
	.skip 0x4
.global lbl_805A90E4
lbl_805A90E4:
	.skip 0x4
.global lbl_805A90E8
lbl_805A90E8:
	.skip 0x4
.global lbl_805A90EC
lbl_805A90EC:
	.skip 0x4
.global lbl_805A90F0
lbl_805A90F0:
	.skip 0x1
.global lbl_805A90F1
lbl_805A90F1:
	.skip 0x7
.global lbl_805A90F8
lbl_805A90F8:
	.skip 0x4
.global lbl_805A90FC
lbl_805A90FC:
	.skip 0x4
.global lbl_805A9100
lbl_805A9100:
	.skip 0x4
.global lbl_805A9104
lbl_805A9104:
	.skip 0x4
.global lbl_805A9108
lbl_805A9108:
	.skip 0x8
.global lbl_805A9110
lbl_805A9110:
	.skip 0x8
.global lbl_805A9118
lbl_805A9118:
	.skip 0x8
.global lbl_805A9120
lbl_805A9120:
	.skip 0x8
.global lbl_805A9128
lbl_805A9128:
	.skip 0x4
.global lbl_805A912C
lbl_805A912C:
	.skip 0x4
.global lbl_805A9130
lbl_805A9130:
	.skip 0x4
.global lbl_805A9134
lbl_805A9134:
	.skip 0x4
.global lbl_805A9138
lbl_805A9138:
	.skip 0x4
.global lbl_805A913C
lbl_805A913C:
	.skip 0x4
.global lbl_805A9140
lbl_805A9140:
	.skip 0x4
.global lbl_805A9144
lbl_805A9144:
	.skip 0x4
.global lbl_805A9148
lbl_805A9148:
	.skip 0x8
.global lbl_805A9150
lbl_805A9150:
	.skip 0x4
.global lbl_805A9154
lbl_805A9154:
	.skip 0x4
.global lbl_805A9158
lbl_805A9158:
	.skip 0x4
.global lbl_805A915C
lbl_805A915C:
	.skip 0x4
.global lbl_805A9160
lbl_805A9160:
	.skip 0x8
.global lbl_805A9168
lbl_805A9168:
	.skip 0x8
.global lbl_805A9170
lbl_805A9170:
	.skip 0x4
.global lbl_805A9174
lbl_805A9174:
	.skip 0x4
.global lbl_805A9178
lbl_805A9178:
	.skip 0x8
.global lbl_805A9180
lbl_805A9180:
	.skip 0x4
.global lbl_805A9184
lbl_805A9184:
	.skip 0x4
.global lbl_805A9188
lbl_805A9188:
	.skip 0x4
.global lbl_805A918C
lbl_805A918C:
	.skip 0x4
.global lbl_805A9190
lbl_805A9190:
	.skip 0x8
.global lbl_805A9198
lbl_805A9198:
	.skip 0x8
.global lbl_805A91A0
lbl_805A91A0:
	.skip 0x8
.global lbl_805A91A8
lbl_805A91A8:
	.skip 0x4
.global lbl_805A91AC
lbl_805A91AC:
	.skip 0x4
.global lbl_805A91B0
lbl_805A91B0:
	.skip 0x4
.global lbl_805A91B4
lbl_805A91B4:
	.skip 0x8
.global lbl_805A91BC
lbl_805A91BC:
	.skip 0x8
.global lbl_805A91C4
lbl_805A91C4:
	.skip 0x8
.global lbl_805A91CC
lbl_805A91CC:
	.skip 0x4
.global lbl_805A91D0
lbl_805A91D0:
	.skip 0x4
.global lbl_805A91D4
lbl_805A91D4:
	.skip 0x8
.global lbl_805A91DC
lbl_805A91DC:
	.skip 0x4
.global lbl_805A91E0
lbl_805A91E0:
	.skip 0x4
.global lbl_805A91E4
lbl_805A91E4:
	.skip 0x4
.global lbl_805A91E8
lbl_805A91E8:
	.skip 0x1
.global lbl_805A91E9
lbl_805A91E9:
	.skip 0x3
.global lbl_805A91EC
lbl_805A91EC:
	.skip 0x4
.global lbl_805A91F0
lbl_805A91F0:
	.skip 0x4
.global lbl_805A91F4
lbl_805A91F4:
	.skip 0x4
.global lbl_805A91F8
lbl_805A91F8:
	.skip 0x8
.global lbl_805A9200
lbl_805A9200:
	.skip 0x8
.global lbl_805A9208
lbl_805A9208:
	.skip 0x4
.global lbl_805A920C
lbl_805A920C:
	.skip 0x4
.global lbl_805A9210
lbl_805A9210:
	.skip 0x4
.global lbl_805A9214
lbl_805A9214:
	.skip 0x1
.global lbl_805A9215
lbl_805A9215:
	.skip 0x1
.global lbl_805A9216
lbl_805A9216:
	.skip 0x1
.global lbl_805A9217
lbl_805A9217:
	.skip 0x1
.global lbl_805A9218
lbl_805A9218:
	.skip 0x4
.global lbl_805A921C
lbl_805A921C:
	.skip 0x4
.global lbl_805A9220
lbl_805A9220:
	.skip 0x4
.global lbl_805A9224
lbl_805A9224:
	.skip 0x4
.global lbl_805A9228
lbl_805A9228:
	.skip 0x4
.global lbl_805A922C
lbl_805A922C:
	.skip 0x4
.global lbl_805A9230
lbl_805A9230:
	.skip 0x4
.global lbl_805A9234
lbl_805A9234:
	.skip 0x4
.global lbl_805A9238
lbl_805A9238:
	.skip 0x4
.global lbl_805A923C
lbl_805A923C:
	.skip 0x4
.global lbl_805A9240
lbl_805A9240:
	.skip 0x8
.global lbl_805A9248
lbl_805A9248:
	.skip 0x4
.global lbl_805A924C
lbl_805A924C:
	.skip 0x4
.global lbl_805A9250
lbl_805A9250:
	.skip 0x4
.global lbl_805A9254
lbl_805A9254:
	.skip 0x4
.global lbl_805A9258
lbl_805A9258:
	.skip 0x4
.global lbl_805A925C
lbl_805A925C:
	.skip 0x4
.global lbl_805A9260
lbl_805A9260:
	.skip 0x4
.global lbl_805A9264
lbl_805A9264:
	.skip 0x4
.global lbl_805A9268
lbl_805A9268:
	.skip 0x8
.global lbl_805A9270
lbl_805A9270:
	.skip 0x4
.global lbl_805A9274
lbl_805A9274:
	.skip 0x4
.global lbl_805A9278
lbl_805A9278:
	.skip 0x4
.global lbl_805A927C
lbl_805A927C:
	.skip 0x4
.global lbl_805A9280
lbl_805A9280:
	.skip 0x4
.global lbl_805A9284
lbl_805A9284:
	.skip 0x4
.global lbl_805A9288
lbl_805A9288:
	.skip 0x4
.global lbl_805A928C
lbl_805A928C:
	.skip 0x4
.global lbl_805A9290
lbl_805A9290:
	.skip 0x4
.global lbl_805A9294
lbl_805A9294:
	.skip 0x4
.global lbl_805A9298
lbl_805A9298:
	.skip 0x4
.global lbl_805A929C
lbl_805A929C:
	.skip 0x4
.global lbl_805A92A0
lbl_805A92A0:
	.skip 0x4
.global lbl_805A92A4
lbl_805A92A4:
	.skip 0x4
.global lbl_805A92A8
lbl_805A92A8:
	.skip 0x4
.global lbl_805A92AC
lbl_805A92AC:
	.skip 0x4
.global lbl_805A92B0
lbl_805A92B0:
	.skip 0x4
.global lbl_805A92B4
lbl_805A92B4:
	.skip 0x4
.global lbl_805A92B8
lbl_805A92B8:
	.skip 0x8
.global lbl_805A92C0
lbl_805A92C0:
	.skip 0x4
.global lbl_805A92C4
lbl_805A92C4:
	.skip 0x4
.global lbl_805A92C8
lbl_805A92C8:
	.skip 0x4
.global lbl_805A92CC
lbl_805A92CC:
	.skip 0x4
.global lbl_805A92D0
lbl_805A92D0:
	.skip 0x8
.global lbl_805A92D8
lbl_805A92D8:
	.skip 0x8
.global lbl_805A92E0
lbl_805A92E0:
	.skip 0x4
.global lbl_805A92E4
lbl_805A92E4:
	.skip 0x4
.global lbl_805A92E8
lbl_805A92E8:
	.skip 0x4
.global lbl_805A92EC
lbl_805A92EC:
	.skip 0x4
.global lbl_805A92F0
lbl_805A92F0:
	.skip 0x4
.global lbl_805A92F4
lbl_805A92F4:
	.skip 0x4
.global lbl_805A92F8
lbl_805A92F8:
	.skip 0x4
.global lbl_805A92FC
lbl_805A92FC:
	.skip 0x4
.global lbl_805A9300
lbl_805A9300:
	.skip 0x4
.global lbl_805A9304
lbl_805A9304:
	.skip 0x4
.global lbl_805A9308
lbl_805A9308:
	.skip 0x4
.global lbl_805A930C
lbl_805A930C:
	.skip 0x4
.global lbl_805A9310
lbl_805A9310:
	.skip 0x8
.global lbl_805A9318
lbl_805A9318:
	.skip 0x8
.global lbl_805A9320
lbl_805A9320:
	.skip 0x4
.global lbl_805A9324
lbl_805A9324:
	.skip 0x4
.global lbl_805A9328
lbl_805A9328:
	.skip 0x4
.global lbl_805A932C
lbl_805A932C:
	.skip 0x4
.global lbl_805A9330
lbl_805A9330:
	.skip 0x8
.global lbl_805A9338
lbl_805A9338:
	.skip 0x4
.global lbl_805A933C
lbl_805A933C:
	.skip 0x4
.global lbl_805A9340
lbl_805A9340:
	.skip 0x1
.global lbl_805A9341
lbl_805A9341:
	.skip 0x1
.global lbl_805A9342
lbl_805A9342:
	.skip 0x2
.global lbl_805A9344
lbl_805A9344:
	.skip 0x4
.global lbl_805A9348
lbl_805A9348:
	.skip 0x4
.global lbl_805A934C
lbl_805A934C:
	.skip 0x4
.global lbl_805A9350
lbl_805A9350:
	.skip 0x8
.global lbl_805A9358
lbl_805A9358:
	.skip 0x4
.global lbl_805A935C
lbl_805A935C:
	.skip 0x4
.global lbl_805A9360
lbl_805A9360:
	.skip 0x8
.global lbl_805A9368
lbl_805A9368:
	.skip 0x8
.global lbl_805A9370
lbl_805A9370:
	.skip 0x4
.global lbl_805A9374
lbl_805A9374:
	.skip 0x4
.global lbl_805A9378
lbl_805A9378:
	.skip 0x8
.global lbl_805A9380
lbl_805A9380:
	.skip 0x4
.global lbl_805A9384
lbl_805A9384:
	.skip 0x4
.global lbl_805A9388
lbl_805A9388:
	.skip 0x4
.global lbl_805A938C
lbl_805A938C:
	.skip 0x4
.global lbl_805A9390
lbl_805A9390:
	.skip 0x4
.global lbl_805A9394
lbl_805A9394:
	.skip 0x4
.global lbl_805A9398
lbl_805A9398:
	.skip 0x4
.global lbl_805A939C
lbl_805A939C:
	.skip 0x4
.global lbl_805A93A0
lbl_805A93A0:
	.skip 0x4
.global lbl_805A93A4
lbl_805A93A4:
	.skip 0x4
.global lbl_805A93A8
lbl_805A93A8:
	.skip 0x4
.global lbl_805A93AC
lbl_805A93AC:
	.skip 0x4
.global lbl_805A93B0
lbl_805A93B0:
	.skip 0x4
.global lbl_805A93B4
lbl_805A93B4:
	.skip 0x4
.global lbl_805A93B8
lbl_805A93B8:
	.skip 0x4
.global lbl_805A93BC
lbl_805A93BC:
	.skip 0x4
.global lbl_805A93C0
lbl_805A93C0:
	.skip 0x4
.global lbl_805A93C4
lbl_805A93C4:
	.skip 0x4
.global lbl_805A93C8
lbl_805A93C8:
	.skip 0x4
.global lbl_805A93CC
lbl_805A93CC:
	.skip 0x4
.global lbl_805A93D0
lbl_805A93D0:
	.skip 0x4
.global lbl_805A93D4
lbl_805A93D4:
	.skip 0x1
.global lbl_805A93D5
lbl_805A93D5:
	.skip 0x1
.global lbl_805A93D6
lbl_805A93D6:
	.skip 0x1
.global lbl_805A93D7
lbl_805A93D7:
	.skip 0x1
.global lbl_805A93D8
lbl_805A93D8:
	.skip 0x4
.global lbl_805A93DC
lbl_805A93DC:
	.skip 0x4
.global lbl_805A93E0
lbl_805A93E0:
	.skip 0x4
.global lbl_805A93E4
lbl_805A93E4:
	.skip 0x4
.global lbl_805A93E8
lbl_805A93E8:
	.skip 0x4
.global lbl_805A93EC
lbl_805A93EC:
	.skip 0x4
.global lbl_805A93F0
lbl_805A93F0:
	.skip 0x4
.global lbl_805A93F4
lbl_805A93F4:
	.skip 0x4
.global lbl_805A93F8
lbl_805A93F8:
	.skip 0x4
.global lbl_805A93FC
lbl_805A93FC:
	.skip 0x4
.global lbl_805A9400
lbl_805A9400:
	.skip 0x4
.global lbl_805A9404
lbl_805A9404:
	.skip 0x4
.global lbl_805A9408
lbl_805A9408:
	.skip 0x4
.global lbl_805A940C
lbl_805A940C:
	.skip 0x4
.global lbl_805A9410
lbl_805A9410:
	.skip 0x4
.global lbl_805A9414
lbl_805A9414:
	.skip 0x4
.global lbl_805A9418
lbl_805A9418:
	.skip 0x4
.global lbl_805A941C
lbl_805A941C:
	.skip 0x4
.global lbl_805A9420
lbl_805A9420:
	.skip 0x8
.global lbl_805A9428
lbl_805A9428:
	.skip 0x8
.global lbl_805A9430
lbl_805A9430:
	.skip 0x4
.global lbl_805A9434
lbl_805A9434:
	.skip 0x4
.global lbl_805A9438
lbl_805A9438:
	.skip 0x8
.global lbl_805A9440
lbl_805A9440:
	.skip 0x8
.global lbl_805A9448
lbl_805A9448:
	.skip 0x4
.global lbl_805A944C
lbl_805A944C:
	.skip 0x4
.global lbl_805A9450
lbl_805A9450:
	.skip 0x4
.global lbl_805A9454
lbl_805A9454:
	.skip 0x4
.global lbl_805A9458
lbl_805A9458:
	.skip 0x8
.global lbl_805A9460
lbl_805A9460:
	.skip 0x4
.global lbl_805A9464
lbl_805A9464:
	.skip 0x4
.global lbl_805A9468
lbl_805A9468:
	.skip 0x8
.global lbl_805A9470
lbl_805A9470:
	.skip 0x4
.global lbl_805A9474
lbl_805A9474:
	.skip 0x4
.global lbl_805A9478
lbl_805A9478:
	.skip 0x1
.global lbl_805A9479
lbl_805A9479:
	.skip 0x1
.global lbl_805A947A
lbl_805A947A:
	.skip 0x1
.global lbl_805A947B
lbl_805A947B:
	.skip 0x1
.global lbl_805A947C
lbl_805A947C:
	.skip 0x4
.global lbl_805A9480
lbl_805A9480:
	.skip 0x4
.global lbl_805A9484
lbl_805A9484:
	.skip 0x1
.global lbl_805A9485
lbl_805A9485:
	.skip 0x3
.global lbl_805A9488
lbl_805A9488:
	.skip 0x4
.global lbl_805A948C
lbl_805A948C:
	.skip 0x4
.global lbl_805A9490
lbl_805A9490:
	.skip 0x4
.global lbl_805A9494
lbl_805A9494:
	.skip 0x4
.global lbl_805A9498
lbl_805A9498:
	.skip 0x4
.global lbl_805A949C
lbl_805A949C:
	.skip 0x4
.global lbl_805A94A0
lbl_805A94A0:
	.skip 0x4
.global lbl_805A94A4
lbl_805A94A4:
	.skip 0x4
.global lbl_805A94A8
lbl_805A94A8:
	.skip 0x4
.global lbl_805A94AC
lbl_805A94AC:
	.skip 0x4
.global lbl_805A94B0
lbl_805A94B0:
	.skip 0x4
.global lbl_805A94B4
lbl_805A94B4:
	.skip 0x4
.global lbl_805A94B8
lbl_805A94B8:
	.skip 0x8
.global lbl_805A94C0
lbl_805A94C0:
	.skip 0x4
.global lbl_805A94C4
lbl_805A94C4:
	.skip 0x4
.global lbl_805A94C8
lbl_805A94C8:
	.skip 0x4
.global lbl_805A94CC
lbl_805A94CC:
	.skip 0x4
.global lbl_805A94D0
lbl_805A94D0:
	.skip 0x4
.global lbl_805A94D4
lbl_805A94D4:
	.skip 0x1
.global lbl_805A94D5
lbl_805A94D5:
	.skip 0x3
.global lbl_805A94D8
lbl_805A94D8:
	.skip 0x2
.global lbl_805A94DA
lbl_805A94DA:
	.skip 0x2
.global lbl_805A94DC
lbl_805A94DC:
	.skip 0x2
.global lbl_805A94DE
lbl_805A94DE:
	.skip 0x2
.global lbl_805A94E0
lbl_805A94E0:
	.skip 0x1
.global lbl_805A94E1
lbl_805A94E1:
	.skip 0x1
.global lbl_805A94E2
lbl_805A94E2:
	.skip 0x1
.global lbl_805A94E3
lbl_805A94E3:
	.skip 0x5
.global lbl_805A94E8
lbl_805A94E8:
	.skip 0x8
.global lbl_805A94F0
lbl_805A94F0:
	.skip 0x2
.global lbl_805A94F2
lbl_805A94F2:
	.skip 0x2
.global lbl_805A94F4
lbl_805A94F4:
	.skip 0x4
.global lbl_805A94F8
lbl_805A94F8:
	.skip 0x4
.global lbl_805A94FC
lbl_805A94FC:
	.skip 0x4
.global lbl_805A9500
lbl_805A9500:
	.skip 0x8
.global lbl_805A9508
lbl_805A9508:
	.skip 0x8
.global lbl_805A9510
lbl_805A9510:
	.skip 0x8
.global lbl_805A9518
lbl_805A9518:
	.skip 0x8
.global lbl_805A9520
lbl_805A9520:
	.skip 0x4
.global lbl_805A9524
lbl_805A9524:
	.skip 0x4
.global lbl_805A9528
lbl_805A9528:
	.skip 0x4
.global lbl_805A952C
lbl_805A952C:
	.skip 0x4
.global lbl_805A9530
lbl_805A9530:
	.skip 0x4
.global lbl_805A9534
lbl_805A9534:
	.skip 0x4
.global lbl_805A9538
lbl_805A9538:
	.skip 0x8
.global lbl_805A9540
lbl_805A9540:
	.skip 0x4
.global lbl_805A9544
lbl_805A9544:
	.skip 0x4
.global lbl_805A9548
lbl_805A9548:
	.skip 0x4
.global lbl_805A954C
lbl_805A954C:
	.skip 0x4
.global lbl_805A9550
lbl_805A9550:
	.skip 0x4
.global lbl_805A9554
lbl_805A9554:
	.skip 0x4
.global lbl_805A9558
lbl_805A9558:
	.skip 0x1
.global lbl_805A9559
lbl_805A9559:
	.skip 0x1
.global lbl_805A955A
lbl_805A955A:
	.skip 0x2
.global lbl_805A955C
lbl_805A955C:
	.skip 0x4
.global lbl_805A9560
lbl_805A9560:
	.skip 0x1
.global lbl_805A9561
lbl_805A9561:
	.skip 0x7
.global lbl_805A9568
lbl_805A9568:
	.skip 0x4
.global lbl_805A956C
lbl_805A956C:
	.skip 0x4
.global lbl_805A9570
lbl_805A9570:
	.skip 0x4
.global lbl_805A9574
lbl_805A9574:
	.skip 0x4
.global lbl_805A9578
lbl_805A9578:
	.skip 0x4
.global lbl_805A957C
lbl_805A957C:
	.skip 0x4
.global lbl_805A9580
lbl_805A9580:
	.skip 0x4
.global lbl_805A9584
lbl_805A9584:
	.skip 0x4
.global lbl_805A9588
lbl_805A9588:
	.skip 0x8
.global lbl_805A9590
lbl_805A9590:
	.skip 0x1
.global lbl_805A9591
lbl_805A9591:
	.skip 0x1
.global lbl_805A9592
lbl_805A9592:
	.skip 0x1
.global lbl_805A9593
lbl_805A9593:
	.skip 0x1
.global lbl_805A9594
lbl_805A9594:
	.skip 0x4
.global lbl_805A9598
lbl_805A9598:
	.skip 0x4
.global lbl_805A959C
lbl_805A959C:
	.skip 0x4
.global lbl_805A95A0
lbl_805A95A0:
	.skip 0x4
.global lbl_805A95A4
lbl_805A95A4:
	.skip 0x4
.global lbl_805A95A8
lbl_805A95A8:
	.skip 0x4
.global lbl_805A95AC
lbl_805A95AC:
	.skip 0x4
.global lbl_805A95B0
lbl_805A95B0:
	.skip 0x4
.global lbl_805A95B4
lbl_805A95B4:
	.skip 0x4
.global lbl_805A95B8
lbl_805A95B8:
	.skip 0x4
.global lbl_805A95BC
lbl_805A95BC:
	.skip 0x4
.global lbl_805A95C0
lbl_805A95C0:
	.skip 0x1
.global lbl_805A95C1
lbl_805A95C1:
	.skip 0x7
.global lbl_805A95C8
lbl_805A95C8:
	.skip 0x1
.global lbl_805A95C9
lbl_805A95C9:
	.skip 0x7
.global lbl_805A95D0
lbl_805A95D0:
	.skip 0x8
.global lbl_805A95D8
lbl_805A95D8:
	.skip 0x8
.global lbl_805A95E0
lbl_805A95E0:
	.skip 0x4
.global lbl_805A95E4
lbl_805A95E4:
	.skip 0x4
.global lbl_805A95E8
lbl_805A95E8:
	.skip 0x1
.global lbl_805A95E9
lbl_805A95E9:
	.skip 0x1
.global lbl_805A95EA
lbl_805A95EA:
	.skip 0x6
.global lbl_805A95F0
lbl_805A95F0:
	.skip 0x4
.global lbl_805A95F4
lbl_805A95F4:
	.skip 0x4
.global lbl_805A95F8
lbl_805A95F8:
	.skip 0x4
.global lbl_805A95FC
lbl_805A95FC:
	.skip 0x4
.global lbl_805A9600
lbl_805A9600:
	.skip 0x1
.global lbl_805A9601
lbl_805A9601:
	.skip 0x7
.global lbl_805A9608
lbl_805A9608:
	.skip 0x4
.global lbl_805A960C
lbl_805A960C:
	.skip 0x4
.global lbl_805A9610
lbl_805A9610:
	.skip 0x4
.global lbl_805A9614
lbl_805A9614:
	.skip 0x4
.global lbl_805A9618
lbl_805A9618:
	.skip 0x4
.global lbl_805A961C
lbl_805A961C:
	.skip 0x4
.global lbl_805A9620
lbl_805A9620:
	.skip 0x4
.global lbl_805A9624
lbl_805A9624:
	.skip 0x4
.global lbl_805A9628
lbl_805A9628:
	.skip 0x4
.global lbl_805A962C
lbl_805A962C:
	.skip 0x4
.global lbl_805A9630
lbl_805A9630:
	.skip 0x4
.global lbl_805A9634
lbl_805A9634:
	.skip 0x4
.global lbl_805A9638
lbl_805A9638:
	.skip 0x4
.global lbl_805A963C
lbl_805A963C:
	.skip 0x4
.global lbl_805A9640
lbl_805A9640:
	.skip 0x4
.global lbl_805A9644
lbl_805A9644:
	.skip 0x4
.global lbl_805A9648
lbl_805A9648:
	.skip 0x8
.global lbl_805A9650
lbl_805A9650:
	.skip 0x4
.global lbl_805A9654
lbl_805A9654:
	.skip 0x4
.global lbl_805A9658
lbl_805A9658:
	.skip 0x8
.global lbl_805A9660
lbl_805A9660:
	.skip 0x4
.global lbl_805A9664
lbl_805A9664:
	.skip 0x4
.global lbl_805A9668
lbl_805A9668:
	.skip 0x4
.global lbl_805A966C
lbl_805A966C:
	.skip 0x4
.global lbl_805A9670
lbl_805A9670:
	.skip 0x1
.global lbl_805A9671
lbl_805A9671:
	.skip 0x7
.global lbl_805A9678
lbl_805A9678:
	.skip 0x8
.global lbl_805A9680
lbl_805A9680:
	.skip 0x4
.global lbl_805A9684
lbl_805A9684:
	.skip 0x4
.global lbl_805A9688
lbl_805A9688:
	.skip 0x8
.global lbl_805A9690
lbl_805A9690:
	.skip 0x4
.global lbl_805A9694
lbl_805A9694:
	.skip 0x4
.global lbl_805A9698
lbl_805A9698:
	.skip 0x4
.global lbl_805A969C
lbl_805A969C:
	.skip 0x4
.global lbl_805A96A0
lbl_805A96A0:
	.skip 0x8
.global lbl_805A96A8
lbl_805A96A8:
	.skip 0x4
.global lbl_805A96AC
lbl_805A96AC:
	.skip 0x4
.global lbl_805A96B0
lbl_805A96B0:
	.skip 0x8
.global lbl_805A96B8
lbl_805A96B8:
	.skip 0x4
.global lbl_805A96BC
lbl_805A96BC:
	.skip 0x4
.global lbl_805A96C0
lbl_805A96C0:
	.skip 0x4
.global lbl_805A96C4
lbl_805A96C4:
	.skip 0x4
.global lbl_805A96C8
lbl_805A96C8:
	.skip 0x4
.global lbl_805A96CC
lbl_805A96CC:
	.skip 0x4
.global lbl_805A96D0
lbl_805A96D0:
	.skip 0x4
.global lbl_805A96D4
lbl_805A96D4:
	.skip 0x4
.global lbl_805A96D8
lbl_805A96D8:
	.skip 0x4
.global lbl_805A96DC
lbl_805A96DC:
	.skip 0x4
.global lbl_805A96E0
lbl_805A96E0:
	.skip 0x4
.global lbl_805A96E4
lbl_805A96E4:
	.skip 0x4
.global lbl_805A96E8
lbl_805A96E8:
	.skip 0x4
.global lbl_805A96EC
lbl_805A96EC:
	.skip 0x4
.global lbl_805A96F0
lbl_805A96F0:
	.skip 0x4
.global lbl_805A96F4
lbl_805A96F4:
	.skip 0x4
.global lbl_805A96F8
lbl_805A96F8:
	.skip 0x4
.global lbl_805A96FC
lbl_805A96FC:
	.skip 0x4
.global lbl_805A9700
lbl_805A9700:
	.skip 0x4
.global lbl_805A9704
lbl_805A9704:
	.skip 0x4
.global lbl_805A9708
lbl_805A9708:
	.skip 0x4
.global lbl_805A970C
lbl_805A970C:
	.skip 0x4
.global lbl_805A9710
lbl_805A9710:
	.skip 0x4
.global lbl_805A9714
lbl_805A9714:
	.skip 0x4
.global lbl_805A9718
lbl_805A9718:
	.skip 0x4
.global lbl_805A971C
lbl_805A971C:
	.skip 0x4
.global lbl_805A9720
lbl_805A9720:
	.skip 0x4
.global lbl_805A9724
lbl_805A9724:
	.skip 0x4
.global lbl_805A9728
lbl_805A9728:
	.skip 0x4
.global lbl_805A972C
lbl_805A972C:
	.skip 0x4
.global lbl_805A9730
lbl_805A9730:
	.skip 0x4
.global lbl_805A9734
lbl_805A9734:
	.skip 0x4
.global lbl_805A9738
lbl_805A9738:
	.skip 0x4
.global lbl_805A973C
lbl_805A973C:
	.skip 0x4
.global lbl_805A9740
lbl_805A9740:
	.skip 0x4
.global lbl_805A9744
lbl_805A9744:
	.skip 0x4
.global lbl_805A9748
lbl_805A9748:
	.skip 0x8
.global lbl_805A9750
lbl_805A9750:
	.skip 0x4
.global lbl_805A9754
lbl_805A9754:
	.skip 0x4
.global lbl_805A9758
lbl_805A9758:
	.skip 0x4
.global lbl_805A975C
lbl_805A975C:
	.skip 0x4
.global lbl_805A9760
lbl_805A9760:
	.skip 0x4
.global lbl_805A9764
lbl_805A9764:
	.skip 0x4
.global lbl_805A9768
lbl_805A9768:
	.skip 0x4
.global lbl_805A976C
lbl_805A976C:
	.skip 0x4
.global lbl_805A9770
lbl_805A9770:
	.skip 0x4
.global lbl_805A9774
lbl_805A9774:
	.skip 0x4
.global lbl_805A9778
lbl_805A9778:
	.skip 0x4
.global lbl_805A977C
lbl_805A977C:
	.skip 0x4
.global lbl_805A9780
lbl_805A9780:
	.skip 0x4
.global lbl_805A9784
lbl_805A9784:
	.skip 0x4
.global lbl_805A9788
lbl_805A9788:
	.skip 0x4
.global lbl_805A978C
lbl_805A978C:
	.skip 0x4
.global lbl_805A9790
lbl_805A9790:
	.skip 0x8
.global lbl_805A9798
lbl_805A9798:
	.skip 0x4
.global lbl_805A979C
lbl_805A979C:
	.skip 0x4
.global lbl_805A97A0
lbl_805A97A0:
	.skip 0x4
.global lbl_805A97A4
lbl_805A97A4:
	.skip 0x4
.global lbl_805A97A8
lbl_805A97A8:
	.skip 0x4
.global lbl_805A97AC
lbl_805A97AC:
	.skip 0x4
.global lbl_805A97B0
lbl_805A97B0:
	.skip 0x4
.global lbl_805A97B4
lbl_805A97B4:
	.skip 0x4
.global lbl_805A97B8
lbl_805A97B8:
	.skip 0x4
.global lbl_805A97BC
lbl_805A97BC:
	.skip 0x4
.global lbl_805A97C0
lbl_805A97C0:
	.skip 0x4
.global lbl_805A97C4
lbl_805A97C4:
	.skip 0x4
.global lbl_805A97C8
lbl_805A97C8:
	.skip 0x8
.global lbl_805A97D0
lbl_805A97D0:
	.skip 0x4
.global lbl_805A97D4
lbl_805A97D4:
	.skip 0x4
.global lbl_805A97D8
lbl_805A97D8:
	.skip 0x4
.global lbl_805A97DC
lbl_805A97DC:
	.skip 0x4
.global lbl_805A97E0
lbl_805A97E0:
	.skip 0x4
.global lbl_805A97E4
lbl_805A97E4:
	.skip 0x4
.global lbl_805A97E8
lbl_805A97E8:
	.skip 0x4
.global lbl_805A97EC
lbl_805A97EC:
	.skip 0x4
.global lbl_805A97F0
lbl_805A97F0:
	.skip 0x4
.global lbl_805A97F4
lbl_805A97F4:
	.skip 0x4
.global lbl_805A97F8
lbl_805A97F8:
	.skip 0x4
.global lbl_805A97FC
lbl_805A97FC:
	.skip 0x4
.global lbl_805A9800
lbl_805A9800:
	.skip 0x4
.global lbl_805A9804
lbl_805A9804:
	.skip 0x4
.global lbl_805A9808
lbl_805A9808:
	.skip 0x4
.global lbl_805A980C
lbl_805A980C:
	.skip 0x4
.global lbl_805A9810
lbl_805A9810:
	.skip 0x4
.global lbl_805A9814
lbl_805A9814:
	.skip 0x4
.global lbl_805A9818
lbl_805A9818:
	.skip 0x8
.global lbl_805A9820
lbl_805A9820:
	.skip 0x8
.global lbl_805A9828
lbl_805A9828:
	.skip 0x4
.global lbl_805A982C
lbl_805A982C:
	.skip 0x4
.global lbl_805A9830
lbl_805A9830:
	.skip 0x8
.global lbl_805A9838
lbl_805A9838:
	.skip 0x4
.global lbl_805A983C
lbl_805A983C:
	.skip 0x4
.global lbl_805A9840
lbl_805A9840:
	.skip 0x4
.global lbl_805A9844
lbl_805A9844:
	.skip 0x4
.global lbl_805A9848
lbl_805A9848:
	.skip 0x4
.global lbl_805A984C
lbl_805A984C:
	.skip 0x4
.global lbl_805A9850
lbl_805A9850:
	.skip 0x4
.global lbl_805A9854
lbl_805A9854:
	.skip 0x4
.global lbl_805A9858
lbl_805A9858:
	.skip 0x4
.global lbl_805A985C
lbl_805A985C:
	.skip 0x4
.global lbl_805A9860
lbl_805A9860:
	.skip 0x4
.global lbl_805A9864
lbl_805A9864:
	.skip 0x4
.global lbl_805A9868
lbl_805A9868:
	.skip 0x4
.global lbl_805A986C
lbl_805A986C:
	.skip 0x4
.global lbl_805A9870
lbl_805A9870:
	.skip 0x4
.global lbl_805A9874
lbl_805A9874:
	.skip 0xC
.global lbl_805A9880
lbl_805A9880:
	.skip 0x4
.global lbl_805A9884
lbl_805A9884:
	.skip 0x4
.global lbl_805A9888
lbl_805A9888:
	.skip 0x4
.global lbl_805A988C
lbl_805A988C:
	.skip 0x4
.global lbl_805A9890
lbl_805A9890:
	.skip 0x4
.global lbl_805A9894
lbl_805A9894:
	.skip 0x4
.global lbl_805A9898
lbl_805A9898:
	.skip 0x4
.global lbl_805A989C
lbl_805A989C:
	.skip 0x4
.global lbl_805A98A0
lbl_805A98A0:
	.skip 0x8
.global lbl_805A98A8
lbl_805A98A8:
	.skip 0x4
.global lbl_805A98AC
lbl_805A98AC:
	.skip 0x4
.global lbl_805A98B0
lbl_805A98B0:
	.skip 0x8
.global lbl_805A98B8
lbl_805A98B8:
	.skip 0x8
.global lbl_805A98C0
lbl_805A98C0:
	.skip 0x4
.global lbl_805A98C4
lbl_805A98C4:
	.skip 0x4
.global lbl_805A98C8
lbl_805A98C8:
	.skip 0x4
.global lbl_805A98CC
lbl_805A98CC:
	.skip 0x4
.global lbl_805A98D0
lbl_805A98D0:
	.skip 0x4
.global lbl_805A98D4
lbl_805A98D4:
	.skip 0x4
.global lbl_805A98D8
lbl_805A98D8:
	.skip 0x8
.global lbl_805A98E0
lbl_805A98E0:
	.skip 0x4
.global lbl_805A98E4
lbl_805A98E4:
	.skip 0x4
.global lbl_805A98E8
lbl_805A98E8:
	.skip 0x4
.global lbl_805A98EC
lbl_805A98EC:
	.skip 0x4
.global lbl_805A98F0
lbl_805A98F0:
	.skip 0x8
.global lbl_805A98F8
lbl_805A98F8:
	.skip 0x8
.global lbl_805A9900
lbl_805A9900:
	.skip 0x4
.global lbl_805A9904
lbl_805A9904:
	.skip 0x4
.global lbl_805A9908
lbl_805A9908:
	.skip 0x8
.global lbl_805A9910
lbl_805A9910:
	.skip 0x4
.global lbl_805A9914
lbl_805A9914:
	.skip 0x4
.global lbl_805A9918
lbl_805A9918:
	.skip 0x4
.global lbl_805A991C
lbl_805A991C:
	.skip 0x4
.global lbl_805A9920
lbl_805A9920:
	.skip 0x4
.global lbl_805A9924
lbl_805A9924:
	.skip 0x4
.global lbl_805A9928
lbl_805A9928:
	.skip 0x8
.global lbl_805A9930
lbl_805A9930:
	.skip 0x4
.global lbl_805A9934
lbl_805A9934:
	.skip 0x4
.global lbl_805A9938
lbl_805A9938:
	.skip 0x4
.global lbl_805A993C
lbl_805A993C:
	.skip 0x4
.global lbl_805A9940
lbl_805A9940:
	.skip 0x4
.global lbl_805A9944
lbl_805A9944:
	.skip 0x4
.global lbl_805A9948
lbl_805A9948:
	.skip 0x4
.global lbl_805A994C
lbl_805A994C:
	.skip 0x4
.global lbl_805A9950
lbl_805A9950:
	.skip 0x4
.global lbl_805A9954
lbl_805A9954:
	.skip 0x4
.global lbl_805A9958
lbl_805A9958:
	.skip 0x4
.global lbl_805A995C
lbl_805A995C:
	.skip 0x4
.global lbl_805A9960
lbl_805A9960:
	.skip 0x4
.global lbl_805A9964
lbl_805A9964:
	.skip 0x8
.global lbl_805A996C
lbl_805A996C:
	.skip 0x4
.global lbl_805A9970
lbl_805A9970:
	.skip 0x4
.global lbl_805A9974
lbl_805A9974:
	.skip 0x4
.global lbl_805A9978
lbl_805A9978:
	.skip 0x2
.global lbl_805A997A
lbl_805A997A:
	.skip 0x2
.global lbl_805A997C
lbl_805A997C:
	.skip 0x4
.global lbl_805A9980
lbl_805A9980:
	.skip 0x4
.global lbl_805A9984
lbl_805A9984:
	.skip 0x4
.global lbl_805A9988
lbl_805A9988:
	.skip 0x8
.global lbl_805A9990
lbl_805A9990:
	.skip 0x4
.global lbl_805A9994
lbl_805A9994:
	.skip 0x4
.global lbl_805A9998
lbl_805A9998:
	.skip 0x4
.global lbl_805A999C
lbl_805A999C:
	.skip 0x4
.global lbl_805A99A0
lbl_805A99A0:
	.skip 0x4
.global lbl_805A99A4
lbl_805A99A4:
	.skip 0x4
.global lbl_805A99A8
lbl_805A99A8:
	.skip 0x4
.global lbl_805A99AC
lbl_805A99AC:
	.skip 0x4
.global lbl_805A99B0
lbl_805A99B0:
	.skip 0x8
.global lbl_805A99B8
lbl_805A99B8:
	.skip 0x4
.global lbl_805A99BC
lbl_805A99BC:
	.skip 0x4
.global lbl_805A99C0
lbl_805A99C0:
	.skip 0x4
.global lbl_805A99C4
lbl_805A99C4:
	.skip 0x4
.global lbl_805A99C8
lbl_805A99C8:
	.skip 0x8
.global lbl_805A99D0
lbl_805A99D0:
	.skip 0x8
.global lbl_805A99D8
lbl_805A99D8:
	.skip 0x8
.global lbl_805A99E0
lbl_805A99E0:
	.skip 0x8
.global lbl_805A99E8
lbl_805A99E8:
	.skip 0x4
.global lbl_805A99EC
lbl_805A99EC:
	.skip 0x4
.global lbl_805A99F0
lbl_805A99F0:
	.skip 0x4
.global lbl_805A99F4
lbl_805A99F4:
	.skip 0x4
.global lbl_805A99F8
lbl_805A99F8:
	.skip 0x4
.global lbl_805A99FC
lbl_805A99FC:
	.skip 0x4
.global lbl_805A9A00
lbl_805A9A00:
	.skip 0x4
.global lbl_805A9A04
lbl_805A9A04:
	.skip 0x4
.global lbl_805A9A08
lbl_805A9A08:
	.skip 0x1
.global lbl_805A9A09
lbl_805A9A09:
	.skip 0x3
.global lbl_805A9A0C
lbl_805A9A0C:
	.skip 0x8
.global lbl_805A9A14
lbl_805A9A14:
	.skip 0x8
.global lbl_805A9A1C
lbl_805A9A1C:
	.skip 0x8
.global lbl_805A9A24
lbl_805A9A24:
	.skip 0x8
.global lbl_805A9A2C
lbl_805A9A2C:
	.skip 0x4
.global lbl_805A9A30
lbl_805A9A30:
	.skip 0x4
.global lbl_805A9A34
lbl_805A9A34:
	.skip 0x4
.global lbl_805A9A38
lbl_805A9A38:
	.skip 0x4
.global lbl_805A9A3C
lbl_805A9A3C:
	.skip 0x4
.global lbl_805A9A40
lbl_805A9A40:
	.skip 0x8
.global lbl_805A9A48
lbl_805A9A48:
	.skip 0x4
.global lbl_805A9A4C
lbl_805A9A4C:
	.skip 0x4
.global lbl_805A9A50
lbl_805A9A50:
	.skip 0x4
.global lbl_805A9A54
lbl_805A9A54:
	.skip 0x1
.global lbl_805A9A55
lbl_805A9A55:
	.skip 0x3
.global lbl_805A9A58
lbl_805A9A58:
	.skip 0x4
.global lbl_805A9A5C
lbl_805A9A5C:
	.skip 0x4
.global lbl_805A9A60
lbl_805A9A60:
	.skip 0x8
.global lbl_805A9A68
lbl_805A9A68:
	.skip 0x4
.global lbl_805A9A6C
lbl_805A9A6C:
	.skip 0x8
.global lbl_805A9A74
lbl_805A9A74:
	.skip 0x4
.global lbl_805A9A78
lbl_805A9A78:
	.skip 0x4
.global lbl_805A9A7C
lbl_805A9A7C:
	.skip 0x4
.global lbl_805A9A80
lbl_805A9A80:
	.skip 0x8
.global lbl_805A9A88
lbl_805A9A88:
	.skip 0x4
.global lbl_805A9A8C
lbl_805A9A8C:
	.skip 0x4
.global lbl_805A9A90
lbl_805A9A90:
	.skip 0x2
.global lbl_805A9A92
lbl_805A9A92:
	.skip 0x2
.global lbl_805A9A94
lbl_805A9A94:
	.skip 0x2
.global lbl_805A9A96
lbl_805A9A96:
	.skip 0x2
.global lbl_805A9A98
lbl_805A9A98:
	.skip 0x2
.global lbl_805A9A9A
lbl_805A9A9A:
	.skip 0x6
.global lbl_805A9AA0
lbl_805A9AA0:
	.skip 0x8
.global lbl_805A9AA8
lbl_805A9AA8:
	.skip 0x4
.global lbl_805A9AAC
lbl_805A9AAC:
	.skip 0x4
.global lbl_805A9AB0
lbl_805A9AB0:
	.skip 0x4
.global lbl_805A9AB4
lbl_805A9AB4:
	.skip 0x4
.global lbl_805A9AB8
lbl_805A9AB8:
	.skip 0x8
.global lbl_805A9AC0
lbl_805A9AC0:
	.skip 0x4
.global lbl_805A9AC4
lbl_805A9AC4:
	.skip 0x4
.global lbl_805A9AC8
lbl_805A9AC8:
	.skip 0x4
.global lbl_805A9ACC
lbl_805A9ACC:
	.skip 0x2
.global lbl_805A9ACE
lbl_805A9ACE:
	.skip 0x1
.global lbl_805A9ACF
lbl_805A9ACF:
	.skip 0x1
.global lbl_805A9AD0
lbl_805A9AD0:
	.skip 0x1
.global lbl_805A9AD1
lbl_805A9AD1:
	.skip 0x7
.global lbl_805A9AD8
lbl_805A9AD8:
	.skip 0x8
.global lbl_805A9AE0
lbl_805A9AE0:
	.skip 0x4
.global lbl_805A9AE4
lbl_805A9AE4:
	.skip 0x4
.global lbl_805A9AE8
lbl_805A9AE8:
	.skip 0x4
.global lbl_805A9AEC
lbl_805A9AEC:
	.skip 0x4
.global lbl_805A9AF0
lbl_805A9AF0:
	.skip 0x4
.global lbl_805A9AF4
lbl_805A9AF4:
	.skip 0x4
.global lbl_805A9AF8
lbl_805A9AF8:
	.skip 0x4
.global lbl_805A9AFC
lbl_805A9AFC:
	.skip 0x4
.global lbl_805A9B00
lbl_805A9B00:
	.skip 0x4
.global lbl_805A9B04
lbl_805A9B04:
	.skip 0x4
.global lbl_805A9B08
lbl_805A9B08:
	.skip 0x4
.global lbl_805A9B0C
lbl_805A9B0C:
	.skip 0x4
.global lbl_805A9B10
lbl_805A9B10:
	.skip 0x4
.global lbl_805A9B14
lbl_805A9B14:
	.skip 0x4
.global lbl_805A9B18
lbl_805A9B18:
	.skip 0x8
.global lbl_805A9B20
lbl_805A9B20:
	.skip 0x1
.global lbl_805A9B21
lbl_805A9B21:
	.skip 0x1
.global lbl_805A9B22
lbl_805A9B22:
	.skip 0x1
.global lbl_805A9B23
lbl_805A9B23:
	.skip 0x1
.global lbl_805A9B24
lbl_805A9B24:
	.skip 0x1
.global lbl_805A9B25
lbl_805A9B25:
	.skip 0x3
.global lbl_805A9B28
lbl_805A9B28:
	.skip 0x4
.global lbl_805A9B2C
lbl_805A9B2C:
	.skip 0x4
.global lbl_805A9B30
lbl_805A9B30:
	.skip 0x4
.global lbl_805A9B34
lbl_805A9B34:
	.skip 0x4
.global lbl_805A9B38
lbl_805A9B38:
	.skip 0x4
.global lbl_805A9B3C
lbl_805A9B3C:
	.skip 0x4
.global lbl_805A9B40
lbl_805A9B40:
	.skip 0x4
.global lbl_805A9B44
lbl_805A9B44:
	.skip 0x4
.global lbl_805A9B48
lbl_805A9B48:
	.skip 0x4
.global lbl_805A9B4C
lbl_805A9B4C:
	.skip 0x1
.global lbl_805A9B4D
lbl_805A9B4D:
	.skip 0x1
.global lbl_805A9B4E
lbl_805A9B4E:
	.skip 0x1
.global lbl_805A9B4F
lbl_805A9B4F:
	.skip 0x1
.global lbl_805A9B50
lbl_805A9B50:
	.skip 0x4
.global lbl_805A9B54
lbl_805A9B54:
	.skip 0x4
.global lbl_805A9B58
lbl_805A9B58:
	.skip 0x4
.global lbl_805A9B5C
lbl_805A9B5C:
	.skip 0x4
.global lbl_805A9B60
lbl_805A9B60:
	.skip 0x4
.global lbl_805A9B64
lbl_805A9B64:
	.skip 0x4
.global lbl_805A9B68
lbl_805A9B68:
	.skip 0x4
.global lbl_805A9B6C
lbl_805A9B6C:
	.skip 0x4
.global lbl_805A9B70
lbl_805A9B70:
	.skip 0x4
.global lbl_805A9B74
lbl_805A9B74:
	.skip 0x4
.global lbl_805A9B78
lbl_805A9B78:
	.skip 0x4
.global lbl_805A9B7C
lbl_805A9B7C:
	.skip 0x4
.global lbl_805A9B80
lbl_805A9B80:
	.skip 0x4
.global lbl_805A9B84
lbl_805A9B84:
	.skip 0x4
.global lbl_805A9B88
lbl_805A9B88:
	.skip 0x4
.global lbl_805A9B8C
lbl_805A9B8C:
	.skip 0x4
.global lbl_805A9B90
lbl_805A9B90:
	.skip 0x4
.global lbl_805A9B94
lbl_805A9B94:
	.skip 0x4
.global lbl_805A9B98
lbl_805A9B98:
	.skip 0x4
.global lbl_805A9B9C
lbl_805A9B9C:
	.skip 0x4
.global lbl_805A9BA0
lbl_805A9BA0:
	.skip 0x4
.global lbl_805A9BA4
lbl_805A9BA4:
	.skip 0x4
.global lbl_805A9BA8
lbl_805A9BA8:
	.skip 0x4
.global lbl_805A9BAC
lbl_805A9BAC:
	.skip 0x4
.global lbl_805A9BB0
lbl_805A9BB0:
	.skip 0x4
.global lbl_805A9BB4
lbl_805A9BB4:
	.skip 0x4
.global lbl_805A9BB8
lbl_805A9BB8:
	.skip 0x1
.global lbl_805A9BB9
lbl_805A9BB9:
	.skip 0x3
.global lbl_805A9BBC
lbl_805A9BBC:
	.skip 0x4
.global lbl_805A9BC0
lbl_805A9BC0:
	.skip 0x4
.global lbl_805A9BC4
lbl_805A9BC4:
	.skip 0x4
.global lbl_805A9BC8
lbl_805A9BC8:
	.skip 0x8
.global lbl_805A9BD0
lbl_805A9BD0:
	.skip 0x4
.global lbl_805A9BD4
lbl_805A9BD4:
	.skip 0x4
.global lbl_805A9BD8
lbl_805A9BD8:
	.skip 0x8
.global lbl_805A9BE0
lbl_805A9BE0:
	.skip 0x8
.global lbl_805A9BE8
lbl_805A9BE8:
	.skip 0x4
.global lbl_805A9BEC
lbl_805A9BEC:
	.skip 0x4
.global lbl_805A9BF0
lbl_805A9BF0:
	.skip 0x4
.global lbl_805A9BF4
lbl_805A9BF4:
	.skip 0xC
.global Ydchuff
Ydchuff:
	.skip 0x20
.global Udchuff
Udchuff:
	.skip 0x20
.global Vdchuff
Vdchuff:
	.skip 0x20
.global Yachuff
Yachuff:
	.skip 0x20
.global Uachuff
Uachuff:
	.skip 0x20
.global Vachuff
Vachuff:
	.skip 0x4
.global lbl_805A9CA4
lbl_805A9CA4:
	.skip 0x4
.global lbl_805A9CA8
lbl_805A9CA8:
	.skip 0x4
.global lbl_805A9CAC
lbl_805A9CAC:
	.skip 0x14
.global lbl_805A9CC0
lbl_805A9CC0:
	.skip 0x20
.global lbl_805A9CE0
lbl_805A9CE0:
	.skip 0x20
.global lbl_805A9D00
lbl_805A9D00:
	.skip 0x4
.global lbl_805A9D04
lbl_805A9D04:
	.skip 0x4
.global lbl_805A9D08
lbl_805A9D08:
	.skip 0x4
.global __THPWorkArea
__THPWorkArea:
	.skip 0x4
.global __THPInfo
__THPInfo:
	.skip 0x4
.global __THPInitFlag
__THPInitFlag:
	.skip 0x4
.global __GBAReset
__GBAReset:
	.skip 0x4
