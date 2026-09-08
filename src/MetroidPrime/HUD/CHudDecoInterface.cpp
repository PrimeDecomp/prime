#include "MetroidPrime/HUD/CHudDecoInterface.hpp"

#include "GuiSys/CAuiEnergyBarT01.hpp"
#include "GuiSys/CGuiCamera.hpp"
#include "GuiSys/CGuiFrame.hpp"
#include "GuiSys/CGuiModel.hpp"
#include "GuiSys/CGuiTextPane.hpp"
#include "GuiSys/CGuiWidget.hpp"
#include "Kyoto/Math/CRelAngle.hpp"
#include "Kyoto/Text/CStringTable.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/HUD/CSamusHud.hpp"
#include "MetroidPrime/Player/CGameState.hpp"
#include "MetroidPrime/TCastTo.hpp"
#include "MetroidPrime/Tweaks/CTweakGui.hpp"
#include "MetroidPrime/Tweaks/CTweakGuiColors.hpp"
#include "rstl/math.hpp"

static const char skDecoWidgetName[] = "basewidget_deco";
static const char skBarDecoWidgetName[] = "basewidget_tickdeco0";
static const char skPivotWidgetName[] = "basewidget_pivot";
static const char skFrameNormalGroupWidgetName[] = "basewidget_frame";

static const char skSeekerWidgetNameXRay[] = "basewidget_seeker";

static const char skScanGroupLeftName[] = "basewidget_leftside";
static const char skScanPaneLeftName[] = "basewidget_leftguages";
static const char skScanPaneDecoLeftName[] = "basewidget_databankl";
static const char skScanGroupRightName[] = "basewidget_rightside";
static const char skScanPaneRightName[] = "basewidget_rightguages";
static const char skScanPaneDecoRightName[] = "basewidget_databankr";
static const char skScanLeftSideDecoName[] = "basewidget_leftsidedeco";
static const char skScanRightSideDecoName[] = "basewidget_rightsidedeco";
static const char skScanMessageName[] = "textpane_scanning";
static const char skScanBarName[] = "energybart01_scanbar";
static const char skScanGroupName[] = "basewidget_scanguage";
static const char skScanMessageGroupBaseName[] = "basewidget_textgroup";
static const char skScanTextPaneBaseName[] = "textpane_message";
static const char skScanScrollMessageName[] = "textpane_scrollmessage";
static const char skScanXMarkName[] = "model_xmark";
static const char skScanAButtonName[] = "model_abutton";
static const char skScanDashName[] = "model_dash";

CHudDecoInterfaceCombat::~CHudDecoInterfaceCombat() {}

CHudDecoInterfaceXRay::~CHudDecoInterfaceXRay() {}

CHudDecoInterfaceScan::~CHudDecoInterfaceScan() {}

CHudDecoInterfaceCombat::CHudDecoInterfaceCombat(CGuiFrame& hud)
: x4_rotation(CQuaternion::NoRotation())
, x14_pivotPosition(CVector3f::Zero())
, x20_offset(CVector3f::Zero())
, x2c_camPos(CVector3f::Zero())
, x38_basePosition(CVector3f::Zero())
, x44_baseRotation(CMatrix3f::Identity())
, x68_24_visDebug(true)
, x68_25_visGame(true) {
  x6c_camera = hud.GetFrameCamera();
  x2c_camPos = x6c_camera->GetLocalPosition();
  x70_basewidget_pivot = hud.FindWidget(skPivotWidgetName);
  x74_basewidget_deco = hud.FindWidget(skDecoWidgetName);
  x78_basewidget_tickdeco0 = hud.FindWidget(skBarDecoWidgetName);
  x7c_basewidget_frame = hud.FindWidget(skFrameNormalGroupWidgetName);
  x14_pivotPosition = x70_basewidget_pivot->GetIdleXform().GetTranslation();
  x78_basewidget_tickdeco0->SetColor(gpTweakGuiColors->GetTickDecoColor());
  x38_basePosition = x7c_basewidget_frame->GetO2PTransform().GetTranslation();
  x44_baseRotation = x7c_basewidget_frame->GetO2PTransform().BuildMatrix3f();
  UpdateHudAlpha();
}

void CHudDecoInterfaceCombat::SetIsVisibleDebug(const bool visible) {
  x68_24_visDebug = visible;
  UpdateVisibility();
}

void CHudDecoInterfaceCombat::SetIsVisibleGame(bool visible) {
  x68_25_visGame = visible;
  UpdateVisibility();
}

