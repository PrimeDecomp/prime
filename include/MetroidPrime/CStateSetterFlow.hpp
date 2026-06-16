#ifndef _CSTATESETTERFLOW
#define _CSTATESETTERFLOW

#include "MetroidPrime/CIOWin.hpp"

class CStateSetterFlow : public CIOWin {
public:
  CStateSetterFlow();
  ~CStateSetterFlow();
  EMessageReturn OnMessage(const CArchitectureMessage& message, CArchitectureQueue& queue) override;
};

#endif // _CSTATESETTERFLOW
