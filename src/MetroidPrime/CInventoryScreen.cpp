#include "MetroidPrime/CInventoryScreen.hpp"

#include "GuiSys/CGuiModel.hpp"
#include "GuiSys/CGuiTableGroup.hpp"
#include "GuiSys/CGuiTextPane.hpp"
#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/Input/CFinalInput.hpp"
#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Text/CStringTable.hpp"
#include "MetroidPrime/CControlMapper.hpp"
#include "MetroidPrime/CSamusDoll.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/Tweaks/CTweakGuiColors.hpp"
#include "rstl/math.hpp"
#include <limits.h>

namespace {
struct SInventoryItem {
  int idx;
  int nameStrIdx;
  int entryStrIdx;
};

struct SInventoryCategory {
  int count;
  const SInventoryItem* items;
};

const SInventoryItem skArmCannonItems[] = {
    {0, 0x24, 0x46}, {1, 0x25, 0x48}, {2, 0x26, 0x4a}, {3, 0x27, 0x4c}, {4, 0x28, 0x4e}};

const SInventoryItem skMorphballItems[] = {
    {5, 0x2e, 0x57}, {6, 0x2f, 0x58}, {7, 0x30, 0x59}, {8, 0x31, 0x5a}, {9, 0x32, 0x5b}};

const SInventoryItem skSuitItems[] = {
    {10, 0x33, 0x52}, {11, 0x34, 0x53}, {12, 0x35, 0x54}, {13, 0x36, 0x55}, {14, 0x37, 0x56}};

const SInventoryItem skVisorItems[] = {
    {15, 0x38, 0x42}, {16, 0x39, 0x43}, {17, 0x3a, 0x44}, {18, 0x3b, 0x45}};

const SInventoryItem skSecondaryItems[] = {
    {19, 0x3c, 0x4f}, {20, 0x3d, 0x50}, {21, 0x3e, 0x51}, {22, 0x3f, 0x5c}, {23, 0x40, 0x5d}};

const SInventoryCategory skInventoryRegistry[] = {{5, skArmCannonItems},
                                                  {5, skMorphballItems},
                                                  {5, skSuitItems},
                                                  {4, skVisorItems},
                                                  {5, skSecondaryItems}};

const wchar_t* const skUnknownItem = L"??????";
} // namespace

CInventoryScreen::CInventoryScreen(const CStateManager& mgr, CGuiFrame& frame,
                                   const CStringTable& pauseStrg, const CDependencyGroup& suitDgrp,
                                   const CDependencyGroup& ballDgrp)
: CPauseScreenBase(mgr, frame, pauseStrg)
, x19c_samusDoll(rs_new CSamusDoll(
      suitDgrp, ballDgrp,
      static_cast< CPlayerState::EPlayerSuit >(mgr.GetPlayerState()->GetCurrentSuitRaw() +
                                               4 * mgr.GetPlayerState()->GetIsFusionEnabled()),
      mgr.GetPlayerState()->GetCurrentBeam(),
      mgr.GetPlayerState()->HasPowerUp(CPlayerState::kIT_SpiderBall),
      mgr.GetPlayerState()->HasPowerUp(CPlayerState::kIT_GrappleBeam)))
, x1a0_(0.f)
, x1a4_textBodyAlpha(0.f)
, x1a8_state(kS_Active)
, x1ac_textLeaveRequested(false) {}

CInventoryScreen::~CInventoryScreen() {
  for (int i = 0; i < 5; ++i) {
    xd8_textpane_titles[i]->TextSupport().SetFontColor(CColor::White());
    x15c_model_righttitledecos[i]->SetColor(CColor::White());
    x144_model_titles[i]->SetColor(CColor::White());
  }

  x8c_model_righthighlight->SetColor(CColor::White());
}

float CInventoryScreen::GetCameraYBias() const {
  return CMath::AbsF(x19c_samusDoll->GetViewInterpolation());
}

