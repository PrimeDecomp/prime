#include "MetroidPrime/CPauseScreen.hpp"
#include "MetroidPrime/CInventoryScreen.hpp"
#include "MetroidPrime/CLogBookScreen.hpp"
#include "MetroidPrime/COptionsScreen.hpp"

#include "GuiSys/CAuiImagePane.hpp"
#include "GuiSys/CGuiFrame.hpp"
#include "GuiSys/CGuiModel.hpp"
#include "GuiSys/CGuiSliderGroup.hpp"
#include "GuiSys/CGuiSys.hpp"
#include "GuiSys/CGuiTableGroup.hpp"
#include "GuiSys/CGuiTextPane.hpp"
#include "GuiSys/CGuiWidgetDrawParms.hpp"
#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/Basics/CBasics.hpp"
#include "Kyoto/CDvdRequest.hpp"
#include "Kyoto/CFrameDelayedKiller.hpp"
#include "Kyoto/CResFactory.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Input/CFinalInput.hpp"
#include "Kyoto/Streams/CMemoryInStream.hpp"
#include "Kyoto/Text/CStringTable.hpp"
#include "MetroidPrime/CControlMapper.hpp"
#include "MetroidPrime/Factories/CScannableObjectInfo.hpp"
#include "MetroidPrime/Player/CGameState.hpp"
#include "MetroidPrime/Tweaks/CTweakGuiColors.hpp"
#include "MetroidPrime/Tweaks/CTweakPlayerRes.hpp"
#include "rstl/StringExtras.hpp"
#include "rstl/math.hpp"
#include <float.h>

CPauseScreen::ESubScreen CPauseScreen::GetPreviousSubscreen(ESubScreen screen) {
  if (screen == kSS_Inventory) {
    return kSS_Options;
  }
  if (screen == kSS_Options) {
    return kSS_LogBook;
  }
  if (screen == kSS_LogBook) {
    return kSS_Inventory;
  }
  return kSS_ToGame;
}

CPauseScreen::ESubScreen CPauseScreen::GetNextSubscreen(ESubScreen screen) {
  if (screen == kSS_Inventory) {
    return kSS_LogBook;
  }
  if (screen == kSS_Options) {
    return kSS_Inventory;
  }
  if (screen == kSS_LogBook) {
    return kSS_Options;
  }
  return kSS_ToGame;
}

CPauseScreen::CPauseScreen(int subscreen, const CDependencyGroup& suitDgrp,
                           const CDependencyGroup& ballDgrp)
: x0_initialSubscreen(static_cast< ESubScreen >(subscreen))
, x4_direction(2)
, x8_curSubscreen(kSS_ToGame)
, xc_nextSubscreen(kSS_ToGame)
, x10_alphaInterp(0.f)
, x14_strgPauseScreen(gpSimplePool->GetObj("STRG_PauseScreen"))
, x20_suitDgrp(suitDgrp)
, x24_ballDgrp(ballDgrp)
, x28_pauseScreenInstructions(gpSimplePool->GetObj("FRME_PauseScreenInstructions"))
, x34_loadedPauseScreenInstructions(nullptr)
, x38_textpane_l1(nullptr)
, x3c_textpane_r(nullptr)
, x40_textpane_a(nullptr)
, x44_textpane_b(nullptr)
, x48_textpane_return(nullptr)
, x4c_textpane_next(nullptr)
, x50_textpane_back(nullptr)
, x54_frmePauseScreenId(gpResourceFactory->GetResourceIdByName("FRME_PauseScreen")->GetId())
, x58_frmePauseScreenBufSz(
      gpResourceFactory->ResourceSize(SObjectTag('FRME', x54_frmePauseScreenId)))
, x5c_frmePauseScreenBuf(
      static_cast< char* >(CMemory::Alloc(x58_frmePauseScreenBufSz, IAllocator::kHI_RoundUpLen)))
, x60_loadTok(gpResourceFactory->GetResLoader().LoadResourceAsync(
      SObjectTag('FRME', x54_frmePauseScreenId), x5c_frmePauseScreenBuf.get()))
, x78_activeIdx(0)
, x7c_screens(rstl::auto_ptr< CPauseScreenBase >())
, x90_resourcesLoaded(false)
, x91_initialTransition(true) {
  x14_strgPauseScreen.Lock();
  x28_pauseScreenInstructions.Lock();
  CSfxManager::SfxStart(0x59b, 0x7f, 0x40, false, CSfxManager::kMedPriority, false,
                        CSfxManager::kAllAreas);
}

CPauseScreen::~CPauseScreen() { CFrameDelayedKiller::StallAndFlushAllAllocations(); }

