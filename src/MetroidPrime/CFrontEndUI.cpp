#pragma inline_max_size(250)

#include "MetroidPrime/CFrontEndUI.hpp"

#include "Kyoto/Audio/CAudioGroupSet.hpp"
#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/Audio/CAudioSys.hpp"
#include "Kyoto/Audio/CStaticAudioPlayer.hpp"
#include "Kyoto/Audio/CStreamAudioManager.hpp"
#include "Kyoto/Basics/CBasics.hpp"
#include "Kyoto/Basics/RAssertDolphin.hpp"
#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/CDependencyGroup.hpp"
#include "Kyoto/CDvdFile.hpp"
#include "Kyoto/CResFactory.hpp"
#include "Kyoto/CSimplePool.hpp"
#include "Kyoto/Graphics/CMoviePlayer.hpp"
#include "Kyoto/Graphics/CTexture.hpp"
#include "Kyoto/Text/CStringTable.hpp"
#include "Kyoto/SObjectTag.hpp"

#include "GuiSys/CGuiFrame.hpp"
#include "GuiSys/CGuiModel.hpp"
#include "GuiSys/CGuiTableGroup.hpp"
#include "GuiSys/CGuiTextPane.hpp"
#include "GuiSys/CGuiTextSupport.hpp"
#include "GuiSys/CGuiWidget.hpp"
#include "GuiSys/CGuiWidgetDrawParms.hpp"

#include "MetroidPrime/CMain.hpp"
#include "MetroidPrime/CSlideShow.hpp"
#include "MetroidPrime/CGBASupport.hpp"
#include "MetroidPrime/CNESEmulator.hpp"
#include "MetroidPrime/CQuitGameScreen.hpp"
#include "MetroidPrime/CSaveGameScreen.hpp"
#include "MetroidPrime/SOptionsFrontEndFrame.hpp"
#include "MetroidPrime/CStateSetterFlow.hpp"
#include "MetroidPrime/DefaultWorld.hpp"
#include "MetroidPrime/Player/CGameState.hpp"

#include "MetroidPrime/SFX/FrontEnd.h"

#include "Kyoto/Input/CFinalInput.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "MetaRender/CCubeRenderer.hpp"

#include "rstl/math.hpp"

#include <stdlib.h>
#include <string.h>

struct FEMovie {
  const char* path;
  bool loop;
};

static const FEMovie FEMovies[] = {
    {"Video/00_first_start.thp", false},
    {"Video/01_startloop.thp", true},
    {"Video/02_start_fileselect_A.thp", false},
    {"Video/03_fileselectloop.thp", true},
    {"Video/04_fileselect_playgame_A.thp", false},
    {"Video/06_fileselect_GBA.thp", false},
    {"Video/07_GBAloop.thp", true},
    {"Video/08_GBA_fileselect.thp", false},
    {nullptr, false},
};

const char MetroidBuildInfo[] = BUILD_INFO;
const char* BuildTime = MetroidBuildInfo + BUILD_INFO_TAG_SIZE;

static const s16 FETransitionBackSFX[3][2] = {
    {SFXfnt_transfore_00L, SFXfnt_transfore_00R},
    {SFXfnt_transfore_01L, SFXfnt_transfore_01R},
    {SFXfnt_transfore_02L, SFXfnt_transfore_02R},
};

static const s16 FETransitionForwardSFX[3][2] = {
    {SFXfnt_transback_00L, SFXfnt_transback_00R},
    {SFXfnt_transback_01L, SFXfnt_transback_01R},
    {SFXfnt_transback_02L, SFXfnt_transback_02R},
};

static const float AudioFadeTimeB[3] = {
    4.1999998f,
    6.0999999f,
    6.0999999f,
};

static const float AudioFadeTimeA[3] = {
    0.43999997f,
    5.4100003f,
    3.4100003f,
};

static const CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::EUIType NextLinkUI[10] = {
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_ConnectSocket,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_PressStartAndSelect,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_BeginLink,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_Linking,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_Empty,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_TurnOffGBA,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_Complete,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_InsertPak,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_Empty,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_Empty,
};

static const CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::EUIType PrevLinkUI[10] = {
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_Cancelled,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_Cancelled,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_Cancelled,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_Cancelled,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_Empty,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_Cancelled,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_Empty,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_Cancelled,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_Empty,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_Empty,
};

// PlayAdvanceSfx
void CFrontEndUI::PlayAdvanceSfx() {
  CSfxManager::SfxStart(SFXui_x_start_00);
  CSfxManager::SfxStart(SFXui_x_start_00r);
}

// SFrontEndFrame::FindAndSetPairText
void CFrontEndUI::SFrontEndFrame::FindAndSetPairText(CGuiFrame& frame, const char* name,
                                                      const wchar_t* str) {
  CGuiTextPane* w1 = static_cast< CGuiTextPane* >(frame.FindWidget(name));
  w1->TextSupport().SetText(rstl::wstring(str));
  CGuiTextPane* w2 =
      static_cast< CGuiTextPane* >(frame.FindWidget(CBasics::Stringize("%sb", name)));
  w2->TextSupport().SetText(rstl::wstring(str));
}

// SGuiTextPair::SGuiTextPair
CFrontEndUI::SGuiTextPair::SGuiTextPair() {
  x0_panes[0] = nullptr;
  x0_panes[1] = nullptr;
}

// SFrontEndFrame::FindTextPanePair
CFrontEndUI::SGuiTextPair CFrontEndUI::SFrontEndFrame::FindTextPanePair(const CGuiFrame* frame,
                                                                        const char* name) {
  SGuiTextPair ret;
  ret.x0_panes[0] = static_cast< CGuiTextPane* >(frame->FindWidget(name));
  ret.x0_panes[1] =
      static_cast< CGuiTextPane* >(frame->FindWidget(CBasics::Stringize("%sb", name)));
  return ret;
}

// SGuiTextPair::SetPairText
void CFrontEndUI::SGuiTextPair::SetPairText(const wchar_t* str) {
  x0_panes[0]->TextSupport().SetText(rstl::wstring(str));
  x0_panes[1]->TextSupport().SetText(rstl::wstring(str));
}

// SGuiTextPair::SetPairText (wstring overload)
void CFrontEndUI::SGuiTextPair::SetPairText(const rstl::wstring& str) {
  x0_panes[0]->TextSupport().SetText(str);
  x0_panes[1]->TextSupport().SetText(str);
}

