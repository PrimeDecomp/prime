#ifndef _CPLASMABEAM
#define _CPLASMABEAM

#include "types.h"

#include "MetroidPrime/CEntityInfo.hpp"
#include "MetroidPrime/Weapons/CGunWeapon.hpp"

class CPlasmaBeam : public CGunWeapon {
public:
  CPlasmaBeam(const CAssetId characterId, const EWeaponType type, const TUniqueId playerId,
             const  EMaterialTypes playerMaterial, const CVector3f& scale);

  ~CPlasmaBeam() override;

  // CGunWeapon
  void PostRenderGunFx(const CStateManager& mgr, const CTransform4f& xf) override;
  void UpdateGunFx(bool shotSmoke, float dt, const CStateManager& mgr,
                   const CTransform4f& xf) override;
  void Update(const float dt, CStateManager& mgr) override;
  void Fire(const bool underwater, const float dt, CPlayerState::EChargeStage chargeState,
            const CTransform4f& xf, CStateManager& mgr, TUniqueId homingTarget,
            const float chargeFactor1, const float chargeFactor2) override;

  void Load(CStateManager& mgr, bool subtypeBasePose) override;
  void Unload(CStateManager& mgr) override;
  bool IsLoaded() const override;
  void EnableSecondaryFx(const ESecondaryFxType type) override;

  bool IsFiring(const CStateManager& mgr) const;
  void StopBeam(CStateManager& mgr, const bool b1);
  void CreateBeam(CStateManager& mgr);
  void UpdateBeam(const float dt, const CTransform4f& targetXf, const CVector3f& localBeamPos,
                  CStateManager& mgr);
  void DeleteBeam(CStateManager& mgr);
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId sender, CStateManager& mgr);

private:
  TCachedToken< CGenDescription > x21c_plasma2nd1;
  rstl::single_ptr< CElementGen > x228_chargeFx;
  bool x22c_24_loaded : 1;
  bool x22c_25_worldLighingDim : 1;
  float x230_fireShotDelayTimer;
  float x234_fireShotDelay;
  float x238_lightingResetDelayTimer;
  TAreaId x23c_stateArea;

  void ReInitVariables();
  void SetWorldLighting(CStateManager& mgr, TAreaId aid, float speed, float target);
};
CHECK_SIZEOF(CPlasmaBeam, 0x240)

#endif // _CPLASMABEAM