void CHudDecoInterfaceCombat::UpdateHudAlpha() {
  x70_basewidget_pivot->SetColor(
      CColor(uchar(255), uchar(255), uchar(255), uchar(gpGameState->GameOptions().GetHUDAlpha())));
}

void CHudDecoInterfaceCombat::UpdateVisibility() {
  const bool visible = x68_24_visDebug && x68_25_visGame;
  x74_basewidget_deco->SetVisibility(visible, kTM_Children);
  x78_basewidget_tickdeco0->SetVisibility(visible, kTM_Children);
}

void CHudDecoInterfaceCombat::SetHudRotation(const CQuaternion& rotation) {
  x4_rotation = rotation;
}

void CHudDecoInterfaceCombat::SetHudOffset(const CVector3f& offset) { x20_offset = offset; }

void CHudDecoInterfaceCombat::SetDamageTransform(const CMatrix3f& rotation,
                                                 const CVector3f& position) {
  x7c_basewidget_frame->SetO2PTransform(
      CTransform4f(rotation * x44_baseRotation, x38_basePosition + position));
}

void CHudDecoInterfaceCombat::SetFrameColorValue(float value) {
  const CColor color = value > 0.f ? CColor::White() : gpTweakGuiColors->GetHudFrameColor();
  x7c_basewidget_frame->SetColor(color);
}

void CHudDecoInterfaceCombat::Update(float dt, const CStateManager& mgr) {
  x6c_camera->SetO2WTransform(CSamusHud::BuildFinalCameraTransform(
      x4_rotation, x14_pivotPosition + x20_offset, x2c_camPos));
}

void CHudDecoInterfaceCombat::UpdateCameraDebugSettings(float fov, float y, float z) {
  CGuiCamera::UCameraParms parms = x6c_camera->GetParms();
  parms.perspective.fov = fov;
  x6c_camera->SetParms(parms);
  x2c_camPos = CVector3f(0.f, y, z);
}

CHudDecoInterfaceXRay::CHudDecoInterfaceXRay(CGuiFrame& hud)
: x4_seekerScale(1.f)
, x8_rotation(CQuaternion::NoRotation())
, x18_pivotPosition(CVector3f::Zero())
, x24_offset(CVector3f::Zero())
, x30_camPos(CVector3f::Zero())
, x3c_reticuleXf(CMatrix3f::Identity())
, x60_seekerPosition(CVector3f::Zero())
, x6c_(CVector3f::Zero())
, x78_(CMatrix3f::Identity())
, x9c_24_visDebug(true)
, x9c_25_visGame(true) {
  xa0_camera = hud.GetFrameCamera();
  x30_camPos = xa0_camera->GetLocalPosition();
  xa4_basewidget_pivot = hud.FindWidget(skPivotWidgetName);
  xa8_basewidget_seeker = hud.FindWidget(skSeekerWidgetNameXRay);
  xac_basewidget_rotate = hud.FindWidget("basewidget_rotate");
  x18_pivotPosition = xa4_basewidget_pivot->GetIdleXform().GetTranslation();
  x60_seekerPosition = xa8_basewidget_seeker->GetIdleXform().GetTranslation();
  if (CGuiWidget* widget = hud.FindWidget("basewidget_energydeco")) {
    widget->SetColor(gpTweakGuiColors->GetXRayEnergyDecoColor());
  }
  if (CGuiWidget* widget = hud.FindWidget("model_frame")) {
    widget->SetIsAlwaysDepthWrite(true);
  }
  if (CGuiWidget* widget = hud.FindWidget("model_frame1")) {
    widget->SetIsAlwaysDepthWrite(true);
  }
  if (CGuiWidget* widget = hud.FindWidget("model_frame2")) {
    widget->SetIsAlwaysDepthWrite(true);
  }
  if (CGuiWidget* widget = hud.FindWidget("model_frame3")) {
    widget->SetIsAlwaysDepthWrite(true);
  }
  if (CGuiWidget* widget = hud.FindWidget("model_misslieslider")) {
    widget->SetIsAlwaysDepthWrite(true);
  }
  if (CGuiWidget* widget = hud.FindWidget("model_threatslider")) {
    widget->SetIsAlwaysDepthWrite(true);
  }
  UpdateHudAlpha();
}

void CHudDecoInterfaceXRay::UpdateHudAlpha() {
  xa4_basewidget_pivot->SetColor(
      CColor(uchar(255), uchar(255), uchar(255), uchar(gpGameState->GameOptions().GetHUDAlpha())));
}

