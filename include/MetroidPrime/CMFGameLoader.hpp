#ifndef _CMFGAMELOADER
#define _CMFGAMELOADER

#include "MetroidPrime/CIOWin.hpp"

class CMFGameLoader : public CIOWin {

public:
  CMFGameLoader();
  EMessageReturn OnMessage(const CArchitectureMessage& message, CArchitectureQueue& queue);
private:
  char data[0x1c];
};

#endif // _CMFGAMELOADER
