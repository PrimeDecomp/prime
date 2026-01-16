#include "Kyoto/Text/CFontRenderState.hpp"

#pragma inline_max_size(250)
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

void CFontRenderState::PushState() {
  x10c_pushedStates.push_front(x0_state);
}

void CFontRenderState::PopState() {
  x0_state = *x10c_pushedStates.begin();
  x10c_pushedStates.pop_front();
  RefreshPalette();
}