// SNesEmulatorFrame::SNesEmulatorFrame
CFrontEndUI::SNesEmulatorFrame::SNesEmulatorFrame()
: x0_mode(kEM_Emulator)
, x4_nesEmu(rs_new CNESEmulator())
, x8_quitScreen(nullptr)
, xc_textSupport(nullptr)
, x10_remTime(8.f)
, x14_emulationSuspended(false)
, x15_enableFiltering(true) {
  xc_textSupport =
      rs_new CGuiTextSupport(gpResourceFactory->GetResourceIdByName("FONT_Deface14B")->GetId(),
                             CGuiTextProperties(false, true, kJustification_Left,
                                                kVerticalJustification_Center, nullptr),
                             CColor(0xFFFFFFFFu), CColor::Black(), CColor(0xFFFFFFFFu), 0, 0,
                             gpSimplePool);
  xc_textSupport->SetText(rstl::wstring_l(gpStringTable->GetString(0x67)));
  xc_textSupport->SetExtentX(xc_textSupport->GetBounds().second.GetX());
  xc_textSupport->SetExtentY(xc_textSupport->GetBounds().second.GetY());
}

// SNesEmulatorFrame::~SNesEmulatorFrame
CFrontEndUI::SNesEmulatorFrame::~SNesEmulatorFrame() {}

// SNesEmulatorFrame::SetMode
void CFrontEndUI::SNesEmulatorFrame::SetMode(EMode mode) {
  switch (mode) {
  case kEM_Emulator:
    x8_quitScreen = nullptr;
    break;
  case kEM_SaveProgress:
    x8_quitScreen = nullptr;
    x8_quitScreen = rs_new CQuitGameScreen(kQT_SaveProgress);
    break;
  case kEM_ContinuePlaying:
    x8_quitScreen = nullptr;
    x8_quitScreen = rs_new CQuitGameScreen(kQT_ContinuePlaying);
    break;
  case kEM_QuitNESMetroid:
    x8_quitScreen = nullptr;
    x8_quitScreen = rs_new CQuitGameScreen(kQT_QuitNESMetroid);
    break;
  default:
    break;
  }
  x0_mode = mode;
}

// SNesEmulatorFrame::Update
bool CFrontEndUI::SNesEmulatorFrame::Update(float dt, CSaveGameScreen& saveUi) {
  bool doUpdate = true;
  if (&saveUi != nullptr && saveUi.GetUIType() != 0x10) {
    doUpdate = false;
  }

  x10_remTime = rstl::max_val(0.f, x10_remTime - dt);

  CGuiTextSupport* textSupport = xc_textSupport.get();
  const CColor& geomCol = CColor::White().WithAlphaOf(rstl::min_val(x10_remTime, 1.f));
  textSupport->SetGeometryColor(geomCol);

  if (xc_textSupport->GetIsTextSupportFinishedLoading()) {
    xc_textSupport->SetExtentX(xc_textSupport->GetBounds().second.GetX());
    xc_textSupport->SetExtentY(xc_textSupport->GetBounds().second.GetY());
  }

  if (doUpdate) {
  switch (x0_mode) {
  case kEM_Emulator: {
    x4_nesEmu->Update();
    if (!x4_nesEmu->IsGameOver()) {
      x14_emulationSuspended = false;
    }
    if (x4_nesEmu->IsGameOver() && !x14_emulationSuspended) {
      x14_emulationSuspended = true;
      if (&saveUi != nullptr && !saveUi.IsSavingDisabled()) {
        SetMode(kEM_SaveProgress);
        break;
      }
      SetMode(kEM_ContinuePlaying);
      break;
    }
    if (x4_nesEmu->GetPasswordEntryState() == 1) {
      if (&saveUi != nullptr) {
        x4_nesEmu->LoadPassword(gpGameState->SystemState().GetNESState());
      }
    }
    break;
  }
  case kEM_SaveProgress: {
    if (&saveUi != nullptr) {
      EQuitAction action = x8_quitScreen->Update(dt);
      if (action == kQA_Yes) {
        memcpy(gpGameState->SystemState().GetNESState(), x4_nesEmu->GetPassword(), 0x12);
        saveUi.SaveNESState();
        SetMode(kEM_ContinuePlaying);
      } else if (action == kQA_No) {
        SetMode(kEM_ContinuePlaying);
      }
    } else {
      SetMode(kEM_ContinuePlaying);
    }
    break;
  }
  case kEM_ContinuePlaying: {
    EQuitAction action = x8_quitScreen->Update(dt);
    if (action == kQA_Yes) {
      SetMode(kEM_Emulator);
    } else if (action == kQA_No) {
      return true;
    }
    break;
  }
  case kEM_QuitNESMetroid: {
    EQuitAction action = x8_quitScreen->Update(dt);
    if (action == kQA_Yes) {
      return true;
    } else if (action == kQA_No) {
      SetMode(kEM_Emulator);
    }
    break;
  }
  default:
    break;
  }
  }

  return false;
}

// SNesEmulatorFrame::ProcessUserInput
void CFrontEndUI::SNesEmulatorFrame::ProcessUserInput(const CFinalInput& input,
                                                       const CSaveGameScreen* sui) {
  bool doInput = true;
  if (sui != nullptr && sui->GetUIType() != 0x10) {
    doInput = false;
  }

  if (sui != nullptr) {
    const_cast< CSaveGameScreen* >(sui)->ProcessUserInput(input);
  }

  if (!doInput) {
    return;
  }

  switch (x0_mode) {
  case kEM_Emulator:
    x4_nesEmu->ProcessUserInput(input, 4);
    if (input.ControllerNumber() == 0 && input.PL()) {
      SetMode(kEM_QuitNESMetroid);
    }
    break;
  case kEM_SaveProgress:
  case kEM_ContinuePlaying:
  case kEM_QuitNESMetroid:
    x8_quitScreen->ProcessUserInput(input);
    break;
  default:
    break;
  }
}

// SNesEmulatorFrame::Draw
void CFrontEndUI::SNesEmulatorFrame::Draw(const CSaveGameScreen& saveUi) {
  CColor mulColor = CColor::White();
  CColor dimColor(static_cast< uchar >(0x60), static_cast< uchar >(0x60),
                  static_cast< uchar >(0x60), static_cast< uchar >(0xFF));

  bool blackout = false;
  if (&saveUi != nullptr && saveUi.GetUIType() != 0x10) {
    blackout = true;
  }

  if (blackout) {
    mulColor = CColor(0u);
  } else if (x8_quitScreen.get() != nullptr) {
    mulColor = dimColor;
  }

  x4_nesEmu->Draw(mulColor, x15_enableFiltering);

  if (!blackout && x8_quitScreen.get() != nullptr) {
    x8_quitScreen->Draw();
  } else {
    CGraphics::SetUseVideoFilter(x15_enableFiltering);
  }

  if (x10_remTime < 7.5f && x10_remTime > 0.f) {
    if (xc_textSupport->GetIsTextSupportFinishedLoading()) {
      CGraphics::SetCullMode(kCM_None);
      gpRender->SetViewportOrtho(true, -4096.f, 4096.f);
      gpRender->SetBlendMode_AlphaBlended();
      gpRender->SetDepthReadWrite(false, false);
      CGraphics::SetModelMatrix(CTransform4f::Translate(-220.f, 0.f, -200.f));
      xc_textSupport->Render();
    }
  }
}

