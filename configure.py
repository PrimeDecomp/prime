#!/usr/bin/env python3
import os
import io
import sys
import argparse

from shutil import which
from tools import ninja_syntax

parser = argparse.ArgumentParser()
parser.add_argument('--version', dest='version',
                    default='0', help='version to build (0, 1, kor)')
parser.add_argument('--map', dest='map', action='store_true',
                    help='generate map file')
parser.add_argument('--no-check', dest='check', action='store_false', 
                    help='don\'t check hash of resulting dol')
parser.add_argument('--static-libs', dest='static_libs', action='store_true',
                    help='build and use static libs')
parser.add_argument('--devkitppc', dest='devkitppc', help='path to devkitPPC')
if os.name != "nt" and not "_NT-" in os.uname().sysname:
    parser.add_argument('--wine', dest='wine', help='path to wine (or wibo)')
args = parser.parse_args()

LIBS = [
    {
        "lib": "TRK_MINNOW_DOLPHIN",
        "mwcc_version": "1.2.5",
        "cflags": "$cflags_base",
        "objects": [
                ["MetroTRK/mslsupp", True],
            ],
    },
    {
        "lib": "MetroidPrimeCW",
        "cflags": "$cflags_retro",
        "mwcc_version": "1.3.2",
        "objects": [
            "MetroidPrime/main",
            "MetroidPrime/IRenderer",
            "MetroidPrime/Cameras/CCameraManager",
            "MetroidPrime/CControlMapper",
            "MetroidPrime/Cameras/CFirstPersonCamera",
            "MetroidPrime/CObjectList",
            "MetroidPrime/Player/CPlayer",
            ["MetroidPrime/CAxisAngle", True],
            "MetroidPrime/CEulerAngles",
            ["MetroidPrime/CArchMsgParmUserInput", True],
            "MetroidPrime/CFrontEndUI",
            "MetroidPrime/CInputGenerator",
            "MetroidPrime/CMainFlow",
            "MetroidPrime/CMFGame",
            "MetroidPrime/CCredits",
            "MetroidPrime/CSplashScreen",
            "MetroidPrime/CInstruction",
            "MetroidPrime/CAnimData",
            "MetroidPrime/Factories/CCharacterFactory",
            "MetroidPrime/Factories/CAssetFactory",
            "MetroidPrime/Tweaks/CTweakPlayer",
            "MetroidPrime/Tweaks/CTweaks",
            "MetroidPrime/Tweaks/CTweakGame",
            "MetroidPrime/CGameProjectile",
            "MetroidPrime/Player/CPlayerGun",
            "MetroidPrime/CStateManager",
            ["MetroidPrime/CEntity", True],
            ["MetroidPrime/CArchMsgParmInt32", True],
            ["MetroidPrime/CArchMsgParmInt32Int32VoidPtr", True],
            ["MetroidPrime/CArchMsgParmNull", True],
            ["MetroidPrime/CArchMsgParmReal32", True],
            "MetroidPrime/Decode",
            "MetroidPrime/CIOWinManager",
            ["MetroidPrime/CIOWin", True],
            "MetroidPrime/CActor",
            "MetroidPrime/CWorld",
            "MetroidPrime/Tweaks/CTweakParticle",
            "MetroidPrime/Clamp_int",
            ["MetroidPrime/CArchMsgParmControllerStatus", True],
            "MetroidPrime/CExplosion",
            "MetroidPrime/CEffect",
            "MetroidPrime/Cameras/CGameCamera",
            "MetroidPrime/CGameArea",
            "MetroidPrime/HUD/CSamusHud",
            "MetroidPrime/CAnimationDatabaseGame",
            "MetroidPrime/CTransitionDatabaseGame",
            "MetroidPrime/Tweaks/CTweakPlayerControl",
            "MetroidPrime/Tweaks/CTweakPlayerGun",
            "MetroidPrime/CPauseScreen",
            "MetroidPrime/Tweaks/CTweakGui",
            "MetroidPrime/ScriptObjects/CScriptActor",
            "MetroidPrime/ScriptObjects/CScriptTrigger",
            "MetroidPrime/ScriptObjects/CScriptWaypoint",
            "MetroidPrime/Enemies/CPatterned",
            "MetroidPrime/ScriptObjects/CScriptDoor",
            "MetroidPrime/Enemies/CStateMachine",
            "MetroidPrime/CMapArea",
            "MetroidPrime/Cameras/CBallCamera",
            "MetroidPrime/ScriptObjects/CScriptEffect",
            "MetroidPrime/Weapons/CBomb",
            "MetroidPrime/Tweaks/CTweakBall",
            "MetroidPrime/Player/CPlayerState",
            "MetroidPrime/ScriptObjects/CScriptTimer",
            "MetroidPrime/Cameras/CCinematicCamera",
            "MetroidPrime/CAutoMapper",
            "MetroidPrime/ScriptObjects/CScriptCounter",
            "MetroidPrime/CMapWorld",
            "MetroidPrime/Enemies/CAi",
            "MetroidPrime/Enemies/PatternedCastTo",
            ["MetroidPrime/TCastTo", True],
            "MetroidPrime/ScriptObjects/CScriptSound",
            "MetroidPrime/ScriptObjects/CScriptPlatform",
            ["MetroidPrime/UserNames", True],
            "MetroidPrime/ScriptObjects/CScriptGenerator",
            "MetroidPrime/ScriptObjects/CScriptCameraWaypoint",
            "MetroidPrime/CGameLight",
            "MetroidPrime/Tweaks/CTweakTargeting",
            "MetroidPrime/Tweaks/CTweakAutoMapper",
            "MetroidPrime/CParticleGenInfoGeneric",
            "MetroidPrime/CParticleGenInfo",
            "MetroidPrime/CParticleDatabase",
            "MetroidPrime/Tweaks/CTweakGunRes",
            "MetroidPrime/CTargetReticles",
            "MetroidPrime/CWeaponMgr",
            ["MetroidPrime/ScriptObjects/CScriptPickup", True],
            "MetroidPrime/CDamageInfo",
            ["MetroidPrime/CMemoryDrawEnum", True],
            "MetroidPrime/ScriptObjects/CScriptDock",
            "MetroidPrime/ScriptObjects/CScriptCameraHint",
            "MetroidPrime/ScriptLoader",
            "MetroidPrime/CSamusDoll",
            "MetroidPrime/Factories/CStateMachineFactory",
            "MetroidPrime/Weapons/CPlasmaBeam",
            "MetroidPrime/Weapons/CPowerBeam",
            "MetroidPrime/Weapons/CWaveBeam",
            "MetroidPrime/Weapons/CIceBeam",
            "MetroidPrime/CScriptMailbox",
            "MetroidPrime/ScriptObjects/CScriptRelay",
            "MetroidPrime/ScriptObjects/CScriptSpawnPoint",
            "MetroidPrime/ScriptObjects/CScriptRandomRelay",
            "MetroidPrime/Enemies/CBeetle",
            ["MetroidPrime/HUD/CHUDMemoParms", True],
            "MetroidPrime/ScriptObjects/CScriptHUDMemo",
            "MetroidPrime/CMappableObject",
            "MetroidPrime/Player/CPlayerCameraBob",
            "MetroidPrime/ScriptObjects/CScriptCameraFilterKeyframe",
            "MetroidPrime/ScriptObjects/CScriptCameraBlurKeyframe",
            "MetroidPrime/Cameras/CCameraFilter",
            "MetroidPrime/Player/CMorphBall",
            "MetroidPrime/ScriptObjects/CScriptDamageableTrigger",
            "MetroidPrime/ScriptObjects/CScriptDebris",
            "MetroidPrime/ScriptObjects/CScriptCameraShaker",
            "MetroidPrime/ScriptObjects/CScriptActorKeyframe",
            "MetroidPrime/CConsoleOutputWindow",
            "MetroidPrime/ScriptObjects/CScriptWater",
            "MetroidPrime/Weapons/CWeapon",
            "MetroidPrime/CDamageVulnerability",
            "MetroidPrime/CActorLights",
            "MetroidPrime/Enemies/CPatternedInfo",
            "MetroidPrime/CSimpleShadow",
            "MetroidPrime/CActorParameters",
            "MetroidPrime/CInGameGuiManager",
            "MetroidPrime/Enemies/CWarWasp",
            "MetroidPrime/CWorldShadow",
            "MetroidPrime/CAudioStateWin",
            "MetroidPrime/Player/CPlayerVisor",
            "MetroidPrime/CModelData",
            "MetroidPrime/CDecalManager",
            "MetroidPrime/ScriptObjects/CScriptSpiderBallWaypoint",
            "MetroidPrime/Enemies/CBloodFlower",
            ["MetroidPrime/TGameTypes", True],
            "MetroidPrime/CPhysicsActor",
            ["MetroidPrime/CPhysicsState", True],
            "MetroidPrime/CRipple",
            "MetroidPrime/CFluidUVMotion",
            "MetroidPrime/CRippleManager",
            "MetroidPrime/Player/CGrappleArm",
            "MetroidPrime/Enemies/CSpacePirate",
            "MetroidPrime/ScriptObjects/CScriptCoverPoint",
            "MetroidPrime/Cameras/CPathCamera",
            "MetroidPrime/CFluidPlane",
            "MetroidPrime/CFluidPlaneManager",
            "MetroidPrime/ScriptObjects/CScriptGrapplePoint",
            "MetroidPrime/ScriptObjects/CHUDBillboardEffect",
            "MetroidPrime/Enemies/CFlickerBat",
            "MetroidPrime/BodyState/CBodyStateCmdMgr",
            "MetroidPrime/BodyState/CBodyStateInfo",
            "MetroidPrime/BodyState/CBSAttack",
            "MetroidPrime/BodyState/CBSDie",
            "MetroidPrime/BodyState/CBSFall",
            "MetroidPrime/BodyState/CBSGetup",
            "MetroidPrime/BodyState/CBSKnockBack",
            "MetroidPrime/BodyState/CBSLieOnGround",
            "MetroidPrime/BodyState/CBSLocomotion",
            "MetroidPrime/BodyState/CBSStep",
            "MetroidPrime/BodyState/CBSTurn",
            "MetroidPrime/BodyState/CBodyController",
            "MetroidPrime/BodyState/CBSLoopAttack",
            "MetroidPrime/Weapons/CTargetableProjectile",
            "MetroidPrime/BodyState/CBSLoopReaction",
            "MetroidPrime/CSteeringBehaviors",
            "MetroidPrime/BodyState/CBSGroundHit",
            "MetroidPrime/Enemies/CChozoGhost",
            "MetroidPrime/Enemies/CFireFlea",
            "MetroidPrime/BodyState/CBSSlide",
            "MetroidPrime/BodyState/CBSHurled",
            "MetroidPrime/BodyState/CBSJump",
            "MetroidPrime/BodyState/CBSGenerate",
            "MetroidPrime/Enemies/CPuddleSpore",
            "MetroidPrime/BodyState/CBSTaunt",
            "MetroidPrime/CSortedLists",
            ["MetroidPrime/ScriptObjects/CScriptDebugCameraWaypoint", True],
            "MetroidPrime/ScriptObjects/CScriptSpiderBallAttractionSurface",
            "MetroidPrime/BodyState/CBSScripted",
            "MetroidPrime/Enemies/CPuddleToadGamma",
            "MetroidPrime/ScriptObjects/CScriptDistanceFog",
            "MetroidPrime/BodyState/CBSProjectileAttack",
            "MetroidPrime/Weapons/CPowerBomb",
            "MetroidPrime/Enemies/CMetaree",
            "MetroidPrime/ScriptObjects/CScriptDockAreaChange",
            "MetroidPrime/ScriptObjects/CScriptSpecialFunction",
            "MetroidPrime/ScriptObjects/CScriptActorRotate",
            "MetroidPrime/Player/CFidget",
            "MetroidPrime/Enemies/CSpankWeed",
            "MetroidPrime/Enemies/CParasite",
            "MetroidPrime/Player/CSamusFaceReflection",
            "MetroidPrime/ScriptObjects/CScriptPlayerHint",
            "MetroidPrime/Enemies/CRipper",
            "MetroidPrime/Cameras/CCameraShakeData",
            "MetroidPrime/ScriptObjects/CScriptPickupGenerator",
            "MetroidPrime/ScriptObjects/CScriptPointOfInterest",
            "MetroidPrime/Enemies/CDrone",
            "MetroidPrime/CMapWorldInfo",
            "MetroidPrime/Factories/CScannableObjectInfo",
            "MetroidPrime/Enemies/CMetroid",
            "MetroidPrime/Player/CScanDisplay",
            "MetroidPrime/ScriptObjects/CScriptSteam",
            "MetroidPrime/ScriptObjects/CScriptRipple",
            "MetroidPrime/CBoneTracking",
            "MetroidPrime/Player/CFaceplateDecoration",
            "MetroidPrime/BodyState/CBSCover",
            "MetroidPrime/ScriptObjects/CScriptBallTrigger",
            "MetroidPrime/Weapons/CPlasmaProjectile",
            "MetroidPrime/Player/CPlayerOrbit",
            "MetroidPrime/CGameCollision",
            "MetroidPrime/CBallFilter",
            "MetroidPrime/CAABoxFilter",
            "MetroidPrime/CGroundMovement",
            "MetroidPrime/Enemies/CNewIntroBoss",
            "MetroidPrime/Weapons/CPhazonBeam",
            "MetroidPrime/ScriptObjects/CScriptTargetingPoint",
            "MetroidPrime/BodyState/CBSWallHang",
            "MetroidPrime/ScriptObjects/CScriptEMPulse",
            "MetroidPrime/HUD/CHudDecoInterface",
            "MetroidPrime/Weapons/CFlameThrower",
            "MetroidPrime/Weapons/CBeamProjectile",
            "MetroidPrime/CFluidPlaneCPU",
            "MetroidPrime/CFluidPlaneDoor",
            "MetroidPrime/ScriptObjects/CScriptRoomAcoustics",
            "MetroidPrime/Enemies/CIceSheegoth",
            "MetroidPrime/CCollisionActorManager",
            "MetroidPrime/CCollisionActor",
            "MetroidPrime/ScriptObjects/CScriptPlayerActor",
            "MetroidPrime/Tweaks/CTweakPlayerRes",
            "MetroidPrime/Enemies/CBurstFire",
            "MetroidPrime/Enemies/CFlaahgra",
            "MetroidPrime/Player/CPlayerEnergyDrain",
            "MetroidPrime/CFlameWarp",
            "MetroidPrime/Weapons/CIceImpact",
            "MetroidPrime/GameObjectLists",
            "MetroidPrime/Weapons/CAuxWeapon",
            "MetroidPrime/Weapons/CGunWeapon",
            "MetroidPrime/ScriptObjects/CScriptAreaAttributes",
            "MetroidPrime/Weapons/CWaveBuster",
            "MetroidPrime/Player/CStaticInterference",
            "MetroidPrime/Enemies/CMetroidBeta",
            "MetroidPrime/PathFinding/CPathFindSearch",
            "MetroidPrime/PathFinding/CPathFindRegion",
            "MetroidPrime/PathFinding/CPathFindArea",
            "MetroidPrime/Weapons/GunController/CGunController",
            "MetroidPrime/Weapons/GunController/CGSFreeLook",
            "MetroidPrime/Weapons/GunController/CGSComboFire",
            "MetroidPrime/HUD/CHudBallInterface",
            "MetroidPrime/Tweaks/CTweakGuiColors",
            "MetroidPrime/ScriptObjects/CFishCloud",
            "MetroidPrime/CHealthInfo",
            "MetroidPrime/Player/CGameState",
            "MetroidPrime/ScriptObjects/CScriptVisorFlare",
            "MetroidPrime/ScriptObjects/CScriptWorldTeleporter",
            "MetroidPrime/ScriptObjects/CScriptVisorGoo",
            "MetroidPrime/Enemies/CJellyZap",
            "MetroidPrime/ScriptObjects/CScriptControllerAction",
            "MetroidPrime/Weapons/GunController/CGunMotion",
            ["MetroidPrime/ScriptObjects/CScriptSwitch", True],
            "MetroidPrime/BodyState/CABSIdle",
            "MetroidPrime/BodyState/CABSFlinch",
            "MetroidPrime/BodyState/CABSAim",
            "MetroidPrime/ScriptObjects/CScriptPlayerStateChange",
            "MetroidPrime/Enemies/CThardus",
            "MetroidPrime/CActorParticles",
            "MetroidPrime/Enemies/CWallCrawlerSwarm",
            "MetroidPrime/ScriptObjects/CScriptAiJumpPoint",
            "MetroidPrime/CMessageScreen",
            "MetroidPrime/Enemies/CFlaahgraTentacle",
            "MetroidPrime/Weapons/GunController/CGSFidget",
            "MetroidPrime/BodyState/CABSReaction",
            "MetroidPrime/Weapons/CIceProjectile",
            "MetroidPrime/Enemies/CFlyingPirate",
            "MetroidPrime/ScriptObjects/CScriptColorModulate",
            "MetroidPrime/CMapUniverse",
            "MetroidPrime/Enemies/CThardusRockProjectile",
            "MetroidPrime/CInventoryScreen",
            "MetroidPrime/CVisorFlare",
            "MetroidPrime/Enemies/CFlaahgraPlants",
            "MetroidPrime/CWorldTransManager",
            "MetroidPrime/ScriptObjects/CScriptMidi",
            "MetroidPrime/ScriptObjects/CScriptStreamedAudio",
            "MetroidPrime/CRagDoll",
            "MetroidPrime/Player/CGameOptions",
            "MetroidPrime/ScriptObjects/CRepulsor",
            "MetroidPrime/CEnvFxManager",
            "MetroidPrime/Weapons/CEnergyProjectile",
            "MetroidPrime/ScriptObjects/CScriptGunTurret",
            "MetroidPrime/Weapons/CProjectileInfo",
            "MetroidPrime/CInGameTweakManager",
            "MetroidPrime/Enemies/CBabygoth",
            "MetroidPrime/Enemies/CEyeBall",
            "MetroidPrime/CIkChain",
            "MetroidPrime/ScriptObjects/CScriptCameraPitchVolume",
            "MetroidPrime/RumbleFxTable",
            "MetroidPrime/Enemies/CElitePirate",
            "MetroidPrime/CRumbleManager",
            "MetroidPrime/Enemies/CBouncyGrenade",
            "MetroidPrime/Enemies/CGrenadeLauncher",
            "MetroidPrime/Weapons/CShockWave",
            "MetroidPrime/Enemies/CRipperControlledPlatform",
            "MetroidPrime/Enemies/CKnockBackController",
            "MetroidPrime/Player/CWorldLayerState",
            "MetroidPrime/Enemies/CMagdolite",
            "MetroidPrime/Enemies/CTeamAiMgr",
            "MetroidPrime/Enemies/CSnakeWeedSwarm",
            "MetroidPrime/Cameras/CBallCameraFailsafeState",
            "MetroidPrime/Enemies/CActorContraption",
            "MetroidPrime/ScriptObjects/CScriptSpindleCamera",
            "MetroidPrime/ScriptObjects/CScriptMemoryRelay",
            "MetroidPrime/CPauseScreenFrame",
            "MetroidPrime/Enemies/CAtomicAlpha",
            "MetroidPrime/CLogBookScreen",
            "MetroidPrime/CGBASupport",
            "MetroidPrime/Player/CSaveWorld",
            "MetroidPrime/ScriptObjects/CScriptCameraHintTrigger",
            "MetroidPrime/Enemies/CAmbientAI",
            "MetroidPrime/CMemoryCardDriver",
            "MetroidPrime/CSaveGameScreen",
            "MetroidPrime/Enemies/CAtomicBeta",
            "MetroidPrime/Weapons/CElectricBeamProjectile",
            "MetroidPrime/Enemies/CRidley",
            "MetroidPrime/Enemies/CPuffer",
            "MetroidPrime/ScriptObjects/CFire",
            "MetroidPrime/CPauseScreenBlur",
            "MetroidPrime/Enemies/CTryclops",
            "MetroidPrime/Weapons/CNewFlameThrower",
            "MetroidPrime/Cameras/CInterpolationCamera",
            "MetroidPrime/Enemies/CSeedling",
            "MetroidPrime/Player/CGameHintInfo",
            "MetroidPrime/Enemies/CWallWalker",
            "MetroidPrime/CErrorOutputWindow",
            "MetroidPrime/CRainSplashGenerator",
            "MetroidPrime/Factories/CSaveWorldFactory",
            "MetroidPrime/CFluidPlaneRender",
            "MetroidPrime/Enemies/CBurrower",
            "MetroidPrime/Enemies/CMetroidPrimeExo",
            "MetroidPrime/ScriptObjects/CScriptBeam",
            "MetroidPrime/Enemies/CMetroidPrimeEssence",
            "MetroidPrime/Enemies/CMetroidPrimeRelay",
            "MetroidPrime/Player/CPlayerDynamics",
            "MetroidPrime/ScriptObjects/CScriptMazeNode",
            "MetroidPrime/Weapons/WeaponTypes",
            "MetroidPrime/Enemies/COmegaPirate",
            "MetroidPrime/Enemies/CPhazonPool",
            "MetroidPrime/CNESEmulator",
            "MetroidPrime/Enemies/CPhazonHealingNodule",
            "MetroidPrime/Player/CMorphBallShadow",
            "MetroidPrime/Player/CPlayerInputFilter",
            "MetroidPrime/CSlideShow",
            "MetroidPrime/Tweaks/CTweakSlideShow",
            "MetroidPrime/CArtifactDoll",
            "MetroidPrime/CProjectedShadow",
            "MetroidPrime/CPreFrontEnd",
            "MetroidPrime/CGameCubeDoll",
            "MetroidPrime/ScriptObjects/CScriptProjectedShadow",
            "MetroidPrime/ScriptObjects/CEnergyBall",
            "MetroidPrime/Enemies/CMetroidPrimeProjectile",
            "MetroidPrime/Enemies/SPositionHistory",
        ],
    },
    {
        "lib": "WorldFormatCW",
        "mwcc_version": "1.3.2",
        "cflags": "$cflags_retro",
        "objects": [
            "WorldFormat/CAreaOctTree_Tests",
            ["WorldFormat/CCollisionSurface", True],
            "WorldFormat/CMetroidModelInstance",
            "WorldFormat/CAreaBspTree",
            "WorldFormat/CAreaOctTree",
            "WorldFormat/CMetroidAreaCollider",
            "WorldFormat/CWorldLight",
            "WorldFormat/COBBTree",
            "WorldFormat/CCollidableOBBTree",
            "WorldFormat/CCollidableOBBTreeGroup",
            "WorldFormat/CPVSVisAreaSet",
            "WorldFormat/CAreaRenderOctTree",
        ],
    },
    {
        "lib": "WeaponsCW",
        "mwcc_version": "1.3.2",
        "cflags": "$cflags_retro",
        "objects": [
            "Weapons/CProjectileWeapon",
            "Weapons/CProjectileWeaponDataFactory",
            "Weapons/CCollisionResponseData",
            ["Weapons/IWeaponRenderer", True],
            "Weapons/CDecalDataFactory",
            "Weapons/CDecal",
            "Weapons/CWeaponDescription",
            "Weapons/CDecalDescription",
        ],
    },
    {
        "lib": "MetaRenderCW",
        "mwcc_version": "1.3.2",
        "cflags": "$cflags_retro",
        "objects": ["MetaRender/CCubeRenderer"],
    },
    {
        "lib": "GuiSysCW",
        "mwcc_version": "1.3.2",
        "cflags": "$cflags_retro",
        "objects": [
            "GuiSys/CAuiMain",
            "GuiSys/CAuiMeter",
            "GuiSys/CGuiGroup",
            "GuiSys/CGuiHeadWidget",
            "GuiSys/CGuiLight",
            "GuiSys/CGuiModel",
            "GuiSys/CGuiObject",
            "GuiSys/CGuiPane",
            "GuiSys/CGuiSliderGroup",
            "GuiSys/CGuiSys",
            "GuiSys/CGuiTableGroup",
            "GuiSys/CGuiTextPane",
            "GuiSys/CGuiTextSupport",
            "GuiSys/CGuiWidget",
            "GuiSys/CGuiWidgetIdDB",
            "GuiSys/CGuiWidgetDrawParms",
            "GuiSys/CAuiEnergyBarT01",
            "GuiSys/CAuiImagePane",
            "GuiSys/CRepeatState",
        ],
    },
    {
        "lib": "CollisionCW",
        "mwcc_version": "1.3.2",
        "cflags": "$cflags_retro",
        "objects": [
            "Collision/CCollidableAABox",
            "Collision/CCollidableCollisionSurface",
            ["Collision/CCollisionInfo", True],
            "Collision/InternalColliders",
            "Collision/CCollisionPrimitive",
            ["Collision/CMaterialList", True],
            "Collision/CollisionUtil",
            "Collision/CCollidableSphere",
            ["Collision/CMaterialFilter", True],
            "Collision/COBBox",
            ["Collision/CMRay", True],
        ],
    },
    {
        "lib": "Kyoto_CW1",
        "mwcc_version": "1.3.2",
        "cflags": "$cflags_retro",
        "objects": [
            "Kyoto/Basics/CBasics",
            ["Kyoto/Basics/CStopwatch", True],
            "Kyoto/Basics/CBasicsDolphin",
            "Kyoto/Basics/CCallStackDolphin",
            ["Kyoto/Basics/COsContextDolphin", True],
            ["Kyoto/Basics/CSWDataDolphin", True],
            "Kyoto/Basics/RAssertDolphin",
            "Kyoto/Animation/CAnimation",
            "Kyoto/Animation/CAnimationManager",
            "Kyoto/Animation/CAnimationSet",
            "Kyoto/Animation/CAnimCharacterSet",
            "Kyoto/Animation/CAnimTreeLoopIn",
            "Kyoto/Animation/CAnimTreeSequence",
            "Kyoto/Animation/CCharacterInfo",
            "Kyoto/Animation/CCharacterSet",
            "Kyoto/Animation/CMetaAnimBlend",
            "Kyoto/Animation/CMetaAnimFactory",
            "Kyoto/Animation/CMetaAnimPhaseBlend",
            "Kyoto/Animation/CMetaAnimPlay",
            "Kyoto/Animation/CMetaAnimRandom",
            "Kyoto/Animation/CMetaAnimSequence",
            "Kyoto/Animation/CMetaTransFactory",
            "Kyoto/Animation/CMetaTransMetaAnim",
            "Kyoto/Animation/CMetaTransPhaseTrans",
            "Kyoto/Animation/CMetaTransSnap",
            "Kyoto/Animation/CMetaTransTrans",
            "Kyoto/Animation/CPASAnimInfo",
            "Kyoto/Animation/CPASAnimParm",
            "Kyoto/Animation/CPASAnimState",
            "Kyoto/Animation/CPASDatabase",
            "Kyoto/Animation/CPASParmInfo",
            "Kyoto/Animation/CPrimitive",
            "Kyoto/Animation/CSequenceHelper",
            "Kyoto/Animation/CTransition",
            "Kyoto/Animation/CTransitionManager",
            "Kyoto/Animation/CTreeUtils",
            "Kyoto/Animation/IMetaAnim",
            ["Kyoto/Audio/CSfxHandle", True],
            "Kyoto/Audio/CSfxManager",
            "Kyoto/Animation/CAdvancementDeltas",
            "Kyoto/Animation/CAnimMathUtils",
            "Kyoto/Animation/CAnimPOIData",
            "Kyoto/Animation/CAnimSource",
            "Kyoto/Animation/CAnimSourceReader",
            "Kyoto/Animation/CAnimSourceReaderBase",
            "Kyoto/Animation/CAnimTreeAnimReaderContainer",
            "Kyoto/Animation/CAnimTreeBlend",
            "Kyoto/Animation/CAnimTreeContinuousPhaseBlend",
            "Kyoto/Animation/CAnimTreeDoubleChild",
            "Kyoto/Animation/CAnimTreeNode",
            "Kyoto/Animation/CAnimTreeSingleChild",
            "Kyoto/Animation/CAnimTreeTimeScale",
            "Kyoto/Animation/CAnimTreeTransition",
            "Kyoto/Animation/CAnimTreeTweenBase",
            "Kyoto/Animation/CBoolPOINode",
            "Kyoto/Animation/CCharAnimMemoryMetrics",
            "Kyoto/Animation/CCharLayoutInfo",
            "Kyoto/Animation/CFBStreamedAnimReader",
            "Kyoto/Animation/CFBStreamedCompression",
            "Kyoto/Animation/CHierarchyPoseBuilder",
            "Kyoto/Animation/CInt32POINode",
            "Kyoto/Animation/CParticlePOINode",
            "Kyoto/Animation/CPOINode",
            "Kyoto/Animation/CSegStatementSet",
            "Kyoto/Animation/CTimeScaleFunctions",
            "Kyoto/Animation/IAnimReader",
            "Kyoto/Animation/CAllFormatsAnimSource",
            "Kyoto/CDvdRequest",
            "Kyoto/Text/CColorInstruction",
            "Kyoto/Text/CColorOverrideInstruction",
            "Kyoto/Text/CDrawStringOptions",
            "Kyoto/Text/CFontInstruction",
            "Kyoto/Text/CFontRenderState",
            "Kyoto/Text/CLineExtraSpaceInstruction",
            "Kyoto/Text/CLineInstruction",
            "Kyoto/Text/CLineSpacingInstruction",
            "Kyoto/Text/CPopStateInstruction",
            "Kyoto/Text/CPushStateInstruction",
            "Kyoto/Text/CRasterFont",
            "Kyoto/Text/CRemoveColorOverrideInstruction",
            "Kyoto/Text/CSavableState",
            "Kyoto/Text/CTextExecuteBuffer",
            "Kyoto/Text/CTextInstruction",
            "Kyoto/Text/CTextParser",
            "Kyoto/Text/CWordBreakTables",
            "Kyoto/Text/CWordInstruction",
            "Kyoto/Text/CBlockInstruction",
            "Kyoto/Text/CFont",
            ["Kyoto/Graphics/CLight", True],
            "Kyoto/Graphics/CCubeModel",
            ["Kyoto/Graphics/CGX", True],
            "Kyoto/Graphics/CTevCombiners",
            "Kyoto/Graphics/DolphinCGraphics",
            "Kyoto/Graphics/DolphinCPalette",
            "Kyoto/Graphics/DolphinCTexture",
            ["Kyoto/Math/CloseEnough", True],
            "Kyoto/Math/CMatrix3f",
            "Kyoto/Math/CMatrix4f",
            "Kyoto/Math/CQuaternion",
            ["Kyoto/CRandom16", True],
            "Kyoto/Math/CTransform4f",
            ["Kyoto/Math/CUnitVector3f", True],
            ["Kyoto/Math/CVector2f", True],
            ["Kyoto/Math/CVector2i", True],
            ["Kyoto/Math/CVector3d", True],
            "Kyoto/Math/CVector3f",
            ["Kyoto/Math/CVector3i", True],
            "Kyoto/Math/RMathUtils",
            ["Kyoto/CCrc32", True],
            ["Kyoto/Alloc/CCircularBuffer", True],
            "Kyoto/Alloc/CMemory",
            ["Kyoto/Alloc/IAllocator", True],
            "Kyoto/PVS/CPVSVisOctree",
            "Kyoto/PVS/CPVSVisSet",
            "Kyoto/Particles/CColorElement",
            "Kyoto/Particles/CElementGen",
            ["Kyoto/Particles/CIntElement", True],
            "Kyoto/Particles/CModVectorElement",
            "Kyoto/Particles/CParticleDataFactory",
            "Kyoto/Particles/CParticleGen",
            "Kyoto/Particles/CParticleGlobals",
            "Kyoto/Particles/CParticleSwoosh",
            "Kyoto/Particles/CParticleSwooshDataFactory",
            "Kyoto/Particles/CRealElement",
            "Kyoto/Particles/CSpawnSystemKeyframeData",
            "Kyoto/Particles/CUVElement",
            "Kyoto/Particles/CVectorElement",
            ["Kyoto/Particles/CWarp", True],
            ["Kyoto/Math/CPlane", True],
            ["Kyoto/Math/CSphere", True],
            "Kyoto/Math/CAABox",
            "Kyoto/CFactoryMgr",
            "Kyoto/CResFactory",
            "Kyoto/CResLoader",
            "Kyoto/rstl/rstl_map",
            "Kyoto/rstl/rstl_strings",
            "Kyoto/rstl/RstlExtras",
            ["Kyoto/Streams/CInputStream", True],
            ["Kyoto/Streams/CMemoryInStream", True],
            "Kyoto/Streams/CMemoryStreamOut",
            "Kyoto/Streams/COutputStream",
            "Kyoto/Streams/CZipInputStream",
            "Kyoto/Streams/CZipSupport",
            "Kyoto/CSimplePool",
            "Kyoto/CToken",
            ["Kyoto/IObj", True],
        ],
    },
    {
        "lib": "zlib",
        "mwcc_version": "1.3.2",
        "cflags": "$cflags_runtime",
        "objects": [
            ["Kyoto/zlib/adler32", True],
            ["Kyoto/zlib/infblock", True],
            ["Kyoto/zlib/infcodes", True],
            ["Kyoto/zlib/inffast", True],
            ["Kyoto/zlib/inflate", True],
            ["Kyoto/zlib/inftrees", True],
            ["Kyoto/zlib/infutil", True],
            ["Kyoto/zlib/zutil", True],
        ]
    },
    {
        "lib": "Kyoto_CW2",
        "mwcc_version": "1.3.2",
        "cflags": "$cflags_retro",
        "objects": [
            "Kyoto/CARAMManager",
            "Kyoto/Math/CFrustumPlanes",
            "Kyoto/Graphics/CCubeMaterial",
            "Kyoto/Graphics/CCubeSurface",
            "Kyoto/Animation/CCharAnimTime",
            "Kyoto/Animation/CSegIdList",
            ["Kyoto/Input/CFinalInput", True],
            ["Kyoto/Graphics/CColor", True],
            "Kyoto/Audio/DolphinCAudioGroupSet",
            "Kyoto/Audio/DolphinCAudioSys",
            "Kyoto/DolphinCMemoryCardSys",
            ["Kyoto/Input/DolphinIController", True],
            ["Kyoto/Input/CDolphinController", True],
            "Kyoto/DolphinCDvdFile",
            "Kyoto/Alloc/CMediumAllocPool",
            ["Kyoto/Alloc/CSmallAllocPool", True],
            "Kyoto/Alloc/CGameAllocator",
            "Kyoto/Animation/DolphinCSkinnedModel",
            "Kyoto/Animation/DolphinCSkinRules",
            "Kyoto/Animation/DolphinCVirtualBone",
            "Kyoto/Graphics/DolphinCModel",
            ["Kyoto/Text/CStringTable", True],
            "Kyoto/Particles/CEmitterElement",
            "Kyoto/Particles/CEffectComponent",
            "Kyoto/Particles/CParticleData",
            "Kyoto/Animation/CVertexMorphEffect",
            "Kyoto/Animation/CSkinnedModelWithAvgNormals",
            ["Kyoto/CTimeProvider", True],
            "Kyoto/CARAMToken",
            "Kyoto/Audio/CMidiManager",
            ["Kyoto/Text/CFontImageDef", True],
            "Kyoto/Text/CImageInstruction",
            "Kyoto/Text/CTextRenderBuffer",
            "Kyoto/Graphics/CCubeMoviePlayer",
            "Kyoto/Animation/CAdditiveAnimPlayback",
            "Kyoto/Particles/CParticleElectricDataFactory",
            "Kyoto/Particles/CParticleElectric",
            ["Kyoto/Graphics/DolphinCColor", True],
            "Kyoto/Audio/CDSPStreamManager",
            "Kyoto/CDependencyGroup",
            "Kyoto/Audio/CStreamAudioManager",
            "Kyoto/Animation/CHalfTransition",
            "Kyoto/Particles/CElectricDescription",
            "Kyoto/Particles/CSwooshDescription",
            "Kyoto/Particles/CGenDescription",
            "Kyoto/CPakFile",
            "Kyoto/Animation/CPoseAsTransforms",
            "Kyoto/Input/CRumbleVoice",
            ["Kyoto/Input/RumbleAdsr", True],
            "Kyoto/Input/CRumbleGenerator",
            "Kyoto/Audio/SDSPStream",
            ["Kyoto/Audio/g721", True],
            "Kyoto/Audio/CStaticAudioPlayer",
            "Kyoto/CFrameDelayedKiller",
        ],
    },
    {
        "lib": "ai",
        "mwcc_version": "1.2.5",
        "cflags": "$cflags_base",
        "objects": ["Dolphin/ai"],
    },
    {
        "lib": "ar",
        "mwcc_version": "1.2.5",
        "cflags": "$cflags_base",
        "objects": [
            "Dolphin/ar/ar",
            "Dolphin/ar/arq",
        ],
    },
    {
        "lib": "base",
        "mwcc_version": "1.2.5",
        "cflags": "$cflags_base",
        "objects": [
            ["Dolphin/PPCArch", True],
        ],
    },
    {
        "lib": "db",
        "mwcc_version": "1.2.5",
        "cflags": "$cflags_base",
        "objects": ["Dolphin/db"],
    },
    {
        "lib": "dsp",
        "mwcc_version": "1.2.5",
        "cflags": "$cflags_base",
        "objects": [
            "Dolphin/dsp/dsp",
            ["Dolphin/dsp/dsp_debug", True],
            "Dolphin/dsp/dsp_task",
        ],
    },
    {
        "lib": "dvd",
        "mwcc_version": "1.2.5",
        "cflags": "$cflags_base",
        "objects": [
            "Dolphin/dvd/dvdlow",
            "Dolphin/dvd/dvdfs",
            "Dolphin/dvd/dvd",
            "Dolphin/dvd/dvdqueue",
            "Dolphin/dvd/dvderror",
            "Dolphin/dvd/dvdidutils",
            "Dolphin/dvd/dvdfatal",
            "Dolphin/dvd/fstload",
        ],
    },
    {
        "lib": "gx",
        "mwcc_version": "1.2.5",
        "cflags": "$cflags_base",
        "objects": [
            "Dolphin/gx/GXInit",
            "Dolphin/gx/GXFifo",
            "Dolphin/gx/GXAttr",
            "Dolphin/gx/GXMisc",
            "Dolphin/gx/GXGeometry",
            "Dolphin/gx/GXFrameBuf",
            "Dolphin/gx/GXLight",
            "Dolphin/gx/GXTexture",
            "Dolphin/gx/GXBump",
            "Dolphin/gx/GXTev",
            "Dolphin/gx/GXPixel",
            "Dolphin/gx/GXStubs",
            "Dolphin/gx/GXDisplayList",
            "Dolphin/gx/GXTransform",
            "Dolphin/gx/GXPerf",
        ],
    },
    {
        "lib": "mtx",
        "mwcc_version": "1.2.5",
        "cflags": "$cflags_base",
        "objects": [
            "Dolphin/mtx/mtx",
            "Dolphin/mtx/mtx44vec",
            "Dolphin/mtx/mtx44",
            "Dolphin/mtx/vec",
            "Dolphin/mtx/psmtx",
        ],
    },
    {
        "lib": "os",
        "mwcc_version": "1.2.5e",
        "cflags": "$cflags_base",
        "objects": [
            ["Dolphin/os/__start", True],
            "Dolphin/os/OS",
            "Dolphin/os/OSAlarm",
            "Dolphin/os/OSArena",
            ["Dolphin/os/OSAudioSystem", True],
            "Dolphin/os/OSCache",
            "Dolphin/os/OSContext",
            "Dolphin/os/OSError",
            "Dolphin/os/OSFatal",
            "Dolphin/os/OSFont",
            "Dolphin/os/OSInterrupt",
            "Dolphin/os/OSLink",
            "Dolphin/os/OSMemory",
            "Dolphin/os/OSMutex",
            "Dolphin/os/OSReboot",
            ["Dolphin/os/OSReset", True],
            "Dolphin/os/OSResetSW",
            "Dolphin/os/OSRtc",
            ["Dolphin/os/OSSync", True],
            "Dolphin/os/OSThread",
            "Dolphin/os/OSTime",
            ["Dolphin/os/__ppc_eabi_init", True],
        ],
    },
    {
        "lib": "pad",
        "mwcc_version": "1.2.5e",
        "cflags": "$cflags_base",
        "objects": [
            ["Dolphin/pad/PadClamp", True],
            ["Dolphin/pad/pad", False],
        ],
    },
    {
        "lib": "vi",
        "mwcc_version": "1.2.5",
        "cflags": "$cflags_base",
        "objects": ["Dolphin/vi"],
    },
    {
        "lib": "MSL_C.PPCEABI.bare.H",
        "mwcc_version": "1.3.2",
        "cflags": "$cflags_runtime",
        "objects": [
            ["Runtime/__mem", True],
            ["Runtime/__va_arg", True],
            ["Runtime/global_destructor_chain", True],
            ["Runtime/CPlusLibPPC", True],
            ["Runtime/NMWException", True],
            ["Runtime/ptmf", True],
            "Runtime/runtime",
            ["Runtime/__init_cpp_exceptions", True],
            ["Runtime/Gecko_ExceptionPPC", True],
            ["Runtime/abort_exit", True],
            "Runtime/alloc",
            "Runtime/ansi_files",
            "Runtime/ansi_fp",
            "Runtime/arith",
            "Runtime/buffer_io",
            ["Runtime/ctype", True],
            ["Runtime/locale", True],
            "Runtime/direct_io",
            "Runtime/file_io",
            "Runtime/FILE_POS",
            "Runtime/mbstring",
            ["Runtime/mem", True],
            ["Runtime/mem_funcs", True],
            ["Runtime/misc_io", True],
            "Runtime/printf",
            "Runtime/qsort",
            ["Runtime/rand", True],
            "Runtime/sscanf",
            "Runtime/string",
            "Runtime/float",
            "Runtime/strtold",
            ["Runtime/uart_console_io", True],
            ["Runtime/wchar_io", True],
            ["Runtime/e_acos", True],
            ["Runtime/e_asin", True],
            ["Runtime/e_atan2", True],
            "Runtime/e_exp",
            ["Runtime/e_fmod", True],
            ["Runtime/e_log", True],
            "Runtime/e_pow",
            ["Runtime/e_rem_pio2", True],
            ["Runtime/k_cos", True],
            "Runtime/k_rem_pio2",
            ["Runtime/k_sin", True],
            ["Runtime/k_tan", True],
            "Runtime/s_atan",
            ["Runtime/s_copysign", True],
            ["Runtime/s_cos", True],
            ["Runtime/s_floor", True],
            ["Runtime/s_frexp", True],
            ["Runtime/s_ldexp", True],
            ["Runtime/s_modf", True],
            ["Runtime/s_nextafter", True],
            ["Runtime/s_sin", True],
            ["Runtime/s_tan", True],
            ["Runtime/w_acos", True],
            ["Runtime/w_asin", True],
            ["Runtime/w_atan2", True],
            ["Runtime/w_exp", True],
            ["Runtime/w_fmod", True],
            ["Runtime/w_log", True],
            ["Runtime/w_pow", True],
            ["Runtime/math_ppc", True],
        ],
    },
    {
        "lib": "musyx",
        "mwcc_version": "1.3.2",
        "cflags": "$cflags_musyx",
        "objects": [
            "musyx/seq",
            "musyx/synth",
            ["musyx/seq_api", True],
            ["musyx/snd_synthapi", False, False],
            "musyx/stream",
            "musyx/synthdata",
            "musyx/synthmacros",
            "musyx/synthvoice",
            ["musyx/synth_ac", True],
            "musyx/synth_adsr",
            "musyx/synth_vsamples",
            ["musyx/synth_dbtab", True],
            "musyx/s_data",
            "musyx/hw_dspctrl",
            "musyx/hw_volconv",
            "musyx/snd3d",
            ["musyx/snd_init", True],
            "musyx/snd_math",
            "musyx/snd_midictrl",
            ["musyx/snd_service", True],
            "musyx/hardware",
            "musyx/hw_aramdma",
            ["musyx/dsp_import", True],
            "musyx/hw_dolphin",
            ["musyx/hw_memory", True],
            ["musyx/creverb_fx", True],
            "musyx/creverb",
            ["musyx/reverb_fx", True],
            "musyx/reverb",
            ["musyx/delay_fx", True],
            "musyx/chorus_fx",
        ],
    },
    {
        "lib": "dtk",
        "mwcc_version": "1.2.5",
        "cflags": "$cflags_base",
        "objects": [
            ["Dolphin/dtk", True],
        ],
    },
    {
        "lib": "card",
        "mwcc_version": "1.2.5e",
        "cflags": "$cflags_base",
        "objects": [
            "Dolphin/card/CARDBios",
            ["Dolphin/card/CARDUnlock", True],
            ["Dolphin/card/CARDRdwr", True],
            ["Dolphin/card/CARDBlock", True],
            ["Dolphin/card/CARDDir", True],
            "Dolphin/card/CARDCheck",
            ["Dolphin/card/CARDMount", True],
            ["Dolphin/card/CARDFormat", True],
            ["Dolphin/card/CARDOpen", True],
            ["Dolphin/card/CARDCreate", True],
            ["Dolphin/card/CARDRead", True],
            ["Dolphin/card/CARDWrite", True],
            ["Dolphin/card/CARDDelete", True],
            ["Dolphin/card/CARDStat", True],
            ["Dolphin/card/CARDRename", True],
            ["Dolphin/card/CARDNet", True],
        ],
    },
    {
        "lib": "si",
        "mwcc_version": "1.2.5",
        "cflags": "$cflags_base",
        "objects": [
            "Dolphin/si/SIBios",
            "Dolphin/si/SISamplingRate",
        ],
    },
    {
        "lib": "exi",
        "mwcc_version": "1.2.5",
        "cflags": "$cflags_base",
        "objects": [
            "Dolphin/exi/EXIBios",
            "Dolphin/exi/EXIUart",
        ],
    },
    {
        "lib": "thp",
        "mwcc_version": "1.2.5",
        "cflags": "$cflags_base",
        "objects": [
            "Dolphin/thp/THPDec",
            "Dolphin/thp/THPAudio",
        ],
    },
    {
        "lib": "gba",
        "mwcc_version": "1.2.5",
        "cflags": "$cflags_base",
        "objects": [
            "Dolphin/GBA/GBA",
            "Dolphin/GBA/GBARead",
            "Dolphin/GBA/GBAWrite",
            "Dolphin/GBA/GBAXfer",
            "Dolphin/GBA/GBAKey",
        ],
    },
]

