#include "Kyoto/Text/CBlockInstruction.hpp"
#include "Kyoto/Text/CFontRenderState.hpp"

void CBlockInstruction::Invoke(CFontRenderState& state, CTextRenderBuffer* buf) const {
  state.GetOptions().SetTextDirection(x14_dir);
  state.SetBlock(this);
  if (x14_dir == kTD_Horizontal) {
    SetupPositionLTR(state);
  }
}
void CBlockInstruction::SetupPositionLTR(CFontRenderState& state) const {
  switch (x1c_vertJustification) {
  case kVerticalJustification_Top:
  case kVerticalJustification_Full:
  case kVerticalJustification_NTop:
  case kVerticalJustification_TopMono:
    state.SetY(x8_offsetY);
    break;
  case kVerticalJustification_Center:
  case kVerticalJustification_NCenter:
    state.SetY(x8_offsetY + (x10_blockExtentY - x30_lineY) / 2);
    break;
  case kVerticalJustification_CenterMono:
    state.SetY(x8_offsetY + (x10_blockExtentY - x34_lineCount * x24_largestMonoH) / 2);
    break;
  case kVerticalJustification_Bottom:
  case kVerticalJustification_NBottom:
    state.SetY(x8_offsetY + x10_blockExtentY - x30_lineY);
    break;
  case kVerticalJustification_RightMono:
    state.SetY(x8_offsetY + x10_blockExtentY - x34_lineCount * x24_largestMonoH);
    break;
  }
}

void CBlockInstruction::TestLargestFont(int monoW, int monoH, int baseline) {
  if (!x28_largestBaseline) {
    x28_largestBaseline = baseline;
  }

  if (x20_largestMonoW < monoW) {
    x20_largestMonoW = monoW;
  }

  if (x24_largestMonoH < monoH) {
    x24_largestMonoH = monoH;
    x28_largestBaseline = baseline;
  }
}

void CBlockInstruction::PageInvoke(CFontRenderState& state, CTextRenderBuffer* buf) const {
  Invoke(state, buf);
}