void CPauseScreen::InitializeFrameGlue() {
  x38_textpane_l1 =
      static_cast< CGuiTextPane* >(x34_loadedPauseScreenInstructions->FindWidget("textpane_l1"));
  x3c_textpane_r =
      static_cast< CGuiTextPane* >(x34_loadedPauseScreenInstructions->FindWidget("textpane_r"));
  x40_textpane_a =
      static_cast< CGuiTextPane* >(x34_loadedPauseScreenInstructions->FindWidget("textpane_a"));
  x44_textpane_b =
      static_cast< CGuiTextPane* >(x34_loadedPauseScreenInstructions->FindWidget("textpane_b"));
  x48_textpane_return = static_cast< CGuiTextPane* >(
      x34_loadedPauseScreenInstructions->FindWidget("textpane_return"));
  x4c_textpane_next =
      static_cast< CGuiTextPane* >(x34_loadedPauseScreenInstructions->FindWidget("textpane_next"));
  x50_textpane_back =
      static_cast< CGuiTextPane* >(x34_loadedPauseScreenInstructions->FindWidget("textpane_back"));
  x40_textpane_a->TextSupport().SetText(x14_strgPauseScreen.GetObject()->GetString(7));
  x40_textpane_a->TextSupport().SetFontColor(gpTweakGuiColors->GetPauseItemAmberColor());
  x44_textpane_b->TextSupport().SetText(x14_strgPauseScreen.GetObject()->GetString(6));
  x44_textpane_b->TextSupport().SetFontColor(gpTweakGuiColors->GetPauseItemAmberColor());
  x40_textpane_a->SetColor(CColor(0u));
  x44_textpane_b->SetColor(CColor(0u));
  CGuiWidget* deco = x34_loadedPauseScreenInstructions->FindWidget("basewidget_deco");
  if (deco != nullptr) {
    deco->SetColor(gpTweakGuiColors->GetPauseItemAmberColor().WithAlphaModulatedBy(0.75f));
  }
}

bool CPauseScreen::CheckLoadComplete(const CStateManager& mgr) {
  if (x90_resourcesLoaded) {
    return true;
  }
  if (!x14_strgPauseScreen.TryCache()) {
    return false;
  }
  if (x34_loadedPauseScreenInstructions == nullptr) {
    if (!x28_pauseScreenInstructions.TryCache()) {
      return false;
    }
    if (!x28_pauseScreenInstructions.GetObject()->GetIsFinishedLoading()) {
      return false;
    }
    x34_loadedPauseScreenInstructions = x28_pauseScreenInstructions.GetObject();
    InitializeFrameGlue();
  }
  if (!x60_loadTok.null()) {
    if (x60_loadTok->IsComplete()) {
      {
        CMemoryInStream in(x5c_frmePauseScreenBuf.get(), x58_frmePauseScreenBufSz);
        x64_frameInsts.push_back(
            CGuiFrame::CreateFrame(x54_frmePauseScreenId, *gGuiSystem, in, gpSimplePool));
      }
      {
        CMemoryInStream in(x5c_frmePauseScreenBuf.get(), x58_frmePauseScreenBufSz);
        x64_frameInsts.push_back(
            CGuiFrame::CreateFrame(x54_frmePauseScreenId, *gGuiSystem, in, gpSimplePool));
      }
      x60_loadTok = nullptr;
      x5c_frmePauseScreenBuf = nullptr;
      x58_frmePauseScreenBufSz = 0;
    } else {
      return false;
    }
  }

  if (!x64_frameInsts[0]->GetIsFinishedLoading() || !x64_frameInsts[1]->GetIsFinishedLoading()) {
    return false;
  }
  x90_resourcesLoaded = true;
  StartTransition(FLT_EPSILON, mgr, x0_initialSubscreen, 2);
  x91_initialTransition = true;
  return true;
}

CPauseScreenBase* CPauseScreen::BuildPauseSubScreen(ESubScreen screen, const CStateManager& mgr,
                                                    CGuiFrame& frame) const {
  const CStringTable& pauseStrg = *x14_strgPauseScreen.GetObject();
  switch (screen) {
  case kSS_LogBook:
    return rs_new CLogBookScreen(mgr, frame, pauseStrg);
  case kSS_Options:
    return rs_new COptionsScreen(mgr, frame, pauseStrg);
  case kSS_Inventory:
    return rs_new CInventoryScreen(mgr, frame, pauseStrg, x20_suitDgrp, x24_ballDgrp);
  case kSS_ToGame:
  case kSS_ToMap:
  default:
    return nullptr;
  }
}

void CPauseScreen::StartTransition(float time, const CStateManager& mgr, ESubScreen screen,
                                   int direction) {
  if (screen == xc_nextSubscreen) {
    return;
  }
  xc_nextSubscreen = screen;
  x4_direction = direction;
  x10_alphaInterp = time;
  rstl::auto_ptr< CPauseScreenBase >& curScreen = x7c_screens[x78_activeIdx];
  rstl::auto_ptr< CPauseScreenBase >& nextScreen = x7c_screens[1 - x78_activeIdx];
  rstl::auto_ptr< CGuiFrame >& nextFrame = x64_frameInsts[1 - x78_activeIdx];
  nextScreen = BuildPauseSubScreen(xc_nextSubscreen, mgr, *nextFrame);
  if (!curScreen.null()) {
    curScreen->TransitioningAway();
  }
  x91_initialTransition = false;
}

void CPauseScreen::Update(float dt, const CStateManager& mgr, CRandom16& rand,
                          CArchitectureQueue& queue) {
  if (!CheckLoadComplete(mgr)) {
    return;
  }
  rstl::auto_ptr< CPauseScreenBase >& curScreen = x7c_screens[x78_activeIdx];
  rstl::auto_ptr< CPauseScreenBase >& otherScreen = x7c_screens[1 - x78_activeIdx];
  if (x8_curSubscreen != xc_nextSubscreen) {
    x10_alphaInterp = rstl::max_val(0.f, x10_alphaInterp - dt);
    if (curScreen.null() || !curScreen->InputDisabled()) {
      if (otherScreen.null() || otherScreen->IsReady()) {
        if (x10_alphaInterp == 0.f) {
          TransitionComplete();
        }
      }
    }
  }
  rstl::auto_ptr< CPauseScreenBase >& screen = x7c_screens[x78_activeIdx];
  if (!screen.null()) {
    screen->Update(dt, rand, queue);
    float interp = x10_alphaInterp / 0.5f;
    float alpha =
        rstl::min_val(screen->GetAlpha(), x8_curSubscreen != xc_nextSubscreen ? interp : 1.f);
    x40_textpane_a->SetColor(CColor::White().WithAlphaOf(alpha));
    x44_textpane_b->SetColor(CColor::White().WithAlphaOf(alpha));
  }
}

