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

#include "MetroidPrime/Decode.hpp"
#include "MetroidPrime/CMain.hpp"
#include "MetroidPrime/CMemoryCard.hpp"
#include "MetroidPrime/CSaveWorldMemory.hpp"
#include "MetroidPrime/CSlideShow.hpp"
#include "MetroidPrime/CGBASupport.hpp"
#include "MetroidPrime/CNESEmulator.hpp"
#include "MetroidPrime/CQuitGameScreen.hpp"
#include "MetroidPrime/CSaveGameScreen.hpp"
#include "MetroidPrime/SOptionsFrontEndFrame.hpp"
#include "MetroidPrime/CStateSetterFlow.hpp"
#include "MetroidPrime/DefaultWorld.hpp"
#include "MetroidPrime/Player/CGameState.hpp"
#include "MetroidPrime/Tweaks/CTweakGame.hpp"

#include "MetroidPrime/SFX/FrontEnd.h"

#include "Kyoto/Input/CFinalInput.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "MetaRender/CCubeRenderer.hpp"
#include "MetroidPrime/Cameras/CCameraFilterPass.hpp"

#include "rstl/math.hpp"
#include "rstl/StringExtras.hpp"

#include <stdio.h>
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
    {"Video/08_GBA_fileselect.thp", false},
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

