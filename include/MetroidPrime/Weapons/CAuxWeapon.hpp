#ifndef _CAUXWEAPON
#define _CAUXWEAPON

#include "types.h"

#include "MetroidPrime/CEntityInfo.hpp"
#include "MetroidPrime/Player/CPlayerState.hpp"
#include "MetroidPrime/TGameTypes.hpp"
#include "MetroidPrime/Weapons/WeaponCommon.hpp"

class CWeaponDescription;
class CGenDescription;
class CElementGen;

class CAuxWeapon {
public:
  CAuxWeapon(TUniqueId playerId);

  bool IsComboFxActive(const CStateManager& mgr) const;
  bool UpdateComboFx(float dt, const CVector3f& scale, const CVector3f& firePos,
                     const CTransform4f& targetXf, CStateManager& mgr);
  TUniqueId HasTarget(const CStateManager& mgr) const;
  void SetNewTarget(TUniqueId target, CStateManager& mgr);
  void StopComboFx(CStateManager& mgr, bool deactivate);
  void Load(int curBeam, CStateManager& mgr);
  void Fire(float dt, bool underwater, CPlayerState::EBeamId currentBeam,
            CPlayerState::EChargeStage chargeState, const CTransform4f& xf, CStateManager& mgr,
            EWeaponType type, TUniqueId homingId);
  void RenderMuzzleFx() const;
  void AcceptScriptMsg(EScriptObjectMessage, TUniqueId, CStateManager&);

  bool IsLoaded() const { return x80_24_isLoaded; }

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
