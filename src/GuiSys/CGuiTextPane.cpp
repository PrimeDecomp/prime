#include "GuiSys/CGuiTextPane.hpp"

#include "GuiSys/CGuiWidgetDrawParms.hpp"
#include "Kyoto/Basics/CCast.hpp"
#include "Kyoto/CSimplePool.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"

CGuiWidget* CGuiTextPane::Create(CGuiFrame* frame, CInputStream& in, CSimplePool* sp) {
  const CGuiWidgetParms parms = ReadWidgetHeader(frame, in);
  float dimX = in.Get< float >();
  float dimY = in.Get< float >();
  CVector3f vec(in);
  const CAssetId fontId = in.ReadLong();
  bool wordWrap = in.Get< bool >();
  bool horizontal = in.Get< bool >();
  EJustification justification = static_cast< EJustification >(in.Get< int >());
  EVerticalJustification vJustification = static_cast< EVerticalJustification >(in.Get< int >());
  CColor fontCol(in);
  CColor outlineColor(in);
  const int extentX = CCast::ToInt32(in.Get< float >());
  const int extentY = CCast::ToInt32(in.Get< float >());
  const CGuiTextProperties props(wordWrap, horizontal, justification, vJustification, nullptr);
  CGuiTextPane* ret = rs_new CGuiTextPane(parms, sp, dimX, dimY, vec, fontId, props, fontCol,
                                          outlineColor, extentX, extentY);
  ret->ParseBaseInfo(frame, in, parms);
  ret->InitializeBuffers();
  ret->TextSupport().SetText(rstl::string_l(""));
  return ret;
}

CGuiTextPane::CGuiTextPane(const CGuiWidgetParms& parms, CSimplePool* sp, const float dimX,
                           const float dimY, const CVector3f& vec, const CAssetId fontId,
                           const CGuiTextProperties& props, const CColor& col1, const CColor& col2,
                           const int padX, const int padY)
: CGuiPane(parms, dimX, dimY, vec)
, xd4_textSupport(fontId, props, col1, col2, CColor::White(), padX, padY, sp) {}

CGuiTextPane::~CGuiTextPane() {}

void CGuiTextPane::Draw(const CGuiWidgetDrawParms& parms) const {
  if (!GetIsVisible()) {
    return;
  }

  const float* vtxBuf = GetVtxBuf();
  CVector2f dimensions = GetDimensions();
  float width = GetTextSupport().GetTextBoundingWidth() == 0
                    ? 0.f
                    : dimensions.GetX() / GetTextSupport().GetTextBoundingWidth();
  float height = GetTextSupport().GetTextBoundingHeight() == 0
                     ? 0.f
                     : dimensions.GetY() / GetTextSupport().GetTextBoundingHeight();
  CTransform4f local =
      CTransform4f::Translate(CVector3f(vtxBuf[0], vtxBuf[1], vtxBuf[2]) + GetPivot()) *
      CTransform4f::Scale(width, 1.f, height);
  CTransform4f model = GetWorldTransform() * local;
  CGraphics::SetModelMatrix(model);

  CColor geomCol = GetModifiedColor().WithAlphaModulatedBy(parms.GetAlpha());
  CGuiTextSupport& text = xd4_textSupport;
  text.SetGeometryColor(geomCol);
  CGraphics::SetDepthWriteMode(GetIsAlwaysDepthRead(), kE_LEqual, GetIsAlwaysDepthWrite());

  switch (GetDrawFlags()) {
  case kGMDF_Shadeless:
  case kGMDF_Opaque:
    CGraphics::SetBlendMode(kBM_Blend, kBF_One, kBF_Zero, kLO_Clear);
    text.Render();
    break;
  case kGMDF_Alpha:
    CGraphics::SetBlendMode(kBM_Blend, kBF_SrcAlpha, kBF_InvSrcAlpha, kLO_Clear);
    text.Render();
    break;
  case kGMDF_Additive:
    CGraphics::SetBlendMode(kBM_Blend, kBF_SrcAlpha, kBF_One, kLO_Clear);
    text.Render();
    break;
  case kGMDF_AlphaAdditiveOverdraw: {
    CGraphics::SetBlendMode(kBM_Blend, kBF_SrcAlpha, kBF_InvSrcAlpha, kLO_Clear);
    text.Render();
    uchar alpha = geomCol.GetAlphau8();
    const CColor alphaColor(alpha, alpha, alpha, static_cast< uchar >(255));
    text.SetGeometryColor(CColor(CColor::Modulate(geomCol, alphaColor)));
    CGraphics::SetBlendMode(kBM_Blend, kBF_One, kBF_One, kLO_Clear);
    text.Render();
    break;
  }
  }
}

void CGuiTextPane::ScaleDimensions(const CVector3f&) {}

void CGuiTextPane::SetDimensions(const CVector2f& dim, bool initVBO) {
  CGuiPane::SetDimensions(dim, initVBO);
  if (initVBO) {
    InitializeBuffers();
  }
}

rstl::vector< CAssetId > CGuiTextPane::GetFontAssets() const {
  return rstl::vector< CAssetId >(1, GetTextSupport().GetFontID());
}

bool CGuiTextPane::GetIsFinishedLoadingWidgetSpecific() const {
  return GetTextSupport().GetIsTextSupportFinishedLoading();
}

void CGuiTextPane::Update(float dt) {
  CGuiWidget::Update(dt);
  TextSupport().Update(dt);
}