static const char* kFrontEndAGSCName = "FrontEnd_AGSC";
static const char* kAudioFrontend1Path = "Audio/frontend_1.rsf";
static const char* kAudioFrontend2Path = "Audio/frontend_2.rsf";

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
int CFrontEndUI::SNesEmulatorFrame::Update(float dt, CSaveGameScreen& saveUi) {
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
      CGraphics::SetModelMatrix(CTransform4f::Translate(-280.f, 0.f, -160.f));
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
void CFrontEndUI::SNewFileSelectFrame::StartTextAnimating(CGuiTextPane* text, rstl::wstring str,
                                                          float chRate) {
  text->TextSupport().SetText(rstl::wstring_l(L""));
  text->TextSupport().SetText(str);
  text->TextSupport().SetTypeWriteEffectOptions(true, 0.1f, chRate);
}

// SNewFileSelectFrame::FindFileSelectOption
CFrontEndUI::SFileSelectOption
CFrontEndUI::SNewFileSelectFrame::FindFileSelectOption(CGuiFrame* frame, int idx) {
  SFileSelectOption opt;
  opt.x0_base = frame->FindWidget(CBasics::Stringize("basewidget_file%d", idx));
  opt.x28_curField = 0;
  opt.x2c_chRate = SFileSelectOption::ComputeRandom();

  char buf[44];
  sprintf(buf, "textpane_filename%d", idx);
  opt.x4_textpanes.push_back(SFrontEndFrame::FindTextPanePair(frame, buf));

  sprintf(buf, "textpane_world%d", idx);
  opt.x4_textpanes.push_back(SFrontEndFrame::FindTextPanePair(frame, buf));

  sprintf(buf, "textpane_playtime%d", idx);
  opt.x4_textpanes.push_back(SFrontEndFrame::FindTextPanePair(frame, buf));

  sprintf(buf, "textpane_date%d", idx);
  opt.x4_textpanes.push_back(SFrontEndFrame::FindTextPanePair(frame, buf));

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
  if (x1c_loadedFrame) {
    return true;
  }
  if (x10_frme.TryCache()) {
    CGuiFrame* frme = x10_frme.GetObject();
    if (frme->GetIsFinishedLoading()) {
      x1c_loadedFrame = frme;
      FinishedLoading();
      return true;
    }
  }
  return false;
}

// fn_80020B98 (stub)
// fn_80020B34 (stub)

// SNewFileSelectFrame::FinishedLoading
void CFrontEndUI::SNewFileSelectFrame::FinishedLoading() {
  x20_tablegroup_fileselect =
      static_cast< CGuiTableGroup* >(x1c_loadedFrame->FindWidget("tablegroup_fileselect"));
  x24_model_erase =
      static_cast< CGuiModel* >(x1c_loadedFrame->FindWidget("model_erase"));
  xf8_model_erase_position = x24_model_erase->GetLocalPosition();

  x28_textpane_erase = SFrontEndFrame::FindTextPanePair(x1c_loadedFrame, "textpane_erase");
  x38_textpane_gba = SFrontEndFrame::FindTextPanePair(x1c_loadedFrame, "textpane_gba");
  x30_textpane_cheats = SFrontEndFrame::FindTextPanePair(x1c_loadedFrame, "textpane_cheats");
  x48_textpane_popupadvance =
      SFrontEndFrame::FindTextPanePair(x1c_loadedFrame, "textpane_popupadvance");
  x50_textpane_popupcancel =
      SFrontEndFrame::FindTextPanePair(x1c_loadedFrame, "textpane_popupcancel");
  x58_textpane_popupextra =
      SFrontEndFrame::FindTextPanePair(x1c_loadedFrame, "textpane_popupextra");

  x40_tablegroup_popup =
      static_cast< CGuiTableGroup* >(x1c_loadedFrame->FindWidget("tablegroup_popup"));
  x44_model_dash7 =
      static_cast< CGuiModel* >(x1c_loadedFrame->FindWidget("model_dash7"));
  x60_textpane_cancel =
      static_cast< CGuiTextPane* >(x1c_loadedFrame->FindWidget("textpane_cancel"));

  SFrontEndFrame::FindAndSetPairText(*x1c_loadedFrame, "textpane_title",
                                     gpStringTable->GetString(0x61));

  CGuiTextPane* proceed =
      static_cast< CGuiTextPane* >(x1c_loadedFrame->FindWidget("textpane_proceed"));
  if (proceed) {
    proceed->TextSupport().SetText(rstl::wstring_l(gpStringTable->GetString(0x55)));
  }

  x40_tablegroup_popup->SetIsVisible(false);
  x40_tablegroup_popup->SetIsActive(false);
  x40_tablegroup_popup->SetVertical(false);
  x40_tablegroup_popup->GetWorkerWidget(2)->SetIsSelectable(false);
  x40_tablegroup_popup->GetWorkerWidget(2)->SetVisibility(false, kTM_Children);

  x20_tablegroup_fileselect->SetMenuAdvanceCallback(
      TFunctor1< CGuiTableGroup* const >(this, &SNewFileSelectFrame::DoFileselectAdvance));
  x20_tablegroup_fileselect->SetMenuSelectionChangeCallback(
      TFunctor3< CGuiTableGroup* const, const int, const int >(
          this, &SNewFileSelectFrame::DoSelectionChange));
  x20_tablegroup_fileselect->SetMenuCancelCallback(
      TFunctor1< CGuiTableGroup* const >(this, &SNewFileSelectFrame::DoFileselectCancel));

  x40_tablegroup_popup->SetMenuAdvanceCallback(
      TFunctor1< CGuiTableGroup* const >(this, &SNewFileSelectFrame::DoPopupAdvance));
  x40_tablegroup_popup->SetMenuSelectionChangeCallback(
      TFunctor3< CGuiTableGroup* const, const int, const int >(
          this, &SNewFileSelectFrame::DoSelectionChange));
  x40_tablegroup_popup->SetMenuCancelCallback(
      TFunctor1< CGuiTableGroup* const >(this, &SNewFileSelectFrame::DoPopupCancel));

  for (int i = 0; i < 3; ++i) {
    x64_fileSelections.push_back(FindFileSelectOption(x1c_loadedFrame, i));
  }

  x104_rowPitch =
      (x64_fileSelections[1].x0_base->GetLocalPosition() -
       x64_fileSelections[0].x0_base->GetLocalPosition()).GetZ();
}

// SNewFileSelectFrame::GetUserFileSelection
uint CFrontEndUI::SNewFileSelectFrame::GetUserFileSelection() const {
  int sel = x20_tablegroup_fileselect->GetUserSelection();
  return sel < 3 ? sel : 0;
}

// SNewFileSelectFrame::Update
void CFrontEndUI::SNewFileSelectFrame::Update(float dt) {
  bool saveReady = x4_saveUI->GetUIType() == 0x10;
  if (saveReady != x10c_saveReady) {
    if (saveReady) {
      ClearFrameContents();
    } else {
      if (x8_subMenu != kSM_Root) {
        ResetFrame();
        DeactivateExistingGamePopup();
        DeactivateNewGamePopup();
        x8_subMenu = kSM_Root;
      }
    }
    x10c_saveReady = saveReady;
  }
  if (x10c_saveReady) {
    SetupFrameContents();
  }
  x1c_loadedFrame->Update(dt);
}

// CGuiWidget::GetIsActive (weak function emitted here)
bool CGuiWidget::GetIsActive() const {
  return xb6_26_isActive;
}

// SNewFileSelectFrame::ProcessUserInput
CFrontEndUI::SNewFileSelectFrame::EAction
CFrontEndUI::SNewFileSelectFrame::ProcessUserInput(const CFinalInput& input) {
  xc_action = kA_None;

  if (x8_subMenu != kSM_EraseGamePopup) {
    x4_saveUI->ProcessUserInput(input);
  }

  if (IsTextDoneAnimating()) {
    x108_curTime = rstl::min_val(0.5f, x108_curTime + input.Time());
  }

  if (x108_curTime < 0.5f) {
    return xc_action;
  }

  if (x10c_saveReady) {
    x1c_loadedFrame->ProcessUserInput(input);
  }

  if (x10d_needsEraseToggle) {
    if (x40_tablegroup_popup->GetIsActive()) {
      DeactivateExistingGamePopup();
    } else {
      ActivateExistingGamePopup();
    }
    x10d_needsEraseToggle = false;
  }

  if (x10e_needsNewToggle) {
    if (x40_tablegroup_popup->GetIsActive()) {
      DeactivateNewGamePopup();
    } else {
      ActivateNewGamePopup();
    }
    x10e_needsNewToggle = false;
  }

  return xc_action;
}

// SNewFileSelectFrame::Draw
void CFrontEndUI::SNewFileSelectFrame::Draw() const {
  if (x1c_loadedFrame != NULL && x10c_saveReady) {
    x1c_loadedFrame->Draw(CGuiWidgetDrawParms::sDefaultDrawParms);
  }
}

// SNewFileSelectFrame::HandleActiveChange
void CFrontEndUI::SNewFileSelectFrame::HandleActiveChange(CGuiWidget* active) {
  if (active != NULL) {
    int sel = static_cast< CGuiTableGroup* >(active)->GetUserSelection();
    CColor selected((uchar)0xFF, (uchar)0xFF, (uchar)0xFF, (uchar)0xFF);
    CColor unselected((uchar)0xA0, (uchar)0xA0, (uchar)0xA0, (uchar)0xC8);
    static_cast< CGuiTableGroup* >(active)->SetColors(selected, unselected);
    if (active == x20_tablegroup_fileselect) {
      CVector3f pos =
          xf8_model_erase_position + CVector3f(0.f, 0.f, sel * x104_rowPitch);
      const CTransform4f& xf = CTransform4f::Translate(pos);
      CGuiModel* erase = x24_model_erase;
      erase->LocalTransform() = xf;
      erase->RecalculateTransforms();
    }
    bool shouldHide = (x8_subMenu == kSM_Root || x8_subMenu == kSM_NewGamePopup);
    if (shouldHide) {
      x24_model_erase->SetIsVisible(false);
    } else {
      x24_model_erase->SetIsVisible(true);
    }
  }
}

// SNewFileSelectFrame::DoFileselectAdvance
void CFrontEndUI::SNewFileSelectFrame::DoFileselectAdvance(const CGuiTableGroup* caller) {
  int userSel = x20_tablegroup_fileselect->GetUserSelection();
  if (userSel < 3) {
    if (x8_subMenu == kSM_EraseGame) {
      if (x4_saveUI->GetGameData(userSel) != NULL) {
        PlayAdvanceSfx();
        x10d_needsEraseToggle = true;
      }
    } else {
      if (x4_saveUI->GetGameData(userSel) != NULL) {
        x4_saveUI->StartGame(userSel);
      } else {
        x10e_needsNewToggle = true;
      }
    }
  } else if (userSel == 3) {
    PlayAdvanceSfx();
    EnterErase();
  } else if (userSel == 4) {
    xc_action = kA_FusionBonus;
  } else if (userSel == 5) {
    xc_action = kA_SlideShow;
  }
}

// SNewFileSelectFrame::SetupFrameContents
void CFrontEndUI::SNewFileSelectFrame::SetupFrameContents() {
  for (int i = 0; i < 3; ++i) {
    SFileSelectOption& option = x64_fileSelections[i];
    if (option.x28_curField == 4)
      continue;

    CGuiTextPane* curPane;
    if (option.x28_curField == -1) {
      curPane = NULL;
    } else {
      curPane = option.x4_textpanes[option.x28_curField].x0_panes[0];
    }

    if (curPane != NULL) {
      float total = curPane->TextSupport().GetNumCharsTotal();
      float printed = curPane->TextSupport().GetNumCharactersPrinted();
      if (!(printed >= total))
        continue;
    }

    ++option.x28_curField;
    if (option.x28_curField >= 4)
      continue;

    const CGameState::GameFileStateInfo* data =
        static_cast< const CGameState::GameFileStateInfo* >(x4_saveUI->GetGameData(i));
    SGuiTextPair& populatePair = option.x4_textpanes[option.x28_curField];
    CGuiTextPane* pane0 = populatePair.x0_panes[0];
    CGuiTextPane* pane1 = populatePair.x0_panes[1];
    rstl::wstring str;

    switch (option.x28_curField) {
    case 0:
      if (data != NULL) {
        char buf[32];
        sprintf(buf, "  %02d%%", data->x18_itemPercent);
        int strIdx = data->x20_hardMode ? 0x6a : 0x27;
        str = rstl::wstring_l(gpStringTable->GetString(strIdx + i)) +
              CStringExtras::ConvertToUNICODE(rstl::string_l(buf));
      } else {
        str = rstl::wstring(gpStringTable->GetString(0x24));
      }
      break;
    case 1:
      if (data != NULL) {
        const wchar_t* worldName = NULL;
        if (gpMemoryCard->HasSaveWorldMemory(data->x8_mlvlId)) {
          worldName = gpMemoryCard->GetSaveWorldMemory(data->x8_mlvlId).GetFrontEndName();
        }
        str = rstl::wstring_l(worldName != NULL ? worldName : L"");
      } else {
        str = rstl::wstring_l(gpStringTable->GetString(0x33));
      }
      break;
    case 2:
      if (data != NULL) {
        int seconds = static_cast< int >(data->x0_playTime);
        int hours = seconds / 3600;
        int minutes = (seconds % 3600) / 60;
        char buf[32];
        sprintf(buf, "%02d:%02d", hours, minutes);
        str = CStringExtras::ConvertToUNICODE(rstl::string_l(buf));
      } else {
        str = rstl::wstring_l(gpStringTable->GetString(0x34));
      }
      break;
    case 3:
      if (data != NULL) {
        str = rstl::wstring_l(gpStringTable->GetString(0x36));
      } else {
        str = rstl::wstring_l(gpStringTable->GetString(0x35));
      }
      break;
    }

    StartTextAnimating(pane0, str, option.x2c_chRate);
    StartTextAnimating(pane1, str, option.x2c_chRate);
  }
}

// SNewFileSelectFrame::ClearFrameContents
void CFrontEndUI::SNewFileSelectFrame::ClearFrameContents() {
  x108_curTime = 0.f;
  bool hasSave = false;
  for (int i = 0; i < 3; ++i) {
    if (x4_saveUI->GetGameData(i) != NULL) {
      hasSave = true;
    }
    x64_fileSelections[i].x2c_chRate = SFileSelectOption::ComputeRandom();
    x64_fileSelections[i].x28_curField = -1;
    for (int j = 0; j < 4; ++j) {
      x64_fileSelections[i].x4_textpanes[j].x0_panes[0]->TextSupport().SetText(
          rstl::wstring_l(L""), false);
      x64_fileSelections[i].x4_textpanes[j].x0_panes[1]->TextSupport().SetText(
          rstl::wstring_l(L""), false);
    }
  }

  StartTextAnimating(x28_textpane_erase.x0_panes[0],
                     rstl::wstring_l(gpStringTable->GetString(0x26)), 60.f);
  StartTextAnimating(x38_textpane_gba.x0_panes[0],
                     rstl::wstring_l(gpStringTable->GetString(0x25)), 60.f);
  StartTextAnimating(x30_textpane_cheats.x0_panes[0],
                     rstl::wstring_l(gpStringTable->GetString(0x60)), 60.f);

  StartTextAnimating(x28_textpane_erase.x0_panes[1],
                     rstl::wstring_l(gpStringTable->GetString(0x26)), 60.f);
  StartTextAnimating(x38_textpane_gba.x0_panes[1],
                     rstl::wstring_l(gpStringTable->GetString(0x25)), 60.f);
  StartTextAnimating(x30_textpane_cheats.x0_panes[1],
                     rstl::wstring_l(gpStringTable->GetString(0x60)), 60.f);

  CGuiTextPane* erasePane = x28_textpane_erase.x0_panes[0];
  if (hasSave) {
    erasePane->SetIsSelectable(true);
    erasePane->TextSupport().SetFontColor(CColor::White());
  } else {
    erasePane->SetIsSelectable(false);
    erasePane->TextSupport().SetFontColor(CColor::Grey().WithAlphaOf(0.5f));
  }

  x20_tablegroup_fileselect->SetUserSelection(0);
  CGuiTextPane* cheats =
      static_cast< CGuiTextPane* >(x20_tablegroup_fileselect->GetWorkerWidget(5));
  if (CSlideShow::SlideShowGalleryFlags()) {
    cheats->SetIsSelectable(true);
    x30_textpane_cheats.x0_panes[0]->TextSupport().SetFontColor(CColor::White());
  } else {
    cheats->SetIsSelectable(false);
    x30_textpane_cheats.x0_panes[0]->TextSupport().SetFontColor(
        CColor::Grey().WithAlphaOf(0.5f));
  }

  HandleActiveChange(x20_tablegroup_fileselect);
}

// SNewFileSelectFrame::EnterErase
void CFrontEndUI::SNewFileSelectFrame::EnterErase() {
  x8_subMenu = kSM_EraseGame;

  x28_textpane_erase.x0_panes[0]->SetIsSelectable(false);
  CGuiTextSupport& eraseTS = x28_textpane_erase.x0_panes[0]->TextSupport();
  eraseTS.SetFontColor(CColor::Grey().WithAlphaOf(0.5f));

  x38_textpane_gba.x0_panes[0]->SetIsSelectable(false);
  CGuiTextSupport& gbaTS = x38_textpane_gba.x0_panes[0]->TextSupport();
  gbaTS.SetFontColor(CColor::Grey().WithAlphaOf(0.5f));

  x30_textpane_cheats.x0_panes[0]->SetIsSelectable(false);
  CGuiTextSupport& cheatsTS = x30_textpane_cheats.x0_panes[0]->TextSupport();
  cheatsTS.SetFontColor(CColor::Grey().WithAlphaOf(0.5f));

  for (int i = 2; i >= 0; --i) {
    if (x4_saveUI->GetGameData(i)) {
      x64_fileSelections[i].x0_base->SetIsSelectable(true);
      x20_tablegroup_fileselect->SetUserSelection(i);
    } else {
      x64_fileSelections[i].x0_base->SetIsSelectable(false);
    }
  }

  x60_textpane_cancel->TextSupport().SetText(rstl::wstring_l(gpStringTable->GetString(0x52)));
  HandleActiveChange(x20_tablegroup_fileselect);
}

// SNewFileSelectFrame::ResetFrame
void CFrontEndUI::SNewFileSelectFrame::ResetFrame() {
  x8_subMenu = kSM_Root;

  x38_textpane_gba.x0_panes[0]->SetIsSelectable(true);
  x38_textpane_gba.x0_panes[0]->TextSupport().SetFontColor(CColor::White());

  x30_textpane_cheats.x0_panes[0]->SetIsSelectable(true);
  x30_textpane_cheats.x0_panes[0]->TextSupport().SetFontColor(CColor::White());

  ClearFrameContents();

  for (int i = 2; i >= 0; --i) {
    x20_tablegroup_fileselect->GetWorkerWidget(i)->SetIsSelectable(true);
  }

  x60_textpane_cancel->TextSupport().SetText(rstl::wstring_l(L""));
}

// SNewFileSelectFrame::ActivateNewGamePopup
void CFrontEndUI::SNewFileSelectFrame::ActivateNewGamePopup() {
  x40_tablegroup_popup->SetIsActive(true);
  x40_tablegroup_popup->SetIsVisible(true);
  x40_tablegroup_popup->SetUserSelection(0);
  const CTransform4f& xf =
      CTransform4f::Translate(0.f, 0.f,
                              x104_rowPitch * x20_tablegroup_fileselect->GetUserSelection()) *
      x40_tablegroup_popup->GetTransform();
  CGuiTableGroup* popup = x40_tablegroup_popup;
  popup->LocalTransform() = xf;
  popup->RecalculateTransforms();
  x20_tablegroup_fileselect->SetIsActive(false);
  x8_subMenu = kSM_NewGamePopup;
  HandleActiveChange(x40_tablegroup_popup);
  CColor col(static_cast< uchar >(0xff), static_cast< uchar >(0xff),
             static_cast< uchar >(0xff), static_cast< uchar >(0x00));
  x64_fileSelections[x20_tablegroup_fileselect->GetUserSelection()].x0_base->SetColor(col);

  PlayAdvanceSfx();

  if (gpGameState->SystemState().GetNormalModeBeat()) {
    x48_textpane_popupadvance.SetPairText(rstl::wstring_l(gpStringTable->GetString(0x66)));
    x50_textpane_popupcancel.SetPairText(rstl::wstring_l(gpStringTable->GetString(0x5e)));
    x58_textpane_popupextra.SetPairText(rstl::wstring_l(gpStringTable->GetString(0x65)));

    x40_tablegroup_popup->GetWorkerWidget(2)->SetIsSelectable(true);
    x40_tablegroup_popup->GetWorkerWidget(2)->SetVisibility(true, kTM_Children);
    x44_model_dash7->SetVisibility(true, kTM_Children);
  } else {
    x48_textpane_popupadvance.SetPairText(rstl::wstring_l(gpStringTable->GetString(0x43)));
    x50_textpane_popupcancel.SetPairText(rstl::wstring_l(gpStringTable->GetString(0x5e)));
    x44_model_dash7->SetVisibility(false, kTM_Children);
  }
  x60_textpane_cancel->TextSupport().SetText(rstl::wstring_l(gpStringTable->GetString(0x52)));
}

// SNewFileSelectFrame::DeactivateNewGamePopup
void CFrontEndUI::SNewFileSelectFrame::DeactivateNewGamePopup() {
  x40_tablegroup_popup->SetIsActive(false);
  x40_tablegroup_popup->SetIsVisible(false);
  x20_tablegroup_fileselect->SetIsActive(true);

  x40_tablegroup_popup->GetWorkerWidget(2)->SetIsSelectable(false);
  x40_tablegroup_popup->GetWorkerWidget(2)->SetVisibility(false, kTM_Children);

  x44_model_dash7->SetVisibility(false, kTM_Children);

  x10e_needsNewToggle = false;
  HandleActiveChange(x20_tablegroup_fileselect);
  CColor white(static_cast< uchar >(0xff), static_cast< uchar >(0xff),
               static_cast< uchar >(0xff), static_cast< uchar >(0xff));
  x64_fileSelections[x20_tablegroup_fileselect->GetUserSelection()].x0_base->SetColor(white);
  x60_textpane_cancel->TextSupport().SetText(rstl::wstring_l(L""));
}

// SNewFileSelectFrame::ActivateExistingGamePopup
void CFrontEndUI::SNewFileSelectFrame::ActivateExistingGamePopup() {
  x40_tablegroup_popup->SetIsActive(true);
  x40_tablegroup_popup->SetIsVisible(true);
  x40_tablegroup_popup->SetUserSelection(0);
  const CTransform4f& xf =
      CTransform4f::Translate(0.f, 0.f,
                              x104_rowPitch * x20_tablegroup_fileselect->GetUserSelection()) *
      x40_tablegroup_popup->GetTransform();
  CGuiTableGroup* popup = x40_tablegroup_popup;
  popup->LocalTransform() = xf;
  popup->RecalculateTransforms();
  x20_tablegroup_fileselect->SetIsActive(false);
  x8_subMenu = kSM_EraseGamePopup;
  HandleActiveChange(x40_tablegroup_popup);
  x48_textpane_popupadvance.SetPairText(rstl::wstring_l(gpStringTable->GetString(0x5f)));
  x50_textpane_popupcancel.SetPairText(rstl::wstring_l(gpStringTable->GetString(0x26)));
  CColor col(static_cast< uchar >(0xff), static_cast< uchar >(0xff),
             static_cast< uchar >(0xff), static_cast< uchar >(0x00));
  x64_fileSelections[x20_tablegroup_fileselect->GetUserSelection()].x0_base->SetColor(col);
  x44_model_dash7->SetVisibility(false, kTM_Children);
}

// SNewFileSelectFrame::DeactivateExistingGamePopup
void CFrontEndUI::SNewFileSelectFrame::DeactivateExistingGamePopup() {
  x40_tablegroup_popup->SetIsActive(false);
  x40_tablegroup_popup->SetIsVisible(false);
  x20_tablegroup_fileselect->SetIsActive(true);
  HandleActiveChange(x20_tablegroup_fileselect);
  CColor white(static_cast< uchar >(0xff), static_cast< uchar >(0xff),
               static_cast< uchar >(0xff), static_cast< uchar >(0xff));
  x64_fileSelections[x20_tablegroup_fileselect->GetUserSelection()].x0_base->SetColor(white);
}

// SNewFileSelectFrame::IsTextDoneAnimating
bool CFrontEndUI::SNewFileSelectFrame::IsTextDoneAnimating() {
  for (int i = 0; i < 3; ++i) {
    if (x64_fileSelections[i].x28_curField != 4)
      return false;
  }

  const CGuiTextSupport& ts1 = x28_textpane_erase.x0_panes[0]->GetTextSupport();
  float curTime = ts1.GetCurTime();
  if (curTime < ts1.GetTotalAnimationTime())
    return false;

  const CGuiTextSupport& ts2 = x30_textpane_cheats.x0_panes[0]->GetTextSupport();
  curTime = ts2.GetCurTime();
  if (curTime < ts2.GetTotalAnimationTime())
    return false;

  const CGuiTextSupport& ts3 = x38_textpane_gba.x0_panes[0]->GetTextSupport();
  curTime = ts3.GetCurTime();
  return !(curTime < ts3.GetTotalAnimationTime());
}

// SNewFileSelectFrame::DoSelectionChange
void CFrontEndUI::SNewFileSelectFrame::DoSelectionChange(const CGuiTableGroup* caller) {
  HandleActiveChange(const_cast< CGuiTableGroup* >(caller));
  CSfxManager::SfxStart(SFXfnt_selection_change, 0x7f, 0x40, false, CSfxManager::kMedPriority, false,
                        CSfxManager::kAllAreas);
}

// SNewFileSelectFrame::DoFileselectCancel
void CFrontEndUI::SNewFileSelectFrame::DoFileselectCancel(const CGuiTableGroup* caller) {
  if (x8_subMenu == kSM_EraseGame) {
    CSfxManager::SfxStart(SFXfnt_back, 0x7f, 0x40, false, CSfxManager::kMedPriority, false,
                          CSfxManager::kAllAreas);
    ResetFrame();
  }
}

// SNewFileSelectFrame::DoPopupAdvance
void CFrontEndUI::SNewFileSelectFrame::DoPopupAdvance(const CGuiTableGroup* caller) {
  if (x8_subMenu == kSM_EraseGamePopup) {
    if (x40_tablegroup_popup->GetUserSelection() == 1) {
      int fileSelection = x20_tablegroup_fileselect->GetUserSelection();
      PlayAdvanceSfx();
      x4_saveUI->EraseGame(fileSelection);
      ResetFrame();
    } else {
      x8_subMenu = kSM_EraseGame;
    }
    x10d_needsEraseToggle = true;
  } else {
    if (gpGameState->SystemState().GetNormalModeBeat()) {
      if (x40_tablegroup_popup->GetUserSelection() == 1) {
        PlayAdvanceSfx();
        xc_action = kA_GameOptions;
        return;
      }
      int fileSelection = GetUserFileSelection();
      gpGameState->SetHardMode(!x40_tablegroup_popup->GetUserSelection());
      x4_saveUI->StartGame(fileSelection);
    } else {
      if (x40_tablegroup_popup->GetUserSelection() == 1) {
        PlayAdvanceSfx();
        xc_action = kA_GameOptions;
        return;
      }
      int fileSelection = GetUserFileSelection();
      x4_saveUI->StartGame(fileSelection);
    }
  }
}

// SNewFileSelectFrame::DoPopupCancel
void CFrontEndUI::SNewFileSelectFrame::DoPopupCancel(const CGuiTableGroup* caller) {
  if (x8_subMenu == kSM_EraseGamePopup) {
    CSfxManager::SfxStart(SFXfnt_back, 0x7f, 0x40, false, CSfxManager::kMedPriority, false,
                          CSfxManager::kAllAreas);
    x8_subMenu = kSM_EraseGame;
    x10d_needsEraseToggle = true;
  } else {
    CSfxManager::SfxStart(SFXfnt_back, 0x7f, 0x40, false, CSfxManager::kMedPriority, false,
                          CSfxManager::kAllAreas);
    x8_subMenu = kSM_Root;
    x10e_needsNewToggle = true;
  }
}

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
  return x4_resLoader.ResourceExists(tag);
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
, x44_frontendAudioGrp(gpSimplePool->GetObj(kFrontEndAGSCName))
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
  {
    int i = 0;
  loop:
    if (!CDvdFile::FileExists(GetAttractMovieFileName(i)))
      goto done;
    ++xc0_attractCount;
    ++i;
    goto loop;
  done:;
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
void CFrontEndUI::TransitionToFive() {
  if (x14_phase < kP_ToPlayGame) {
    CSfxManager::SfxStart(FETransitionForwardSFX[x1c_rndB][0], 0x7f, 0x40, false,
                          CSfxManager::kMedPriority, false, CSfxManager::kAllAreas);
    CSfxManager::SfxStart(FETransitionForwardSFX[x1c_rndB][1], 0x7f, 0x40, false,
                          CSfxManager::kMedPriority, false, CSfxManager::kAllAreas);
    x14_phase = kP_ToPlayGame;
    StartStateTransition(kS_ToPlayGame);
  }
}

// CFrontEndUI::OnMessage
CIOWin::EMessageReturn CFrontEndUI::OnMessage(const CArchitectureMessage& message,
                                               CArchitectureQueue& queue) {
  switch (message.GetType()) {
  case kAM_TimerTick: {
    float dt = MakeMsg::GetParmTimerTick(message).GetReal();
    return Update(dt, queue);
  }
  case kAM_UserInput: {
    const CFinalInput& input = MakeMsg::GetParmUserInput(message).GetUserInput();
    ProcessUserInput(input, queue);
    break;
  }
  case kAM_QuitGameplay:
    x14_phase = kP_ExitFrontEnd;
    break;
  default:
    break;
  }
  return kMR_Normal;
}

// CFrontEndUI::UpdateMusicVol
void CFrontEndUI::UpdateMusicVol() {
  float volMul = (xf4_curAudio == xd4_audio1.get()) ? 0.7421875f : 0.7421875f;
  if (xf4_curAudio != nullptr) {
    xf4_curAudio->SetVolume(
        CCast::ToUint8(volMul * x68_musicVol * (float)gpGameState->GameOptions().GetMusicVolume()));
  }
}

// CFrontEndUI::FinishedLoadingDepsGroup
void CFrontEndUI::FinishedLoadingDepsGroup() {
  CDependencyGroup* dgrp = x20_depsGroup.GetT();
  const rstl::vector< SObjectTag >& tags = dgrp->GetObjectTagVector();
  x28_deps.reserve(tags.size());
  for (const SObjectTag* it = tags.data(); it != tags.data() + tags.size(); ++it) {
    CToken tok(gpSimplePool->GetObj(*it));
    tok.Lock();
    x28_deps.push_back(tok);
  }
  x44_frontendAudioGrp.Lock();
}

// CFrontEndUI::PumpLoad
bool CFrontEndUI::PumpLoad() {
  for (int i = 0; i < x28_deps.size(); ++i) {
    if (!x28_deps[i].IsLoaded())
      return false;
  }
  return x44_frontendAudioGrp.TryCache();
}

// CFrontEndUI::Update
CIOWin::EMessageReturn CFrontEndUI::Update(float dt, CArchitectureQueue& queue) {
  // Update save UI if active and past file select phase
  if (xdc_saveUI.get() != nullptr && x50_curScreen >= kS_FileSelect) {
    int saveResult = xdc_saveUI->Update(dt);
    if (saveResult == 1) {
      TransitionToFive();
    } else if (saveResult == 3 || saveResult == 2) {
      xe0_frontendCardFrme = nullptr;
      xdc_saveUI = nullptr;
    }
  }

  UpdateMusicVol();

  switch (x14_phase) {
  case kP_LoadDepsGroup:
    if (x20_depsGroup.IsLoaded()) {
      FinishedLoadingDepsGroup();
      x20_depsGroup.Unlock();
      x14_phase = kP_LoadDeps;
    } else {
      return kMR_Exit;
    }
    // fallthrough
  case kP_LoadDeps:
    if (PumpLoad()) {
      xe0_frontendCardFrme = rs_new SNewFileSelectFrame(xdc_saveUI.get(), x1c_rndB);
      xe4_fusionBonusFrme = rs_new SFusionBonusFrame();
      xe8_frontendNoCardFrme = rs_new SFrontEndFrame(x1c_rndB);

      x38_pressStart.Lock();
      if (x38_pressStart.GetObject() == nullptr && x38_pressStart.IsLocked() && x38_pressStart.CToken::IsLoaded()) {
        x38_pressStart.ForceCache();
      }

      const SObjectTag* tag = gpResourceFactory->GetResourceIdByName(kFrontEndAGSCName);
      CAudioGroupSet* audioGrp = x44_frontendAudioGrp.GetObject();
      const rstl::string& audioGrpName = audioGrp->GetName();
      CAudioSys::SysLoadGroupSet(x44_frontendAudioGrp, audioGrpName, tag->GetId());
      CAudioSys::SysPushGroupIntoARAM(audioGrpName, 0x26);
      CAudioSys::SysUnloadSampleData(audioGrpName);

      xd4_audio1 = rs_new CStaticAudioPlayer(rstl::string_l(kAudioFrontend1Path), 416480, 1973664);

      xd8_audio2 = rs_new CStaticAudioPlayer(rstl::string_l(kAudioFrontend2Path), 273556, 1636980);

      x14_phase = kP_LoadFrames;
    }
    if (x14_phase == kP_LoadDeps) {
      return kMR_Exit;
    }
    // fallthrough
  case kP_LoadFrames:
    if (!xd4_audio1->IsReady() ||
        !xd8_audio2->IsReady() ||
        !xe0_frontendCardFrme->PumpLoad() ||
        !xe4_fusionBonusFrme->PumpLoad() ||
        !xe8_frontendNoCardFrme->PumpLoad() ||
        !xdc_saveUI->PumpLoad()) {
      return kMR_Exit;
    }

    xf4_curAudio = xd4_audio1.get();
    xf4_curAudio->StartMixOut();
    x14_phase = kP_LoadMovies;
    // fallthrough
  case kP_LoadMovies: {
    bool moviesReady = true;
    if (!PumpMovieLoad()) {
      moviesReady = false;
    } else {
      UpdateMovies(dt);
      for (int i = 0; i < 9; ++i) {
        if (!x6c_menuMovies[i]->GetIsFullyCached()) {
          moviesReady = false;
          break;
        }
      }
    }
    if (moviesReady) {
      x14_phase = kP_DisplayFrontEnd;
      StartStateTransition(kS_Title);
    } else {
      return kMR_Exit;
    }
    // fallthrough
  }
  case kP_DisplayFrontEnd:
  case kP_ToPlayGame:
    if (xec_emuFrme.get() != nullptr) {
      if (xec_emuFrme->Update(dt, *xdc_saveUI) == 1) {
        xec_emuFrme = nullptr;
        if (xdc_saveUI.get() != nullptr) {
          xdc_saveUI->SetInGame(false);
        }
        xf4_curAudio->StartMixOut();
      }
    } else {
      if (xd2_deferSlideShow) {
        xd2_deferSlideShow = false;
        xf4_curAudio->StartMixOut();
        if (xdc_saveUI.get() != nullptr) {
          xdc_saveUI->ResetCardDriver();
        }
      }

      if (IsInScreenNotTransitioning(kS_FileSelect)) {
        if (xf0_optionsFrme.get() == nullptr) {
          if (xe0_frontendCardFrme.get() == nullptr) {
            xe8_frontendNoCardFrme->Update(dt);
          } else {
            xe0_frontendCardFrme->Update(dt);
          }
        } else {
          CSaveGameScreen* saveUI = xdc_saveUI.get();
          bool optionsActive = true;
          if (saveUI != nullptr && saveUI->GetUIType() != CSaveGameScreen::kUIT_SaveReady) {
            optionsActive = false;
          }
          if (optionsActive) {
            xf0_optionsFrme->Update(dt, xdc_saveUI.get());
          } else {
            xf0_optionsFrme = nullptr;
          }
        }
      } else if (IsInScreenNotTransitioning(kS_FusionBonus)) {
        xe4_fusionBonusFrme->Update(dt, xdc_saveUI.get());
      }

      // Check movie transition completion
      if (x50_curScreen != x54_nextScreen) {
        if (xcc_curMoviePtr != nullptr && xcc_curMoviePtr->CanDrawVideo()) {
          if (xcc_curMoviePtr->GetIsMovieFinishedPlaying() || xcc_curMoviePtr->IsLooping()) {
            CompleteStateTransition();
          }
        }
      }

      // Handle fade timer
      if (x58_fadeBlackTimer > 0.f && !x5c_fadeBlackWithMovie) {
        SetFadeBlackTimer(rstl::max_val(x58_fadeBlackTimer - dt, 0.f));
        if (x58_fadeBlackTimer == 0.f) {
          if (IsInScreenNotTransitioning(kS_Title)) {
            if (xc0_attractCount > 0) {
              StartStateTransition(kS_AttractMovie);
            }
          } else if (x54_nextScreen == kS_AttractMovie) {
            CompleteStateTransition();
          } else if (x50_curScreen != x54_nextScreen) {
            CompleteStateTransition();
          }
        }
      }

      // Update movies
      UpdateMovies(dt);

      // Press start pulsing
      if (x50_curScreen == kS_Title && x54_nextScreen == kS_Title) {
        if (x58_fadeBlackTimer < 30.f - gpTweakGame->GetPressStartDelay()) {
          x60_pressStartTime = static_cast< float >(fmod(x60_pressStartTime + dt, 1.0));
          float halfTime = 0.5f;
          float alpha;
          if (x60_pressStartTime < halfTime) {
            alpha = x60_pressStartTime / halfTime;
          } else {
            alpha = (1.f - x60_pressStartTime) / halfTime;
          }
          x64_pressStartAlpha = alpha;
        }
      } else {
        x60_pressStartTime = 0.f;
        x64_pressStartAlpha = 0.f;
      }
    }

    // Music volume fade
    if (x50_curScreen == kS_Title && x54_nextScreen == kS_FileSelect) {
      if (xcc_curMoviePtr->CanDrawVideo()) {
        float delay = AudioFadeTimeA[x18_rndA];
        float t = (xcc_curMoviePtr->GetPlayedSeconds() - delay) / 2.5f;
        x68_musicVol = 1.f - CMath::Clamp(0.f, t, 1.f);
      }
    } else if (x54_nextScreen == kS_ToPlayGame) {
      if (xcc_curMoviePtr->CanDrawVideo()) {
        float delay = AudioFadeTimeB[x1c_rndB];
        float played = xcc_curMoviePtr->GetPlayedSeconds();
        float total = xcc_curMoviePtr->GetTotalSeconds();
        float t = (played - delay) / (total - delay);
        x68_musicVol = 1.f - CMath::Clamp(0.f, t, 1.f);
      }
    } else {
      x68_musicVol = 1.f;
    }

    return kMR_Exit;

  case kP_ExitFrontEnd:
    return kMR_RemoveIOWin;

  default:
    break;
  }

  return kMR_Exit;
}

// CFrontEndUI::PumpMovieLoad
bool CFrontEndUI::PumpMovieLoad() {
  if (xd1_moviesLoaded) {
    return true;
  }

  for (int i = 0; i < 9; ++i) {
    if (x6c_menuMovies[i].null()) {
      const FEMovie* movie = &FEMovies[i];
      char path[256];
      strcpy(path, movie->path);

      if (i == 2) {
        path[strlen(path) - 5] = static_cast< char >(x18_rndA + 'A');
      } else if (i == 4) {
        path[strlen(path) - 5] = static_cast< char >(x1c_rndB + 'A');
      }

      CMoviePlayer* mp = rs_new CMoviePlayer(path, 0.05f, movie->loop, true);
      x6c_menuMovies[i] = rstl::auto_ptr< CMoviePlayer >(mp);
      x6c_menuMovies[i]->SetPlayMode(CMoviePlayer::kPM_Stopped);
      return false;
    }

    if (x6c_menuMovies[i]->PumpIndexLoad()) {
      return false;
    }
  }

  xd1_moviesLoaded = true;
  return true;
}

// CFrontEndUI::UpdateMovies
void CFrontEndUI::UpdateMovies(float dt) {
  if (xcc_curMoviePtr != nullptr) {
    if (!xcc_curMoviePtr->PumpIndexLoad()) {
      if (x5c_fadeBlackWithMovie) {
        x5c_fadeBlackWithMovie = false;
        x58_fadeBlackTimer = xcc_curMoviePtr->GetTotalSeconds();
      }
    }
  }

  for (int i = 0; i < 9; ++i) {
    if (!x6c_menuMovies[i].null()) {
      x6c_menuMovies[i]->Update(dt);
    }
  }

  CMoviePlayer* attractPlayer = xc4_attractMovie.get();
  if (attractPlayer != nullptr) {
    if (!attractPlayer->PumpIndexLoad()) {
      xc4_attractMovie->Update(dt);
    }
  }
}

// CFrontEndUI::ProcessUserInput
void CFrontEndUI::ProcessUserInput(const CFinalInput& input, CArchitectureQueue& queue) {
  if (gpMain->GetCardBusy())
    return;
  if (input.ControllerNumber() > 1)
    return;

  if (xec_emuFrme.get() != nullptr) {
    xec_emuFrme->ProcessUserInput(input, xdc_saveUI.get());
    return;
  }

  if (x14_phase != kP_DisplayFrontEnd)
    return;
  if (input.ControllerNumber() != 0)
    return;

  if (x50_curScreen != x54_nextScreen) {
    if (x54_nextScreen == kS_AttractMovie) {
      if (input.PStart() || input.PA()) {
        SetFadeBlackTimer(rstl::min_val(x58_fadeBlackTimer, 1.f));
        PlayAdvanceSfx();
        return;
      }
    }
    if (input.PA() || input.PStart()) {
      if (x50_curScreen == kS_OpenCredits && x54_nextScreen == kS_Title &&
          x58_fadeBlackTimer > 1.f) {
        xd0_playerSkipToTitle = true;
        SetFadeBlackTimer(1.f);
        return;
      }
    }
  } else {
    if (x50_curScreen == kS_Title) {
      if (input.PStart() || input.PA()) {
        if (x58_fadeBlackTimer < 30.f - gpTweakGame->GetPressStartDelay()) {
          CSfxManager::SfxStart(FETransitionBackSFX[x18_rndA][0], 0x7f, 0x40, false,
                                CSfxManager::kMedPriority, false, CSfxManager::kAllAreas);
          CSfxManager::SfxStart(FETransitionBackSFX[x18_rndA][1], 0x7f, 0x40, false,
                                CSfxManager::kMedPriority, false, CSfxManager::kAllAreas);
          StartStateTransition(kS_FileSelect);
          return;
        }
      }
    } else {
      bool isFileSelect =
          x50_curScreen == kS_FileSelect && x54_nextScreen == kS_FileSelect;
      if (isFileSelect) {
        if (xf0_optionsFrme.get() == nullptr) {
          if (xe0_frontendCardFrme.get() == nullptr) {
            SFrontEndFrame::EAction action = xe8_frontendNoCardFrme->ProcessUserInput(input);
            if (action == SFrontEndFrame::kEA_FusionBonus) {
              StartStateTransition(kS_FusionBonus);
              return;
            } else if (action == SFrontEndFrame::kEA_GameOptions) {
              xf0_optionsFrme = rs_new SOptionsFrontEndFrame();
              return;
            } else if (action == SFrontEndFrame::kEA_StartGame) {
              TransitionToFive();
              return;
            } else if (action == SFrontEndFrame::kEA_SlideShow) {
              xd2_deferSlideShow = true;
              StartSlideShow(queue);
              return;
            }
          } else {
            SNewFileSelectFrame::EAction action = xe0_frontendCardFrme->ProcessUserInput(input);
            if (action == SNewFileSelectFrame::kA_FusionBonus) {
              StartStateTransition(kS_FusionBonus);
              return;
            } else if (action == SNewFileSelectFrame::kA_GameOptions) {
              xf0_optionsFrme = rs_new SOptionsFrontEndFrame();
              return;
            } else if (action == SNewFileSelectFrame::kA_SlideShow) {
              xd2_deferSlideShow = true;
              StartSlideShow(queue);
              return;
            }
          }
        } else {
          if (xf0_optionsFrme->ProcessUserInput(input, xdc_saveUI.get()))
            return;
          xf0_optionsFrme = nullptr;
          return;
        }
      } else {
        bool isFusionBonus =
            x50_curScreen == kS_FusionBonus && x54_nextScreen == kS_FusionBonus;
        if (isFusionBonus) {
          SFusionBonusFrame::EAction action =
              xe4_fusionBonusFrme->ProcessUserInput(input, xdc_saveUI.get());
          if (action == SFusionBonusFrame::kFA_GoBack) {
            StartStateTransition(kS_FileSelect);
            return;
          } else if (action == SFusionBonusFrame::kFA_PlayNESMetroid) {
            xf4_curAudio->StopMixOut();
            xec_emuFrme = rs_new SNesEmulatorFrame();
            if (xdc_saveUI.get() != nullptr) {
              xdc_saveUI->SetInGame(true);
            }
            return;
          }
        }
      }
    }
  }
}

// CFrontEndUI::Draw
void CFrontEndUI::Draw() const {
  if (x14_phase < kP_DisplayFrontEnd)
    return;

  if (xec_emuFrme.get() != nullptr) {
    xec_emuFrme->Draw(*xdc_saveUI);
    goto press_start;
  }

  gpRender->SetDepthReadWrite(false, false);
  gpRender->SetViewportOrtho(false, -4096.f, 4096.f);

  int vpLeft = CGraphics::mViewport.mLeft;
  int vpTop = CGraphics::mViewport.mTop;
  int vpWidth = CGraphics::mViewport.mWidth;
  int vpHeight = CGraphics::mViewport.mHeight;

  if (xcc_curMoviePtr != NULL && xcc_curMoviePtr->CanDrawVideo()) {
    int vidWidth = xcc_curMoviePtr->GetWidth();
    int vidHeight = xcc_curMoviePtr->GetHeight();
    int centerX = static_cast< int >(static_cast< uint >(vidWidth - vpWidth) >> 1);
    int centerY = static_cast< int >(static_cast< uint >(vidHeight - vpHeight) >> 1);
    int vl = vpLeft - centerX;
    int vr = vpLeft + vpWidth + centerX;
    int vb = vpTop + vpHeight + centerY;
    int vt = vpTop - centerY;
    CVector3f v1(static_cast< float >(vl), 0.f, static_cast< float >(vb));
    CVector3f v2(static_cast< float >(vr), 0.f, static_cast< float >(vb));
    CVector3f v3(static_cast< float >(vl), 0.f, static_cast< float >(vt));
    CVector3f v4(static_cast< float >(vr), 0.f, static_cast< float >(vt));
    xcc_curMoviePtr->DrawFrame(v1, v2, v3, v4);
  }

  if (IsInScreenNotTransitioning(kS_FileSelect)) {
    if (xf0_optionsFrme.get() == nullptr) {
      if (xe0_frontendCardFrme.get() == nullptr)
        xe8_frontendNoCardFrme->Draw();
      else
        xe0_frontendCardFrme->Draw();
    } else {
      xf0_optionsFrme->Draw();
    }
  } else if (IsInScreenNotTransitioning(kS_FusionBonus)) {
    xe4_fusionBonusFrme->Draw();
  }

press_start:
  if (x64_pressStartAlpha > 0.f && x38_pressStart.GetObject() != NULL) {
    CTexture* tex = x38_pressStart.GetObject();
    int width = tex->GetWidth();
    int height = tex->GetHeight();
    CGraphics::SetTevOp(kTS_Stage0, CGraphics::kEnvModulate);
    CGraphics::SetTevOp(kTS_Stage1, CGraphics::kEnvPassthru);
    gpRender->SetBlendMode_AdditiveAlpha();
    gpRender->SetDepthReadWrite(false, false);
    CColor color = CColor::White().WithAlphaOf(x64_pressStartAlpha);
    CGraphics::Render2D(*tex, 320 - width / 2, 72 - height / 2, width, height, color);
  }

  if (GetHasAttractMovies()) {
    if (IsInScreenNotTransitioning(kS_Title) || x54_nextScreen == kS_AttractMovie) {
      if (x58_fadeBlackTimer < 1.f) {
        CColor color = CColor::Black().WithAlphaOf(1.f - x58_fadeBlackTimer);
        CCameraFilterPass::DrawFilter(CCameraFilterPass::kFT_Blend,
                                      CCameraFilterPass::kFS_Fullscreen, color, NULL, 1.f);
      }
    }
  }

  if (xd0_playerSkipToTitle) {
    if (x54_nextScreen == kS_Title && x50_curScreen == kS_OpenCredits) {
      float t = CMath::Clamp(0.f, x58_fadeBlackTimer, 1.f);
      CColor color = CColor::Black().WithAlphaOf(1.f - t);
      CCameraFilterPass::DrawFilter(CCameraFilterPass::kFT_Blend,
                                    CCameraFilterPass::kFS_Fullscreen, color, NULL, 1.f);
    } else if (x54_nextScreen == kS_Title && x50_curScreen == kS_Title) {
      float t = CMath::Clamp(0.f, 30.f - x58_fadeBlackTimer, 1.f);
      CColor color = CColor::Black().WithAlphaOf(1.f - t);
      CCameraFilterPass::DrawFilter(CCameraFilterPass::kFT_Blend,
                                    CCameraFilterPass::kFS_Fullscreen, color, NULL, 1.f);
    }
  }

  if (xdc_saveUI.get() != NULL) {
    if ((const_cast< CFrontEndUI* >(this)->CanShowSaveUI() && !xdc_saveUI->IsHiddenFromFrontEnd()) ||
        IsInScreenNotTransitioning(kS_FileSelect) ||
        IsInScreenNotTransitioning(kS_FusionBonus)) {
      xdc_saveUI->Draw();
    }
  }
}

// CFrontEndUI::CanShowSaveUI
bool CFrontEndUI::CanShowSaveUI() {
  return (x50_curScreen == kS_FileSelect || x50_curScreen == kS_FusionBonus) &&
         (x54_nextScreen == kS_FileSelect || x54_nextScreen == kS_FusionBonus);
}

// CFrontEndUI::StartStateTransition
void CFrontEndUI::StartStateTransition(EScreen screen) {
  switch (x50_curScreen) {
  case kS_OpenCredits:
    break;
  case kS_Title:
    if (screen == kS_FileSelect) {
      SetCurrentMovie(kMM_StartFileSelectA);
      SetFadeBlackTimer(xcc_curMoviePtr->GetTotalSeconds());
    }
    break;
  case kS_AttractMovie:
    break;
  case kS_FileSelect:
    if (screen == kS_ToPlayGame) {
      SetCurrentMovie(kMM_FileSelectPlayGameA);
      SetFadeBlackTimer(xcc_curMoviePtr->GetTotalSeconds());
    } else if (screen == kS_FusionBonus) {
      SetCurrentMovie(kMM_FileSelectGBA);
      SetFadeBlackTimer(xcc_curMoviePtr->GetTotalSeconds());
      CSfxManager::SfxStart(SFXfnt_tofusion_L);
      CSfxManager::SfxStart(SFXfnt_tofusion_R);
    }
    break;
  case kS_FusionBonus:
    if (screen == kS_ToPlayGame) {
      SetCurrentMovie(kMM_GBAFileSelectB);
      SetFadeBlackTimer(xcc_curMoviePtr->GetTotalSeconds());
    } else if (screen == kS_FileSelect) {
      SetCurrentMovie(kMM_GBAFileSelectA);
      SetFadeBlackTimer(xcc_curMoviePtr->GetTotalSeconds());
      CSfxManager::SfxStart(SFXfnt_fromfusion_L);
      CSfxManager::SfxStart(SFXfnt_fromfusion_R);
    }
    break;
  default:
    break;
  }

  switch (screen) {
  case kS_OpenCredits:
  case kS_Title:
    SetCurrentMovie(kMM_FirstStart);
    SetFadeBlackTimer(xcc_curMoviePtr->GetTotalSeconds());
    break;
  case kS_AttractMovie:
    StartAttractMovie();
    SetFadeBlackWithMovie();
    break;
  case kS_FileSelect:
  default:
    break;
  }

  x54_nextScreen = screen;
}

// CFrontEndUI::CompleteStateTransition
void CFrontEndUI::CompleteStateTransition() {
  EScreen oldScreen = x50_curScreen;
  x50_curScreen = x54_nextScreen;

  switch (x50_curScreen) {
  case kS_AttractMovie:
    x54_nextScreen = kS_OpenCredits;
    x50_curScreen = kS_OpenCredits;
    xd0_playerSkipToTitle = false;
    StartStateTransition(kS_Title);
    break;

  case kS_Title:
    SetCurrentMovie(kMM_StartLoop);
    SetFadeBlackTimer(30.f);
    break;

  case kS_FileSelect:
    SetCurrentMovie(kMM_FileSelectLoop);
    if (oldScreen == kS_Title) {
      xf4_curAudio->StopMixOut();
      xf4_curAudio = xd8_audio2.get();
      xf4_curAudio->StartMixOut();
    }
    if (xdc_saveUI.get() != nullptr) {
      xdc_saveUI->ResetCardDriver();
    }
    break;

  case kS_FusionBonus:
    SetCurrentMovie(kMM_GBALoop);
    break;

  case kS_ToPlayGame:
    x14_phase = kP_ExitFrontEnd;
    break;

  default:
    break;
  }
}

// CFrontEndUI::StartAttractMovie
void CFrontEndUI::StartAttractMovie() {
  if (!xc4_attractMovie.null()) {
    return;
  }
  SetCurrentMovie(kMM_Stopped);
  const char* name = GetNextAttractMovieFileName();
  xc4_attractMovie = rstl::auto_ptr< CMoviePlayer >(rs_new CMoviePlayer(name, 0.f, false, false));
  xcc_curMoviePtr = xc4_attractMovie.get();
}

// CFrontEndUI::StopAttractMovie
void CFrontEndUI::StopAttractMovie() {
  if (xc4_attractMovie.null()) {
    return;
  }
  xc4_attractMovie = rstl::auto_ptr< CMoviePlayer >();
  xcc_curMoviePtr = nullptr;
}

// CFrontEndUI::SetCurrentMovie
void CFrontEndUI::SetCurrentMovie(EMenuMovie movie) {
  if (movie == xb8_curMovie) {
    return;
  }
  StopAttractMovie();
  if (xb8_curMovie != kMM_Stopped) {
    xcc_curMoviePtr->SetPlayMode(CMoviePlayer::kPM_Stopped);
    xcc_curMoviePtr->Rewind();
  }
  xb8_curMovie = movie;
  if (xb8_curMovie != kMM_Stopped) {
    xcc_curMoviePtr = x6c_menuMovies[movie].get();
    xcc_curMoviePtr->SetPlayMode(CMoviePlayer::kPM_Playing);
  } else {
    xcc_curMoviePtr = nullptr;
  }
}

// CFrontEndUI::GetNextAttractMovieFileName
const char* CFrontEndUI::GetNextAttractMovieFileName() {
  const char* ret = GetAttractMovieFileName(xbc_nextAttract);
  xbc_nextAttract = (xbc_nextAttract + 1) % xc0_attractCount;
  return ret;
}

// CFrontEndUI::GetAttractMovieFileName
const char* CFrontEndUI::GetAttractMovieFileName(int idx) {
  return CBasics::Stringize("Video/attract%d.thp", idx);
}

// CFrontEndUI::SetFadeBlackTimer
void CFrontEndUI::SetFadeBlackTimer(float seconds) {
  x58_fadeBlackTimer = seconds;
  x5c_fadeBlackWithMovie = false;
}

// CFrontEndUI::SetFadeBlackWithMovie
void CFrontEndUI::SetFadeBlackWithMovie() {
  x58_fadeBlackTimer = 1000000.f;
  x5c_fadeBlackWithMovie = true;
}

// CFrontEndUI::StartSlideShow
void CFrontEndUI::StartSlideShow(CArchitectureQueue& queue) {
  xf4_curAudio->StopMixOut();
  queue.Push(MakeMsg::CreateCreateIOWin(kAMT_IOWinManager, kFrontEndUIMsgPriority,
                                        kFrontEndUIDrawPriority, rs_new CSlideShow()));
}
