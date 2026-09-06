#include "Kyoto/Text/CImageInstruction.hpp"

#include "Kyoto/Math/CVector2i.hpp"
#include "Kyoto/Text/CFontRenderState.hpp"
#include "Kyoto/Text/CLineInstruction.hpp"
#include "Kyoto/Text/CTextRenderBuffer.hpp"

int CFontImageDef::CalculateHeight() const {
  return GetHeight() - (GetHeight() - CalculateBaseline());
}

void CImageInstruction::Invoke(CFontRenderState& state, CTextRenderBuffer* buf) const {
  if (x4_image.IsLoaded() && !x4_image.GetImages().empty()) {
    if (state.GetBlock()->GetTextDirection() == kTD_Horizontal) {
      if (buf) {
        buf->AddImage(CVector2i(state.GetX(), state.GetY() + state.GetLine()->GetBaseline() -
                                                  x4_image.CalculateBaseline()),
                      x4_image);
      }
      state.SetX(state.GetX() + x4_image.GetWidth());
    } else {
      int offset = (state.GetLine()->GetWidth() - x4_image.GetWidth()) / 2;
      if (buf) {
        buf->AddImage(CVector2i(offset + state.GetX(), state.GetY()), x4_image);
      }
      state.SetY(state.GetY() + x4_image.CalculateHeight());
    }
  }
}

void CImageInstruction::GetAssets(rstl::vector< CToken >& assetsOut) const {
  for (int i = 0; i < x4_image.GetImages().size(); ++i) {
    assetsOut.push_back(x4_image.GetImages()[i]);
  }
}
