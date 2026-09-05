#include "GuiSys/CGuiModel.hpp"

#include "GuiSys/CGuiFrame.hpp"
#include "GuiSys/CGuiSys.hpp"
#include "GuiSys/CGuiWidgetDrawParms.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
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

void CGuiModel::Draw(const CGuiWidgetDrawParms& parms) const {
  CGraphics::SetModelMatrix(GetWorldTransform());
  if (xb8_model && GetIsFinishedLoading() && xb8_model->GetObject() && GetIsVisible()) {
    CModel* model = xb8_model->GetObject();
    CColor col = GetModifiedColor().WithAlphaModulatedBy(parms.GetAlpha());
    GetParentFrame()->EnableLights(xcc_lightMask);

    const bool cullChanged = GetIsBackfaceCullingOn();
    if (cullChanged) {
      CGraphics::SetCullMode(kCM_Front);
    }

    CModelFlags flags = CModelFlags::Normal();
    bool doDraw = true;
    switch (GetDrawFlags()) {
    case kGMDF_Shadeless:
      flags = CModelFlags::Normal();
      break;
    case kGMDF_Opaque:
      flags = CModelFlags::Normal();
      break;
    case kGMDF_Alpha:
      flags = CModelFlags::AlphaBlended(col);
      break;
    case kGMDF_Additive:
      flags = CModelFlags::Additive(col);
      break;
    case kGMDF_AlphaAdditiveOverdraw:
      
      doDraw = false;
      break;
    default:
      doDraw = false;
      break;
    }

    if (doDraw) {
      model->Draw(flags);
    }

    if (cullChanged) {
      CGraphics::SetCullMode(kCM_None);
    }
    GetParentFrame()->DisableLights();
  }

  CGuiWidget::Draw(parms);
}

void CGuiModel::Touch() const {
  if (xb8_model && xb8_model->GetObject()) {
    xb8_model->GetObject()->Touch(0);
  }
}

bool CGuiModel::GetIsFinishedLoadingWidgetSpecific() const {
  if (!xb8_model.valid()) {
    return true;
  }
  xb8_model->TryCache();

  if (const CModel* model = xb8_model->GetObject()) {
    model->Touch(0);
    return model->IsLoaded(0);
  }

  return false;
}

rstl::vector< CAssetId > CGuiModel::GetModelAssets() const {
  return rstl::vector< CAssetId >(1, xc8_modelId);
}

FourCC CGuiModel::GetWidgetTypeID() const { return 'MODL'; }