void CInventoryScreen::ProcessInput(const CFinalInput& input) {
  if (x1a8_state == kS_Inactive) {
    return;
  }

  if (x19c_samusDoll->IsViewInterpolating()) {
    return;
  }

  float viewInterp = CMath::AbsF(x19c_samusDoll->GetViewInterpolation());
  if (input.PY() && x19c_samusDoll->IsLoaded() && (viewInterp > 0.f || x10_mode != kM_TextScroll)) {
    x19c_samusDoll->BeginViewInterpolate(viewInterp == 0.f);
  }

  if (viewInterp == 1.f) {
    if (input.PStart()) {
      x19c_samusDoll->BeginViewInterpolate(false);
      x198_26_exitPauseScreen = true;
    } else if (input.PB()) {
      x19c_samusDoll->BeginViewInterpolate(false);
    }
  }

  if (CMath::AbsF(x19c_samusDoll->GetViewInterpolation()) > 0.f) {
    float motionAmt = 6.f * input.Time();
    float circleUp = ControlMapper::GetAnalogInput(ControlMapper::kC_MapCircleUp, input);
    float circleDown = ControlMapper::GetAnalogInput(ControlMapper::kC_MapCircleDown, input);
    float circleLeft = ControlMapper::GetAnalogInput(ControlMapper::kC_MapCircleLeft, input);
    float circleRight = ControlMapper::GetAnalogInput(ControlMapper::kC_MapCircleRight, input);
    float moveForward = ControlMapper::GetAnalogInput(ControlMapper::kC_MapMoveForward, input);
    float moveBack = ControlMapper::GetAnalogInput(ControlMapper::kC_MapMoveBack, input);
    float moveLeft = ControlMapper::GetAnalogInput(ControlMapper::kC_MapMoveLeft, input);
    float moveRight = ControlMapper::GetAnalogInput(ControlMapper::kC_MapMoveRight, input);
    float zoomIn = ControlMapper::GetAnalogInput(ControlMapper::kC_MapZoomIn, input);
    float zoomOut = ControlMapper::GetAnalogInput(ControlMapper::kC_MapZoomOut, input);

    CVector3f moveVec(0.25f * motionAmt * (moveRight - moveLeft),
                      0.5f * motionAmt * (zoomIn - zoomOut),
                      0.25f * motionAmt * (moveForward - moveBack));
    x19c_samusDoll->SetOffset(moveVec, input.Time());
    x19c_samusDoll->SetRotation(0.5f * motionAmt * (circleDown - circleUp),
                                0.5f * motionAmt * (circleRight - circleLeft), input.Time());
  } else {
    x1ad_textViewing = false;

    if (x10_mode == kM_TextScroll) {
      int oldPage = x174_textpane_body->TextSupport().GetPageCounter();
      int newPage = oldPage;
      int totalCount = x174_textpane_body->TextSupport().GetTotalPageCount();
      bool lastPage = oldPage == totalCount - 1;

      if (totalCount != -1) {
        if (input.PLAUp()) {
          newPage = rstl::max_val(0, oldPage - 1);
        } else if (input.PLADown() || (input.PA() && !lastPage)) {
          newPage = rstl::min_val(totalCount - 1, oldPage + 1);
        }

        x174_textpane_body->TextSupport().SetPage(newPage);
        if (oldPage != newPage) {
          CSfxManager::SfxStart(0x5a4, 0x7f, 0x40, false);
        }

        x198_28_pulseTextArrowTop = newPage > 0;
        x198_29_pulseTextArrowBottom = !lastPage;
      } else {
        x198_28_pulseTextArrowTop = x198_29_pulseTextArrowBottom = false;
      }

      if (!x1ac_textLeaveRequested) {
        x1ac_textLeaveRequested = input.PB() || ((input.PA() && lastPage) ? true : false);
      }
      x1ad_textViewing = !x1ac_textLeaveRequested;
    } else {
      x198_28_pulseTextArrowTop = x198_29_pulseTextArrowBottom = false;
    }

    if (x1a8_state != kS_Active) {
      x1ad_textViewing = false;
    }

    CPauseScreenBase::ProcessInput(input);
  }
}

void CInventoryScreen::ChangedMode(EMode oldMode) {
  if (x10_mode == kM_TextScroll) {
    x1ad_textViewing = true;
    UpdateTextBody();
  }
}

