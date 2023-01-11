#ifndef _CREMOVECOLOROVERRIDEINSTRUCTION
#define _CREMOVECOLOROVERRIDEINSTRUCTION

#include "Kyoto/Text/CInstruction.hpp"

class CRemoveColorOverrideInstruction : public CInstruction {
public:
  explicit CRemoveColorOverrideInstruction(int idx) : x4_idx(idx) {}
  void Invoke(CFontRenderState& state, CTextRenderBuffer* buf) const;
  void PageInvoke(CFontRenderState& state, CTextRenderBuffer* buf) const;

private:
  int x4_idx;
};

#endif // _CREMOVECOLOROVERRIDEINSTRUCTION