# Create & link static libraries
# Disabled by default for now until we can get it working on windows/macOS
ENABLE_STATIC_LIBS = args.static_libs

# On Windows, we need this to use && in commands
ALLOW_CHAIN = "cmd /c " if os.name == "nt" else ""

out = io.StringIO()
n = ninja_syntax.Writer(out)

n.variable("ninja_required_version", "1.3")
n.newline()

n.comment("The arguments passed to configure.py, for rerunning it.")
configure_args = sys.argv[1:]
# Ignore DEVKITPPC env var on Windows
if os.name != "nt" and "DEVKITPPC" in os.environ and not args.devkitppc:
    configure_args.extend(["--devkitppc", os.environ["DEVKITPPC"]])
n.variable("configure_args", configure_args)
n.newline()

###
# Variables
###
n.variable("version", args.version.lower())
if args.version.lower() == 'kor':
    n.variable("version_num", "2")
elif args.version.isnumeric() and int(args.version) in [0, 1]:
    n.variable("version_num", args.version)
else:
    sys.exit(f"Invalid version \"{args.version}\"")
n.variable("builddir", "build/mp1.$version")
if args.devkitppc:
    n.variable("devkitppc", args.devkitppc)
elif os.name == "nt":
    n.variable("devkitppc", "C:\devkitPro\devkitPPC")
