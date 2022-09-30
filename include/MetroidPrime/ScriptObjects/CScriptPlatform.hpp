#ifndef _CSCRIPTPLATFORM_HPP
#define _CSCRIPTPLATFORM_HPP

#include "types.h"

#include "MetroidPrime/CDamageVulnerability.hpp"
#include "MetroidPrime/CHealthInfo.hpp"
#include "MetroidPrime/CPhysicsActor.hpp"

#include "Kyoto/CRandom16.hpp"
#include "Kyoto/Math/CQuaternion.hpp"
#include "Kyoto/Math/CVector3f.hpp"

#include "rstl/auto_ptr.hpp"
#include "rstl/optional_object.hpp"
#include "rstl/vector.hpp"

class CCollidableOBBTreeGroup;
class CCollidableOBBTreeGroupContainer;
class CFluidPlane;

struct SRiders {
  TUniqueId x0_uid;
  f32 x4_decayTimer;
  CTransform4f x8_transform;

  SRiders(TUniqueId uid)
  : x0_uid(uid), x4_decayTimer(1.f / 6.f), x8_transform(CTransform4f::Identity()) {}
  bool operator==(const SRiders& other) const { return x0_uid == other.x0_uid; }
};

class CScriptPlatform : public CPhysicsActor {
public:
  CScriptPlatform(
      TUniqueId uid, const rstl::string& name, const CEntityInfo& info, const CTransform4f& xf,
      const CModelData& mData, const CActorParameters& actParams, const CAABox& aabb, f32 speed,
      bool detectCollision, f32 xrayAlpha, bool active, const CHealthInfo& hInfo,
      const CDamageVulnerability& dVuln,
      const rstl::optional_object< TLockedToken< CCollidableOBBTreeGroupContainer > >& dcln,
      bool rainSplashes, uint maxRainSplashes, uint rainGenRate);

  // CEntity
  ~CScriptPlatform() override;
  void Accept(IVisitor& visitor) override;
  void PreThink(f32 dt, CStateManager& mgr) override;
  void Think(f32 dt, CStateManager& mgr) override;
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) override;

  // CActor
  void PreRender(CStateManager&, const CFrustumPlanes&) override;
  void Render(const CStateManager&) const override;
  CHealthInfo* HealthInfo(CStateManager&) override;
  const CDamageVulnerability* GetDamageVulnerability() const override;
  rstl::optional_object< CAABox > GetTouchBounds() const override;
  CVector3f GetOrbitPosition(const CStateManager&) const override;
  CVector3f GetAimPosition(const CStateManager&, float) const override;
  CAABox GetSortingBounds(const CStateManager&) const override;

  // CPhysicsActor
  const CCollisionPrimitive* GetCollisionPrimitive() const override;
  CTransform4f GetPrimitiveTransform() const override;

  // CScriptPlatform
  virtual void SplashThink(const CAABox&, const CFluidPlane&, float, CStateManager&) const;
  virtual CQuaternion Move(float, CStateManager&);

  TUniqueId GetWaypoint(CStateManager& mgr);
  TUniqueId GetNext(TUniqueId uid, CStateManager& mgr);

  static void AddRider(rstl::vector< SRiders >& riders, TUniqueId riderId,
                       const CPhysicsActor* ridee, CStateManager& mgr);
  static TEntityList BuildNearListFromRiders(CStateManager& mgr,
                                             const rstl::vector< SRiders >& riders);
  static void DecayRiders(rstl::vector< SRiders >& riders, f32 dt, CStateManager& mgr);
  static void MoveRiders(CStateManager& mgr, f32 dt, bool active, rstl::vector< SRiders >& riders,
                         rstl::vector< SRiders >& collidedRiders, const CTransform4f& oldXf,
                         const CTransform4f& newXf, const CVector3f& dragDelta,
                         CQuaternion rotDelta);

private:
  TUniqueId x258_currentWaypoint;
  TUniqueId x25a_targetWaypoint;
  f32 x25c_currentSpeed;
  f32 x260_moveDelay;
  f32 x264_collisionRecoverDelay;
  f32 x268_fadeInTime;
  f32 x26c_fadeOutTime;
  CVector3f x270_dragDelta;
  CQuaternion x27c_rotDelta;
  CHealthInfo x28c_initialHealth;
  CHealthInfo x294_health;
  CDamageVulnerability x29c_damageVuln;
  rstl::optional_object< TLockedToken< CCollidableOBBTreeGroupContainer > > x304_treeGroupContainer;
  rstl::single_ptr< CCollidableOBBTreeGroup > x314_treeGroup;
  rstl::vector< SRiders > x318_riders;
  rstl::vector< SRiders > x328_slavesStatic;
  rstl::vector< SRiders > x338_slavesDynamic;
  f32 x348_xrayAlpha;
  uint x34c_maxRainSplashes;
  uint x350_rainGenRate;
  TUniqueId x354_boundsTrigger;
  bool x356_24_dead : 1;
  bool x356_25_controlledAnimation : 1;
  bool x356_26_detectCollision : 1;
  bool x356_27_squishedRider : 1;
  bool x356_28_rainSplashes : 1;
  bool x356_29_setXrayDrawFlags : 1;
  bool x356_30_disableXrayAlpha : 1;
  bool x356_31_xrayFog : 1;
};
CHECK_SIZEOF(CScriptPlatform, 0x358)

#endif
