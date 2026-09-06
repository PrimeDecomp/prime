#include "Kyoto/Text/CFontRenderState.hpp"

CFontRenderState::CFontRenderState()
: x88_curBlock(nullptr)
, xd4_curX(0)
, xd8_curY(0)
, xdc_currentLineInst(nullptr)
, x108_lineInitialized(true) {
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
      if (GetFont()->GetMode() == kFM_OneLayerOutline) {
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

void CFontRenderState::PushState() { x10c_pushedStates.push(*this); }

void CFontRenderState::PopState() {
  CSaveableState::operator=(x10c_pushedStates.top());
  x10c_pushedStates.pop();
  RefreshPalette();
}

uint CFontRenderState::ConvertToTextureSpace(const CTextColor& color) const {
  return CTextColor(color).GetRGBA();
}
