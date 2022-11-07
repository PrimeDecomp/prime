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
  bool GetIsFinishedLoadingWidgetSpecific() override;
  void Touch() override;
  void Draw(const CGuiWidgetDrawParms& parms) override;
  bool TestCursorHit(const CMatrix4f& vp, const CVector2f& point) const override;

private:
  TLockedToken< CModel > xb8_model;
  CAssetId xc8_modelId;
  uint xcc_lightMask;
};

#endif // _CGUIMODEL
