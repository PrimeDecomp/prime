#include "MetroidPrime/HUD/CHudThreatInterface.hpp"

#include "GuiSys/CAuiEnergyBarT01.hpp"
#include "GuiSys/CGuiFrame.hpp"
#include "GuiSys/CGuiModel.hpp"
#include "GuiSys/CGuiTextPane.hpp"
#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Text/CStringTable.hpp"
#include "MetroidPrime/Tweaks/CTweakGui.hpp"
#include "MetroidPrime/Tweaks/CTweakGuiColors.hpp"
#include "rstl/math.hpp"

#include <stdio.h>

static const char skThreatGroupWidgetName[] = "basewidget_threatstuff";
static const char skThreatIconWidgetName[] = "basewidget_threaticon";
static const char skThreatArrowUpWidgetName[] = "model_threatarrowup";
static const char skThreatArrowDownWidgetName[] = "model_threatarrowdown";
static const char skThreatWarningWidgetName[] = "textpane_threatwarning";
static const char skThreatBarWidgetName[] = "energybart01_threatbar";
static const char skThreatDigitsNameXRay[] = "textpane_threatdigits";
static const float skIconTranslateRanges[] = {6.05f, 0.f, 0.f, 8.4f, 0.f};
static const CAuiEnergyBarT01::FCoordFunc skThreatCoordFuncs[] = {
    CHudThreatInterface::CombatThreatBarCoordFunc, nullptr,
    CHudThreatInterface::XRayThreatBarCoordFunc, CHudThreatInterface::ThermalThreatBarCoordFunc,
    nullptr};

rstl::pair< CVector3f, CVector3f > CHudThreatInterface::CombatThreatBarCoordFunc(float t) {
  const float z = t * skIconTranslateRanges[kHT_Combat];
  return rstl::pair< CVector3f, CVector3f >(CVector3f(-0.3f, 0.f, z), CVector3f(0.f, 0.f, z));
}

rstl::pair< CVector3f, CVector3f > CHudThreatInterface::ThermalThreatBarCoordFunc(float t) {
  const float range = skIconTranslateRanges[kHT_Thermal];
  const float bevel = 0.08f * range;
  const float z = t * range;
  float width;
  if (z < bevel) {
    width = z / bevel;
  } else if (z < range - bevel) {
    width = 1.f;
  } else {
    width = 1.f - (z - (range - bevel)) / bevel;
  }
  return rstl::pair< CVector3f, CVector3f >(CVector3f(0.1f, 0.f, z),
                                            CVector3f(0.5f * width + 0.1f, 0.f, z));
}

rstl::pair< CVector3f, CVector3f > CHudThreatInterface::XRayThreatBarCoordFunc(float t) {
  const float theta = 0.8f * (t - 0.5f);
  const float x = -1.f * (9.55f * CMath::FastCosR(theta));
  const float z = 9.55f * CMath::FastSinR(theta);
  return rstl::pair< CVector3f, CVector3f >(CVector3f(0.4f + x, 0.f, z), CVector3f(x, 0.f, z));
}