elif "DEVKITPPC" in os.environ:
    n.variable("devkitppc", os.environ["DEVKITPPC"])
else:
    n.variable("devkitppc", "/opt/devkitpro/devkitPPC")
n.variable("cflags_base", "-proc gekko -nodefaults -Cpp_exceptions off -RTTI off -fp hard -fp_contract on -O4,p -maxerrors 1 -enum int -inline auto -str reuse -nosyspath -MMD -DPRIME1 -DVERSION=$version_num -DNONMATCHING=0 -i include/ -i libc/")
n.variable("cflags_retro",
           "$cflags_base -use_lmw_stmw on -str reuse,pool,readonly -gccinc -inline deferred,noauto -common on")
n.variable("cflags_runtime",
           "$cflags_base -use_lmw_stmw on -str reuse,pool,readonly -gccinc -inline deferred,auto")
n.variable("cflags_musyx", "$cflags_base -str reuse,pool,readonly")
n.variable("asflags", "-mgekko -I include/ --defsym version=$version_num -W")
ldflags = "-fp fmadd -nodefaults -lcf ldscript.lcf -w off"
if args.map:
    ldflags += " -map $builddir/MetroidPrime.MAP"
n.variable("ldflags", ldflags)
n.variable("mwcc_version", "1.3.2")
n.variable("python", sys.executable)
if os.name == "nt":
    n.variable("sha1sum", "sha1sum")
    n.variable("exe", ".exe")
