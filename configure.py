#!/usr/bin/env python3

###
# Generates build files for the project.
# This file also includes the project configuration,
# such as compiler flags and the object matching status.
#
# Usage:
#   python3 configure.py
#   ninja
#
# Append --help to see available options.
###

import argparse
import sys
from pathlib import Path
from typing import List, Sequence, Union

from tools.project import (
    BuildConfigUnit,
    Object,
    ProgressCategory,
    ProjectConfig,
    calculate_progress,
    generate_build,
    is_windows,
)

# Game versions
DEFAULT_VERSION = 0
VERSIONS = [
    "GM8E01_00",  # mp-v1.088 NTSC-U
    "GM8E01_01",  # mp-v1.093 NTSC-U
    "GM8E01_48",  # mp-v1.097 NTSC-K
    "GM8P01_00",  # mp-v1.110 PAL
    "GM8J01_00",  # mp-v1.111 NTSC-J
    "GM8E01_02",  # mp-v1.111 NTSC-U
    "R3IJ01_00",  # mp-v3.570 New Play Controls
    "R3ME01_00",  # mp-v3.593 Trilogy NTSC
    "R3MP01_00",  # mp-v3.629 Trilogy PAL
]

DISABLED_VERSIONS = [
    #1,
    #2, 
    3, 
    4, 
    5, 
    6, 
    7, 
    8,
]

parser = argparse.ArgumentParser()
parser.add_argument(
    "mode",
    choices=["configure", "progress"],
    default="configure",
    help="script mode (default: configure)",
    nargs="?",
)
parser.add_argument(
    "-v",
    "--version",
    choices=VERSIONS,
    type=str.upper,
    default=VERSIONS[DEFAULT_VERSION],
    help="version to build",
)
parser.add_argument(
    "--build-dir",
    metavar="DIR",
    type=Path,
    default=Path("build"),
    help="base build directory (default: build)",
)
parser.add_argument(
    "--binutils",
    metavar="BINARY",
    type=Path,
    help="path to binutils (optional)",
)
parser.add_argument(
    "--compilers",
    metavar="DIR",
    type=Path,
    help="path to compilers (optional)",
)
parser.add_argument(
    "--map",
    action="store_true",
    help="generate map file(s)",
)
parser.add_argument(
    "--debug",
    action="store_true",
    help="build with debug info (non-matching)",
)
if not is_windows():
    parser.add_argument(
        "--wrapper",
        metavar="BINARY",
        type=Path,
        help="path to wibo or wine (optional)",
    )
parser.add_argument(
    "--dtk",
    metavar="BINARY | DIR",
    type=Path,
    help="path to decomp-toolkit binary or source (optional)",
)
parser.add_argument(
    "--objdiff",
    metavar="BINARY | DIR",
    type=Path,
    help="path to objdiff-cli binary or source (optional)",
)
parser.add_argument(
    "--sjiswrap",
    metavar="EXE",
    type=Path,
    help="path to sjiswrap.exe (optional)",
)
parser.add_argument(
    "--verbose",
    action="store_true",
    help="print verbose output",
)
parser.add_argument(
    "--non-matching",
    dest="non_matching",
    action="store_true",
    help="builds equivalent (but non-matching) or modded objects",
)
parser.add_argument(
    "--no-progress",
    dest="progress",
    action="store_false",
    help="disable progress calculation",
)
args = parser.parse_args()

config = ProjectConfig()
config.version = str(args.version)
version_num = VERSIONS.index(config.version)

if version_num in DISABLED_VERSIONS:
    print(f"Version {VERSIONS[version_num]} is disabled using default")
    version_num = DEFAULT_VERSION
    config.version = VERSIONS[DEFAULT_VERSION]

# Apply arguments
config.build_dir = args.build_dir
config.dtk_path = args.dtk
config.objdiff_path = args.objdiff
config.binutils_path = args.binutils
config.compilers_path = args.compilers
config.generate_map = args.map
config.non_matching = args.non_matching
config.sjiswrap_path = args.sjiswrap
config.progress = args.progress
if not is_windows():
    config.wrapper = args.wrapper
# Don't build asm unless we're --non-matching
if not config.non_matching:
    config.asm_dir = None

# Tool versions
config.binutils_tag = "2.42-1"
config.compilers_tag = "20240706"
config.dtk_tag = "v1.4.0"
config.objdiff_tag = "v2.7.1"
config.sjiswrap_tag = "v1.2.0"
config.wibo_tag = "0.6.11"

# Project
config.config_path = Path("config") / config.version / "config.yml"
config.check_sha_path = Path("config") / config.version / "build.sha1"
config.asflags = [
    "-mgekko",
    "--strip-local-absolute",
    "-I include",
    f"-I build/{config.version}/include",
    f"--defsym version={version_num}",
]
config.ldflags = [
    "-fp hardware",
    "-nodefaults",
]
if args.debug:
    config.ldflags.append("-g")
if args.map:
    config.ldflags.append("-mapunused")

config.build_rels = False

# Base flags, common to most GC/Wii games.
# Generally leave untouched, with overrides added below.
cflags_base = [
    "-nodefaults",
    "-proc gekko",
    "-align powerpc",
    "-enum int",
    "-fp hardware",
    "-Cpp_exceptions off",
    # "-W all",
    "-O4,p",
    "-inline auto",
    '-pragma "cats off"',
    '-pragma "warn_notinlined off"',
    "-maxerrors 1",
    "-nosyspath",
    "-RTTI off",
    "-fp_contract on",
    "-str reuse",
    "-i include",
    "-i libc",
    f"-i build/{config.version}/include",
    f"-DVERSION={version_num}",
    "-DPRIME1",
    "-DNONMATCHING=0",
]

# Debug flags
if args.debug:
    cflags_base.extend(["-sym on", "-DDEBUG=1"])
else:
    cflags_base.append("-DNDEBUG=1")

# Dolphin flags
cflags_dolphin = [
    *cflags_base,
    "-multibyte",
    "-fp_contract off",
]

# Metrowerks library flags
cflags_runtime = [
    *cflags_base,
    "-use_lmw_stmw on",
    "-str reuse,pool,readonly",
    "-gccinc",
    "-common off",
    "-char signed",
    "-inline deferred,auto",
]

cflags_retro = [
    *cflags_base,
    "-use_lmw_stmw on",
    "-str reuse,pool,readonly",
    "-gccinc",
    "-inline deferred,noauto",
    "-common on",
    "-i extern/musyx/include",
    "-DMUSY_TARGET=MUSY_TARGET_DOLPHIN",
]

cflags_musyx = [
    "-proc gekko",
    "-nodefaults",
    "-nosyspath",
    "-i include",
    "-i extern/musyx/include",
    "-i libc",
    "-inline auto,depth=4",
    "-O4,p",
    "-fp hard",
    "-enum int",
    "-sym on",
    "-Cpp_exceptions off",
    "-str reuse,pool,readonly",
    "-fp_contract off",
    "-DMUSY_TARGET=MUSY_TARGET_DOLPHIN",
]

cflags_musyx_debug = [
    "-proc gecko",
    "-fp hard",
    "-nodefaults",
    "-nosyspath",
    "-i include",
    "-i extern/musyx/include",
    "-i libc",
    "-g",
    "-sym on",
    "-D_DEBUG=1",
    "-fp hard",
    "-enum int",
    "-Cpp_exceptions off",
    "-DMUSY_TARGET=MUSY_TARGET_DOLPHIN",
]

