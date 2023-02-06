#ifndef _CPOWERBEAM
#define _CPOWERBEAM

#include "types.h"

#include "MetroidPrime/Weapons/CGunWeapon.hpp"

#include "rstl/single_ptr.hpp"

class CPowerBeam : public CGunWeapon {
public:
  CPowerBeam(CAssetId characterId, EWeaponType type, TUniqueId playerId,
             EMaterialTypes playerMaterial, const CVector3f& scale);
  ~CPowerBeam();

  void PreRenderGunFx(const CStateManager& mgr, const CTransform4f& xf) override;
  void PostRenderGunFx(const CStateManager& mgr, const CTransform4f& xf) override;
  void UpdateGunFx(bool shotSmoke, float dt, const CStateManager& mgr, const CTransform4f& xf) override;
  void Fire(bool underwater, float dt, CPlayerState::EChargeStage chargeState, const CTransform4f& xf, CStateManager& mgr,
            TUniqueId homingTarget, float chargeFactor1, float chargeFactor2) override;
  void EnableSecondaryFx(ESecondaryFxType type) override;
  void Update(float dt, CStateManager& mgr) override;
  void Load(CStateManager& mgr, bool subtypeBasePose) override;
  void Unload(CStateManager& mgr) override;
  bool IsLoaded() const override;

private:
  enum ESmokeState { kSS_Inactive, kSS_Active, kSS_Done };
  TCachedToken<CGenDescription> x21c_shotSmoke;
  TCachedToken<CGenDescription> x228_power2nd1;
  rstl::single_ptr<CElementGen> x234_shotSmokeGen;
  rstl::single_ptr<CElementGen> x238_power2ndGen;
  float x23c_smokeTimer;
  ESmokeState x240_smokeState;
  bool x244_24 : 1;
  bool x244_25_loaded : 1;

  void ReInitVariables();
};
CHECK_SIZEOF(CPowerBeam, 0x248)

#endif // _CPOWERBEAM
