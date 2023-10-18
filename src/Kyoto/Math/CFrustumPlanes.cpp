#include "Kyoto/Math/CPlane.hpp"
#include <Kyoto/Math/CFrustumPlanes.hpp>

#include <Kyoto/Math/CAABox.hpp>
#include <Kyoto/Math/CSphere.hpp>
#include <Kyoto/Math/CTransform4f.hpp>
#include <math.h>

#pragma dont_inline on
static CUnitVector3f fn_803456B0(const CVector3f& a, const CVector3f& b, const CVector3f& c) {
  return CVector3f::Cross(b - a, c - a);
}
#pragma dont_inline reset

CFrustumPlanes::CFrustumPlanes(const CTransform4f& xf, float a, float b, float c, bool b1,
                               float d) {

  float dVar6 = cos(a * 0.5f);
  float dVar7 = sin(a * 0.5f);
  float fVar1 = (c / dVar6) * dVar7;
  dVar6 = cos(a * 0.5f * b);
  dVar7 = sin(a * 0.5f * b);

  CVector3f local_b8;
  CVector3f local_c4;
  CVector3f local_a0;
  CVector3f local_ac;

  local_b8.SetY(c);
  local_b8.SetX((c / dVar6) * dVar7);
  local_b8.SetZ(-fVar1);
  local_c4.SetX((c / dVar6) * dVar7);
  local_ac.SetX(-(c / dVar6) * dVar7);
  local_c4.SetY(c);
  local_c4.SetZ(fVar1);
  local_ac.SetY(c);
  local_ac.SetZ(-fVar1);
  local_a0.SetX(-(c / dVar6) * dVar7);
  local_a0.SetY(c);
  local_a0.SetZ(fVar1);

  CVector3f local_f4 = xf.Rotate(local_c4);
  CVector3f local_e8 = xf.Rotate(local_b8);
  CVector3f local_dc = xf.Rotate(local_ac);
  CVector3f local_d0 = xf.Rotate(local_a0);

  CVector3f pos = xf.GetTranslation();

  CVector3f local_138 = xf * CVector3f(0.f, c, 0.f);
  x0_planes.push_back(CPlane(local_138, fn_803456B0(local_f4, local_dc, local_e8)));
  x0_planes.push_back(CPlane(pos, fn_803456B0(CVector3f::Zero(), local_e8, local_f4)));
  x0_planes.push_back(CPlane(pos, fn_803456B0(CVector3f::Zero(), local_d0, local_dc)));
  x0_planes.push_back(CPlane(pos, fn_803456B0(CVector3f::Zero(), local_f4, local_d0)));
  x0_planes.push_back(CPlane( pos, fn_803456B0(CVector3f::Zero(), local_dc, local_e8)));
  x0_planes.push_back(CPlane(x0_planes[0].GetConstant(), -x0_planes[0].GetNormal()));
}

bool CFrustumPlanes::BoxInFrustumPlanes(const CAABox& box) const {
  for (int i = 0; i < x0_planes.size(); ++i) {
    if (!box.InsidePlane(x0_planes[i])) {
      return false;
    }
  }
  return true;
}

bool CFrustumPlanes::BoxInFrustumPlanes(const rstl::optional_object< CAABox >& box) const {
  if (x0_planes.empty()) {
    return true;
  }

  if (!box.valid()) {
    return false;
  }

  return BoxInFrustumPlanes(*box);
}

int CFrustumPlanes::BoxFrustumPlanesCheck(const CAABox& box) const {
  int ret = 1;

  for (int i = 0; i < x0_planes.size(); ++i) {
    CVector3f closestPoint = box.ClosestPointAlongVector(x0_planes[i].GetNormal());

    if (x0_planes[i].IsFacing(closestPoint)) {
      return 0;
    }

    if (ret == 1) {
      CVector3f furthestPoint = box.FurthestPointAlongVector(x0_planes[i].GetNormal());
      if (x0_planes[i].IsFacing(furthestPoint)) {
        ret = 2;
      }
    }
  }
  return ret;
}

bool CFrustumPlanes::SphereInFrustumPlanes(const CSphere& sphere) const {
  float radius = sphere.GetRadius();
  CVector3f pos = sphere.GetCenter();
  for (int i = 0; i < x0_planes.size(); ++i) {
    if (x0_planes[i].GetHeight(pos) - radius > 0.f) {
      return false;
    }
  }
  return true;
}

bool CFrustumPlanes::PointInFrustumPlanes(const CVector3f& point) const {
  for (int i = 0; i < x0_planes.size(); ++i) {
    if (x0_planes[i].IsFacing(point)) {
      return false;
    }
  }
  return true;
}
