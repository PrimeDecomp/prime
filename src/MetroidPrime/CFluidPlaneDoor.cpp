#include "MetroidPrime/CFluidPlaneDoor.hpp"
#include "Kyoto/Graphics/CTexture.hpp"
#include "MetaRender/CCubeRenderer.hpp"
#include "dolphin/gx/GXEnum.h"
#include "dolphin/gx/GXTransform.h"
#include "dolphin/types.h"

#include <Kyoto/Graphics/CGX.hpp>

CFluidPlaneDoor::CFluidPlaneDoor(const CAssetId texPattern1, const CAssetId texPattern2,
                                 const CAssetId texColor, const float tileSize,
                                 const uint tileSubdivisions, const EFluidType fluidType,
                                 const float alpha, const CFluidUVMotion& uvMotion)
: CFluidPlane(texPattern1, texPattern2, texColor, alpha, fluidType, 0.5f, uvMotion)
, xa0_tileSize(tileSize)
, xa4_tileSubdivisions(tileSubdivisions & ~1)
, xa8_rippleResolution(tileSize / xa4_tileSubdivisions) {}

CFluidPlaneDoor::~CFluidPlaneDoor() {}

void CFluidPlaneDoor::RenderSetup(const CStateManager& mgr, float alpha, const CTransform4f& xf,
                                  const CAABox& bounds) const {
  static GXColor white = {255, 255, 255, 255};
  float uvT = mgr.GetFluidPlaneManager()->GetUVTime();
  gpRender->SetModelMatrix(xf);
  CGX::SetChanMatColor(CGX::Channel0, white);
  CGX::SetChanCtrl(CGX::Channel0, false, GX_SRC_REG, GX_SRC_REG, GX_LIGHT_NULL, GX_DF_NONE,
                   GX_AF_NONE);
  CGX::SetNumChans(0);

  if (HasTexturePattern1()) {
    GetTexturePattern1()->Load(GX_TEXMAP0, CTexture::kCM_Repeat);
  }

  if (HasTexturePattern2()) {
    GetTexturePattern2()->Load(GX_TEXMAP1, CTexture::kCM_Repeat);
  }

  if (HasColorTexture()) {
    GetColorTexture()->Load(GX_TEXMAP2, CTexture::kCM_Repeat);
  }

  float uvs[3][2];
  GetUVMotion().CalculateFluidTextureOffset(uvT, uvs);
  static const float skZeroMatrix[2][4] = {0.f};

  float scale0[2][4];
  float scale1[2][4];
  float scale2[2][4];

  scale1[0][0] = GetUVMotion().GetFluidLayers()[0].x14_uvScale;
  scale2[0][0] = GetUVMotion().GetFluidLayers()[1].x14_uvScale;
  scale0[0][0] = GetUVMotion().GetFluidLayers()[0].x14_uvScale;
  scale1[0][3] = uvs[1][0];
  scale1[1][3] = uvs[1][1];
  scale2[0][3] = uvs[2][0];
  scale2[1][3] = uvs[2][1];
  scale0[0][3] = uvs[0][0];
  scale0[1][3] = uvs[0][1];

  GXLoadTexMtxImm(scale1, GX_TEXMTX5, GX_MTX2x4);
  GXLoadTexMtxImm(scale2, GX_TEXMTX6, GX_MTX2x4);
  GXLoadTexMtxImm(scale0, GX_TEXMTX7, GX_MTX2x4);

  CGX::SetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_POS, GX_TEXMTX5, false, GX_PTIDENTITY);
}

void CFluidPlaneDoor::Render(const CStateManager& mgr, const CAABox&, const CFrustumPlanes&,
                             const CRippleManager&, const CVector3f&) {}

void CFluidPlaneDoor::RenderCleanup() const {}