void CInventoryScreen::UpdateTextBody() {
  x1ac_textLeaveRequested = false;

  int leftSel = x70_tablegroup_leftlog->GetUserSelection();
  const SInventoryCategory& category = skInventoryRegistry[leftSel];
  const SInventoryItem& item = category.items[x1c_rightSel];

  rstl::wstring text = xc_pauseStrg.GetString(item.entryStrIdx);
  if (item.idx == 23) {
    const CPlayerState& playerState = *x4_mgr.GetPlayerState();
    text.append(
        xc_pauseStrg.GetString(playerState.HasPowerUp(CPlayerState::kIT_SuperMissile) ? 71 : 65),
        -1);
    text.append(
        xc_pauseStrg.GetString(playerState.HasPowerUp(CPlayerState::kIT_IceSpreader) ? 73 : 65),
        -1);
    text.append(
        xc_pauseStrg.GetString(playerState.HasPowerUp(CPlayerState::kIT_Wavebuster) ? 75 : 65), -1);
    text.append(
        xc_pauseStrg.GetString(playerState.HasPowerUp(CPlayerState::kIT_Flamethrower) ? 77 : 65),
        -1);
  }

  x174_textpane_body->TextSupport().SetText(text, true);
  x174_textpane_body->TextSupport().SetPage(0);
}

bool CInventoryScreen::VReady() const { return true; }

void CInventoryScreen::VActivate() {
  for (int i = 0; i < 5; ++i) {
    CGuiTextPane* category = xa8_textpane_categories[i];
    if (HasLeftInventoryItem(i)) {
      category->TextSupport().SetText(xc_pauseStrg.GetString(i + 10));
    } else {
      category->TextSupport().SetText(rstl::wstring_l(skUnknownItem));
      x70_tablegroup_leftlog->GetWorkerWidget(i)->SetIsSelectable(false);
    }
  }

  x178_textpane_title->TextSupport().SetText(xc_pauseStrg.GetString(9));
  x180_basewidget_yicon->SetVisibility(true, kTM_Children);

  for (int i = 5; i < 5; ++i) {
    x70_tablegroup_leftlog->GetWorkerWidget(i)->SetIsSelectable(false);
  }
}

bool CInventoryScreen::ShouldLeftTableAdvance() { return x19c_samusDoll->IsLoaded(); }

bool CInventoryScreen::ShouldRightTableAdvance() {
  return CMath::AbsF(x19c_samusDoll->GetViewInterpolation()) == 0.f;
}

uint CInventoryScreen::GetRightTableCount() const {
  return skInventoryRegistry[x70_tablegroup_leftlog->GetUserSelection()].count;
}

void CInventoryScreen::Draw(float transInterp, float totalAlpha, float yOff) const {
  CPauseScreenBase::Draw(transInterp, totalAlpha,
                         CMath::AbsF(x19c_samusDoll->GetViewInterpolation()));
  x19c_samusDoll->Draw(x4_mgr, transInterp * (1.f - x1a4_textBodyAlpha));
}

void CInventoryScreen::Touch() {
  CPauseScreenBase::Touch();
  x19c_samusDoll->Touch();
}

void CInventoryScreen::Update(float dt, CRandom16& rand, CArchitectureQueue& queue) {
  CPauseScreenBase::Update(dt, rand, queue);
  x19c_samusDoll->Update(dt, rand);

  if (x10_mode == kM_TextScroll) {
    if (x1ad_textViewing) {
      x1a4_textBodyAlpha = rstl::min_val(1.f, 4.f * dt + x1a4_textBodyAlpha);
    } else {
      x1a4_textBodyAlpha = rstl::max_val(0.f, x1a4_textBodyAlpha - 4.f * dt);
    }

    CColor bodyColor = CColor::White().WithAlphaOf(x1a4_textBodyAlpha);
    x174_textpane_body->SetColor(bodyColor);
    x180_basewidget_yicon->SetColor(CColor::White().WithAlphaOf(1.f - x1a4_textBodyAlpha));

    if (x1a4_textBodyAlpha == 0.f && x1a8_state == kS_Active) {
      ChangeMode(kM_RightTable);
    }
  }

  bool morphball = x70_tablegroup_leftlog->GetUserSelection() == 1 && x10_mode != kM_LeftTable;
  x19c_samusDoll->CheckTransition(morphball);
  UpdateSamusDollPulses();

  if (x1a8_state == kS_Leaving && x1a4_textBodyAlpha == 0.f) {
    x1a8_state = kS_Inactive;
  }
}

