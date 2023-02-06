#ifndef _CTARGETABLEPROJECTILE
#define _CTARGETABLEPROJECTILE

#include "MetroidPrime/Weapons/CEnergyProjectile.hpp"

class CTargetableProjectile : public CEnergyProjectile {
public:
  CTargetableProjectile(
      const TToken< CWeaponDescription >& desc, EWeaponType type, const CTransform4f& xf,
      EMaterialTypes materials, const CDamageInfo& damage, const CDamageInfo& damage2,
      TUniqueId uid, TAreaId aid, TUniqueId owner,
      const TLockedToken< CWeaponDescription >& weapDesc, TUniqueId homingTarget,
      EProjectileAttrib attribs,
      const rstl::optional_object< TLockedToken< CGenDescription > >& visorParticle,
      ushort visorSfx, bool sendCollideMsg);

  // CEntity
  ~CTargetableProjectile() override;
  void Accept(IVisitor&) override;

  // CACtor
  CVector3f GetAimPosition(const CStateManager&, float) const override;

  // CGameProjectile
  void ResolveCollisionWithActor(const CRayCastResult& res, CActor& act,
                                 CStateManager& mgr) override;

  // CEnergyProjectile
  bool Explode(const CVector3f& pos, const CVector3f& normal, EWeaponCollisionResponseTypes type,
               CStateManager& mgr, const CDamageVulnerability& dVuln, TUniqueId hitActor) override;

private:
  TToken< CWeaponDescription > x3d8_weaponDesc;
  CDamageInfo x3e0_damage;
};

#endif // _CTARGETABLEPROJECTILE
