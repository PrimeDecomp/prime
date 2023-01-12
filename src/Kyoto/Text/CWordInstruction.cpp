#include "Kyoto/Text/CWordInstruction.hpp"

#include "Kyoto/Text/CFontRenderState.hpp"
#include "Kyoto/Text/CRasterFont.hpp"
#include "Kyoto/Text/CBlockInstruction.hpp"
//#include "Kyoto/Text/CLineInstruction.hpp"

void CWordInstruction::Invoke(CFontRenderState& state, CTextRenderBuffer* buf) const {
  if (!state.IsFirstWordOnLine()) {
    if (state.GetOptions().GetTextDirection() == kTD_Horizontal) {
      InvokeLTR(state);
    }
  } else {
    state.SetFirstWordOnLine(false);
  }
}

void CWordInstruction::PageInvoke(CFontRenderState& state, CTextRenderBuffer* buf) const {
  state.SetFirstWordOnLine(false);
}

void CWordInstruction::InvokeLTR(CFontRenderState& state) const {
  // TODO: Implement this
}
