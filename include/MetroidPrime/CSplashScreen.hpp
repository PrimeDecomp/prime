#ifndef _CSPLASHSCREEN
#define _CSPLASHSCREEN

#include "types.h"

#include "MetroidPrime/CIOWin.hpp"

class CSplashScreen : public CIOWin {
public:
  enum ESplashScreen {
    Nintendo,
    Retro,
    Dolby,
  };

  CSplashScreen(ESplashScreen);

  ~CSplashScreen() override;
  EMessageReturn OnMessage(const CArchitectureMessage&, CArchitectureQueue&) override;
  void Draw() const override;
};

#endif // _CSPLASHSCREEN