// SGBALinkFrame::SGBALinkFrame
CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::SGBALinkFrame(const CGuiFrame* frme,
                                                              CGBASupport* support,
                                                              bool linkInProgress)
: x0_uiType(kUIT_Empty)
, x4_gbaSupport(support)
, x8_frme(const_cast< CGuiFrame* >(frme))
, xc_textpane_instructions()
, x14_textpane_yes(nullptr)
, x18_textpane_no(nullptr)
, x1c_model_gc(nullptr)
, x20_model_gba(nullptr)
, x24_model_cable(nullptr)
, x28_model_circlegcport(nullptr)
, x2c_model_circlegbaport(nullptr)
, x30_model_circlestartselect(nullptr)
, x34_model_pakout(nullptr)
, x38_model_gbascreen(nullptr)
, x3c_model_connect(nullptr)
, x40_linkInProgress(linkInProgress) {
  support->InitializeSupport();
  FinishedLoading();
}

// SGBALinkFrame::~SGBALinkFrame
CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::~SGBALinkFrame() {}

// SGBALinkFrame::Draw
void CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::Draw() {
  x8_frme->Draw(CGuiWidgetDrawParms::sDefaultDrawParms);
}

// SGBALinkFrame::FinishedLoading
void CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::FinishedLoading() {
  xc_textpane_instructions = SFrontEndFrame::FindTextPanePair(x8_frme, "textpane_instructions");
  x14_textpane_yes = static_cast< CGuiTextPane* >(x8_frme->FindWidget("textpane_yes"));
  x18_textpane_no = static_cast< CGuiTextPane* >(x8_frme->FindWidget("textpane_no"));
  x1c_model_gc = static_cast< CGuiModel* >(x8_frme->FindWidget("model_gc"));
  x20_model_gba = static_cast< CGuiModel* >(x8_frme->FindWidget("model_gba"));
  x24_model_cable = static_cast< CGuiModel* >(x8_frme->FindWidget("model_cable"));
  x28_model_circlegcport = static_cast< CGuiModel* >(x8_frme->FindWidget("model_circlegcport"));
  x2c_model_circlegbaport = static_cast< CGuiModel* >(x8_frme->FindWidget("model_circlegbaport"));
  x30_model_circlestartselect = static_cast< CGuiModel* >(x8_frme->FindWidget("model_circlestartselect"));
  x34_model_pakout = static_cast< CGuiModel* >(x8_frme->FindWidget("model_pakout"));
  x38_model_gbascreen = static_cast< CGuiModel* >(x8_frme->FindWidget("model_gbascreen"));
  x3c_model_connect = static_cast< CGuiModel* >(x8_frme->FindWidget("model_connect"));
  SetUIText(kUIT_InsertPak);
}

// SGBALinkFrame::Update
void CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::Update(float dt) {
  x4_gbaSupport->Update(dt);
  x8_frme->Update(dt);
}

// SGBALinkFrame::ProcessUserInput
CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::EAction
CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::ProcessUserInput(const CFinalInput& input,
                                                                 bool linkInProgress) {
  if (linkInProgress != x40_linkInProgress) {
    x40_linkInProgress = linkInProgress;
    SetUIText(x0_uiType);
  }

  switch (x0_uiType) {
  case kUIT_InsertPak:
  case kUIT_ConnectSocket:
  case kUIT_PressStartAndSelect:
  case kUIT_BeginLink:
  case kUIT_LinkFailed:
  case kUIT_LinkCompleteOrLinking:
  case kUIT_TurnOffGBA:
    if (input.PA()) {
      PlayAdvanceSfx();
      SetUIText(NextLinkUI[x0_uiType]);
    } else if (input.PB()) {
      if (PrevLinkUI[x0_uiType] == kUIT_Empty)
        break;
      CSfxManager::SfxStart(SFXfnt_back, 0x7f, 0x40, false, CSfxManager::kMedPriority, false,
                            CSfxManager::kAllAreas);
      SetUIText(PrevLinkUI[x0_uiType]);
    }
    break;
  case kUIT_Linking: {
    if (x4_gbaSupport->GetPhase() == CGBASupport::kP_Complete) {
      if (x4_gbaSupport->IsFusionLinked())
        gpGameState->SystemState().SetFusionLinked(true);
      if (x4_gbaSupport->IsFusionBeat())
        gpGameState->SystemState().SetFusionBeat(true);
      if (x4_gbaSupport->IsFusionLinked()) {
        PlayAdvanceSfx();
        SetUIText(kUIT_LinkCompleteOrLinking);
      } else {
        CSfxManager::SfxStart(SFXfnt_back, 0x7f, 0x40, false, CSfxManager::kMedPriority, false,
                              CSfxManager::kAllAreas);
        SetUIText(kUIT_LinkFailed);
      }
    } else if (x4_gbaSupport->GetPhase() == CGBASupport::kP_Failed) {
      CSfxManager::SfxStart(SFXfnt_back, 0x7f, 0x40, false, CSfxManager::kMedPriority, false,
                            CSfxManager::kAllAreas);
      SetUIText(kUIT_LinkFailed);
    }
    break;
  }
  case kUIT_Complete:
    return kGA_Complete;
  case kUIT_Cancelled:
    return kGA_Cancelled;
  default:
    break;
  }

  return kGA_None;
}

