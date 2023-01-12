#ifndef _CWORDINSTRUCTION
#define _CWORDINSTRUCTION

#include "Kyoto/Text/CInstruction.hpp"

class CWordInstruction : public CInstruction {
public:
  void Invoke(CFontRenderState& state, CTextRenderBuffer* buf) const;
  void PageInvoke(CFontRenderState& state, CTextRenderBuffer* buf) const;
  void InvokeLTR(CFontRenderState& state) const;
};

#endif // _CWORDINSTRUCTION
