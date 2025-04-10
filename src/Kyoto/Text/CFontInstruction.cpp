#include "Kyoto/TToken.hpp"
#include "Kyoto/Text/CRasterFont.hpp"
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

void CFontInstruction::GetAssets(rstl::vector< CToken >& assets) const {
  assets.push_back(x4_font);
  if(x4_font.IsLoaded()) {
    assets.push_back(TToken<CRasterFont> (x4_font)->x80_texture.data());
  }
}

uint CFontInstruction::GetAssetCount() const { return 2; }

void CFontInstruction::PageInvoke(CFontRenderState& state, CTextRenderBuffer* buf) const {
  Invoke(state, buf);
}