CHudThreatInterface::CHudThreatInterface(CGuiFrame& hud, EHudType type, float distance)
: x4_hudType(type)
, x8_damagePulseTimer(0.f)
, xc_damagePulse(0.f)
, x10_threatDist(distance)
, x14_arrowTimer(0.f)
, x18_threatIconXf(CTransform4f::Identity())
, x48_warningLerpAlpha(0.f)
, x4c_threatStatus(kTS_Normal)
, x50_warningColorLerp(0.f)
, x54_24_visibleDebug(true)
, x54_25_visibleGame(true) {
  x58_basewidget_threatstuff = hud.FindWidget(skThreatGroupWidgetName);
  x5c_basewidget_threaticon = hud.FindWidget(skThreatIconWidgetName);
  x60_model_threatarrowup = static_cast< CGuiModel* >(hud.FindWidget(skThreatArrowUpWidgetName));
  x64_model_threatarrowdown =
      static_cast< CGuiModel* >(hud.FindWidget(skThreatArrowDownWidgetName));
  x68_textpane_threatwarning =
      static_cast< CGuiTextPane* >(hud.FindWidget(skThreatWarningWidgetName));
  x6c_energybart01_threatbar =
      static_cast< CAuiEnergyBarT01* >(hud.FindWidget(skThreatBarWidgetName));
  x70_textpane_threatdigits =
      static_cast< CGuiTextPane* >(hud.FindWidget(rstl::string_l(skThreatDigitsNameXRay)));
  if (x70_textpane_threatdigits) {
    x70_textpane_threatdigits->TextSupport().SetFontColor(gpTweakGuiColors->GetThreatDigitsFont());
    x70_textpane_threatdigits->TextSupport().SetOutlineColor(
        gpTweakGuiColors->GetThreatDigitsOutline());
  }
  x54_26_hasArrows = x60_model_threatarrowup && x64_model_threatarrowdown;
  x54_27_notXRay = type != kHT_XRay;
  x5c_basewidget_threaticon->SetColor(gpTweakGuiColors->GetThreatIconColor());
  x18_threatIconXf = x5c_basewidget_threaticon->GetO2PTransform();
  x6c_energybart01_threatbar->SetFilledColor(gpTweakGuiColors->GetThreatBarFilled());
  x6c_energybart01_threatbar->SetEmptyColor(gpTweakGuiColors->GetThreatBarEmpty());
  x6c_energybart01_threatbar->SetShadowColor(gpTweakGuiColors->GetThreatBarShadow());
  x6c_energybart01_threatbar->SetCoordFunc(skThreatCoordFuncs[type]);
  x6c_energybart01_threatbar->SetTesselation(type == kHT_Combat ? 1.f : 0.1f);
  x6c_energybart01_threatbar->SetMaxEnergy(gpTweakGui->GetThreatRange());
  x6c_energybart01_threatbar->SetFilledDrainSpeed(9999.f);
  x6c_energybart01_threatbar->SetShadowDrainSpeed(9999.f);
  x6c_energybart01_threatbar->SetShadowDrainDelay(0.f);
  x6c_energybart01_threatbar->SetIsAlwaysResetTimer(false);
  if (x68_textpane_threatwarning) {
    x68_textpane_threatwarning->TextSupport().SetFontColor(
        gpTweakGuiColors->GetThreatWarningFont());
    x68_textpane_threatwarning->TextSupport().SetOutlineColor(
        gpTweakGuiColors->GetThreatWarningOutline());
  }
}

void CHudThreatInterface::SetThreatDistance(float distance) { x10_threatDist = distance; }

void CHudThreatInterface::SetIsVisibleDebug(bool visible) {
  x54_24_visibleDebug = visible;
  UpdateVisibility();
}

void CHudThreatInterface::SetIsVisibleGame(bool visible) {
  x54_25_visibleGame = visible;
  UpdateVisibility();
}

void CHudThreatInterface::UpdateVisibility() {
  const bool visible = x54_25_visibleGame && x54_24_visibleDebug;
  x58_basewidget_threatstuff->SetVisibility(visible, kTM_Children);
  if (visible) {
    Update(0.f);
  }
}

