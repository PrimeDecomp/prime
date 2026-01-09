#include "MetroidPrime/Weapons/CTargetableProjectile.hpp"

#include "MetroidPrime/Player/CPlayer.hpp"

#include "Kyoto/Audio/CSfxManager.hpp"

CTargetableProjectile::CTargetableProjectile(
    const TToken< CWeaponDescription >& desc, EWeaponType type, const CTransform4f& xf,
    EMaterialTypes materials, const CDamageInfo& damage, const CDamageInfo& damage2, TUniqueId uid,
    TAreaId aid, TUniqueId owner, const TLockedToken< CWeaponDescription >& weapDesc,
    TUniqueId homingTarget, EProjectileAttrib attribs,
    const rstl::optional_object< TLockedToken< CGenDescription > >& visorParticle, ushort visorSfx,
    bool sendCollideMsg)
: CEnergyProjectile(true, desc, type, xf, materials, damage, uid, aid, owner, homingTarget,
                    attribs | CWeapon::kPA_BigProjectile | CWeapon::kPA_PartialCharge |
                        CWeapon::kPA_PlasmaProjectile,
                    false, CVector3f(1.f, 1.f, 1.f), visorParticle, visorSfx, sendCollideMsg)
, x3d8_weaponDesc(weapDesc)
, x3e0_damage(damage2) {
  MaterialList().Add(kMT_Target);
  MaterialList().Add(kMT_Orbit);
}

void CTargetableProjectile::Accept(IVisitor& visitor) { visitor.Visit(*this); }

bool CTargetableProjectile::Explode(const CVector3f& pos, const CVector3f& normal,
                                    EWeaponCollisionResponseTypes type, CStateManager& mgr,
                                    const CDamageVulnerability& dVuln, TUniqueId hitActor) {
  bool ret = CEnergyProjectile::Explode(pos, normal, type, mgr, dVuln, hitActor);

  if (!GetWeaponActive()) {
    TUniqueId projOwner = GetHitProjectileOwner();
    if (projOwner != kInvalidUniqueId && projOwner == mgr.GetPlayer()->GetUniqueId()) {

      if (const CActor* act = TCastToConstPtr< CActor >(mgr.GetObjectById(GetOwnerId()))) {
        TUniqueId uid = mgr.AllocateUniqueId();
        CVector3f aimPosition = act->GetAimPosition(mgr, 0.f);

        CEnergyProjectile* projectile = rs_new CEnergyProjectile(
            true, x3d8_weaponDesc, GetType(),
            CTransform4f::LookAt(x170_projectile.GetTranslation(), aimPosition, CVector3f::Up()),
            kMT_Player, x3e0_damage, uid, GetCurrentAreaId(), projOwner, GetOwnerId(),
            CWeapon::kPA_None, false, CVector3f(1.f, 1.f, 1.f), rstl::optional_object_null(),
            CSfxManager::kInternalInvalidSfxId, false);
        mgr.AddObject(*projectile);
        projectile->AddMaterial(kMT_Orbit, mgr);
        mgr.Player()->SetAimTargetId(uid);
        mgr.Player()->SetOrbitTargetId(uid, mgr);
        SetHitProjectileOwner(kInvalidUniqueId);
      }
    }
  }

  return ret;
}

CVector3f CTargetableProjectile::GetAimPosition(const CStateManager& mgr, float dt) const {
  static float tickRecip = 1.f / CProjectileWeapon::GetTickPeriod();
  CVector3f translation = GetTranslation();
  CVector3f velocity = tickRecip * GetProjectile().GetVelocity();
  CVector3f gravity = tickRecip * GetProjectile().GetGravity();

  return (dt * (dt * (gravity * 0.5f))) + (dt * velocity) + translation;

  // return (dt * (dt * ((tickRecip * projectile.GetGravity()) * 0.5f))) +
  //        (dt * (tickRecip * projectile.GetVelocity())) + translation;
}

void CTargetableProjectile::ResolveCollisionWithActor(const CRayCastResult& res, CActor& act,
                                                      CStateManager& mgr) {

  CVector3f aimPosition = GetAimPosition(mgr, 0.1f);
  CTransform4f xf = CTransform4f::LookAt(GetTranslation(), aimPosition);
  xf.SetTranslation(GetTranslation());
  SetTransform(xf);
  CEnergyProjectile::ResolveCollisionWithActor(res, act, mgr);
}

CEnergyProjectile::~CEnergyProjectile() {}

CTargetableProjectile::~CTargetableProjectile() {}