void CInventoryScreen::UpdateRightTable() {
  CPauseScreenBase::UpdateRightTable();

  int minSel = INT_MAX;
  int leftSel = x70_tablegroup_leftlog->GetUserSelection();
  const SInventoryCategory& category = skInventoryRegistry[leftSel];

  for (int i = 0; i < 5; ++i) {
    CGuiTextPane* title = xd8_textpane_titles[i];
    if (i < category.count) {
      const SInventoryItem& item = category.items[i];
      if (HasRightInventoryItem(item.idx)) {
        title->TextSupport().SetText(xc_pauseStrg.GetString(item.nameStrIdx));
        x84_tablegroup_rightlog->GetWorkerWidget(i + 1)->SetIsSelectable(true);
        if (i < minSel) {
          minSel = i;
        }
      } else {
        title->TextSupport().SetText(rstl::wstring_l(skUnknownItem));
        x84_tablegroup_rightlog->GetWorkerWidget(i + 1)->SetIsSelectable(false);
      }
    } else {
      title->TextSupport().SetText(rstl::wstring_l(L""));
    }
  }

  if (minSel != INT_MAX) {
    x1c_rightSel = minSel;
    SetRightTableSelection(x1c_rightSel, x1c_rightSel);
  }

  x84_tablegroup_rightlog->GetWorkerWidget(0)->SetIsSelectable(false);
  x84_tablegroup_rightlog->GetWorkerWidget(x84_tablegroup_rightlog->GetElementCount() - 1)
      ->SetIsSelectable(false);

  UpdateRightLogColors(false, gpTweakGuiColors->GetPauseItemAmberColor(),
                       gpTweakGuiColors->GetPauseItemAmberColor().WithAlphaOf(0.5f));
}

void CInventoryScreen::UpdateRightLogColors(bool active, const CColor& activeColor,
                                            const CColor& inactiveColor) {
  x80_basewidget_rightlog->SetColor(active ? CColor::White()
                                           : CColor::White().WithAlphaOf(0.712291f));

  int leftSel = x70_tablegroup_leftlog->GetUserSelection();
  const SInventoryCategory& category = skInventoryRegistry[leftSel];

  for (int i = 0; i < 5; ++i) {
    CGuiTextPane* title = xd8_textpane_titles[i];
    bool useActiveColor = true;
    if (i < category.count && IsRightInventoryItemEquipped(category.items[i].idx)) {
      x15c_model_righttitledecos[i]->SetColor(gpTweakGuiColors->GetPauseItemBlueColor());
      title->TextSupport().SetFontColor(gpTweakGuiColors->GetPauseItemBlueColor());
      useActiveColor = false;
    }

    if (useActiveColor) {
      x15c_model_righttitledecos[i]->SetColor(activeColor);
      title->TextSupport().SetFontColor(activeColor);
    }
  }
}

void CInventoryScreen::UpdateRightLogHighlight(bool active, int idx, const CColor& activeColor,
                                               const CColor& inactiveColor) {
  CColor activeBlue = CColor::Modulate(gpTweakGuiColors->GetPauseItemBlueColor(), activeColor);
  CColor inactiveBlue = CColor::Modulate(gpTweakGuiColors->GetPauseItemBlueColor(), inactiveColor);
  CColor activeAmber = CColor::Modulate(gpTweakGuiColors->GetPauseItemAmberColor(), activeColor);
  CColor inactiveAmber =
      CColor::Modulate(gpTweakGuiColors->GetPauseItemAmberColor(), inactiveColor);

  int leftSel = x70_tablegroup_leftlog->GetUserSelection();
  const SInventoryCategory& category = skInventoryRegistry[leftSel];

  for (int i = 0; i < 5; ++i) {
    bool selected = idx == i && active;
    bool useAmber = true;
    if (i < category.count && IsRightInventoryItemEquipped(category.items[i].idx) && selected) {
      useAmber = false;
      x8c_model_righthighlight->SetColor(gpTweakGuiColors->GetPauseItemBlueColor());
    }

    x144_model_titles[i]->SetColor(selected ? activeAmber : inactiveAmber);
    if (useAmber && selected) {
      x8c_model_righthighlight->SetColor(activeAmber);
    }
  }
}

