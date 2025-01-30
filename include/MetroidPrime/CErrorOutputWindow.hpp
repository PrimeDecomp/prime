#ifndef _CERROROUTPUTWINDOW
#define _CERROROUTPUTWINDOW

#include "types.h"

#include "MetroidPrime/CIOWin.hpp"

class CErrorOutputWindow : public CIOWin {
public:
  enum EFlag {
    kF_Zero,
    kF_One,
  };

  CErrorOutputWindow(EFlag);
  ~CErrorOutputWindow() override;

  EMessageReturn OnMessage(const CArchitectureMessage&, CArchitectureQueue&) override;
  bool GetIsContinueDraw() const override;
  void Draw() const override;

  void UpdateWindow();

private:
  enum EState {
    kS_Zero,
    kS_One,
    kS_Two,
    kS_Three,
  };

  EState x14_state;
  bool x18_24_ : 1;
  bool x18_25_ : 1;
  bool x18_26_ : 1;
  bool x18_27_ : 1;
  bool x18_28_ : 1;
  const wchar_t* x1c_msg;

  void fn_802694C4(EState);
  void fn_802695F8() const;
};

#endif // _CERROROUTPUTWINDOW
