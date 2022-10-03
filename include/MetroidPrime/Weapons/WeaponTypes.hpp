#ifndef _WEAPONTYPES_HPP
#define _WEAPONTYPES_HPP

enum EWeaponType {
  kWT_None = -1,
  kWT_Power = 0,
  kWT_Ice = 1,
  kWT_Wave = 2,
  kWT_Plasma = 3,
  kWT_Bomb = 4,
  kWT_PowerBomb = 5,
  kWT_Missile = 6,
  kWT_BoostBall = 7,
  kWT_Phazon = 8,
  kWT_AI = 9,
  kWT_PoisonWater = 10,
  kWT_Lava = 11,
  kWT_Heat = 12,
  kWT_Unused1 = 13,
  kWT_OrangePhazon = 14,
  kWT_Max = 15
};

class CWeaponMode {
  EWeaponType x0_weaponType;
  bool x4_24_charged : 1;
  bool x4_25_comboed : 1;
  bool x4_26_instantKill : 1;

public:
  explicit CWeaponMode(EWeaponType type = kWT_None, bool charged = false, bool comboed = false,
                       bool instaKill = false)
  : x0_weaponType(type)
  , x4_24_charged(charged)
  , x4_25_comboed(comboed)
  , x4_26_instantKill(instaKill) {}

  EWeaponType GetType() const { return x0_weaponType; }

  bool IsCharged() const { return x4_24_charged; }
  bool IsComboed() const { return x4_25_comboed; }
  bool IsInstantKill() const { return x4_26_instantKill; }

  static CWeaponMode Invalid() { return CWeaponMode(kWT_None); }
  static CWeaponMode Phazon() { return CWeaponMode(kWT_Phazon); }
  static CWeaponMode Plasma() { return CWeaponMode(kWT_Plasma); }
  static CWeaponMode Wave() { return CWeaponMode(kWT_Wave); }
  static CWeaponMode BoostBall() { return CWeaponMode(kWT_BoostBall); }
  static CWeaponMode Ice() { return CWeaponMode(kWT_Ice); }
  static CWeaponMode Power() { return CWeaponMode(kWT_Power); }
  static CWeaponMode Bomb() { return CWeaponMode(kWT_Bomb); }
  static CWeaponMode PowerBomb() { return CWeaponMode(kWT_PowerBomb); }
};

#endif
