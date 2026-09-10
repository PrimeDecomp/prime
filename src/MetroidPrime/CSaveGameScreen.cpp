#include "MetroidPrime/CSaveGameScreen.hpp"
#include "GuiSys/CGuiFrame.hpp"
#include "GuiSys/CGuiTableGroup.hpp"
#include "GuiSys/CGuiTextPane.hpp"
#include "GuiSys/CGuiWidgetDrawParms.hpp"
#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/CResFactory.hpp"
#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Graphics/CTexture.hpp"
#include "Kyoto/Text/CStringTable.hpp"
#include "MetroidPrime/CMain.hpp"
#include "MetroidPrime/CMemoryCard.hpp"
#include "rstl/StringExtras.hpp"

static const char* const skSaveBanner = "TXTR_SaveBanner";
static const char* const skSaveIcon0 = "TXTR_SaveIcon0";
static const char* const skSaveIcon1 = "TXTR_SaveIcon1";
static const char* const skMemoryCardStrings = "STRG_MemoryCard";
static const char* const skGenericMenu = "FRME_GenericMenu";

bool CSaveGameScreen::IsHiddenFromFrontEnd(EUIType type) {
  switch (type) {
  case kUIT_SaveReady:
  case kUIT_Empty:
  case kUIT_BusyReading:
  case kUIT_BusyWriting:
    return false;
  default:
    return true;
  }
}

CSaveGameScreen::EUIType CSaveGameScreen::SelectUIType() const {
  const EState state = x6c_cardDriver->GetState();
  const CMemoryCardDriver::EError error = x6c_cardDriver->GetError();
  if (state == kS_NoCard) {
    return kUIT_NoCardFound;
  }

  if (x10_uiType == kUIT_ProgressWillBeLost || x10_uiType == kUIT_AllDataWillBeLost ||
      x10_uiType == kUIT_NotOriginalCard) {
    return x10_uiType;
  }

  if (CMemoryCardDriver::IsCardBusy(state)) {
    if (CMemoryCardDriver::IsCardReading(state)) {
      return kUIT_BusyReading;
    }
    return kUIT_BusyWriting;
  }

  if (state == kS_Ready) {
    if (error == CMemoryCardDriver::kE_CardStillFull) {
      return kUIT_StillInsufficientSpace;
    }
    return kUIT_SaveReady;
  }

  if (error == CMemoryCardDriver::kE_CardBroken) {
    return kUIT_NeedsFormatBroken;
  }

  if (error == CMemoryCardDriver::kE_CardWrongCharacterSet) {
    return kUIT_NeedsFormatEncoding;
  }

  if (error == CMemoryCardDriver::kE_CardWrongDevice) {
    return kUIT_WrongDevice;
  }

  if (error == CMemoryCardDriver::kE_CardFull) {
    if (state == kS_FileCreateTransactionalFailed) {
      return kUIT_InsufficientSpaceBadCheck;
    }
    return kUIT_InsufficientSpaceOKCheck;
  }

  if (error == CMemoryCardDriver::kE_CardNon8KSectors) {
    return kUIT_IncompatibleCard;
  }

  if (error == CMemoryCardDriver::kE_FileCorrupted) {
    return kUIT_SaveCorrupt;
  }

  if (error == CMemoryCardDriver::kE_CardIOError) {
    return kUIT_CardDamaged;
  }

  return kUIT_Empty;
}