void CHudThreatInterface::Update(float dt) {
  const CTweakGuiColors& colors = *gpTweakGuiColors;
  const CColor warningColor = CColor::Lerp(
      colors.GetThreatIconColor(), colors.GetThreatIconWarningColor(), x50_warningColorLerp);
  const float maxThreatEnergy = gpTweakGui->GetThreatRange();
  const float oldThreatDistance = maxThreatEnergy - x6c_energybart01_threatbar->GetActualEnergy();
  if (x70_textpane_threatdigits) {
    if (x10_threatDist < maxThreatEnergy) {
      x70_textpane_threatdigits->SetIsVisible(true);
      char digits[8];
      sprintf(digits, "%01.1f", rstl::max_val(0.f, x10_threatDist));
      x70_textpane_threatdigits->TextSupport().SetText(rstl::string(digits));
    } else {
      x70_textpane_threatdigits->SetIsVisible(false);
    }
  }
  if (x54_26_hasArrows) {
    if (x14_arrowTimer > 0.f) {
      x14_arrowTimer = rstl::max_val(0.f, x14_arrowTimer - dt);
      const float alpha = x14_arrowTimer / gpTweakGui->GetMissileArrowVisTime();
      x60_model_threatarrowup->SetIsVisible(true);
      x60_model_threatarrowup->SetColor(warningColor.WithAlphaModulatedBy(alpha));
      x64_model_threatarrowdown->SetIsVisible(false);
    } else if (x14_arrowTimer < 0.f) {
      x14_arrowTimer = rstl::min_val(0.f, x14_arrowTimer + dt);
      const float alpha = -x14_arrowTimer / gpTweakGui->GetMissileArrowVisTime();
      x64_model_threatarrowdown->SetIsVisible(true);
      x64_model_threatarrowdown->SetColor(warningColor.WithAlphaModulatedBy(alpha));
      x60_model_threatarrowup->SetIsVisible(false);
    } else {
      x60_model_threatarrowup->SetIsVisible(false);
      x64_model_threatarrowdown->SetIsVisible(false);
    }
  }
  if (x10_threatDist <= maxThreatEnergy) {
    const float delta = x10_threatDist - oldThreatDistance;
    if (delta < -0.01f) {
      x14_arrowTimer = gpTweakGui->GetMissileArrowVisTime();
    } else if (delta > 0.01f) {
      x14_arrowTimer = -1.f * gpTweakGui->GetMissileArrowVisTime();
    }
  } else {
    x14_arrowTimer = 0.f;
  }
  if (x10_threatDist <= maxThreatEnergy) {
    x6c_energybart01_threatbar->SetCurrEnergy(
        x6c_energybart01_threatbar->GetMaxEnergy() - x10_threatDist, CAuiEnergyBarT01::kSM_Normal);
    x5c_basewidget_threaticon->SetColor(warningColor);
  } else {
    x6c_energybart01_threatbar->SetCurrEnergy(0.f, CAuiEnergyBarT01::kSM_Normal);
    x5c_basewidget_threaticon->SetColor(gpTweakGuiColors->GetThreatIconSafeColor());
  }
  x6c_energybart01_threatbar->SetFilledColor(warningColor);
  if (x54_27_notXRay) {
    x5c_basewidget_threaticon->SetO2PTransform(
        x18_threatIconXf *
        CTransform4f::Translate(CVector3f(0.f, 0.f,
                                          skIconTranslateRanges[x4_hudType] *
                                              rstl::max_val(0.f, maxThreatEnergy - x10_threatDist) /
                                              maxThreatEnergy)));
  }
  if (x68_textpane_threatwarning) {
    const float fraction = x6c_energybart01_threatbar->GetActualFraction();
    if (fraction > gpTweakGui->GetThreatWarningFraction()) {
      x68_textpane_threatwarning->SetIsVisible(true);
    } else {
      x68_textpane_threatwarning->SetIsVisible(false);
    }
    EThreatStatus status;
    if (maxThreatEnergy == x6c_energybart01_threatbar->GetActualEnergy()) {
      status = kTS_Damage;
    } else {
      const float fraction = x6c_energybart01_threatbar->GetActualFraction();
      status = fraction > gpTweakGui->GetThreatWarningFraction() ? kTS_Warning : kTS_Normal;
    }
    if (status != x4c_threatStatus) {
      const rstl::wstring text =
          status == kTS_Warning  ? rstl::wstring_l(gpStringTable->GetString(10))
          : status == kTS_Damage ? rstl::wstring_l(gpStringTable->GetString(11))
                                 : rstl::wstring_l(L"");
      x68_textpane_threatwarning->TextSupport().SetText(text);
      if (x4c_threatStatus == kTS_Normal && status == kTS_Warning) {
        CSfxManager::SfxStart(0x574);
      } else if (status == kTS_Damage) {
        CSfxManager::SfxStart(0x577);
      }
      x4c_threatStatus = status;
    }
  }
  const float oldPulseTimer = x8_damagePulseTimer;
  x8_damagePulseTimer = CMath::ModF(x8_damagePulseTimer + dt, 0.5f);
  xc_damagePulse = x8_damagePulseTimer < 0.25f ? x8_damagePulseTimer / 0.25f
                                               : (0.5f - x8_damagePulseTimer) / 0.25f;
  if (x4c_threatStatus == kTS_Damage && x8_damagePulseTimer < oldPulseTimer) {
    CSfxManager::SfxStart(0x577);
  }
  if (x68_textpane_threatwarning) {
    if (x4c_threatStatus != kTS_Normal) {
      x48_warningLerpAlpha = rstl::min_val(1.f, x48_warningLerpAlpha + 2.f * dt);
      x68_textpane_threatwarning->SetColor(
          CColor::White().WithAlphaOf(x48_warningLerpAlpha * xc_damagePulse));
    } else {
      x48_warningLerpAlpha = rstl::max_val(0.f, x48_warningLerpAlpha - 2.f * dt);
      x68_textpane_threatwarning->SetColor(
          CColor::White().WithAlphaOf(x48_warningLerpAlpha * xc_damagePulse));
    }
    if (x68_textpane_threatwarning->GetModifiedColor().GetAlphau8()) {
      x68_textpane_threatwarning->SetIsVisible(true);
    } else {
      x68_textpane_threatwarning->SetIsVisible(false);
    }
  }
  if (x4c_threatStatus == kTS_Damage) {
    x50_warningColorLerp = rstl::min_val(1.f, x50_warningColorLerp + 2.f * dt);
  } else {
    x50_warningColorLerp = rstl::max_val(0.f, x50_warningColorLerp - 2.f * dt);
  }
}

CHudThreatInterface::~CHudThreatInterface() {}
