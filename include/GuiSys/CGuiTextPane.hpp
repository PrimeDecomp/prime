#ifndef _CGUITEXTPANE
#define _CGUITEXTPANE

#include "GuiSys/CGuiPane.hpp"

#include "GuiSys/CGuiTextSupport.hpp"

#include "Kyoto/SObjectTag.hpp"

class CSimplePool;
class CColor;
class CGuiTextProperties;

class CGuiTextPane : public CGuiPane {
public:
  CGuiTextPane(const CGuiWidgetParms& parms, CSimplePool* sp, const CVector2f& dim, const CVector3f& vec,
               CAssetId fontId, const CGuiTextProperties& props, const CColor& col1, const CColor& col2,
               int padX, int padY, CAssetId jpFontId, int jpExtentX, int jpExtentY);

  CGuiTextSupport& TextSupport() { return xd4_textSupport; }
  const CGuiTextSupport& GetTextSupport() const { return xd4_textSupport; }
  void Update(float dt);
  bool GetIsFinishedLoadingWidgetSpecific() const;
  void SetDimensions(const CVector2f& dim, bool initVBO);
  void ScaleDimensions(const CVector3f& scale);
  void Draw(const CGuiWidgetDrawParms& parms) const;
  // bool TestCursorHit(const CMatrix4f& vp, const CVector2f& point) const;

private:
  CGuiTextSupport xd4_textSupport;
};

#endif // _CGUITEXTPANE
