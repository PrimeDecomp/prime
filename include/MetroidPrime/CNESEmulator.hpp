#ifndef _CNESEMULATOR
#define _CNESEMULATOR

#include "types.h"

class CColor;
class CFinalInput;

class CNESEmulator {
public:
  enum EPasswordEntryState { kPES_NotPasswordScreen, kPES_NotEntered, kPES_Entered };

  CNESEmulator();
  ~CNESEmulator();

  void Draw(const CColor& color, bool enableFiltering);
  void Update();
  void ProcessUserInput(const CFinalInput& input, int);

  const uchar* GetPassword() const;
  bool IsGameOver() const;
  void LoadPassword(const uchar* password);
  EPasswordEntryState GetPasswordEntryState() const;

private:
  uchar x0_pad[0x20];
  bool x20_gameOver;
  uchar x21_password[18];
  EPasswordEntryState x34_passwordEntryState;
  bool x38_passwordPending;
  uchar x39_passwordToLoad[18];
  uchar x4b_pad[0x54 - 0x4b];
};
CHECK_SIZEOF(CNESEmulator, 0x54)

#endif // _CNESEMULATOR
