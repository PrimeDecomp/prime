#ifndef _CGUITEXTSUPPORT
#define _CGUITEXTSUPPORT

#include "Kyoto/SObjectTag.hpp"

#include "Kyoto/Math/CVector2i.hpp"
#include "Kyoto/Text/TextCommon.hpp"

#include "rstl/pair.hpp"
#include "rstl/string.hpp"
#include "rstl/vector.hpp"

class CColor;
class CGuiFrame;
class CTextExecuteBuffer;
class CTextParser;
class CSimplePool;

class CGuiTextProperties {
  friend class CGuiTextSupport;

public:
  CGuiTextProperties(bool wordWrap, bool horizontal, EJustification justification,
                     EVerticalJustification vertJustification,
                     const rstl::vector< rstl::pair< CAssetId, CAssetId > >* txtrMap = nullptr);

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
                  CSimplePool* store);
  ~CGuiTextSupport();

  void SetText(const rstl::wstring&, bool clearRenderBuffer = false);
  void SetText(const rstl::string&, bool multipage = false);
  void SetWordWrap(bool wordWrap);
  void ClearRenderBuffer();
  void SetImageBaseline(bool baseline);
  bool SetTypeWriteEffectOptions(bool enable, float fadeTime, float rate);
  void SetGeometryColor(const CColor& col);
  void SetOutlineColor(const CColor& col);
  void SetFontColor(const CColor& col);
  void Render();
  const rstl::pair< CVector2i, CVector2i >& GetBounds();
  bool GetIsTextSupportFinishedLoading() const;

  void SetExtentX(int extent) {
    x34_extentX = extent;
    ClearRenderBuffer();
  }
  void SetExtentY(int extent) {
    x38_extentY = extent;
    ClearRenderBuffer();
  }

  static void Initialize(CTextExecuteBuffer* buf, CTextParser* parser) {
    gpExecBuf = buf;
    gpTextParser = parser;
  }

private:
  char x0_pad[0x34];
  int x34_extentX;
  int x38_extentY;
  char x3c_pad[0x30c - 0x3c];
};

#endif // _CGUITEXTSUPPORT
