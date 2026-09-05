#include "MetroidPrime/Enemies/CKnockBackMgr.hpp"

const CKnockBackMgr::KnockBackParms CKnockBackMgr::skDefaultParameters = {
    kAR_None,
    kKBAFU_None,
    0.f,
    0.f,
};

CKnockBackMgr::CKnockBackMgr(const ECreatureSize size)
: x0_size(size)
, x4_activeParms(skDefaultParameters)
, x14_deferWeaponType(kWT_None)
, x18_minAnimState(kAR_None)
, x1c_maxAnimState(kAR_Fall)
, x20_impulseDurationIdx(0)
, x50_impulseDir(CVector3f::Zero())
, x5c_impulseMag(0.f)
, x60_impulseRemTime(0.f)
, x64_flinchRemTime(0.f)
, x68_deferRemTime(0.f)
, x6c_(0)
, x70_(0)
, x74_(0)
, x7c_severity(pas::kS_One)
, x80_availableStates(0)
, x81_24_autoResetImpulse(true)
, x81_25_enableFreeze(true)
, x81_26_enableShock(false)
, x81_27_enableBurn(true)
, x81_28_enableBurnDeath(true)
, x81_29_enableExplodeDeath(true)
, x81_30_enableLaggedBurnDeath(true)
, x81_31_(true)
, x82_24_(true)
, x82_25_inDeferredKnockBack(false)
, x82_26_locomotionDuringElectrocution(false) {
  float f = FLT_MAX;
  for (int i = 0; i <= kAR_Fall; i++) {
    x24_.push_back(rstl::pair< float, float >(0.f, f));
    EnableAnimReaction(static_cast< EAnimReaction >(i), true);
  }
}

void CKnockBackMgr::sub80233d40(int index, float min, float max) {
  if (index >= 0 && index <= 4) {
    x24_[index] = rstl::pair< float, float >(min, max);
  }
}

void CKnockBackMgr::SetCreatureSize(ECreatureSize size) { x0_size = size; }
