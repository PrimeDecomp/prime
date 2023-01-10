#include "Kyoto/Text/CLineExtraSpaceInstruction.hpp"

#include "Kyoto/Text/CFontRenderState.hpp"

void CLineExtraSpaceInstruction::Invoke(CFontRenderState& state, CTextRenderBuffer* buf) const {
  state.SetExtraLineSpace(x4_spacing);
}

void CLineExtraSpaceInstruction::PageInvoke(CFontRenderState& state, CTextRenderBuffer* buf) const {
  Invoke(state, buf);
}
