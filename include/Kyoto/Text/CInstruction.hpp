#ifndef _CINSTRUCTION
#define _CINSTRUCTION

#include "types.h"

#include "Kyoto/CToken.hpp"

#include "rstl/vector.hpp"

class CFontRenderState;
class CTextRenderBuffer;

class CInstruction {
public:
  virtual ~CInstruction() {}
  virtual void Invoke(CFontRenderState& state, CTextRenderBuffer* buf) const = 0;
  virtual void PageInvoke(CFontRenderState& state, CTextRenderBuffer* buf) const {}
  virtual void GetAssets(rstl::vector< CToken >& assetsOut) const {}
  virtual uint GetAssetCount() const { return 0; }
};

#endif // _CINSTRUCTION
