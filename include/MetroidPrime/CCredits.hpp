#ifndef _CCREDITS
#define _CCREDITS

#include "MetroidPrime/CIOWin.hpp"

class CCredits : public CIOWin {
public:
  CCredits();
  EMessageReturn OnMessage(const CArchitectureMessage& msg, CArchitectureQueue& queue);

private:
  char data[0x4c];
};

#endif // _CCREDITS