void CSaveGameScreen::SetUIText() {
  x91_uiTextDirty = false;

  const CStringTable& strings = *x38_strgMemoryCard.GetObject();
  int msgA = -1;
  int msgB = -1;
  int opt0 = -1;
  int opt1 = -1;
  int opt2 = -1;
  int opt3 = -1;

  switch (x10_uiType) {
  case kUIT_BusyReading:
    msgB = 24;
    break;
  case kUIT_BusyWriting:
    msgB = 25;
    break;
  case kUIT_NoCardFound:
    msgB = 0;
    opt0 = 17;
    opt1 = 18;
    break;
  case kUIT_NeedsFormatBroken:
    msgB = 1;
    opt0 = 17;
    opt1 = 18;
    opt2 = 20;
    break;
  case kUIT_NeedsFormatEncoding:
    msgB = 2;
    opt0 = 17;
    opt1 = 18;
    opt2 = 20;
    break;
  case kUIT_CardDamaged:
    msgB = 3;
    opt0 = 17;
    opt1 = 18;
    break;
  case kUIT_WrongDevice:
    msgB = 5;
    opt0 = 17;
    opt1 = 18;
    break;
  case kUIT_InsufficientSpaceOKCheck:
    msgB = 6;
    opt0 = 17;
    opt1 = 18;
    opt2 = 19;
    break;
  case kUIT_InsufficientSpaceBadCheck:
    msgB = x0_saveCtx == kSC_InGame ? 10 : 9;
    opt0 = 17;
    opt1 = 18;
    opt2 = 19;
    break;
  case kUIT_IncompatibleCard:
    msgB = 7;
    opt0 = 17;
    opt1 = 18;
    break;
  case kUIT_SaveCorrupt:
    msgB = 4;
    opt0 = 22;
    opt1 = 17;
    opt2 = 18;
    break;
  case kUIT_StillInsufficientSpace:
    if (x0_saveCtx == kSC_InGame) {
      msgB = 10;
      opt0 = 17;
      opt1 = 18;
      opt2 = 19;
    } else {
      msgB = 9;
      opt0 = 17;
      opt1 = 18;
      opt2 = 19;
    }
    break;
  case kUIT_ProgressWillBeLost:
    msgA = 28;
    msgB = 11;
    opt0 = 21;
    opt1 = 16;
    break;
  case kUIT_NotOriginalCard:
    msgA = 28;
    msgB = 12;
    opt0 = x0_saveCtx == kSC_InGame ? 21 : 17;
    opt1 = 16;
    break;
  case kUIT_AllDataWillBeLost:
    msgA = 28;
    msgB = 13;
    opt0 = 16;
    opt1 = 21;
    break;
  case kUIT_SaveReady:
    if (x0_saveCtx == kSC_InGame) {
      msgB = 8;
      opt0 = 14;
      opt1 = 15;
    }
    break;
  default:
    break;
  }

  const rstl::wstring empty = rstl::wstring_l(L"");
  const rstl::wstring messageA = msgA == -1 ? empty : rstl::wstring_l(strings.GetString(msgA));
  const rstl::wstring message =
      messageA + (msgB == -1 ? empty : rstl::wstring_l(strings.GetString(msgB)));
  x54_textpane_message->TextSupport().SetText(message);
  x5c_textpane_choice0->TextSupport().SetText(
      opt0 == -1 ? empty : rstl::wstring_l(strings.GetString(opt0)));
  x60_textpane_choice1->TextSupport().SetText(
      opt1 == -1 ? empty : rstl::wstring_l(strings.GetString(opt1)));
  x64_textpane_choice2->TextSupport().SetText(
      opt2 == -1 ? empty : rstl::wstring_l(strings.GetString(opt2)));
  x68_textpane_choice3->TextSupport().SetText(
      opt3 == -1 ? empty : rstl::wstring_l(strings.GetString(opt3)));
  x5c_textpane_choice0->SetIsSelectable(opt0 != -1);
  x60_textpane_choice1->SetIsSelectable(opt1 != -1);
  x64_textpane_choice2->SetIsSelectable(opt2 != -1);
  x68_textpane_choice3->SetIsSelectable(opt3 != -1);
  x58_tablegroup_choices->SetUserSelection(0);
  x58_tablegroup_choices->SetIsActive(opt0 != -1 || opt1 != -1 || opt2 != -1 || opt3 != -1);
  SetUIColors();
}