else:
    n.variable("sha1sum", "shasum -a 1")
    if "_NT-" in os.uname().sysname:
        # MSYS2
        n.variable("wine", "")
    elif args.wine:
        n.variable("wine", args.wine + " ")
    elif which("wibo") is not None:
        n.variable("wine", "wibo ")
    else:
        n.variable("wine", "wine ")
    n.variable("exe", "")
n.newline()

###
# Rules
###
n.newline()
if os.name == "nt":
    n.rule(name="mwcc", command="tools\\mwcc_compiler\\$mwcc_version\\mwcceppc.exe $cflags -c $in -o $basedir",
           description="MWCC $out", depfile="$basefile.d", deps="gcc")
    n.newline()
    n.rule(name="mwcc_frank", command=ALLOW_CHAIN+"tools\\mwcc_compiler\\$mwcc_version\\mwcceppc.exe $cflags -c $in -o $basedir && " +
           "$python tools/franklite.py $out $out",
           description="FRANK $out", depfile="$basefile.d", deps="gcc")
    n.newline()
    n.rule(name="link", command="tools\\mwcc_compiler\\$mwcc_version\\mwldeppc.exe $ldflags -o $out @$out.rsp",
           description="LINK $out", rspfile="$out.rsp", rspfile_content="$in")
    n.newline()
    n.rule(name="as", command="$devkitppc\\bin\\powerpc-eabi-as.exe $asflags -o $out $in -MD $out.d",
           description="AS $out", depfile="$out.d", deps="gcc")
    n.newline()
    n.rule(name="ar", command="$devkitppc\\bin\\powerpc-eabi-ar.exe crs $out $in",
           description="AR $out")
    n.newline()
