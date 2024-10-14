#include "Collision/CCollidableAABox.hpp"

#include "Collision/CCollisionInfoList.hpp"
#include "Collision/CInternalCollisionStructure.hpp"
#include "Collision/CInternalRayCastStructure.hpp"
#include "Collision/CMaterialFilter.hpp"
#include "Collision/CRayCastResult.hpp"
#include "Collision/CollisionUtil.hpp"
#include "Collision/NormalTable.hpp"

uint CCollidableAABox::sTableIndex = -1;

CCollisionPrimitive::Type CCollidableAABox::GetType() {
  return Type(SetStaticTableIndex, "CCollidableAABox");
}

namespace Collide {
bool AABox_AABox_Bool(const CInternalCollisionStructure& collision) {
  const CCollidableAABox& box0 =
      static_cast< const CCollidableAABox& >(collision.GetLeft().GetPrim());
  const CCollidableAABox& box1 =
      static_cast< const CCollidableAABox& >(collision.GetRight().GetPrim());
  const CAABox aabb0 = box0.Transform(collision.GetLeft().GetTransform());
  const CAABox aabb1 = box1.Transform(collision.GetRight().GetTransform());

  return CollisionUtil::AABoxAABoxIntersection(aabb0, aabb1);
}
bool AABox_AABox(const CInternalCollisionStructure& collision, CCollisionInfoList& list) {
  const CCollidableAABox& box0 =
      static_cast< const CCollidableAABox& >(collision.GetLeft().GetPrim());
  const CCollidableAABox& box1 =
      static_cast< const CCollidableAABox& >(collision.GetRight().GetPrim());

  CAABox aabb0 = box0.Transform(collision.GetLeft().GetTransform());
  CAABox aabb1 = box1.Transform(collision.GetRight().GetTransform());

  return CollisionUtil::AABoxAABoxIntersection(aabb0, box0.GetMaterial(), aabb1, box1.GetMaterial(),
                                               list);
}
} // namespace Collide

bool CCollidableAABox::CollideMovingAABox(const CInternalCollisionStructure& collision,
                                          const CVector3f& dir, double& dOut,
                                          CCollisionInfo& infoOut) {}

bool CCollidableAABox::CollideMovingSphere(const CInternalCollisionStructure& collision,
                                           const CVector3f& dir, double& dOut,
                                           CCollisionInfo& infoOut) {}

CRayCastResult CCollidableAABox::CastRayInternal(const CInternalRayCastStructure& rayCast) const {
  if (!rayCast.GetFilter().Passes(GetMaterial())) {
    return CRayCastResult::MakeInvalid();
  }

  CTransform4f rayCastXf = rayCast.GetTransform();
  CTransform4f rayCastXfInv = rayCastXfInv.GetQuickInverse();
  CVector3f localRayStart = rayCastXfInv * rayCast.GetStart();
  CVector3f localRayDir = rayCastXfInv.Rotate(rayCast.GetRay().GetDirection());

  float tMin;
  float tMax;
  int axis;
  bool sign;
  if (!CollisionUtil::BoxLineTest(x10_aabb, localRayStart, localRayDir, tMin, tMax, axis, sign) ||
      tMin < 0.f || (rayCast.GetMaxTime() > 0.f && tMin > rayCast.GetMaxTime())) {
    return CRayCastResult::MakeInvalid();
  }

  CVector3f planeNormal = CVector3f::Zero();
  planeNormal[axis] = sign ? 1.f : -1.f;
  float planeD = axis ? x10_aabb.GetMinPoint()[axis] : x10_aabb.GetMaxPoint()[axis];
  CRayCastResult result(tMin, localRayStart + tMin * localRayDir, CPlane(planeD, planeNormal),
                        GetMaterial());

  result.Transform(rayCast.GetTransform());
  return result;
}

CAABox CCollidableAABox::CalculateLocalAABox() const { return x10_aabb; }

CAABox CCollidableAABox::CalculateAABox(const CTransform4f& xf) const { return Transform(xf); }

CAABox CCollidableAABox::Transform(const CTransform4f& xf) const {
  const CVector3f xfPos = xf.GetTranslation();
  return CAABox(x10_aabb.GetMinPoint() + xfPos, x10_aabb.GetMaxPoint() + xfPos);
}

FourCC CCollidableAABox::GetPrimType() const { return 'AABX'; }
uint CCollidableAABox::GetTableIndex() const { return sTableIndex; }
