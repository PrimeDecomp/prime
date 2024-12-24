#include "MetroidPrime/Weapons/CGameProjectile.hpp"
#include "Collision/CMaterialList.hpp"
#include "Kyoto/Math/CAABox.hpp"
#include "MetroidPrime/TCastTo.hpp"
#include "MetroidPrime/TGameTypes.hpp"
#include "MetroidPrime/Weapons/CProjectileWeapon.hpp"
#include "MetroidPrime/Weapons/CWeapon.hpp"
#include "rstl/math.hpp"
#include "rstl/optional_object.hpp"

#include <Collision/CMaterialFilter.hpp>

CTransform4f clear_transform(const CTransform4f& xf);

CGameProjectile::CGameProjectile(
    const bool active, const TToken< CWeaponDescription >& wDesc, const rstl::string& name,
    const EWeaponType wType, const CTransform4f& xf, const EMaterialTypes excludeMat,
    const CDamageInfo& dInfo, const TUniqueId uid, const TAreaId aid, const TUniqueId owner,
    const TUniqueId homingTarget, const uint attribs, const bool underwater, const CVector3f& scale,
    const rstl::optional_object< TLockedToken< CGenDescription > >& visorParticle,
    const ushort visorSfx, const bool sendCollideMsg)
: CWeapon(uid, aid, active, owner, wType, name, xf,
          CMaterialFilter::MakeIncludeExclude(
              CMaterialList(kMT_Solid, kMT_NonSolidDamageable),
              CMaterialList(kMT_Projectile, kMT_ProjectilePassthrough, excludeMat)),
          CMaterialList(kMT_Projectile), dInfo, attribs | GetBeamAttribType(wType),
          CModelData::CModelDataNull())
, x158_visorParticle(visorParticle)
, x168_visorSfx(visorSfx)
, x170_projectile(wDesc, xf.GetTranslation(), clear_transform(xf), scale, (attribs >> 16) & 1)
, x298_previousPos(xf.GetTranslation())
, x2a4_projExtent((xe8_projectileAttribs & kPA_BigProjectile) == kPA_BigProjectile ? 0.25f : 0.1f)
, x2a8_homingDt(0.3f)
, x2b0_targetHomingTime(0.0)
, x2b8_curHomingTime(x2a8_homingDt)
, x2c0_homingTargetId(homingTarget)
, x2c2_lastResolvedObj(kInvalidUniqueId)
, x2c4_hitProjectileOwner(kInvalidUniqueId)
, x2c6_pendingDamagee(kInvalidUniqueId)
, x2c8_projectileLight(kInvalidUniqueId)
, x2cc_wpscId(wDesc.GetTag().GetId())
, x2e0_minHomingDist(0.f)
, x2e4_24_active(true)
, x2e4_25_startedUnderwater(underwater)
, x2e4_26_waterUpdate(underwater)
, x2e4_27_inWater(underwater)
, x2e4_28_sendProjectileCollideMsg(sendCollideMsg) {}

void CGameProjectile::Render(const CStateManager& mgr) const {
  x170_projectile.Render();
  CWeapon::Render(mgr);
}

CAABox CGameProjectile::GetProjectileBounds() const {
  return CAABox(rstl::min_val(GetTranslation().GetX(), x298_previousPos.GetX()) - x2a4_projExtent,
                rstl::min_val(GetTranslation().GetY(), x298_previousPos.GetY()) - x2a4_projExtent,
                rstl::min_val(GetTranslation().GetZ(), x298_previousPos.GetZ()) - x2a4_projExtent,
                rstl::max_val(GetTranslation().GetX(), x298_previousPos.GetX()) + x2a4_projExtent,
                rstl::max_val(GetTranslation().GetY(), x298_previousPos.GetY()) + x2a4_projExtent,
                rstl::max_val(GetTranslation().GetZ(), x298_previousPos.GetZ()) + x2a4_projExtent);
}

rstl::optional_object< CAABox > CGameProjectile::GetTouchBounds() const {
  if (!x2e4_24_active) {
    return rstl::optional_object_null();
  }

  return GetProjectileBounds();
}

CProjectileTouchResult CGameProjectile::CanCollideWithTrigger(CActor& act, CStateManager& mgr) {
}
void CGameProjectile::Accept(IVisitor& visitor) { visitor.Visit(*this); }