# REL flags
cflags_rel = [
    "-proc gecko",
    "-fp hard",
    "-nodefaults",
    "-nosyspath",
    "-i include",
    "-i libc",
    "-O0",
    "-sdata 0",
    "-sdata2 0",
    "-str noreuse",
    "-Cpp_exceptions off",
]

config.linker_version = "GC/1.3.2"


# Helper function for Dolphin libraries
def DolphinLib(lib_name, objects):
    return {
        "lib": lib_name + "D" if args.debug else "",
        "mw_version": "GC/1.2.5n",
        "cflags": cflags_dolphin,
        "host": False,
        "progress_category": "sdk",
        "objects": objects,
        "shift_jis": True,
    }


def RetroLib(lib_name, progress_category, objects):
    return {
        "lib": lib_name + "CW" + "D" if args.debug else "",
        "mw_version": "GC/1.3.2",
        "cflags": cflags_retro,
        "host": False,
        "progress_category": progress_category,
        "objects": objects,
        "shift_jis": False,
    }


def MusyX(objects, mw_version="GC/1.3.2", debug=False, major=2, minor=0, patch=3 if version_num == 7 else 0):
    cflags = cflags_musyx if not debug else cflags_musyx_debug
    return {
        "lib": "musyx",
        "mw_version": mw_version,
        "src_dir": "extern/musyx/src",
        "host": False,
        "cflags": [
            *cflags,
            f"-DMUSY_VERSION_MAJOR={major}",
            f"-DMUSY_VERSION_MINOR={minor}",
            f"-DMUSY_VERSION_PATCH={patch}",
        ],
        "progress_category": "third_party",
        "objects": objects,
        "shift_jis": False,
    }


# Helper function for REL script objects
def Rel(lib_name, objects):
    return {
        "lib": lib_name,
        "mw_version": "GC/1.3.2",
        "cflags": cflags_rel,
        "host": True,
        "progress_category": "third_party",
        "objects": objects,
        "shift_jis": False,
    }


Matching = True  # Object matches and should be linked
NonMatching = False  # Object does not match and should not be linked
Equivalent = (
    config.non_matching
)  # Object should be linked when configured with --non-matching


# Object is only matching for specific versions
def MatchingFor(*versions):
    return config.version in versions