void CPauseScreen::PreDraw() {
  if (!IsLoaded()) {
    return;
  }
  rstl::auto_ptr< CPauseScreenBase >& screen = x7c_screens[x78_activeIdx];
  if (!screen.null() && screen->CanDraw()) {
    screen->Touch();
  }
}

void CPauseScreen::TransitionComplete() {
  x7c_screens[x78_activeIdx] = rstl::auto_ptr< CPauseScreenBase >();
  x78_activeIdx = 1 - x78_activeIdx;
  x8_curSubscreen = xc_nextSubscreen;
  x40_textpane_a->TextSupport().SetText(
      x14_strgPauseScreen.GetObject()->GetString(GetPreviousSubscreen(x8_curSubscreen) + 6));
  x44_textpane_b->TextSupport().SetText(
      x14_strgPauseScreen.GetObject()->GetString(GetNextSubscreen(x8_curSubscreen) + 6));
}

void CPauseScreen::Draw() const {
  if (!IsLoaded()) {
    return;
  }
  float interp = x10_alphaInterp == 0.f ? 1.f : x10_alphaInterp / 0.5f;
  float yOff = 0.f;
  float totalAlpha = 0.f;
  const rstl::auto_ptr< CPauseScreenBase >& screen = x7c_screens[x78_activeIdx];
  if (!screen.null() && screen->CanDraw()) {
    float initInterp = rstl::min_val(screen->GetAlpha(), interp);
    float alpha;
    if (IsInvalidSubscreen(xc_nextSubscreen)) {
      alpha = interp;
    } else if (x91_initialTransition) {
      alpha = initInterp;
    } else {
      alpha = 1.f;
    }
    totalAlpha = alpha;
    screen->Draw(x8_curSubscreen != xc_nextSubscreen ? interp : 1.f, alpha, 0.f);
    yOff = screen->GetCameraYBias();
  }
  x34_loadedPauseScreenInstructions->Draw(
      CGuiWidgetDrawParms(totalAlpha, CVector3f(0.f, 15.f * yOff, 0.f)));
}

void CPauseScreen::ProcessControllerInput(const CStateManager& mgr, const CFinalInput& input) {
  if (!IsLoaded()) {
    return;
  }
  if (IsInvalidSubscreen(x8_curSubscreen)) {
    return;
  }
  bool bExits = false;
  rstl::auto_ptr< CPauseScreenBase >& screen = x7c_screens[x78_activeIdx];
  if (!screen.null()) {
    if (screen->GetMode() == CPauseScreenBase::kM_LeftTable) {
      bExits = true;
    }
    screen->ProcessInput(input);
  }
  if (InputEnabled()) {
    bool invalid = IsInvalidSubscreen(x8_curSubscreen);
    if (input.PStart() || (input.PB() && bExits) ||
        (!x7c_screens[x78_activeIdx].null() &&
         x7c_screens[x78_activeIdx]->ShouldExitPauseScreen())) {
      CSfxManager::SfxStart(0x59a, 0x7f, 0x40, false, CSfxManager::kMedPriority, false,
                            CSfxManager::kAllAreas);
      StartTransition(0.5f, mgr, kSS_ToGame, 2);
    } else if (ControlMapper::GetPressInput(ControlMapper::kC_PreviousPauseScreen, input)) {
      CSfxManager::SfxStart(0x599, 0x7f, 0x40, false, CSfxManager::kMedPriority, false,
                            CSfxManager::kAllAreas);
      int direction = 0;
      if (invalid) {
        direction = 2;
      }
      StartTransition(0.5f, mgr, GetPreviousSubscreen(x8_curSubscreen), direction);
    } else if (ControlMapper::GetPressInput(ControlMapper::kC_NextPauseScreen, input)) {
      CSfxManager::SfxStart(0x599, 0x7f, 0x40, false, CSfxManager::kMedPriority, false,
                            CSfxManager::kAllAreas);
      int direction = 1;
      if (invalid) {
        direction = 2;
      }
      StartTransition(0.5f, mgr, GetNextSubscreen(x8_curSubscreen), direction);
    }
  }
  int l = input.DLTrigger() ? 1 : 0;
  int r = input.DRTrigger() ? 1 : 0;
  int start = input.DStart() ? 1 : 0;
  int a = input.DA() ? 1 : 0;
  int b = input.DB() ? 1 : 0;
  const wchar_t image[] = L"&image=";
  const wchar_t end[] = L";";
  rstl::wstring text;
  text.reserve(256);
  text.append(image, -1);
  text.append(CStringExtras::ConvertToUNICODE(
      CBasics::Stringize("%8.8X", gpTweakPlayerRes->x70_lTrigger[l])));
  text.append(end, -1);
  x38_textpane_l1->TextSupport().SetText(text);
  text.assign(image, -1);
  text.append(CStringExtras::ConvertToUNICODE(
      CBasics::Stringize("%8.8X", gpTweakPlayerRes->x7c_rTrigger[r])));
  text.append(end, -1);
  x3c_textpane_r->TextSupport().SetText(text);
  text.assign(image, -1);
  text.append(CStringExtras::ConvertToUNICODE(
      CBasics::Stringize("%8.8X", gpTweakPlayerRes->x88_startButton[start])));
  text.append(end, -1);
  x48_textpane_return->TextSupport().SetText(text);
  text.assign(image, -1);
  text.append(CStringExtras::ConvertToUNICODE(
      CBasics::Stringize("%8.8X", gpTweakPlayerRes->x94_aButton[a])));
  text.append(end, -1);
  x50_textpane_back->TextSupport().SetText(text);
  text.assign(image, -1);
  text.append(CStringExtras::ConvertToUNICODE(
      CBasics::Stringize("%8.8X", gpTweakPlayerRes->xa0_bButton[b])));
  text.append(end, -1);
  x4c_textpane_next->TextSupport().SetText(text);
}

