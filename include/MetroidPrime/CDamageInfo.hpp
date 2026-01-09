#ifndef _CDAMAGEINFO
#define _CDAMAGEINFO

#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"
#include "MetroidPrime/Weapons/WeaponTypes.hpp"

struct SShotParam;
class CDamageVulnerability;

class CDamageInfo {
  CWeaponMode x0_weaponMode;
  float x8_damage;
  float xc_radiusDamage;
  float x10_radius;
  float x14_knockback;
  bool x18_24_noImmunity : 1;

public:
  CDamageInfo()
  : x0_weaponMode()
  , x8_damage(0.f)
  , xc_radiusDamage(0.f)
  , x10_radius(0.f)
  , x14_knockback(0.f)
  , x18_24_noImmunity(false) {}

  CDamageInfo(const CWeaponMode& mode, float damage, float radius, float knockback,
              bool noImmunity = false)
  : x0_weaponMode(mode)
  , x8_damage(damage)
  , xc_radiusDamage(damage)
  , x10_radius(radius)
  , x14_knockback(knockback)
  , x18_24_noImmunity(noImmunity) {}

  // HACK: This constructor exists to fix CWeapon::Think writing xc_radiusDamage as a double
  CDamageInfo(const CWeaponMode& mode, float damage, float radiusDamage, float radius,
              float knockback, bool noImmunity = false)
  : x0_weaponMode(mode)
  , x8_damage(damage)
  , xc_radiusDamage(radiusDamage)
  , x10_radius(radius)
  , x14_knockback(knockback)
  , x18_24_noImmunity(noImmunity) {}

  CDamageInfo(CInputStream& in);
  CDamageInfo(const CDamageInfo&, float);
  CDamageInfo(const SShotParam& other);

  CDamageInfo& operator=(const SShotParam& other);

  const CWeaponMode& GetWeaponMode() const { return x0_weaponMode; }
  void SetWeaponMode(const CWeaponMode& mode) { x0_weaponMode = mode; }
  float GetRadius() const { return x10_radius; }
  void SetRadius(float r) { x10_radius = r; }
  float GetKnockBackPower() const { return x14_knockback; }
  void SetKnockBackPower(float k) { x14_knockback = k; }
  float GetDamage() const { return x8_damage; }
  void SetDamage(float d) { x8_damage = d; }
  bool HasNoDamage() const { return x8_damage <= 0.0f; }
  float GetDamage(const CDamageVulnerability& dVuln) const;
  float GetRadiusDamage() const { return xc_radiusDamage; }
  void SetRadiusDamage(float r) { xc_radiusDamage = r; }
  float GetRadiusDamage(const CDamageVulnerability& dVuln) const;
  bool NoImmunity() const { return x18_24_noImmunity; }
  void SetNoImmunity(bool b) { x18_24_noImmunity = b; }
  void MultiplyDamage(const float m) {
    x8_damage = m * x8_damage;
    xc_radiusDamage = m * xc_radiusDamage;
    x14_knockback = m * x14_knockback;
  }
  void MultiplyDamageAndRadius(float m) {
    x8_damage *= m;
    xc_radiusDamage *= m;
    x10_radius *= m;
    x14_knockback *= m;
  }
};

#endif // _CDAMAGEINFO
