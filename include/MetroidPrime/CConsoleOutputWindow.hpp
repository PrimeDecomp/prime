#ifndef _CCONSOLEOUTPUTWINDOW_HPP
#define _CCONSOLEOUTPUTWINDOW_HPP

#include "types.h"

#include "MetroidPrime/CIOWin.hpp"

class CConsoleOutputWindow : public CIOWin {
public:
  CConsoleOutputWindow(int, f32, f32);

  ~CConsoleOutputWindow() override;
  EMessageReturn OnMessage(const CArchitectureMessage&, CArchitectureQueue&) override;
  void Draw() override;
};

#endif
