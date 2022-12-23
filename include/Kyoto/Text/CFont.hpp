#ifndef _CFONT
#define _CFONT

#include "Kyoto/Graphics/CColor.hpp"

class CFont {
public:
  CFont(float scale);
  ~CFont();
  int CharWidth(char) const;
  void DrawString(const char* str, long x, long y, const CColor& col) const;
private:
  int mFontSize;
  float mScale;
};

#endif // _CFONT
