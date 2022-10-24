#ifndef _CPLAYMOVIE
#define _CPLAYMOVIE

#include "MetroidPrime/CIOWin.hpp"

class CPlayMovie : public CIOWin {
public:
  enum EWhichMovie {
    kWM_WinGameBad,
    kWM_WinGameGood,
    kWM_WinGameBest,
    kWM_LoseGame,
    kWM_TalonText,
    kWM_AfterCredits,
    kWM_SpecialEnding,
    kWM_CreditBG
  };
  CPlayMovie(EWhichMovie movie);

  EMessageReturn OnMessage(const CArchitectureMessage& message, CArchitectureQueue& queue);
private:
  char data[0x68];
};

#endif // _CPLAYMOVIE