// SGBALinkFrame::SetUIText
void CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::SetUIText(EUIType tp) {
  int instructions = -1;
  int yes = -1;
  int no = -1;
  bool cableVisible = false;
  bool circleGcVisible = false;
  bool circleGbaVisible = false;
  bool circleStartVisible = false;
  bool pakoutVisible = false;
  bool gbaScreenVisible = false;
  bool connectVisible = false;

  switch (tp) {
  case kUIT_InsertPak:
    instructions = 0x49;
    no = 0x52;
    yes = 0x53;
    pakoutVisible = true;
    circleGbaVisible = true;
    break;
  case kUIT_ConnectSocket:
    instructions = 0x44;
    no = 0x52;
    yes = 0x53;
    cableVisible = true;
    circleGcVisible = true;
    circleGbaVisible = true;
    break;
  case kUIT_PressStartAndSelect:
    instructions = 0x4a;
    no = 0x52;
    yes = 0x53;
    cableVisible = true;
    circleStartVisible = true;
    gbaScreenVisible = true;
    break;
  case kUIT_BeginLink:
    instructions = 0x4b;
    no = 0x52;
    yes = 0x53;
    cableVisible = true;
    gbaScreenVisible = true;
    break;
  case kUIT_TurnOffGBA:
    instructions = 0x4c;
    no = 0x52;
    yes = 0x53;
    cableVisible = true;
    gbaScreenVisible = true;
    circleStartVisible = true;
    break;
  case kUIT_Linking:
    x4_gbaSupport->StartLink();
    instructions = 0x48;
    cableVisible = true;
    gbaScreenVisible = true;
    connectVisible = true;
    break;
  case kUIT_LinkFailed:
    instructions = 0x45;
    no = 0x52;
    yes = 0x54;
    cableVisible = true;
    circleGcVisible = true;
    circleGbaVisible = true;
    circleStartVisible = true;
    gbaScreenVisible = true;
    break;
  case kUIT_LinkCompleteOrLinking:
    yes = 0x53;
    cableVisible = true;
    gbaScreenVisible = true;
    instructions = x40_linkInProgress ? 0x46 : 0x47;
    break;
  case kUIT_Complete:
  case kUIT_Cancelled:
  default:
    break;
  }

  rstl::wstring emptyStr = rstl::wstring_l(L"");

  xc_textpane_instructions.SetPairText(
      instructions == -1 ? emptyStr : rstl::wstring_l(gpStringTable->GetString(instructions)));

  x14_textpane_yes->TextSupport().SetText(
      yes == -1 ? emptyStr : rstl::wstring_l(gpStringTable->GetString(yes)), false);

  x18_textpane_no->TextSupport().SetText(
      no == -1 ? emptyStr : rstl::wstring_l(gpStringTable->GetString(no)), false);

  x1c_model_gc->SetVisibility(true, kTM_Children);
  x20_model_gba->SetVisibility(true, kTM_Children);
  x24_model_cable->SetVisibility(cableVisible, kTM_Children);
  x28_model_circlegcport->SetVisibility(circleGcVisible, kTM_Children);
  x2c_model_circlegbaport->SetVisibility(circleGbaVisible, kTM_Children);
  x30_model_circlestartselect->SetVisibility(circleStartVisible, kTM_Children);
  x34_model_pakout->SetVisibility(pakoutVisible, kTM_Children);
  x38_model_gbascreen->SetVisibility(gbaScreenVisible, kTM_Children);
  x3c_model_connect->SetVisibility(connectVisible, kTM_Children);

  x0_uiType = tp;
}

// CStateSetterFlow::CStateSetterFlow
CStateSetterFlow::CStateSetterFlow()
: CIOWin(rstl::string_l("")) {}

// CStateSetterFlow::~CStateSetterFlow
CStateSetterFlow::~CStateSetterFlow() {}

// CStateSetterFlow::OnMessage
CIOWin::EMessageReturn CStateSetterFlow::OnMessage(const CArchitectureMessage& message,
                                                    CArchitectureQueue& queue) {
  switch (message.GetType()) {
  case kAM_TimerTick:
    gpMain->RefreshGameState();
    return kMR_RemoveIOWinAndExit;
  default:
    return kMR_Exit;
  }
}

// SFrontEndFrame::SFrontEndFrame
CFrontEndUI::SFrontEndFrame::SFrontEndFrame(uint rnd)
: x0_rnd(rnd)
, x4_action(kEA_None)
, x8_frme(gpSimplePool->GetObj("FRME_FrontEndPL"))
, x14_loadedFrme(nullptr)
, x18_tablegroup_mainmenu(nullptr)
, x1c_gbaPair()
, x24_cheatPair() {
  x8_frme.Lock();
}

// SFrontEndFrame::~SFrontEndFrame
CFrontEndUI::SFrontEndFrame::~SFrontEndFrame() {}

// SFrontEndFrame::PumpLoad
bool CFrontEndUI::SFrontEndFrame::PumpLoad() {
  if (x14_loadedFrme) {
    return true;
  }
  if (x8_frme.TryCache()) {
    CGuiFrame* frme = x8_frme.GetObject();
    if (frme->GetIsFinishedLoading()) {
      x14_loadedFrme = frme;
      FinishedLoading();
      return true;
    }
  }
  return false;
}

// SFrontEndFrame::FinishedLoading
void CFrontEndUI::SFrontEndFrame::FinishedLoading() {
  x18_tablegroup_mainmenu =
      static_cast< CGuiTableGroup* >(x14_loadedFrme->FindWidget("tablegroup_mainmenu"));

  x1c_gbaPair = FindTextPanePair(x14_loadedFrme, "textpane_gba");
  x1c_gbaPair.SetPairText(gpStringTable->GetString(0x25));

  x24_cheatPair = FindTextPanePair(x14_loadedFrme, "textpane_cheats");
  x24_cheatPair.SetPairText(gpStringTable->GetString(0x60));

  FindAndSetPairText(*x14_loadedFrme, "textpane_start", gpStringTable->GetString(0x43));
  FindAndSetPairText(*x14_loadedFrme, "textpane_options", gpStringTable->GetString(0x5e));
  FindAndSetPairText(*x14_loadedFrme, "textpane_title", gpStringTable->GetString(0x62));

  CGuiTextPane* proceed =
      static_cast< CGuiTextPane* >(x14_loadedFrme->FindWidget("textpane_proceed"));
  if (proceed) {
    proceed->TextSupport().SetText(rstl::wstring_l(gpStringTable->GetString(0x55)));
  }

  x18_tablegroup_mainmenu->SetMenuAdvanceCallback(
      TFunctor1< CGuiTableGroup* const >(this, &SFrontEndFrame::DoAdvance));
  x18_tablegroup_mainmenu->SetMenuSelectionChangeCallback(
      TFunctor3< CGuiTableGroup* const, const int, const int >(
          this, &SFrontEndFrame::DoSelectionChange));
  x18_tablegroup_mainmenu->SetMenuCancelCallback(
      TFunctor1< CGuiTableGroup* const >(this, &SFrontEndFrame::DoCancel));

  HandleActiveChange(x18_tablegroup_mainmenu);
}

// SFrontEndFrame::Update
void CFrontEndUI::SFrontEndFrame::Update(float dt) {
  CGuiWidget* imageGallery = x18_tablegroup_mainmenu->GetWorkerWidget(3);

  if (CSlideShow::SlideShowGalleryFlags()) {
    imageGallery->SetIsSelectable(true);
    x24_cheatPair.x0_panes[0]->TextSupport().SetFontColor(CColor::White());
  } else {
    imageGallery->SetIsSelectable(false);
    CGuiTextSupport& textSupport = x24_cheatPair.x0_panes[0]->TextSupport();
    CColor color = CColor::Grey().WithAlphaOf(0.5f);
    textSupport.SetFontColor(color);
  }

  x14_loadedFrme->Update(dt);
}

