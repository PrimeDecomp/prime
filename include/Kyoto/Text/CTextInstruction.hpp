#ifndef _CTEXTINSTRUCTION
#define _CTEXTINSTRUCTION

#include "Kyoto/Text/CInstruction.hpp"

class CTextInstruction : public CInstruction {
public:
  static CTextInstruction* Create(const wchar_t* str, const int len);
  CTextInstruction(const wchar_t* str, int length);
  void Invoke(CFontRenderState& state, CTextRenderBuffer* buffer) const override;

private:
  int mLength;
  wchar_t mString[1];
};

#endif // _CTEXTINSTRUCTION
