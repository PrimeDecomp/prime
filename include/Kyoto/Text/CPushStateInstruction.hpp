#ifndef _CPUSHSTATEINSTRUCTION
#define _CPUSHSTATEINSTRUCTION

#include "Kyoto/Text/CInstruction.hpp"

class CPushStateInstruction : public CInstruction {
public:
  CPushStateInstruction() {}
  ~CPushStateInstruction() {}
  
  void Invoke(CFontRenderState& state, CTextRenderBuffer* buf) const;
  void PageInvoke(CFontRenderState& state, CTextRenderBuffer* buf) const;
};


#endif // _CPUSHSTATEINSTRUCTION
