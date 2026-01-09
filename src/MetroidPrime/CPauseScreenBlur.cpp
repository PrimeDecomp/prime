#include "MetroidPrime/CPauseScreenBlur.hpp"

#include "MetroidPrime/Cameras/CCameraFilterPass.hpp"
#include "MetroidPrime/SFX/UI.h"
#include "MetroidPrime/Tweaks/CTweakGui.hpp"
#include "MetroidPrime/Tweaks/CTweakGuiColors.hpp"

#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"

#include "float.h"
#include "rstl/math.hpp"

CPauseScreenBlur::CPauseScreenBlur()
: x4_mapLightQuarter(gpSimplePool->GetObj("TXTR_MapLightQuarter"))
, x10_prevState(kS_InGame)
, x14_nextState(kS_InGame)
, x18_blurAmt(0.f)
, x50_24_blurring(false)
, x50_25_gameDraw(true) {}

CPauseScreenBlur::~CPauseScreenBlur() {}

void CPauseScreenBlur::OnNewInGameGuiState(EInGameGuiState state, CStateManager& stateMgr) {
  bool valid = false;
  if (state >= 0 && state <= 1) {
    valid = true;
  }
  if (valid) {
    SetState(kS_InGame);
    return;
  }

  switch (state) {
  case kIGS_MapScreen:
    SetState(kS_MapScreen);
    break;
  case kIGS_PauseSaveGame:
    SetState(kS_SaveGame);
    break;
  case kIGS_PauseHUDMessage:
    SetState(kS_HUDMessage);
    break;
  case kIGS_PauseGame:
  case kIGS_PauseLogBook:
    SetState(kS_Pause);
    break;
  }
}

void CPauseScreenBlur::Update(float dt, const CStateManager& stateMgr, bool b) {
  if (x10_prevState == x14_nextState)
    return;

  if (x18_blurAmt < 0.f)
    x18_blurAmt = rstl::min_val(0.f, 2.f * dt + x18_blurAmt);
  else if (x18_blurAmt > 0.f)
    x18_blurAmt = rstl::min_val(1.f, 2.f * dt + x18_blurAmt);

  if (x18_blurAmt == 0.f || x18_blurAmt == 1.f)
    OnBlurComplete(b);

  if (x18_blurAmt == 0.f && b) {
    x1c_camBlur.DisableBlur(0.f);
  } else {
    x1c_camBlur.SetBlur(CCameraBlurPass::kBT_HiBlur,
                        gpTweakGui->GetPauseBlurFactor() * GetBlurAmtInline(), 0.f, true);
    x50_24_blurring = true;
  }
}

void CPauseScreenBlur::Draw(const CStateManager&) {
  x1c_camBlur.Draw();
  CGraphics::DisableAllLights();
  CGraphics::SetAmbientColor(CColor(0xffffffff));
  const float t = fabs(x18_blurAmt);
  if (x1c_camBlur.GetCurrType() != CCameraBlurPass::kBT_NoBlur) {
    const CColor& white = CColor::White();
    CCameraFilterPass::DrawFilter(
        CCameraFilterPass::kFT_Multiply, CCameraFilterPass::kFS_FullscreenQuarters,
        CColor::Lerp(white, gpTweakGuiColors->GetPauseBlurFilterColor(), t), *x4_mapLightQuarter,
        t);
    CCameraFilterPass::DrawFilter(CCameraFilterPass::kFT_Multiply,
                                  CCameraFilterPass::kFS_ScanLinesEven,
                                  CColor::Lerp(CColor::White(), CColor(0xc0c0c0ff), t), nullptr, t);
  }

  if (x50_24_blurring && x1c_camBlur.GetNoPersistentCopy()) {
    x50_24_blurring = false;
    x50_25_gameDraw = false;
  }
}

void CPauseScreenBlur::OnBlurComplete(bool b) {
  if (x14_nextState == kS_InGame && !b)
    return;
  x10_prevState = x14_nextState;
  if (x10_prevState == kS_InGame)
    x50_25_gameDraw = true;
}

void CPauseScreenBlur::SetState(EState state) {
  switch (x10_prevState) {
  case kS_InGame:
    if (state != kS_InGame) {
      CSfxManager::SetChannel(CSfxManager::kSC_PauseScreen);
      if (state == kS_HUDMessage)
        CSfxManager::SfxStart(SFXui_x_override_00, 0x7f, 0x40, false, CSfxManager::kMedPriority);
      else if (state == kS_MapScreen)
        CSfxManager::SfxStart(SFXui_x_pause_00, 0x7f, 0x40, false, CSfxManager::kMedPriority);
      x18_blurAmt = FLT_EPSILON;
    }
    break;
  case kS_MapScreen:
  case kS_SaveGame:
  case kS_HUDMessage:
  case kS_Pause:
    break;
  }

  switch (state) {
  case kS_InGame: {
    bool valid = true;
    if (x10_prevState == kS_InGame && x14_nextState == kS_InGame) {
      valid = false;
    }
    if (valid) {
      CSfxManager::SetChannel(CSfxManager::kSC_Game);

      if (x10_prevState == kS_HUDMessage)
        CSfxManager::SfxStart(SFXui_x_override_01, 0x7f, 0x40, false, CSfxManager::kMedPriority);
      else if (x10_prevState == kS_MapScreen)
        CSfxManager::SfxStart(SFXui_x_pause_01, 0x7f, 0x40, false, CSfxManager::kMedPriority);

      x18_blurAmt = -1.f;
    }
    break;
  }
  case kS_MapScreen:
  case kS_SaveGame:
  case kS_HUDMessage:
  case kS_Pause:
    break;
  }

  x14_nextState = state;
}

float CPauseScreenBlur::GetBlurAmt() const { return GetBlurAmtInline(); }
