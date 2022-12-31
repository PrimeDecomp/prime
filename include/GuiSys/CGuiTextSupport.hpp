#ifndef _CGUITEXTSUPPORT
#define _CGUITEXTSUPPORT

#include "rstl/string.hpp"

class CColor;
class CGuiFrame;
class CTextExecuteBuffer;
class CTextParser;

class CGuiTextSupport {
  static CTextExecuteBuffer* gpExecBuf;
  static CTextParser* gpTextParser;

public:
  void SetText(const rstl::string&, bool multipage = false);
  void SetOutlineColor(const CColor& col);
  void SetFontColor(const CColor& col);

  static void Initialize(CTextExecuteBuffer* buf, CTextParser* parser) {
    gpExecBuf = buf;
    gpTextParser = parser;
  }
};

#endif // _CGUITEXTSUPPORT
