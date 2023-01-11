#ifndef _CPOPSTATEINSTRUCTION
#define _CPOPSTATEINSTRUCTION

#include "Kyoto/Text/CInstruction.hpp"

class CPopStateInstruction : public CInstruction {
public:
  CPopStateInstruction() {}
  ~CPopStateInstruction() {}
  
  void Invoke(CFontRenderState& state, CTextRenderBuffer* buf) const;
  void PageInvoke(CFontRenderState& state, CTextRenderBuffer* buf) const;
};


#endif // _CPOPSTATEINSTRUCTION
