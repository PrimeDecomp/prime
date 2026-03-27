#ifndef _CSAVEGAMESCREEN
#define _CSAVEGAMESCREEN

#include "types.h"

class CFinalInput;

class CSaveGameScreen {
public:
  enum EUIType {
    kUIT_SaveReady = 16
  };

  CSaveGameScreen(int saveContext, u64 cardSerial);
  ~CSaveGameScreen();
  int Update(float dt);
  bool PumpLoad();

  int GetUIType() const { return x10_uiType; }
  bool IsSavingDisabled() const { return x92_savingDisabled; }
  const void* GetGameData(int idx);
  void EraseGame(int idx);
  void StartGame(int idx);
  void ResetCardDriver();
  void ProcessUserInput(const CFinalInput& input);
  void Draw();
  bool IsHiddenFromFrontEnd();
  void SetInGame(bool inGame);
  void SaveNESState();

private:
  uchar x0_pad[0x10];
  int x10_uiType;
  uchar x14_pad[0x92 - 0x14];
  bool x92_savingDisabled;
  uchar x93_pad[0x98 - 0x93];
};

#endif // _CSAVEGAMESCREEN
