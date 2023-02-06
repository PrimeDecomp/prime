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

  ~CSplashScreen();
  EMessageReturn OnMessage(const CArchitectureMessage&, CArchitectureQueue&);
  void Draw() const;
};

#endif // _CSPLASHSCREEN
