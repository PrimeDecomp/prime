#include "Kyoto/Text/CLineInstruction.hpp"

#include "Kyoto/Text/CBlockInstruction.hpp"
#include "Kyoto/Text/CFontRenderState.hpp"

void CLineInstruction::Invoke(CFontRenderState& state, CTextRenderBuffer* buf) const {
  if (state.GetBlock()->GetTextDirection() == kTD_Horizontal) {
    InvokeTTB(state);
  }

  state.SetFirstWordOnLine(true);
  state.SetLine(this);
}

void CLineInstruction::PageInvoke(CFontRenderState& state, CTextRenderBuffer* buf) const {
  if (state.GetLine() != nullptr) {
    return;
  }
  Invoke(state, buf);
}

void CLineInstruction::InvokeTTB(CFontRenderState& state) const {
  switch (mJustification) {
  case kJustification_Left:
  case kJustification_Full:
  case kJustification_NLeft:
  case kJustification_LeftMono:
    state.SetX(state.GetBlock()->GetOutputX());
    break;
  case kJustification_Center:
  case kJustification_CenterMono:
    state.SetX(state.GetBlock()->GetOutputX() + state.GetBlock()->GetOutputWidth() / 2 - mCurX / 2);
    break;
  case kJustification_NCenter:
    if (mWordCount == 1) {
      state.SetX(state.GetBlock()->GetOutputX() + state.GetBlock()->GetOutputWidth() / 2 -
                 mCurX / 2);
    } else {
      state.SetX(state.GetBlock()->GetOutputX() + state.GetBlock()->GetOutputWidth() / 2 -
                 state.GetBlock()->GetLineX() / 2);
    }
    break;
  case kJustification_Right:
  case kJustification_RightMono:
    state.SetX(state.GetBlock()->GetOutputX() + state.GetBlock()->GetOutputWidth() - mCurX);
    break;
  case kJustification_NRight:
    state.SetX(state.GetBlock()->GetOutputX() + state.GetBlock()->GetOutputWidth() -
               state.GetBlock()->GetLineX());
    break;
  default:
    break;
  }

  if (state.GetLine() == nullptr) {
    return;
  }
  const CLineInstruction& inst = *state.GetLine();
  int val = 0;

  switch (state.GetBlock()->GetVerticalJustification()) {
  case kVerticalJustification_Top:
  case kVerticalJustification_Center:
  case kVerticalJustification_Bottom:
  case kVerticalJustification_NTop:
  case kVerticalJustification_NCenter:
  case kVerticalJustification_NBottom:
    val = inst.GetY();
    break;
  case kVerticalJustification_Full: {
    int lineY = state.GetBlock()->GetLineY();
    int height = state.GetBlock()->GetOutputHeight();
    int lineCount = state.GetBlock()->GetLines();
    val = (lineCount > 1 ? (lineY - height) / (lineCount - 1) : 0);
    val = val + inst.GetY();
    break;
  }
  case kVerticalJustification_TopMono:
    val = state.GetBlock()->GetLargestFontHeight();
    break;
  case kVerticalJustification_CenterMono:
    val = (inst.GetY() - state.GetBlock()->GetLargestFontHeight()) / 2;
    val += state.GetBlock()->GetLargestFontHeight();
    break;
  case kVerticalJustification_RightMono:
    val = state.GetBlock()->GetLargestFontHeight() * 2;
    val -= inst.GetY();
    break;
  default:
    break;
  }

  if (state.GetBlock()->GetVerticalJustification() != kVerticalJustification_Full) {
  } else {
    val = static_cast< int >(val * state.GetLineSpacing()) + state.GetLineExtraSpacing();
  }
  int y = state.GetY();
  y += val;
  state.SetY(y);
}

void CLineInstruction::TestLargestFont(const int width, const int height, const int baseLine) {
  if (mLargestFontBaseline == 0) {
    mLargestFontBaseline = baseLine;
  }
  if (mLargestFontWidth < width) {
    mLargestFontWidth = width;
  }
  if (mLargestFontHeight < height) {
    mLargestFontHeight = height;
    mLargestFontBaseline = baseLine;
  }
}

void CLineInstruction::TestLargestImage(const int width, const int height, const int baseline) {
  if (mLargestImageBaseline == 0) {
    mLargestImageBaseline = baseline;
  }
  if (mLargestImageWidth < width) {
    mLargestImageWidth = width;
  }
  if (mLargestImageHeight < height) {
    mLargestImageHeight = height;
    mLargestImageBaseline = baseline;
  }
}

int CLineInstruction::GetHeight() const {
  return (mLargestFontHeight != 0 && !mImageBaseline) ? mLargestFontHeight : mLargestImageHeight;
}

int CLineInstruction::GetBaseline() const {
  return (mLargestFontHeight != 0 && !mImageBaseline) ? mLargestFontBaseline
                                                      : mLargestImageBaseline;
}