void CInventoryScreen::TransitioningAway() { x1a8_state = kS_Leaving; }

bool CInventoryScreen::InputDisabled() const {
  if (CMath::AbsF(x19c_samusDoll->GetViewInterpolation()) > 0.f) {
    return true;
  }

  return x1a8_state == kS_Leaving;
}

void CInventoryScreen::RightTableSelectionChanged(int oldSel, int newSel) {}

void CInventoryScreen::UpdateSamusDollPulses() {
  bool pulseSuit = false;
  bool pulseBeam = false;
  bool pulseGrapple = false;
  bool pulseBoots = false;
  bool pulseVisor = false;
  int userSel = x70_tablegroup_leftlog->GetUserSelection();

  if (x10_mode == kM_RightTable) {
    if (userSel == 2) {
      pulseSuit = true;
    } else if (userSel == 0) {
      pulseBeam = true;
    } else if (userSel == 3) {
      pulseVisor = true;
    } else if (userSel == 4) {
      pulseGrapple = skSecondaryItems[x1c_rightSel].idx == 20;
      pulseBoots = skSecondaryItems[x1c_rightSel].idx == 19;
      if (skSecondaryItems[x1c_rightSel].idx == 21) {
        pulseBeam = true;
      }
    }
  }

  x19c_samusDoll->SetPulseSuit(pulseSuit);
  x19c_samusDoll->SetPulseBeam(pulseBeam);
  x19c_samusDoll->SetPulseGrapple(pulseGrapple);
  x19c_samusDoll->SetPulseBoots(pulseBoots);
  x19c_samusDoll->SetPulseVisor(pulseVisor);
}

bool CInventoryScreen::HasLeftInventoryItem(int idx) const {
  const CPlayerState& playerState = *x4_mgr.GetPlayerState();

  switch (idx) {
  case 0:
    return true;
  case 1:
    return playerState.HasPowerUp(CPlayerState::kIT_MorphBall);
  case 2:
    return true;
  case 3:
    return true;
  case 4:
    return playerState.HasPowerUp(CPlayerState::kIT_SpaceJumpBoots) ||
           playerState.HasPowerUp(CPlayerState::kIT_GrappleBeam) ||
           playerState.HasPowerUp(CPlayerState::kIT_Missiles) ||
           playerState.HasPowerUp(CPlayerState::kIT_ChargeBeam) ||
           playerState.HasPowerUp(CPlayerState::kIT_SuperMissile) ||
           playerState.HasPowerUp(CPlayerState::kIT_IceSpreader) ||
           playerState.HasPowerUp(CPlayerState::kIT_Wavebuster) ||
           playerState.HasPowerUp(CPlayerState::kIT_Flamethrower);
  default:
    return false;
  }
}

bool CInventoryScreen::HasRightInventoryItem(int idx) const {
  const CPlayerState& playerState = *x4_mgr.GetPlayerState();

  switch (idx) {
  case 0:
    return true;
  case 1:
    return playerState.HasPowerUp(CPlayerState::kIT_IceBeam);
  case 2:
    return playerState.HasPowerUp(CPlayerState::kIT_WaveBeam);
  case 3:
    return playerState.HasPowerUp(CPlayerState::kIT_PlasmaBeam);
  case 4:
    return playerState.HasPowerUp(CPlayerState::kIT_PhazonSuit);
  case 5:
    return playerState.HasPowerUp(CPlayerState::kIT_MorphBall);
  case 6:
    return playerState.HasPowerUp(CPlayerState::kIT_BoostBall);
  case 7:
    return playerState.HasPowerUp(CPlayerState::kIT_SpiderBall);
  case 8:
    return playerState.HasPowerUp(CPlayerState::kIT_MorphBallBombs);
  case 9:
    return playerState.HasPowerUp(CPlayerState::kIT_PowerBombs);
  case 10:
    return true;
  case 11:
    return playerState.HasPowerUp(CPlayerState::kIT_VariaSuit);
  case 12:
    return playerState.HasPowerUp(CPlayerState::kIT_GravitySuit);
  case 13:
    return playerState.HasPowerUp(CPlayerState::kIT_PhazonSuit);
  case 14:
    return playerState.HasPowerUp(CPlayerState::kIT_EnergyTanks);
  case 15:
    return true;
  case 16:
    return playerState.HasPowerUp(CPlayerState::kIT_ScanVisor);
  case 17:
    return playerState.HasPowerUp(CPlayerState::kIT_XRayVisor);
  case 18:
    return playerState.HasPowerUp(CPlayerState::kIT_ThermalVisor);
  case 19:
    return playerState.HasPowerUp(CPlayerState::kIT_SpaceJumpBoots);
  case 20:
    return playerState.HasPowerUp(CPlayerState::kIT_GrappleBeam);
  case 21:
    return playerState.HasPowerUp(CPlayerState::kIT_Missiles);
  case 22:
    return playerState.HasPowerUp(CPlayerState::kIT_ChargeBeam);
  case 23:
    return playerState.HasPowerUp(CPlayerState::kIT_SuperMissile) ||
           playerState.HasPowerUp(CPlayerState::kIT_IceSpreader) ||
           playerState.HasPowerUp(CPlayerState::kIT_Wavebuster) ||
           playerState.HasPowerUp(CPlayerState::kIT_Flamethrower);
  default:
    return false;
  }
}