// SFrontEndFrame::ProcessUserInput
CFrontEndUI::SFrontEndFrame::EAction
CFrontEndUI::SFrontEndFrame::ProcessUserInput(const CFinalInput& input) {
  x4_action = kEA_None;
  x14_loadedFrme->ProcessUserInput(input);
  return x4_action;
}

// SFrontEndFrame::Draw
void CFrontEndUI::SFrontEndFrame::Draw() {
  x14_loadedFrme->Draw(CGuiWidgetDrawParms::sDefaultDrawParms);
}

// SFrontEndFrame::DoAdvance
void CFrontEndUI::SFrontEndFrame::DoAdvance(const CGuiTableGroup* caller) {
  switch (x18_tablegroup_mainmenu->GetUserSelection()) {
  case 0:
    CSfxManager::SfxStart(FETransitionForwardSFX[x0_rnd][0], 0x7f, 0x40, false,
                          CSfxManager::kMedPriority, false, CSfxManager::kAllAreas);
    CSfxManager::SfxStart(FETransitionForwardSFX[x0_rnd][1], 0x7f, 0x40, false,
                          CSfxManager::kMedPriority, false, CSfxManager::kAllAreas);
    x4_action = kEA_StartGame;
    break;
  case 1:
    x4_action = kEA_FusionBonus;
    break;
  case 2:
    PlayAdvanceSfx();
    x4_action = kEA_GameOptions;
    break;
  case 3:
    PlayAdvanceSfx();
    x4_action = kEA_SlideShow;
    break;
  default:
    break;
  }
}

// SFrontEndFrame::DoSelectionChange
void CFrontEndUI::SFrontEndFrame::DoSelectionChange(const CGuiTableGroup* caller) {
  CSfxManager::SfxStart(SFXfnt_selection_change, 0x7f, 0x40, false, CSfxManager::kMedPriority, false,
                        CSfxManager::kAllAreas);
  HandleActiveChange(caller);
}

// SFrontEndFrame::HandleActiveChange
void CFrontEndUI::SFrontEndFrame::HandleActiveChange(const CGuiTableGroup* caller) {
  CColor selected((uchar)0xFF, (uchar)0xFF, (uchar)0xFF, (uchar)0xFF);
  CColor unselected((uchar)0xA0, (uchar)0xA0, (uchar)0xA0, (uchar)0xC8);
  caller->SetColors(selected, unselected);
}

// SFrontEndFrame::DoCancel
void CFrontEndUI::SFrontEndFrame::DoCancel(const CGuiTableGroup* caller) {}

// SFileSelectOption::ComputeRandom
float CFrontEndUI::SFileSelectOption::ComputeRandom() {
  return rand() / static_cast< float >(RAND_MAX) * 30.f + 30.f;
}

// SNewFileSelectFrame::StartTextAnimating
void CFrontEndUI::SNewFileSelectFrame::StartTextAnimating(CGuiTextPane* text, rstl::wstring str) {}

// SNewFileSelectFrame::FindFileSelectOption
CFrontEndUI::SFileSelectOption
CFrontEndUI::SNewFileSelectFrame::FindFileSelectOption(CGuiFrame* frame, int idx) {
  SFileSelectOption opt;
  return opt;
}

// SNewFileSelectFrame::SNewFileSelectFrame
CFrontEndUI::SNewFileSelectFrame::SNewFileSelectFrame(CSaveGameScreen* saveUI, uint rnd)
: x0_rnd(rnd)
, x4_saveUI(saveUI)
, x8_subMenu(kSM_Root)
, xc_action(kA_None)
, x10_frme(gpSimplePool->GetObj("FRME_NewFileSelect"))
, x1c_loadedFrame(nullptr)
, x20_tablegroup_fileselect(nullptr)
, x24_model_erase(nullptr)
, x28_textpane_erase()
, x30_textpane_cheats()
, x38_textpane_gba()
, x40_tablegroup_popup(nullptr)
, x44_model_dash7(nullptr)
, x48_textpane_popupadvance()
, x50_textpane_popupcancel()
, x58_textpane_popupextra()
, x60_textpane_cancel(nullptr)
, x64_fileSelections()
, xf8_model_erase_position(CVector3f::Zero())
, x104_rowPitch(0.f)
, x108_curTime(0.f)
, x10c_saveReady(false)
, x10d_needsEraseToggle(false)
, x10e_needsNewToggle(false) {
  x10_frme.Lock();
}

// SNewFileSelectFrame::~SNewFileSelectFrame
CFrontEndUI::SNewFileSelectFrame::~SNewFileSelectFrame() {}

// SNewFileSelectFrame::PumpLoad
bool CFrontEndUI::SNewFileSelectFrame::PumpLoad() {
  return false;
}

// fn_80020B98 (stub)
// fn_80020B34 (stub)

// SNewFileSelectFrame::FinishedLoading
void CFrontEndUI::SNewFileSelectFrame::FinishedLoading() {}

// SNewFileSelectFrame::GetUserFileSelection
uint CFrontEndUI::SNewFileSelectFrame::GetUserFileSelection() const {
  return 0;
}

// SNewFileSelectFrame::Update
void CFrontEndUI::SNewFileSelectFrame::Update(float dt) {}

// CGuiWidget::GetIsActive (weak function emitted here)
bool CGuiWidget::GetIsActive() const {
  return false;
}

// SNewFileSelectFrame::ProcessUserInput
CFrontEndUI::SNewFileSelectFrame::EAction
CFrontEndUI::SNewFileSelectFrame::ProcessUserInput(const CFinalInput& input) {
  return kA_None;
}

// SNewFileSelectFrame::Draw
void CFrontEndUI::SNewFileSelectFrame::Draw() const {}

// SNewFileSelectFrame::HandleActiveChange
void CFrontEndUI::SNewFileSelectFrame::HandleActiveChange(CGuiWidget* active) {}

// SNewFileSelectFrame::DoFileselectAdvance
void CFrontEndUI::SNewFileSelectFrame::DoFileselectAdvance(const CGuiTableGroup* caller) {}

// fn_80020064 (stub)

// SNewFileSelectFrame::SetupFrameContents
void CFrontEndUI::SNewFileSelectFrame::SetupFrameContents() {}

// SNewFileSelectFrame::ClearFrameContents
void CFrontEndUI::SNewFileSelectFrame::ClearFrameContents() {}

