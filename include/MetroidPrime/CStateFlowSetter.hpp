#ifndef _CSTATEFLOWSETTER
#define _CSTATEFLOWSETTER

#include "MetroidPrime/CIOWin.hpp"

class CStateFlowSetter : public CIOWin {
public:
  CStateFlowSetter();
  EMessageReturn OnMessage(const CArchitectureMessage& message, CArchitectureQueue& queue);
};

#endif // _CSTATEFLOWSETTER
