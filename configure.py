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

# Completed c/cpp files to link
COMPLETE_OBJECTS = [
    "MetroTRK/mslsupp",
    "MetroidPrime/CAxisAngle",
    "MetroidPrime/CEntity",
    "MetroidPrime/CArchMsgParmUserInput",
    "MetroidPrime/CArchMsgParmInt32",
    "MetroidPrime/CArchMsgParmInt32Int32VoidPtr",
    "MetroidPrime/CArchMsgParmNull",
    "MetroidPrime/CArchMsgParmReal32",
    "MetroidPrime/CArchMsgParmControllerStatus",
    "MetroidPrime/TCastTo",
    "MetroidPrime/UserNames",
    "MetroidPrime/CPhysicsState",
    "MetroidPrime/CMemoryDrawEnum",
    "MetroidPrime/HUD/CHUDMemoParms",
    "MetroidPrime/ScriptObjects/CScriptDebugCameraWaypoint",
    "MetroidPrime/ScriptObjects/CScriptPickup",
    "MetroidPrime/ScriptObjects/CScriptSwitch",
    "MetroidPrime/CIOWin",
    "Weapons/IWeaponRenderer",
    "Collision/CMaterialList",
    "Collision/CMaterialFilter",
    "Collision/CCollisionInfo",
    "Collision/CMRay",
    "Kyoto/Basics/CStopwatch",
    "Kyoto/Basics/COsContextDolphin",
    "Kyoto/Basics/CSWDataDolphin",
    "Kyoto/Audio/CSfxHandle",
    "Kyoto/Graphics/CGX",
    "Kyoto/Particles/CWarp",
    "Kyoto/Math/CPlane",
    "Kyoto/Math/CUnitVector3f",
    "Kyoto/Math/CVector2f",
    "Kyoto/Math/CVector2i",
    "Kyoto/Math/CVector3d",
    "Kyoto/Math/CVector3i",
    "Kyoto/Math/CloseEnough",
    "Kyoto/Math/CSphere",
    "Kyoto/CRandom16",
    "Kyoto/CCrc32",
    "Kyoto/Alloc/CCircularBuffer",
    "Kyoto/Alloc/IAllocator",
    "Kyoto/Streams/CInputStream",
    "Kyoto/Streams/CMemoryInStream",
    "Kyoto/zlib/adler32",
    "Kyoto/zlib/infblock",
    "Kyoto/zlib/infcodes",
    "Kyoto/zlib/inffast",
    "Kyoto/zlib/inflate",
    "Kyoto/zlib/inftrees",
    "Kyoto/zlib/infutil",
    "Kyoto/zlib/zutil",
    "Kyoto/Graphics/CColor",
    "Kyoto/Input/RumbleAdsr",
    "Kyoto/Input/DolphinIController",
    "Kyoto/Input/CDolphinController",
    "Kyoto/Alloc/CSmallAllocPool",
    "Kyoto/Text/CStringTable",
    "Kyoto/CTimeProvider",
    "Kyoto/Text/CFontImageDef",
    "Kyoto/Graphics/DolphinCColor",
    "Kyoto/Audio/g721",
    "Kyoto/IObj",
    "Dolphin/PPCArch",
    "Dolphin/dsp/dsp_debug",
    "Dolphin/os/__start",
    "Dolphin/os/OSAudioSystem",
    "Dolphin/os/__ppc_eabi_init",
    "Runtime/__mem",
    "Runtime/abort_exit",
    "Runtime/ctype",
    "Runtime/locale",
    "Runtime/mem",
    "Runtime/mem_funcs",
    "Runtime/misc_io",
    "Runtime/rand",
    "Runtime/wchar_io",
    "Runtime/e_acos",
    "Runtime/e_asin",
    "Runtime/e_atan2",
    "Runtime/e_fmod",
    "Runtime/e_log",
    "Runtime/e_rem_pio2",
    "Runtime/k_cos",
    "Runtime/k_sin",
    "Runtime/k_tan",
    "Runtime/s_copysign",
    "Runtime/s_cos",
    "Runtime/s_floor",
    "Runtime/s_frexp",
    "Runtime/s_ldexp",
    "Runtime/s_modf",
    "Runtime/s_nextafter",
    "Runtime/s_sin",
    "Runtime/s_tan",
    "Runtime/w_acos",
    "Runtime/w_asin",
    "Runtime/w_atan2",
    "Runtime/w_exp",
    "Runtime/w_fmod",
    "Runtime/w_log",
    "Runtime/w_pow",
    "Runtime/math_ppc",
    "musyx/seq_api",
    "musyx/synth_ac",
    "musyx/synth_dbtab",
    "musyx/snd_init",
    "musyx/snd_service",
    "musyx/dsp_import",
    "musyx/hw_memory",
    "musyx/creverb_fx",
    "musyx/reverb_fx",
    "musyx/delay_fx",
    "Dolphin/pad/PadClamp",
    #"Dolphin/pad/pad",
    "Dolphin/dtk",
    "Dolphin/card/CARDUnlock",
    "Dolphin/card/CARDRdwr",
    "Dolphin/card/CARDBlock",
    "Dolphin/card/CARDDir",
    "Dolphin/card/CARDMount",
    "Dolphin/card/CARDFormat",
    "Dolphin/card/CARDOpen",
    "Dolphin/card/CARDCreate",
    "Dolphin/card/CARDRead",
    "Dolphin/card/CARDWrite",
    "Dolphin/card/CARDDelete",
    "Dolphin/card/CARDStat",
    "Dolphin/card/CARDRename",
    "Dolphin/card/CARDNet",
]

