#include "MetroidPrime/CSplashScreen.hpp"

#include "Kyoto/Graphics/CGraphics.hpp"
#include "MetroidPrime/CArchitectureMessage.hpp"
#include "MetroidPrime/CArchitectureQueue.hpp"
#include "MetroidPrime/CGameGlobalObjects.hpp"
#include "MetroidPrime/CMain.hpp"

#include "Kyoto/Graphics/CTexture.hpp"
#include "Kyoto/Input/IController.hpp"
#include "Kyoto/Text/CInstruction.hpp"
#include "Kyoto/Text/CTextExecuteBuffer.hpp"
#include "Kyoto/Text/CTextRenderBuffer.hpp"
#include "MetaRender/CCubeRenderer.hpp"
#include "MetroidPrime/Decode.hpp"

#if VERSION >= VERSION_GM8J_00
static const wchar_t skProgressivePrompt[] = L"\x30D7\x30ED\x30B0\x30EC\x30C3\x30B7\x30D6\x30E2\x30FC\x30C9\x3067\x8868\x793A\x3057\x307E\x3059\x304B\xFF1F\n\n";
static const wchar_t skYes[] = L"\x306F\x3044    ";
static const wchar_t skModeSetPrefix[] = L"\x753B\x9762\x8868\x793A\x30E2\x30FC\x30C9\x306F\n";
static const wchar_t skModeSetSuffix[] = L"\x306B\n   \x30BB\x30C3\x30C8\x3055\x308C\x307E\x3057\x305F\x3002";
static const wchar_t skProgressiveMode[] = L"\x30D7\x30ED\x30B0\x30EC\x30C3\x30B7\x30D6\x30E2\x30FC\x30C9";
static const wchar_t skInterlaceMode[] = L"\x30A4\x30F3\x30BF\x30FC\x30EC\x30FC\x30B9\x30E2\x30FC\x30C9";
static const wchar_t skNo[] = L"\x3044\x3044\x3048";
#elif VERSION >= VERSION_GM8P_00
static const wchar_t* const skRefreshRatePrompt[6] = {
    L"Would you like to display in 60Hz mode?\n",
    L"Soll die Darstellung in den 60Hz-Modus umgeschaltet werden?\n",
    L"Voulez-vous afficher l'image en mode 60 Hz?\n",
    L"\x00BF" L"Deseas ver el juego en modo 60 Hz?\n",
    L"Visualizzare in modalit\x00E0 60Hz?\n",
    L"Wil je de 60Hz-stand gebruiken?\n",
};
static const wchar_t* const skYes[6] = {
    L"Yes     ",
    L"Ja     ",
    L"Oui     ",
    L"S\x00ED     ",
    L"S\x00EC     ",
    L"Ja     ",
};
static const wchar_t* const skNo[6] = {
    L"No",
    L"Nein",
    L"Non",
    L"No",
    L"No",
    L"Nee",
};
static const wchar_t* const skRefreshRateSet[6] = {
    L"Screen display has been set to ",
    L"Die Bildschirmdarstellung erfolgt im ",
    L"L'affichage est en mode ",
    L"La pantalla se ha configurado en modo ",
    L"Visualizzazione impostata a ",
    L"Het beeld staat in de ",
};
static const wchar_t* const skHzMode[6] = {
    L"Hz mode.",
    L"Hz-Modus.",
    L" Hz.",
    L" Hz.",
    L"Hz.",
    L"Hz-stand",
};
static const wchar_t* const sk50Hz = L"50";
static const wchar_t* const sk60Hz = L"60";
#endif

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
, mProgressivePhase(kPP_Initial)
, mProgressiveMode(true)
, mTexturesLoaded(false)
, mSplashTexture(gpSimplePool->GetObj(skSplashScreenTextureNames[mSplash])) {
  mSplashTexture.Lock();
}