// SNewFileSelectFrame::EnterErase
void CFrontEndUI::SNewFileSelectFrame::EnterErase() {}

// SNewFileSelectFrame::ResetFrame
void CFrontEndUI::SNewFileSelectFrame::ResetFrame() {}

// SNewFileSelectFrame::ActivateNewGamePopup
void CFrontEndUI::SNewFileSelectFrame::ActivateNewGamePopup() {}

// SNewFileSelectFrame::DeactivateNewGamePopup
void CFrontEndUI::SNewFileSelectFrame::DeactivateNewGamePopup() {}

// SNewFileSelectFrame::ActivateExistingGamePopup
void CFrontEndUI::SNewFileSelectFrame::ActivateExistingGamePopup() {}

// SNewFileSelectFrame::DeactivateExistingGamePopup
void CFrontEndUI::SNewFileSelectFrame::DeactivateExistingGamePopup() {}

// SNewFileSelectFrame::IsTextDoneAnimating
bool CFrontEndUI::SNewFileSelectFrame::IsTextDoneAnimating() {
  return false;
}

// SNewFileSelectFrame::DoSelectionChange
void CFrontEndUI::SNewFileSelectFrame::DoSelectionChange(const CGuiTableGroup* caller) {}

// SNewFileSelectFrame::DoFileselectCancel
void CFrontEndUI::SNewFileSelectFrame::DoFileselectCancel(const CGuiTableGroup* caller) {}

// SNewFileSelectFrame::DoPopupAdvance
void CFrontEndUI::SNewFileSelectFrame::DoPopupAdvance(const CGuiTableGroup* caller) {}

// SNewFileSelectFrame::DoPopupCancel
void CFrontEndUI::SNewFileSelectFrame::DoPopupCancel(const CGuiTableGroup* caller) {}

// SFusionBonusFrame::SFusionBonusFrame
CFrontEndUI::SFusionBonusFrame::SFusionBonusFrame()
: x0_gbaLinkFrame(nullptr)
, x4_gbaSupport(rs_new CGBASupport())
, x8_action(kFA_None)
, xc_gbaScreen(gpSimplePool->GetObj("FRME_GBAScreen"))
, x18_gbaLink(gpSimplePool->GetObj("FRME_GBALink"))
, x24_loadedFrame(nullptr)
, x28_tablegroup_options(nullptr)
, x2c_tablegroup_fusionsuit(nullptr)
, x30_textpane_instructions()
, x38_lastDoDraw(false)
, x39_fusionNotComplete(false)
, x3a_mpNotComplete(false) {
  xc_gbaScreen.Lock();
  x18_gbaLink.Lock();
}

// SFusionBonusFrame::~SFusionBonusFrame
CFrontEndUI::SFusionBonusFrame::~SFusionBonusFrame() {}

// SFusionBonusFrame::Draw
void CFrontEndUI::SFusionBonusFrame::Draw() {
  if (!x38_lastDoDraw)
    return;
  if (x0_gbaLinkFrame.get() != nullptr) {
    x0_gbaLinkFrame->Draw();
  } else if (x24_loadedFrame != nullptr) {
    x24_loadedFrame->Draw(CGuiWidgetDrawParms::sDefaultDrawParms);
  }
}

// SFusionBonusFrame::Update
void CFrontEndUI::SFusionBonusFrame::Update(float dt, const CSaveGameScreen* saveUI) {
  bool doDraw = saveUI == nullptr || saveUI->GetUIType() == 0x10;

  if (doDraw != x38_lastDoDraw) {
    x38_lastDoDraw = doDraw;
    if (x38_lastDoDraw) {
      ResetCompletionFlags();
    }
  }

  if (x0_gbaLinkFrame.get() != nullptr) {
    x0_gbaLinkFrame->Update(dt);
  } else if (x24_loadedFrame != nullptr) {
    x24_loadedFrame->Update(dt);
  }

  bool showFusionSuit = false;
  int sel = x28_tablegroup_options->GetUserSelection();
  if (gpGameState->SystemState().GetFusionLinked()) {
    if (gpGameState->SystemState().GetNormalModeBeat()) {
      showFusionSuit = true;
    }
  }

  bool fusionBeat = gpGameState->SystemState().GetFusionBeat();
  bool showProceed = false;
  if (sel == 1 && showFusionSuit) {
    showProceed = true;
  }

  x2c_tablegroup_fusionsuit->SetIsActive(showProceed);
  x2c_tablegroup_fusionsuit->SetIsVisible(showProceed);
  x24_loadedFrame->FindWidget("textpane_proceed")->SetIsVisible(!showProceed);

  const wchar_t* text1;
  if (x3a_mpNotComplete) {
    text1 = gpStringTable->GetString(0x50);
  } else if (showFusionSuit) {
    text1 = L"";
  } else {
    text1 = gpStringTable->GetString(0x4e);
  }

  const wchar_t* text0;
  if (x39_fusionNotComplete) {
    text0 = gpStringTable->GetString(0x4f);
  } else if (fusionBeat) {
    text0 = L"";
  } else {
    text0 = gpStringTable->GetString(0x4d);
  }

  x30_textpane_instructions.SetPairText(sel == 1 ? text1 : text0);
}

// SFusionBonusFrame::ProcessUserInput
CFrontEndUI::SFusionBonusFrame::EAction
CFrontEndUI::SFusionBonusFrame::ProcessUserInput(const CFinalInput& input,
                                                  const CSaveGameScreen* saveUI) {
  x8_action = kFA_None;

  if (saveUI != nullptr) {
    const_cast< CSaveGameScreen* >(saveUI)->ProcessUserInput(input);
  }

  if (x38_lastDoDraw) {
    if (x0_gbaLinkFrame.get() != nullptr) {
      SGBALinkFrame::EAction action =
          x0_gbaLinkFrame->ProcessUserInput(input, saveUI != nullptr);
      if (action != SGBALinkFrame::kGA_None) {
        x0_gbaLinkFrame = nullptr;
        if (action == SGBALinkFrame::kGA_Complete) {
          if (x28_tablegroup_options->GetUserSelection() == 0 &&
              !gpGameState->SystemState().GetFusionBeat()) {
            x39_fusionNotComplete = true;
          } else if (saveUI != nullptr) {
            const_cast< CSaveGameScreen* >(saveUI)->SaveNESState();
          }
        }
      }
    } else if (x24_loadedFrame != nullptr) {
      x24_loadedFrame->ProcessUserInput(input);
    }
  }

  return x8_action;
}

