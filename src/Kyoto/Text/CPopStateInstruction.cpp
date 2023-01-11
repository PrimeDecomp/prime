#include "Kyoto/Text/CPopStateInstruction.hpp"

#include "Kyoto/Text/CFontRenderState.hpp"
#include "Kyoto/Text/CTextRenderBuffer.hpp"

void CPopStateInstruction::Invoke(CFontRenderState& state, CTextRenderBuffer* buf) const {
  const CObjectReference* font = state.GetFont().GetRef();
  state.PopState();
  if (state.GetFont().GetRef() != font) {
    buf->AddFontChange(state.GetFont());
  }
}

void CPopStateInstruction::PageInvoke(CFontRenderState& state, CTextRenderBuffer* buf) const {
  Invoke(state, buf);
}
