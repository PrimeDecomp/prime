#include <Kyoto/Text/CFontInstruction.hpp>
#include <Kyoto/Text/CFontRenderState.hpp>
#include <Kyoto/Text/CTextRenderBuffer.hpp>

void CFontInstruction::Invoke(CFontRenderState& state, CTextRenderBuffer* buf) const {
  if (buf != nullptr) {
    buf->AddFontChange(x4_font);
  }
  state.SetFont(x4_font);
  state.RefreshPalette();
}

void CFontInstruction::GetAssets(rstl::vector< CToken >& assets) const {}

uint CFontInstruction::GetAssetCount() const { return 2; }

void CFontInstruction::PageInvoke(CFontRenderState& state, CTextRenderBuffer* buf) const {
  Invoke(state, buf);
}
