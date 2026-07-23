#include "Kyoto/Text/CWordInstruction.hpp"

#include "Kyoto/Text/CBlockInstruction.hpp"
#include "Kyoto/Text/CFontRenderState.hpp"
#include "Kyoto/Text/CLineInstruction.hpp"
#include "Kyoto/Text/CRasterFont.hpp"
// #include "Kyoto/Text/CLineInstruction.hpp"

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
  int height;
  int width = 0;
  wchar_t t = ' ';
  state.GetFont()->GetSize(state.GetOptions(), width, height, &t, 1);

  const CBlockInstruction* block = state.GetBlock();
  switch (block->GetJustification()) {
  case kJustification_Full:
    width +=
        (block->GetOutputWidth() - state.GetLine()->GetX()) / (state.GetLine()->GetWordCount() - 1);
    break;
  case kJustification_Left:
  case kJustification_Center:
  case kJustification_Right:
    break;
  case kJustification_LeftMono:
  case kJustification_CenterMono:
  case kJustification_RightMono:
    break;
  case kJustification_NLeft:
  case kJustification_NCenter:
  case kJustification_NRight:
    width += (block->GetLineX() - state.GetLine()->GetX()) / (state.GetLine()->GetWordCount() - 1);
    break;
  default:
    break;
  }

  int x = state.GetX();
  int y = state.GetY() - state.GetFont()->GetCarriageAdvance();
  state.GetFont()->DrawSpace(state.GetOptions(), x, y + state.GetLine()->GetY(), x, height, width);
  state.SetX(x);
}
