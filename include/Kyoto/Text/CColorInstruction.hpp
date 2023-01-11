#ifndef _CCOLORINSTRUCTION
#define _CCOLORINSTRUCTION

#include "Kyoto/Text/CInstruction.hpp"

#include "Kyoto/Text/CTextColor.hpp"
#include "Kyoto/Text/TextCommon.hpp"

class CColorInstruction : CInstruction {
public:
  CColorInstruction(EColorType type, const CTextColor& color) : x4_type(type), x8_color(color) {}

  void Invoke(CFontRenderState& state, CTextRenderBuffer* buf) const;
  void PageInvoke(CFontRenderState& state, CTextRenderBuffer* buf) const;

private:
  EColorType x4_type;
  CTextColor x8_color;
};

#endif // _CCOLORINSTRUCTION
