#include "Kyoto/Text/CRemoveColorOverrideInstruction.hpp"

#include "Kyoto/Text/CFontRenderState.hpp"

void CRemoveColorOverrideInstruction::Invoke(CFontRenderState& state, CTextRenderBuffer* buf) const {
  state.GetOverride()[x4_idx] = false;
  state.RefreshPalette();
}

void CRemoveColorOverrideInstruction::PageInvoke(CFontRenderState& state, CTextRenderBuffer* buf) const {
  Invoke(state, buf);
}
