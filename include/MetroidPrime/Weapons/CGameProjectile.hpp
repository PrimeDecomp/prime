#ifndef _CGAMEPROJECTILE
#define _CGAMEPROJECTILE

#include "Collision/CRayCastResult.hpp"
#include "types.h"

#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/Weapons/CProjectileWeapon.hpp"
#include "MetroidPrime/Weapons/CWeapon.hpp"

#include "Kyoto/TToken.hpp"

#include "rstl/optional_object.hpp"
#include "rstl/vector.hpp"

class CGenDescription;
class CProjectileTouchResult {
public:
private:
  TUniqueId x0_id;
  rstl::optional_object< CRayCastResult > x4_result;
};

class CGameProjectile : public CWeapon {
public:
  CGameProjectile(const bool active, const TToken< CWeaponDescription >&, const rstl::string& name,
                  const EWeaponType wType, const CTransform4f& xf, const EMaterialTypes excludeMat,
                  const CDamageInfo& dInfo, const TUniqueId uid, const TAreaId aid,
                  const TUniqueId owner, const TUniqueId homingTarget, const uint attribs,
                  const bool underwater, const CVector3f& scale,
                  const rstl::optional_object< TLockedToken< CGenDescription > >& visorParticle,
                  const ushort visorSfx, bool sendCollideMsg);

  // CEntity
  ~CGameProjectile() override {}
  void Accept(IVisitor& visitor) override;
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) override;

  // CActor
  void Render(const CStateManager&) const override;
  rstl::optional_object< CAABox > GetTouchBounds() const override;
  void FluidFXThink(EFluidState, CScriptWater&, CStateManager&) override;

  // CGameProjectile
  virtual void ResolveCollisionWithActor(const CRayCastResult& res, CActor& act,
                                         CStateManager& mgr);

  CProjectileTouchResult CanCollideWithTrigger(CActor& act, CStateManager& mgr);
  const CProjectileWeapon& GetProjectile() const { return x170_projectile; }
  const CVector3f& GetPreviousPos() const { return x298_previousPos; }
  TUniqueId GetHomingTargetId() const { return x2c0_homingTargetId; }
  TUniqueId GetHitProjectileOwner() const { return x2c4_hitProjectileOwner; }
  void SetHitProjectileOwner(TUniqueId id) { x2c4_hitProjectileOwner = id; }

  bool GetWeaponActive() const { return x2e4_24_active; }
  void DeleteProjectileLight(CStateManager&);

  void ApplyDamageToActors(CStateManager& mgr, const CDamageInfo& dInfo);
  CRayCastResult RayCollisionCheckWithWorld(TUniqueId& idOut, const CVector3f& start,
                                            const CVector3f& end, float mag,
                                            const TEntityList& nearList, CStateManager& mgr);
  static EProjectileAttrib GetBeamAttribType(EWeaponType wType);

  CAABox GetProjectileBounds() const;

protected:
  rstl::optional_object< TLockedToken< CGenDescription > > x158_visorParticle;
  ushort x168_visorSfx;
  CProjectileWeapon x170_projectile;
  CVector3f x298_previousPos;
  float x2a4_projExtent;
  float x2a8_homingDt;
  double x2b0_targetHomingTime;
  double x2b8_curHomingTime;
  TUniqueId x2c0_homingTargetId;
  TUniqueId x2c2_lastResolvedObj;
  TUniqueId x2c4_hitProjectileOwner;
  TUniqueId x2c6_pendingDamagee;
  TUniqueId x2c8_projectileLight;
  CAssetId x2cc_wpscId;
  rstl::vector< CProjectileTouchResult > x2d0_touchResults;
  float x2e0_minHomingDist;
  bool x2e4_24_active : 1;
  bool x2e4_25_startedUnderwater : 1;
  bool x2e4_26_waterUpdate : 1;
  bool x2e4_27_inWater : 1;
  bool x2e4_28_sendProjectileCollideMsg : 1;
};
CHECK_SIZEOF(CGameProjectile, 0x2e8)

#endif // _CGAMEPROJECTILE
