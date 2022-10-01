#ifndef _CMAINFLOW_HPP
#define _CMAINFLOW_HPP

#include "types.h"

#include "MetroidPrime/CIOWin.hpp"

class CMainFlow : public CIOWin {
public:
  CMainFlow();

  ~CMainFlow() override;
  EMessageReturn OnMessage(const CArchitectureMessage&, CArchitectureQueue&) override;
  bool GetIsContinueDraw() const override;
  void Draw() override;
};

#endif
