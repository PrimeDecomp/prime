#ifndef _CLINEEXTRASPACINGINSTRUCTION
#define _CLINEEXTRASPACINGINSTRUCTION

#include "Kyoto/Text/CInstruction.hpp"

class CLineExtraSpaceInstruction : public CInstruction {
public:
  CLineExtraSpaceInstruction(int spacing) : x4_spacing(spacing) {}
  ~CLineExtraSpaceInstruction() {}
  
  void Invoke(CFontRenderState& state, CTextRenderBuffer* buf) const;
  void PageInvoke(CFontRenderState& state, CTextRenderBuffer* buf) const;
private:
  int x4_spacing;
};

#endif // _CLINEEXTRASPACINGINSTRUCTION
