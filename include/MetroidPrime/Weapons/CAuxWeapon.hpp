#ifndef _CAUXWEAPON
#define _CAUXWEAPON

#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"

class CWeaponDescription;
class CGenDescription;
class CElementGen;

class CAuxWeapon {
public:
  CAuxWeapon(TUniqueId playerId);

  bool IsComboFxActive(const CStateManager& mgr) const;

private:
  TCachedToken< CWeaponDescription > x0_missile;
  TCachedToken< CGenDescription > xc_flameMuzzle;
  TCachedToken< CGenDescription > x18_busterMuzzle;
  rstl::single_ptr< CElementGen > x24_muzzleFxGen;
  rstl::reserved_vector< TCachedToken< CWeaponDescription >, 5 > x28_combos;
  float x68_ammoConsumeTimer;
  TUniqueId x6c_playerId;
  TUniqueId x6e_flameThrowerId;
  TUniqueId x70_waveBusterId;
  CPlayerState::EBeamId x74_firingBeamId;
  CPlayerState::EBeamId x78_loadBeamId;
  CSfxHandle x7c_comboSfx;
  bool x80_24_isLoaded : 1;
};
CHECK_SIZEOF(CAuxWeapon, 0x84)

#endif // _CAUXWEAPON