void CHudDecoInterfaceXRay::SetIsVisibleDebug(const bool visible) {
  x9c_24_visDebug = visible;
  UpdateVisibility();
}

void CHudDecoInterfaceXRay::SetIsVisibleGame(bool visible) {
  x9c_25_visGame = visible;
  UpdateVisibility();
}

void CHudDecoInterfaceXRay::UpdateVisibility() {}

void CHudDecoInterfaceXRay::SetHudRotation(const CQuaternion& rotation) { x8_rotation = rotation; }

void CHudDecoInterfaceXRay::SetReticuleTransform(const CMatrix3f& transform) {
  x3c_reticuleXf = transform;
}

void CHudDecoInterfaceXRay::SetDecoRotation(float angle) {
  xac_basewidget_rotate->SetO2PTransform(
      CTransform4f(CMatrix3f::RotateY(CRelAngle::FromRadians(angle)),
                   xac_basewidget_rotate->GetLocalPosition()));
}

void CHudDecoInterfaceXRay::SetHudOffset(const CVector3f& offset) { x24_offset = offset; }

void CHudDecoInterfaceXRay::SetDamageTransform(const CMatrix3f& rotation,
                                               const CVector3f& position) {}

void CHudDecoInterfaceXRay::SetFrameColorValue(float value) {}

void CHudDecoInterfaceXRay::Update(float dt, const CStateManager& mgr) {
  static const float kMinSeekerScale = 0.35f;
  if (mgr.GetPlayer()->GetOrbitState() == CPlayer::kOS_OrbitObject) {
    x4_seekerScale = rstl::max_val(kMinSeekerScale, x4_seekerScale - 3.f * dt);
  } else {
    x4_seekerScale = rstl::min_val(1.f, 3.f * dt + x4_seekerScale);
  }
  xa0_camera->SetO2WTransform(CSamusHud::BuildFinalCameraTransform(
      x8_rotation, x18_pivotPosition + x24_offset, x30_camPos));
  xa8_basewidget_seeker->SetO2PTransform(
      CTransform4f(CMatrix3f::Scale(x4_seekerScale) * x3c_reticuleXf, x60_seekerPosition));
}

void CHudDecoInterfaceXRay::UpdateCameraDebugSettings(float fov, float y, float z) {
  CGuiCamera::UCameraParms parms = xa0_camera->GetParms();
  parms.perspective.fov = fov;
  xa0_camera->SetParms(parms);
  x30_camPos = CVector3f(0.f, y, z);
}

CScanDisplay::~CScanDisplay() {}

