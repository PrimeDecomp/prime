#ifndef _CGUITEXTSUPPORT
#define _CGUITEXTSUPPORT

#include "rstl/string.hpp"
#include "rstl/vector.hpp"

class CColor;
class CGuiFrame;
class CTextExecuteBuffer;
class CTextParser;

enum EJustification {
  kJ_Left = 0,
  kJ_Center,
  kJ_Right,
  kJ_Full,
  kJ_NLeft,
  kJ_NCenter,
  kJ_NRight,
  kJ_LeftMono,
  kJ_CenterMono,
  kJ_RightMono,
};

enum EVerticalJustification {
  kVJ_Top = 0,
  kVJ_Center,
  kVJ_Bottom,
  kVJ_Full,
  kVJ_NTop,
  kVJ_NCenter,
  kVJ_NBottom,
  kVJ_TopMono,
  kVJ_CenterMono,
  kVJ_RightMono,
};

enum ETextDirection {
  kTD_Horizontal,
  kTD_Vertical,
};

class CGuiTextProperties {
  friend class CGuiTextSupport;

public:
  CGuiTextProperties(bool wordWrap, bool horizontal, EJustification justification,
                     EVerticalJustification vertJustification,
                     const rstl::vector< rstl::pair< CAssetId, CAssetId > >* txtrMap = nullptr)
  : x0_wordWrap(wordWrap)
  , x1_horizontal(horizontal)
  , x4_justification(justification)
  , x8_vertJustification(vertJustification)
  , xc_txtrMap(txtrMap) {}

private:
  bool x0_wordWrap;
  bool x1_horizontal;
  EJustification x4_justification;
  EVerticalJustification x8_vertJustification;
  const rstl::vector< rstl::pair< CAssetId, CAssetId > >* xc_txtrMap;
};

class CGuiTextSupport {
  static CTextExecuteBuffer* gpExecBuf;
  static CTextParser* gpTextParser;

public:
  CGuiTextSupport(CAssetId fontId, const CGuiTextProperties& props, const CColor& fontCol,
                  const CColor& outlineCol, const CColor& geomCol, int extX, int extY,
                  CSimplePool* store, int /*CGuiWidget::EGuiModelDrawFlags*/ drawFlags);

  void SetText(const rstl::string&, bool multipage = false);
  void SetOutlineColor(const CColor& col);
  void SetFontColor(const CColor& col);
  void Render() const;

  static void Initialize(CTextExecuteBuffer* buf, CTextParser* parser) {
    gpExecBuf = buf;
    gpTextParser = parser;
  }

private:
  char x0_pad[0x30c];
};

#endif // _CGUITEXTSUPPORT
