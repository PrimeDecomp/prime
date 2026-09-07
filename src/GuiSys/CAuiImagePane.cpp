#include "GuiSys/CAuiImagePane.hpp"
#include "GuiSys/CGuiWidgetDrawParms.hpp"
#include "Kyoto/Graphics/CGX.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Streams/CInputStream.hpp"
#include "Kyoto/Streams/COutputStream.hpp"
#include "dolphin/gx/GXVert.h"
#include "rstl/math.hpp"

CGuiWidget* CAuiImagePane::Create(CGuiFrame* frame, CInputStream& in, CSimplePool* sp) {
  CGuiWidgetParms parms = ReadWidgetHeader(frame, in);
  in.ReadLong();
  in.ReadLong();
  in.ReadLong();
  rstl::reserved_vector< CVector3f, 4 > coords(in);
  rstl::reserved_vector< CVector2f, 4 > uvs(in);
  CAuiImagePane* widget =
      rs_new CAuiImagePane(parms, sp, kInvalidAssetId, kInvalidAssetId, coords, uvs, true);
  widget->ParseBaseInfo(frame, in, parms);
  return widget;
}

void CAuiImagePane::WriteData(COutputStream& out, bool) const {
  out.Put(xc8_tex0);
  out.Put(xcc_tex1);
  out.Put(static_cast< int >(GetDrawFlags()));
  xe0_coords.PutTo(out);
  x114_uvs.PutTo(out);
}

CAuiImagePane::CAuiImagePane(const CGuiWidgetParms& parms, CSimplePool* sp, CAssetId tex0,
                             CAssetId tex1, const rstl::reserved_vector< CVector3f, 4 >& coords,
                             const rstl::reserved_vector< CVector2f, 4 >& uvs, bool initTex)
: CGuiWidget(parms)
, xc8_tex0(tex0)
, xcc_tex1(tex1)
, xd0_uvBias0(0.f, 0.f)
, xd8_uvBias1(0.f, 0.f)
, xe0_coords(coords)
, x114_uvs(uvs)
, x138_tileSize(CVector2f::Zero())
, x140_interval(0.f)
, x144_frameTimer(0.f)
, x148_fadeDuration(0.f)
, x14c_deResFactor(0.f)
, x150_flashFactor(0.f) {
  if (initTex) {
    SetTextureID0(tex0, sp);
  }
}

void CAuiImagePane::SetAnimationParms(const CVector2f& tileSize, float interval,
                                      float fadeDuration) {
  x138_tileSize = tileSize;
  x140_interval = interval;
  x144_frameTimer = 0.f;
  x148_fadeDuration = fadeDuration;
}

void CAuiImagePane::Update(float dt) {
  xd0_uvBias0[0] = CMath::ModF(xd0_uvBias0.GetX(), 1.f);
  xd0_uvBias0[1] = CMath::ModF(xd0_uvBias0.GetY(), 1.f);
  if (!(x138_tileSize == CVector2f::Zero()) && xb8_tex0Tok && xb8_tex0Tok->GetObject()) {
    const CTexture& texture = *xb8_tex0Tok->GetObject();
    const int columns = static_cast< int >(texture.GetWidth() / x138_tileSize.GetX());
    const int rows = static_cast< int >(texture.GetHeight() / x138_tileSize.GetY());
    x144_frameTimer = CMath::ModF(x144_frameTimer + dt * x140_interval, columns * rows);
  }
  CGuiWidget::Update(dt);
}