else:
    n.rule(name="mwcc", command="${wine}tools/mwcc_compiler/$mwcc_version/mwcceppc.exe $cflags -c $in -o $basedir && " +
           "$python tools/transform-dep.py $basefile.d $basefile.d",
           description="MWCC $out", depfile="$basefile.d", deps="gcc")
    n.newline()
    n.rule(name="mwcc_frank", command="${wine}tools/mwcc_compiler/$mwcc_version/mwcceppc.exe $cflags -c $in -o $basedir && " +
           "$python tools/franklite.py $out $out && " +
           "$python tools/transform-dep.py $basefile.d $basefile.d",
           description="FRANK $out", depfile="$basefile.d", deps="gcc")
    n.newline()
    n.rule(name="link", command="${wine}tools/mwcc_compiler/$mwcc_version/mwldeppc.exe $ldflags -o $out @$out.rsp",
           description="LINK $out", rspfile="$out.rsp", rspfile_content="$in")
    n.newline()
    n.rule(name="as", command="$devkitppc/bin/powerpc-eabi-as $asflags -o $out $in -MD $out.d",
           description="AS $out", depfile="$out.d", deps="gcc")
    n.newline()
    n.rule(name="ar", command="$devkitppc/bin/powerpc-eabi-ar crs $out $in",
           description="AR $out")
    n.newline()

