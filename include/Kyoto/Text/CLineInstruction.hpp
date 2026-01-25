#ifndef _CLINEINSTRUCTION
#define _CLINEINSTRUCTION

#include "Kyoto/Text/CInstruction.hpp"
#include "Kyoto/Text/TextCommon.hpp"

class CLineInstruction : public CInstruction {
public:
  CLineInstruction(int width, int height, int baseline, EJustification justification,
                   EVerticalJustification verticalJustification);

  int GetHeight() const;
  int GetBaseline() const;

  void Invoke(CFontRenderState& state, CTextRenderBuffer* buf) const override;
  void InvokeTTB(CFontRenderState& state) const;
  void PageInvoke(CFontRenderState& state, CTextRenderBuffer* buf) const override;

  void TestLargestFont(const int width, const int height, const int baseLine);
  void TestLargestImage(const int width, const int height, const int baseline);

  int GetX() const { return mCurX; }
  int GetY() const { return mCurY; }

  EJustification GetJustification() const { return mJustification; }
  void SetJustification(const EJustification justification) { mJustification = justification; }
  EVerticalJustification GetVerticalJustification() const { return mVerticalJustification; }
  void SetVerticalJustification(const EVerticalJustification justification) {
    mVerticalJustification = justification;
  }

private:
  int mWordCount;
  int mCurX;
  int mCurY;
  int mLargestFontHeight;
  int mLargestFontWidth;
  int mLargestFontBaseline;
  int mLargestImageHeight;
  int mLargestImageWidth;
  int mLargestImageBaseline;
  EJustification mJustification;
  EVerticalJustification mVerticalJustification;
  bool mImageBaseline;
};

#endif // _CLINEINSTRUCTION
