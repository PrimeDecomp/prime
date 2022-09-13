#ifndef _CSPLASHSCREEN_HPP
#define _CSPLASHSCREEN_HPP

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

  virtual EMessageReturn OnMessage(const CArchitectureMessage&, CArchitectureQueue&);
  virtual void Draw();
};

#endif