from pprint import pprint
###
# Build
###
all_source_files = []
for lib in LIBS:
    inputs = []
    if "lib" in lib:
        lib_name = lib["lib"]
        n.comment(f"{lib_name}.a")
    else:
        n.comment("Loose files")
    for object in lib["objects"]:
        completed = False
        add_to_all = True
        if type(object) is list:
            if len(object) > 2:
                add_to_all = object[2]
            completed = object[1]
            object = object[0]

        mwcc_version = lib["mwcc_version"]
        c_file = None
        if os.path.exists(os.path.join("src", f"{object}.cpp")):
            c_file = os.path.join("src", f"{object}.cpp")
        elif os.path.exists(os.path.join("src", f"{object}.c")):
            c_file = os.path.join("src", f"{object}.c")
        if c_file is not None:
            rule = "mwcc"
            if mwcc_version == "1.2.5e":
                mwcc_version = "1.2.5"
                rule = "mwcc_frank"
            n.build(f"$builddir/src/{object}.o", rule, c_file,
                    variables={
                        "mwcc_version": mwcc_version,
                        "cflags": lib["cflags"],
                        "basedir": os.path.dirname(f"$builddir/src/{object}"),
                        "basefile": f"$builddir/src/{object}"
                    })
            if add_to_all:
                all_source_files.append(f"$builddir/src/{object}.o")
        if os.path.exists(os.path.join("asm", f"{object}.s")):
            n.build(f"$builddir/asm/{object}.o", "as", f"asm/{object}.s")
        if completed:
            inputs.append(f"$builddir/src/{object}.o")
        else:
            inputs.append(f"$builddir/asm/{object}.o")
    if ENABLE_STATIC_LIBS and "lib" in lib:
        lib_name = lib["lib"]
        n.build(f"$builddir/lib/{lib_name}.a", "ar", inputs)
    n.newline()

