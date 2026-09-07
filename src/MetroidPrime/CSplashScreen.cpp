#include "MetroidPrime/CSplashScreen.hpp"

#include "Kyoto/Graphics/CGraphics.hpp"
#include "MetroidPrime/CArchitectureMessage.hpp"
#include "MetroidPrime/CGameGlobalObjects.hpp"

#include "Kyoto/Graphics/CTexture.hpp"
#include "Kyoto/Input/IController.hpp"
#include "MetroidPrime/Decode.hpp"

const char* const skSplashScreenTextureNames[CSplashScreen::kSplashScreen_MAX] = {
    "TXTR_NintendoLogo",
    "TXTR_RetroLogo",
    "TXTR_DolbyLogo",
};

CSplashScreen::CSplashScreen(const ESplashScreen splash)
: CIOWin(rstl::string_l("SplashScreen"))
, mSplash(splash)
, mSplashTimeout(2.f)
, mProgressiveSelectionTimeout(0.f)
, mProgressivePhase(0)
, mProgressiveMode(true)
, mTexturesLoaded(false)
, mSplashTexture(gpSimplePool->GetObj(skSplashScreenTextureNames[mSplash])) {
  mSplashTexture.Lock();
}

CIOWin::EMessageReturn CSplashScreen::OnMessage(const CArchitectureMessage& message,
                                                CArchitectureQueue& queue) {
  switch (message.GetType()) {
  case kAM_TimerTick:
    if (!mTexturesLoaded) {
      if (!mSplashTexture.IsLoaded()) {
        break;
      }
      mTexturesLoaded = true;
    }

    if (mProgressivePhase == 0) {
      const CControllerGamepadData& data = gpController->GetGamepadData(0);
      const bool bPressed = data.GetButton(kBU_B).GetIsPressed();
      const bool curProgressiveMode = CGraphics::GetProgressiveMode();
      const bool canSet = CGraphics::CanSetProgressiveMode();
      const bool defaultMode = CGraphics::GetProgressiveDefault();
      mProgressivePhase = 3;
      if (!lbl_805A6BC0 && IsCurrentSplashScreen(kSplashScreen_Nintendo) && canSet &&
          !curProgressiveMode) {
        mProgressivePhase = curProgressiveMode && defaultMode;
        CGraphics::SetProgressiveMode(mProgressivePhase);
      } else if (lbl_805A6BC0 || IsCurrentSplashScreen(kSplashScreen_Nintendo) ||
                 curProgressiveMode || !canSet || (bPressed && defaultMode)) {
        mProgressiveMode = false;
      } else {
        mProgressiveSelectionTimeout = 10.f;
        mProgressivePhase = 1;
        mProgressiveMode = true;
      }

      const float delta = MakeMsg::GetParmTimerTick(message).GetReal();
      mSplashTimeout -= delta;

      if (mProgressiveSelectionTimeout > 0.f) {
      }
    }
    break;
  case kAM_UserInput:
    break;
  default:
    break;
  }

  return kMR_Exit;
}