CMemoryCardDriver* CSaveGameScreen::ConstructCardDriver(bool importPersistent) {
  return rs_new CMemoryCardDriver(
      CMemoryCardSys::kCS_SlotA, gpResourceFactory->GetResourceIdByName(skSaveBanner)->GetId(),
      gpResourceFactory->GetResourceIdByName(skSaveIcon0)->GetId(),
      gpResourceFactory->GetResourceIdByName(skSaveIcon1)->GetId(), importPersistent);
}

CSaveGameScreen::CSaveGameScreen(ESaveContext saveCtx, u64 serial)
: x0_saveCtx(saveCtx)
, x8_serial(serial)
, x10_uiType(kUIT_Empty)
, x14_txtrSaveBanner(gpSimplePool->GetObj(skSaveBanner))
, x20_txtrSaveIcon0(gpSimplePool->GetObj(skSaveIcon0))
, x2c_txtrSaveIcon1(gpSimplePool->GetObj(skSaveIcon1))
, x38_strgMemoryCard(gpSimplePool->GetObj(skMemoryCardStrings))
, x44_frmeGenericMenu(gpSimplePool->GetObj(skGenericMenu))
, x50_loadedFrame(nullptr)
, x6c_cardDriver(ConstructCardDriver(x0_saveCtx == kSC_FrontEnd))
, x80_iowRet(CIOWin::kMR_Normal)
, x84_navConfirmSfx(x0_saveCtx == kSC_InGame ? 0x598 : 0x5b4)
, x88_navMoveSfx(x0_saveCtx == kSC_InGame ? 0x59c : 0x5b5)
, x8c_navBackSfx(x0_saveCtx == kSC_InGame ? 0x597 : 0x5b3)
, x90_needsDriverReset(false)
, x91_uiTextDirty(false)
, x92_savingDisabled(false)
, x93_inGame(x0_saveCtx == kSC_InGame) {
  x14_txtrSaveBanner.Lock();
  x20_txtrSaveIcon0.Lock();
  x2c_txtrSaveIcon1.Lock();
  x38_strgMemoryCard.Lock();
  x44_frmeGenericMenu.Lock();
  const rstl::vector< CMemoryCard::MemoryWorld >& worlds = gpMemoryCard->GetMemoryWorlds();
  x70_saveWorlds.reserve(worlds.size());
  for (rstl::vector< CMemoryCard::MemoryWorld >::const_iterator it = worlds.begin();
       it != worlds.end(); ++it) {
    TToken< CWorldSaveGameInfo > token =
        gpSimplePool->GetObj(SObjectTag('SAVW', it->second.GetSaveWorldAssetId()));
    token.Lock();
    x70_saveWorlds.push_back(token);
  }
}

CSaveGameScreen::~CSaveGameScreen() {}

void CSaveGameScreen::ResetCardDriver() {
  x92_savingDisabled = false;
  x6c_cardDriver = nullptr;
  bool importState = (x0_saveCtx == kSC_FrontEnd && !x90_needsDriverReset);
  x6c_cardDriver = ConstructCardDriver(importState);
  x6c_cardDriver->StartCardProbe();
  x10_uiType = kUIT_Empty;
  SetUIText();
}

