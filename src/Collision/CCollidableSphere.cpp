#include "Collision/CCollisionInfoList.hpp"
#include "Collision/CRayCastResult.hpp"
#include "Kyoto/Math/CSphere.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/SObjectTag.hpp"
#include <Collision/CCollidableSphere.hpp>

#include <Collision/CCollidableAABox.hpp>
#include <Collision/CInternalCollisionStructure.hpp>
#include <Collision/NormalTable.hpp>

#include <Kyoto/Math/CAABox.hpp>

uint CCollidableSphere::sTableIndex = -1;

void CCollidableSphere::SetStaticTableIndex(uint idx) { sTableIndex = idx; }
CCollisionPrimitive::Type CCollidableSphere::GetType() {
  return Type(SetStaticTableIndex, "CCollidableSphere");
}

bool CCollidableSphere::Sphere_AABox_Bool(const CSphere& sphere, const CAABox& aabb) {
  float mag = 0.f;

  const CVector3f& center = sphere.GetCenter();
  const CVector3f& minPoint = aabb.GetMinPoint();
  const CVector3f& maxPoint = aabb.GetMaxPoint();

  for (int i = 0; i < 3; ++i) {
    if (center[i] < minPoint[i]) {
      float tmp = center[i] - minPoint[i];
      tmp *= tmp;
      mag += tmp;
    } else if (center[i] > maxPoint[i]) {
      float tmp = center[i] - maxPoint[i];
      tmp *= tmp;
      mag += tmp;
    }
  }

  return !(mag > sphere.GetRadius() * sphere.GetRadius());
}

namespace Collide {
bool Sphere_AABox_Bool(const CInternalCollisionStructure& collision) {
  const CAABox& primBox =
      static_cast< const CCollidableAABox& >(collision.GetRight().GetPrim()).GetBox();
  CVector3f boxOrigin = collision.GetRight().GetTransform().GetTranslation();

  CSphere sphere = static_cast< const CCollidableSphere& >(collision.GetLeft().GetPrim())
                       .Transform(collision.GetLeft().GetTransform());
  CAABox box(primBox.GetMinPoint() + boxOrigin, primBox.GetMaxPoint() + boxOrigin);
  return CCollidableSphere::Sphere_AABox_Bool(sphere, box);
}

bool Sphere_AABox(const CInternalCollisionStructure& collision, CCollisionInfoList& list) {
  return false;
}

bool Sphere_Sphere(const CInternalCollisionStructure& collision, CCollisionInfoList& list) {
  return false;
}

bool Sphere_Sphere_Bool(const CInternalCollisionStructure& collision) {
  const CCollidableSphere& p0 =
      static_cast< const CCollidableSphere& >(collision.GetLeft().GetPrim());
  const CCollidableSphere& p1 =
      static_cast< const CCollidableSphere& >(collision.GetRight().GetPrim());

  CSphere s0 = p0.Transform(collision.GetLeft().GetTransform());
  CSphere s1 = p1.Transform(collision.GetRight().GetTransform());
  CVector3f diff = s0.GetCenter() - s1.GetCenter();
  float mag = diff.MagSquared();
  float radius = s0.GetRadius() + s1.GetRadius();
  return mag <= (radius * radius);
}
} // namespace Collide

CRayCastResult
CCollidableSphere::CastRayInternal(const CInternalRayCastStructure& internalRayCast) const {
  return CRayCastResult();
}

CAABox CCollidableSphere::CalculateAABox(const CTransform4f& xf) const {
  const float radius = x10_sphere.GetRadius();
  CVector3f xfPos = xf * x10_sphere.GetCenter();
  const float x = xfPos.GetX();
  const float y = xfPos.GetY();
  const float z = xfPos.GetZ();
  return CAABox(CVector3f(x - radius, y - radius, z - radius),
                CVector3f(x + radius, y + radius, z + radius));
}

CAABox CCollidableSphere::CalculateLocalAABox() const {
  const float radius = x10_sphere.GetRadius();
  CVector3f xfPos = x10_sphere.GetCenter();
  const float x = xfPos.GetX();
  const float y = xfPos.GetY();
  const float z = xfPos.GetZ();
  return CAABox(CVector3f(x - radius, y - radius, z - radius),
                CVector3f(x + radius, y + radius, z + radius));
}

FourCC CCollidableSphere::GetPrimType() const { return 'SPHR'; }

CSphere CCollidableSphere::Transform(const CTransform4f& xf) const {
  const float radius = x10_sphere.GetRadius();
  const CVector3f xfPos = xf * x10_sphere.GetCenter();

  return CSphere(xfPos, radius);
}

bool CCollidableSphere::CollideMovingAABox(const CInternalCollisionStructure& collision,
                                           const CVector3f& dir, double& dOut,
                                           CCollisionInfo& infoOut) {
  return false;
}

bool CCollidableSphere::CollideMovingSphere(const CInternalCollisionStructure& collision,
                                            const CVector3f& dir, double& dOut,
                                            CCollisionInfo& infoOut) {
  return false;
}

uint CCollidableSphere::GetTableIndex() const { return sTableIndex; }
