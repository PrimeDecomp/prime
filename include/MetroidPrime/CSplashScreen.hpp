#ifndef _CSPLASHSCREEN
#define _CSPLASHSCREEN

#include "Kyoto/TToken.hpp"
#include "types.h"

#include "MetroidPrime/CIOWin.hpp"

class CTexture;
class CSplashScreen : public CIOWin {
public:
  enum ESplashScreen {
    kSplashScreen_Nintendo,
    kSplashScreen_Retro,
    kSplashScreen_Dolby,
    kSplashScreen_MAX,
  };

  explicit CSplashScreen(const ESplashScreen splash);

  EMessageReturn OnMessage(const CArchitectureMessage&, CArchitectureQueue&) override;
  void Draw() const override;

  bool IsCurrentSplashScreen(const ESplashScreen splash) const { return mSplash == splash; }

private:
  enum EProgressivePhase {
    kPP_Initial,
    kPP_Selection,
    kPP_Confirmation,
    kPP_Complete,
  };

  ESplashScreen mSplash;
  float mSplashTimeout;
  float mProgressiveSelectionTimeout;
  EProgressivePhase mProgressivePhase;
  bool mProgressiveMode;
  bool mTexturesLoaded;
  TToken< CTexture > mSplashTexture;
};

CHECK_SIZEOF(CSplashScreen, 0x30)

#endif // _CSPLASHSCREEN
