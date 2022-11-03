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
        "host": False,
        "objects": [
            ["MetroTRK/mslsupp", True],
        ],
    },
    {
        "lib": "MetroidPrimeCW",
        "cflags": "$cflags_retro",
        "mwcc_version": "1.3.2",
        "host": True,
        "objects": [
            ["MetroidPrime/main", False],
            "MetroidPrime/IRenderer",
            "MetroidPrime/Cameras/CCameraManager",
            ["MetroidPrime/CControlMapper", True],
            "MetroidPrime/Cameras/CFirstPersonCamera",
            ["MetroidPrime/CObjectList", True],
            "MetroidPrime/Player/CPlayer",
            ["MetroidPrime/CAxisAngle", True],
            ["MetroidPrime/CEulerAngles", False],
            ["MetroidPrime/CArchMsgParmUserInput", True],
            "MetroidPrime/CFrontEndUI",
            ["MetroidPrime/CInputGenerator", False],
            ["MetroidPrime/CMainFlow", False],
            "MetroidPrime/CMFGame",
            "MetroidPrime/CCredits",
            "MetroidPrime/CSplashScreen",
            ["MetroidPrime/CInstruction", True],
            "MetroidPrime/CAnimData",
            "MetroidPrime/Factories/CCharacterFactory",
            "MetroidPrime/Factories/CAssetFactory",
            ["MetroidPrime/Tweaks/CTweakPlayer", False],
            "MetroidPrime/Tweaks/CTweaks",
            ["MetroidPrime/Tweaks/CTweakGame", True],
            "MetroidPrime/CGameProjectile",
            ["MetroidPrime/Player/CPlayerGun", False],
            "MetroidPrime/CStateManager",
            ["MetroidPrime/CEntity", True],
            ["MetroidPrime/CArchMsgParmInt32", True],
            ["MetroidPrime/CArchMsgParmInt32Int32VoidPtr", True],
            ["MetroidPrime/CArchMsgParmNull", True],
            ["MetroidPrime/CArchMsgParmReal32", True],
            ["MetroidPrime/Decode", True],
            "MetroidPrime/CIOWinManager",
            ["MetroidPrime/CIOWin", True],
            ["MetroidPrime/CActor", False],
            "MetroidPrime/CWorld",
            ["MetroidPrime/Tweaks/CTweakParticle", True],
            "MetroidPrime/Clamp_int",
            ["MetroidPrime/CArchMsgParmControllerStatus", True],
            "MetroidPrime/CExplosion",
            ["MetroidPrime/CEffect", True],
            "MetroidPrime/Cameras/CGameCamera",
            "MetroidPrime/CGameArea",
            "MetroidPrime/HUD/CSamusHud",
            "MetroidPrime/CAnimationDatabaseGame",
            "MetroidPrime/CTransitionDatabaseGame",
            ["MetroidPrime/Tweaks/CTweakPlayerControl", True],
            "MetroidPrime/Tweaks/CTweakPlayerGun",
            "MetroidPrime/CPauseScreen",
            "MetroidPrime/Tweaks/CTweakGui",
            "MetroidPrime/ScriptObjects/CScriptActor",
            ["MetroidPrime/ScriptObjects/CScriptTrigger", False],
            "MetroidPrime/ScriptObjects/CScriptWaypoint",
            "MetroidPrime/Enemies/CPatterned",
            "MetroidPrime/ScriptObjects/CScriptDoor",
            ["MetroidPrime/Enemies/CStateMachine", False],
            "MetroidPrime/CMapArea",
            ["MetroidPrime/Cameras/CBallCamera", False],
            "MetroidPrime/ScriptObjects/CScriptEffect",
            "MetroidPrime/Weapons/CBomb",
            "MetroidPrime/Tweaks/CTweakBall",
            ["MetroidPrime/Player/CPlayerState", False],
            ["MetroidPrime/ScriptObjects/CScriptTimer", True],
            "MetroidPrime/Cameras/CCinematicCamera",
            "MetroidPrime/CAutoMapper",
            ["MetroidPrime/ScriptObjects/CScriptCounter", True],
            "MetroidPrime/CMapWorld",
            "MetroidPrime/Enemies/CAi",
            ["MetroidPrime/Enemies/PatternedCastTo", True],
            ["MetroidPrime/TCastTo", True],
            "MetroidPrime/ScriptObjects/CScriptSound",
            ["MetroidPrime/ScriptObjects/CScriptPlatform", False],
            ["MetroidPrime/UserNames", True],
            "MetroidPrime/ScriptObjects/CScriptGenerator",
            ["MetroidPrime/ScriptObjects/CScriptCameraWaypoint", False],
            ["MetroidPrime/CGameLight", True],
            "MetroidPrime/Tweaks/CTweakTargeting",
            ["MetroidPrime/Tweaks/CTweakAutoMapper", True],
            ["MetroidPrime/CParticleGenInfoGeneric", True],
            ["MetroidPrime/CParticleGenInfo", True],
            "MetroidPrime/CParticleDatabase",
            "MetroidPrime/Tweaks/CTweakGunRes",
            "MetroidPrime/CTargetReticles",
            "MetroidPrime/CWeaponMgr",
            ["MetroidPrime/ScriptObjects/CScriptPickup", True],
            ["MetroidPrime/CDamageInfo", False],
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
            ["MetroidPrime/ScriptObjects/CScriptRelay", True],
            ["MetroidPrime/ScriptObjects/CScriptSpawnPoint", False],
            "MetroidPrime/ScriptObjects/CScriptRandomRelay",
            "MetroidPrime/Enemies/CBeetle",
            ["MetroidPrime/HUD/CHUDMemoParms", True],
            ["MetroidPrime/ScriptObjects/CScriptHUDMemo", True],
            "MetroidPrime/CMappableObject",
            "MetroidPrime/Player/CPlayerCameraBob",
            "MetroidPrime/ScriptObjects/CScriptCameraFilterKeyframe",
            ["MetroidPrime/ScriptObjects/CScriptCameraBlurKeyframe", True],
            ["MetroidPrime/Cameras/CCameraFilter", False],
            "MetroidPrime/Player/CMorphBall",
            "MetroidPrime/ScriptObjects/CScriptDamageableTrigger",
            "MetroidPrime/ScriptObjects/CScriptDebris",
            ["MetroidPrime/ScriptObjects/CScriptCameraShaker", True],
            "MetroidPrime/ScriptObjects/CScriptActorKeyframe",
            ["MetroidPrime/CConsoleOutputWindow", False],
            "MetroidPrime/ScriptObjects/CScriptWater",
            "MetroidPrime/Weapons/CWeapon",
            ["MetroidPrime/CDamageVulnerability", False],
            "MetroidPrime/CActorLights",
            ["MetroidPrime/Enemies/CPatternedInfo", True],
            "MetroidPrime/CSimpleShadow",
            "MetroidPrime/CActorParameters",
            "MetroidPrime/CInGameGuiManager",
            "MetroidPrime/Enemies/CWarWasp",
            "MetroidPrime/CWorldShadow",
            ["MetroidPrime/CAudioStateWin", True],
            "MetroidPrime/Player/CPlayerVisor",
            "MetroidPrime/CModelData",
            "MetroidPrime/CDecalManager",
            "MetroidPrime/ScriptObjects/CScriptSpiderBallWaypoint",
            "MetroidPrime/Enemies/CBloodFlower",
            ["MetroidPrime/TGameTypes", True],
            ["MetroidPrime/CPhysicsActor", False],
            ["MetroidPrime/CPhysicsState", True],
            ["MetroidPrime/CRipple", False],
            "MetroidPrime/CFluidUVMotion",
            ["MetroidPrime/CRippleManager", False],
            ["MetroidPrime/Player/CGrappleArm", False],
            "MetroidPrime/Enemies/CSpacePirate",
            "MetroidPrime/ScriptObjects/CScriptCoverPoint",
            "MetroidPrime/Cameras/CPathCamera",
            "MetroidPrime/CFluidPlane",
            "MetroidPrime/CFluidPlaneManager",
            ["MetroidPrime/ScriptObjects/CScriptGrapplePoint", True],
            "MetroidPrime/ScriptObjects/CHUDBillboardEffect",
            "MetroidPrime/Enemies/CFlickerBat",
            "MetroidPrime/BodyState/CBodyStateCmdMgr",
            ["MetroidPrime/BodyState/CBodyStateInfo", False],
            "MetroidPrime/BodyState/CBSAttack",
            ["MetroidPrime/BodyState/CBSDie", True],
            ["MetroidPrime/BodyState/CBSFall", False],
            ["MetroidPrime/BodyState/CBSGetup", True],
            ["MetroidPrime/BodyState/CBSKnockBack", False],
            ["MetroidPrime/BodyState/CBSLieOnGround", True],
            "MetroidPrime/BodyState/CBSLocomotion",
            ["MetroidPrime/BodyState/CBSStep", True],
            "MetroidPrime/BodyState/CBSTurn",
            "MetroidPrime/BodyState/CBodyController",
            "MetroidPrime/BodyState/CBSLoopAttack",
            "MetroidPrime/Weapons/CTargetableProjectile",
            "MetroidPrime/BodyState/CBSLoopReaction",
            "MetroidPrime/CSteeringBehaviors",
            ["MetroidPrime/BodyState/CBSGroundHit", False],
            "MetroidPrime/Enemies/CChozoGhost",
            "MetroidPrime/Enemies/CFireFlea",
            ["MetroidPrime/BodyState/CBSSlide", False],
            "MetroidPrime/BodyState/CBSHurled",
            "MetroidPrime/BodyState/CBSJump",
            ["MetroidPrime/BodyState/CBSGenerate", True],
            "MetroidPrime/Enemies/CPuddleSpore",
            ["MetroidPrime/BodyState/CBSTaunt", True],
            "MetroidPrime/CSortedLists",
            ["MetroidPrime/ScriptObjects/CScriptDebugCameraWaypoint", True],
            ["MetroidPrime/ScriptObjects/CScriptSpiderBallAttractionSurface", False],
            ["MetroidPrime/BodyState/CBSScripted", True],
            "MetroidPrime/Enemies/CPuddleToadGamma",
            ["MetroidPrime/ScriptObjects/CScriptDistanceFog", False],
            ["MetroidPrime/BodyState/CBSProjectileAttack", True],
            "MetroidPrime/Weapons/CPowerBomb",
            ["MetroidPrime/Enemies/CMetaree", False],
            ["MetroidPrime/ScriptObjects/CScriptDockAreaChange", False],
            ["MetroidPrime/ScriptObjects/CScriptSpecialFunction", False],
            "MetroidPrime/ScriptObjects/CScriptActorRotate",
            ["MetroidPrime/Player/CFidget", True],
            "MetroidPrime/Enemies/CSpankWeed",
            "MetroidPrime/Enemies/CParasite",
            "MetroidPrime/Player/CSamusFaceReflection",
            "MetroidPrime/ScriptObjects/CScriptPlayerHint",
            "MetroidPrime/Enemies/CRipper",
            "MetroidPrime/Cameras/CCameraShakeData",
            "MetroidPrime/ScriptObjects/CScriptPickupGenerator",
            ["MetroidPrime/ScriptObjects/CScriptPointOfInterest", True],
            "MetroidPrime/Enemies/CDrone",
            "MetroidPrime/CMapWorldInfo",
            ["MetroidPrime/Factories/CScannableObjectInfo", False],
            "MetroidPrime/Enemies/CMetroid",
            "MetroidPrime/Player/CScanDisplay",
            ["MetroidPrime/ScriptObjects/CScriptSteam", False],
            ["MetroidPrime/ScriptObjects/CScriptRipple", False],
            "MetroidPrime/CBoneTracking",
            ["MetroidPrime/Player/CFaceplateDecoration", False],
            "MetroidPrime/BodyState/CBSCover",
            "MetroidPrime/ScriptObjects/CScriptBallTrigger",
            "MetroidPrime/Weapons/CPlasmaProjectile",
            "MetroidPrime/Player/CPlayerOrbit",
            "MetroidPrime/CGameCollision",
            ["MetroidPrime/CBallFilter", True],
            ["MetroidPrime/CAABoxFilter", True],
            "MetroidPrime/CGroundMovement",
            "MetroidPrime/Enemies/CNewIntroBoss",
            "MetroidPrime/Weapons/CPhazonBeam",
            ["MetroidPrime/ScriptObjects/CScriptTargetingPoint", True],
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
            ["MetroidPrime/Enemies/CBurstFire", True],
            "MetroidPrime/Enemies/CFlaahgra",
            "MetroidPrime/Player/CPlayerEnergyDrain",
            "MetroidPrime/CFlameWarp",
            "MetroidPrime/Weapons/CIceImpact",
            ["MetroidPrime/GameObjectLists", True],
            "MetroidPrime/Weapons/CAuxWeapon",
            "MetroidPrime/Weapons/CGunWeapon",
            ["MetroidPrime/ScriptObjects/CScriptAreaAttributes", False],
            "MetroidPrime/Weapons/CWaveBuster",
            "MetroidPrime/Player/CStaticInterference",
            "MetroidPrime/Enemies/CMetroidBeta",
            "MetroidPrime/PathFinding/CPathFindSearch",
            "MetroidPrime/PathFinding/CPathFindRegion",
            "MetroidPrime/PathFinding/CPathFindArea",
            ["MetroidPrime/Weapons/GunController/CGunController", False],
            ["MetroidPrime/Weapons/GunController/CGSFreeLook", False],
            "MetroidPrime/Weapons/GunController/CGSComboFire",
            "MetroidPrime/HUD/CHudBallInterface",
            "MetroidPrime/Tweaks/CTweakGuiColors",
            "MetroidPrime/ScriptObjects/CFishCloud",
            ["MetroidPrime/CHealthInfo", True],
            "MetroidPrime/Player/CGameState",
            ["MetroidPrime/ScriptObjects/CScriptVisorFlare", False],
            "MetroidPrime/ScriptObjects/CScriptWorldTeleporter",
            "MetroidPrime/ScriptObjects/CScriptVisorGoo",
            "MetroidPrime/Enemies/CJellyZap",
            ["MetroidPrime/ScriptObjects/CScriptControllerAction", False],
            ["MetroidPrime/Weapons/GunController/CGunMotion", False],
            ["MetroidPrime/ScriptObjects/CScriptSwitch", True],
            ["MetroidPrime/BodyState/CABSIdle", True],
            ["MetroidPrime/BodyState/CABSFlinch", True],
            "MetroidPrime/BodyState/CABSAim",
            ["MetroidPrime/ScriptObjects/CScriptPlayerStateChange", True],
            "MetroidPrime/Enemies/CThardus",
            "MetroidPrime/CActorParticles",
            "MetroidPrime/Enemies/CWallCrawlerSwarm",
            ["MetroidPrime/ScriptObjects/CScriptAiJumpPoint", True],
            "MetroidPrime/CMessageScreen",
            "MetroidPrime/Enemies/CFlaahgraTentacle",
            "MetroidPrime/Weapons/GunController/CGSFidget",
            ["MetroidPrime/BodyState/CABSReaction", True],
            "MetroidPrime/Weapons/CIceProjectile",
            "MetroidPrime/Enemies/CFlyingPirate",
            "MetroidPrime/ScriptObjects/CScriptColorModulate",
            "MetroidPrime/CMapUniverse",
            "MetroidPrime/Enemies/CThardusRockProjectile",
            "MetroidPrime/CInventoryScreen",
            ["MetroidPrime/CVisorFlare", False],
            "MetroidPrime/Enemies/CFlaahgraPlants",
            "MetroidPrime/CWorldTransManager",
            ["MetroidPrime/ScriptObjects/CScriptMidi", False],
            "MetroidPrime/ScriptObjects/CScriptStreamedAudio",
            "MetroidPrime/CRagDoll",
            ["MetroidPrime/Player/CGameOptions", False],
            ["MetroidPrime/ScriptObjects/CRepulsor", True],
            "MetroidPrime/CEnvFxManager",
            "MetroidPrime/Weapons/CEnergyProjectile",
            "MetroidPrime/ScriptObjects/CScriptGunTurret",
            ["MetroidPrime/Weapons/CProjectileInfo", True],
            "MetroidPrime/CInGameTweakManager",
            "MetroidPrime/Enemies/CBabygoth",
            "MetroidPrime/Enemies/CEyeBall",
            "MetroidPrime/CIkChain",
            "MetroidPrime/ScriptObjects/CScriptCameraPitchVolume",
            "MetroidPrime/RumbleFxTable",
            "MetroidPrime/Enemies/CElitePirate",
            ["MetroidPrime/CRumbleManager", True],
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
            ["MetroidPrime/ScriptObjects/CScriptMemoryRelay", True],
            "MetroidPrime/CPauseScreenFrame",
            "MetroidPrime/Enemies/CAtomicAlpha",
            "MetroidPrime/CLogBookScreen",
            ["MetroidPrime/CGBASupport", True],
            "MetroidPrime/Player/CWorldSaveGameInfo",
            ["MetroidPrime/ScriptObjects/CScriptCameraHintTrigger", True],
            ["MetroidPrime/Enemies/CAmbientAI", True],
            ["MetroidPrime/CMemoryCardDriver", False],
            "MetroidPrime/CSaveGameScreen",
            "MetroidPrime/Enemies/CAtomicBeta",
            "MetroidPrime/Weapons/CElectricBeamProjectile",
            "MetroidPrime/Enemies/CRidley",
            ["MetroidPrime/Enemies/CPuffer", False],
            ["MetroidPrime/ScriptObjects/CFire", False],
            "MetroidPrime/CPauseScreenBlur",
            "MetroidPrime/Enemies/CTryclops",
            "MetroidPrime/Weapons/CNewFlameThrower",
            "MetroidPrime/Cameras/CInterpolationCamera",
            "MetroidPrime/Enemies/CSeedling",
            "MetroidPrime/Player/CGameHintInfo",
            "MetroidPrime/Enemies/CWallWalker",
            "MetroidPrime/CErrorOutputWindow",
            "MetroidPrime/CRainSplashGenerator",
            "MetroidPrime/Factories/CWorldSaveGameInfoFactory",
            "MetroidPrime/CFluidPlaneRender",
            "MetroidPrime/Enemies/CBurrower",
            "MetroidPrime/Enemies/CMetroidPrimeExo",
            ["MetroidPrime/ScriptObjects/CScriptBeam", True],
            "MetroidPrime/Enemies/CMetroidPrimeEssence",
            "MetroidPrime/Enemies/CMetroidPrimeRelay",
            "MetroidPrime/Player/CPlayerDynamics",
            ["MetroidPrime/ScriptObjects/CScriptMazeNode", False],
            "MetroidPrime/Weapons/WeaponTypes",
            "MetroidPrime/Enemies/COmegaPirate",
            "MetroidPrime/Enemies/CPhazonPool",
            "MetroidPrime/CNESEmulator",
            "MetroidPrime/Enemies/CPhazonHealingNodule",
            "MetroidPrime/Player/CMorphBallShadow",
            "MetroidPrime/Player/CPlayerInputFilter",
            "MetroidPrime/CSlideShow",
            ["MetroidPrime/Tweaks/CTweakSlideShow", True],
            "MetroidPrime/CArtifactDoll",
            "MetroidPrime/CProjectedShadow",
            ["MetroidPrime/CPreFrontEnd", True],
            "MetroidPrime/CGameCubeDoll",
            "MetroidPrime/ScriptObjects/CScriptProjectedShadow",
            "MetroidPrime/ScriptObjects/CEnergyBall",
            "MetroidPrime/Enemies/CMetroidPrimeProjectile",
            ["MetroidPrime/Enemies/SPositionHistory", True],
        ],
    },
    {
        "lib": "WorldFormatCW",
        "mwcc_version": "1.3.2",
        "cflags": "$cflags_retro",
        "host": True,
        "objects": [
            "WorldFormat/CAreaOctTree_Tests",
            ["WorldFormat/CCollisionSurface", True],
            ["WorldFormat/CMetroidModelInstance", True],
            "WorldFormat/CAreaBspTree",
            "WorldFormat/CAreaOctTree",
            ["WorldFormat/CMetroidAreaCollider", False],
            ["WorldFormat/CWorldLight", False],
            "WorldFormat/COBBTree",
            "WorldFormat/CCollidableOBBTree",
            "WorldFormat/CCollidableOBBTreeGroup",
            "WorldFormat/CPVSAreaSet",
            "WorldFormat/CAreaRenderOctTree",
        ],
    },
    {
        "lib": "WeaponsCW",
        "mwcc_version": "1.3.2",
        "cflags": "$cflags_retro",
        "host": True,
        "objects": [
            "Weapons/CProjectileWeapon",
            "Weapons/CProjectileWeaponDataFactory",
            "Weapons/CCollisionResponseData",
            ["Weapons/IWeaponRenderer", True],
            "Weapons/CDecalDataFactory",
            ["Weapons/CDecal", False],
            "Weapons/CWeaponDescription",
            "Weapons/CDecalDescription",
        ],
    },
    {
        "lib": "MetaRenderCW",
        "mwcc_version": "1.3.2",
        "cflags": "$cflags_retro",
        "host": True,
        "objects": ["MetaRender/CCubeRenderer"],
    },
    {
        "lib": "GuiSysCW",
        "mwcc_version": "1.3.2",
        "cflags": "$cflags_retro",
        "host": True,
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
        "host": True,
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
            ["Collision/COBBox", False],
            ["Collision/CMRay", True],
        ],
    },
    {
        "lib": "Kyoto_CW1",
        "mwcc_version": "1.3.2",
        "cflags": "$cflags_retro",
        "host": True,
        "objects": [
            "Kyoto/Basics/CBasics",
            ["Kyoto/Basics/CStopwatch", True],
            "Kyoto/Basics/CBasicsDolphin",
            ["Kyoto/Alloc/CCallStackDolphin", True],
            ["Kyoto/Basics/COsContextDolphin", True],
            ["Kyoto/Basics/CSWDataDolphin", True],
            ["Kyoto/Basics/RAssertDolphin", False],
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
            ["Kyoto/Text/CTextParser", False],
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
            ["Kyoto/Math/CVector3f", False],
            ["Kyoto/Math/CVector3i", True],
            ["Kyoto/Math/RMathUtils", False],
            ["Kyoto/CCrc32", True],
            ["Kyoto/Alloc/CCircularBuffer", True],
            ["Kyoto/Alloc/CMemory", True],
            ["Kyoto/Alloc/IAllocator", True],
            "Kyoto/PVS/CPVSVisOctree",
            "Kyoto/PVS/CPVSVisSet",
            ["Kyoto/Particles/CColorElement", False],
            "Kyoto/Particles/CElementGen",
            ["Kyoto/Particles/CIntElement", True],
            ["Kyoto/Particles/CModVectorElement", False],
            ["Kyoto/Particles/CParticleDataFactory", False],
            "Kyoto/Particles/CParticleGen",
            ["Kyoto/Particles/CParticleGlobals", True],
            "Kyoto/Particles/CParticleSwoosh",
            "Kyoto/Particles/CParticleSwooshDataFactory",
            ["Kyoto/Particles/CRealElement", True],
            "Kyoto/Particles/CSpawnSystemKeyframeData",
            ["Kyoto/Particles/CUVElement", False],
            ["Kyoto/Particles/CVectorElement", False],
            ["Kyoto/Particles/CWarp", True],
            ["Kyoto/Math/CPlane", True],
            ["Kyoto/Math/CSphere", True],
            ["Kyoto/Math/CAABox", False],
            "Kyoto/CFactoryMgr",
            "Kyoto/CResFactory",
            "Kyoto/CResLoader",
            ["Kyoto/rstl/rstl_map", False],
            "Kyoto/rstl/rstl_strings",
            "Kyoto/rstl/RstlExtras",
            ["Kyoto/Streams/CInputStream", True],
            ["Kyoto/Streams/CMemoryInStream", True],
            ["Kyoto/Streams/CMemoryStreamOut", True],
            ["Kyoto/Streams/COutputStream", True],
            ["Kyoto/Streams/CZipInputStream", True],
            ["Kyoto/Streams/CZipSupport", True],
            "Kyoto/CFactoryStore",
            "Kyoto/CObjectReference",
            "Kyoto/CSimplePool",
            ["Kyoto/CToken", True],
            ["Kyoto/IObj", True],
        ],
    },
    {
        "lib": "zlib",
        "mwcc_version": "1.3.2",
        "cflags": "$cflags_runtime",
        "host": True,
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
        "host": True,
        "objects": [
            "Kyoto/CARAMManager",
            "Kyoto/Math/CFrustumPlanes",
            ["Kyoto/Graphics/CCubeMaterial", False],
            ["Kyoto/Graphics/CCubeSurface", False],
            "Kyoto/Animation/CCharAnimTime",
            ["Kyoto/Animation/CSegIdList", False],
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
            ["Kyoto/Alloc/CGameAllocator", False],
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
            "Kyoto/Animation/CPoseAsTransformsVariableSize",
            ["Kyoto/Input/CRumbleVoice", False],
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
        "host": False,
        "objects": [
            ["Dolphin/ai", False],
        ],
    },
    {
        "lib": "ar",
        "mwcc_version": "1.2.5",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            "Dolphin/ar/ar",
            "Dolphin/ar/arq",
        ],
    },
    {
        "lib": "base",
        "mwcc_version": "1.2.5",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            ["Dolphin/PPCArch", True],
        ],
    },
    {
        "lib": "db",
        "mwcc_version": "1.2.5",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            ["Dolphin/db", True],
        ],
    },
    {
        "lib": "dsp",
        "mwcc_version": "1.2.5",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            ["Dolphin/dsp/dsp", True],
            ["Dolphin/dsp/dsp_debug", True],
            "Dolphin/dsp/dsp_task",
        ],
    },
    {
        "lib": "dvd",
        "mwcc_version": "1.2.5e",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            "Dolphin/dvd/dvdlow",
            "Dolphin/dvd/dvdfs",
            ["Dolphin/dvd/dvd", False],
            "Dolphin/dvd/dvdqueue",
            "Dolphin/dvd/dvderror",
            ["Dolphin/dvd/dvdidutils", True],
            "Dolphin/dvd/dvdfatal",
            ["Dolphin/dvd/fstload", True],
        ],
    },
    {
        "lib": "gx",
        "mwcc_version": "1.2.5",
        "cflags": "$cflags_base",
        "host": False,
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
        "host": False,
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
        "host": False,
        "objects": [
            ["Dolphin/os/__start", True],
            "Dolphin/os/OS",
            "Dolphin/os/OSAlarm",
            "Dolphin/os/OSArena",
            ["Dolphin/os/OSAudioSystem", True],
            ["Dolphin/os/OSCache", True],
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
            ["Dolphin/os/OSRtc", False],
            ["Dolphin/os/OSSync", True],
            "Dolphin/os/OSThread",
            ["Dolphin/os/OSTime", True],
            ["Dolphin/os/__ppc_eabi_init", True],
        ],
    },
    {
        "lib": "pad",
        "mwcc_version": "1.2.5e",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            ["Dolphin/pad/PadClamp", True],
            ["Dolphin/pad/pad", False],
        ],
    },
    {
        "lib": "vi",
        "mwcc_version": "1.2.5",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            "Dolphin/vi"
        ],
    },
    {
        "lib": "MSL_C.PPCEABI.bare.H",
        "mwcc_version": "1.3.2",
        "cflags": "$cflags_runtime",
        "host": False,
        "objects": [
            ["Runtime/__mem", True],
            ["Runtime/__va_arg", True],
            ["Runtime/global_destructor_chain", True],
            ["Runtime/CPlusLibPPC", True],
            ["Runtime/NMWException", True],
            ["Runtime/ptmf", True],
            ["Runtime/runtime", True],
            ["Runtime/__init_cpp_exceptions", True],
            ["Runtime/Gecko_ExceptionPPC", True],
            ["Runtime/abort_exit", True],
            ["Runtime/alloc", False],
            ["Runtime/ansi_files", True],
            "Runtime/ansi_fp",
            "Runtime/arith",
            ["Runtime/buffer_io", True],
            ["Runtime/ctype", True],
            ["Runtime/locale", True],
            ["Runtime/direct_io", True],
            ["Runtime/file_io", True],
            ["Runtime/errno", True],
            ["Runtime/FILE_POS", True],
            "Runtime/mbstring",
            ["Runtime/mem", True],
            ["Runtime/mem_funcs", True],
            ["Runtime/misc_io", True],
            "Runtime/printf",
            ["Runtime/qsort", False],
            ["Runtime/rand", True],
            "Runtime/sscanf",
            "Runtime/string",
            ["Runtime/float", True],
            "Runtime/strtold",
            ["Runtime/uart_console_io", True],
            ["Runtime/wchar_io", True],
            ["Runtime/e_acos", True],
            ["Runtime/e_asin", True],
            ["Runtime/e_atan2", True],
            ["Runtime/e_exp", False],  # CW 1.3.2 lib bug
            ["Runtime/e_fmod", True],
            ["Runtime/e_log", True],
            ["Runtime/e_pow", False],  # CW 1.3.2 lib bug
            ["Runtime/e_rem_pio2", True],
            ["Runtime/k_cos", True],
            ["Runtime/k_rem_pio2", True],
            ["Runtime/k_sin", True],
            ["Runtime/k_tan", True],
            ["Runtime/s_atan", False],  # CW 1.3.2 lib bug
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
        "host": False,
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
            ["musyx/snd3d", False],
            ["musyx/snd_init", True],
            ["musyx/snd_math", False],
            "musyx/snd_midictrl",
            ["musyx/snd_service", True],
            ["musyx/hardware", False],
            "musyx/hw_aramdma",
            ["musyx/dsp_import", True],
            "musyx/hw_dolphin",
            ["musyx/hw_memory", True],
            ["musyx/creverb_fx", True],
            "musyx/creverb",
            ["musyx/reverb_fx", True],
            ["musyx/reverb", False],
            ["musyx/delay_fx", True],
            "musyx/chorus_fx",
        ],
    },
    {
        "lib": "dtk",
        "mwcc_version": "1.2.5",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            ["Dolphin/dtk", True],
        ],
    },
    {
        "lib": "card",
        "mwcc_version": "1.2.5e",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            ["Dolphin/card/CARDBios", True],
            ["Dolphin/card/CARDUnlock", True],
            ["Dolphin/card/CARDRdwr", True],
            ["Dolphin/card/CARDBlock", True],
            ["Dolphin/card/CARDDir", True],
            ["Dolphin/card/CARDCheck", True],
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
        "mwcc_version": "1.2.5e",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            ["Dolphin/si/SIBios", False],
            ["Dolphin/si/SISamplingRate", True],
        ],
    },
    {
        "lib": "exi",
        "mwcc_version": "1.2.5",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            "Dolphin/exi/EXIBios",
            "Dolphin/exi/EXIUart",
        ],
    },
    {
        "lib": "thp",
        "mwcc_version": "1.2.5",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            "Dolphin/thp/THPDec",
            "Dolphin/thp/THPAudio",
        ],
    },
    {
        "lib": "gba",
        "mwcc_version": "1.2.5e",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            ["Dolphin/GBA/GBA", True],
            ["Dolphin/GBA/GBAGetProcessStatus", False],
            "Dolphin/GBA/GBAJoyBoot",
            ["Dolphin/GBA/GBARead", True],
            ["Dolphin/GBA/GBAWrite", True],
            ["Dolphin/GBA/GBAXfer", True],
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
n.variable("host_cflags", "-I include/ -Wno-trigraphs")
n.variable("host_cppflags",
           "-std=c++98 -I include/ -fno-exceptions -fno-rtti -D_CRT_SECURE_NO_WARNINGS -Wno-trigraphs")

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
n.rule(name="host_cc", command="clang $host_cflags -c -o $out $in",
       description="host_cc $out")
n.rule(name="host_cpp", command="clang++ $host_cppflags -c -o $out $in",
       description="host_c++ $out")
n.newline()

###
# Build
###
all_source_files = []
all_host_source_files = []
for lib in LIBS:
    inputs = []
    if "lib" in lib:
        lib_name = lib["lib"]
        n.comment(f"{lib_name}.a")
    else:
        n.comment("Loose files")
    for object in lib["objects"]:
        completed = None
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
            if completed is None:
                print(f"Mark as incomplete: {c_file}")
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
            if lib["host"]:
                n.build(f"$builddir/host/{object}.o", "host_cc" if c_file.endswith(".c") else "host_cpp", c_file,
                        variables={
                            "basedir": os.path.dirname(f"$builddir/src/{object}"),
                            "basefile": f"$builddir/src/{object}"
                        })
                if add_to_all:
                    all_host_source_files.append(f"$builddir/host/{object}.o")
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
# Helper rule for building all source files, with a host compiler
###
n.comment("Adds a command for building all source files with a host compiler")
n.build("all_source_host", "phony", all_host_source_files)
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