// SFusionBonusFrame::PumpLoad
bool CFrontEndUI::SFusionBonusFrame::PumpLoad() {
  if (x24_loadedFrame) {
    return true;
  }
  if (xc_gbaScreen.TryCache()) {
    if (x18_gbaLink.TryCache()) {
      if (x4_gbaSupport->IsReady()) {
        CGuiFrame* frme = xc_gbaScreen.GetObject();
        if (frme->GetIsFinishedLoading()) {
          x24_loadedFrame = frme;
          FinishedLoading();
          return true;
        }
      }
    }
  }
  return false;
}

// SFusionBonusFrame::FinishedLoading
void CFrontEndUI::SFusionBonusFrame::FinishedLoading() {
  x28_tablegroup_options =
      static_cast< CGuiTableGroup* >(x24_loadedFrame->FindWidget("tablegroup_options"));
  x2c_tablegroup_fusionsuit =
      static_cast< CGuiTableGroup* >(x24_loadedFrame->FindWidget("tablegroup_fusionsuit"));
  x30_textpane_instructions = SFrontEndFrame::FindTextPanePair(x24_loadedFrame, "textpane_instructions");

  SFrontEndFrame::FindAndSetPairText(*x24_loadedFrame, "textpane_nes",
                                     gpStringTable->GetString(0x42));
  SFrontEndFrame::FindAndSetPairText(*x24_loadedFrame, "textpane_fusionsuit",
                                     gpStringTable->GetString(0x3f));
  SFrontEndFrame::FindAndSetPairText(*x24_loadedFrame, "textpane_fusionsuitno",
                                     gpStringTable->GetString(0x41));
  SFrontEndFrame::FindAndSetPairText(*x24_loadedFrame, "textpane_fusionsuityes",
                                     gpStringTable->GetString(0x40));
  SFrontEndFrame::FindAndSetPairText(*x24_loadedFrame, "textpane_title",
                                     gpStringTable->GetString(0x64));

  CGuiTextPane* proceed =
      static_cast< CGuiTextPane* >(x24_loadedFrame->FindWidget("textpane_proceed"));
  proceed->TextSupport().SetText(rstl::wstring_l(gpStringTable->GetString(0x55)));

  CGuiTextPane* cancel =
      static_cast< CGuiTextPane* >(x24_loadedFrame->FindWidget("textpane_cancel"));
  cancel->TextSupport().SetText(rstl::wstring_l(gpStringTable->GetString(0x52)));

  x2c_tablegroup_fusionsuit->SetIsActive(false);
  x2c_tablegroup_fusionsuit->SetIsVisible(false);
  x2c_tablegroup_fusionsuit->SetVertical(false);
  x2c_tablegroup_fusionsuit->SetUserSelection(gpGameState->SystemState().GetHasFusion() ? 1 : 0);

  SetTableColors(x28_tablegroup_options);
  SetTableColors(x2c_tablegroup_fusionsuit);

  x28_tablegroup_options->SetMenuAdvanceCallback(
      TFunctor1< CGuiTableGroup* const >(this, &SFusionBonusFrame::DoOptionsAdvance));
  x28_tablegroup_options->SetMenuSelectionChangeCallback(
      TFunctor3< CGuiTableGroup* const, const int, const int >(
          this, &SFusionBonusFrame::DoSelectionChange));
  x28_tablegroup_options->SetMenuCancelCallback(
      TFunctor1< CGuiTableGroup* const >(this, &SFusionBonusFrame::DoOptionsCancel));
  x2c_tablegroup_fusionsuit->SetMenuSelectionChangeCallback(
      TFunctor3< CGuiTableGroup* const, const int, const int >(
          this, &SFusionBonusFrame::DoSelectionChange));
}

// SFusionBonusFrame::ResetCompletionFlags
void CFrontEndUI::SFusionBonusFrame::ResetCompletionFlags() {
  x3a_mpNotComplete = false;
  x39_fusionNotComplete = false;
}

// SFusionBonusFrame::SetTableColors
void CFrontEndUI::SFusionBonusFrame::SetTableColors(CGuiTableGroup* tbgp) {
  CColor selected(uchar(0xff), uchar(0xff), uchar(0xff), uchar(0xff));
  CColor unselected(uchar(0xa0), uchar(0xa0), uchar(0xa0), uchar(0xc8));
  tbgp->SetColors(selected, unselected);
}

// SFusionBonusFrame::DoOptionsAdvance
void CFrontEndUI::SFusionBonusFrame::DoOptionsAdvance(const CGuiTableGroup* caller) {
  int sel = x28_tablegroup_options->GetUserSelection();
  uchar flags = reinterpret_cast< const uchar* >(gpGameState)[0x178];
  bool normalModeBeat = (flags >> 6) & 1;
  bool fusionLinked = (flags >> 7) & 1;
  bool fusionBeat = (flags >> 4) & 1;

  switch (sel) {
  case 1:
    if (x3a_mpNotComplete) {
      x3a_mpNotComplete = false;
      PlayAdvanceSfx();
    } else if (normalModeBeat) {
      if (fusionLinked)
        break;
      x0_gbaLinkFrame =
          rs_new SGBALinkFrame(x18_gbaLink.GetObject(), x4_gbaSupport.get(), false);
      PlayAdvanceSfx();
    } else {
      x3a_mpNotComplete = true;
      CSfxManager::SfxStart(SFXfnt_back, 0x7f, 0x40, false, CSfxManager::kMedPriority, false,
                            CSfxManager::kAllAreas);
    }
    break;
  case 0:
    if (x39_fusionNotComplete) {
      x39_fusionNotComplete = false;
      PlayAdvanceSfx();
    } else if (fusionBeat) {
      x8_action = kFA_PlayNESMetroid;
    } else {
      x0_gbaLinkFrame =
          rs_new SGBALinkFrame(x18_gbaLink.GetObject(), x4_gbaSupport.get(), false);
      PlayAdvanceSfx();
    }
    break;
  default:
    break;
  }
}

// SFusionBonusFrame::DoSelectionChange
void CFrontEndUI::SFusionBonusFrame::DoSelectionChange(const CGuiTableGroup* caller) {
  if (caller == x28_tablegroup_options) {
    CSfxManager::SfxStart(SFXfnt_selection_change, 0x7f, 0x40, false, CSfxManager::kMedPriority,
                          false, CSfxManager::kAllAreas);
    x3a_mpNotComplete = false;
    x39_fusionNotComplete = false;
  } else {
    CSfxManager::SfxStart(SFXfnt_enum_change, 0x7f, 0x40, false, CSfxManager::kMedPriority, false,
                          CSfxManager::kAllAreas);
    gpGameState->SystemState().SetHasFusion(
        x2c_tablegroup_fusionsuit->GetUserSelection() == 1);
    gpGameState->PlayerState()->SetIsFusionEnabled(
        x2c_tablegroup_fusionsuit->GetUserSelection() == 1);
  }
  SetTableColors(const_cast< CGuiTableGroup* >(caller));
}

