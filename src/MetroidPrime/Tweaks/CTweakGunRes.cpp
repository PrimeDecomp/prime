#include "MetroidPrime/Tweaks/CTweakGunRes.hpp"

#include "MetroidPrime/Weapons/WeaponCommon.hpp"
#include "rstl/string.hpp"

CTweakGunRes::~CTweakGunRes() {}
CTweakGunRes::CTweakGunRes(CInputStream& in)
: x4_gunMotion(0)
, x8_grappleArm(0)
, xc_rightHand(0)
, x10_powerBeam(0)
, x14_iceBeam(0)
, x18_waveBeam(0)
, x1c_plasmaBeam(0)
, x20_phazonBeam(0)
, x24_holoTransition(0)
, x28_bombSet(0)
, x2c_bombExplode(0)
, x30_powerBombExplode(0) {
  const rstl::string gunMotion(in);
  x4_gunMotion = NWeaponTypes::get_asset_id_from_name(gunMotion.data());
  const rstl::string grappleArm(in);
  x8_grappleArm = NWeaponTypes::get_asset_id_from_name(grappleArm.data());
  const rstl::string rightHand(in);
  xc_rightHand = NWeaponTypes::get_asset_id_from_name(rightHand.data());
  const rstl::string powerBeam(in);
  x10_powerBeam = NWeaponTypes::get_asset_id_from_name(powerBeam.data());
  const rstl::string iceBeam(in);
  x14_iceBeam = NWeaponTypes::get_asset_id_from_name(iceBeam.data());
  const rstl::string waveBeam(in);
  x18_waveBeam = NWeaponTypes::get_asset_id_from_name(waveBeam.data());
  const rstl::string plasmaBeam(in);
  x1c_plasmaBeam = NWeaponTypes::get_asset_id_from_name(plasmaBeam.data());
  const rstl::string phazonBeam(in);
  x20_phazonBeam = NWeaponTypes::get_asset_id_from_name(phazonBeam.data());
  const rstl::string holoTransition(in);
  x24_holoTransition = NWeaponTypes::get_asset_id_from_name(holoTransition.data());
  const rstl::string bombSet(in);
  x28_bombSet = NWeaponTypes::get_asset_id_from_name(bombSet.data());
  const rstl::string bombExplode(in);
  x2c_bombExplode = NWeaponTypes::get_asset_id_from_name(bombExplode.data());
  const rstl::string powerBombExplode(in);
  x30_powerBombExplode = NWeaponTypes::get_asset_id_from_name(powerBombExplode.data());
  ResIdVec* vectors[5] = {&x34_weaponPower, &x44_weaponIce, &x54_weaponWave,
                                          &x64_weaponPlasma, &x74_weaponPhazon};
  for (int i = 0, j; i < 5; ++i) {
    ResIdVec& vec = *vectors[i];
    vec.reserve(vec.size() + 2);
    for (j = 0; j < 2; ++j) {
      const rstl::string name(in);
      vec.push_back(NWeaponTypes::get_asset_id_from_name(name.data()));
    }
  }

  for (int i = 0; i < 5; ++i) {
    x84_muzzle.reserve(x84_muzzle.size() + 1);
    const rstl::string name(in);
    x84_muzzle.push_back(NWeaponTypes::get_asset_id_from_name(name.data()));
  }

  for (int i = 0; i < 5; ++i) {
    x94_charge.reserve(x94_charge.size() + 1);
    const rstl::string name(in);
    x94_charge.push_back(NWeaponTypes::get_asset_id_from_name(name.data()));
  }

  for (int i = 0; i < 5; ++i) {
    xa4_auxMuzzle.reserve(xa4_auxMuzzle.size() + 1);
    const rstl::string name(in);
    xa4_auxMuzzle.push_back(NWeaponTypes::get_asset_id_from_name(name.data()));
  }

  GetGrappleBeamFx(in);
}

inline void CTweakGunRes::GetGrappleBeamFx(CInputStream& in) {
  const rstl::string grappleSegment(in);
  xb4_grappleSegment = NWeaponTypes::get_asset_id_from_name(grappleSegment.data());
  const rstl::string grappleClaw(in);
  xb8_grappleClaw = NWeaponTypes::get_asset_id_from_name(grappleClaw.data());
  const rstl::string grappleHit(in);
  xbc_grappleHit = NWeaponTypes::get_asset_id_from_name(grappleHit.data());
  const rstl::string grappleMuzzle(in);
  xc0_grappleMuzzle = NWeaponTypes::get_asset_id_from_name(grappleMuzzle.data());
  const rstl::string grappleSwoosh(in);
  xc4_grappleSwoosh = NWeaponTypes::get_asset_id_from_name(grappleSwoosh.data());
}

const CTweakGunRes::ResIdVec& CTweakGunRes::GetBeamResIdVec(const CPlayerState::EBeamId beam) const {
  const ResIdVec* vectors[5] = {&x34_weaponPower, &x44_weaponIce, &x54_weaponWave,
                                                &x64_weaponPlasma, &x74_weaponPhazon};
  if (beam < CPlayerState::kBI_Power || beam > CPlayerState::kBI_Phazon) {
    return x34_weaponPower;
  }

  return *vectors[beam];
}
