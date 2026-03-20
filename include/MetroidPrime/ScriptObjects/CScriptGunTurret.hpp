#ifndef _CSCRIPTGUNTURRET
#define _CSCRIPTGUNTURRET

#include "MetroidPrime/CPhysicsActor.hpp"

#include "MetroidPrime/CDamageInfo.hpp"
#include "MetroidPrime/CDamageVulnerability.hpp"
#include "MetroidPrime/CHealthInfo.hpp"

class CScriptGunTurretData {
public:
  CScriptGunTurretData(CInputStream& in, int propCount);
  CScriptGunTurretData(const CScriptGunTurretData& other);

  static int GetMinProperties() { return skMinProperties; }

private:
  static const int skMinProperties;
  float x0_intoDeactivateDelay;
  float x4_intoActivateDelay;
  float x8_reloadTime;
  float xc_reloadTimeVariance;
  float x10_panStartTime;
  float x14_panHoldTime;
  float x18_totalPanSearchTime;
  float x1c_leftMaxAngle;
  float x20_rightMaxAngle;
  float x24_downMaxAngle;
  float x28_turnSpeed;
  float x2c_detectionRange;
  float x30_detectionZRange;
  float x34_freezeDuration;
  float x38_freezeVariance;
  bool x3c_freezeTimeout;
  CAssetId x40_projectileRes;
  CDamageInfo x44_projectileDamage;
  CAssetId x60_idleLightRes;
  CAssetId x64_deactivateLightRes;
  CAssetId x68_targettingLightRes;
  CAssetId x6c_frozenEffectRes;
  CAssetId x70_chargingEffectRes;
  CAssetId x74_panningEffectRes;
  CAssetId x78_visorEffectRes;
  ushort x7c_trackingSoundId;
  ushort x7e_lockOnSoundId;
  ushort x80_unfreezeSoundId;
  ushort x82_stopClankSoundId;
  ushort x84_chargingSoundId;
  ushort x86_visorSoundId;
  CAssetId x88_extensionModelResId;
  float x8c_extensionDropDownDist;
  uint x90_numInitialShots;
  uint x94_initialShotTableIndex;
  uint x98_numSubsequentShots;
  float x9c_frenzyDuration;
  bool xa0_scriptedStartOnly;
};
CHECK_SIZEOF(CScriptGunTurretData, 0xa4)

class CScriptGunTurret : public CPhysicsActor {
public:
  enum ETurretComponent {
    kTC_Base,
    kTC_Gun,
  };

  CScriptGunTurret(TUniqueId uid, const rstl::string& name, ETurretComponent comp,
                   const CEntityInfo& info, const CTransform4f& xf, const CModelData& mData,
                   const CAABox& aabb, const CHealthInfo& hInfo,
                   const CDamageVulnerability& dVuln, const CActorParameters& aParms,
                   const CScriptGunTurretData& turretData);
  ~CScriptGunTurret();

  void Accept(IVisitor& visitor) override;

private:
  uchar x258_pad[0x568 - 0x258];
};
CHECK_SIZEOF(CScriptGunTurret, 0x568)

#endif // _CSCRIPTGUNTURRET