CHudDecoInterfaceScan::CHudDecoInterfaceScan(CGuiFrame& hud)
: x4_scanHudFlat(gpSimplePool->GetObj("FRME_ScanHudFlat"))
, x10_loadedScanHudFlat(nullptr)
, x14_selHud(hud)
, x18_scanDisplay(&hud)
, x1d0_latestHudPoi(kInvalidUniqueId)
, x1d2_latestScanningObject(kInvalidUniqueId)
, x1d4_latestScanState(CPlayer::kSS_NotScanning)
, x1d8_scanningTime(0.f)
, x1dc_(0.f)
, x1e0_(1.f)
, x1e4_rotation(CQuaternion::NoRotation())
, x1f4_pivotPosition(CVector3f::Zero())
, x200_offset(CVector3f::Zero())
, x20c_camPos(CVector3f::Zero())
, x218_leftsidePosition(CVector3f::Zero())
, x224_rightsidePosition(CVector3f::Zero())
, x230_sidesTimer(0.f)
, x234_sidesPositioner(gpTweakGui->GetScanSidesPositionStart())
, x238_scanningTextAlpha(0.f)
, x23c_scanBarAlpha(0.f)
, x240_24_visDebug(true)
, x240_25_visGame(true) {
  x4_scanHudFlat.Lock();
  x244_camera = hud.GetFrameCamera();
  x20c_camPos = x244_camera->GetLocalPosition();
  x248_basewidget_pivot = hud.FindWidget(skPivotWidgetName);
  x24c_basewidget_leftside = hud.FindWidget(skScanGroupLeftName);
  x250_basewidget_rightside = hud.FindWidget(skScanGroupRightName);
  x1f4_pivotPosition = x248_basewidget_pivot->GetIdleXform().GetTranslation();
  if (CGuiWidget* widget = hud.FindWidget("basewidget_deco")) {
    widget->SetColor(gpTweakGuiColors->GetHudFrameColor());
  }
  x218_leftsidePosition = x24c_basewidget_leftside->GetO2PTransform().GetTranslation();
  x24c_basewidget_leftside->SetO2PTransform(
      CTransform4f(CMatrix3f::RotateZ(CRelAngle::FromRadians(gpTweakGui->GetScanSidesAngle())),
                   x218_leftsidePosition));
  if (CGuiWidget* widget = hud.FindWidget(skScanPaneDecoLeftName)) {
    const CVector3f position = widget->GetO2PTransform().GetTranslation();
    widget->SetO2PTransform(CTransform4f(
        CMatrix3f::RotateZ(CRelAngle::FromRadians(-1.f * gpTweakGui->GetScanSidesAngle())),
        position));
  }
  if (CGuiWidget* widget = hud.FindWidget(skScanPaneLeftName)) {
    const CVector3f position = widget->GetO2PTransform().GetTranslation();
    widget->SetO2PTransform(
        CTransform4f(CMatrix3f::Scale(gpTweakGui->GetScanSidesXScale(), 1.f, 1.f), position));
  }
  x224_rightsidePosition = x250_basewidget_rightside->GetO2PTransform().GetTranslation();
  x250_basewidget_rightside->SetO2PTransform(CTransform4f(
      CMatrix3f::RotateZ(CRelAngle::FromRadians(-1.f * gpTweakGui->GetScanSidesAngle())),
      x224_rightsidePosition));
  if (CGuiWidget* widget = hud.FindWidget(skScanPaneDecoRightName)) {
    const CVector3f position = widget->GetO2PTransform().GetTranslation();
    widget->SetO2PTransform(CTransform4f(
        CMatrix3f::RotateZ(CRelAngle::FromRadians(gpTweakGui->GetScanSidesAngle())), position));
  }
  if (CGuiWidget* widget = hud.FindWidget(skScanPaneRightName)) {
    const CVector3f position = widget->GetO2PTransform().GetTranslation();
    widget->SetO2PTransform(
        CTransform4f(CMatrix3f::Scale(gpTweakGui->GetScanSidesXScale(), 1.f, 1.f), position));
  }
  const CVector3f sidesPos(x234_sidesPositioner, 0.f, 0.f);
  x24c_basewidget_leftside->SetLocalPosition(x218_leftsidePosition +
                                             x24c_basewidget_leftside->RotateO2P(sidesPos));
  x250_basewidget_rightside->SetLocalPosition(x224_rightsidePosition -
                                              x250_basewidget_rightside->RotateO2P(sidesPos));
  UpdateHudAlpha();
}

void CHudDecoInterfaceScan::UpdateHudAlpha() {
  x248_basewidget_pivot->SetColor(
      CColor::White().WithAlphaOf(gpGameState->GameOptions().GetHudAlpha()));
}

void CHudDecoInterfaceScan::SetIsVisibleDebug(const bool visible) {
  x240_24_visDebug = visible;
  UpdateVisibility();
}

void CHudDecoInterfaceScan::SetIsVisibleGame(bool visible) {
  x240_25_visGame = visible;
  UpdateVisibility();
}

void CHudDecoInterfaceScan::UpdateVisibility() {}

void CHudDecoInterfaceScan::SetHudRotation(const CQuaternion& rotation) {
  x1e4_rotation = rotation;
}

void CHudDecoInterfaceScan::SetReticuleTransform(const CMatrix3f& transform) {}

void CHudDecoInterfaceScan::SetHudOffset(const CVector3f& offset) { x200_offset = offset; }

void CHudDecoInterfaceScan::SetDamageTransform(const CMatrix3f& rotation,
                                               const CVector3f& position) {}

void CHudDecoInterfaceScan::SetFrameColorValue(float value) {}