LIBS = [
    {
        "lib": "TRK_MINNOW_DOLPHIN",
        "mwcc_version": "1.2.5",
        "cflags": "$cflags_base",
        "objects": ["MetroTRK/mslsupp"],
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
            "MetroidPrime/CAxisAngle",
            "MetroidPrime/CEulerAngles",
            "MetroidPrime/CArchMsgParmUserInput",
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
            "MetroidPrime/CEntity",
            "MetroidPrime/CArchMsgParmInt32",
            "MetroidPrime/CArchMsgParmInt32Int32VoidPtr",
            "MetroidPrime/CArchMsgParmNull",
            "MetroidPrime/CArchMsgParmReal32",
            "MetroidPrime/Decode",
            "MetroidPrime/CIOWinManager",
            "MetroidPrime/CIOWin",
            "MetroidPrime/CActor",
            "MetroidPrime/CWorld",
            "MetroidPrime/Tweaks/CTweakParticle",
            "MetroidPrime/Clamp_int",
            "MetroidPrime/CArchMsgParmControllerStatus",
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
            "MetroidPrime/TCastTo",
            "MetroidPrime/ScriptObjects/CScriptSound",
            "MetroidPrime/ScriptObjects/CScriptPlatform",
            "MetroidPrime/UserNames",
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
            "MetroidPrime/ScriptObjects/CScriptPickup",
            "MetroidPrime/CDamageInfo",
            "MetroidPrime/CMemoryDrawEnum",
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
            "MetroidPrime/HUD/CHUDMemoParms",
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
            "MetroidPrime/TGameTypes",
            "MetroidPrime/CPhysicsActor",
            "MetroidPrime/CPhysicsState",
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
            "MetroidPrime/ScriptObjects/CScriptDebugCameraWaypoint",
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
            "MetroidPrime/ScriptObjects/CScriptSwitch",
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
            "WorldFormat/CCollisionSurface",
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
            "Weapons/IWeaponRenderer",
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
            "Collision/CCollisionInfo",
            "Collision/InternalColliders",
            "Collision/CCollisionPrimitive",
            "Collision/CMaterialList",
            "Collision/CollisionUtil",
            "Collision/CCollidableSphere",
            "Collision/CMaterialFilter",
            "Collision/COBBox",
            "Collision/CMRay",
        ],
    },
    {
        "lib": "Kyoto_CW1",
        "mwcc_version": "1.3.2",
        "cflags": "$cflags_retro",
        "objects": [
            "Kyoto/Basics/CBasics",
            "Kyoto/Basics/CStopwatch",
            "Kyoto/Basics/CBasicsDolphin",
            "Kyoto/Basics/CCallStackDolphin",
            "Kyoto/Basics/COsContextDolphin",
            "Kyoto/Basics/CSWDataDolphin",
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
            "Kyoto/Audio/CSfxHandle",
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
            "Kyoto/Graphics/CLight",
            "Kyoto/Graphics/CCubeModel",
            "Kyoto/Graphics/CGX",
            "Kyoto/Graphics/CTevCombiners",
            "Kyoto/Graphics/DolphinCGraphics",
            "Kyoto/Graphics/DolphinCPalette",
            "Kyoto/Graphics/DolphinCTexture",
            "Kyoto/Math/CloseEnough",
            "Kyoto/Math/CMatrix3f",
            "Kyoto/Math/CMatrix4f",
            "Kyoto/Math/CQuaternion",
            "Kyoto/CRandom16",
            "Kyoto/Math/CTransform4f",
            "Kyoto/Math/CUnitVector3f",
            "Kyoto/Math/CVector2f",
            "Kyoto/Math/CVector2i",
            "Kyoto/Math/CVector3d",
            "Kyoto/Math/CVector3f",
            "Kyoto/Math/CVector3i",
            "Kyoto/Math/RMathUtils",
            "Kyoto/CCrc32",
            "Kyoto/Alloc/CCircularBuffer",
            "Kyoto/Alloc/CMemory",
            "Kyoto/Alloc/IAllocator",
            "Kyoto/PVS/CPVSVisOctree",
            "Kyoto/PVS/CPVSVisSet",
            "Kyoto/Particles/CColorElement",
            "Kyoto/Particles/CElementGen",
            "Kyoto/Particles/CParticleGen",
            "Kyoto/Particles/CParticleGlobals",
            "Kyoto/Particles/CParticleSwoosh",
            "Kyoto/Particles/CParticleSwooshDataFactory",
            "Kyoto/Particles/CRealElement",
            "Kyoto/Particles/CSpawnSystemKeyframeData",
            "Kyoto/Particles/CUVElement",
            "Kyoto/Particles/CVectorElement",
            "Kyoto/Particles/CWarp",
            "Kyoto/Math/CPlane",
            "Kyoto/Math/CSphere",
            "Kyoto/Math/CAABox",
            "Kyoto/CFactoryMgr",
            "Kyoto/CResFactory",
            "Kyoto/CResLoader",
            "Kyoto/rstl/rstl_map",
            "Kyoto/rstl/rstl_strings",
            "Kyoto/rstl/RstlExtras",
            "Kyoto/Streams/CInputStream",
            "Kyoto/Streams/CMemoryInStream",
            "Kyoto/Streams/CMemoryStreamOut",
            "Kyoto/Streams/COutputStream",
            "Kyoto/Streams/CZipInputStream",
            "Kyoto/Streams/CZipSupport",
            "Kyoto/CSimplePool",
            "Kyoto/CToken",
            "Kyoto/IObj",
        ],
    },
    {
        "lib": "zlib",
        "mwcc_version": "1.3.2",
        "cflags": "$cflags_runtime",
        "objects": [
            "Kyoto/zlib/adler32",
            "Kyoto/zlib/infblock",
            "Kyoto/zlib/infcodes",
            "Kyoto/zlib/inffast",
            "Kyoto/zlib/inflate",
            "Kyoto/zlib/inftrees",
            "Kyoto/zlib/infutil",
            "Kyoto/zlib/zutil",
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
            "Kyoto/CFinalInput",
            "Kyoto/Graphics/CColor",
            "Kyoto/Audio/DolphinCAudioGroupSet",
            "Kyoto/Audio/DolphinCAudioSys",
            "Kyoto/DolphinCMemoryCardSys",
            "Kyoto/Input/DolphinIController",
            "Kyoto/Input/CDolphinController",
            "Kyoto/DolphinCDvdFile",
            "Kyoto/Alloc/CMediumAllocPool",
            "Kyoto/Alloc/CSmallAllocPool",
            "Kyoto/Alloc/CGameAllocator",
            "Kyoto/Animation/DolphinCSkinnedModel",
            "Kyoto/Animation/DolphinCSkinRules",
            "Kyoto/Animation/DolphinCVirtualBone",
            "Kyoto/Graphics/DolphinCModel",
            "Kyoto/Text/CStringTable",
            "Kyoto/Particles/CEmitterElement",
            "Kyoto/Particles/CEffectComponent",
            "Kyoto/Particles/CParticleData",
            "Kyoto/Animation/CVertexMorphEffect",
            "Kyoto/Animation/CSkinnedModelWithAvgNormals",
            "Kyoto/CTimeProvider",
            "Kyoto/CARAMToken",
            "Kyoto/Audio/CMidiManager",
            "Kyoto/Text/CFontImageDef",
            "Kyoto/Text/CImageInstruction",
            "Kyoto/Text/CTextRenderBuffer",
            "Kyoto/Graphics/CCubeMoviePlayer",
            "Kyoto/Animation/CAdditiveAnimPlayback",
            "Kyoto/Particles/CParticleElectricDataFactory",
            "Kyoto/Particles/CParticleElectric",
            "Kyoto/Graphics/DolphinCColor",
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
            "Kyoto/Input/RumbleAdsr",
            "Kyoto/Input/CRumbleGenerator",
            "Kyoto/Audio/SDSPStream",
            "Kyoto/Audio/g721",
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
        "objects": ["Dolphin/PPCArch"],
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
            "Dolphin/dsp/dsp_debug",
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
            "Dolphin/os/__start",
            "Dolphin/os/OS",
            "Dolphin/os/OSAlarm",
            "Dolphin/os/OSArena",
            "Dolphin/os/OSAudioSystem",
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
            "Dolphin/os/OSReset",
            "Dolphin/os/OSResetSW",
            "Dolphin/os/OSRtc",
            "Dolphin/os/OSSync",
            "Dolphin/os/OSThread",
            "Dolphin/os/OSTime",
            "Dolphin/os/__ppc_eabi_init",
        ],
    },
    {
        "lib": "pad",
        "mwcc_version": "1.2.5e",
        "cflags": "$cflags_base",
        "objects": [
            "Dolphin/pad/PadClamp",
            "Dolphin/pad/pad",
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
            "Runtime/__mem",
            "Runtime/__va_arg",
            "Runtime/global_destructor_chain",
            "Runtime/CPlusLibPPC",
            "Runtime/NMWException",
            "Runtime/ptmf",
            "Runtime/runtime",
            "Runtime/__init_cpp_exceptions",
            "Runtime/Gecko_ExceptionPPC",
            "Runtime/abort_exit",
            "Runtime/alloc",
            "Runtime/ansi_files",
            "Runtime/ansi_fp",
            "Runtime/arith",
            "Runtime/buffer_io",
            "Runtime/ctype",
            "Runtime/locale",
            "Runtime/direct_io",
            "Runtime/file_io",
            "Runtime/FILE_POS",
            "Runtime/mbstring",
            "Runtime/mem",
            "Runtime/mem_funcs",
            "Runtime/misc_io",
            "Runtime/printf",
            "Runtime/qsort",
            "Runtime/rand",
            "Runtime/sscanf",
            "Runtime/string",
            "Runtime/float",
            "Runtime/strtold",
            "Runtime/uart_console_io",
            "Runtime/wchar_io",
            "Runtime/e_acos",
            "Runtime/e_asin",
            "Runtime/e_atan2",
            "Runtime/e_exp",
            "Runtime/e_fmod",
            "Runtime/e_log",
            "Runtime/e_pow",
            "Runtime/e_rem_pio2",
            "Runtime/k_cos",
            "Runtime/k_rem_pio2",
            "Runtime/k_sin",
            "Runtime/k_tan",
            "Runtime/s_atan",
            "Runtime/s_copysign",
            "Runtime/s_cos",
            "Runtime/s_floor",
            "Runtime/s_frexp",
            "Runtime/s_ldexp",
            "Runtime/s_modf",
            "Runtime/s_nextafter",
            "Runtime/s_sin",
            "Runtime/s_tan",
            "Runtime/w_acos",
            "Runtime/w_asin",
            "Runtime/w_atan2",
            "Runtime/w_exp",
            "Runtime/w_fmod",
            "Runtime/w_log",
            "Runtime/w_pow",
            "Runtime/math_ppc",
        ],
    },
    {
        "lib": "musyx",
        "mwcc_version": "1.3.2",
        "cflags": "$cflags_musyx",
        "objects": [
            "musyx/seq",
            "musyx/synth",
            "musyx/seq_api",
            "musyx/snd_synthapi",
            "musyx/stream",
            "musyx/synthdata",
            "musyx/synthmacros",
            "musyx/synthvoice",
            "musyx/synth_ac",
            "musyx/synth_adsr",
            "musyx/synth_vsamples",
            "musyx/synth_dbtab",
            "musyx/s_data",
            "musyx/hw_dspctrl",
            "musyx/hw_volconv",
            "musyx/snd3d",
            "musyx/snd_init",
            "musyx/snd_math",
            "musyx/snd_midictrl",
            "musyx/snd_service",
            "musyx/hardware",
            "musyx/hw_aramdma",
            "musyx/dsp_import",
            "musyx/hw_dolphin",
            "musyx/hw_memory",
            "musyx/creverb_fx",
            "musyx/creverb",
            "musyx/reverb_fx",
            "musyx/reverb",
            "musyx/delay_fx",
            "musyx/chorus_fx",
        ],
    },
    {
        "lib": "dtk",
        "mwcc_version": "1.2.5",
        "cflags": "$cflags_base",
        "objects": ["Dolphin/dtk"],
    },
    {
        "lib": "card",
        "mwcc_version": "1.2.5e",
        "cflags": "$cflags_base",
        "objects": [
            "Dolphin/card/CARDBios",
            "Dolphin/card/CARDUnlock",
            "Dolphin/card/CARDRdwr",
            "Dolphin/card/CARDBlock",
            "Dolphin/card/CARDDir",
            "Dolphin/card/CARDCheck",
            "Dolphin/card/CARDMount",
            "Dolphin/card/CARDFormat",
            "Dolphin/card/CARDOpen",
            "Dolphin/card/CARDCreate",
            "Dolphin/card/CARDRead",
            "Dolphin/card/CARDWrite",
            "Dolphin/card/CARDDelete",
            "Dolphin/card/CARDStat",
            "Dolphin/card/CARDRename",
            "Dolphin/card/CARDNet",
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

###
# Build
###
for lib in LIBS:
    inputs = []
    if "lib" in lib:
        lib_name = lib["lib"]
        n.comment(f"{lib_name}.a")
    else:
        n.comment("Loose files")
    for object in lib["objects"]:
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
        if os.path.exists(os.path.join("asm", f"{object}.s")):
            n.build(f"$builddir/asm/{object}.o", "as", f"asm/{object}.s")
        if object in COMPLETE_OBJECTS:
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
            if object in COMPLETE_OBJECTS:
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
