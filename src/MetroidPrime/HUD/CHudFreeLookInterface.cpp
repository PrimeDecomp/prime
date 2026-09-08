#include "MetroidPrime/HUD/CHudFreeLookInterface.hpp"

#include "GuiSys/CGuiFrame.hpp"
#include "GuiSys/CGuiModel.hpp"
#include "Kyoto/Math/CMatrix3f.hpp"
#include "Kyoto/Math/CRelAngle.hpp"
#include "MetroidPrime/Tweaks/CTweakGui.hpp"
#include "rstl/math.hpp"

static const char skFreeLookGroupWidgetName[] = "basewidget_freelook";
static const char skFreeLookLeftWidgetName[] = "model_freelookleft";
static const char skFreeLookRightWidgetName[] = "model_freelookright";
static const char skFreeLookLeftGroupWidgetName[] = "basewidget_freelookleft";
static const char skFreeLookLeftShieldWidgetName[] = "model_shieldleft";
static const char skFreeLookLeftTickUpWidgetName[] = "model_freetickaleft";
static const char skFreeLookLeftTickDownWidgetName[] = "model_freetickbleft";
static const char skFreeLookLeftDigitsName[] = "textpane_freelookleftdigits";
static const char skFreeLookLeftDecoName[] = "basewidget_freelookleftdeco0";
static const char skFreeLookRightGroupWidgetName[] = "basewidget_freelookright";
static const char skFreeLookRightShieldWidgetName[] = "model_shieldright";
static const char skFreeLookRightTickUpWidgetName[] = "model_freetickaright";
static const char skFreeLookRightTickDownWidgetName[] = "model_freetickbright";
static const char skFreeLookRightDigitsName[] = "textpane_freelookrightdigits";
static const char skFreeLookRightDecoName[] = "basewidget_freelookrightdeco0";

CHudFreeLookInterfaceXRay::~CHudFreeLookInterfaceXRay() {}

CHudFreeLookInterfaceXRay::CHudFreeLookInterfaceXRay(CGuiFrame& hud, bool freeLook,
                                                     bool controlHeld, bool lockedOn)
: x4_freeLookLeftPos(CVector3f::Zero())
, x10_freeLookRightPos(CVector3f::Zero())
, x1c_freeLookInterp(0.f)
, x20_inFreeLook(freeLook)
, x21_lookControlHeld(controlHeld)
, x22_24_visibleDebug(true)
, x22_25_visibleGame(true) {
  x24_basewidget_freelook = hud.FindWidget(skFreeLookGroupWidgetName);
  x2c_model_freelookleft = static_cast< CGuiModel* >(hud.FindWidget(skFreeLookLeftWidgetName));
  x30_model_freelookright = static_cast< CGuiModel* >(hud.FindWidget(skFreeLookRightWidgetName));
  x28_model_shield = static_cast< CGuiModel* >(hud.FindWidget("model_shield"));
  x4_freeLookLeftPos = x2c_model_freelookleft->GetLocalPosition();
  x10_freeLookRightPos = x30_model_freelookright->GetLocalPosition();
  x28_model_shield->SetIsAlwaysDepthWrite(true);
}

void CHudFreeLookInterfaceXRay::SetFreeLookState(const bool freeLook, const bool controlHeld,
                                                 const bool lockedOn, float angle) {
  x20_inFreeLook = freeLook;
  x21_lookControlHeld = controlHeld;
  x2c_model_freelookleft->SetO2PTransform(
      CTransform4f(CMatrix3f::RotateY(CRelAngle::FromRadians(angle)), x4_freeLookLeftPos));
  x30_model_freelookright->SetO2PTransform(
      CTransform4f(CMatrix3f::RotateY(CRelAngle::FromRadians(-angle)), x10_freeLookRightPos));
  const float alpha = x1c_freeLookInterp;
  x24_basewidget_freelook->SetColor(CColor::White().WithAlphaOf(alpha));
  if (alpha == 0.f) {
    x24_basewidget_freelook->SetVisibility(false, kTM_Children);
  } else {
    x24_basewidget_freelook->SetVisibility(true, kTM_Children);
  }
}

void CHudFreeLookInterfaceXRay::SetIsVisibleDebug(bool visible) {
  x22_24_visibleDebug = visible;
  UpdateVisibility();
}

void CHudFreeLookInterfaceXRay::SetIsVisibleGame(bool visible) {
  x22_25_visibleGame = visible;
  UpdateVisibility();
}

void CHudFreeLookInterfaceXRay::UpdateVisibility() {
  const bool visible = x22_25_visibleGame && x22_24_visibleDebug;
  x2c_model_freelookleft->SetVisibility(visible, kTM_Children);
  x30_model_freelookright->SetVisibility(visible, kTM_Children);
  if (visible) {
    Update(0.f);
  }
}

void CHudFreeLookInterfaceXRay::Update(float dt) {
  if (x20_inFreeLook) {
    x1c_freeLookInterp =
        rstl::min_val(1.f, x1c_freeLookInterp + dt / gpTweakGui->GetFreeLookFadeTime());
  } else {
    x1c_freeLookInterp =
        rstl::max_val(0.f, x1c_freeLookInterp - dt / gpTweakGui->GetFreeLookFadeTime());
  }
}