bool CInventoryScreen::IsRightInventoryItemEquipped(int idx) const {
  const CPlayerState& playerState = *x4_mgr.GetPlayerState();

  switch (idx) {
  case 0:
    return playerState.GetCurrentBeam() == CPlayerState::kBI_Power;
  case 1:
    return playerState.GetCurrentBeam() == CPlayerState::kBI_Ice;
  case 2:
    return playerState.GetCurrentBeam() == CPlayerState::kBI_Wave;
  case 3:
    return playerState.GetCurrentBeam() == CPlayerState::kBI_Plasma;
  case 4:
    return playerState.GetCurrentBeam() == CPlayerState::kBI_Phazon2;
  case 5:
    return playerState.HasPowerUp(CPlayerState::kIT_MorphBall);
  case 6:
    return playerState.HasPowerUp(CPlayerState::kIT_BoostBall);
  case 7:
    return playerState.HasPowerUp(CPlayerState::kIT_SpiderBall);
  case 8:
    return playerState.HasPowerUp(CPlayerState::kIT_MorphBallBombs);
  case 9:
    return playerState.HasPowerUp(CPlayerState::kIT_PowerBombs);
  case 10:
    return playerState.GetCurrentSuitRaw() == CPlayerState::kPS_Power;
  case 11:
    return playerState.GetCurrentSuitRaw() == CPlayerState::kPS_Varia;
  case 12:
    return playerState.GetCurrentSuitRaw() == CPlayerState::kPS_Gravity;
  case 13:
    return playerState.GetCurrentSuitRaw() == CPlayerState::kPS_Phazon;
  case 14:
    return playerState.HasPowerUp(CPlayerState::kIT_EnergyTanks);
  case 15:
    return playerState.GetCurrentVisor() == CPlayerState::kPV_Combat;
  case 16:
    return playerState.GetCurrentVisor() == CPlayerState::kPV_Scan;
  case 17:
    return playerState.GetCurrentVisor() == CPlayerState::kPV_XRay;
  case 18:
    return playerState.GetCurrentVisor() == CPlayerState::kPV_Thermal;
  case 19:
    return playerState.HasPowerUp(CPlayerState::kIT_SpaceJumpBoots);
  case 20:
    return playerState.HasPowerUp(CPlayerState::kIT_GrappleBeam);
  case 21:
    return playerState.HasPowerUp(CPlayerState::kIT_Missiles);
  case 22:
    return playerState.HasPowerUp(CPlayerState::kIT_ChargeBeam);
  case 23:
    return playerState.HasPowerUp(CPlayerState::kIT_SuperMissile) ||
           playerState.HasPowerUp(CPlayerState::kIT_IceSpreader) ||
           playerState.HasPowerUp(CPlayerState::kIT_Wavebuster) ||
           playerState.HasPowerUp(CPlayerState::kIT_Flamethrower);
  default:
    return false;
  }
}

bool CInventoryScreen::IsRightLogDynamic() const { return true; }
