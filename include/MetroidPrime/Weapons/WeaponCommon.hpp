#ifndef _WEAPONCOMMON
#define _WEAPONCOMMON
#ifndef _WEAPONCOMMON_HPP
#define _WEAPONCOMMON_HPP

#include "rstl/vector.hpp"

class CToken;
class CSfxHandle;

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

CSfxHandle play_sfx(ushort sfx, bool underwater, bool looped, short pan);
void get_token_vector(const CAnimData& animData, int begin, int end,
                      rstl::vector< CToken >& tokensOut, bool preLock);

} // namespace NWeaponTypes

#endif _WEAPONCOMMON_HPP

#endif // _WEAPONCOMMON
