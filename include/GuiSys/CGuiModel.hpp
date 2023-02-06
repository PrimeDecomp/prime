#ifndef _CGUIMODEL
#define _CGUIMODEL

#include "GuiSys/CGuiWidget.hpp"

#include "Kyoto/SObjectTag.hpp"
#include "Kyoto/TToken.hpp"

class CModel;

class CGuiModel : public CGuiWidget {
public:
  CGuiModel(const CGuiWidgetParms& parms, CSimplePool* sp, CAssetId modelId, uint lightMask,
            bool flag);

  const TLockedToken< CModel >& GetModel() const { return xb8_model; }
  bool GetIsFinishedLoadingWidgetSpecific() const;
  void Touch() const;
  void Draw(const CGuiWidgetDrawParms& parms) const;
  // bool TestCursorHit(const CMatrix4f& vp, const CVector2f& point) const;

private:
  TLockedToken< CModel > xb8_model;
  CAssetId xc8_modelId;
  uint xcc_lightMask;
};

#endif // _CGUIMODEL
