#ifndef _CWEAPON_HPP
#define _CWEAPON_HPP

#include "types.h"

#include "MetroidPrime/CActor.hpp"
#include "MetroidPrime/CDamageInfo.hpp"
#include "MetroidPrime/Weapons/WeaponTypes.hpp"

class CWeapon : public CActor {
public:
  // TODO

  // CEntity
  ~CWeapon() override;
  void Think(f32 dt, CStateManager& mgr) override;

  // CActor
  void Render(const CStateManager&) const override;
  EWeaponCollisionResponseTypes GetCollisionResponseType(const CVector3f&, const CVector3f&,
                                                         const CWeaponMode&,
                                                         int /*EProjectileAttrib?*/) const override;
  void FluidFXThink(EFluidState, CScriptWater&, CStateManager&) override;

private:
  EProjectileAttrib xe8_projectileAttribs;
  TUniqueId xec_ownerId;
  EWeaponType xf0_weaponType;
  CMaterialFilter xf8_filter;
  CDamageInfo x110_origDamageInfo;
  CDamageInfo x12c_curDamageInfo;
  float x148_curTime;
  float x14c_damageFalloffSpeed;
  float x150_damageDuration;
  float x154_interferenceDuration;
};
CHECK_SIZEOF(CWeapon, 0x158)

#endif
