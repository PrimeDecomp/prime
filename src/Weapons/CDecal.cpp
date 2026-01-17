#include "Weapons/CDecal.hpp"
#include "Kyoto/Graphics/CGX.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Graphics/CModel.hpp"
#include "Kyoto/Graphics/CModelFlags.hpp"
#include "Kyoto/Graphics/CTexture.hpp"
#include "Kyoto/Math/CRelAngle.hpp"
#include "Kyoto/Particles/CParticleGlobals.hpp"

CRandom16 CDecal::sDecalRandom(99);
bool CDecal::sMoveRedToAlphaBuffer = false;

void CDecal::SetGlobalSeed(ushort seed) { sDecalRandom.SetSeed(seed); }

CDecal::CDecal(const TToken< CDecalDescription >& desc, const CTransform4f& xf)
: x0_description(desc)
, xc_transform(xf)
, x54_modelLifetime(0)
, x58_frameIdx(0)
, x5c_flags(0)
, x60_rotation(CVector3f::Zero()) {
  CGlobalRandom gr(sDecalRandom);

  InitQuad(x3c_quad1, x0_description->x0_quad1, 1);
  InitQuad(x48_quad2, x0_description->x1c_quad2, 2);

  if (x0_description->x38_DMDL) {
    if (!x0_description->x48_DLFT.null()) {
      x0_description->x48_DLFT->GetValue(0, x54_modelLifetime);
    } else {
      x54_modelLifetime = 0x7FFFFF;
    }

    if (!x0_description->x50_DMRT.null()) {
      x0_description->x50_DMRT->GetValue(0, x60_rotation);
    }
  } else {
    x5c_flags |= 4;
  }
}