// SFusionBonusFrame::DoOptionsCancel
void CFrontEndUI::SFusionBonusFrame::DoOptionsCancel(const CGuiTableGroup* caller) {
  if (x39_fusionNotComplete || x3a_mpNotComplete) {
    x3a_mpNotComplete = false;
    x39_fusionNotComplete = false;
    CSfxManager::SfxStart(SFXfnt_back, 0x7f, 0x40, false, CSfxManager::kMedPriority, false,
                          CSfxManager::kAllAreas);
  } else {
    x8_action = kFA_GoBack;
    x28_tablegroup_options->SetUserSelection(0);
    x2c_tablegroup_fusionsuit->SetIsActive(false);
    x30_textpane_instructions.SetPairText(rstl::wstring_l(L""));
    SetTableColors(x28_tablegroup_options);
  }
}

// CResFactory::CanBuild (weak function emitted here)
bool CResFactory::CanBuild(const SObjectTag& tag) {
  return false;
}

// CFrontEndUI::CFrontEndUI
CFrontEndUI::CFrontEndUI()
: CIOWin(rstl::string_l("FrontEndUI"))
, x14_phase(kP_LoadDepsGroup)
, x18_rndA(rand() % 3)
, x1c_rndB(rand() % 3)
, x20_depsGroup(gpSimplePool->GetObj("FrontEnd_DGRP"))
, x28_deps()
, x38_pressStart(gpSimplePool->GetObj("TXTR_PressStart"))
, x44_frontendAudioGrp(gpSimplePool->GetObj("FrontEnd_AGSC"))
, x50_curScreen(kS_OpenCredits)
, x54_nextScreen(kS_OpenCredits)
, x58_fadeBlackTimer(0.f)
, x5c_fadeBlackWithMovie(false)
, x60_pressStartTime(0.f)
, x64_pressStartAlpha(0.f)
, x68_musicVol(1.f)
, x6c_menuMovies(rstl::auto_ptr< CMoviePlayer >())
, xb8_curMovie(kMM_Stopped)
, xbc_nextAttract(0)
, xc0_attractCount(0)
, xc4_attractMovie()
, xcc_curMoviePtr(nullptr)
, xd0_playerSkipToTitle(false)
, xd1_moviesLoaded(false)
, xd2_deferSlideShow(false)
, xd4_audio1(nullptr)
, xd8_audio2(nullptr)
, xdc_saveUI(rs_new CSaveGameScreen(0, gpGameState->GetCardSerial()))
, xe0_frontendCardFrme(nullptr)
, xe4_fusionBonusFrme(nullptr)
, xe8_frontendNoCardFrme(nullptr)
, xec_emuFrme(nullptr)
, xf0_optionsFrme(nullptr)
, xf4_curAudio(nullptr) {
  gpMain->ResetGameState();
  gpGameState->SetCurrentWorldId(skDefaultWorld.GetId());
  gpGameState->GameOptions().ResetToDefaults();
  gpGameState->WriteBackupBuf();
  gpResourceFactory->CanBuild(skDefaultWorld);
  x20_depsGroup.Lock();
  for (int i = 0; CDvdFile::FileExists(GetAttractMovieFileName(i)); ++i) {
    ++xc0_attractCount;
  }
}

// CFrontEndUI::~CFrontEndUI
CFrontEndUI::~CFrontEndUI() {
  if (x14_phase >= kP_DisplayFrontEnd) {
    CAudioSys::SysPopGroupFromARAM();
    CAudioGroupSet* agsc = x44_frontendAudioGrp.GetObject();
    const rstl::string groupName(
        *reinterpret_cast< const rstl::string* >(
            reinterpret_cast< const uchar* >(agsc) + 0x20));
    CAudioSys::SysUnloadGroupSet(groupName);
  }
  CStreamAudioManager::FadeBackIn(0.f);
}

// CFrontEndUI::TransitionToFive
void CFrontEndUI::TransitionToFive() {}

// CFrontEndUI::OnMessage
CIOWin::EMessageReturn CFrontEndUI::OnMessage(const CArchitectureMessage& message,
                                               CArchitectureQueue& queue) {
  return kMR_Normal;
}

// CFrontEndUI::UpdateMusicVol
void CFrontEndUI::UpdateMusicVol() {}

// CFrontEndUI::FinishedLoadingDepsGroup
void CFrontEndUI::FinishedLoadingDepsGroup() {}

// CFrontEndUI::PumpLoad
bool CFrontEndUI::PumpLoad() {
  return false;
}

// CFrontEndUI::Update
CIOWin::EMessageReturn CFrontEndUI::Update(float dt, CArchitectureQueue& queue) {
  return kMR_Normal;
}

// CFrontEndUI::PumpMovieLoad
bool CFrontEndUI::PumpMovieLoad() {
  return false;
}

// CFrontEndUI::UpdateMovies
void CFrontEndUI::UpdateMovies(float dt) {}

// CFrontEndUI::ProcessUserInput
void CFrontEndUI::ProcessUserInput(const CFinalInput& input, CArchitectureQueue& queue) {}

// CFrontEndUI::Draw
void CFrontEndUI::Draw() const {}

// CFrontEndUI::CanShowSaveUI
bool CFrontEndUI::CanShowSaveUI() {
  return false;
}

// CFrontEndUI::StartStateTransition
void CFrontEndUI::StartStateTransition(EScreen screen) {}

// CFrontEndUI::CompleteStateTransition
void CFrontEndUI::CompleteStateTransition() {}

// CFrontEndUI::StartAttractMovie
void CFrontEndUI::StartAttractMovie(int idx) {}

// CFrontEndUI::StopAttractMovie
void CFrontEndUI::StopAttractMovie() {}

// CFrontEndUI::SetCurrentMovie
void CFrontEndUI::SetCurrentMovie(EMenuMovie movie) {}

// CFrontEndUI::GetNextAttractMovieFileName
const char* CFrontEndUI::GetNextAttractMovieFileName(int idx) {
  return nullptr;
}

// CFrontEndUI::GetAttractMovieFileName
const char* CFrontEndUI::GetAttractMovieFileName(int idx) {
  return nullptr;
}

// CFrontEndUI::SetFadeBlackTimer
void CFrontEndUI::SetFadeBlackTimer(float seconds) {}

// CFrontEndUI::SetFadeBlackWithMovie
void CFrontEndUI::SetFadeBlackWithMovie() {}

// CFrontEndUI::StartSlideShow
void CFrontEndUI::StartSlideShow(CArchitectureQueue& queue) {}