CHudFreeLookInterface::CHudFreeLookInterface(CGuiFrame& hud, EHudType type, bool freeLook,
                                             bool controlHeld, bool lockedOn)
: x4_hudType(type)
, x8_freeLookLeftXf(CTransform4f::Identity())
, x38_freeLookRightXf(CTransform4f::Identity())
, x68_freeLookInterp(0.f)
, x6c_lockOnInterp(lockedOn && type == kHT_Scan ? 0.f : 1.f)
, x70_24_inFreeLook(freeLook)
, x70_25_lookControlHeld(controlHeld)
, x70_26_lockedOnObj(lockedOn)
, x70_27_visibleDebug(true)
, x70_28_visibleGame(true) {
  x74_basewidget_freelookleft = hud.FindWidget(skFreeLookLeftGroupWidgetName);
  x78_model_shieldleft = static_cast< CGuiModel* >(hud.FindWidget(skFreeLookLeftShieldWidgetName));
  x7c_model_freelookleft = static_cast< CGuiModel* >(hud.FindWidget(skFreeLookLeftWidgetName));
  x80_basewidget_freelookright = hud.FindWidget(skFreeLookRightGroupWidgetName);
  x84_model_shieldright =
      static_cast< CGuiModel* >(hud.FindWidget(skFreeLookRightShieldWidgetName));
  x88_model_freelookright = static_cast< CGuiModel* >(hud.FindWidget(skFreeLookRightWidgetName));
  x8c_basewidget_outlinesb = hud.FindWidget("basewidget_outlinesb");
  x8_freeLookLeftXf = x7c_model_freelookleft->GetTransform();
  x38_freeLookRightXf = x88_model_freelookright->GetTransform();
  x78_model_shieldleft->SetIsAlwaysDepthWrite(true);
  x84_model_shieldright->SetIsAlwaysDepthWrite(true);
}

void CHudFreeLookInterface::SetFreeLookState(const bool freeLook, const bool controlHeld,
                                             const bool lockedOn, float angle) {
  x70_24_inFreeLook = freeLook;
  const float offset = 8.f * angle;
  x70_25_lookControlHeld = controlHeld;
  x70_26_lockedOnObj = lockedOn;
  x7c_model_freelookleft->SetO2PTransform(x8_freeLookLeftXf *
                                          CTransform4f::Translate(0.f, 0.f, offset));
  x88_model_freelookright->SetO2PTransform(x38_freeLookRightXf *
                                           CTransform4f::Translate(0.f, 0.f, offset));
  const float alpha = x68_freeLookInterp * (1.f - x6c_lockOnInterp);
  x74_basewidget_freelookleft->SetColor(CColor::White().WithAlphaOf(alpha));
  x80_basewidget_freelookright->SetColor(CColor::White().WithAlphaOf(alpha));
  if (x8c_basewidget_outlinesb) {
    x8c_basewidget_outlinesb->SetColor(CColor::White().WithAlphaOf(0.7f * alpha + 0.3f));
  }
  if (alpha == 0.f) {
    x74_basewidget_freelookleft->SetVisibility(false, kTM_Children);
    x80_basewidget_freelookright->SetVisibility(false, kTM_Children);
  } else {
    x74_basewidget_freelookleft->SetVisibility(true, kTM_Children);
    x80_basewidget_freelookright->SetVisibility(true, kTM_Children);
  }
}

void CHudFreeLookInterface::SetIsVisibleDebug(bool visible) {
  x70_27_visibleDebug = visible;
  UpdateVisibility();
}

void CHudFreeLookInterface::SetIsVisibleGame(bool visible) {
  x70_28_visibleGame = visible;
  UpdateVisibility();
}

void CHudFreeLookInterface::UpdateVisibility() {
  const bool visible = x70_28_visibleGame && x70_27_visibleDebug;
  x74_basewidget_freelookleft->SetVisibility(visible, kTM_Children);
  x80_basewidget_freelookright->SetVisibility(visible, kTM_Children);
  if (visible) {
    Update(0.f);
  }
}

void CHudFreeLookInterface::Update(float dt) {
  if (x70_24_inFreeLook) {
    x68_freeLookInterp =
        rstl::min_val(1.f, x68_freeLookInterp + dt / gpTweakGui->GetFreeLookFadeTime());
  } else {
    x68_freeLookInterp =
        rstl::max_val(0.f, x68_freeLookInterp - dt / gpTweakGui->GetFreeLookFadeTime());
  }
  if (x70_26_lockedOnObj && x4_hudType == kHT_Scan) {
    x6c_lockOnInterp = rstl::min_val(1.f, x6c_lockOnInterp + 2.f * dt);
  } else {
    x6c_lockOnInterp = rstl::max_val(0.f, x6c_lockOnInterp - 2.f * dt);
  }
}

CHudFreeLookInterface::~CHudFreeLookInterface() {}
