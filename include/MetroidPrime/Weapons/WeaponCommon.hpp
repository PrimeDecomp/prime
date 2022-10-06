#ifndef _WEAPONCOMMON_HPP
#define _WEAPONCOMMON_HPP

namespace NWeaponTypes {

enum EGunAnimType {
  kGAT_BasePosition,
  kGAT_Shoot,
  kGAT_ChargeUp,
  kGAT_ChargeLoop,
  kGAT_ChargeShoot,
  kGAT_FromMissile,
  kGAT_ToMissile,
  kGAT_MissileShoot,
  kGAT_MissileReload,
  kGAT_FromBeam,
  kGAT_ToBeam
};

CSfxHandle play_sfx(u16 sfx, bool underwater, bool looped, short pan);

}

#endif _WEAPONCOMMON_HPP
