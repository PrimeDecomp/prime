#ifndef _CTWEAKGUNRES
#define _CTWEAKGUNRES

#include "types.h"

#include "MetroidPrime/Tweaks/ITweakObject.hpp"

#include "MetroidPrime/Player/CPlayerState.hpp"
#include <Kyoto/TOneStatic.hpp>

#include "Kyoto/CObjectReference.hpp"
#include "rstl/string.hpp"

class CTweakGunRes : public ITweakObject, public TOneStatic< CTweakGunRes > {
public:
  typedef CAssetId ResId;
  typedef rstl::vector< ResId > ResIdVec;

  void GetGrappleBeamFx(CInputStream& in);
  CTweakGunRes(CInputStream& in);
  ~CTweakGunRes() override;

  ResId x4_gunMotion;
  ResId x8_grappleArm;
  ResId xc_rightHand;

  ResId x10_powerBeam;
  ResId x14_iceBeam;
  ResId x18_waveBeam;
  ResId x1c_plasmaBeam;
  ResId x20_phazonBeam;

  ResId x24_holoTransition;

  ResId x28_bombSet;
  ResId x2c_bombExplode;
  ResId x30_powerBombExplode;

  /* Power, Ice, Wave, Plasma, Phazon / Beam, Ball */
  ResIdVec x34_weaponPower;
  ResIdVec x44_weaponIce;
  ResIdVec x54_weaponWave;
  ResIdVec x64_weaponPlasma;
  ResIdVec x74_weaponPhazon;
  ResIdVec x84_muzzle;
  ResIdVec x94_charge;
  ResIdVec xa4_auxMuzzle;

  ResId xb4_grappleSegment;
  ResId xb8_grappleClaw;
  ResId xbc_grappleHit;
  ResId xc0_grappleMuzzle;
  ResId xc4_grappleSwoosh;

  const ResIdVec& GetBeamResIdVec(CPlayerState::EBeamId beam) const;
};

extern CTweakGunRes* gpTweakGunRes;

#endif // _CTWEAKGUNRES
