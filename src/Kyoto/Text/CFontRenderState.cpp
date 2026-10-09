#include "Kyoto/Text/CFontRenderState.hpp"

CFontRenderState::CFontRenderState()
: mCurBlock(nullptr)
, mCurX(0)
, mCurY(0)
, mCurrentLineInst(nullptr)
, mLineInitialized(true) {
  GetColors()[0] = CTextColor(255, 255, 255, 255);
  GetColors()[1] = CTextColor(128, 128, 128, 255);
  GetColors()[2] = CTextColor(255, 255, 255, 255);
  RefreshPalette();
}

void CFontRenderState::RefreshColor(const EColorType col) {
  switch (col) {
  case kCT_Main: {
    if (IsFinishedLoading() && GetFont().IsLoaded()) {
      switch (GetFont()->GetMode()) {
#if VERSION >= VERSION_GM8P_00
      case kFM_OneLayer:
      case kFM_OneLayerOutline:
      case kFM_FourLayers:
      case kFM_TwoLayersOutline:
      case kFM_TwoLayers:
        if (!GetOverride()[0]) {
          GetOptions().SetPaletteEntry(0, ConvertToTextureSpace(GetColors()[0]));
        }
        break;
#else
      case kFM_OneLayer:
        if (!GetOverride()[0]) {
          GetOptions().SetPaletteEntry(0, ConvertToTextureSpace(GetColors()[0]));
        }
        break;
      case kFM_OneLayerOutline: {
        if (!GetOverride()[0]) {
          GetOptions().SetPaletteEntry(0, ConvertToTextureSpace(GetColors()[0]));
        }
        break;
      }
#endif
      default:
        break;
      }
    }
    break;
  }
  case kCT_Geometry: {
    if (!GetOverride()[2]) {
      GetOptions().SetPaletteEntry(2, ConvertToTextureSpace(GetColors()[2]));
    }
  } break;
  case kCT_Outline: {
    if (IsFinishedLoading() && GetFont().IsLoaded() && !GetOverride()[1]) {
#if VERSION >= VERSION_GM8P_00
      if (GetFont()->GetMode() == kFM_OneLayerOutline ||
          GetFont()->GetMode() == kFM_TwoLayersOutline) {
#else
      if (GetFont()->GetMode() == kFM_OneLayerOutline) {
#endif
        GetOptions().SetPaletteEntry(1, ConvertToTextureSpace(GetColors()[1]));
      }
    }
    break;
  }

  case kCT_Foreground: {
    RefreshColor(kCT_Main);
    RefreshColor(kCT_Geometry);
    break;
  }
  case kCT_Background: {
    RefreshColor(kCT_Outline);
    break;
  }
  }
}
void CFontRenderState::RefreshPalette() {
  RefreshColor(kCT_Foreground);
  RefreshColor(kCT_Background);
}

void CFontRenderState::SetColor(const EColorType type, const CTextColor& color) {
  switch (type) {
  case kCT_Main:
  case kCT_Outline:
  case kCT_Geometry:
    GetColors()[type] = color;
    break;
  case kCT_Foreground:
    GetColors()[0] = color;
    break;
  case kCT_Background:
    GetColors()[1] = color;
    break;
  }

  RefreshColor(type);
}

void CFontRenderState::PushState() { mPushedStates.push_front(mState); }

void CFontRenderState::PopState() {
  mState = mPushedStates.front();
  mPushedStates.pop_front();
  RefreshPalette();
}

uint CFontRenderState::ConvertToTextureSpace(const CTextColor& color) const {
  return CTextColor(color).GetRGBA();
}