n.comment("main.elf")
inputs = []
for lib in LIBS:
    if ENABLE_STATIC_LIBS and "lib" in lib:
        lib_name = lib["lib"]
        inputs.append(f"$builddir/lib/{lib_name}.a")
    else:
        for object in lib["objects"]:
            completed = False
            
            if type(object) is list:
                completed = object[1]
                object = object[0]

            if completed:
                inputs.append(f"$builddir/src/{object}.o")
            else:
                inputs.append(f"$builddir/asm/{object}.o")
if args.map:
    n.build("$builddir/main.elf", "link", inputs,
            implicit_outputs="$builddir/MetroidPrime.MAP")
else:
    n.build("$builddir/main.elf", "link", inputs)
n.newline()

###
# Helper rule for building all source files
###
n.comment("Adds a command for building all source files")
n.build("all_source", "phony", all_source_files)
n.newline()

###
# Generate DOL
###
n.comment("main.dol")
# TODO MSVC?
n.rule(name="cc", command="cc -MMD -MT $out -MF $out.d $in -o $out",
       description="CC $out", depfile="$out.d", deps="gcc")
n.build("build/elf2dol$exe", "cc", "tools/elf2dol.c")
n.build("build/metroidbuildinfo$exe", "cc", "tools/metroidbuildinfo.c")
n.rule(name="elf2dol",
       command=ALLOW_CHAIN+os.path.join("build", "elf2dol$exe")+" $in $out && " +
       os.path.join("build", "metroidbuildinfo$exe") +
       " $out buildstrings/mp1.$version.build",
       description="DOL $out")
