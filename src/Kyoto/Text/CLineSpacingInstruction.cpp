#include "Kyoto/Text/CLineSpacingInstruction.hpp"

#include "Kyoto/Text/CFontRenderState.hpp"

void CLineSpacingInstruction::Invoke(CFontRenderState& state, CTextRenderBuffer* buf) const {
  state.SetLineSpacing(x4_spacing);
}

void CLineSpacingInstruction::PageInvoke(CFontRenderState& state, CTextRenderBuffer* buf) const {
  Invoke(state, buf);
}
