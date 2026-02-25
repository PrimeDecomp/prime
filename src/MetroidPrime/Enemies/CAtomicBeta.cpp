#include "MetroidPrime/Enemies/CAtomicBeta.hpp"

#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/Enemies/CKnockBackController.hpp"
#include "MetroidPrime/Enemies/CPatternedInfo.hpp"
#include "MetroidPrime/TCastTo.hpp"

#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/CSimplePool.hpp"

CAtomicBeta::CAtomicBeta(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                         const CTransform4f& xf, CModelData mData, const CActorParameters& actParms,
                         const CPatternedInfo& pInfo, CAssetId electricId, CAssetId weaponId,
                         const CDamageInfo& dInfo, CAssetId particleId, float beamFadeSpeed,
                         float beamRadius, float beamDamageInterval,
                         const CDamageVulnerability& frozenDVuln, float moveSpeed, float minSpeed,
                         float maxSpeed, ushort sId1, ushort sId2, ushort sId3, float speedStep)
: CPatterned(kC_AtomicBeta, uid, name, kFT_Zero, info, xf, mData, pInfo, kMT_Flyer, kCT_One,
             kBT_RestrictedFlyer, actParms, kKBV_Small)
, x568_projectileIds()
, x574_beamFired(false)
, x578_minSpeed(minSpeed)
, x57c_maxSpeed(maxSpeed)
, x580_speedStep(speedStep)
, x584_currentSpeed(x578_minSpeed)
, x588_frozenDamage(frozenDVuln)
, x5f0_moveSpeed(moveSpeed)
, x5f4_direction(xf.GetColumn(kDY))
, x600_electricWeapon(gpSimplePool->GetObj(SObjectTag('ELSC', electricId)))
, x608_weaponDesc(gpSimplePool->GetObj(SObjectTag('WPSC', weaponId)))
, x610_projectileDamage(dInfo)
, x62c_beamParticle(particleId)
, x630_beamFadeSpeed(beamFadeSpeed)
, x634_beamRadius(beamRadius)
, x638_beamDamageInterval(beamDamageInterval)
, x63c_(1.f)
, x640_(10.f)
, x644_sfxId1(CSfxManager::TranslateSFXID(sId1))
, x646_sfxId2(CSfxManager::TranslateSFXID(sId2))
, x648_sfxId3(CSfxManager::TranslateSFXID(sId3))
, x64c_sfxHandle1()
, x650_sfxHandle2()
, x654_sfxHandle3() {
  x460_knockBackController.SetAutoResetImpulse(false);
  x460_knockBackController.SetEnableFreeze(false);
  x460_knockBackController.SetX82_24(false);
}

CAtomicBeta::~CAtomicBeta() {
  DestroyEmitter(x650_sfxHandle2);
  DestroyEmitter(x654_sfxHandle3);
  DestroyEmitter(x64c_sfxHandle1);
}

void CAtomicBeta::Accept(IVisitor& visitor) { visitor.Visit(*this); }

void CAtomicBeta::DestroyEmitter(CSfxHandle& handle) {
  if (handle) {
    CSfxManager::RemoveEmitter(handle);
    handle = CSfxHandle();
  }
}
