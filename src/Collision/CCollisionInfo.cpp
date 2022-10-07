#include "Collision/CCollisionInfo.hpp"

#include "Kyoto/Math/CAABox.hpp"

#include "rstl/algorithm.hpp"

CCollisionInfo::CCollisionInfo(const CVector3f& point, const CMaterialList& rightMat,
                               const CMaterialList& leftMat, const CVector3f& normal)
: x0_point(point)
, xc_extentX(CVector3f::Zero())
, x18_extentY(CVector3f::Zero())
, x24_extentZ(CVector3f::Zero())
, x30_valid(true)
, x31_hasExtents(false)
, x38_materialLeft(leftMat)
, x40_materialRight(rightMat)
, x48_normalLeft(normal)
, x54_normalRight(-normal) {}

CCollisionInfo::CCollisionInfo(const CVector3f& point, const CMaterialList& rightMat,
                               const CMaterialList& leftMat, const CVector3f& leftNormal,
                               const CVector3f& rightNormal)
: x0_point(point)
, xc_extentX(CVector3f::Zero())
, x18_extentY(CVector3f::Zero())
, x24_extentZ(CVector3f::Zero())
, x30_valid(true)
, x31_hasExtents(false)
, x38_materialLeft(leftMat)
, x40_materialRight(rightMat)
, x48_normalLeft(leftNormal)
, x54_normalRight(rightNormal) {}

CCollisionInfo::CCollisionInfo(const CAABox& aabox, const CMaterialList& rightMat,
                               const CMaterialList& leftMat, const CVector3f& leftNormal,
                               const CVector3f& rightNormal)
: x0_point(aabox.GetMinPoint())
, xc_extentX(aabox.GetMaxPoint().GetX() - aabox.GetMinPoint().GetX(), 0.f, 0.f)
, x18_extentY(0.f, aabox.GetMaxPoint().GetY() - aabox.GetMinPoint().GetY(), 0.f)
, x24_extentZ(0.f, 0.f, aabox.GetMaxPoint().GetZ() - aabox.GetMinPoint().GetZ())
, x30_valid(true)
, x31_hasExtents(true)
, x38_materialLeft(leftMat)
, x40_materialRight(rightMat)
, x48_normalLeft(leftNormal)
, x54_normalRight(rightNormal) {}

CCollisionInfo CCollisionInfo::GetSwapped() const { return CCollisionInfo(*this, kSM_Swap); }

CCollisionInfo::CCollisionInfo(EInvalid invalid)
: x0_point(0.f, 0.f, 0.f)
, xc_extentX(0.f, 0.f, 0.f)
, x18_extentY(0.f, 0.f, 0.f)
, x24_extentZ(0.f, 0.f, 0.f)
, x30_valid(false)
, x31_hasExtents(false)
, x38_materialLeft(CMaterialList())
, x40_materialRight(CMaterialList())
, x48_normalLeft(0.f, 0.f, 0.f)
, x54_normalRight(0.f, 0.f, 0.f) {}

CVector3f CCollisionInfo::GetExtreme() const {
  return x0_point + xc_extentX + x18_extentY + x24_extentZ;
}

void CCollisionInfo::Swap() {
  x48_normalLeft = -x48_normalLeft;
  x54_normalRight = -x54_normalRight;
  rstl::swap(x38_materialLeft, x40_materialRight);
}
