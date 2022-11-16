#ifndef _CGUITABLEGROUP
#define _CGUITABLEGROUP

#include "GuiSys/CGuiObject.hpp"

class CGuiTableGroup {
public:
  class CRepeatState {
    CRepeatState();
    uchar Update(float dt, bool state);
  private:
    float x0_timer;
  };
};

#endif // _CGUITABLEGROUP
