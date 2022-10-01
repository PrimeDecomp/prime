#ifndef _CERROROUTPUTWINDOW_HPP
#define _CERROROUTPUTWINDOW_HPP

#include "types.h"

#include "MetroidPrime/CIOWin.hpp"

class CErrorOutputWindow : public CIOWin {
public:
  CErrorOutputWindow(bool);

  ~CErrorOutputWindow() override;
  EMessageReturn OnMessage(const CArchitectureMessage&, CArchitectureQueue&) override;
  bool GetIsContinueDraw() const override;
  void Draw() override;
};

#endif
