#include "MetroidPrime/CGameCollision.hpp"
#include "Collision/CMaterialList.hpp"

#include <Collision/CCollisionPrimitive.hpp>
#include <WorldFormat/CCollidableOBBTreeGroup.hpp>

void CGameCollision::InitCollision() {
  /* Types */
  CCollisionPrimitive::InitBeginTypes();
  CCollisionPrimitive::InitAddType(CCollidableOBBTreeGroup::GetType());
  CCollisionPrimitive::InitEndTypes();

  /* Colliders */
  CCollisionPrimitive::InitBeginColliders();
  CCollisionPrimitive::InitAddCollider(CCollidableOBBTreeGroup::SphereCollide, "CCollidableSphere",
                                       "CCollidableOBBTreeGroup");
  CCollisionPrimitive::InitAddCollider(CCollidableOBBTreeGroup::AABoxCollide, "CCollidableAABox",
                                       "CCollidableOBBTreeGroup");
  CCollisionPrimitive::InitAddBooleanCollider(CCollidableOBBTreeGroup::SphereCollideBoolean,
                                              "CCollidableSphere", "CCollidableOBBTreeGroup");
  CCollisionPrimitive::InitAddBooleanCollider(CCollidableOBBTreeGroup::AABoxCollideBoolean,
                                              "CCollidableAABox", "CCollidableOBBTreeGroup");
  CCollisionPrimitive::InitAddMovingCollider(CCollidableOBBTreeGroup::CollideMovingAABox,
                                             "CCollidableAABox", "CCollidableOBBTreeGroup");
  CCollisionPrimitive::InitAddMovingCollider(CCollidableOBBTreeGroup::CollideMovingSphere,
                                             "CCollidableSphere", "CCollidableOBBTreeGroup");
  CCollisionPrimitive::InitAddCollider(CGameCollision::NullCollisionCollider,
                                       "CCollidableOBBTreeGroup", "CCollidableOBBTreeGroup");
  CCollisionPrimitive::InitAddBooleanCollider(CGameCollision::NullBooleanCollider,
                                              "CCollidableOBBTreeGroup", "CCollidableOBBTreeGroup");
  CCollisionPrimitive::InitAddMovingCollider(CGameCollision::NullMovingCollider,
                                             "CCollidableOBBTreeGroup", "CCollidableOBBTreeGroup");
  CCollisionPrimitive::InitEndColliders();
}

bool CGameCollision::NullCollisionCollider(const CInternalCollisionStructure&,
                                           CCollisionInfoList&) {
  return false;
}
bool CGameCollision::NullBooleanCollider(const CInternalCollisionStructure&) { return false; }

bool CGameCollision::NullMovingCollider(const CInternalCollisionStructure&, const CVector3f&,
                                        double&, CCollisionInfo&) {
  return false;
}

bool CGameCollision::IsFloor(const CMaterialList& material, const CVector3f& normal) {
  if (material.HasMaterial(kMT_Floor)) {
    return true;
  }
  return normal.GetZ() > 0.85f;
}

void CGameCollision::ShowCollisionResults(CCollisionInfoList& info, const CColor& color) {}

float CGameCollision::GetCoefficientOfRestitution(const CCollisionInfo& info) { return 0.f; }
static float CollisionImpulseFiniteVsFinite(float mass0, float mass1, float velNormDot,
                                            float restitution) {
  return (-(1.f + restitution) * velNormDot) / ((1.f / mass0) + (1.f / mass1));
}
static float CollisionImpulseFiniteVsInfinite(const float mass, const float velNormDot,
                                              const float restitution) {
  return mass * (-(1.f + restitution) * velNormDot);
}

bool CGameCollision::CanBlock(const CMaterialList& material, const CVector3f& normal) {
  if (material.HasMaterial(kMT_Character) && !material.HasMaterial(kMT_SolidCharacter)) {
    return false;
  }
  if (material.HasMaterial(kMT_NoPlayerCollision)) {
    return false;
  }

  if (material.HasMaterial(kMT_Floor)) {
    return true;
  }

  return normal.GetZ() > 0.85f;
}