bool CPauseScreen::InputEnabled() const {
  if (x8_curSubscreen != xc_nextSubscreen) {
    return false;
  }
  const rstl::auto_ptr< CPauseScreenBase >& screen = x7c_screens[x78_activeIdx];
  if (!screen.null() && screen->InputDisabled()) {
    return false;
  }
  const rstl::auto_ptr< CPauseScreenBase >& otherScreen = x7c_screens[1 - x78_activeIdx];
  if (!otherScreen.null() && otherScreen->InputDisabled()) {
    return false;
  }
  return true;
}

bool CPauseScreen::IsLoaded() const { return x90_resourcesLoaded; }

bool CPauseScreen::ShouldSwitchToMapScreen() const {
  return IsLoaded() && x8_curSubscreen == kSS_ToMap && xc_nextSubscreen == kSS_ToMap;
}

bool CPauseScreen::ShouldSwitchToInGame() const {
  return IsLoaded() && x8_curSubscreen == kSS_ToGame && xc_nextSubscreen == kSS_ToGame;
}

float CPauseScreen::GetHelmetCamYOff() const {
  CPauseScreenBase* screen = x7c_screens[x78_activeIdx].get();
  if (screen == nullptr) {
    return 0.f;
  }
  return screen->GetCameraYBias();
}

CPauseScreenBase::CPauseScreenBase(const CStateManager& mgr, CGuiFrame& frame,
                                   const CStringTable& pauseStrg)
: x4_mgr(mgr)
, x8_frame(frame)
, xc_pauseStrg(pauseStrg)
, x10_mode(kM_Invalid)
, x14_alpha(0.f)
, x18_firstViewRightSel(0)
, x1c_rightSel(0)
, x20_(CVector3f::Zero())
, x2c_rightTableStart(CVector3f::Zero())
, x38_highlightPitch(0.f)
, x3c_sliderStart(CVector3f::Zero())
, x48_tableDoubleStart(CVector3f::Zero())
, x54_tableTripleStart(CVector3f::Zero())
, x68_basewidget_leftside(nullptr)
, x6c_basewidget_leftlog(nullptr)
, x70_tablegroup_leftlog(nullptr)
, x74_basewidget_leftguages(nullptr)
, x78_model_lefthighlight(nullptr)
, x7c_basewidget_rightside(nullptr)
, x80_basewidget_rightlog(nullptr)
, x84_tablegroup_rightlog(nullptr)
, x88_basewidget_rightguages(nullptr)
, x8c_model_righthighlight(nullptr)
, x174_textpane_body(nullptr)
, x178_textpane_title(nullptr)
, x180_basewidget_yicon(nullptr)
, x184_textpane_yicon(nullptr)
, x188_textpane_ytext(nullptr)
, x18c_slidergroup_slider(nullptr)
, x190_tablegroup_double(nullptr)
, x194_tablegroup_triple(nullptr)
, x198_24_ready(false)
, x198_25_handledInput(false)
, x198_26_exitPauseScreen(false)
, x198_27_canDraw(false)
, x198_28_pulseTextArrowTop(false)
, x198_29_pulseTextArrowBottom(false) {
  InitializeFrameGlue();
}

CPauseScreenBase::~CPauseScreenBase() { CFrameDelayedKiller::StallAndFlushAllAllocations(); }