bool CSaveGameScreen::PumpLoad() {
  if (x50_loadedFrame != nullptr) {
    return true;
  }
  if (!x14_txtrSaveBanner.IsLoaded() || !x20_txtrSaveIcon0.IsLoaded() ||
      !x2c_txtrSaveIcon1.IsLoaded() || !x38_strgMemoryCard.TryCache()) {
    return false;
  }
  for (AUTO(it, x70_saveWorlds.begin()); it != x70_saveWorlds.end(); ++it) {
    if (!it->IsLoaded()) {
      return false;
    }
  }
  if (x44_frmeGenericMenu.TryCache()) {
    x50_loadedFrame = x44_frmeGenericMenu.GetObject();
    x54_textpane_message =
        static_cast< CGuiTextPane* >(x50_loadedFrame->FindWidget("textpane_message"));
    x58_tablegroup_choices =
        static_cast< CGuiTableGroup* >(x50_loadedFrame->FindWidget("tablegroup_choices"));
    x5c_textpane_choice0 =
        static_cast< CGuiTextPane* >(x50_loadedFrame->FindWidget("textpane_choice0"));
    x60_textpane_choice1 =
        static_cast< CGuiTextPane* >(x50_loadedFrame->FindWidget("textpane_choice1"));
    x64_textpane_choice2 =
        static_cast< CGuiTextPane* >(x50_loadedFrame->FindWidget("textpane_choice2"));
    x68_textpane_choice3 =
        static_cast< CGuiTextPane* >(x50_loadedFrame->FindWidget("textpane_choice3"));

    x58_tablegroup_choices->SetMenuAdvanceCallback(
        TFunctor1FromMethod< CSaveGameScreen, CGuiTableGroup* const >::Make(
            *this, &CSaveGameScreen::DoAdvance));
    x58_tablegroup_choices->SetMenuSelectionChangeCallback(
        TFunctor2FromMethod< CSaveGameScreen, CGuiTableGroup* const, const int >::Make(
            *this, &CSaveGameScreen::DoSelectionChange));
  } else {
    return false;
  }

  if (x0_saveCtx == kSC_InGame) {
    x6c_cardDriver->StartCardProbe();
  }

  x10_uiType = SelectUIType();
  SetUIText();
  return true;
}

CIOWin::EMessageReturn CSaveGameScreen::Update(float dt) {
  if (!PumpLoad()) {
    return CIOWin::kMR_Normal;
  }

  x50_loadedFrame->Update(dt);
  x6c_cardDriver->Update();

  const EState state = x6c_cardDriver->GetState();
  const CMemoryCardDriver::EError error = x6c_cardDriver->GetError();
  if (state == kS_DriverClosed) {
    if (x90_needsDriverReset) {
      ResetCardDriver();
      x90_needsDriverReset = false;
    } else {
      x80_iowRet = CIOWin::kMR_Exit;
    }
  } else if (state == kS_CardCheckDone && x10_uiType != kUIT_NotOriginalCard) {
    const u64 cardSerial = x6c_cardDriver->GetCardSerial();
    if (cardSerial != 0 && cardSerial != x8_serial) {
      if (x93_inGame) {
        x10_uiType = kUIT_NotOriginalCard;
        x91_uiTextDirty = true;
      } else {
        x8_serial = x6c_cardDriver->GetCardSerial();
        x6c_cardDriver->IndexFiles();
      }
    } else {
      x6c_cardDriver->IndexFiles();
    }
  } else if (state == kS_Ready) {
    if (x90_needsDriverReset) {
      x6c_cardDriver->StartFileCreateTransactional();
    }
  }

  if (x80_iowRet != CIOWin::kMR_Normal) {
    return x80_iowRet;
  }

  EUIType oldTp = x10_uiType;
  x10_uiType = SelectUIType();
  if (oldTp != x10_uiType || x91_uiTextDirty) {
    SetUIText();
  }

  if (state == kS_NoCard) {
    const ProbeResults res = CMemoryCardSys::IsMemoryCardInserted(CMemoryCardSys::kCS_SlotA);
    if (res.x0_error == kCR_READY || res.x0_error == kCR_WRONGDEVICE) {
      ResetCardDriver();
    }
  } else if (state == kS_CardFormatted) {
    ResetCardDriver();
  } else if (state == kS_FileBad && error == CMemoryCardDriver::kE_FileMissing) {
    x6c_cardDriver->StartFileCreate();
  }

  return CIOWin::kMR_Normal;
}

void CSaveGameScreen::ProcessUserInput(const CFinalInput& input) {
  if (x50_loadedFrame != nullptr) {
    x50_loadedFrame->ProcessUserInput(input);
  }
}

void CSaveGameScreen::ContinueWithoutSaving() {
  x80_iowRet = CIOWin::kMR_RemoveIOWin;
  gpGameState->SetCardSerial(0);
}

