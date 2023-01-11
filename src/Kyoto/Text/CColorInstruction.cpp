#include "Kyoto/Text/CColorInstruction.hpp"

#include "Kyoto/Text/CFontRenderState.hpp"

void CColorInstruction::Invoke(CFontRenderState& state, CTextRenderBuffer* buf) const {
  state.SetColor(x4_type, x8_color);
}

void CColorInstruction::PageInvoke(CFontRenderState& state, CTextRenderBuffer* buf) const {
  Invoke(state, buf);
}
