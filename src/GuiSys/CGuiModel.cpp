#include "GuiSys/CGuiModel.hpp"

#include "GuiSys/CGuiFrame.hpp"
#include "GuiSys/CGuiSys.hpp"
#include "Kyoto/Graphics/CModel.hpp"

CGuiModel* CGuiModel::Create(CGuiFrame* frame, CInputStream& in, CSimplePool* sp) {
  CGuiWidgetParms parms = ReadWidgetHeader(frame, in);

  CAssetId model = in.Get< CAssetId >();
  in.Get< uint >();
  uint lightMask = in.Get< uint >();

  CGuiModel* ret = rs_new CGuiModel(parms, sp, model, lightMask, true);
  ret->ParseBaseInfo(frame, in, parms);
  return ret;
}

CGuiModel::CGuiModel(const CGuiWidgetParms& parms, CSimplePool* sp, CAssetId modelId,
                     uint lightMask, bool flag)
: CGuiWidget(parms), xc8_modelId(modelId), xcc_lightMask(lightMask) {
  const CGuiSys* gs = CGuiSys::GetGlobalGuiSys();
  if (flag && xc8_modelId != kInvalidAssetId && gs->GetUsageMode() != CGuiSys::kUM_Two) {
    xb8_model = sp->GetObj(SObjectTag('CMDL', modelId));
    xb8_model->Lock();
  }
}

CGuiModel::~CGuiModel() {}

void CGuiModel::Draw(const CGuiWidgetDrawParms& parms) const {}

void CGuiModel::Touch() const {
  if (xb8_model && xb8_model->GetObject()) {
    xb8_model->GetObject()->Touch(0);
  }
}

bool CGuiModel::GetIsFinishedLoadingWidgetSpecific() const {}