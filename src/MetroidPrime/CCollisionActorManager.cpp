#include "MetroidPrime/CCollisionActorManager.hpp"

#include "MetroidPrime/CActor.hpp"
#include "MetroidPrime/CStateManager.hpp"

#include "MetroidPrime/TCastTo.hpp"

CJointCollisionDescription CJointCollisionDescription::SphereCollision(CSegId pivotId, float radius,
                                                                       const rstl::string& name,
                                                                       float mass) {

  return CJointCollisionDescription(kCT_Sphere, pivotId, CSegId(), CVector3f::Zero(),
                                    CVector3f::Zero(), radius, 0.f, kOT_Zero, name, mass);
}

CJointCollisionDescription CJointCollisionDescription::SphereSubdivideCollision(
    CSegId pivotId, CSegId nextId, float radius, float maxSeparation, EOrientationType orientType,
    const rstl::string& name, float mass) {
  return CJointCollisionDescription(kCT_SphereSubdivide, pivotId, nextId, CVector3f::Zero(),
                                    CVector3f::Zero(), radius, maxSeparation, orientType, name,
                                    mass);
}

CJointCollisionDescription CJointCollisionDescription::AABoxCollision(CSegId pivotId,
                                                                      const CVector3f& bounds,
                                                                      const rstl::string& name,
                                                                      float mass) {
  return CJointCollisionDescription(kCT_AABox, pivotId, CSegId(), bounds, CVector3f::Zero(), 0.f,
                                    0.f, kOT_Zero, name, mass);
}

CJointCollisionDescription CJointCollisionDescription::OBBAutoSizeCollision(
    CSegId pivotId, CSegId nextId, const CVector3f& bounds, EOrientationType orientType,
    const rstl::string& name, float mass) {
  return CJointCollisionDescription(kCT_OBBAutoSize, pivotId, nextId, bounds, CVector3f::Zero(),
                                    0.f, 0.f, orientType, name, mass);
}

CJointCollisionDescription CJointCollisionDescription::OBBCollision(CSegId pivotId,
                                                                    const CVector3f& bounds,
                                                                    const CVector3f& pivotPoint,
                                                                    const rstl::string& name,
                                                                    float mass) {

  return CJointCollisionDescription(kCT_OBB, pivotId, CSegId(), bounds, pivotPoint, 0.f, 0.f,
                                    kOT_Zero, name, mass);
}

void CJointCollisionDescription::ScaleAllBounds(const CVector3f& scale) {
  xc_bounds = CVector3f::ByElementMultiply(scale, xc_bounds);
  x24_radius *= scale.GetX();
  x28_maxSeparation *= scale.GetX();
  x18_pivotPoint = CVector3f::ByElementMultiply(scale, x18_pivotPoint);
}

CCollisionActorManager::CCollisionActorManager(
    CStateManager& mgr, TUniqueId owner, TAreaId areaId,
    const rstl::vector< CJointCollisionDescription >& descs, bool active)
: x10_ownerId(owner), x12_active(active), x13_destroyed(false), x14_movable(true) {
  x0_jointDescriptions.reserve(descs.size());
  for (int i = 0; i < i < descs.size(); ++i) {
    TUniqueId uid = mgr.AllocateUniqueId();
  }
}

CCollisionActorManager::~CCollisionActorManager() {}

void CCollisionActorManager::Update(float dt, CStateManager& mgr,
                                    EUpdateOptions updateOptions) const {}

void CCollisionActorManager::Destroy(CStateManager& mgr) const {
  for (int i = 0; i < x0_jointDescriptions.size(); ++i) {
    mgr.FreeScriptObject(x0_jointDescriptions[i].GetCollisionActorId());
  }

  x13_destroyed = true;
}

uchar CCollisionActorManager::GetActive() const { return x12_active; }

void CCollisionActorManager::SetActive(CStateManager& mgr, bool active) {
  x12_active = active;
  for (int i = 0; i < x0_jointDescriptions.size(); ++i) {
    CActor* act =
        static_cast< CActor* >(mgr.ObjectById(x0_jointDescriptions[i].GetCollisionActorId()));
    if (act != nullptr) {
      if (active != act->GetActive()) {
        act->SetActive(active);
        if (active != false) {
          Update(0.f, mgr, kUO_WorldSpace);
        }
      }
    }
  }
}

void CCollisionActorManager::AddMaterial(CStateManager& mgr, const CMaterialList& list) {
  for (int i = 0; i < x0_jointDescriptions.size(); ++i) {
    CActor* act = TCastToPtr< CActor >(mgr.ObjectById(x0_jointDescriptions[i].GetCollisionActorId()));
    if (act != nullptr) {
      act->AddMaterial(list);
    }
  }
}
