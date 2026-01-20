#include "MetroidPrime/ScriptObjects/CEnergyBall.hpp"
#include "MetroidPrime/ScriptObjects/CSustainedPlayerDamage.hpp"


CEnergyBall::CEnergyBall(const TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                         const CTransform4f& xf, const CModelData& mData,
                         const CActorParameters& actParms, const CPatternedInfo& pInfo,
                         const int w1, const float f1, const CDamageInfo& dInfo1, const float f2,
                         const CAssetId a1, const ushort sfxId1, const CAssetId a2,
                         const CAssetId a3, const ushort sfxId2, const float f3, const float f4,
                         const CAssetId a4, const CDamageInfo& dInfo2, const float f5)
: CPatterned(kC_EnergyBall, uid, name, kFT_Zero, info, xf, mData, pInfo, kMT_Flyer, kCT_One,
             kBT_NewFlyer, actParms, kKBV_Medium)
, x56c(0.f)
, x570(w1)
, x574(f1)
, x578(dInfo1)
, mInitialTurnSpeed(pInfo.GetTurnSpeed())
, x598(f2)
, x59c(a1)
, x5a0(sfxId1)
, x5a4(a2)
, x5a8(gpSimplePool->GetObj(SObjectTag('ELSC', a3)))
, x5b4(sfxId2)
, x5b8(f3)
, x5bc(f4)
, x5c0(gpSimplePool->GetObj(SObjectTag('PART', a4)))
, x5cc(dInfo2)
, x5e8(f5) {
  SetDrawShadow(false);
  GetKnockBackCtrl().SetEnableExplodeDeath(false);
  GetKnockBackCtrl().SetAutoResetImpulse(false);
  GetKnockBackCtrl().SetEnableBurnDeath(false);
  GetKnockBackCtrl().SetX82_24(false);
  GetKnockBackCtrl().SetEnableBurn(false);
  GetKnockBackCtrl().SetEnableLaggedBurnDeath(false);
  GetKnockBackCtrl().SetEnableShock(false);
  GetKnockBackCtrl().SetEnableFreeze(false);
  GetKnockBackCtrl().SetX81_31(false);
}

CEnergyBall::~CEnergyBall() {}
