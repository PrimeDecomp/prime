#ifndef _CGUITEXTPANE
#define _CGUITEXTPANE

#include "GuiSys/CGuiPane.hpp"

#include "GuiSys/CGuiTextSupport.hpp"

#include "Kyoto/SObjectTag.hpp"

class IObjectStore;
class CSimplePool;
class CColor;
class CGuiTextProperties;

class CGuiTextPane : public CGuiPane {
public:
  static CGuiWidget* Create(CGuiFrame* frame, CInputStream& in, CSimplePool* sp);
  CGuiTextPane(const CGuiWidgetParms& parms, CSimplePool* sp, const float dimX, const float dimY,
               const CVector3f& vec, const CAssetId fontId, const CGuiTextProperties& props,
               const CColor& col1, const CColor& col2, const int padX, const int padY);
  ~CGuiTextPane();

  FourCC GetWidgetTypeID() const override { return 'TXPN'; }
  virtual rstl::vector< CAssetId > GetFontAssets() const;

  CGuiTextSupport& TextSupport() { return xd4_textSupport; }
  const CGuiTextSupport& GetTextSupport() const { return xd4_textSupport; }
  void Update(float dt) override;
  bool GetIsFinishedLoadingWidgetSpecific() const override;
  void SetDimensions(const CVector2f& dim, bool initVBO) override;
  void ScaleDimensions(const CVector3f& scale) override;
  void Draw(const CGuiWidgetDrawParms& parms) const override;

private:
  mutable CGuiTextSupport xd4_textSupport;
};

CHECK_SIZEOF(CGuiTextPane, 0x3e0)

#endif // _CGUITEXTPANE
