#ifndef _CWAVEBEAM
#define _CWAVEBEAM

#include "types.h"

#include "MetroidPrime/Weapons/CGunWeapon.hpp"

#include "rstl/single_ptr.hpp"

class CElectricDescription;
class CParticleElectric;

class CWaveBeam : public CGunWeapon {
public:
  CWaveBeam(CAssetId characterId, EWeaponType type, TUniqueId playerId,
            EMaterialTypes playerMaterial, const CVector3f& scale);
  ~CWaveBeam() override;

  void PostRenderGunFx(const CStateManager& mgr, const CTransform4f& xf) override;
  void UpdateGunFx(bool shotSmoke, float dt, const CStateManager& mgr,
                   const CTransform4f& xf) override;
  void Fire(bool underwater, float dt, CPlayerState::EChargeStage chargeState,
            const CTransform4f& xf, CStateManager& mgr, TUniqueId homingTarget, float chargeFactor1,
            float chargeFactor2) override;
  void EnableSecondaryFx(ESecondaryFxType type) override;
  void Update(float dt, CStateManager& mgr) override;
  void Load(CStateManager& mgr, bool subtypeBasePose) override;
  void Unload(CStateManager& mgr) override;
  bool IsLoaded() const override;

private:
  TCachedToken< CWeaponDescription > x21c_waveBeam;
  TCachedToken< CElectricDescription > x228_wave2nd1;
  TCachedToken< CElectricDescription > x234_wave2nd2;
  TCachedToken< CGenDescription > x240_wave2nd3;
  float x24c_effectTimer;
  rstl::single_ptr< CParticleElectric > x250_chargeElec;
  rstl::single_ptr< CElementGen > x254_chargeFx;
  bool x258_24_loaded : 1;            
  bool x258_25_effectTimerActive : 1; 

  void ReInitVariables();
};
CHECK_SIZEOF(CWaveBeam, 0x25c)

#endif // _CWAVEBEAM
