#include "MetroidPrime/Tweaks/CTweakPlayerGun.hpp"

#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

static inline CDamageInfo read_damageInfo(CInputStream& in, bool charged, bool combo) {
  const EWeaponType type = static_cast< EWeaponType >(in.ReadLong());
  const float damage = in.ReadFloat();
  const float radiusDamage = in.ReadFloat();
  const float radius = in.ReadFloat();
  const float knockback = in.ReadFloat();
  CDamageInfo info(CWeaponMode(type, charged, combo), damage, radius, knockback);
  info.SetRadiusDamage(radiusDamage);
  return info;
}

inline void CTweakPlayerGun::InitRicochetDamageFactor(CInputStream& in) {
  for (int i = 0; i < 5; ++i) {
    const float factor = in.ReadFloat();
    x280_ricochetData[i] = factor;
  }
}

CTweakPlayerGun::CTweakPlayerGun(CInputStream& in)
: x4_upLookAngle(in.ReadFloat())
, x8_downLookAngle(in.ReadFloat())
, xc_verticalSpread(in.ReadFloat())
, x10_horizontalSpread(in.ReadFloat())
, x14_highVerticalSpread(in.ReadFloat())
, x18_highHorizontalSpread(in.ReadFloat())
, x1c_lowVerticalSpread(in.ReadFloat())
, x20_lowHorizontalSpread(in.ReadFloat())
, x24_aimVerticalSpeed(in.ReadFloat())
, x28_aimHorizontalSpeed(in.ReadFloat())
, x2c_bombFuseTime(in.ReadFloat())
, x30_bombDropDelayTime(in.ReadFloat())
, x34_holoHoldTime(in.ReadFloat())
, x38_gunTransformTime(in.ReadFloat())
, x3c_gunHolsterTime(in.ReadFloat())
, x40_gunNotFiringTime(in.ReadFloat())
, x44_fixedVerticalAim(in.ReadFloat() * (M_PIF / 180.f))
, x48_gunExtendDistance(in.ReadFloat())
, x4c_gunPosition(in)
, x58_(in)
, x64_grapplingArmPosition(in)
, x70_bomb(read_damageInfo(in, false, false))
, x8c_powerBomb(read_damageInfo(in, false, false))
, x1d4_missile(read_damageInfo(in, false, false))
, x1f0_combos(5, CDamageInfo())
, x280_ricochetData(5, 0.1f) {
  InitBeamData(in);
  for (int i = 0; i < 5; ++i) {
    x1f0_combos[i] = read_damageInfo(in, false, true);
  }
  InitRicochetDamageFactor(in);
}

void CTweakPlayerGun::InitBeamData(CInputStream& in) {
  SWeaponInfo* beams[5] = {&xa8_powerBeam, &xe4_iceBeam, &x120_waveBeam, &x15c_plasmaBeam,
                           &x198_phazonBeam};
  for (int i = 0; i < 5; ++i) {
    SWeaponInfo& beam = *beams[i];
    beam.x0_coolDown = in.ReadFloat();
    beam.x4_normal = read_damageInfo(in, false, false);
    beam.x20_charged = read_damageInfo(in, true, false);
  }
}

const SWeaponInfo& CTweakPlayerGun::GetBeamInfo(int beam) const {
  const SWeaponInfo* beams[5] = {&xa8_powerBeam, &xe4_iceBeam, &x120_waveBeam, &x15c_plasmaBeam,
                                 &x198_phazonBeam};
  if (beam < 0 || beam > 5) {
    return xa8_powerBeam;
  }
  return *beams[beam];
}

float CTweakPlayerGun::GetRichochetDamage(EWeaponType type) const {
  switch (type) {
  case kWT_Power:
    return x280_ricochetData[0];
  case kWT_Ice:
    return x280_ricochetData[1];
  case kWT_Wave:
    return x280_ricochetData[2];
  case kWT_Plasma:
    return x280_ricochetData[3];
  case kWT_Missile:
    return x280_ricochetData[4];
  case kWT_Phazon:
    return x280_ricochetData[5];
  default:
    return 1.f;
  }
}
