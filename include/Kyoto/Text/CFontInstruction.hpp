#ifndef _CFONTINSTRUCTION
#define _CFONTINSTRUCTION

#include <Kyoto/TToken.hpp>
#include <Kyoto/Text/CInstruction.hpp>
#include <Kyoto/Text/CRasterFont.hpp>

class CFontInstruction : public CInstruction {
public:
  CFontInstruction(const TToken< CRasterFont >& font) : x4_font(font) {}

  void Invoke(CFontRenderState& state, CTextRenderBuffer* buf) const override;
  void PageInvoke(CFontRenderState& state, CTextRenderBuffer* buf) const override;
  void GetAssets(rstl::vector< CToken >& assetsOut) const override;
  uint GetAssetCount() const override;

private:
  TToken< CRasterFont > x4_font;
};

#endif // _CFONTINSTRUCTION
