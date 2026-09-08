#include "MetroidPrime/HUD/CHudHelmetInterface.hpp"

#include "GuiSys/CGuiCamera.hpp"
#include "GuiSys/CGuiFrame.hpp"
#include "MetroidPrime/Player/CGameState.hpp"
#include "MetroidPrime/Tweaks/CTweakGuiColors.hpp"
#include "rstl/string.hpp"

static const char skPivotWidgetName[] = "BaseWidget_Pivot";
static const char skHelmetWidgetName[] = "BaseWidget_Helmet";
static const char skGlowWidgetName[] = "BaseWidget_Glow";
static const char skHelmetLightWidgetName[] = "BaseWidget_HelmetLight";

CHudHelmetInterface::CHudHelmetInterface(CGuiFrame& frame)
: x0_hudLagRotation(CMatrix3f::Identity())
, x24_pivotPosition(CVector3f::Zero())
, x30_hudLagPosition(CVector3f::Zero())
, x3c_24_helmetVisibleDebug(true)
, x3c_25_helmetVisibleGame(true)
, x3c_26_glowVisibleDebug(true)
, x3c_27_glowVisibleGame(true)
, x3c_28_hudLagDirty(false) {
  x40_camera = frame.GetFrameCamera();
  x44_BaseWidget_Pivot = frame.FindWidget(rstl::string_l(skPivotWidgetName));
  x48_BaseWidget_Helmet = frame.FindWidget(rstl::string_l(skHelmetWidgetName));
  x4c_BaseWidget_Glow = frame.FindWidget(rstl::string_l(skGlowWidgetName));
  x50_BaseWidget_HelmetLight = frame.FindWidget(rstl::string_l(skHelmetLightWidgetName));
  x24_pivotPosition = x44_BaseWidget_Pivot->GetIdleXform().GetTranslation();
  x50_BaseWidget_HelmetLight->SetColor(gpTweakGuiColors->GetHelmetLightColor());
}

void CHudHelmetInterface::SetIsVisibleDebug(const bool helmet, const bool glow) {
  x3c_24_helmetVisibleDebug = helmet;
  x3c_26_glowVisibleDebug = glow;
  UpdateVisibility();
}

void CHudHelmetInterface::UpdateHelmetAlpha() {
  x44_BaseWidget_Pivot->SetColor(
      CColor::White().WithAlphaOf(gpGameState->GameOptions().GetHelmetAlpha()));
}

void CHudHelmetInterface::UpdateVisibility() {
  const bool helmet = x3c_24_helmetVisibleDebug && x3c_25_helmetVisibleGame;
  const bool glow = x3c_26_glowVisibleDebug && x3c_27_glowVisibleGame;
  x48_BaseWidget_Helmet->SetVisibility(helmet, kTM_Children);
  x4c_BaseWidget_Glow->SetVisibility(glow, kTM_Children);
}

void CHudHelmetInterface::UpdateCameraDebugSettings(float fov, float y, float z) {
  CGuiCamera::UCameraParms parms = x40_camera->GetParms();
  parms.perspective.fov = fov;
  x40_camera->SetParms(parms);
  x40_camera->SetIdleXform(
      CTransform4f(x40_camera->GetIdleXform().BuildMatrix3f(), CVector3f(0.f, y, z)));
}

void CHudHelmetInterface::AddHelmetLightValue(float value) {
  const CColor light(value, value, value, value);
  x50_BaseWidget_HelmetLight->SetColor(CColor::Add(gpTweakGuiColors->GetHelmetLightColor(), light));
}

void CHudHelmetInterface::SetHudLagRotation(const CMatrix3f& rotation) {
  x0_hudLagRotation = rotation;
  x3c_28_hudLagDirty = true;
}

void CHudHelmetInterface::SetHudLagOffset(const CVector3f& offset) {
  x30_hudLagPosition = offset;
  x3c_28_hudLagDirty = true;
}

void CHudHelmetInterface::Update(float dt) {
  if (x3c_28_hudLagDirty) {
    x3c_28_hudLagDirty = false;
    x44_BaseWidget_Pivot->SetIdleXform(
        CTransform4f(x0_hudLagRotation, x24_pivotPosition + x30_hudLagPosition));
  }
}