void CDecal::RenderQuad(CQuadDecal& decal, const CDecalDescription::SQuadDescr& desc) const {
  CColor color = CColor::White();
  float size = 1.f;
  CVector3f offset = CVector3f::Zero();
  if (CColorElement* clr = desc.x10_CLR.get()) {
    clr->GetValue(x58_frameIdx, color);
  }
  if (CRealElement* sze = desc.x4_SZE.get()) {
    sze->GetValue(x58_frameIdx, size);
    size *= 0.5f;
  }
  if (CRealElement* rot = desc.x8_ROT.get()) {
    rot->GetValue(x58_frameIdx, decal.x8_rotation);
  }
  if (CVectorElement* off = desc.xc_OFF.get()) {
    off->GetValue(x58_frameIdx, offset);
    offset.SetY(0.f);
  }

  CTransform4f modXf = xc_transform;
  modXf.AddTranslation(offset);
  CGraphics::SetModelMatrix(modXf);
  CGraphics::SetAlphaCompare(kAF_Always, 0, kAO_And, kAF_Always, 0);

  bool redToAlpha = CDecal::sMoveRedToAlphaBuffer && desc.x18_ADD && !desc.x14_TEX.null();
  if (desc.x18_ADD) {
    CGraphics::SetDepthWriteMode(true, kE_LEqual, false);
    if (redToAlpha) {
      CGraphics::SetBlendMode(kBM_Blend, kBF_One, kBF_One, kLO_Clear);
    } else {
      CGraphics::SetBlendMode(kBM_Blend, kBF_SrcAlpha, kBF_One, kLO_Clear);
    }
  } else {
    CGraphics::SetDepthWriteMode(true, kE_LEqual, false);
    CGraphics::SetBlendMode(kBM_Blend, kBF_SrcAlpha, kBF_InvSrcAlpha, kLO_Clear);
  }

  SUVElementSet uvSet;
  uvSet.xMin = 0.f;
  uvSet.xMax = 1.f;
  uvSet.yMin = 0.f;
  uvSet.yMax = 1.f;
  if (!desc.x14_TEX.null()) {
    TToken< CTexture > tex = desc.x14_TEX->GetValueTexture(x58_frameIdx);
    if (!tex.IsLoaded()) {
      return;
    }
    tex->Load(GX_TEXMAP0, CTexture::kCM_Repeat);
    tex.GetObj(); // ?
    CGraphics::SetTevOp(kTS_Stage0, CGraphics::kEnvModulate);
    desc.x14_TEX->GetValueUV(x58_frameIdx, uvSet);
    if (redToAlpha) {
      CGX::SetNumTevStages(2);
      CGX::SetTevColorIn(GX_TEVSTAGE1, GX_CC_ZERO, GX_CC_CPREV, GX_CC_APREV, GX_CC_ZERO);
      CGX::SetTevAlphaIn(GX_TEVSTAGE1, GX_CA_ZERO, GX_CA_TEXA, GX_CA_APREV, GX_CA_ZERO);
      CGX::SetStandardTevColorAlphaOp(GX_TEVSTAGE1);
      CGX::SetAlphaCompare(GX_GREATER, 0, GX_AOP_OR, GX_NEVER, 0);
      GXSetTevSwapMode(GX_TEVSTAGE1, GX_TEV_SWAP0, GX_TEV_SWAP1);
    } else {
      CGraphics::SetTevOp(kTS_Stage1, CGraphics::kEnvPassthru);
    }
  } else {
    CGraphics::SetTevOp(kTS_Stage0, CGraphics::kEnvPassthru);
    CGraphics::SetTevOp(kTS_Stage1, CGraphics::kEnvPassthru);
  }

  CGX::SetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
  CGX::SetTevOrder(GX_TEVSTAGE1, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR_NULL);
  CGX::SetNumTexGens(1);
  CGX::SetNumChans(1);
  CGX::SetNumIndStages(0);
  CGX::SetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY, false, GX_PTIDENTITY);
  CGX::SetChanCtrl(CGX::Channel0, false, GX_SRC_REG, GX_SRC_VTX, GX_LIGHT_NULL, GX_DF_NONE,
                   GX_AF_NONE);
  static const GXVtxDescList vtxDesc[4] = {
      {GX_VA_POS, GX_DIRECT},
      {GX_VA_CLR0, GX_DIRECT},
      {GX_VA_TEX0, GX_DIRECT},
      {GX_VA_NULL, GX_NONE},
  };
  CGX::SetVtxDescv(vtxDesc);
  CGX::Begin(GX_TRIANGLESTRIP, GX_VTXFMT0, 4);

  if (decal.x8_rotation == 0.f) {
    // Vertex 0
    GXPosition3f32(-size, 0.001f, size);
    GXColor1u32(color.GetColor_u32());
    GXTexCoord2f32(uvSet.xMin, uvSet.yMax);
    // Vertex 1
    GXPosition3f32(size, 0.001f, size);
    GXColor1u32(color.GetColor_u32());
    GXTexCoord2f32(uvSet.xMax, uvSet.yMax);
    // Vertex 2
    GXPosition3f32(-size, 0.001f, -size);
    GXColor1u32(color.GetColor_u32());
    GXTexCoord2f32(uvSet.xMin, uvSet.yMin);
    // Vertex 3
    GXPosition3f32(size, 0.001f, -size);
    GXColor1u32(color.GetColor_u32());
    GXTexCoord2f32(uvSet.xMax, uvSet.yMin);
  } else {
    const CRelAngle ang = CRelAngle::FromDegrees(decal.x8_rotation);
    const float sinSize = sine(ang) * size;
    const float cosSize = cosine(ang) * size;
    // Vertex 0
    GXPosition3f32(sinSize - cosSize, 0.001f, cosSize + sinSize);
    GXColor1u32(color.GetColor_u32());
    GXTexCoord2f32(uvSet.xMin, uvSet.yMax);
    // Vertex 1
    GXPosition3f32(sinSize + cosSize, 0.001f, cosSize - sinSize);
    GXColor1u32(color.GetColor_u32());
    GXTexCoord2f32(uvSet.xMax, uvSet.yMax);
    // Vertex 2
    GXPosition3f32(-(sinSize + cosSize), 0.001f, -(cosSize - sinSize));
    GXColor1u32(color.GetColor_u32());
    GXTexCoord2f32(uvSet.xMin, uvSet.yMin);
    // Vertex 3
    GXPosition3f32(-sinSize + cosSize, 0.001f, -cosSize - sinSize);
    GXColor1u32(color.GetColor_u32());
    GXTexCoord2f32(uvSet.xMax, uvSet.yMin);
  }

  CGX::End();
  if (redToAlpha) {
    GXSetTevSwapMode(GX_TEVSTAGE1, GX_TEV_SWAP0, GX_TEV_SWAP0);
    CGX::SetAlphaCompare(GX_ALWAYS, 0, GX_AOP_OR, GX_ALWAYS, 0);
  }
}