void CAuiImagePane::Draw(const CGuiWidgetDrawParms& parms) const {
  CGraphics::SetModelMatrix(GetWorldTransform());
  if (!GetIsVisible() || !xb8_tex0Tok) {
    return;
  }
  GetIsFinishedLoadingWidgetSpecific();
  const CTexture* texture = xb8_tex0Tok->GetObject();
  if (!texture) {
    return;
  }

  const CColor color = GetModifiedColor().WithAlphaModulatedBy(parms.GetAlpha());
  CGraphics::SetDepthWriteMode(true, kE_LEqual,
                               GetDrawFlags() == kGMDF_Shadeless || GetDrawFlags() == kGMDF_Opaque);
  float alpha0 = 1.f;
  float alpha1 = 0.f;
  int frame0 = 0;
  int frame1 = 0;
  if (x140_interval < 1.f && x140_interval > 0.f) {
    frame0 = CCast::ToInt(x144_frameTimer);
    const float columns = texture->GetWidth() / x138_tileSize.GetX();
    const float rows = texture->GetHeight() / x138_tileSize.GetY();
    frame1 = (frame0 + 1) % CCast::ToInt(columns * rows);
    const float fraction = x144_frameTimer - CCast::ToReal32(frame0);
    float blend;
    if (x148_fadeDuration == 0.f) {
      blend = 1.f;
    } else {
      blend = rstl::min_val(1.f, fraction / x148_fadeDuration);
    }
    alpha1 = blend;
    alpha0 = 1.f - blend;
  }

  CGraphics::SetBlendMode(kBM_Blend, kBF_SrcAlpha, kBF_InvSrcAlpha, kLO_Clear);
  DoDrawImagePane(CColor::Modulate(color, CColor::Black().WithAlphaOf(0.5f)), *texture, frame0, 1.f,
                  true);
  if (x150_flashFactor > 0.f) {
    CGraphics::SetBlendMode(kBM_Blend, kBF_SrcAlpha, kBF_One, kLO_Clear);
    CColor flashColor = GetModifiedColor().WithAlphaOf(x150_flashFactor);
    DoDrawImagePane(flashColor, *texture, frame0, alpha0, false);
    if (alpha1 > 0.f) {
      DoDrawImagePane(flashColor, *texture, frame1, alpha1, false);
    }
  }

  switch (GetDrawFlags()) {
  case kGMDF_Shadeless:
  case kGMDF_Opaque:
    CGraphics::SetBlendMode(kBM_Blend, kBF_One, kBF_Zero, kLO_Clear);
    DoDrawImagePane(color, *texture, frame0, alpha0, false);
    if (alpha1 > 0.f) {
      DoDrawImagePane(color, *texture, frame1, alpha1, false);
    }
    break;
  case kGMDF_Alpha:
    CGraphics::SetBlendMode(kBM_Blend, kBF_SrcAlpha, kBF_InvSrcAlpha, kLO_Clear);
    DoDrawImagePane(color, *texture, frame0, alpha0, false);
    if (alpha1 > 0.f) {
      DoDrawImagePane(color, *texture, frame1, alpha1, false);
    }
    break;
  case kGMDF_Additive:
    CGraphics::SetBlendMode(kBM_Blend, kBF_SrcAlpha, kBF_One, kLO_Clear);
    DoDrawImagePane(color, *texture, frame0, alpha0, false);
    if (alpha1 > 0.f) {
      DoDrawImagePane(color, *texture, frame1, alpha1, false);
    }
    break;
  case kGMDF_AlphaAdditiveOverdraw:
    CGraphics::SetBlendMode(kBM_Blend, kBF_SrcAlpha, kBF_InvSrcAlpha, kLO_Clear);
    DoDrawImagePane(color, *texture, frame0, alpha0, false);
    if (alpha1 > 0.f) {
      DoDrawImagePane(color, *texture, frame1, alpha1, false);
    }
    CGraphics::SetBlendMode(kBM_Blend, kBF_One, kBF_One, kLO_Clear);
    DoDrawImagePane(color, *texture, frame0, alpha0, false);
    if (alpha1 > 0.f) {
      DoDrawImagePane(color, *texture, frame1, alpha1, false);
    }
    break;
  }
}