void CPauseScreenBase::InitializeFrameGlue() {
  x60_basewidget_pivot = x8_frame.FindWidget("basewidget_pivot");
  x64_basewidget_bgframe = x8_frame.FindWidget("basewidget_bgframe");
  x68_basewidget_leftside = x8_frame.FindWidget("basewidget_leftside");
  x6c_basewidget_leftlog = x8_frame.FindWidget("basewidget_leftlog");
  x70_tablegroup_leftlog =
      static_cast< CGuiTableGroup* >(x8_frame.FindWidget("tablegroup_leftlog"));
  x74_basewidget_leftguages = x8_frame.FindWidget("basewidget_leftguages");
  x78_model_lefthighlight = static_cast< CGuiModel* >(x8_frame.FindWidget("model_lefthighlight"));
  x7c_basewidget_rightside = x8_frame.FindWidget("basewidget_rightside");
  x80_basewidget_rightlog = x8_frame.FindWidget("basewidget_rightlog");
  x84_tablegroup_rightlog =
      static_cast< CGuiTableGroup* >(x8_frame.FindWidget("tablegroup_rightlog"));
  x88_basewidget_rightguages = x8_frame.FindWidget("basewidget_rightguages");
  x8c_model_righthighlight = static_cast< CGuiModel* >(x8_frame.FindWidget("model_righthighlight"));
  x90_model_textarrowtop = static_cast< CGuiModel* >(x8_frame.FindWidget("model_textarrowtop"));
  x94_model_textarrowbottom =
      static_cast< CGuiModel* >(x8_frame.FindWidget("model_textarrowbottom"));
  x98_model_scrollleftup = static_cast< CGuiModel* >(x8_frame.FindWidget("model_scrollleftup"));
  x9c_model_scrollleftdown = static_cast< CGuiModel* >(x8_frame.FindWidget("model_scrollleftdown"));
  xa0_model_scrollrightup = static_cast< CGuiModel* >(x8_frame.FindWidget("model_scrollrightup"));
  xa4_model_scrollrightdown =
      static_cast< CGuiModel* >(x8_frame.FindWidget("model_scrollrightdown"));
  x178_textpane_title = static_cast< CGuiTextPane* >(x8_frame.FindWidget("textpane_title"));
  x178_textpane_title->TextSupport().SetFontColor(gpTweakGuiColors->GetPauseItemAmberColor());
  x174_textpane_body = static_cast< CGuiTextPane* >(x8_frame.FindWidget("textpane_body"));
  x174_textpane_body->SetIsVisible(true);
  x174_textpane_body->TextSupport().SetFontColor(gpTweakGuiColors->GetPauseItemAmberColor());
  x174_textpane_body->TextSupport().SetPage(0);
  x174_textpane_body->TextSupport().SetText(rstl::wstring_l(L""));
  x174_textpane_body->TextSupport().SetJustification(kJustification_Left);
  x174_textpane_body->TextSupport().SetVerticalJustification(kVerticalJustification_Top);
  x174_textpane_body->TextSupport().SetControlTXTRMap(
      &gpGameState->GameOptions().GetControlTXTRMap());
  x180_basewidget_yicon = x8_frame.FindWidget("basewidget_yicon");
  x180_basewidget_yicon->SetVisibility(false, kTM_Children);
  x17c_model_textalpha = static_cast< CGuiModel* >(x8_frame.FindWidget("model_textalpha"));
  x184_textpane_yicon = static_cast< CGuiTextPane* >(x8_frame.FindWidget("textpane_yicon"));
  x188_textpane_ytext = static_cast< CGuiTextPane* >(x8_frame.FindWidget("textpane_ytext"));
  {
    const wchar_t image[] = L"&image=";
    const wchar_t end[] = L";";
    rstl::wstring text;
    text.reserve(32);
    text.assign(image, -1);
    text.append(CStringExtras::ConvertToUNICODE(
        CBasics::Stringize("%8.8X", gpTweakPlayerRes->xb8_yButton[0])));
    text.append(end, -1);
    x184_textpane_yicon->TextSupport().SetText(text);
    x188_textpane_ytext->TextSupport().SetText(rstl::wstring_l(xc_pauseStrg.GetString(99)));
    x188_textpane_ytext->SetColor(gpTweakGuiColors->GetPauseItemAmberColor());
  }
  x18c_slidergroup_slider =
      static_cast< CGuiSliderGroup* >(x8_frame.FindWidget("slidergroup_slider"));
  x190_tablegroup_double = static_cast< CGuiTableGroup* >(x8_frame.FindWidget("tablegroup_double"));
  x194_tablegroup_triple = static_cast< CGuiTableGroup* >(x8_frame.FindWidget("tablegroup_triple"));
  x2c_rightTableStart =
      x84_tablegroup_rightlog->GetWorkerWidget(0)->GetIdleXform().GetTranslation();
  x38_highlightPitch =
      x84_tablegroup_rightlog->GetWorkerWidget(1)->GetIdleXform().GetTranslation().GetZ() -
      x2c_rightTableStart.GetZ();
  x3c_sliderStart = x18c_slidergroup_slider->GetIdleXform().GetTranslation();
  x48_tableDoubleStart = x190_tablegroup_double->GetIdleXform().GetTranslation();
  x54_tableTripleStart = x194_tablegroup_triple->GetIdleXform().GetTranslation();
  for (int i = 0; i < 5; ++i) {
    x70_tablegroup_leftlog->GetWorkerWidget(i)->SetIsSelectable(true);
  }
  CGuiWidget* worker;
  for (int i = 0; i < x84_tablegroup_rightlog->GetElementCount(); ++i) {
    worker = x84_tablegroup_rightlog->GetWorkerWidget(i);
    worker->SetO2PTransform(
        CTransform4f::Translate(x2c_rightTableStart + CVector3f(0.f, 0.f, x38_highlightPitch * i)));
    worker->SetIsSelectable(true);
  }
  for (int i = 0; i < 5; ++i) {
    CGuiTextPane* title = static_cast< CGuiTextPane* >(
        x8_frame.FindWidget(CBasics::Stringize("textpane_title%d", i + 1)));
    title->TextSupport().SetText(rstl::wstring_l(L""));
    xd8_textpane_titles.push_back(title);
    x144_model_titles.push_back(
        static_cast< CGuiModel* >(x8_frame.FindWidget(CBasics::Stringize("model_title%d", i + 1))));
  }
  for (int i = 0; i < 5; ++i) {
    x15c_model_righttitledecos.push_back(static_cast< CGuiModel* >(
        x8_frame.FindWidget(CBasics::Stringize("model_righttitledeco%d", i + 1))));
  }
  for (int i = 0; i < 5; ++i) {
    CGuiTextPane* category = static_cast< CGuiTextPane* >(
        x8_frame.FindWidget(CBasics::Stringize("textpane_category%d", i)));
    category->TextSupport().SetText(rstl::wstring_l(L""));
    xa8_textpane_categories.push_back(category);
    xc0_model_categories.push_back(
        static_cast< CGuiModel* >(x8_frame.FindWidget(CBasics::Stringize("model_category%d", i))));
  }
  for (int i = 0; i < 20; ++i) {
    xf0_imagePanes.push_back(static_cast< CAuiImagePane* >(
        x8_frame.FindWidget(CScannableObjectInfo::GetImagePaneName(i))));
  }
  x70_tablegroup_leftlog->SetUserSelection(0);
  x84_tablegroup_rightlog->SetUserSelection(1);
  x74_basewidget_leftguages->SetVisibility(false, kTM_Children);
  x88_basewidget_rightguages->SetVisibility(false, kTM_Children);
  x6c_basewidget_leftlog->SetColor(gpTweakGuiColors->GetPauseItemAmberColor());
  if (IsRightLogDynamic()) {
    UpdateRightLogColors(false, gpTweakGuiColors->GetPauseItemAmberColor(),
                         gpTweakGuiColors->GetPauseItemAmberColor().WithAlphaOf(0.5f));
  } else {
    x80_basewidget_rightlog->SetColor(gpTweakGuiColors->GetPauseItemAmberColor());
  }
  for (CGuiObject* obj = x64_basewidget_bgframe->ChildObject(); obj != nullptr;
       obj = obj->NextSibling()) {
    static_cast< CGuiWidget* >(obj)->SetColor(gpTweakGuiColors->GetPauseItemAmberColor());
  }
  CColor dimColor = gpTweakGuiColors->GetPauseItemAmberColor().WithAlphaOf(0.2f);
  x98_model_scrollleftup->SetColor(dimColor);
  x9c_model_scrollleftdown->SetColor(dimColor);
  xa0_model_scrollrightup->SetColor(dimColor);
  xa4_model_scrollrightdown->SetColor(dimColor);
  x90_model_textarrowtop->SetColor(dimColor);
  x94_model_textarrowbottom->SetColor(dimColor);
  x18c_slidergroup_slider->SetColor(gpTweakGuiColors->GetPauseItemAmberColor());
  x190_tablegroup_double->SetColor(gpTweakGuiColors->GetPauseItemAmberColor());
  x194_tablegroup_triple->SetColor(gpTweakGuiColors->GetPauseItemAmberColor());
  UpdateSideTable(x190_tablegroup_double);
  UpdateSideTable(x194_tablegroup_triple);
  UpdateSideTable(x70_tablegroup_leftlog);
  UpdateSideTable(x84_tablegroup_rightlog);
  x18c_slidergroup_slider->SetVisibility(false, kTM_Children);
  x190_tablegroup_double->SetIsVisible(false);
  x194_tablegroup_triple->SetIsVisible(false);
  x190_tablegroup_double->SetVertical(false);
  x194_tablegroup_triple->SetVertical(false);
  x70_tablegroup_leftlog->SetMenuAdvanceCallback(
      TFunctor1FromMethod< CPauseScreenBase, CGuiTableGroup* const >::Make(
          *this, &CPauseScreenBase::OnLeftTableAdvance));
  x70_tablegroup_leftlog->SetMenuSelectionChangeCallback(
      TFunctor2FromMethod< CPauseScreenBase, CGuiTableGroup* const, const int >::Make(
          *this, &CPauseScreenBase::OnTableSelectionChange));
  x84_tablegroup_rightlog->SetMenuAdvanceCallback(
      TFunctor1FromMethod< CPauseScreenBase, CGuiTableGroup* const >::Make(
          *this, &CPauseScreenBase::OnRightTableAdvance));
  x84_tablegroup_rightlog->SetMenuSelectionChangeCallback(
      TFunctor2FromMethod< CPauseScreenBase, CGuiTableGroup* const, const int >::Make(
          *this, &CPauseScreenBase::OnTableSelectionChange));
  x84_tablegroup_rightlog->SetMenuCancelCallback(
      TFunctor1FromMethod< CPauseScreenBase, CGuiTableGroup* const >::Make(
          *this, &CPauseScreenBase::OnRightTableCancel));
  x18c_slidergroup_slider->SetSelectionChangedCallback(
      TFunctor2< CGuiSliderGroup* const, const float >());
  x190_tablegroup_double->SetMenuSelectionChangeCallback(
      TFunctor2< CGuiTableGroup* const, const int >());
  x194_tablegroup_triple->SetMenuSelectionChangeCallback(
      TFunctor2< CGuiTableGroup* const, const int >());
}

