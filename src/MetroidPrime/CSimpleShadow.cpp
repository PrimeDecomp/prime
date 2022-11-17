#include "MetroidPrime/CSimpleShadow.hpp"

#include "MetroidPrime/CGameCollision.hpp"
#include "MetroidPrime/CStateManager.hpp"

#include "Collision/CMaterialFilter.hpp"
#include "Collision/CRayCastResult.hpp"

#include "MetaRender/CCubeRenderer.hpp"
#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Graphics/CTexture.hpp"
#include "Kyoto/Math/CAABox.hpp"

CSimpleShadow::CSimpleShadow(float scale, float userAlpha, float maxObjHeight, float displacement)
: x0_xf(CTransform4f::Identity())
, x30_scale(scale)
, x34_radius(1.f)
, x38_userAlpha(userAlpha)
, x3c_heightAlpha(1.f)
, x40_maxObjHeight(maxObjHeight)
, x44_displacement(displacement)
, x48_24_collision(false)
, x48_25_alwaysCalculateRadius(true)
, x48_26_radiusCalculated(false) {}

void CSimpleShadow::Calculate(const CAABox& aabb, const CTransform4f& xf,
                              const CStateManager& mgr) {
  x48_24_collision = false;
  float halfHeight = (aabb.GetMaxPoint().GetZ() - aabb.GetMinPoint().GetZ()) * 0.5f;
  float xExtent = aabb.GetMaxPoint().GetX() - aabb.GetMinPoint().GetX();
  float yExtent = aabb.GetMaxPoint().GetY() - aabb.GetMinPoint().GetY();

  CVector3f pos = xf.GetTranslation() + CVector3f(0.f, 0.f, halfHeight);
  CVector3f dir(0.0f, 0.0f, -1.0f);
  CRayCastResult res =
      mgr.RayStaticIntersection(pos, dir, x40_maxObjHeight,
                                CMaterialFilter::MakeExclude(CMaterialList(kMT_SeeThrough)));
  float height = x40_maxObjHeight;
  if (res.IsValid()) {
    x48_24_collision = true;
    height = res.GetTime();
  }
  CVector3f resPoint = res.GetPoint();
  CUnitVector3f resPlaneNormal = res.GetPlane().GetNormal();

  if (height > 0.1f + halfHeight) {
    TEntityList nearList;
    mgr.BuildNearList(nearList, pos, dir, x40_maxObjHeight, CMaterialFilter::MakeInclude(CMaterialList(kMT_Floor)), nullptr);
    
    TUniqueId cid = kInvalidUniqueId;
    CRayCastResult resD =
        CGameCollision::RayDynamicIntersection(mgr, cid, pos, dir, x40_maxObjHeight,
                                               CMaterialFilter::GetPassEverything(), nearList);
    if (resD.IsValid() && resD.GetTime() < height) {
      resPoint = resD.GetPoint();
      resPlaneNormal = resD.GetPlane().GetNormal();
      x48_24_collision = true;
      height = resD.GetTime();
    }
  }

  if (x48_24_collision) {
    x3c_heightAlpha = 1.f - height / x40_maxObjHeight;
    CVector3f normalVector = resPlaneNormal;
    x0_xf = CTransform4f::LookAt(normalVector, CVector3f::Zero());
    x0_xf.SetTranslation(resPoint + x44_displacement * normalVector);
    if (x48_25_alwaysCalculateRadius || !x48_26_radiusCalculated) {
      x34_radius = sqrtf(xExtent * xExtent + yExtent * yExtent) * 0.5f;
      x48_26_radiusCalculated = true;
    }
  }
}

void CSimpleShadow::Render(const CTexture* tex) const {
  if (!x48_24_collision)
    return;

  CGraphics::DisableAllLights();
  gpRender->SetModelMatrix(x0_xf);
  tex->Load(GX_TEXMAP0, CTexture::kCM_Repeat);
  CGraphics::SetTevOp(kTS_Stage0, CGraphics::kEnvModulate);
  CGraphics::SetTevOp(kTS_Stage1, CGraphics::kEnvPassthru);
  CGraphics::SetAlphaCompare(kAF_Always, 0, kAO_And, kAF_Always, 0);
  CGraphics::SetDepthWriteMode(true, kE_LEqual, false);
  CGraphics::SetBlendMode(kBM_Blend, kBF_SrcAlpha, kBF_InvSrcAlpha, kLO_Clear);
  float radius = x34_radius * x30_scale;
  CGraphics::StreamBegin(kP_Quads);
  CGraphics::StreamColor(CCast::ToUint8((x3c_heightAlpha * x38_userAlpha) * 255.f) - 0x100);
  CGraphics::StreamTexcoord(0.f, 0.f);
  CGraphics::StreamVertex(CVector3f(-radius, 0.f, -radius));
  CGraphics::StreamTexcoord(0.f, 1.f);
  CGraphics::StreamVertex(CVector3f(radius, 0.f, -radius));
  CGraphics::StreamTexcoord(1.f, 1.f);
  CGraphics::StreamVertex(CVector3f(radius, 0.f, radius));
  CGraphics::StreamTexcoord(1.f, 0.f);
  CGraphics::StreamVertex(CVector3f(-radius, 0.f, radius));
  CGraphics::StreamEnd();
}

const CTransform4f& CSimpleShadow::GetTransform() const { return x0_xf; }

void CSimpleShadow::SetUserAlpha(float alpha) { x38_userAlpha = alpha; }

float CSimpleShadow::GetMaxObjectHeight() const { return x40_maxObjHeight; }

void CSimpleShadow::SetAlwaysCalculateRadius(bool b) { x48_25_alwaysCalculateRadius = b; }

CAABox CSimpleShadow::GetBounds() const {
  const CVector3f& translation = x0_xf.GetTranslation();
  float extent = x34_radius * x30_scale;
  return CAABox(translation - CVector3f(extent, extent, extent),
                translation + CVector3f(extent, extent, extent));
}

CAABox CSimpleShadow::GetMaxShadowBox(const CAABox& aabb) const {
  float extent = x34_radius * x30_scale;
  CVector3f center = aabb.GetCenterPoint();
  CAABox expandedAABB = aabb;
  expandedAABB.AccumulateBounds(center + CVector3f(extent, extent, -GetMaxObjectHeight()));
  expandedAABB.AccumulateBounds(center + CVector3f(-extent, -extent, -GetMaxObjectHeight()));
  return expandedAABB;
}

bool CSimpleShadow::Valid() const { return x48_24_collision; }
