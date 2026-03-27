#ifndef _SOPTIONSFRONTENDFRAME
#define _SOPTIONSFRONTENDFRAME

#include "types.h"

class CFinalInput;
class CSaveGameScreen;

class SOptionsFrontEndFrame {
public:
  SOptionsFrontEndFrame();
  ~SOptionsFrontEndFrame();
  void Update(float dt, const CSaveGameScreen* saveUI);
  bool ProcessUserInput(const CFinalInput& input, const CSaveGameScreen* saveUI);
  void Draw();

private:
  uchar x0_pad[0x138];
};

#endif // _SOPTIONSFRONTENDFRAME
