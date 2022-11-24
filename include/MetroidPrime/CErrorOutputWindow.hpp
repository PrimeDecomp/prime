#ifndef _CERROROUTPUTWINDOW
#define _CERROROUTPUTWINDOW

#include "types.h"

#include "MetroidPrime/CIOWin.hpp"

class CErrorOutputWindow : public CIOWin {
public:
  CErrorOutputWindow(bool);
  ~CErrorOutputWindow() override;

  EMessageReturn OnMessage(const CArchitectureMessage&, CArchitectureQueue&) override;
  bool GetIsContinueDraw() const override;
  void Draw() const override;

  void UpdateWindow();

  void sub_802694c4(int);
  void sub_802695f8() const;

private:
  int x14_state;
  bool x18_24_ : 1;
  bool x18_25_ : 1;
  bool x18_26_ : 1;
  bool x18_27_ : 1;
  bool x18_28_ : 1;
  const wchar_t* x1c_msg;
};

#endif // _CERROROUTPUTWINDOW