void CHudDecoInterfaceScan::InitializeFlatFrame() {
  x10_loadedScanHudFlat = x4_scanHudFlat.GetObject();
  CGuiCamera* camera = x10_loadedScanHudFlat->GetFrameCamera();
  CGuiCamera::UCameraParms parms = camera->GetParms();
  parms.perspective.fov = x244_camera->GetParms().perspective.fov;
  camera->SetParms(parms);
  camera->SetO2WTransform(CTransform4f::Translate(x20c_camPos));
  x258_flat_basewidget_scanguage = x10_loadedScanHudFlat->FindWidget(skScanGroupName);
  x258_flat_basewidget_scanguage->SetVisibility(false, kTM_Children);
  x254_flat_textpane_scanning =
      static_cast< CGuiTextPane* >(x10_loadedScanHudFlat->FindWidget(skScanMessageName));
  x25c_flat_energybart01_scanbar =
      static_cast< CAuiEnergyBarT01* >(x10_loadedScanHudFlat->FindWidget(skScanBarName));
  x264_flat_textpane_message =
      static_cast< CGuiTextPane* >(x10_loadedScanHudFlat->FindWidget(skScanTextPaneBaseName));
  x268_flat_textpane_scrollmessage =
      static_cast< CGuiTextPane* >(x10_loadedScanHudFlat->FindWidget(skScanScrollMessageName));
  x260_flat_basewidget_textgroup = x10_loadedScanHudFlat->FindWidget(skScanMessageGroupBaseName);
  x26c_flat_model_xmark =
      static_cast< CGuiModel* >(x10_loadedScanHudFlat->FindWidget(skScanXMarkName));
  x270_flat_model_abutton =
      static_cast< CGuiModel* >(x10_loadedScanHudFlat->FindWidget(skScanAButtonName));
  x274_flat_model_dash =
      static_cast< CGuiModel* >(x10_loadedScanHudFlat->FindWidget(skScanDashName));
  x260_flat_basewidget_textgroup->SetVisibility(false, kTM_Children);
  x254_flat_textpane_scanning->SetIsVisible(false);
  x254_flat_textpane_scanning->TextSupport().SetFontColor(gpTweakGuiColors->GetHudMessageFill());
  x254_flat_textpane_scanning->TextSupport().SetOutlineColor(
      gpTweakGuiColors->GetHudMessageOutline());
  x25c_flat_energybart01_scanbar->SetCoordFunc(CAuiEnergyBarT01::DownloadBarCoordFunc);
  x25c_flat_energybart01_scanbar->SetTesselation(1.f);
  x25c_flat_energybart01_scanbar->SetMaxEnergy(1.f);
  x25c_flat_energybart01_scanbar->SetFilledColor(
      CColor(uchar(103), uchar(174), uchar(225), uchar(255)));
  x25c_flat_energybart01_scanbar->SetShadowColor(CColor(0));
  x25c_flat_energybart01_scanbar->SetEmptyColor(CColor(0));
  x25c_flat_energybart01_scanbar->SetFilledDrainSpeed(999.f);
  x25c_flat_energybart01_scanbar->SetShadowDrainSpeed(999.f);
  x25c_flat_energybart01_scanbar->SetShadowDrainDelay(0.f);
  x25c_flat_energybart01_scanbar->SetIsAlwaysResetTimer(false);
  x26c_flat_model_xmark->SetVisibility(false, kTM_Children);
  x270_flat_model_abutton->SetVisibility(false, kTM_Children);
  x274_flat_model_dash->SetVisibility(false, kTM_Children);
}

void CHudDecoInterfaceScan::Update(float dt, const CStateManager& mgr) {
  const CPlayer* player = mgr.GetPlayer();
  const CPlayer::EPlayerScanState scanState = player->GetPlayerScanState();
  if (scanState != CPlayer::kSS_NotScanning) {
    x1d8_scanningTime = player->GetScanTimer();
  }
  if (scanState == CPlayer::kSS_Scanning || scanState == CPlayer::kSS_ScanComplete) {
    x230_sidesTimer = rstl::min_val(gpTweakGui->GetScanSidesEndTime(), x230_sidesTimer + dt);
  } else {
    x230_sidesTimer = rstl::max_val(0.f, x230_sidesTimer - dt);
  }
  const float oldSidesPositioner = x234_sidesPositioner;
  const float sidesTime = x230_sidesTimer;
  const float sidesStart = gpTweakGui->GetScanSidesStartTime();
  const float sidesDuration = gpTweakGui->GetScanSidesDuration();
  const float sidesT = sidesTime < sidesStart ? 0.f : (sidesTime - sidesStart) / sidesDuration;
  x234_sidesPositioner = (1.f - sidesT) * gpTweakGui->GetScanSidesPositionStart() +
                         sidesT * gpTweakGui->GetScanSidesPositionEnd();
  if (oldSidesPositioner != x234_sidesPositioner) {
    const CVector3f sidesPos(x234_sidesPositioner, 0.f, 0.f);
    x24c_basewidget_leftside->SetLocalPosition(x218_leftsidePosition +
                                               x24c_basewidget_leftside->RotateO2P(sidesPos));
    x250_basewidget_rightside->SetLocalPosition(x224_rightsidePosition -
                                                x250_basewidget_rightside->RotateO2P(sidesPos));
  }
  x244_camera->SetO2WTransform(CSamusHud::BuildFinalCameraTransform(
      x1e4_rotation, x1f4_pivotPosition + x200_offset, x20c_camPos));
  if (x10_loadedScanHudFlat == nullptr) {
    if (x4_scanHudFlat.TryCache() && x4_scanHudFlat.GetObject()->GetIsFinishedLoading()) {
      InitializeFlatFrame();
    } else {
      return;
    }
  }
  x10_loadedScanHudFlat->Update(dt);
  UpdateScanDisplay(mgr, dt);
}