void CSaveGameScreen::Draw() const {
  if (x50_loadedFrame != nullptr) {
    x50_loadedFrame->Draw(CGuiWidgetDrawParms::Default());
  }
}

const CGameState::GameFileStateInfo* CSaveGameScreen::GetGameData(int idx) const {
  return x6c_cardDriver->GetGameFileStateInfo(idx);
}

void CSaveGameScreen::EraseGame(int idx) {
  x6c_cardDriver->EraseFileSlot(idx);
  x90_needsDriverReset = true;
  x6c_cardDriver->StartFileCreateTransactional();
}

void CSaveGameScreen::SaveNESState() {
  if (!x92_savingDisabled) {
    x90_needsDriverReset = true;
    x8_serial = x6c_cardDriver->GetCardSerial();
    x6c_cardDriver->StartFileCreateTransactional();
  }
}

void CSaveGameScreen::StartGame(int idx) {
  const bool newGame = x6c_cardDriver->GetGameFileStateInfo(idx) == nullptr;
  x6c_cardDriver->ExportPersistentOptions();
  x6c_cardDriver->BuildNewFileSlot(idx);
  if (newGame) {
    x6c_cardDriver->StartFileCreateTransactional();
  } else {
    x80_iowRet = CIOWin::kMR_Exit;
  }
}

