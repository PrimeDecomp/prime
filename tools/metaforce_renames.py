import re
import argparse
from pathlib import Path

_LITERAL_REPLACEMENTS = [
  ("std::string_view", "const rstl::string&"),
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
  ("zeus::", ""),
  ("u32 ", "uint "),
  ("s32 ", "int "),
  ("u16 ", "ushort "),
  ("std::min(", "rstl::min_val("),
  ("std::max(", "rstl::max_val("),

  ("DEFINE_ENTITY", ""),
  ("visitor.Visit(this)", "visitor.Visit(*this)"),

  ("g_SimplePool", "gpSimplePool"),
  ("g_Renderer", "gpRender"),
  ("g_ResFactory", "gpResourceFactory"),

  # Vector
  (".magnitude()", ".Magnitude()"),
  (".normalized()", ".AsNormalized()"),
  # Transform
  (".frontVector()", ".GetForward()"),

  # CStateManager
  (".GetActiveRandom()", ".Random()"),

  # Enums
  ("EMaterialTypes::", "kMT_"),
  ("EScriptObjectState::", "kSS_"),
  ("EScriptObjectMessage::", "kSM_"),
  ("CPlayer::EPlayerOrbitState::", "CPlayer::kOS_"),
  ("CPlayer::ESurfaceRestraints::", "CPlayer::kSR_"),
  ("CPlayer::EPlayerCameraState::", "CPlayer::kCS_"),
  ("CPlayer::EPlayerMorphBallState::", "CPlayer::kMS_"),
  ("CPlayer::EPlayerOrbitType::", "CPlayer::kOT_"),
  ("CPlayer::EPlayerOrbitRequest::", "CPlayer::kOR_"),
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
]
_RE_REPLACEMENTS = [
  (re.compile(r"SObjectTag{FOURCC\('(.*)'\),\s*(.*)}"), r"SObjectTag('\1', \2)"),
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