void CDecal::RenderMdl() const {
  CColor color = CColor::White();
  CVector3f offset = CVector3f::Zero();
  CTransform4f rotXf(CTransform4f::Identity());
  if (!x0_description->x5c_25_DMOO) {
    rotXf = xc_transform.GetRotation();
  }

  bool dmrtIsConst = false;
  if (CVectorElement* off = x0_description->x50_DMRT.get()) {
    if (off->IsFastConstant()) {
      dmrtIsConst = true;
    }
  }

  CTransform4f dmrtXf = CTransform4f::Identity();
  if (dmrtIsConst) {
    x0_description->x50_DMRT->GetValue(x58_frameIdx, x60_rotation);
    dmrtXf = CTransform4f::RotateZ(CRelAngle::FromDegrees(x60_rotation.GetZ()));
    dmrtXf.RotateLocalY(CRelAngle::FromDegrees(x60_rotation.GetY()));
    dmrtXf.RotateLocalX(CRelAngle::FromDegrees(x60_rotation.GetX()));
  }
  dmrtXf = rotXf * dmrtXf;

  if (CVectorElement* off = x0_description->x4c_DMOP.get()) {
    off->GetValue(x58_frameIdx, offset);
  }

  CTransform4f worldXf = CTransform4f::Translate(xc_transform.GetTranslation() + rotXf * offset);
  if (dmrtIsConst) {
    worldXf *= dmrtXf;
  } else if (CVectorElement* dmrt = x0_description->x50_DMRT.get()) {
    CVector3f rotation(0.f, 0.f, 0.f);
    dmrt->GetValue(x58_frameIdx, rotation);
    dmrtXf = CTransform4f::RotateZ(CRelAngle::FromDegrees(rotation.GetZ()));
    dmrtXf.RotateLocalY(CRelAngle::FromDegrees(rotation.GetY()));
    dmrtXf.RotateLocalX(CRelAngle::FromDegrees(rotation.GetX()));
    worldXf *= rotXf * dmrtXf;
  } else {
    worldXf *= dmrtXf;
  }

  if (CVectorElement* dmsc = x0_description->x54_DMSC.get()) {
    CVector3f scale(0.f, 0.f, 0.f);
    dmsc->GetValue(x58_frameIdx, scale);
    worldXf *= CTransform4f::Scale(scale.GetX(), scale.GetY(), scale.GetZ());
  }

  if (CColorElement* dmcl = x0_description->x58_DMCL.get()) {
    dmcl->GetValue(x58_frameIdx, color);
  }

  CGraphics::SetModelMatrix(worldXf);

  if (x0_description->x5c_24_DMAB) {
    const CModelFlags flags = CModelFlags::Additive(color).DepthCompareUpdate(true, false);
    (*x0_description->x38_DMDL)->Draw(flags);
  } else if (color.GetAlpha() == 1.f) {
    (*x0_description->x38_DMDL)->Draw(CModelFlags::Normal());
  } else {
    const CModelFlags flags = CModelFlags::AlphaBlended(color).DepthCompareUpdate(true, false);
    (*x0_description->x38_DMDL)->Draw(flags);
  }

  CGraphics::SetCullMode(kCM_Front);
  CTevCombiners::ResetStates();
}

void CDecal::Render() const {
  CGlobalRandom gr(sDecalRandom);
  if (IsDone()) {
    return;
  }

  CGraphics::DisableAllLights();
  CParticleGlobals::SetEmitterTime(x58_frameIdx);

  ProcessQuad(const_cast< CQuadDecal& >(x3c_quad1), x0_description->x0_quad1, 1);
  ProcessQuad(const_cast< CQuadDecal& >(x48_quad2), x0_description->x1c_quad2, 2);
  if (x0_description->x38_DMDL && (x5c_flags & 4) == 0) {
    CParticleGlobals::SetParticleLifetime(x54_modelLifetime);
    CParticleGlobals::UpdateParticleLifetimeTweenValues(x58_frameIdx);
    RenderMdl();
  }
}

void CDecal::Update(float dt) {
  if (x58_frameIdx >= x3c_quad1.GetLifetime()) {
    x5c_flags |= 1;
  }

  if (x58_frameIdx >= x48_quad2.GetLifetime()) {
    x5c_flags |= 2;
  }

  if (x58_frameIdx >= x54_modelLifetime) {
    x5c_flags |= 4;
  }

  ++x58_frameIdx;
}