CIOWin::EMessageReturn CSplashScreen::OnMessage(const CArchitectureMessage& message,
                                                CArchitectureQueue& queue) {
  switch (message.GetType()) {
  case kAM_TimerTick: {
    if (!mTexturesLoaded) {
      if (!mSplashTexture.IsLoaded()) {
        break;
      }
      mTexturesLoaded = true;
    }

    if (mProgressivePhase == kPP_Initial) {
#if VERSION >= VERSION_GM8P_00
      mProgressivePhase = kPP_Complete;
#endif
      const CControllerGamepadData& data = gpController->GetGamepadData(0);
      const bool bPressed = data.GetButton(kBU_B).GetIsPressed();
      const bool curProgressiveMode = CGraphics::GetProgressiveMode();
      const bool canSet = CGraphics::CanSetProgressiveMode();
      const bool defaultMode = CGraphics::GetProgressiveDefault();
      const bool isNintendo = mSplash == kSplashScreen_Nintendo;
#if VERSION < VERSION_GM8P_00
      mProgressivePhase = kPP_Complete;
#endif
      if (!sProgressiveModePrompt && isNintendo && canSet && !curProgressiveMode) {
        mProgressiveMode = canSet && defaultMode;
        CGraphics::SetProgressiveMode(mProgressiveMode);
      } else if (sProgressiveModePrompt && isNintendo && !curProgressiveMode && canSet &&
                 (bPressed || defaultMode)) {
        mProgressiveSelectionTimeout = 10.f;
        mProgressivePhase = kPP_Selection;
        mProgressiveMode = true;
      } else {
        mProgressiveMode = false;
      }
    }

    const float delta = MakeMsg::GetParmTimerTick(message).GetReal();
    mSplashTimeout -= delta;
    if (mProgressiveSelectionTimeout > 0.f) {
      if (mProgressivePhase == kPP_Selection && mSplashTimeout < 0.5f) {
        mSplashTimeout = 0.5f;
        mProgressiveSelectionTimeout -= delta;
        if (mProgressiveSelectionTimeout <= 0.f) {
          mProgressivePhase = kPP_Confirmation;
          CGraphics::SetProgressiveMode(mProgressiveMode);
          mProgressiveSelectionTimeout = 5.f;
        }
      } else if (mProgressivePhase == kPP_Confirmation) {
        mSplashTimeout = 0.5f;
        mProgressiveSelectionTimeout -= delta;
      }
    }

    if (mSplashTimeout <= 0.f) {
      if (mSplash < kSplashScreen_Dolby) {
        queue.Push(MakeMsg::CreateCreateIOWin(
            kAMT_IOWinManager, 9999, 9999,
            rs_new CSplashScreen(static_cast< ESplashScreen >(mSplash + 1))));
      }
      return kMR_RemoveIOWinAndExit;
    }
    break;
  }
  case kAM_UserInput:
    if (mTexturesLoaded) {
      const CFinalInput& input = MakeMsg::GetParmUserInput(message).GetUserInput();
      if (mProgressivePhase == kPP_Selection) {
        if (input.DLALeft() || input.DDPLeft()) {
          mProgressiveMode = true;
          mProgressiveSelectionTimeout = 10.f;
        } else if (input.DLARight() || input.DDPRight()) {
          mProgressiveMode = false;
          mProgressiveSelectionTimeout = 10.f;
        } else if (input.PA() || input.PStart()) {
          CGraphics::SetProgressiveMode(mProgressiveMode);
          mProgressiveSelectionTimeout = 5.f;
          mProgressivePhase = kPP_Confirmation;
        }
      } else if (mProgressivePhase == kPP_Confirmation && (input.PA() || input.PStart())) {
        mProgressiveSelectionTimeout = 0.f;
      }
    }
    break;
  default:
    break;
  }

  return kMR_Exit;
}

