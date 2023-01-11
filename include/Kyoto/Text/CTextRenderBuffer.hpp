#ifndef _CTEXTRENDERBUFFER
#define _CTEXTRENDERBUFFER

#include "Kyoto/TToken.hpp"

class CRasterFont;
class CTextRenderBuffer {
public:
  void AddFontChange(const TToken< CRasterFont >& font);
};

#endif // _CTEXTRENDERBUFFER
