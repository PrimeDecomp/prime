#include "Kyoto/Text/CColorOverrideInstruction.hpp"
#include "Kyoto/Text/CFontRenderState.hpp"

void CColorOverrideInstruction::Invoke(CFontRenderState& state, CTextRenderBuffer* buf) const {
  state.GetOverride()[x4_idx] = true;
  state.GetOptions().SetPaletteEntry(x4_idx, state.ConvertToTextureSpace(x8_color));
}

void CColorOverrideInstruction::PageInvoke(CFontRenderState& state, CTextRenderBuffer* buf) const {
  Invoke(state, buf);
}
