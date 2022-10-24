#ifndef _CSTATESETTERFLOW
#define _CSTATESETTERFLOW

#include "MetroidPrime/CIOWin.hpp"

class CStateSetterFlow : public CIOWin {
public:
  CStateSetterFlow();
  EMessageReturn OnMessage(const CArchitectureMessage& message, CArchitectureQueue& queue);
};

#endif // _CSTATESETTERFLOW
