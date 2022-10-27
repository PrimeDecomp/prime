#include "MetroidPrime/Weapons/CWeapon.hpp"

#include "MetroidPrime/CActorParameters.hpp"
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
    float damMul = CMath::Max(0.f, 1.f - x148_curTime * x14c_damageFalloffSpeed);
    x12c_curDamageInfo = CDamageInfo(
        x110_origDamageInfo.GetWeaponMode(), damMul * x110_origDamageInfo.GetDamage(),
        damMul * x110_origDamageInfo.GetRadius(), damMul * x110_origDamageInfo.GetKnockBackPower());
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
#if 0
  if (doRipple) {
    CVector3f pos = GetTranslation();
    pos.SetZ(float(water.GetTriggerBoundsWR().GetMax().GetZ()));
    if (True(xe8_projectileAttribs & EProjectileAttrib::ComboShot)) {
      if (!water.CanRippleAtPoint(pos))
        doRipple = false;
    } else if (state == EFluidState::InFluid) {
      doRipple = false;
    }

    if (doRipple) {
      water.GetFluidPlane().AddRipple(mag, x8_uid, pos, water, mgr);
      mgr.GetFluidPlaneManager()->CreateSplash(x8_uid, mgr, water, pos, mag,
                                               state == EFluidState::EnteredFluid ||
                                                   state == EFluidState::LeftFluid);
    }
  }
#endif
}

void CWeapon::Render(const CStateManager& mgr) const {}

EWeaponCollisionResponseTypes CWeapon::GetCollisionResponseType(const CVector3f& pos,
                                                                const CVector3f& dir,
                                                                const CWeaponMode& wMode,
                                                                int) const {
  return kWCR_Projectile;
}
