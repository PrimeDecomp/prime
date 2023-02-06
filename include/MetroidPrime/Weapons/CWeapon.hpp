#ifndef _CWEAPON
#define _CWEAPON

#include "types.h"

#include "MetroidPrime/CActor.hpp"
#include "MetroidPrime/CDamageInfo.hpp"
#include "MetroidPrime/Weapons/WeaponTypes.hpp"

class CWeapon : public CActor {
public:
  CWeapon(TUniqueId uid, TAreaId areaId, bool active, TUniqueId owner, EWeaponType type,
          const rstl::string& name, const CTransform4f& xf, const CMaterialFilter& filter,
          const CMaterialList& mList, const CDamageInfo& dInfo, EProjectileAttrib attribs,
          const CModelData& mData);

  // CEntity
  ~CWeapon();
  void Think(float dt, CStateManager& mgr);

  // CActor
  void Render(const CStateManager&) const;
  EWeaponCollisionResponseTypes GetCollisionResponseType(const CVector3f&, const CVector3f&,
                                                         const CWeaponMode&,
                                                         int /*EProjectileAttrib?*/) const;
  void FluidFXThink(EFluidState, CScriptWater&, CStateManager&);

  void SetDamageFalloffSpeed(float d);

  EProjectileAttrib GetAttribField() const { return xe8_projectileAttribs; }
  TUniqueId GetOwnerId() const { return xec_ownerId; }
  EWeaponType GetWeaponType() const { return xf0_weaponType; }
  CMaterialFilter GetFilter() const { return xf8_filter; }
  CDamageInfo& OrigDamageInfo() { return x110_origDamageInfo; }

protected:
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

#endif // _CWEAPON