bool CPauseScreenBase::IsReady() {
  if (x198_24_ready) {
    return true;
  }
  x198_24_ready = VReady();
  if (x198_24_ready) {
    VActivate();
    ChangeMode(kM_LeftTable);
    UpdateSideTable(x70_tablegroup_leftlog);
    UpdateRightTable();
    return true;
  }
  return false;
}

void CPauseScreenBase::Update(float dt, CRandom16& rand, CArchitectureQueue& queue) {
  x198_27_canDraw = true;
  x8_frame.Update(dt);
  x14_alpha = rstl::min_val(1.f, 2.f * dt + x14_alpha);
  int rightCount = GetRightTableCount();
  bool pulseRightUp = x10_mode == kM_RightTable && x18_firstViewRightSel > 0;
  bool pulseRightDown = x10_mode == kM_RightTable && x18_firstViewRightSel + 5 < rightCount;
  float rightUpT = pulseRightUp ? CGraphics::GetSecondsMod900() : 0.f;
  float rightDownT = pulseRightDown ? CGraphics::GetSecondsMod900() : 0.f;
  float rightUpAlpha =
      CMath::Clamp(0.f, 0.5f * (1.f + CMath::FastSinR(5.f * rightUpT - M_PIF / 2.f)), 1.f);
  float rightDownAlpha =
      CMath::Clamp(0.f, 0.5f * (1.f + CMath::FastSinR(5.f * rightDownT - M_PIF / 2.f)), 1.f);
  CColor lowColor = gpTweakGuiColors->GetPauseItemAmberColor().WithAlphaOf(0.2f);
  xa0_model_scrollrightup->SetColor(
      CColor::Lerp(lowColor, gpTweakGuiColors->GetPauseItemAmberColor(), rightUpAlpha));
  xa4_model_scrollrightdown->SetColor(
      CColor::Lerp(lowColor, gpTweakGuiColors->GetPauseItemAmberColor(), rightDownAlpha));
  float textUpT = x198_28_pulseTextArrowTop ? CGraphics::GetSecondsMod900() : 0.f;
  float textDownT = x198_29_pulseTextArrowBottom ? CGraphics::GetSecondsMod900() : 0.f;
  float textUpAlpha =
      CMath::Clamp(0.f, 0.5f * (1.f + CMath::FastSinR(5.f * textUpT - M_PIF / 2.f)), 1.f);
  float textDownAlpha =
      CMath::Clamp(0.f, 0.5f * (1.f + CMath::FastSinR(5.f * textDownT - M_PIF / 2.f)), 1.f);
  CColor textLowColor = gpTweakGuiColors->GetPauseItemAmberColor().WithAlphaOf(0.2f);
  x90_model_textarrowtop->SetColor(
      CColor::Lerp(textLowColor, gpTweakGuiColors->GetPauseItemAmberColor(), textUpAlpha));
  x94_model_textarrowbottom->SetColor(
      CColor::Lerp(textLowColor, gpTweakGuiColors->GetPauseItemAmberColor(), textDownAlpha));
}