n.build("$builddir/main.dol", "elf2dol", "$builddir/main.elf",
        implicit=["build/elf2dol$exe", "build/metroidbuildinfo$exe"])
n.newline()

###
# Check DOL hash
###
if args.check:
    n.rule(name="check", command=ALLOW_CHAIN+"$sha1sum -c $in && touch $out",
           description="CHECK $in")
    n.build("$builddir/main.dol.ok", "check",
            "sha1/mp1.$version.sha1", implicit="$builddir/main.dol")
    n.newline()

###
# Progress script
###
if args.map:
    n.rule(name="progress", command=ALLOW_CHAIN+"$python tools/calcprogress.py $in && touch $out",
           description="PROGRESS $in")
    n.build("$builddir/main.dol.progress", "progress",
            ["$builddir/main.dol", "$builddir/MetroidPrime.MAP"])
    n.newline()

###
# Regenerate on change
###
n.comment("Regenerate build files if build script changes.")
n.rule(name="configure", command="$python configure.py $configure_args", generator=True)
n.build("build.ninja", "configure", implicit=[
        "configure.py", "tools/ninja_syntax.py"])
n.newline()

###
# Default rule
###
dol_out = "$builddir/main.dol"
if args.check:
    dol_out = "$builddir/main.dol.ok"
if args.map:
    n.default([dol_out, "$builddir/main.dol.progress"])
else:
    n.default(dol_out)

with open("build.ninja", 'w') as f:
    f.write(out.getvalue())
n.close()
