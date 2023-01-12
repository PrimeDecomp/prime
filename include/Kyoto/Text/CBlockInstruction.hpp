#ifndef _CBLOCKINSTRUCTION
#define _CBLOCKINSTRUCTION

#include "Kyoto/Text/CInstruction.hpp"
#include "Kyoto/Text/TextCommon.hpp"

class CBlockInstruction : public CInstruction {
public:
  CBlockInstruction(int offX, int offY, int extX, int extY, ETextDirection dir, EJustification just,
                    EVerticalJustification vjust)
  : x4_offsetX(offX)
  , x8_offsetY(offY)
  , xc_blockExtentX(extX)
  , x10_blockExtentY(extY)
  , x14_dir(dir)
  , x18_justification(just)
  , x1c_vertJustification(vjust)
  , x20_largestMonoW(0)
  , x24_largestMonoH(0)
  , x28_largestBaseline(0)
  , x2c_lineX(0)
  , x30_lineY(0)
  , x34_lineCount(0) {}

  void Invoke(CFontRenderState& state, CTextRenderBuffer* buf) const;
  void SetupPositionLTR(CFontRenderState& state) const;
  void TestLargestFont(int monoW, int monoH, int baseline);
  void PageInvoke(CFontRenderState& state, CTextRenderBuffer* buf) const;

  int GetOutputX() const { return x4_offsetX; }
  int GetOutputY() const { return x8_offsetY; }
  int GetOutputWidth() const { return xc_blockExtentX; }
  int GetOutputHeight() const { return x10_blockExtentY; }
  ETextDirection GetTextDirection() const { return x14_dir; }
  EJustification GetJustification() const { return x18_justification; }
  EVerticalJustification GetVerticalJustification() const { return x1c_vertJustification; }
  int GetLargestFontWidth() const { return x20_largestMonoW; }
  int GetLargestFontHeight() const { return x24_largestMonoH; }
  int GetLineX() const { return x2c_lineX; }
  int GetLineY() const { return x30_lineY; }
  int GetLines() const { return x34_lineCount; }

private:
  int x4_offsetX;
  int x8_offsetY;
  int xc_blockExtentX;
  int x10_blockExtentY;
  ETextDirection x14_dir;
  EJustification x18_justification;
  EVerticalJustification x1c_vertJustification;
  int x20_largestMonoW;
  int x24_largestMonoH;
  int x28_largestBaseline;
  int x2c_lineX;
  int x30_lineY;
  int x34_lineCount;
};

#endif // _CBLOCKINSTRUCTION
