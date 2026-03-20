#ifndef _CBABYGOTH
#define _CBABYGOTH

#include "types.h"

#include "MetroidPrime/CDamageInfo.hpp"
#include "MetroidPrime/CDamageVulnerability.hpp"
#include "MetroidPrime/Enemies/CPatterned.hpp"

#include "Kyoto/SObjectTag.hpp"

class CBabygothData {
public:
  CBabygothData(CInputStream& in, int propCount);
  CBabygothData(const CBabygothData&);

  float GetFireballAttackTime() const { return x0_fireballAttackTime; }
  float GetFireballAttackVariance() const { return x4_fireballAttackTimeVariance; }
  CAssetId GetFireballResID() const { return x8_fireballWeapon; }
  const CDamageInfo& GetFireballDamage() const { return xc_fireballDamage; }
  const CDamageInfo& GetAttackContactDamage() const { return x28_attackContactDamage; }
  CAssetId GetFireBreathWeapon() const { return x44_fireBreathWeapon; }
  CAssetId GetFireBreathResId() const { return x48_fireBreathRes; }
  const CDamageInfo& GetFireBreathDamage() const { return x4c_fireBreathDamage; }
  const CDamageVulnerability& GetMouthVulnerabilities() const { return x68_mouthVulnerabilities; }
  const CDamageVulnerability& GetShellDamageVulnerability() const {
    return xd0_shellVulnerabilities;
  }
  CAssetId GetNoShellModel() const { return x138_noShellModel; }
  CAssetId GetNoShellSkin() const { return x13c_noShellSkin; }
  float GetShellHitPoints() const { return x140_shellHitPoints; }
  short GetShellCrackSfx() const { return x144_shellCrackSfx; }
  CAssetId GetIntermediateCrackParticle() const { return x148_intermediateCrackParticle; }
  CAssetId GetCrackOneParticle() const { return x14c_crackOneParticle; }
  CAssetId GetCrackTwoParticle() const { return x150_crackTwoParticle; }
  CAssetId GetDestroyShellParticle() const { return x154_destroyShellParticle; }
  short GetCrackOneSfx() const { return x158_crackOneSfx; }
  short GetCrackTwoSfx() const { return x15a_crackTwoSfx; }
  short GetDestroyShellSfx() const { return x15c_destroyShellSfx; }
  float GetTimeUntilAttack() const { return x160_timeUntilAttack; }
  float GetAttackCooldownTime() const { return x164_attackCooldownTime; }
  float GetInterestTime() const { return x168_interestTime; }
  CAssetId GetFlamePlayerSteamTxtr() const { return x16c_flamePlayerSteamTxtr; }
  short GetFlamePlayerHitSfx() const { return x170_flamePlayerHitSfx; }
  CAssetId GetFlamePlayerIceTxtr() const { return x174_flamePlayerIceTxtr; }

  static int GetNumProperties() { return skNumProperties; }

private:
  float x0_fireballAttackTime;
  float x4_fireballAttackTimeVariance;
  CAssetId x8_fireballWeapon;
  CDamageInfo xc_fireballDamage;
  CDamageInfo x28_attackContactDamage;
  CAssetId x44_fireBreathWeapon;
  CAssetId x48_fireBreathRes;
  CDamageInfo x4c_fireBreathDamage;
  CDamageVulnerability x68_mouthVulnerabilities;
  CDamageVulnerability xd0_shellVulnerabilities;
  CAssetId x138_noShellModel;
  CAssetId x13c_noShellSkin;
  float x140_shellHitPoints;
  short x144_shellCrackSfx;
  CAssetId x148_intermediateCrackParticle;
  CAssetId x14c_crackOneParticle;
  CAssetId x150_crackTwoParticle;
  CAssetId x154_destroyShellParticle;
  short x158_crackOneSfx;
  short x15a_crackTwoSfx;
  short x15c_destroyShellSfx;
  float x160_timeUntilAttack;
  float x164_attackCooldownTime;
  float x168_interestTime;
  CAssetId x16c_flamePlayerSteamTxtr;
  short x170_flamePlayerHitSfx;
  CAssetId x174_flamePlayerIceTxtr;

  static const int skNumProperties;
};
CHECK_SIZEOF(CBabygothData, 0x178)

class CBabygoth : public CPatterned {
public:
  CBabygoth(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
            const CTransform4f& xf, const CModelData& mData, const CPatternedInfo& pInfo,
            const CActorParameters& actParms, const CBabygothData& babyData);

  ~CBabygoth() override;
  void Accept(IVisitor& visitor) override;

private:
  uchar x568_pad[0xa50 - 0x568];
};
CHECK_SIZEOF(CBabygoth, 0xa50)

#endif // _CBABYGOTH
