#ifndef _CTWEAKGUNRES
#define _CTWEAKGUNRES

#include "types.h"

#include "MetroidPrime/Tweaks/ITweakObject.hpp"

#include "MetroidPrime/Player/CPlayerState.hpp"

#include "Kyoto/CObjectReference.hpp"

class CTweakGunRes : public ITweakObject {
public:
  typedef CAssetId ResId;
  typedef CPlayerState::EBeamId EBeamId;

  struct WeaponResourcePair {
    ResId a;
    ResId b;
    ResId c;
    ResId* d;
  };

  ~CTweakGunRes();

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
  ResId x34_weapons[2][5];
  ResId x84_muzzle[5];
  ResId x94_charge[5];
  ResId xa4_auxMuzzle[5];

  ResId xb4_grappleSegment;
  ResId xb8_grappleClaw;
  ResId xbc_grappleHit;
  ResId xc0_grappleMuzzle;
  ResId xc4_grappleSwoosh;

  const WeaponResourcePair* GetWeaponResourcePair(int beam) const; /* {
    const int b = int(beam);
    if (b < 0 || b > 4) {
      return x34_weapons[0];
    }
    return x34_weapons[b];
  }*/
};

extern CTweakGunRes* gpTweakGunRes;

#endif // _CTWEAKGUNRES
