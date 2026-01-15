#include "Collision/COBBox.hpp"

#include "Collision/CMRay.hpp"
#include "Collision/CollisionUtil.hpp"

#include <Kyoto/Streams/CInputStream.hpp>
#include <Kyoto/Math/CMatrix3f.hpp>

#include <math.h>
COBBox::COBBox(const CTransform4f& xf, const CVector3f& mExtents)
: mTransform(xf), mExtents(mExtents) {}

COBBox::COBBox(CInputStream& in) : mTransform(in), mExtents(in) {}

CAABox COBBox::CalculateAABox(const CTransform4f& xf) const {
  return CAABox(CVector3f::Zero(), CVector3f::Zero());
}

COBBox COBBox::FromAABox(const CAABox& box, const CTransform4f& xf) {
  CVector3f center = box.GetCenterPoint();
  CVector3f mExtents = box.GetMaxPoint() - center;
  CTransform4f finalTransform = xf * CTransform4f::Translate(center);
  return COBBox(finalTransform, mExtents);
}

bool COBBox::LineIntersectsBox(const CMRay& ray, float& penetration) const {
  CAABox box(-mExtents, mExtents);
  CMRay unscaledRay = ray.GetInvUnscaledTransformRay(mTransform);
  CVector3f direction = CVector3f::Zero();
  return CollisionUtil::RayAABoxIntersection(unscaledRay, box, direction, penetration) != 0;
}

bool COBBox::AABoxIntersectsBox(const CAABox& box) const {
  return OBBIntersectsBox(FromAABox(box, CTransform4f::Identity()));
}

bool COBBox::OBBIntersectsBox(const COBBox& other) const {
}