config.warn_missing_config = True
config.warn_missing_source = False
config.libs = [
    DolphinLib(
        "TRK_MINNOW_DOLPHIN",
        [
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "MetroTRK/mslsupp.c"),
        ],
    ),
    RetroLib(
        "MetroidPrime",
        "game",
        [
            Object(NonMatching, "MetroidPrime/main.cpp"),
            Object(NonMatching, "MetroidPrime/Cameras/CCameraManager.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/CControlMapper.cpp"),
            Object(NonMatching, "MetroidPrime/Cameras/CFirstPersonCamera.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/CObjectList.cpp"),
            Object(NonMatching, "MetroidPrime/Player/CPlayer.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/CAxisAngle.cpp"),
            Object(NonMatching, "MetroidPrime/CEulerAngles.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/CArchMsgParmUserInput.cpp"),
            Object(NonMatching, "MetroidPrime/CFrontEndUI.cpp"),
            Object(NonMatching, "MetroidPrime/CInputGenerator.cpp"),
            Object(NonMatching, "MetroidPrime/CMainFlow.cpp"),
            Object(NonMatching, "MetroidPrime/CMFGame.cpp"),
            Object(NonMatching, "MetroidPrime/CCredits.cpp"),
            Object(NonMatching, "MetroidPrime/CSplashScreen.cpp"),
            Object(NonMatching, "MetroidPrime/CAnimData.cpp"),
            Object(NonMatching, "MetroidPrime/Factories/CCharacterFactory.cpp"),
            Object(NonMatching, "MetroidPrime/Factories/CAssetFactory.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/Tweaks/CTweakPlayer.cpp"),
            Object(NonMatching, "MetroidPrime/Tweaks/CTweaks.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/Tweaks/CTweakGame.cpp"),
            Object(NonMatching, "MetroidPrime/Weapons/CGameProjectile.cpp"),
            Object(NonMatching, "MetroidPrime/Player/CPlayerGun.cpp"),
            Object(NonMatching, "MetroidPrime/CStateManager.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/CEntity.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/CArchMsgParmInt32.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/CArchMsgParmInt32Int32VoidPtr.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/CArchMsgParmNull.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/CArchMsgParmReal32.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/Decode.cpp"),
            Object(NonMatching, "MetroidPrime/CIOWinManager.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/CIOWin.cpp"),
            Object(NonMatching, "MetroidPrime/CActor.cpp"),
            Object(NonMatching, "MetroidPrime/CWorld.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/Tweaks/CTweakParticle.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/Clamp_int.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/CArchMsgParmControllerStatus.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/CExplosion.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/CEffect.cpp"),
            Object(NonMatching, "MetroidPrime/Cameras/CGameCamera.cpp"),
            Object(NonMatching, "MetroidPrime/CGameArea.cpp"),
            Object(NonMatching, "MetroidPrime/HUD/CSamusHud.cpp"),
            Object(NonMatching, "MetroidPrime/CAnimationDatabaseGame.cpp"),
            Object(NonMatching, "MetroidPrime/CTransitionDatabaseGame.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/Tweaks/CTweakPlayerControl.cpp"),
            Object(NonMatching, "MetroidPrime/Tweaks/CTweakPlayerGun.cpp"),
            Object(NonMatching, "MetroidPrime/CPauseScreen.cpp"),
            Object(NonMatching, "MetroidPrime/Tweaks/CTweakGui.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CScriptActor.cpp"),
            Object(NonMatching, "MetroidPrime/ScriptObjects/CScriptTrigger.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CScriptWaypoint.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CPatterned.cpp"),
            Object(NonMatching, "MetroidPrime/ScriptObjects/CScriptDoor.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CStateMachine.cpp"),
            Object(Equivalent, "MetroidPrime/CMapArea.cpp"),
            Object(NonMatching, "MetroidPrime/Cameras/CBallCamera.cpp"),
            Object(NonMatching, "MetroidPrime/ScriptObjects/CScriptEffect.cpp"),
            Object(NonMatching, "MetroidPrime/Weapons/CBomb.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/Tweaks/CTweakBall.cpp"),
            Object(NonMatching, "MetroidPrime/Player/CPlayerState.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CScriptTimer.cpp"),
            Object(NonMatching, "MetroidPrime/Cameras/CCinematicCamera.cpp"),
            Object(NonMatching, "MetroidPrime/CAutoMapper.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CScriptCounter.cpp"),
            Object(NonMatching, "MetroidPrime/CMapWorld.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CAi.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/Enemies/PatternedCastTo.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/TCastTo.cpp"),
            Object(NonMatching, "MetroidPrime/ScriptObjects/CScriptSound.cpp"),
            Object(NonMatching, "MetroidPrime/ScriptObjects/CScriptPlatform.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/UserNames.cpp"),
            Object(NonMatching, "MetroidPrime/ScriptObjects/CScriptGenerator.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CScriptCameraWaypoint.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/CGameLight.cpp"),
            Object(NonMatching, "MetroidPrime/Tweaks/CTweakTargeting.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/Tweaks/CTweakAutoMapper.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/CParticleGenInfoGeneric.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/CParticleGenInfo.cpp"),
            Object(NonMatching, "MetroidPrime/CParticleDatabase.cpp"),
            Object(NonMatching, "MetroidPrime/Tweaks/CTweakGunRes.cpp"),
            Object(NonMatching, "MetroidPrime/CTargetReticles.cpp"),
            Object(NonMatching, "MetroidPrime/CWeaponMgr.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CScriptPickup.cpp"),
            Object(NonMatching, "MetroidPrime/CDamageInfo.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/CMemoryDrawEnum.cpp"),
            Object(NonMatching, "MetroidPrime/ScriptObjects/CScriptDock.cpp"),
            Object(NonMatching, "MetroidPrime/ScriptObjects/CScriptCameraHint.cpp"),
            Object(NonMatching, "MetroidPrime/ScriptLoader.cpp"),
            Object(NonMatching, "MetroidPrime/CSamusDoll.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/Factories/CStateMachineFactory.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/Weapons/CPlasmaBeam.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/Weapons/CPowerBeam.cpp"),
            Object(NonMatching, "MetroidPrime/Weapons/CWaveBeam.cpp"),
            Object(NonMatching, "MetroidPrime/Weapons/CIceBeam.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/CScriptMailbox.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CScriptRelay.cpp"),
            Object(NonMatching, "MetroidPrime/ScriptObjects/CScriptSpawnPoint.cpp"),
            Object(NonMatching, "MetroidPrime/ScriptObjects/CScriptRandomRelay.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CBeetle.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/HUD/CHUDMemoParms.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CScriptHUDMemo.cpp"),
            Object(Equivalent, "MetroidPrime/CMappableObject.cpp"),
            Object(NonMatching, "MetroidPrime/Player/CPlayerCameraBob.cpp"),
            Object(
                MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CScriptCameraFilterKeyframe.cpp"
            ),
            Object(
                MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CScriptCameraBlurKeyframe.cpp"
            ),
            Object(NonMatching, "MetroidPrime/Cameras/CCameraFilter.cpp"),
            Object(NonMatching, "MetroidPrime/Player/CMorphBall.cpp"),
            Object(
                NonMatching, "MetroidPrime/ScriptObjects/CScriptDamageableTrigger.cpp"
            ),
            Object(NonMatching, "MetroidPrime/ScriptObjects/CScriptDebris.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CScriptCameraShaker.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CScriptActorKeyframe.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/CConsoleOutputWindow.cpp"),
            Object(NonMatching, "MetroidPrime/ScriptObjects/CScriptWater.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/Weapons/CWeapon.cpp"),
            Object(NonMatching, "MetroidPrime/CDamageVulnerability.cpp"),
            Object(NonMatching, "MetroidPrime/CActorLights.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/Enemies/CPatternedInfo.cpp"),
            Object(NonMatching, "MetroidPrime/CSimpleShadow.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/CActorParameters.cpp"),
            Object(NonMatching, "MetroidPrime/CInGameGuiManager.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CWarWasp.cpp"),
            Object(NonMatching, "MetroidPrime/CWorldShadow.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/CAudioStateWin.cpp"),
            Object(NonMatching, "MetroidPrime/Player/CPlayerVisor.cpp"),
            Object(NonMatching, "MetroidPrime/CModelData.cpp"),
            Object(NonMatching, "MetroidPrime/CDecalManager.cpp"),
            Object(
                NonMatching, "MetroidPrime/ScriptObjects/CScriptSpiderBallWaypoint.cpp"
            ),
            Object(NonMatching, "MetroidPrime/Enemies/CBloodFlower.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/TGameTypes.cpp"),
            Object(NonMatching, "MetroidPrime/CPhysicsActor.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/CPhysicsState.cpp"),
            Object(NonMatching, "MetroidPrime/CRipple.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/CFluidUVMotion.cpp"),
            Object(NonMatching, "MetroidPrime/CRippleManager.cpp"),
            Object(NonMatching, "MetroidPrime/Player/CGrappleArm.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CSpacePirate.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CScriptCoverPoint.cpp"),
            Object(NonMatching, "MetroidPrime/Cameras/CPathCamera.cpp"),
            Object(NonMatching, "MetroidPrime/CFluidPlaneManager.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CScriptGrapplePoint.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CHUDBillboardEffect.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CFlickerBat.cpp"),
            Object(
                NonMatching,
                "MetroidPrime/BodyState/CBodyStateCmdMgr.cpp",
                cflags=[*cflags_retro, "-inline auto"],
            ),
            Object(NonMatching, "MetroidPrime/BodyState/CBodyStateInfo.cpp"),
            Object(NonMatching, "MetroidPrime/BodyState/CBSAttack.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/BodyState/CBSDie.cpp"),
            Object(NonMatching, "MetroidPrime/BodyState/CBSFall.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/BodyState/CBSGetup.cpp"),
            Object(NonMatching, "MetroidPrime/BodyState/CBSKnockBack.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/BodyState/CBSLieOnGround.cpp"),
            Object(NonMatching, "MetroidPrime/BodyState/CBSLocomotion.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/BodyState/CBSStep.cpp"),
            Object(NonMatching, "MetroidPrime/BodyState/CBSTurn.cpp"),
            Object(NonMatching, "MetroidPrime/BodyState/CBodyController.cpp"),
            Object(NonMatching, "MetroidPrime/BodyState/CBSLoopAttack.cpp"),
            Object(NonMatching, "MetroidPrime/Weapons/CTargetableProjectile.cpp"),
            Object(NonMatching, "MetroidPrime/BodyState/CBSLoopReaction.cpp"),
            Object(NonMatching, "MetroidPrime/CSteeringBehaviors.cpp"),
            Object(NonMatching, "MetroidPrime/BodyState/CBSGroundHit.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CChozoGhost.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CFireFlea.cpp"),
            Object(NonMatching, "MetroidPrime/BodyState/CBSSlide.cpp"),
            Object(NonMatching, "MetroidPrime/BodyState/CBSHurled.cpp"),
            Object(NonMatching, "MetroidPrime/BodyState/CBSJump.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/BodyState/CBSGenerate.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CPuddleSpore.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/BodyState/CBSTaunt.cpp"),
            Object(NonMatching, "MetroidPrime/CSortedLists.cpp"),
            Object(
                MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CScriptDebugCameraWaypoint.cpp"
            ),
            Object(
                NonMatching,
                "MetroidPrime/ScriptObjects/CScriptSpiderBallAttractionSurface.cpp",
            ),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/BodyState/CBSScripted.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CPuddleToadGamma.cpp"),
            Object(NonMatching, "MetroidPrime/ScriptObjects/CScriptDistanceFog.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/BodyState/CBSProjectileAttack.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/Weapons/CPowerBomb.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CMetaree.cpp"),
            Object(NonMatching, "MetroidPrime/ScriptObjects/CScriptDockAreaChange.cpp"),
            Object(
                NonMatching, "MetroidPrime/ScriptObjects/CScriptSpecialFunction.cpp"
            ),
            Object(NonMatching, "MetroidPrime/ScriptObjects/CScriptActorRotate.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/Player/CFidget.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CSpankWeed.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CParasite.cpp"),
            Object(NonMatching, "MetroidPrime/Player/CSamusFaceReflection.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CScriptPlayerHint.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CRipper.cpp"),
            Object(NonMatching, "MetroidPrime/Cameras/CCameraShakeData.cpp"),
            Object(
                NonMatching, "MetroidPrime/ScriptObjects/CScriptPickupGenerator.cpp"
            ),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CScriptPointOfInterest.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CDrone.cpp"),
            Object(NonMatching, "MetroidPrime/CMapWorldInfo.cpp"),
            Object(NonMatching, "MetroidPrime/Factories/CScannableObjectInfo.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CMetroid.cpp"),
            Object(NonMatching, "MetroidPrime/Player/CScanDisplay.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CScriptSteam.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CScriptRipple.cpp"),
            Object(NonMatching, "MetroidPrime/CBoneTracking.cpp"),
            Object(NonMatching, "MetroidPrime/Player/CFaceplateDecoration.cpp"),
            Object(NonMatching, "MetroidPrime/BodyState/CBSCover.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CScriptBallTrigger.cpp"),
            Object(NonMatching, "MetroidPrime/Weapons/CPlasmaProjectile.cpp"),
            Object(NonMatching, "MetroidPrime/Player/CPlayerOrbit.cpp"),
            Object(NonMatching, "MetroidPrime/CGameCollision.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/CBallFilter.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/CAABoxFilter.cpp"),
            Object(NonMatching, "MetroidPrime/CGroundMovement.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CNewIntroBoss.cpp"),
            Object(NonMatching, "MetroidPrime/Weapons/CPhazonBeam.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CScriptTargetingPoint.cpp"),
            Object(NonMatching, "MetroidPrime/BodyState/CBSWallHang.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CScriptEMPulse.cpp"),
            Object(NonMatching, "MetroidPrime/HUD/CHudDecoInterface.cpp"),
            Object(NonMatching, "MetroidPrime/Weapons/CFlameThrower.cpp"),
            Object(NonMatching, "MetroidPrime/Weapons/CBeamProjectile.cpp"),
            Object(NonMatching, "MetroidPrime/CFluidPlaneCPU.cpp"),
            Object(NonMatching, "MetroidPrime/CFluidPlaneDoor.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CScriptRoomAcoustics.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CIceSheegoth.cpp"),
            Object(NonMatching, "MetroidPrime/CCollisionActorManager.cpp"),
            Object(NonMatching, "MetroidPrime/CCollisionActor.cpp"),
            Object(NonMatching, "MetroidPrime/ScriptObjects/CScriptPlayerActor.cpp"),
            Object(NonMatching, "MetroidPrime/Tweaks/CTweakPlayerRes.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/Enemies/CBurstFire.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CFlaahgra.cpp"),
            Object(NonMatching, "MetroidPrime/Player/CPlayerEnergyDrain.cpp"),
            Object(NonMatching, "MetroidPrime/CFlameWarp.cpp"),
            Object(NonMatching, "MetroidPrime/Weapons/CIceImpact.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/GameObjectLists.cpp"),
            Object(NonMatching, "MetroidPrime/Weapons/CAuxWeapon.cpp"),
            Object(NonMatching, "MetroidPrime/Weapons/CGunWeapon.cpp"),
            Object(NonMatching, "MetroidPrime/ScriptObjects/CScriptAreaAttributes.cpp"),
            Object(NonMatching, "MetroidPrime/Weapons/CWaveBuster.cpp"),
            Object(NonMatching, "MetroidPrime/Player/CStaticInterference.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CMetroidBeta.cpp"),
            Object(NonMatching, "MetroidPrime/PathFinding/CPathFindSearch.cpp"),
            Object(NonMatching, "MetroidPrime/PathFinding/CPathFindRegion.cpp"),
            Object(NonMatching, "MetroidPrime/PathFinding/CPathFindArea.cpp"),
            Object(
                NonMatching, "MetroidPrime/Weapons/GunController/CGunController.cpp"
            ),
            Object(NonMatching, "MetroidPrime/Weapons/GunController/CGSFreeLook.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/Weapons/GunController/CGSComboFire.cpp"),
            Object(NonMatching, "MetroidPrime/HUD/CHudBallInterface.cpp"),
            Object(NonMatching, "MetroidPrime/Tweaks/CTweakGuiColors.cpp"),
            Object(NonMatching, "MetroidPrime/ScriptObjects/CFishCloud.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/CHealthInfo.cpp"),
            Object(NonMatching, "MetroidPrime/Player/CGameState.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CScriptVisorFlare.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CScriptWorldTeleporter.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CScriptVisorGoo.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CJellyZap.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CScriptControllerAction.cpp"),
            Object(NonMatching, "MetroidPrime/Weapons/GunController/CGunMotion.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CScriptSwitch.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/BodyState/CABSIdle.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/BodyState/CABSFlinch.cpp"),
            Object(NonMatching, "MetroidPrime/BodyState/CABSAim.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CScriptPlayerStateChange.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CThardus.cpp"),
            Object(NonMatching, "MetroidPrime/CActorParticles.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CWallCrawlerSwarm.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CScriptAiJumpPoint.cpp"),
            Object(NonMatching, "MetroidPrime/CMessageScreen.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CFlaahgraTentacle.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/Weapons/GunController/CGSFidget.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/BodyState/CABSReaction.cpp"),
            Object(NonMatching, "MetroidPrime/Weapons/CIceProjectile.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CFlyingPirate.cpp"),
            Object(NonMatching, "MetroidPrime/ScriptObjects/CScriptColorModulate.cpp"),
            Object(NonMatching, "MetroidPrime/CMapUniverse.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CThardusRockProjectile.cpp"),
            Object(NonMatching, "MetroidPrime/CInventoryScreen.cpp"),
            Object(NonMatching, "MetroidPrime/CVisorFlare.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/Enemies/CFlaahgraPlants.cpp"),
            Object(NonMatching, "MetroidPrime/CWorldTransManager.cpp"),
            Object(NonMatching, "MetroidPrime/ScriptObjects/CScriptMidi.cpp"),
            Object(NonMatching, "MetroidPrime/ScriptObjects/CScriptStreamedAudio.cpp"),
            Object(NonMatching, "MetroidPrime/CRagDoll.cpp"),
            Object(NonMatching, "MetroidPrime/Player/CGameOptions.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CRepulsor.cpp"),
            Object(NonMatching, "MetroidPrime/CEnvFxManager.cpp"),
            Object(NonMatching, "MetroidPrime/Weapons/CEnergyProjectile.cpp"),
            Object(NonMatching, "MetroidPrime/ScriptObjects/CScriptGunTurret.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/Weapons/CProjectileInfo.cpp"),
            Object(NonMatching, "MetroidPrime/CInGameTweakManager.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CBabygoth.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CEyeBall.cpp"),
            Object(NonMatching, "MetroidPrime/CIkChain.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CScriptCameraPitchVolume.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/RumbleFxTable.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CElitePirate.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/CRumbleManager.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CBouncyGrenade.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CGrenadeLauncher.cpp"),
            Object(NonMatching, "MetroidPrime/Weapons/CShockWave.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/Enemies/CRipperControlledPlatform.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CKnockBackController.cpp"),
            Object(NonMatching, "MetroidPrime/Player/CWorldLayerState.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CMagdolite.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CTeamAiMgr.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CSnakeWeedSwarm.cpp"),
            Object(NonMatching, "MetroidPrime/Cameras/CBallCameraFailsafeState.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CActorContraption.cpp"),
            Object(NonMatching, "MetroidPrime/ScriptObjects/CScriptSpindleCamera.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CScriptMemoryRelay.cpp"),
            Object(NonMatching, "MetroidPrime/CPauseScreenFrame.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CAtomicAlpha.cpp"),
            Object(NonMatching, "MetroidPrime/CLogBookScreen.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/CGBASupport.cpp"),
            Object(NonMatching, "MetroidPrime/Player/CWorldSaveGameInfo.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CScriptCameraHintTrigger.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/Enemies/CAmbientAI.cpp"),
            Object(NonMatching, "MetroidPrime/CMemoryCardDriver.cpp"),
            Object(NonMatching, "MetroidPrime/CSaveGameScreen.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CAtomicBeta.cpp"),
            Object(NonMatching, "MetroidPrime/Weapons/CElectricBeamProjectile.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CRidley.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CPuffer.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CFire.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/CPauseScreenBlur.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CTryclops.cpp"),
            Object(NonMatching, "MetroidPrime/Weapons/CNewFlameThrower.cpp"),
            Object(NonMatching, "MetroidPrime/Cameras/CInterpolationCamera.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CSeedling.cpp"),
            Object(NonMatching, "MetroidPrime/Player/CGameHintInfo.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CWallWalker.cpp"),
            Object(NonMatching, "MetroidPrime/CErrorOutputWindow.cpp"),
            Object(NonMatching, "MetroidPrime/CRainSplashGenerator.cpp"),
            Object(NonMatching, "MetroidPrime/Factories/CWorldSaveGameInfoFactory.cpp"),
            Object(NonMatching, "MetroidPrime/CFluidPlaneRender.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CBurrower.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CMetroidPrimeExo.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CScriptBeam.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CMetroidPrimeEssence.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CMetroidPrimeRelay.cpp"),
            Object(NonMatching, "MetroidPrime/Player/CPlayerDynamics.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/ScriptObjects/CScriptMazeNode.cpp"),
            Object(NonMatching, "MetroidPrime/Weapons/WeaponTypes.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/COmegaPirate.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CPhazonPool.cpp"),
            Object(NonMatching, "MetroidPrime/CNESEmulator.cpp"),
            Object(NonMatching, "MetroidPrime/Enemies/CPhazonHealingNodule.cpp"),
            Object(NonMatching, "MetroidPrime/Player/CMorphBallShadow.cpp"),
            Object(NonMatching, "MetroidPrime/Player/CPlayerStuckTracker.cpp"),
            Object(NonMatching, "MetroidPrime/CSlideShow.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/Tweaks/CTweakSlideShow.cpp"),
            Object(NonMatching, "MetroidPrime/CArtifactDoll.cpp"),
            Object(NonMatching, "MetroidPrime/CProjectedShadow.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/CPreFrontEnd.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/CGameCubeDoll.cpp"),
            Object(
                NonMatching, "MetroidPrime/ScriptObjects/CScriptProjectedShadow.cpp"
            ),
            Object(NonMatching, "MetroidPrime/ScriptObjects/CEnergyBall.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/Enemies/CMetroidPrimeProjectile.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "MetroidPrime/Enemies/SPositionHistory.cpp"),
            Object(Equivalent, "dummy.c"),
        ],
    ),
    RetroLib(
        "WorldFormat",
        "core",
        [
            Object(NonMatching, "WorldFormat/CAreaOctTree_Tests.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "WorldFormat/CCollisionSurface.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "WorldFormat/CMetroidModelInstance.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "WorldFormat/CAreaBspTree.cpp"),
            Object(NonMatching, "WorldFormat/CAreaOctTree.cpp"),
            Object(NonMatching, "WorldFormat/CMetroidAreaCollider.cpp"),
            Object(NonMatching, "WorldFormat/CWorldLight.cpp"),
            Object(NonMatching, "WorldFormat/COBBTree.cpp"),
            Object(NonMatching, "WorldFormat/CCollidableOBBTree.cpp"),
            Object(NonMatching, "WorldFormat/CCollidableOBBTreeGroup.cpp"),
            Object(NonMatching, "WorldFormat/CPVSAreaSet.cpp"),
            Object(NonMatching, "WorldFormat/CAreaRenderOctTree.cpp"),
        ],
    ),
    RetroLib(
        "Weapons",
        "core",
        [
            Object(NonMatching, "Weapons/CProjectileWeapon.cpp"),
            Object(NonMatching, "Weapons/CProjectileWeaponDataFactory.cpp"),
            Object(NonMatching, "Weapons/CCollisionResponseData.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Weapons/IWeaponRenderer.cpp"),
            Object(NonMatching, "Weapons/CDecalDataFactory.cpp"),
            Object(NonMatching, "Weapons/CDecal.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Weapons/CWeaponDescription.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Weapons/CDecalDescription.cpp"),
        ],
    ),
    RetroLib(
        "MetaRender",
        "core",
        [
            Object(NonMatching, "MetaRender/CCubeRenderer.cpp"),
        ],
    ),
    RetroLib(
        "GuiSys",
        "core",
        [
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "GuiSys/CAuiMain.cpp"),
            Object(NonMatching, "GuiSys/CAuiMeter.cpp"),
            Object(NonMatching, "GuiSys/CGuiGroup.cpp"),
            Object(NonMatching, "GuiSys/CGuiHeadWidget.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "GuiSys/CGuiLight.cpp"),
            Object(NonMatching, "GuiSys/CGuiModel.cpp"),
            Object(NonMatching, "GuiSys/CGuiObject.cpp"),
            Object(NonMatching, "GuiSys/CGuiPane.cpp"),
            Object(NonMatching, "GuiSys/CGuiSliderGroup.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "GuiSys/CGuiSys.cpp"),
            Object(NonMatching, "GuiSys/CGuiTableGroup.cpp"),
            Object(NonMatching, "GuiSys/CGuiTextPane.cpp"),
            Object(NonMatching, "GuiSys/CGuiTextSupport.cpp"),
            Object(NonMatching, "GuiSys/CGuiWidget.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "GuiSys/CGuiWidgetIdDB.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "GuiSys/CGuiWidgetDrawParms.cpp"),
            Object(NonMatching, "GuiSys/CAuiEnergyBarT01.cpp"),
            Object(NonMatching, "GuiSys/CAuiImagePane.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "GuiSys/CRepeatState.cpp"),
        ],
    ),
    RetroLib(
        "Collision",
        "core",
        [
            Object(NonMatching, "Collision/CCollidableAABox.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Collision/CCollidableCollisionSurface.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Collision/CCollisionInfo.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Collision/InternalColliders.cpp"),
            Object(NonMatching, "Collision/CCollisionPrimitive.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Collision/CMaterialList.cpp"),
            Object(NonMatching, "Collision/CollisionUtil.cpp"),
            Object(NonMatching, "Collision/CCollidableSphere.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Collision/CMaterialFilter.cpp"),
            Object(NonMatching, "Collision/COBBox.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Collision/CMRay.cpp"),
        ],
    ),
    RetroLib(
        "Kyoto1",
        "core",
        [
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Basics/CBasics.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Basics/CStopwatch.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Basics/CBasicsDolphin.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Alloc/CCallStackDolphin.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Basics/COsContextDolphin.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Basics/CSWDataDolphin.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Basics/RAssertDolphin.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Animation/CAnimation.cpp"),
            Object(NonMatching, "Kyoto/Animation/CAnimationManager.cpp"),
            Object(NonMatching, "Kyoto/Animation/CAnimationSet.cpp"),
            Object(NonMatching, "Kyoto/Animation/CAnimCharacterSet.cpp"),
            Object(NonMatching, "Kyoto/Animation/CAnimTreeLoopIn.cpp"),
            Object(NonMatching, "Kyoto/Animation/CAnimTreeSequence.cpp"),
            Object(NonMatching, "Kyoto/Animation/CCharacterInfo.cpp"),
            Object(NonMatching, "Kyoto/Animation/CCharacterSet.cpp"),
            Object(NonMatching, "Kyoto/Animation/CMetaAnimBlend.cpp"),
            Object(NonMatching, "Kyoto/Animation/CMetaAnimFactory.cpp"),
            Object(NonMatching, "Kyoto/Animation/CMetaAnimPhaseBlend.cpp"),
            Object(NonMatching, "Kyoto/Animation/CMetaAnimPlay.cpp"),
            Object(NonMatching, "Kyoto/Animation/CMetaAnimRandom.cpp"),
            Object(NonMatching, "Kyoto/Animation/CMetaAnimSequence.cpp"),
            Object(NonMatching, "Kyoto/Animation/CMetaTransFactory.cpp"),
            Object(NonMatching, "Kyoto/Animation/CMetaTransMetaAnim.cpp"),
            Object(NonMatching, "Kyoto/Animation/CMetaTransPhaseTrans.cpp"),
            Object(NonMatching, "Kyoto/Animation/CMetaTransSnap.cpp"),
            Object(NonMatching, "Kyoto/Animation/CMetaTransTrans.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Animation/CPASAnimInfo.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Animation/CPASAnimParm.cpp"),
            Object(NonMatching, "Kyoto/Animation/CPASAnimState.cpp"),
            Object(NonMatching, "Kyoto/Animation/CPASDatabase.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Animation/CPASParmInfo.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Animation/CPrimitive.cpp"),
            Object(NonMatching, "Kyoto/Animation/CSequenceHelper.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Animation/CTransition.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Animation/CTransitionManager.cpp"),
            Object(NonMatching, "Kyoto/Animation/CTreeUtils.cpp"),
            Object(NonMatching, "Kyoto/Animation/IMetaAnim.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Audio/CSfxHandle.cpp"),
            Object(NonMatching, "Kyoto/Audio/CSfxManager.cpp"),
            Object(NonMatching, "Kyoto/Animation/CAdvancementDeltas.cpp"),
            Object(NonMatching, "Kyoto/Animation/CAnimMathUtils.cpp"),
            Object(NonMatching, "Kyoto/Animation/CAnimPOIData.cpp"),
            Object(NonMatching, "Kyoto/Animation/CAnimSource.cpp"),
            Object(NonMatching, "Kyoto/Animation/CAnimSourceReader.cpp"),
            Object(NonMatching, "Kyoto/Animation/CAnimSourceReaderBase.cpp"),
            Object(NonMatching, "Kyoto/Animation/CAnimTreeAnimReaderContainer.cpp"),
            Object(NonMatching, "Kyoto/Animation/CAnimTreeBlend.cpp"),
            Object(NonMatching, "Kyoto/Animation/CAnimTreeContinuousPhaseBlend.cpp"),
            Object(NonMatching, "Kyoto/Animation/CAnimTreeDoubleChild.cpp"),
            Object(NonMatching, "Kyoto/Animation/CAnimTreeNode.cpp"),
            Object(NonMatching, "Kyoto/Animation/CAnimTreeSingleChild.cpp"),
            Object(NonMatching, "Kyoto/Animation/CAnimTreeTimeScale.cpp"),
            Object(NonMatching, "Kyoto/Animation/CAnimTreeTransition.cpp"),
            Object(NonMatching, "Kyoto/Animation/CAnimTreeTweenBase.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Animation/CBoolPOINode.cpp"),
            Object(NonMatching, "Kyoto/Animation/CCharAnimMemoryMetrics.cpp"),
            Object(NonMatching, "Kyoto/Animation/CCharLayoutInfo.cpp"),
            Object(NonMatching, "Kyoto/Animation/CFBStreamedAnimReader.cpp"),
            Object(NonMatching, "Kyoto/Animation/CFBStreamedCompression.cpp"),
            Object(NonMatching, "Kyoto/Animation/CHierarchyPoseBuilder.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Animation/CInt32POINode.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Animation/CParticlePOINode.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Animation/CPOINode.cpp"),
            Object(NonMatching, "Kyoto/Animation/CSegStatementSet.cpp"),
            Object(NonMatching, "Kyoto/Animation/CTimeScaleFunctions.cpp"),
            Object(NonMatching, "Kyoto/Animation/IAnimReader.cpp"),
            Object(NonMatching, "Kyoto/Animation/CAllFormatsAnimSource.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/CDvdRequestManager.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/CDvdRequest.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Text/CColorInstruction.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Text/CColorOverrideInstruction.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Text/CDrawStringOptions.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Text/CFontInstruction.cpp"),
            Object(NonMatching, "Kyoto/Text/CFontRenderState.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Text/CLineExtraSpaceInstruction.cpp"),
            Object(NonMatching, "Kyoto/Text/CLineInstruction.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Text/CLineSpacingInstruction.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Text/CPopStateInstruction.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Text/CPushStateInstruction.cpp"),
            Object(NonMatching, "Kyoto/Text/CRasterFont.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Text/CRemoveColorOverrideInstruction.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Text/CSaveableState.cpp"),
            Object(NonMatching, "Kyoto/Text/CTextExecuteBuffer.cpp"),
            Object(NonMatching, "Kyoto/Text/CTextInstruction.cpp"),
            Object(NonMatching, "Kyoto/Text/CTextParser.cpp"),
            Object(NonMatching, "Kyoto/Text/CWordBreakTables.cpp"),
            Object(NonMatching, "Kyoto/Text/CWordInstruction.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Text/CBlockInstruction.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Text/CFont.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Graphics/CLight.cpp"),
            Object(NonMatching, "Kyoto/Graphics/CCubeModel.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Graphics/CGX.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Graphics/CTevCombiners.cpp"),
            Object(NonMatching, "Kyoto/Graphics/DolphinCGraphics.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Graphics/DolphinCPalette.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Graphics/DolphinCTexture.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Math/CloseEnough.cpp"),
            Object(NonMatching, "Kyoto/Math/CMatrix3f.cpp"),
            Object(Equivalent, "Kyoto/Math/CMatrix4f.cpp"),
            Object(NonMatching, "Kyoto/Math/CQuaternion.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/CRandom16.cpp"),
            Object(NonMatching, "Kyoto/Math/CTransform4f.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Math/CUnitVector3f.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Math/CVector2f.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Math/CVector2i.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Math/CVector3d.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Math/CVector3f.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Math/CVector3i.cpp"),
            Object(NonMatching, "Kyoto/Math/RMathUtils.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/CCrc32.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Alloc/CCircularBuffer.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Alloc/CMemory.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Alloc/IAllocator.cpp"),
            Object(NonMatching, "Kyoto/PVS/CPVSVisOctree.cpp"),
            Object(NonMatching, "Kyoto/PVS/CPVSVisSet.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Particles/CColorElement.cpp"),
            Object(NonMatching, "Kyoto/Particles/CElementGen.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Particles/CIntElement.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Particles/CModVectorElement.cpp"),
            Object(NonMatching, "Kyoto/Particles/CParticleDataFactory.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Particles/CParticleGen.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Particles/CParticleGlobals.cpp"),
            Object(NonMatching, "Kyoto/Particles/CParticleSwoosh.cpp"),
            Object(NonMatching, "Kyoto/Particles/CParticleSwooshDataFactory.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Particles/CRealElement.cpp"),
            Object(NonMatching, "Kyoto/Particles/CSpawnSystemKeyframeData.cpp"),
            Object(NonMatching, "Kyoto/Particles/CUVElement.cpp"),
            Object(NonMatching, "Kyoto/Particles/CVectorElement.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Particles/CWarp.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Math/CPlane.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Math/CSphere.cpp"),
            Object(NonMatching, "Kyoto/Math/CAABox.cpp"),
            Object(NonMatching, "Kyoto/CFactoryMgr.cpp"),
            Object(NonMatching, "Kyoto/CResFactory.cpp"),
            Object(NonMatching, "Kyoto/CResLoader.cpp"),
            Object(NonMatching, "Kyoto/rstl/rstl_map.cpp"),
            Object(NonMatching, "Kyoto/rstl/rstl_strings.cpp"),
            Object(NonMatching, "Kyoto/rstl/RstlExtras.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Streams/CInputStream.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Streams/CMemoryInStream.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Streams/CMemoryStreamOut.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Streams/COutputStream.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Streams/CZipInputStream.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Streams/CZipOutputStream.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Streams/CZipSupport.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/CFactoryStore.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/CObjectReference.cpp"),
            Object(NonMatching, "Kyoto/CSimplePool.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/CToken.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/IObj.cpp"),
        ],
    ),
    # TODO: Merge back into Kyoto
    {
        "lib": "zlib",
        "mw_version": "GC/1.3.2",
        "cflags": cflags_runtime,
        "host": False,
        "progress_category": "third_party",
        "shift_jis": False,
        "objects": [
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/zlib/adler32.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/zlib/deflate.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/zlib/infblock.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/zlib/infcodes.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/zlib/inffast.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/zlib/inflate.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/zlib/inftrees.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/zlib/infutil.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/zlib/trees.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/zlib/zutil.c"),
        ],
    },
    # TODO: Merge this with zlib and Kyoto1
    RetroLib(
        "Kyoto2",
        "core",
        [
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/CARAMManager.cpp"),
            Object(NonMatching, "Kyoto/Math/CFrustumPlanes.cpp"),
            Object(NonMatching, "Kyoto/Graphics/CCubeMaterial.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Graphics/CCubeSurface.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Animation/CCharAnimTime.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Animation/CSegIdList.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Input/CFinalInput.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Graphics/CColor.cpp"),
            Object(NonMatching, "Kyoto/Audio/DolphinCAudioGroupSet.cpp"),
            Object(NonMatching, "Kyoto/Audio/DolphinCAudioSys.cpp"),
            Object(NonMatching, "Kyoto/DolphinCMemoryCardSys.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Input/DolphinIController.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Input/CDolphinController.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/DolphinCDvdFile.cpp"),
            Object(NonMatching, "Kyoto/Alloc/CMediumAllocPool.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Alloc/CSmallAllocPool.cpp"),
            Object(NonMatching, "Kyoto/Alloc/CGameAllocator.cpp"),
            Object(NonMatching, "Kyoto/Animation/DolphinCSkinnedModel.cpp"),
            Object(NonMatching, "Kyoto/Animation/DolphinCSkinRules.cpp"),
            Object(NonMatching, "Kyoto/Animation/DolphinCVirtualBone.cpp"),
            Object(NonMatching, "Kyoto/Graphics/DolphinCModel.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Text/CStringTable.cpp"),
            Object(NonMatching, "Kyoto/Particles/CEmitterElement.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Particles/CEffectComponent.cpp"),
            Object(NonMatching, "Kyoto/Particles/CParticleData.cpp"),
            Object(NonMatching, "Kyoto/Animation/CVertexMorphEffect.cpp"),
            Object(NonMatching, "Kyoto/Animation/CSkinnedModelWithAvgNormals.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/CTimeProvider.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/CARAMToken.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Audio/CMidiManager.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Text/CFontImageDef.cpp"),
            Object(NonMatching, "Kyoto/Text/CImageInstruction.cpp"),
            Object(NonMatching, "Kyoto/Text/CTextRenderBuffer.cpp"),
            Object(NonMatching, "Kyoto/Graphics/CCubeMoviePlayer.cpp"),
            Object(NonMatching, "Kyoto/Animation/CAdditiveAnimPlayback.cpp"),
            Object(NonMatching, "Kyoto/Particles/CParticleElectricDataFactory.cpp"),
            Object(NonMatching, "Kyoto/Particles/CParticleElectric.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Graphics/DolphinCColor.cpp"),
            Object(NonMatching, "Kyoto/Audio/CDSPStreamManager.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/CDependencyGroup.cpp"),
            Object(NonMatching, "Kyoto/Audio/CStreamAudioManager.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Kyoto/Animation/CHalfTransition.cpp"),
            Object(NonMatching, "Kyoto/Particles/CElectricDescription.cpp"),
            Object(NonMatching, "Kyoto/Particles/CSwooshDescription.cpp"),
            Object(NonMatching, "Kyoto/Particles/CGenDescription.cpp"),
            Object(NonMatching, "Kyoto/CPakFile.cpp"),
            Object(NonMatching, "Kyoto/Animation/CPoseAsTransformsVariableSize.cpp"),
            Object(NonMatching, "Kyoto/Input/CRumbleVoice.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Kyoto/Input/RumbleAdsr.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Kyoto/Input/CRumbleGenerator.cpp"),
            Object(NonMatching, "Kyoto/Audio/CDSPStream.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Kyoto/Audio/g721.cpp"),
            Object(NonMatching, "Kyoto/Audio/CStaticAudioPlayer.cpp"),
            Object(NonMatching, "Kyoto/CFrameDelayedKiller.cpp"),
        ],
    ),
    DolphinLib(
        "ai",
        [
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/ai.c"),
        ],
    ),
    DolphinLib(
        "ar",
        [
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/ar/ar.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/ar/arq.c"),
        ],
    ),
    DolphinLib(
        "base",
        [
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/PPCArch.c"),
        ],
    ),
    DolphinLib(
        "db",
        [
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/db.c"),
        ],
    ),
    DolphinLib(
        "dsp",
        [
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/dsp/dsp.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/dsp/dsp_debug.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/dsp/dsp_task.c"),
        ],
    ),
    DolphinLib(
        "dvd",
        [
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/dvd/dvdlow.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/dvd/dvdfs.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/dvd/dvd.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/dvd/dvdqueue.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/dvd/dvderror.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/dvd/dvdidutils.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/dvd/dvdfatal.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/dvd/fstload.c"),
        ],
    ),
    DolphinLib(
        "gx",
        [
            Object(NonMatching, "Dolphin/gx/GXInit.c"),
            Object(NonMatching, "Dolphin/gx/GXFifo.c"),
            Object(NonMatching, "Dolphin/gx/GXAttr.c"),
            Object(NonMatching, "Dolphin/gx/GXMisc.c"),
            Object(NonMatching, "Dolphin/gx/GXGeometry.c"),
            Object(NonMatching, "Dolphin/gx/GXFrameBuf.c"),
            Object(NonMatching, "Dolphin/gx/GXLight.c"),
            Object(NonMatching, "Dolphin/gx/GXTexture.c"),
            Object(NonMatching, "Dolphin/gx/GXBump.c"),
            Object(NonMatching, "Dolphin/gx/GXTev.c"),
            Object(NonMatching, "Dolphin/gx/GXPixel.c"),
            Object(NonMatching, "Dolphin/gx/GXStubs.c"),
            Object(NonMatching, "Dolphin/gx/GXDisplayList.c"),
            Object(NonMatching, "Dolphin/gx/GXTransform.c"),
            Object(NonMatching, "Dolphin/gx/GXPerf.c"),
        ],
    ),
    {
        "lib": "mtx",
        "mw_version": "GC/1.2.5n",
        #"cflags": ["-nodefaults","-proc gekko","-align powerpc","-fp hardware","-g","-sym on","-maxerrors 1","-nosyspath","-i include","-i libc", "-D_DEBUG=1", "-inline off", "-Cpp_exceptions off"],
        "cflags": [*cflags_base, "-fp_contract off"],
        "host": False,
        "progress_category": "sdk",
        "shift_jis": True,
        "objects": [
            Object(MatchingFor("GM8E01_00", "GM8E01_01","GM8E01_48"), "Dolphin/mtx/mtx.c"),
            Object(NonMatching, "Dolphin/mtx/mtxvec.c"),
            Object(NonMatching, "Dolphin/mtx/mtxstack.c"),
            Object(NonMatching, "Dolphin/mtx/mtx44vec.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01","GM8E01_48"), "Dolphin/mtx/mtx44.c"),
            Object(NonMatching, "Dolphin/mtx/vec.c"),
            Object(Equivalent, "Dolphin/mtx/quat.c"),
            Object(NonMatching, "Dolphin/mtx/psmtx.c"),
        ],
    },
    DolphinLib(
        "os",
        [
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/os/__start.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/os/OS.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/os/OSAlarm.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/os/OSArena.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/os/OSAudioSystem.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/os/OSCache.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/os/OSContext.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/os/OSError.c"),
            Object(NonMatching, "Dolphin/os/OSFatal.c"),
            Object(NonMatching, "Dolphin/os/OSFont.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/os/OSInterrupt.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/os/OSLink.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/os/OSMessage.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/os/OSMemory.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/os/OSMutex.c"),
            Object(NonMatching, "Dolphin/os/OSReboot.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/os/OSReset.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/os/OSResetSW.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Dolphin/os/OSRtc.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01"), "Dolphin/os/OSSync.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/os/OSThread.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/os/OSTime.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/os/__ppc_eabi_init.cpp"),
        ],
    ),
    DolphinLib(
        "pad",
        [
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/pad/PadClamp.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/pad/pad.c"),
        ],
    ),
    DolphinLib(
        "vi",
        [
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/vi.c"),
        ],
    ),
    {
        "lib": "MSL_C.PPCEABI.bare.H",
        "mw_version": "GC/1.3",
        "cflags": cflags_runtime,
        "host": False,
        "progress_category": "sdk",
        "shift_jis": False,
        "objects": [
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/__mem.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/__va_arg.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/global_destructor_chain.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/CPlusLibPPC.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/NMWException.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/ptmf.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/runtime.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/__init_cpp_exceptions.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/Gecko_ExceptionPPC.cpp"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/abort_exit.c"),
            Object(NonMatching, "Runtime/alloc.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/ansi_files.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/ansi_fp.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/arith.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/buffer_io.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/ctype.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/locale.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/direct_io.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/file_io.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/errno.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/FILE_POS.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/mbstring.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/mem.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/mem_funcs.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/misc_io.c"),
            Object(NonMatching, "Runtime/printf.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/qsort.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/rand.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/sscanf.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/string.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/float.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/strtold.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/uart_console_io.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/wchar_io.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/e_acos.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/e_asin.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/e_atan2.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/e_exp.c"),  
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/e_fmod.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/e_log.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/e_pow.c"),  
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/e_rem_pio2.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/k_cos.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/k_rem_pio2.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/k_sin.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/k_tan.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/s_atan.c"), 
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/s_copysign.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/s_cos.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/s_floor.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/s_frexp.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/s_ldexp.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/s_modf.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/s_nextafter.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/s_sin.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/s_tan.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/w_acos.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/w_asin.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/w_atan2.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/w_exp.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/w_fmod.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/w_log.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/w_pow.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Runtime/math_ppc.c"),
        ],
    },
    MusyX(
        #debug=True,
        #mw_version="GC/1.2.5n",
        major=2,
        minor=0,
        patch=0,
        objects=[
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "musyx/runtime/seq.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "musyx/runtime/synth.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "musyx/runtime/seq_api.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "musyx/runtime/snd_synthapi.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "musyx/runtime/stream.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "musyx/runtime/synthdata.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "musyx/runtime/synthmacros.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "musyx/runtime/synthvoice.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "musyx/runtime/synth_ac.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "musyx/runtime/synth_adsr.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "musyx/runtime/synth_vsamples.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "musyx/runtime/synth_dbtab.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "musyx/runtime/s_data.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "musyx/runtime/hw_dspctrl.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "musyx/runtime/hw_volconv.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "musyx/runtime/snd3d.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "musyx/runtime/snd_init.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "musyx/runtime/snd_math.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "musyx/runtime/snd_midictrl.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "musyx/runtime/snd_service.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "musyx/runtime/hardware.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "musyx/runtime/hw_aramdma.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "musyx/runtime/dsp_import.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "musyx/runtime/hw_dolphin.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "musyx/runtime/hw_memory.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "musyx/runtime/hw_lib_dummy.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "musyx/runtime/CheapReverb/creverb_fx.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "musyx/runtime/CheapReverb/creverb.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "musyx/runtime/StdReverb/reverb_fx.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "musyx/runtime/StdReverb/reverb.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "musyx/runtime/Delay/delay_fx.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "musyx/runtime/Chorus/chorus_fx.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "musyx/runtime/profile.c"),
        ],
    ),
    DolphinLib(
        "Dummy",
        [
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/dummy.c"),
        ],
    ),
    DolphinLib(
        "dtk",
        [
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/dtk.c"),
        ],
    ),
    DolphinLib(
        "card",
        [
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/card/CARDBios.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/card/CARDUnlock.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/card/CARDRdwr.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/card/CARDBlock.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/card/CARDDir.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/card/CARDCheck.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/card/CARDMount.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/card/CARDFormat.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/card/CARDOpen.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/card/CARDCreate.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/card/CARDRead.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/card/CARDWrite.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/card/CARDDelete.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/card/CARDStat.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/card/CARDRename.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/card/CARDNet.c"),
        ],
    ),
    DolphinLib(
        "si",
        [
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/si/SIBios.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/si/SISamplingRate.c"),
        ],
    ),
    DolphinLib(
        "exi",
        [
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/exi/EXIBios.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/exi/EXIUart.c"),
        ],
    ),
    DolphinLib(
        "thp",
        [
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/thp/THPDec.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/thp/THPAudio.c"),
        ],
    ),
    DolphinLib(
        "gba",
        [
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/GBA/GBA.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/GBA/GBAGetProcessStatus.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/GBA/GBAJoyBoot.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/GBA/GBARead.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/GBA/GBAWrite.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/GBA/GBAXfer.c"),
            Object(MatchingFor("GM8E01_00", "GM8E01_01", "GM8E01_48"), "Dolphin/GBA/GBAKey.c"),
        ],
    ),
    Rel(
        "NESemuP",
        [
            Object(
                MatchingFor("GM8E01_00", "GM8E01_01"),
                "NESemu/modwrapper.c",
            ),
        ],
    ),
]

