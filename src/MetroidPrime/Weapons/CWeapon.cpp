#include "MetroidPrime/Weapons/CWeapon.hpp"

#include "MetroidPrime/CActorParameters.hpp"
#include "MetroidPrime/CFluidPlaneCPU.hpp"
#include "MetroidPrime/CFluidPlaneManager.hpp"
#include "MetroidPrime/ScriptObjects/CScriptWater.hpp"

#include <rstl/math.hpp>

CWeapon::CWeapon(TUniqueId uid, TAreaId areaId, bool active, TUniqueId owner, EWeaponType type,
                 const rstl::string& name, CTransform4f& xf, const CMaterialFilter& filter,
                 const CMaterialList& mList, const CDamageInfo& dInfo, EProjectileAttrib attribs,
                 const CModelData& mData)
: CActor(uid, active, name, CEntityInfo(areaId, CEntity::NullConnectionList), xf, mData, mList,
         CActorParameters::None().HotInThermal(true), kInvalidUniqueId)
, xe8_projectileAttribs(attribs)
, xec_ownerId(owner)
, xf0_weaponType(type)
, xf8_filter(filter)
, x110_origDamageInfo(dInfo)
, x12c_curDamageInfo(dInfo)
, x148_curTime(0.f)
, x14c_damageFalloffSpeed(0.f)
, x150_damageDuration(0.f)
, x154_interferenceDuration(0.f) {}

CWeapon::~CWeapon() {}

void CWeapon::SetDamageFalloffSpeed(float speed) {
  if (speed > 0.f) {
    x14c_damageFalloffSpeed = 1.f / speed;
  }
}

void CWeapon::Think(float dt, CStateManager& mgr) {
  x148_curTime += dt;
  if ((xe8_projectileAttribs & kPA_DamageFalloff) == kPA_DamageFalloff) {
    float max = 1.f - x148_curTime * x14c_damageFalloffSpeed;
    float scale = CMath::Max(0.f, max);
    float damage = scale * x110_origDamageInfo.GetDamage();
    float radius = scale * x110_origDamageInfo.GetRadius();
    float knockback = scale * x110_origDamageInfo.GetKnockBackPower();
    x12c_curDamageInfo =
        CDamageInfo(x110_origDamageInfo.GetWeaponMode(), damage, radius, knockback);
  } else {
    x12c_curDamageInfo = x110_origDamageInfo;
  }
  CEntity::Think(dt, mgr);
}

void CWeapon::FluidFXThink(EFluidState state, CScriptWater& water, CStateManager& mgr) {
  bool doRipple = true;
  float mag = 0.f;
  switch (xf0_weaponType) {
  case kWT_Power:
    mag = 0.1f;
    break;
  case kWT_Ice:
    mag = 0.3f;
    break;
  case kWT_Wave:
    mag = 0.1f;
    break;
  case kWT_Plasma:
    mag = 0.f;
    break;
  case kWT_Missile:
    mag = 0.5f;
    break;
  case kWT_Phazon:
    mag = 0.1f;
    break;
  default:
    doRipple = false;
    break;
  }

  if ((xe8_projectileAttribs & kPA_ComboShot) != 0 && state != kFS_InFluid) {
    mag += 0.5f;
  }

  if ((xe8_projectileAttribs & kPA_Charged) != 0) {
    mag += 0.25f;
  }

  if (mag > 1.f) {
    mag = 1.f;
  }

  if (doRipple) {
    CVector3f pos(GetTranslation().GetX(), GetTranslation().GetY(), water.GetSurfaceZ());
    if ((xe8_projectileAttribs & kPA_ComboShot) != 0) {
      if (!water.CanRippleAtPoint(pos)) {
        doRipple = false;
      }
    } else if (state == kFS_InFluid) {
      doRipple = false;
    }

    if (doRipple) {
      bool sfx = state == kFS_EnteredFluid || state == kFS_LeftFluid;
      water.FluidPlane().AddRipple(mag, GetUniqueId(), pos, water, mgr);
      mgr.FluidPlaneManager()->CreateSplash(GetUniqueId(), mgr, water, pos, mag, sfx);
    }
  }
}

void CWeapon::Render(const CStateManager& mgr) const {}

EWeaponCollisionResponseTypes CWeapon::GetCollisionResponseType(const CVector3f& pos,
                                                                const CVector3f& dir,
                                                                const CWeaponMode& wMode,
                                                                int) const {
  return kWCR_Projectile;
}
