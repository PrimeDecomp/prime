#ifndef _CSAVEGAMESCREEN
#define _CSAVEGAMESCREEN

#include "types.h"

class CFinalInput;

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
  int Update(float dt);
  bool PumpLoad();

  EUIType GetUIType() const { return x10_uiType; }
  bool IsSavingDisabled() const { return x92_savingDisabled; }
  const void* GetGameData(int idx);
  void EraseGame(int idx);
  void StartGame(int idx);
  void ResetCardDriver();
  void ProcessUserInput(const CFinalInput& input);
  void Draw();
  static bool IsHiddenFromFrontEnd(EUIType type);
  void SetInGame(bool inGame);
  void SaveNESState();

private:
  uchar x0_pad[0x10];
  EUIType x10_uiType;
  uchar x14_pad[0x92 - 0x14];
  bool x92_savingDisabled;
  bool x93_inGame;
  uchar x94_pad[0x98 - 0x94];
};
CHECK_SIZEOF(CSaveGameScreen, 0x98)

#endif // _CSAVEGAMESCREEN
