#ifndef _CSAVEGAMESCREEN
#define _CSAVEGAMESCREEN

#include "Kyoto/TToken.hpp"
#include "MetroidPrime/CIOWin.hpp"
#include "MetroidPrime/CMemoryCardDriver.hpp"
#include "rstl/single_ptr.hpp"
#include "rstl/vector.hpp"
#include "types.h"

class CFinalInput;
class CTexture;
class CWorldSaveGameInfo;
class CStringTable;
class CGuiFrame;
class CGuiTextPane;
class CGuiTableGroup;

enum ESaveContext { kSC_FrontEnd, kSC_InGame };

class CSaveGameScreen {
public:
  enum EUIType {
    kUIT_Empty = 0,
    kUIT_BusyReading,
    kUIT_BusyWriting,
    kUIT_NoCardFound,
    kUIT_NeedsFormatBroken,
    kUIT_NeedsFormatEncoding,
    kUIT_CardDamaged,
    kUIT_WrongDevice,
    kUIT_InsufficientSpaceBadCheck,
    kUIT_InsufficientSpaceOKCheck,
    kUIT_IncompatibleCard,
    kUIT_SaveCorrupt,
    kUIT_StillInsufficientSpace,
    kUIT_ProgressWillBeLost,
    kUIT_NotOriginalCard,
    kUIT_AllDataWillBeLost,
    kUIT_SaveReady
  };

  CSaveGameScreen(ESaveContext saveContext, u64 cardSerial);
  ~CSaveGameScreen();
  CIOWin::EMessageReturn Update(float dt);
  bool PumpLoad();

  EUIType GetUIType() const { return x10_uiType; }
  bool IsSavingDisabled() const { return x92_savingDisabled; }
  const CGameState::GameFileStateInfo* GetGameData(int idx) const;
  void EraseGame(int idx);
  void StartGame(int idx);
  void ResetCardDriver();
  void ProcessUserInput(const CFinalInput& input);
  void Draw() const;
  static bool IsHiddenFromFrontEnd(EUIType type);
  void SetInGame(bool inGame);
  void SaveNESState();
  static CMemoryCardDriver* ConstructCardDriver(bool importPersistent);
  EUIType SelectUIType() const;
  void SetUIText();
  void SetUIColors();
  void DoAdvance(CGuiTableGroup* caller);
  void DoSelectionChange(CGuiTableGroup* caller, int oldSelection);

private:
  void ContinueWithoutSaving();
  ESaveContext x0_saveCtx;
  u64 x8_serial;
  EUIType x10_uiType;
  TCachedToken< CTexture > x14_txtrSaveBanner;
  TCachedToken< CTexture > x20_txtrSaveIcon0;
  TCachedToken< CTexture > x2c_txtrSaveIcon1;
  TCachedToken< CStringTable > x38_strgMemoryCard;
  TCachedToken< CGuiFrame > x44_frmeGenericMenu;
  CGuiFrame* x50_loadedFrame;
  CGuiTextPane* x54_textpane_message;
  CGuiTableGroup* x58_tablegroup_choices;
  CGuiTextPane* x5c_textpane_choice0;
  CGuiTextPane* x60_textpane_choice1;
  CGuiTextPane* x64_textpane_choice2;
  CGuiTextPane* x68_textpane_choice3;
  rstl::single_ptr< CMemoryCardDriver > x6c_cardDriver;
  rstl::vector< TToken< CWorldSaveGameInfo > > x70_saveWorlds;
  CIOWin::EMessageReturn x80_iowRet;
  uint x84_navConfirmSfx;
  uint x88_navMoveSfx;
  uint x8c_navBackSfx;
  bool x90_needsDriverReset;
  bool x91_uiTextDirty;
  bool x92_savingDisabled;
  bool x93_inGame;
};
CHECK_SIZEOF(CSaveGameScreen, 0x98)

#endif // _CSAVEGAMESCREEN
