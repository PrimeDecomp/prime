#ifndef _CGUITEXTSUPPORT
#define _CGUITEXTSUPPORT

#include "rstl/string.hpp"

class CColor;

class CGuiTextSupport {
public:
  void SetText(const rstl::string&, bool multipage = false);
  void SetOutlineColor(const CColor& col);
  void SetFontColor(const CColor& col);
};

#endif // _CGUITEXTSUPPORT
