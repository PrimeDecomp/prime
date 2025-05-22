#include "Kyoto/Text/CTextInstruction.hpp"
#include "Kyoto/Text/CBlockInstruction.hpp"
#include "Kyoto/Text/CFontRenderState.hpp"
#include "Kyoto/Text/CInstruction.hpp"
#include "Kyoto/Text/CLineInstruction.hpp"
#include "Kyoto/Text/TextCommon.hpp"

CTextInstruction* CTextInstruction::Create(const wchar_t* str, const int len) {
  char* test = rs_new char[len * sizeof(wchar_t) + sizeof(CTextInstruction) + sizeof(wchar_t)];
  return new (test) CTextInstruction(str, len);
}

void CTextInstruction::Invoke(CFontRenderState& state, CTextRenderBuffer* buffer) const {
  if (state.GetBlock()->GetTextDirection() == kTD_Horizontal) {
    int xOut;
    int yOut;
    int baseline = state.GetLine()->GetBaseline();
    state.GetFont()->DrawString(state.GetOptions(), state.GetX(), baseline + state.GetY(), xOut,
                                yOut, buffer, mString, mLength);
    state.SetX(xOut);
  } else {
    int xOut;
    int yOut;
    int scale = (state.GetLine()->GetX() - state.GetFont()->GetMonoWidth()) / 2;
    state.GetFont()->DrawString(state.GetOptions(), scale + state.GetX(), state.GetY(), xOut, yOut,
                                buffer, mString, mLength);
    state.SetY(yOut);
  }
}

CTextInstruction::CTextInstruction(const wchar_t* str, const int len) : mLength(len) {
  for (int i = 0; i < len; ++i) {
    mString[i] = str[i];
  }
}