void CPauseScreenBase::Touch() {}

void CPauseScreenBase::Draw(float transInterp, float totalAlpha, float yOff) const {
  x60_basewidget_pivot->SetColor(CColor::White().WithAlphaOf(transInterp * x14_alpha));
  x64_basewidget_bgframe->SetColor(CColor::White().WithAlphaOf(totalAlpha));
  x8_frame.Draw(CGuiWidgetDrawParms(1.f, CVector3f(0.f, 15.f * yOff, 0.f)));
}

void CPauseScreenBase::ProcessInput(const CFinalInput& input) {
  x198_25_handledInput = false;
  x8_frame.ProcessUserInput(input);
}

void CPauseScreenBase::UpdateSideTable(CGuiTableGroup* table) {
  if (table == nullptr) {
    return;
  }
  const CColor selColor(0xffffffff);
  const CColor deselColor(uchar(255), uchar(255), uchar(255), uchar(127));
  bool tableActive = true;
  if (table == x84_tablegroup_rightlog && x10_mode != kM_RightTable) {
    tableActive = false;
  }
  table->SetColors(selColor, deselColor);
  if (table == x84_tablegroup_rightlog) {
    int sel = x1c_rightSel - x18_firstViewRightSel;
    int selInView = x1c_rightSel % 5;
    x8c_model_righthighlight->SetO2PTransform(
        x8c_model_righthighlight->GetTransform() *
        CTransform4f::Translate(0.f, 0.f, x38_highlightPitch * sel));
    x8c_model_righthighlight->SetVisibility(x10_mode == kM_RightTable, kTM_Children);
    if (IsRightLogDynamic()) {
      UpdateRightLogHighlight(tableActive, selInView, selColor, deselColor);
    } else {
      for (int i = 0; i < x144_model_titles.size(); ++i) {
        x144_model_titles[i]->SetColor(i == selInView && tableActive ? selColor : deselColor);
      }
    }
  } else {
    int sel = x70_tablegroup_leftlog->GetUserSelection();
    x78_model_lefthighlight->SetO2PTransform(
        x78_model_lefthighlight->GetTransform() *
        CTransform4f::Translate(0.f, 0.f, x38_highlightPitch * sel));
    for (int i = 0; i < xc0_model_categories.size(); ++i) {
      xc0_model_categories[i]->SetColor(i == sel ? selColor : deselColor);
    }
  }
}

