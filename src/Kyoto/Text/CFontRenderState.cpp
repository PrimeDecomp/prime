#include "Kyoto/Text/CFontRenderState.hpp"

CFontRenderState::CFontRenderState()
: x88_curBlock(nullptr)
, xd4_curX(0)
, xd8_curY(0)
, xdc_currentLineInst(nullptr)
, x108_lineInitialized(true) {
  x0_state.GetColors()[0] = CTextColor(255, 255, 255, 255);
  x0_state.GetColors()[1] = CTextColor(128, 128, 128, 255);
  x0_state.GetColors()[2] = CTextColor(255, 255, 255, 255);
  RefreshPalette();
}

void CFontRenderState::RefreshColor(const EColorType col) {
  switch (col) {
  case kCT_Main: {
    if (x0_state.IsFinishedLoading() && GetFont().IsLoaded()) {
      switch (GetFont()->GetMode()) {
      case kFM_OneLayer:
        if (!x0_state.GetOverride()[0]) {
          x0_state.GetOptions().SetPaletteEntry(0, ConvertToTextureSpace(x0_state.GetColors()[0]));
        }
        break;
      case kFM_OneLayerOutline: {
        if (!x0_state.GetOverride()[0]) {
          x0_state.GetOptions().SetPaletteEntry(0, ConvertToTextureSpace(x0_state.GetColors()[0]));
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
    if (!x0_state.GetOverride()[2]) {
      x0_state.GetOptions().SetPaletteEntry(2, ConvertToTextureSpace(x0_state.GetColors()[2]));
    }
  } break;
  case kCT_Outline: {
    if (x0_state.IsFinishedLoading() && GetFont().IsLoaded() && !x0_state.GetOverride()[1]) {
      if (GetFont()->GetMode() == kFM_OneLayerOutline) {
        x0_state.GetOptions().SetPaletteEntry(1, ConvertToTextureSpace(x0_state.GetColors()[1]));
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
    x0_state.GetColors()[type] = color;
    break;
  case kCT_Foreground:
    x0_state.GetColors()[0] = color;
    break;
  case kCT_Background:
    x0_state.GetColors()[1] = color;
    break;
  }

  RefreshColor(type);
}

void CFontRenderState::PushState() { x10c_pushedStates.push_front(x0_state); }

void CFontRenderState::PopState() {
  x0_state = *x10c_pushedStates.begin();
  x10c_pushedStates.pop_front();
  RefreshPalette();
}

#ifdef __MWERKS__
#pragma cpp_extensions reset
#endif
uint CFontRenderState::ConvertToTextureSpace(const CTextColor& color) const {
  return CTextColor(color).GetRGBA();
}

#ifdef __MWERKS__
#pragma cpp_extensions reset
#endif