void CSaveGameScreen::DoAdvance(CGuiTableGroup* caller) {
  int userSel = x58_tablegroup_choices->GetUserSelection();
  int sfx = -1;

  switch (x10_uiType) {
  case kUIT_Empty:
  case kUIT_BusyReading:
  case kUIT_BusyWriting:
    break;
  case kUIT_NoCardFound:
  case kUIT_CardDamaged:
  case kUIT_WrongDevice:
  case kUIT_IncompatibleCard:
    if (userSel == 0) {
      if (x0_saveCtx == kSC_InGame) {
        x80_iowRet = CIOWin::kMR_RemoveIOWinAndExit;
      } else {
        ContinueWithoutSaving();
      }
      sfx = x8c_navBackSfx;
    } else if (userSel == 1) {
      ResetCardDriver();
      sfx = x84_navConfirmSfx;
    }
    break;

  case kUIT_NeedsFormatBroken:
  case kUIT_NeedsFormatEncoding:
    if (userSel == 0) {
      if (x0_saveCtx == kSC_InGame) {
        x80_iowRet = CIOWin::kMR_RemoveIOWinAndExit;
      } else {
        ContinueWithoutSaving();
      }
      sfx = x8c_navBackSfx;
    } else if (userSel == 1) {
      ResetCardDriver();
      sfx = x84_navConfirmSfx;
    } else if (userSel == 2) {
      x10_uiType = kUIT_AllDataWillBeLost;
      x91_uiTextDirty = true;
      sfx = x84_navConfirmSfx;
    }
    break;

  case kUIT_InsufficientSpaceBadCheck:
  case kUIT_InsufficientSpaceOKCheck:
    if (userSel == 0) {
      if (x0_saveCtx == kSC_InGame) {
        x80_iowRet = CIOWin::kMR_RemoveIOWinAndExit;
      } else {
        ContinueWithoutSaving();
      }
      sfx = x8c_navBackSfx;
    } else if (userSel == 1) {
      ResetCardDriver();
      sfx = x84_navConfirmSfx;
    } else if (userSel == 2) {
      if (x0_saveCtx == kSC_InGame) {
        x10_uiType = kUIT_ProgressWillBeLost;
        x91_uiTextDirty = true;
        sfx = x84_navConfirmSfx;
      } else {
        gpMain->SetManageCard(true);
      }
    }
    break;

  case kUIT_SaveCorrupt:
    if (userSel == 0) {
      x6c_cardDriver->StartFileDeleteBad();
      sfx = x84_navConfirmSfx;
    } else if (userSel == 1) {
      if (x0_saveCtx == kSC_InGame) {
        x80_iowRet = CIOWin::kMR_RemoveIOWinAndExit;
      } else {
        ContinueWithoutSaving();
      }
      sfx = x8c_navBackSfx;
    } else if (userSel == 2) {
      ResetCardDriver();
      sfx = x84_navConfirmSfx;
    }
    break;

  case kUIT_StillInsufficientSpace:
    if (x0_saveCtx == kSC_InGame) {
      if (userSel == 0) {
        x80_iowRet = CIOWin::kMR_RemoveIOWinAndExit;
        sfx = x8c_navBackSfx;
      } else if (userSel == 1) {
        ResetCardDriver();
        sfx = x84_navConfirmSfx;
      } else if (userSel == 2) {
        x10_uiType = kUIT_ProgressWillBeLost;
        x91_uiTextDirty = true;
        sfx = x84_navConfirmSfx;
      }
    } else {
      if (userSel == 0) {
        if (x93_inGame) {
          x80_iowRet = CIOWin::kMR_RemoveIOWinAndExit;
          sfx = x8c_navBackSfx;
        } else {
          x6c_cardDriver->ClearError();
          x92_savingDisabled = true;
          sfx = x84_navConfirmSfx;
        }
      } else if (userSel == 1) {
        ResetCardDriver();
        sfx = x84_navConfirmSfx;
      } else if (userSel == 2) {
        gpMain->SetManageCard(true);
      }
    }
    break;

  case kUIT_ProgressWillBeLost:
    if (userSel == 1) {
      gpMain->SetManageCard(true);
    } else if (userSel == 0) {
      x80_iowRet = CIOWin::kMR_RemoveIOWinAndExit;
      sfx = x8c_navBackSfx;
    }
    break;

  case kUIT_NotOriginalCard:
    if (userSel == 1) {
      x8_serial = x6c_cardDriver->GetCardSerial();
      x10_uiType = kUIT_Empty;
      x6c_cardDriver->IndexFiles();
      sfx = x84_navConfirmSfx;
    } else if (userSel == 0) {
      x80_iowRet = CIOWin::kMR_RemoveIOWinAndExit;
      sfx = x8c_navBackSfx;
    }
    break;

  case kUIT_AllDataWillBeLost:
    if (userSel == 0) {
      x6c_cardDriver->StartCardFormat();
      x10_uiType = kUIT_Empty;
      sfx = x84_navConfirmSfx;
    } else if (userSel == 1) {
      ResetCardDriver();
      sfx = x8c_navBackSfx;
    }
    break;

  case kUIT_SaveReady:
    if (x0_saveCtx != kSC_FrontEnd) {
      if (userSel == 0) {
        x6c_cardDriver->BuildExistingFileSlot(gpGameState->GetFileIdx());
        x6c_cardDriver->StartFileCreateTransactional();
        sfx = x84_navConfirmSfx;
      } else if (userSel == 1) {
        x80_iowRet = CIOWin::kMR_RemoveIOWinAndExit;
        sfx = x8c_navBackSfx;
      }
    }
    break;
  default:
    break;
  }

  if (sfx >= 0) {
    CSfxManager::SfxStart(sfx, 0x7f, 0x40, false, CSfxManager::kMedPriority, false,
                          CSfxManager::kAllAreas);
  }
}

void CSaveGameScreen::DoSelectionChange(CGuiTableGroup* caller, int oldSelection) {
  SetUIColors();
  CSfxManager::SfxStart(x88_navMoveSfx, 0x7f, 0x40, false, CSfxManager::kMedPriority, false,
                        CSfxManager::kAllAreas);
}

void CSaveGameScreen::SetUIColors() {
  const CColor selected(0xffffffff);
  const CColor unselected(uchar(160), uchar(160), uchar(160), uchar(200));
  x58_tablegroup_choices->SetColors(selected, unselected);
}

void CSaveGameScreen::SetInGame(bool inGame) { x93_inGame = inGame; }
