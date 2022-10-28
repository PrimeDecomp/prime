#ifndef _CCOLLISIONACTORMANAGER
#define _CCOLLISIONACTORMANAGER

#include "MetroidPrime/Collision/CJointCollisionDescription.hpp"
#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Math/CTransform4f.hpp"

#include "rstl/optional_object.hpp"
#include "rstl/vector.hpp"

class CMaterialList;
class CAnimData;
class CStateManager;
class CCollisionActorManager {
public:
  enum EUpdateOptions {
    kUO_ObjectSpace,
    kUO_WorldSpace,
  };

  CCollisionActorManager(CStateManager& mgr, TUniqueId owner, TAreaId areaId,
                         const rstl::vector< CJointCollisionDescription >& descs, bool active);
  ~CCollisionActorManager();

  void Update(float dt, CStateManager& mgr, EUpdateOptions opts) const;
  void Destroy(CStateManager& mgr) const;
  void SetActive(CStateManager& mgr, bool active);
  uchar GetActive() const;
  void AddMaterial(CStateManager& mgr, const CMaterialList& list);
  void SetMovable(CStateManager& mgr, bool movable);

  uint GetNumCollisionActors() const { return x0_jointDescriptions.size(); }
  rstl::optional_object< CVector3f > GetDeviation(const CStateManager& mgr, CSegId seg);
  const CJointCollisionDescription& GetCollisionDescFromIndex(uint i) const {
    return x0_jointDescriptions[i];
  }

  static CTransform4f GetWRLocatorTransform(const CAnimData& animData, CSegId id,
                                            const CTransform4f& worldXf,
                                            const CTransform4f& localXf);

private:
  rstl::vector< CJointCollisionDescription > x0_jointDescriptions;
  TUniqueId x10_ownerId;
  uchar x12_active;
  mutable bool x13_destroyed;
  bool x14_movable;
};

#endif // _CCOLLISIONACTORMANAGER
