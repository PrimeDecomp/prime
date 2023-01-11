#include "Kyoto/Text/CPushStateInstruction.hpp"

#include "Kyoto/Text/CFontRenderState.hpp"

void CPushStateInstruction::Invoke(CFontRenderState& state, CTextRenderBuffer* buf) const {
  state.PushState();
}

void CPushStateInstruction::PageInvoke(CFontRenderState& state, CTextRenderBuffer* buf) const {
  Invoke(state, buf);
}