void CHudDecoInterfaceScan::Draw() const {
  x18_scanDisplay.Draw();
  if (x10_loadedScanHudFlat != nullptr) {
    x10_loadedScanHudFlat->Draw(CGuiWidgetDrawParms::Default());
  }
}

void CHudDecoInterfaceScan::ProcessInput(const CFinalInput& input) {
  x18_scanDisplay.ProcessInput(input);
}

void CHudDecoInterfaceScan::UpdateCameraDebugSettings(float fov, float y, float z) {
  CGuiCamera::UCameraParms parms = x244_camera->GetParms();
  parms.perspective.fov = fov;
  x244_camera->SetParms(parms);
  x20c_camPos = CVector3f(0.f, y, z);
}

void CHudDecoInterfaceScan::UpdateScanDisplay(const CStateManager& mgr, float dt) {
  const CPlayer* player = mgr.GetPlayer();
  const CPlayer::EPlayerScanState scanState = player->GetPlayerScanState();
  const TUniqueId orbitTarget = player->GetOrbitTargetId();
  const TUniqueId scanningObject = player->GetScanningObjectId();
  const float scanningTime = player->GetScanTimer();
  if (scanState != x1d4_latestScanState) {
    if (player->IsNewScanScanning()) {
      if (scanState == CPlayer::kSS_ScanComplete) {
        if (x1d4_latestScanState == CPlayer::kSS_Scanning) {
          x254_flat_textpane_scanning->TextSupport().SetText(
              rstl::wstring_l(gpStringTable->GetString(15)));
          x254_flat_textpane_scanning->TextSupport().SetTypeWriteEffectOptions(false, 0.f, 40.f);
          x238_scanningTextAlpha = 2.f;
        }
      } else if (scanState == CPlayer::kSS_Scanning) {
        x254_flat_textpane_scanning->TextSupport().SetText(
            rstl::wstring_l(gpStringTable->GetString(14)));
        x254_flat_textpane_scanning->TextSupport().SetTypeWriteEffectOptions(false, 0.f, 40.f);
        x238_scanningTextAlpha = 1.f;
      }
    }
    x1d4_latestScanState = scanState;
  }
  if (scanningObject != x1d2_latestScanningObject) {
    x1d2_latestScanningObject = scanningObject;
  }
  if (orbitTarget != x1d0_latestHudPoi) {
    x1d0_latestHudPoi = orbitTarget;
    if (orbitTarget != kInvalidUniqueId) {
      if (!const_cast< CPlayer* >(mgr.GetPlayer())->ObjectInScanningRange(orbitTarget, mgr)) {
        x254_flat_textpane_scanning->TextSupport().SetText(rstl::wstring_l(L""));
        x254_flat_textpane_scanning->TextSupport().SetText(
            rstl::wstring_l(gpStringTable->GetString(16)));
        x254_flat_textpane_scanning->TextSupport().SetTypeWriteEffectOptions(true, 0.f, 40.f);
        x238_scanningTextAlpha = 1.f;
      }
    }
  }
  const CScannableObjectInfo* scanInfo = GetCurrScanInfo(mgr);
  if (x1d2_latestScanningObject != x18_scanDisplay.GetScanTarget() || scanInfo == nullptr) {
    x18_scanDisplay.StopScan();
    if (x18_scanDisplay.GetScanState() == CScanDisplay::kSS_Inactive && scanInfo != nullptr) {
      x18_scanDisplay.StartScan(x1d2_latestScanningObject, *scanInfo, x264_flat_textpane_message,
                                x268_flat_textpane_scrollmessage, x260_flat_basewidget_textgroup,
                                x26c_flat_model_xmark, x270_flat_model_abutton,
                                x274_flat_model_dash, scanningTime);
    }
  }
  x18_scanDisplay.Update(dt, scanningTime);
  if (x1d2_latestScanningObject != kInvalidUniqueId && GetCurrScanInfo(mgr) != nullptr) {
    if (const CActor* actor =
            TCastToConstPtr< CActor >(mgr.GetObjectById(x1d2_latestScanningObject))) {
      if (const CScannableObjectInfo* actorScan = actor->GetScannableObjectInfo()) {
        x25c_flat_energybart01_scanbar->SetCurrEnergy(
            x1d8_scanningTime / actorScan->GetTotalDownloadTime(), CAuiEnergyBarT01::kSM_Normal);
      }
    }
  }
  if (x1d4_latestScanState != CPlayer::kSS_Scanning) {
    if (x1d0_latestHudPoi == kInvalidUniqueId ||
        const_cast< CPlayer* >(mgr.GetPlayer())->ObjectInScanningRange(x1d0_latestHudPoi, mgr)) {
      x238_scanningTextAlpha = rstl::max_val(0.f, x238_scanningTextAlpha - dt);
    }
  }
  if (x238_scanningTextAlpha > 0.f) {
    x254_flat_textpane_scanning->SetColor(
        CColor::White().WithAlphaOf(rstl::min_val(1.f, x238_scanningTextAlpha)));
    x254_flat_textpane_scanning->SetIsVisible(true);
  } else {
    x254_flat_textpane_scanning->SetIsVisible(false);
  }
  if (GetCurrScanInfo(mgr) != nullptr) {
    x23c_scanBarAlpha = rstl::min_val(1.f, x23c_scanBarAlpha + 2.f * dt);
  } else {
    x23c_scanBarAlpha = rstl::max_val(0.f, x23c_scanBarAlpha - 2.f * dt);
  }
  if (x23c_scanBarAlpha > 0.f) {
    x258_flat_basewidget_scanguage->SetColor(
        CColor::White().WithAlphaOf(rstl::min_val(1.f, x23c_scanBarAlpha)));
    x258_flat_basewidget_scanguage->SetVisibility(true, kTM_Children);
  } else {
    x258_flat_basewidget_scanguage->SetVisibility(false, kTM_Children);
  }
}