void CPauseScreenBase::ChangeMode(EMode mode) {
  if (mode == x10_mode) {
    return;
  }
  EMode oldMode = x10_mode;
  CColor color = gpTweakGuiColors->GetPauseItemAmberColor();
  CColor dimColor = color.WithAlphaOf(0.5f);
  switch (x10_mode) {
  case kM_LeftTable:
    x6c_basewidget_leftlog->SetColor(dimColor);
    x70_tablegroup_leftlog->SetIsActive(false);
    break;
  case kM_Invalid:
  case kM_RightTable:
    if (IsRightLogDynamic()) {
      UpdateRightLogColors(false, color, dimColor);
    } else {
      x80_basewidget_rightlog->SetColor(dimColor);
    }
    x84_tablegroup_rightlog->SetIsActive(false);
    break;
  case kM_TextScroll:
    CSfxManager::SfxStart(0x597, 0x7f, 0x40, false, CSfxManager::kMedPriority, false,
                          CSfxManager::kAllAreas);
    break;
  default:
    break;
  }
  x10_mode = mode;
  switch (x10_mode) {
  case kM_LeftTable:
    if (oldMode == kM_RightTable) {
      CSfxManager::SfxStart(0x597, 0x7f, 0x40, false, CSfxManager::kMedPriority, false,
                            CSfxManager::kAllAreas);
    }
    x6c_basewidget_leftlog->SetColor(color);
    x70_tablegroup_leftlog->SetIsActive(true);
    UpdateSideTable(x70_tablegroup_leftlog);
    x18_firstViewRightSel = 0;
    x1c_rightSel = 0;
    x84_tablegroup_rightlog->SetUserSelection(1);
    UpdateSideTable(x84_tablegroup_rightlog);
    break;
  case kM_RightTable:
    if (IsRightLogDynamic()) {
      UpdateRightLogColors(true, color, dimColor);
    } else {
      x80_basewidget_rightlog->SetColor(color);
    }
    x84_tablegroup_rightlog->SetIsActive(true);
    UpdateSideTable(x84_tablegroup_rightlog);
    break;
  case kM_TextScroll:
    x6c_basewidget_leftlog->SetColor(dimColor);
    if (IsRightLogDynamic()) {
      UpdateRightLogColors(false, color, dimColor);
    } else {
      x80_basewidget_rightlog->SetColor(dimColor);
    }
    x70_tablegroup_leftlog->SetIsActive(false);
    x84_tablegroup_rightlog->SetIsActive(false);
    break;
  default:
    break;
  }
  ChangedMode(oldMode);
}

void CPauseScreenBase::ChangedMode(EMode oldMode) {}

void CPauseScreenBase::UpdateRightTable() {
  x18_firstViewRightSel = 0;
  x1c_rightSel = 0;
  x84_tablegroup_rightlog->SetUserSelection(1);
  UpdateSideTable(x84_tablegroup_rightlog);
}

bool CPauseScreenBase::ShouldLeftTableAdvance() { return true; }

void CPauseScreenBase::OnLeftTableAdvance(CGuiTableGroup* caller) {
  if (ShouldLeftTableAdvance()) {
    ChangeMode(kM_RightTable);
    x198_25_handledInput = true;
    CSfxManager::SfxStart(0x598, 0x7f, 0x40, false, CSfxManager::kMedPriority, false,
                          CSfxManager::kAllAreas);
  }
}

bool CPauseScreenBase::ShouldRightTableAdvance() { return true; }

void CPauseScreenBase::OnRightTableAdvance(CGuiTableGroup* caller) {
  if (ShouldRightTableAdvance() && !x198_25_handledInput) {
    ChangeMode(kM_TextScroll);
    CSfxManager::SfxStart(0x598, 0x7f, 0x40, false, CSfxManager::kMedPriority, false,
                          CSfxManager::kAllAreas);
  }
}

void CPauseScreenBase::OnTableSelectionChange(CGuiTableGroup* caller, int oldSel) {
  UpdateSideTable(caller);
  if (caller == x70_tablegroup_leftlog) {
    CSfxManager::SfxStart(0x59c, 0x7f, 0x40, false, CSfxManager::kMedPriority, false,
                          CSfxManager::kAllAreas);
    UpdateRightTable();
  } else {
    SetRightTableSelection(oldSel, x84_tablegroup_rightlog->GetUserSelection());
  }
}

void CPauseScreenBase::SetRightTableSelection(int oldSel, int newSel) {
  int rightCount = GetRightTableCount();
  int oldRightSel = x1c_rightSel;
  x1c_rightSel = CMath::Clamp(0, x1c_rightSel + (newSel - oldSel), rightCount - 1);
  if (oldRightSel != x1c_rightSel) {
    CSfxManager::SfxStart(0x59c, 0x7f, 0x40, false, CSfxManager::kMedPriority, false,
                          CSfxManager::kAllAreas);
  }
  if (x1c_rightSel < x18_firstViewRightSel) {
    x18_firstViewRightSel = x1c_rightSel;
  } else if (x1c_rightSel >= x18_firstViewRightSel + 5) {
    x18_firstViewRightSel = x1c_rightSel - 4;
  }
  x84_tablegroup_rightlog->SetUserSelection(x1c_rightSel + 1 - x18_firstViewRightSel);
  UpdateSideTable(x84_tablegroup_rightlog);
  RightTableSelectionChanged(oldSel, newSel);
}

void CPauseScreenBase::RightTableSelectionChanged(int oldSel, int newSel) {}

void CPauseScreenBase::OnRightTableCancel(CGuiTableGroup* caller) { ChangeMode(kM_LeftTable); }

void CPauseScreenBase::TransitioningAway() {}

bool CPauseScreenBase::InputDisabled() const { return false; }

bool CPauseScreenBase::ShouldExitPauseScreen() const { return x198_26_exitPauseScreen; }
