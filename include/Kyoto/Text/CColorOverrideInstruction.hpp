#ifndef _CCOLOROVERRIDEINSTRUCTION
#define _CCOLOROVERRIDEINSTRUCTION

#include "Kyoto/Text/CInstruction.hpp"
#include "Kyoto/Text/CTextColor.hpp"

class CColorOverrideInstruction : public CInstruction {
public:
  explicit CColorOverrideInstruction(int idx, const CTextColor& color)
  : x4_idx(idx), x8_color(color) {}
  void Invoke(CFontRenderState& state, CTextRenderBuffer* buf) const;
  void PageInvoke(CFontRenderState& state, CTextRenderBuffer* buf) const;

private:
  int x4_idx;
  CTextColor x8_color;
};

#endif // _CCOLOROVERRIDEINSTRUCTION
