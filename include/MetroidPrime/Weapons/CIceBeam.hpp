#ifndef _CICEBEAM
#define _CICEBEAM

#include "types.h"

#include "MetroidPrime/Weapons/CGunWeapon.hpp"

class CIceBeam : public CGunWeapon {
public:
  CIceBeam(CAssetId characterId, EWeaponType type, TUniqueId playerId,
           EMaterialTypes playerMaterial, const CVector3f& scale);
  ~CIceBeam();

  // CGunWeapon
  void PreRenderGunFx(const CStateManager& mgr, const CTransform4f& xf);
  void PostRenderGunFx(const CStateManager& mgr, const CTransform4f& xf);
  void UpdateGunFx(bool shotSmoke, float dt, const CStateManager& mgr,
                   const CTransform4f& xf);
  void Update(float dt, CStateManager& mgr);
  void Fire(bool underwater, float dt, CPlayerState::EChargeStage chargeState,
            const CTransform4f& xf, CStateManager& mgr, TUniqueId homingTarget, float chargeFactor1,
            float chargeFactor2);

  void Load(CStateManager& mgr, bool subtypeBasePose);
  void Unload(CStateManager& mgr);
  bool IsLoaded() const;

  void EnableFx(bool enable);
  void EnableSecondaryFx(ESecondaryFxType type);

private:
  TCachedToken< CGenDescription > x21c_iceSmoke;
  TCachedToken< CGenDescription > x228_ice2nd1;
  TCachedToken< CGenDescription > x234_ice2nd2;
  rstl::single_ptr< CElementGen > x240_smokeGen;
  rstl::single_ptr< CElementGen > x244_chargeFx;
  bool x248_24_loaded : 1;
  bool x248_25_inEndFx : 1;

  void ReInitVariables();
};
CHECK_SIZEOF(CIceBeam, 0x24c)

#endif // _CICEBEAM
