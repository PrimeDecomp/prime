#ifndef _WEAPONCOMMON
#define _WEAPONCOMMON

#include "Kyoto/SObjectTag.hpp"

#include "rstl/set.hpp"
#include "rstl/vector.hpp"

class CToken;
class CSfxHandle;
class CAnimData;
class CStateManager;
class CPrimitive;

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

void primitive_set_to_token_vector(const CAnimData& animData,
                                   const rstl::set< CPrimitive >& primSet,
                                   rstl::vector< CToken >& tokensOut, bool preLock);
void get_token_vector(CAnimData& animData, int, rstl::vector< CToken >& tokensOut, bool preLock);
void get_token_vector(const CAnimData& animData, int begin, int end,
                      rstl::vector< CToken >& tokensOut, bool preLock);
bool are_tokens_ready(const rstl::vector< CToken >&);
CAssetId get_asset_id_from_name(const char* name);
void lock_tokens(rstl::vector< CToken >&);
void unlock_tokens(rstl::vector< CToken >&);
int get_current_suit(const CStateManager& mgr);

} // namespace NWeaponTypes

#endif // _WEAPONCOMMON
