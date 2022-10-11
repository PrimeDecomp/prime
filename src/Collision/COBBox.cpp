#include "Collision/COBBox.hpp"

#include "Kyoto/Streams/CInputStream.hpp"

COBBox::COBBox(const CTransform4f& xf, const CVector3f& extents)
: mTransform(xf), mExtents(extents) {}

COBBox::COBBox(CInputStream& in) : mTransform(in), mExtents(in) {}

CAABox COBBox::CalculateAABox(const CTransform4f& xf) const { return CAABox(CVector3f::Zero(), CVector3f::Zero()); }

COBBox COBBox::FromAABox(const CAABox& box, const CTransform4f& xf) {
  CVector3f center = box.GetCenterPoint();
  CVector3f extents = box.GetMaxPoint() - center;
  CTransform4f final = xf * CTransform4f::Translate(center);
  return COBBox(final, extents);
}

bool COBBox::LineIntersectsBox(const CMRay& ray, float& penetration) const { return false; }

bool COBBox::AABoxIntersectsBox(const CAABox& box) const {
  return OBBIntersectsBox(FromAABox(box, CTransform4f::Identity()));
}

bool COBBox::OBBIntersectsBox(const COBBox& box) const { return false; }
