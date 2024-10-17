import re
import argparse
from pathlib import Path

_LITERAL_REPLACEMENTS = [
  ("std::string_view", "const rstl::string&"),
  ("std::string", "rstl::string"),
  ("std::vector", "rstl::vector"),
  ("std::list", "rstl::list"),
  ("std::pair", "rstl::pair"),
  ("std::optional", "rstl::optional_object"),
  ("std::nullopt", "rstl::optional_object_null()"),
  
  ("zeus::CTransform", "CTransform4f"),
  ("zeus::skZero2f", "CVector2f(0.f, 0.f)"),
  ("zeus::skZero3f", "CVector3f::Zero()"),
  ("zeus::skPurple", "CColor::Purple()"),
  ("zeus::skWhite", "CColor::White()"),
  ("zeus::CFrustum", "CFrustumPlanes"),
  ("zeus::lookAt", "CTransform4f::LookAt"),
  ("zeus::radToDeg", "CMath::Rad2Deg"),
  ("zeus::degToRad", "CMath::Deg2Rad"),
  ("zeus::skUp", "CVector3f::Up()"),
  ("zeus::skDown", "CVector3f::Down()"),
  ("zeus::skRight", "CVector3f::Right()"),
  ("zeus::skLeft", "CVector3f::Left()"),
  ("zeus::skForward", "CVector3f::Forward()"),
  ("zeus::skBack", "CVector3f::Back()"),
  ("zeus::", ""),
  ("u32 ", "uint "),
  ("s32 ", "int "),
  ("u16 ", "ushort "),
  ("char16_t", "wchar_t"),
  ("std::min(", "rstl::min_val("),
  ("std::max(", "rstl::max_val("),
  ("constexpr ", "const "),

  ("DEFINE_ENTITY", ""),
  ("visitor.Visit(this)", "visitor.Visit(*this)"),

  ("g_SimplePool", "gpSimplePool"),
  ("g_Renderer", "gpRender"),
  ("g_ResFactory", "gpResourceFactory"),
  ("g_GameState", "gpGameState"),
  ("g_MainStringTable", "gpStringTable"),

  # Vector
  (".magnitude()", ".Magnitude()"),
  (".normalized()", ".AsNormalized()"),
  (".canBeNormalized()", ".CanBeNormalized()"),
  (".normalize()", ".Normalize()"),
  (".basis[1]", ".GetColumn(kDY)"),

  # Transform
  (".frontVector()", ".GetForward()"),

  # CStateManager
  (".GetActiveRandom()", ".Random()"),

  # Enums
  ("EMaterialTypes::", "kMT_"),
  ("EScriptObjectState::", "kSS_"),
  ("EScriptObjectMessage::", "kSM_"),
  ("EPlayerOrbitState::", "CPlayer::kOS_"),
  ("ESurfaceRestraints::", "kSR_"),
  ("EPlayerCameraState::", "kCS_"),
  ("EPlayerMorphBallState::", "kMS_"),
  ("EPlayerOrbitType::", "kOT_"),
  ("EPlayerOrbitRequest::", "kOB_"),
  ("EPlayerZoneInfo::", "kZI_"),
  ("EPlayerZoneType::", "kZT_"),
  ("EPlayerScanState::", "kSS_"),
  ("EGrappleState::", "kGS_"),
  ("EFootstepSfx::", "kFS_"),
  ("EGunHolsterState::", "kGH_"),
  ("CPlayer::EPlayerOrbitState::", "CPlayer::kOS_"),
  ("CPlayer::ESurfaceRestraints::", "CPlayer::kSR_"),
  ("CPlayer::EPlayerCameraState::", "CPlayer::kCS_"),
  ("CPlayer::EPlayerMorphBallState::", "CPlayer::kMS_"),
  ("CPlayer::EPlayerOrbitType::", "CPlayer::kOT_"),
  ("CPlayer::EPlayerOrbitRequest::", "CPlayer::kOB_"),
  ("CPlayer::EPlayerZoneInfo::", "CPlayer::kZI_"),
  ("CPlayer::EPlayerZoneType::", "CPlayer::kZT_"),
  ("CPlayer::EPlayerScanState::", "CPlayer::kSS_"),
  ("CPlayer::EGrappleState::", "CPlayer::kGS_"),
  ("CPlayer::EFootstepSfx::", "CPlayer::kFS_"),
  ("CPlayer::EGunHolsterState::", "CPlayer::kGH_"),
  ("CPlayerState::EPlayerVisor::", "CPlayerState::kPV_"),
  ("CPlayerState::EPlayerSuit::", "CPlayerState::kPS_"),
  ("CPlayerState::EBeamId::", "CPlayerState::kBI_"),
  ("CPlayerState::EItemType::", "CPlayerState::kIT_"),
  ("ControlMapper::ECommands::", "ControlMapper::kC_"),
  ("EFluidType::", "CFluidPlane::kFT_"),
  ("EPlayerMovementState::", "NPlayer::kMS_"),
  ("CMorphBall::ESpiderBallState::", "CMorphBall::kSBS_"),
  ("EProjectileAttrib::", "kPA_"),
  ("ERumbleFxId::", "kRFX_"),
  ("ERumblePriority::", "kRP_"),
  ("EWhichModel::", "kWM_"),
  ("EArmState::", "kAS_"),
  ("EGameState::", "kGS_"),
  ("EScanState::", "kSS_"),
  ("EWeaponType::", "kWT_"),
  ("EFluidState::", "kFS_"),
  ("EPhazonType::", "kPT_"),
  ("EChain::", "kC_"),
  ("EPhase::", "kP_"),

  # CActor
  ("x34_transform.origin", "GetTranslation()"),
  ("x34_transform", "GetTransform()"),
  ("xc4_fluidId", "InFluidId()"),
  ("x90_actorLights.get()", "GetActorLights()"),

  # CPhysicsActor
  ("x138_velocity", "GetVelocityWR()"),

  # CPlayer
  ("SetOrbitRequest", "BreakOrbit"),
  ("ActivateMorphBallCamera", "ResetBallCamera"),
  ("ApplySubmergedPitchBend", "DoSfxEffects"),

  # CCameraManager
  ("SetupBallCamera", "ResetCameraHint"),

  # Math
  ("std::acos", "acosf"),
  ("std::fabs", "fabsf"),
  ("std::sqrt", "sqrtf"),
  ("clamp(", "CMath::Clamp("),

  ("[[fallthrough]];", ""),
]
_RE_REPLACEMENTS = [
  # SObjectTag{FOURCC('...'), ...} -> SObjectTag('...', ...)
  (re.compile(r"SObjectTag{FOURCC\('(.*)'\),\s*(.*)}"), r"SObjectTag('\1', \2)"),
  # const TCastToConstPtr<...> ... = ...) { -> const ...* = TCastToConstPtr<...>(...)) {
  (re.compile(r"const TCastToConstPtr<([A-z0-9]+)> ([A-z0-9]+) = (.*)\) {"), r"const \1* \2 = TCastToConstPtr<\1>(\3)) {"),
  # const TCastToConstPtr<...> ... = ...; -> const ...* = TCastToConstPtr<...>(...);
  (re.compile(r"const TCastToConstPtr<([A-z0-9]+)> ([A-z0-9]+) = (.*);"), r"const \1* \2 = TCastToConstPtr<\1>(\3);"),
  # g_tweakFoo->GetBar() -> gpTweakFoo->mBar
  (re.compile(r"g_tweak([A-z0-9]+)->Get([A-z0-9]+)\(\)"), r"gpTweak\1->m\2"),
  # vec.xyz() = ... -> vec.SetXYZ(...)
  (re.compile(r"([A-z0-9]+)\.([xyz])\(\) = (.*);"), lambda m: f"{m.group(1)}.Set{m.group(2).upper()}({m.group(3)});"),
  # vec.xyz() -> vec.GetXYZ()
  (re.compile(r"\.([xyz])\(\)"), lambda m: f".Get{m.group(1).upper()}()"),
  # lhs.dot(rhs) -> CVector3f::Dot(lhs, rhs)
  (re.compile(r"([A-z0-9]+)\.dot\(([A-z0-9]+)\)([,;])"), r"CVector3f::Dot(\1, \2)\3"),
  # std::make_unique<T> -> rs_new T
  (re.compile(r"std::make_unique<([A-z0-9]+)>"), r"rs_new \1"),
]


def main():
  parser = argparse.ArgumentParser()
  parser.add_argument("file", type=Path)
  args = parser.parse_args()

  contents: str = args.file.read_text()

  for sub, replacement in _LITERAL_REPLACEMENTS:
    contents = contents.replace(sub, replacement)

  for re_obj, replacement in _RE_REPLACEMENTS:
    contents = re_obj.sub(replacement, contents)

  args.file.write_text(contents)


if __name__ == "__main__":
  main()