const CScannableObjectInfo* CHudDecoInterfaceScan::GetCurrScanInfo(const CStateManager& mgr) const {
  if (x1d4_latestScanState == CPlayer::kSS_NotScanning) {
    return nullptr;
  }
  if (const CActor* actor =
          TCastToConstPtr< CActor >(mgr.GetObjectById(x1d2_latestScanningObject))) {
    return actor->GetScannableObjectInfo();
  }
  return nullptr;
}

float CHudDecoInterfaceScan::GetMessageTextAlpha() const {
  const float scanningAlpha = rstl::min_val(1.f, x238_scanningTextAlpha);
  return 1.f - rstl::max_val(scanningAlpha, x18_scanDisplay.GetBodyAlpha());
}

CHudDecoInterfaceThermal::SLockWidget::SLockWidget(CGuiWidget* widget)
: x0_widget(widget), x4_transform(widget->GetO2PTransform()) {}

CHudDecoInterfaceThermal::CHudDecoInterfaceThermal(CGuiFrame& hud)
: x4_rotation(CQuaternion::NoRotation())
, x14_pivotPosition(CVector3f::Zero())
, x20_offset(CVector3f::Zero())
, x2c_camPos(CVector3f::Zero())
, x38_reticuleXf(CMatrix3f::Identity())
, x5c_reticulePosition(CVector3f::Zero())
, x68_lockonScale(5.f)
, x6c_retflashTimer(0.f)
, x70_24_visDebug(true)
, x70_25_visGame(true) {
  x74_camera = hud.GetFrameCamera();
  x2c_camPos = x74_camera->GetLocalPosition();
  x78_basewidget_pivot = hud.FindWidget(skPivotWidgetName);
  const char* const reticleName = "basewidget_reticle";
  x7c_basewidget_reticle = hud.FindWidget(reticleName);
  x80_model_retflash = static_cast< CGuiModel* >(hud.FindWidget("model_retflash"));
  const char* const lockName = "basewidget_lock";
  const char* const lockonName = "basewidget_lockon";
  x14_pivotPosition = x78_basewidget_pivot->GetIdleXform().GetTranslation();
  x5c_reticulePosition = x7c_basewidget_reticle->GetIdleXform().GetTranslation();
  if (CGuiWidget* widget = hud.FindWidget("basewidget_deco")) {
    widget->SetColor(gpTweakGuiColors->GetThermalDecoColor());
  }
  if (CGuiWidget* widget = hud.FindWidget("basewidget_oultlinesa")) {
    widget->SetColor(gpTweakGuiColors->GetThermalOutlinesColor());
  }
  if (CGuiWidget* widget = hud.FindWidget(lockName)) {
    widget->SetColor(gpTweakGuiColors->GetThermalLockColor());
  }
  if (CGuiWidget* widget = hud.FindWidget(reticleName)) {
    widget->SetColor(gpTweakGuiColors->GetThermalOutlinesColor());
  }
  if (CGuiWidget* widget = hud.FindWidget(lockonName)) {
    widget->SetColor(gpTweakGuiColors->GetThermalOutlinesColor());
  }
  if (CGuiWidget* widget = hud.FindWidget("model_threaticon")) {
    widget->SetColor(gpTweakGuiColors->GetThermalOutlinesColor());
  }
  if (CGuiWidget* widget = hud.FindWidget("model_missileicon")) {
    widget->SetColor(gpTweakGuiColors->GetThermalOutlinesColor());
  }
  if (CGuiWidget* widget = hud.FindWidget(lockName)) {
    for (CGuiWidget* child = static_cast< CGuiWidget* >(widget->ChildObject()); child != nullptr;
         child = static_cast< CGuiWidget* >(child->NextSibling())) {
      x84_lockonWidgets.reserve(x84_lockonWidgets.size() + 1);
      x84_lockonWidgets.push_back(SLockWidget(child));
      child->SetO2PTransform(child->GetO2PTransform() * CTransform4f::Scale(x68_lockonScale));
    }
  }
  x14_pivotPosition = x78_basewidget_pivot->GetIdleXform().GetTranslation();
  UpdateHudAlpha();
}