void CAuiImagePane::DoDrawImagePane(CColor color, const CTexture& texture, int frame, float alpha,
                                    bool noBlur) const {
  const CColor useColor = color.WithAlphaModulatedBy(alpha);
  rstl::reserved_vector< CVector2f, 4 > frameUVs;
  const CVector2f* uvs;
  if (!(x138_tileSize == CVector2f::Zero())) {
    const CTexture& tileTexture = *xb8_tex0Tok->GetObject();
    const int width = tileTexture.GetWidth();
    const int height = tileTexture.GetHeight();
    const int columns = CCast::ToInt(width / x138_tileSize.GetX());
    const int rows = CCast::ToInt(height / x138_tileSize.GetY());
    const float tileWidth = x138_tileSize.GetX() / width;
    const float tileHeight = x138_tileSize.GetY() / height;
    const float x0 = tileWidth * (frame % columns);
    const float y0 = tileHeight * (rows - frame / rows);
    const float x1 = x0 + tileWidth;
    const float y1 = y0 - tileHeight;
    frameUVs.push_back(CVector2f(x0, y0));
    frameUVs.push_back(CVector2f(x0, y1));
    frameUVs.push_back(CVector2f(x1, y0));
    frameUVs.push_back(CVector2f(x1, y1));
    uvs = frameUVs.data();
  } else {
    uvs = x114_uvs.data();
  }

  if (noBlur) {
    CGraphics::SetTevOp(kTS_Stage0, CGraphics::kEnvModulateAlpha);
    CGraphics::SetTevOp(kTS_Stage1, CGraphics::kEnvPassthru);
    texture.Load(GX_TEXMAP0, CTexture::kCM_Repeat);
    CGraphics::StreamBegin(kP_TriangleStrip);
    CGraphics::StreamColor(useColor);
    for (int i = 0; i < 4; ++i) {
      CGraphics::StreamTexcoord(uvs[i] + xd0_uvBias0);
      CGraphics::StreamVertex(xe0_coords[i]);
    }
    CGraphics::StreamEnd();
    return;
  }
  const int numMips = texture.GetNumberOfMipMaps();
  if ((x14c_deResFactor == 0.f && alpha == 1.f) || numMips == 1) {
    CGraphics::SetTevOp(kTS_Stage0, CGraphics::kEnvModulate);
    CGraphics::SetTevOp(kTS_Stage1, CGraphics::kEnvPassthru);
    texture.LoadMipLevel(0, GX_TEXMAP0, CTexture::kCM_Repeat);
    CGraphics::StreamBegin(kP_TriangleStrip);
    CGraphics::StreamColor(useColor);
    for (int i = 0; i < 4; ++i) {
      CGraphics::StreamTexcoord(uvs[i] + xd0_uvBias0);
      CGraphics::StreamVertex(xe0_coords[i]);
    }
    CGraphics::StreamEnd();
  } else {
    const int mipCount = numMips - 1;
    float fadeFactor = (1.f - x14c_deResFactor) * alpha;
    const float fadeQ = -(fadeFactor * fadeFactor * fadeFactor - 1.f);
    fadeFactor = fadeQ * mipCount;
    const int mip1 = static_cast< int >(fadeFactor);
    const int mip2 = fadeQ == static_cast< float >(mip1 / mipCount) ? mip1 : mip1 + 1;
    const float weight1 = fadeFactor - mip1;
    const float weight0 = 1.f - weight1;
    texture.LoadMipLevel(mip1, GX_TEXMAP0, CTexture::kCM_Repeat);
    texture.LoadMipLevel(mip2, GX_TEXMAP1, CTexture::kCM_Repeat);
    GXVtxDescList desc[] = {{GX_VA_POS, GX_DIRECT}, {GX_VA_TEX0, GX_DIRECT}, {GX_VA_NULL, GX_NONE}};
    CGX::SetVtxDescv(desc);
    CGX::SetNumChans(0);
    CGX::SetNumTexGens(2);
    CGX::SetNumTevStages(2);
    for (GXTevStageID stage = GX_TEVSTAGE0; stage < GX_TEVSTAGE2;
         stage = static_cast< GXTevStageID >(stage + 1)) {
      GXTevColorArg prevColor = GX_CC_CPREV;
      if (stage == GX_TEVSTAGE0) {
        prevColor = GX_CC_ZERO;
      }
      CGX::SetTevColorIn(stage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_KONST, prevColor);
      CGX::SetTevAlphaIn(stage, GX_CA_ZERO, GX_CA_TEXA, GX_CA_KONST,
                         stage == GX_TEVSTAGE0 ? GX_CA_ZERO : GX_CA_APREV);
      CGX::SetTevColorOp(stage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, true, GX_TEVPREV);
      CGX::SetTevAlphaOp(stage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, true, GX_TEVPREV);
    }
    CGX::SetTevKAlphaSel(GX_TEVSTAGE0, GX_TEV_KASEL_K0_A);
    CGX::SetTevKColorSel(GX_TEVSTAGE0, GX_TEV_KCSEL_K0);
    CGX::SetTevKAlphaSel(GX_TEVSTAGE1, GX_TEV_KASEL_K1_A);
    CGX::SetTevKColorSel(GX_TEVSTAGE1, GX_TEV_KCSEL_K1);
    const CColor color0 = CColor::Modulate(useColor, CColor(weight0, weight0, weight0, weight0));
    const CColor color1 = CColor::Modulate(useColor, CColor(weight1, weight1, weight1, weight1));
    CGX::SetTevKColor(GX_KCOLOR0, color0.GetGXColor());
    CGX::SetTevKColor(GX_KCOLOR1, color1.GetGXColor());
    CGX::SetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR_NULL);
    CGX::SetTevOrder(GX_TEVSTAGE1, GX_TEXCOORD1, GX_TEXMAP1, GX_COLOR_NULL);
    CGX::SetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY, false, GX_PTIDENTITY);
    CGX::SetTexCoordGen(GX_TEXCOORD1, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY, false, GX_PTIDENTITY);
    CGX::Begin(GX_TRIANGLESTRIP, GX_VTXFMT0, 4);
    for (int i = 0; i < 4; ++i) {
      const CVector2f uv = uvs[i] + xd0_uvBias0;
      const CVector3f& pos = xe0_coords[i];
      GXPosition3f32(pos.GetX(), pos.GetY(), pos.GetZ());
      RSTexCoord2f32(uv.GetX(), uv.GetY());
    }
    CGX::End();
  }
}

void CAuiImagePane::SetTextureID0(CAssetId tex, CSimplePool* sp) {
  xc8_tex0 = tex;
  if (sp) {
    if (xc8_tex0 != kInvalidAssetId) {
      xb8_tex0Tok = TCachedToken< CTexture >(sp->GetObj(SObjectTag('TXTR', xc8_tex0)));
      xb8_tex0Tok->Lock();
    } else {
      xb8_tex0Tok = rstl::optional_object_null();
    }
  }
}

bool CAuiImagePane::GetIsFinishedLoadingWidgetSpecific() const {
  if (!xb8_tex0Tok) {
    return true;
  }
  return xb8_tex0Tok->TryCache();
}
