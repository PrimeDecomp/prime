#ifndef _CNESEMULATOR
#define _CNESEMULATOR

#include "types.h"

class CColor;
class CFinalInput;

class CNESEmulator {
public:
  CNESEmulator();
  ~CNESEmulator();

  void Draw(const CColor& color, bool enableFiltering);
  void Update();
  void ProcessUserInput(const CFinalInput& input, int);

  const char* GetPassword();
  bool IsGameOver();
  void LoadPassword(const char* password);
  int GetPasswordEntryState();

private:
  char x0_pad[0x54];
};
CHECK_SIZEOF(CNESEmulator, 0x54)

#endif // _CNESEMULATOR