void CHudDecoInterfaceThermal::SetIsVisibleDebug(const bool visible) {
  x70_24_visDebug = visible;
  UpdateVisibility();
}

void CHudDecoInterfaceThermal::SetIsVisibleGame(bool visible) {
  x70_25_visGame = visible;
  UpdateVisibility();
}

void CHudDecoInterfaceThermal::UpdateHudAlpha() {
  x78_basewidget_pivot->SetColor(
      CColor(uchar(255), uchar(255), uchar(255), uchar(gpGameState->GameOptions().GetHUDAlpha())));
}

void CHudDecoInterfaceThermal::UpdateVisibility() {}

void CHudDecoInterfaceThermal::SetHudRotation(const CQuaternion& rotation) {
  x4_rotation = rotation;
}

void CHudDecoInterfaceThermal::SetReticuleTransform(const CMatrix3f& transform) {
  x38_reticuleXf = transform;
}

void CHudDecoInterfaceThermal::SetHudOffset(const CVector3f& offset) { x20_offset = offset; }

void CHudDecoInterfaceThermal::SetDamageTransform(const CMatrix3f& rotation,
                                                  const CVector3f& position) {}

void CHudDecoInterfaceThermal::Update(float dt, const CStateManager& mgr) {
  static const float kMaxLockonScale = 5.f;
  const float oldLockonScale = x68_lockonScale;
  if (mgr.GetPlayer()->GetOrbitTargetId() != kInvalidUniqueId) {
    x68_lockonScale = rstl::max_val(1.f, x68_lockonScale - 15.f * dt);
  } else {
    x68_lockonScale = rstl::min_val(kMaxLockonScale, x68_lockonScale + 15.f * dt);
  }
  if (oldLockonScale != x68_lockonScale) {
    for (AUTO(it, x84_lockonWidgets.begin()); it != x84_lockonWidgets.end(); ++it) {
      it->x0_widget->SetO2PTransform(it->x4_transform * CTransform4f::Scale(x68_lockonScale));
    }
  }
  x6c_retflashTimer += dt;
  if (x6c_retflashTimer > 1.f) {
    x6c_retflashTimer -= 2.f;
  }
  x80_model_retflash->SetColor(
      CColor::White().WithAlphaOf(CMath::AbsF(x6c_retflashTimer) * 0.5f + 0.5f));
  x74_camera->SetO2WTransform(CSamusHud::BuildFinalCameraTransform(
      x4_rotation, x14_pivotPosition + x20_offset, x2c_camPos));
  x7c_basewidget_reticle->SetO2PTransform(CTransform4f(x38_reticuleXf, x5c_reticulePosition));
}

void CHudDecoInterfaceThermal::UpdateCameraDebugSettings(float fov, float y, float z) {
  CGuiCamera::UCameraParms parms = x74_camera->GetParms();
  parms.perspective.fov = fov;
  x74_camera->SetParms(parms);
  x2c_camPos = CVector3f(0.f, y, z);
}

CHudDecoInterfaceThermal::~CHudDecoInterfaceThermal() {}