# Disable missing return type warnings for incomplete objects
for lib in config.libs:
    for obj in lib["objects"]:
        if not obj.completed:
            obj.options["extra_clang_flags"].append("-Wno-return-type")


def link_order_callback(
    module_id: int, units: List[str]
) -> Sequence[Union[str, BuildConfigUnit]]:
    #if module_id == 0:  # DOL
    #    return units + [
    #        {"object": "dummy.o", "name": "dummy.c", "autogenerated": False}
    #    ]
    return units


config.link_order_callback = link_order_callback

# Optional extra categories for progress tracking
config.progress_categories = [
    ProgressCategory("game", "Game"),
    ProgressCategory("core", "Core Engine (Kyoto)"),
    ProgressCategory("sdk", "SDK"),
    ProgressCategory("third_party", "Third Party"),
]
config.progress_all = False
config.progress_each_module = args.verbose
config.progress_modules = False
config.progress_use_fancy = True
config.progress_code_fancy_frac = 1499
config.progress_code_fancy_item = "Energy"
config.progress_data_fancy_frac = 250
config.progress_data_fancy_item = "Missiles"

if args.mode == "configure":
    # Write build.ninja and objdiff.json
    generate_build(config)
elif args.mode == "progress":
    # Print progress and write progress.json
    calculate_progress(config)
else:
    sys.exit("Unknown mode: " + args.mode)