void CSplashScreen::Draw() const {
  if (!mTexturesLoaded) {
    return;
  }

  const CColor tint = IsCurrentSplashScreen(kSplashScreen_Nintendo)
#if VERSION >= VERSION_GM8J_00
                          ? CColor(uchar(0), uchar(70), uchar(255), uchar(255))
#else
                          ? CColor(uchar(220), uchar(0), uchar(0), uchar(255))
#endif
                          : CColor::White();
  float alpha = mSplashTimeout > 1.5f   ? 1.f - (mSplashTimeout - 1.5f) / 0.5f
                : mSplashTimeout > 0.5f ? 1.f
                                        : mSplashTimeout / 0.5f;

  CGraphics::SetAlphaCompare(kAF_Always, 0, kAO_And, kAF_Always, 0);
  gpRender->SetModelMatrix(CTransform4f::Identity());
  CGraphics::SetViewPointMatrix(CTransform4f::Identity());
  CGraphics::SetTevOp(kTS_Stage0, CGraphics::kEnvModulate);
  CGraphics::SetTevOp(kTS_Stage1, CGraphics::kEnvPassthru);
  gpRender->SetBlendMode_AlphaBlended();

  const TLockedToken< CTexture > texture(mSplashTexture);
  const CTexture& tex = **texture;
  const short width = tex.GetWidth();
  const short height = tex.GetHeight();
  tex.Load(GX_TEXMAP0, CTexture::kCM_Clamp);
  const CColor color = tint.WithAlphaOf(alpha);
  if (IsCurrentSplashScreen(kSplashScreen_Nintendo) || IsCurrentSplashScreen(kSplashScreen_Retro)) {
    CGraphics::SetOrtho(-10.f, 650.f, -5.5f, 484.5f, -1.f, 1.f);
    const int x = 133 - (width - 376) / 2;
    const int y = 170 - (height - 104) / 2;
    CGraphics::SetCullMode(kCM_None);
    CGraphics::StreamBegin(kP_TriangleStrip);
    CGraphics::StreamColor(color);
    CGraphics::StreamTexcoord(0.f, 0.f);
    CGraphics::StreamVertex(CVector3f(float(x), 0.f, float(y) + float(height)));
    CGraphics::StreamTexcoord(0.f, 1.f);
    CGraphics::StreamVertex(CVector3f(float(x), 0.f, float(y)));
    CGraphics::StreamTexcoord(1.f, 0.f);
    CGraphics::StreamVertex(CVector3f(float(x) + float(width), 0.f, float(y) + float(height)));
    CGraphics::StreamTexcoord(1.f, 1.f);
    CGraphics::StreamVertex(CVector3f(float(x) + float(width), 0.f, float(y)));
    CGraphics::StreamEnd();
    CGraphics::SetCullMode(kCM_Front);
  } else {
    const CViewport& vp = CGraphics::GetViewport();
    CGraphics::Render2D(tex, vp.mLeft, vp.mTop, vp.mWidth, vp.mHeight, color);
  }

  const CViewport viewport = CGraphics::GetViewport();
  CTextExecuteBuffer text;
  text.AddWordWrapping(true);
#if VERSION >= VERSION_GM8J_00
  text.BeginBlock(10, 0, viewport.mWidth - 20,
                  viewport.mHeight - (mProgressivePhase == kPP_Confirmation ? 78 : 96), false,
                  kTD_Horizontal, kJustification_Center, kVerticalJustification_Bottom);
#elif VERSION >= VERSION_GM8P_00
  text.BeginBlock(viewport.mWidth / 4, 0, viewport.mWidth / 2, viewport.mHeight - 128, false,
                  kTD_Horizontal, kJustification_Center, kVerticalJustification_Bottom);
#else
  text.BeginBlock(0, 0, viewport.mWidth, viewport.mHeight - 128, false, kTD_Horizontal,
                  kJustification_Center, kVerticalJustification_Bottom);
#endif
  text.AddFont(TToken< CRasterFont >(*gpDefaultFont));
  const int bright = static_cast< int >(255.f * alpha);
  const int dim = static_cast< int >(96.f * alpha);
  const CTextColor selected(bright, bright, bright, 255);
  const CTextColor unselected(dim, dim, dim, 255);
  text.AddColor(kCT_Foreground, selected);
#if VERSION >= VERSION_GM8J_00
  if (mProgressivePhase == kPP_Selection && mSplashTimeout <= 0.5f) {
    const wchar_t* yes = skYes;
    const wchar_t* no = skNo;
    text.AddString(rstl::wstring_l(skProgressivePrompt));
    text.AddColor(kCT_Foreground, mProgressiveMode ? selected : unselected);
    text.AddString(rstl::wstring_l(yes));
    text.AddColor(kCT_Foreground, mProgressiveMode ? unselected : selected);
    text.AddString(rstl::wstring_l(no));
  } else if (mProgressivePhase == kPP_Confirmation) {
    sProgressiveModePrompt = false;
    text.AddLineExtraSpace(9);
    text.AddString(rstl::wstring_l(skModeSetPrefix));
    text.AddColor(kCT_Foreground, CTextColor(static_cast< uchar >(255.f * alpha),
                                             static_cast< uchar >(255.f * alpha),
                                             static_cast< uchar >(100.f * alpha), 255));
    text.AddString(rstl::wstring_l(mProgressiveMode ? skProgressiveMode : skInterlaceMode));
    text.AddColor(kCT_Foreground, selected);
    text.AddString(rstl::wstring_l(skModeSetSuffix));
  }
#elif VERSION >= VERSION_GM8P_00
  const int language = gpMain->GetOsContext().GetLanguage();
  if (mProgressivePhase == kPP_Selection && mSplashTimeout <= 0.5f) {
    const wchar_t* yes = skYes[language];
    const wchar_t* no = skNo[language];
    text.AddString(rstl::wstring_l(skRefreshRatePrompt[language]));
    text.AddColor(kCT_Foreground, mProgressiveMode ? selected : unselected);
    text.AddString(rstl::wstring_l(yes));
    text.AddColor(kCT_Foreground, mProgressiveMode ? unselected : selected);
    text.AddString(rstl::wstring_l(no));
  } else if (mProgressivePhase == kPP_Confirmation) {
    sProgressiveModePrompt = false;
    text.AddString(rstl::wstring_l(skRefreshRateSet[language]) +
                   rstl::wstring_l(mProgressiveMode ? sk60Hz : sk50Hz) +
                   rstl::wstring_l(skHzMode[language]));
  }
#else
  if (mProgressivePhase == kPP_Selection && mSplashTimeout <= 0.5f) {
    text.AddString(rstl::wstring_l(L"Display in Progressive Scan mode?\n"));
    text.AddColor(kCT_Foreground, mProgressiveMode ? selected : unselected);
    text.AddString(rstl::wstring_l(L"Yes     "));
    text.AddColor(kCT_Foreground, mProgressiveMode ? unselected : selected);
    text.AddString(rstl::wstring_l(L"No"));
  } else if (mProgressivePhase == kPP_Confirmation) {
    sProgressiveModePrompt = false;
    text.AddString(rstl::wstring_l(L"Display has been set to\n"));
    text.AddString(
        rstl::wstring_l(mProgressiveMode ? L"Progressive Scan mode." : L"Interlace mode."));
  }
#endif
  text.EndBlock();

  gpRender->SetViewportOrtho(false, -4096.f, 4096.f);
  CGraphics::SetBlendMode(kBM_Blend, kBF_SrcAlpha, kBF_InvSrcAlpha, kLO_Clear);
  CGraphics::SetCullMode(kCM_None);
  const CTransform4f xf =
      CTransform4f::FromColumns(CVector3f::Right(), CVector3f::Forward(), CVector3f::Down(),
                                CVector3f(0.f, 0.f, float(viewport.mHeight)));
  CGraphics::SetModelMatrix(xf);
  text.BuildRenderBuffer().Render(CColor::White(), 0.f);
  CGraphics::SetCullMode(kCM_Front);
}
