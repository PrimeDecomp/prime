#include "MetroidPrime/Enemies/CKnockBackMgr.hpp"

#include "Kyoto/Animation/CPASAnimParmData.hpp"
#include "Kyoto/Animation/CPASDatabase.hpp"
#include "Kyoto/CRandom16.hpp"
#include "MetroidPrime/CAnimData.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/Enemies/CPatterned.hpp"

const CKnockBackMgr::KnockBackParms CKnockBackMgr::skDefaultParameters = {
    kAR_None,
    kKBAFU_None,
    0.f,
    0.f,
};

const CKnockBackMgr::KnockBackParms CKnockBackMgr::skKnockBackParameters[3][19][4] = {
    {
        // Small
        {
            {kAR_KnockBack, kKBAFU_None, 0.f, -1.f},
            {kAR_Fall, kKBAFU_ExplodeDeath, 0.f, -1.f},
            {kAR_None, kKBAFU_None, 0.f, -1.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_KnockBack, kKBAFU_None, 0.f, -1.f},
            {kAR_Fall, kKBAFU_ExplodeDeath, 0.f, -1.f},
            {kAR_Hurled, kKBAFU_IceDeath, 0.f, 0.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_Hurled, kKBAFU_ExplodeDeath, 0.f, -1.f},
            {kAR_Fall, kKBAFU_ExplodeDeath, 0.f, -1.f},
            {kAR_Hurled, kKBAFU_IceDeath, 0.f, 0.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_Hurled, kKBAFU_ExplodeDeath, 0.f, -1.f},
            {kAR_Fall, kKBAFU_ExplodeDeath, 0.f, -1.f},
            {kAR_None, kKBAFU_None, 0.f, 0.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_Flinch, kKBAFU_None, 0.f, -1.f},
            {kAR_Fall, kKBAFU_ExplodeDeath, 0.f, -1.f},
            {kAR_None, kKBAFU_None, 0.f, -1.f},
            {kAR_Fall, kKBAFU_Shock, 1.f, 0.f},
        },
        {
            {kAR_Hurled, kKBAFU_Shock, 2.f, -1.f},
            {kAR_Fall, kKBAFU_ExplodeDeath, 0.f, -1.f},
            {kAR_None, kKBAFU_None, 0.f, -1.f},
            {kAR_Fall, kKBAFU_Shock, 2.f, 0.f},
        },
        {
            {kAR_None, kKBAFU_Shock, 4.f, -1.f},
            {kAR_Fall, kKBAFU_ExplodeDeath, 4.f, -1.f},
            {kAR_None, kKBAFU_None, 0.f, -1.f},
            {kAR_Fall, kKBAFU_Shock, 0.f, 0.f},
        },
        {
            {kAR_Hurled, kKBAFU_Shock, 4.f, -1.f},
            {kAR_Fall, kKBAFU_ExplodeDeath, 0.f, -1.f},
            {kAR_Hurled, kKBAFU_Shock, 0.f, 0.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_None, kKBAFU_Freeze, 2.5f, -1.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
            {kAR_None, kKBAFU_Freeze, 2.5f, -1.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_None, kKBAFU_Freeze, 5.5f, -1.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
            {kAR_None, kKBAFU_Freeze, 5.5f, -1.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_None, kKBAFU_Freeze, 8.5f, -1.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
            {kAR_Hurled, kKBAFU_IceDeath, 0.f, -1.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_None, kKBAFU_Freeze, 4.5f, -1.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
            {kAR_Hurled, kKBAFU_IceDeath, 0.f, -1.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_Hurled, kKBAFU_ExplodeDeath, 0.f, -1.f},
            {kAR_Fall, kKBAFU_ExplodeDeath, 0.f, -1.f},
            {kAR_Hurled, kKBAFU_IceDeath, 0.f, -1.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_Hurled, kKBAFU_ExplodeDeath, 0.f, -1.f},
            {kAR_Fall, kKBAFU_ExplodeDeath, 0.f, -1.f},
            {kAR_Hurled, kKBAFU_IceDeath, 0.f, -1.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_Hurled, kKBAFU_ExplodeDeath, 0.f, -1.f},
            {kAR_Fall, kKBAFU_ExplodeDeath, 0.f, -1.f},
            {kAR_Hurled, kKBAFU_IceDeath, 0.f, -1.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_Hurled, kKBAFU_ExplodeDeath, 0.f, -1.f},
            {kAR_Fall, kKBAFU_ExplodeDeath, 0.f, -1.f},
            {kAR_Hurled, kKBAFU_IceDeath, 0.f, -1.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_KnockBack, kKBAFU_None, 0.f, -1.f},
            {kAR_Fall, kKBAFU_ExplodeDeath, 0.f, -1.f},
            {kAR_None, kKBAFU_None, 0.f, 0.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_Hurled, kKBAFU_ExplodeDeath, 0.f, -1.f},
            {kAR_Fall, kKBAFU_ExplodeDeath, 0.f, -1.f},
            {kAR_Hurled, kKBAFU_IceDeath, 0.f, -1.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_Flinch, kKBAFU_ExplodeDeath, 0.f, -1.f},
            {kAR_Fall, kKBAFU_ExplodeDeath, 0.f, -1.f},
            {kAR_Hurled, kKBAFU_IceDeath, 0.f, -1.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
    },
    {
        // Medium
        {
            {kAR_Flinch, kKBAFU_None, 0.f, -1.f},
            {kAR_Fall, kKBAFU_None, 0.f, -1.f},
            {kAR_None, kKBAFU_None, 0.f, -1.f},
            {kAR_Fall, kKBAFU_None, 0.f, 0.f},
        },
        {
            {kAR_KnockBack, kKBAFU_None, 0.f, -1.f},
            {kAR_Fall, kKBAFU_None, 0.f, -1.f},
            {kAR_Hurled, kKBAFU_IceDeath, 0.f, 0.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_Hurled, kKBAFU_None, 0.f, -1.f},
            {kAR_Hurled, kKBAFU_None, 0.f, -1.f},
            {kAR_Hurled, kKBAFU_IceDeath, 0.f, 0.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_Hurled, kKBAFU_None, 0.f, -1.f},
            {kAR_Hurled, kKBAFU_None, 0.f, -1.f},
            {kAR_Hurled, kKBAFU_IceDeath, 0.f, 0.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_Flinch, kKBAFU_None, 0.f, -1.f},
            {kAR_Fall, kKBAFU_Shock, 2.f, -1.f},
            {kAR_None, kKBAFU_None, 0.f, -1.f},
            {kAR_Fall, kKBAFU_Shock, 1.f, 0.f},
        },
        {
            {kAR_KnockBack, kKBAFU_Shock, 2.f, -1.f},
            {kAR_Fall, kKBAFU_Shock, 2.f, -1.f},
            {kAR_None, kKBAFU_None, 0.f, -1.f},
            {kAR_Fall, kKBAFU_Shock, 2.f, 0.f},
        },
        {
            {kAR_None, kKBAFU_Shock, 4.f, -1.f},
            {kAR_Hurled, kKBAFU_Shock, 4.f, -1.f},
            {kAR_None, kKBAFU_None, 0.f, -1.f},
            {kAR_Fall, kKBAFU_Shock, 0.f, 0.f},
        },
        {
            {kAR_Hurled, kKBAFU_Shock, 4.f, -1.f},
            {kAR_Hurled, kKBAFU_Shock, 4.f, -1.f},
            {kAR_Hurled, kKBAFU_Shock, 0.f, 0.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_None, kKBAFU_Freeze, 2.5f, -1.f},
            {kAR_Fall, kKBAFU_None, 0.f, -1.f},
            {kAR_None, kKBAFU_Freeze, 2.5f, -1.f},
            {kAR_Fall, kKBAFU_None, 0.f, 0.f},
        },
        {
            {kAR_None, kKBAFU_Freeze, 5.5f, -1.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
            {kAR_None, kKBAFU_Freeze, 5.5f, -1.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_None, kKBAFU_Freeze, 8.5f, -1.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
            {kAR_None, kKBAFU_Freeze, 8.5f, -1.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_None, kKBAFU_Freeze, 4.5f, -1.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
            {kAR_None, kKBAFU_Freeze, 4.5f, -1.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_KnockBack, kKBAFU_Burn, 6.f, -1.f},
            {kAR_Fall, kKBAFU_BurnDeath, 6.f, -1.f},
            {kAR_KnockBack, kKBAFU_Burn, 6.f, 0.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_KnockBack, kKBAFU_BurnDeath, 6.f, -1.f},
            {kAR_Fall, kKBAFU_BurnDeath, 6.f, -1.f},
            {kAR_KnockBack, kKBAFU_Burn, 6.f, 0.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_None, kKBAFU_Burn, 6.f, -1.f},
            {kAR_Fall, kKBAFU_BurnDeath, 0.f, -1.f},
            {kAR_KnockBack, kKBAFU_Burn, 6.f, 0.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_KnockBack, kKBAFU_None, 0.f, -1.f},
            {kAR_Hurled, kKBAFU_None, 0.f, -1.f},
            {kAR_KnockBack, kKBAFU_IceDeath, 0.f, 0.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_KnockBack, kKBAFU_None, 0.f, -1.f},
            {kAR_Fall, kKBAFU_None, 0.f, -1.f},
            {kAR_None, kKBAFU_None, 0.f, 0.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_Hurled, kKBAFU_LaggedBurnDeath, 0.f, -1.f},
            {kAR_Fall, kKBAFU_LaggedBurnDeath, 0.f, -1.f},
            {kAR_Hurled, kKBAFU_IceDeath, 0.f, -1.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_Flinch, kKBAFU_None, 0.f, -1.f},
            {kAR_Fall, kKBAFU_PhazeOut, 0.f, -1.f},
            {kAR_Hurled, kKBAFU_IceDeath, 0.f, -1.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
    },
    {
        // Large
        {
            {kAR_Flinch, kKBAFU_None, 0.f, -1.f},
            {kAR_Fall, kKBAFU_None, 0.f, -1.f},
            {kAR_None, kKBAFU_None, 0.f, -1.f},
            {kAR_Fall, kKBAFU_None, 0.f, 0.f},
        },
        {
            {kAR_KnockBack, kKBAFU_None, 0.f, -1.f},
            {kAR_Fall, kKBAFU_None, 0.f, -1.f},
            {kAR_None, kKBAFU_None, 0.f, 0.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_Hurled, kKBAFU_None, 0.f, -1.f},
            {kAR_Hurled, kKBAFU_None, 0.f, -1.f},
            {kAR_None, kKBAFU_None, 0.f, 0.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_KnockBack, kKBAFU_None, 0.f, -1.f},
            {kAR_Hurled, kKBAFU_None, 0.f, -1.f},
            {kAR_None, kKBAFU_None, 0.f, 0.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_Flinch, kKBAFU_None, 0.f, -1.f},
            {kAR_Fall, kKBAFU_Shock, 2.f, -1.f},
            {kAR_None, kKBAFU_None, 0.f, -1.f},
            {kAR_Fall, kKBAFU_Shock, 1.f, 0.f},
        },
        {
            {kAR_Flinch, kKBAFU_Shock, 2.f, -1.f},
            {kAR_Fall, kKBAFU_Shock, 2.f, -1.f},
            {kAR_None, kKBAFU_None, 0.f, -1.f},
            {kAR_Fall, kKBAFU_Shock, 2.f, 0.f},
        },
        {
            {kAR_None, kKBAFU_Shock, 4.f, -1.f},
            {kAR_Hurled, kKBAFU_Shock, 4.f, -1.f},
            {kAR_None, kKBAFU_None, 0.f, -1.f},
            {kAR_Fall, kKBAFU_Shock, 4.f, 0.f},
        },
        {
            {kAR_Hurled, kKBAFU_Shock, 4.f, -1.f},
            {kAR_Hurled, kKBAFU_Shock, 4.f, -1.f},
            {kAR_Hurled, kKBAFU_Shock, 4.f, 0.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_None, kKBAFU_Freeze, 2.5f, -1.f},
            {kAR_Fall, kKBAFU_None, 0.f, 0.f},
            {kAR_None, kKBAFU_Freeze, 2.5f, -1.f},
            {kAR_Fall, kKBAFU_None, 0.f, 0.f},
        },
        {
            {kAR_None, kKBAFU_Freeze, 2.5f, -1.f},
            {kAR_Fall, kKBAFU_None, 0.f, 0.f},
            {kAR_None, kKBAFU_Freeze, 2.5f, -1.f},
            {kAR_Fall, kKBAFU_None, 0.f, 0.f},
        },
        {
            {kAR_None, kKBAFU_Freeze, 4.5f, -1.f},
            {kAR_Fall, kKBAFU_None, 0.f, 0.f},
            {kAR_None, kKBAFU_Freeze, 4.5f, -1.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_None, kKBAFU_Freeze, 2.5f, -1.f},
            {kAR_Fall, kKBAFU_None, 0.f, 0.f},
            {kAR_None, kKBAFU_Freeze, 2.5f, -1.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_Flinch, kKBAFU_Burn, 6.f, -1.f},
            {kAR_Fall, kKBAFU_Burn, 6.f, -1.f},
            {kAR_KnockBack, kKBAFU_Burn, 6.f, 0.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_KnockBack, kKBAFU_Burn, 6.f, -1.f},
            {kAR_Fall, kKBAFU_Burn, 6.f, -1.f},
            {kAR_KnockBack, kKBAFU_Burn, 6.f, 0.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_None, kKBAFU_Burn, 6.f, -1.f},
            {kAR_Fall, kKBAFU_BurnDeath, 0.f, -1.f},
            {kAR_KnockBack, kKBAFU_Burn, 6.f, 0.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_Flinch, kKBAFU_None, 0.f, -1.f},
            {kAR_Hurled, kKBAFU_None, 0.f, -1.f},
            {kAR_KnockBack, kKBAFU_IceDeath, 0.f, 0.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_Flinch, kKBAFU_None, 0.f, -1.f},
            {kAR_Fall, kKBAFU_None, 0.f, -1.f},
            {kAR_None, kKBAFU_None, 0.f, 0.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_Hurled, kKBAFU_LaggedBurnDeath, 0.f, -1.f},
            {kAR_Hurled, kKBAFU_LaggedBurnDeath, 0.f, -1.f},
            {kAR_Hurled, kKBAFU_IceDeath, 0.f, -1.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
        {
            {kAR_Flinch, kKBAFU_None, 0.f, -1.f},
            {kAR_Fall, kKBAFU_PhazeOut, 0.f, -1.f},
            {kAR_Hurled, kKBAFU_IceDeath, 0.f, -1.f},
            {kAR_Fall, kKBAFU_IceDeath, 0.f, -1.f},
        },
    },
};

static const float skImpulseDurations[2] = {0.1f, 0.3f};

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

void CKnockBackMgr::EnableAnimReaction(EAnimReaction state, bool enabled) {
  const uchar mask = 1 << state;
  if (enabled) {
    x80_availableStates |= mask;
  } else {
    x80_availableStates &= ~mask;
  }
}

bool CKnockBackMgr::TestAvailableState(int state) const {
  const uchar mask = 1 << state;
  return (x80_availableStates & mask) != 0;
}

void CKnockBackMgr::SetAnimationStateRange(EAnimReaction min, EAnimReaction max) {
  x18_minAnimState = min;
  x1c_maxAnimState = max;
}

void CKnockBackMgr::SetImpulseDurationIdx(int index) { x20_impulseDurationIdx = index; }

void CKnockBackMgr::SetAutoResetImpulse(bool enabled) {
  x81_24_autoResetImpulse = enabled;
  if (!x81_24_autoResetImpulse) {
    x5c_impulseMag = 0.f;
    x60_impulseRemTime = 0.f;
  }
}

void CKnockBackMgr::sub80233d40(int index, float min, float max) {
  if (index >= 0 && index <= 4) {
    x24_[index] = rstl::pair< float, float >(min, max);
  }
}

void CKnockBackMgr::DeferKnockBack(EWeaponType type) {
  x14_deferWeaponType = type;
  x68_deferRemTime = 0.05f;
}

void CKnockBackMgr::SetCreatureSize(ECreatureSize size) { x0_size = size; }

void CKnockBackMgr::KnockBack(const CVector3f& backVec, CStateManager& mgr, CPatterned& parent,
                              const CDamageInfo& info, float magnitude, bool direct) {
  if (x82_25_inDeferredKnockBack) {
    return;
  }
  CVector3f vec(backVec.DropZ(), 0.f);
  if (!vec.IsMagnitudeSafe()) {
    vec = -parent.GetTransform().GetForward();
  }
  SelectDamageState(parent, info, info.GetWeaponMode().GetType(), direct);
  DoKnockBackAnimation(vec, mgr, parent, magnitude);
  ResetKnockBackImpulse(parent, vec, 2.f);
}

void CKnockBackMgr::Update(float dt, CStateManager& mgr, CPatterned& parent) {
  ApplyImpulse(dt, parent);
  x64_flinchRemTime -= dt;
  if (TickDeferredTimer(dt)) {
    DoDeferredKnockBack(mgr, parent);
  }
  if (x82_26_locomotionDuringElectrocution && parent.BodyCtrl()->IsElectrocuting()) {
    parent.BodyCtrl()->CommandMgr().DeliverCmd(CBodyStateCmd(kBSC_Locomotion));
  }
}

void CKnockBackMgr::SelectDamageState(CPatterned& parent, const CDamageInfo& info,
                                      EWeaponType wType, bool direct) {
  x4_activeParms = skDefaultParameters;
  const EKnockBackWeaponType weapon = GetKnockBackWeaponType(info, wType, direct);
  if (weapon != kKBWT_Invalid) {
    const EKnockBackCharacterState state = GetKnockBackCharacterState(parent);
    x4_activeParms = skKnockBackParameters[x0_size][weapon][state];
    ValidateState(parent);
  }
}

EKnockBackWeaponType CKnockBackMgr::GetKnockBackWeaponType(const CDamageInfo& info,
                                                           EWeaponType wType, bool direct) {
  EKnockBackWeaponType result = kKBWT_Invalid;
  int stacking = 0;
  if (info.GetWeaponMode().IsCharged()) {
    stacking = 1;
  } else if (info.GetWeaponMode().IsComboed()) {
    stacking = 2;
  }
  switch (wType) {
  case kWT_Power:
    result = static_cast< EKnockBackWeaponType >(stacking);
    if (!direct) {
      result = static_cast< EKnockBackWeaponType >(result + 1);
    }
    break;
  case kWT_Ice:
    result = static_cast< EKnockBackWeaponType >(stacking + 8);
    if (!direct) {
      result = static_cast< EKnockBackWeaponType >(result + 1);
    }
    break;
  case kWT_Wave:
    result = static_cast< EKnockBackWeaponType >(stacking + 4);
    break;
  case kWT_Plasma:
    result = static_cast< EKnockBackWeaponType >(stacking + 12);
    break;
  case kWT_Bomb:
    result = kKBWT_Bomb;
    break;
  case kWT_PowerBomb:
    result = kKBWT_PowerBomb;
    break;
  case kWT_Missile:
    result = kKBWT_Missile;
    break;
  case kWT_Phazon:
    result = kKBWT_Phazon;
    break;
  default:
    break;
  }
  return result;
}

EKnockBackCharacterState CKnockBackMgr::GetKnockBackCharacterState(CPatterned& parent) {
  if (parent.BodyCtrl()->IsFrozen()) {
    return parent.IsAlive() ? kKBCS_FrozenAlive : kKBCS_FrozenDead;
  }
  return parent.IsAlive() ? kKBCS_Alive : kKBCS_Dead;
}

float CKnockBackMgr::CalculateExtraHurlVelocity(CStateManager& mgr, float magnitude,
                                                float kbResistance) {
  float velocity = 0.f;
  if (magnitude > kbResistance) {
    const float randomFactor = 1.1f - 0.2f * mgr.Random()->Float();
    velocity = 2.f * randomFactor * (magnitude - kbResistance);
  }
  return velocity;
}

void CKnockBackMgr::ValidateState(CPatterned& parent) {
  if (x4_activeParms.x0_animState < x18_minAnimState) {
    x4_activeParms.x0_animState = x18_minAnimState;
  } else if (x4_activeParms.x0_animState > x1c_maxAnimState) {
    x4_activeParms.x0_animState = x1c_maxAnimState;
  }
  EAnimReaction state = kAR_Invalid;
  CBodyController& body = *parent.BodyCtrl();
  if (parent.IsAlive()) {
    if (body.HasBodyState(pas::kAS_Hurled) && TestAvailableState(kAR_Hurled) &&
        x4_activeParms.x0_animState >= kAR_Hurled) {
      state = kAR_Hurled;
    } else if (body.HasBodyState(pas::kAS_KnockBack) && TestAvailableState(kAR_KnockBack) &&
               x4_activeParms.x0_animState >= kAR_KnockBack) {
      state = kAR_KnockBack;
    } else if (body.HasBodyState(pas::kAS_AdditiveFlinch) && TestAvailableState(kAR_Flinch) &&
               x4_activeParms.x0_animState >= kAR_Flinch) {
      state = kAR_Flinch;
    }
  } else if (body.HasBodyState(pas::kAS_Fall) && TestAvailableState(kAR_Fall) &&
             (x4_activeParms.x0_animState >= kAR_Fall ||
              (!body.HasBodyState(pas::kAS_Hurled) && x4_activeParms.x0_animState >= kAR_Hurled))) {
    state = kAR_Fall;
  } else if (body.HasBodyState(pas::kAS_Hurled) && TestAvailableState(kAR_Hurled) &&
             x4_activeParms.x0_animState >= kAR_Hurled) {
    state = kAR_Hurled;
  }
  x4_activeParms.x0_animState = state != kAR_Invalid ? state : kAR_None;
  bool disableFollowup = false;
  switch (x4_activeParms.x4_animFollowup) {
  case kKBAFU_Freeze:
    disableFollowup = !x81_25_enableFreeze;
    break;
  case kKBAFU_Shock:
    disableFollowup = !x81_26_enableShock;
    break;
  case kKBAFU_Burn:
    disableFollowup = !x81_27_enableBurn;
    break;
  case kKBAFU_ExplodeDeath:
    disableFollowup = !x81_29_enableExplodeDeath;
    break;
  case kKBAFU_IceDeath:
    disableFollowup = !x81_29_enableExplodeDeath;
    break;
  case kKBAFU_BurnDeath:
    disableFollowup = !x81_28_enableBurnDeath;
    break;
  case kKBAFU_LaggedBurnDeath:
    disableFollowup = !x81_30_enableLaggedBurnDeath;
    break;
  default:
    break;
  }
  if (disableFollowup) {
    x4_activeParms.x4_animFollowup = kKBAFU_None;
    x4_activeParms.x8_followupDuration = 0.f;
  }
}

bool CKnockBackMgr::TickDeferredTimer(float dt) {
  x68_deferRemTime -= dt;
  if (x14_deferWeaponType != kWT_None) {
    return x68_deferRemTime <= 0.f;
  }
  return false;
}

void CKnockBackMgr::ResetKnockBackImpulse(CPatterned& parent, const CVector3f& backVec,
                                          float magnitude) {
  if (x81_24_autoResetImpulse && x4_activeParms.x0_animState == kAR_KnockBack &&
      x4_activeParms.x4_animFollowup != kKBAFU_Freeze) {
    x50_impulseDir =
        backVec.CanBeNormalized() ? backVec.AsNormalized() : -parent.GetTransform().GetForward();
    if (x60_impulseRemTime <= 0.f) {
      x5c_impulseMag = magnitude;
    } else {
      x5c_impulseMag +=
          magnitude * (1.f - x60_impulseRemTime / skImpulseDurations[x20_impulseDurationIdx]);
    }
    x60_impulseRemTime = skImpulseDurations[x20_impulseDurationIdx];
  }
}

void CKnockBackMgr::ApplyImpulse(float dt, CPatterned& parent) {
  x60_impulseRemTime = CMath::Max(0.f, x60_impulseRemTime - dt);
  if (!parent.GetMaterialList().HasMaterial(kMT_Immovable) && x60_impulseRemTime > 0.f) {
    float remFac = 1.f;
    switch (x20_impulseDurationIdx) {
    case 1:
      remFac = x60_impulseRemTime / skImpulseDurations[x20_impulseDurationIdx];
      break;
    }
    const CVector3f velocity = remFac * x5c_impulseMag * x50_impulseDir;
    const CVector3f displacement = dt * velocity;
    const CVector3f movement = displacement / skImpulseDurations[x20_impulseDurationIdx];
    CVector3f impulse =
        parent.GetMoveToORImpulseWR(parent.GetTransform().TransposeRotate(movement), dt);
    parent.ApplyImpulseWR(impulse, CAxisAngle::Identity());
  }
}

void CKnockBackMgr::DoDeferredKnockBack(CStateManager& mgr, CPatterned& parent) {
  if (x14_deferWeaponType == kWT_Wave) {
    const EKnockBackCharacterState state = GetKnockBackCharacterState(parent);
    x4_activeParms = skKnockBackParameters[x0_size][kKBWT_WaveComboedDirect][state];
    ValidateState(parent);
    if (parent.HealthInfo(mgr)) {
      const CVector3f backVec = -parent.GetTransform().GetForward();
      DoKnockBackAnimation(backVec, mgr, parent, 10.f);
      ResetKnockBackImpulse(parent, backVec, 2.f);
      CDamageInfo info(CWeaponMode(x14_deferWeaponType, false, true, false), 0.f, 0.f, 10.f);
      x82_25_inDeferredKnockBack = true;
      parent.KnockBack(backVec, mgr, info, 10.f, true, x82_25_inDeferredKnockBack);
      x82_25_inDeferredKnockBack = false;
    }
  }
  x68_deferRemTime = 0.f;
  x4_activeParms = skDefaultParameters;
  x14_deferWeaponType = kWT_None;
}

void CKnockBackMgr::DoKnockBackAnimation(const CVector3f& backVec, CStateManager& mgr,
                                         CPatterned& parent, float magnitude) {
  CBodyController& body = *parent.BodyCtrl();
  switch (x4_activeParms.x0_animState) {
  case kAR_Hurled: {
    float hurlVelocity = 5.f;
    if (CHealthInfo* health = parent.HealthInfo(mgr)) {
      hurlVelocity += CalculateExtraHurlVelocity(mgr, magnitude, health->GetKnockBackResistance());
    }
    hurlVelocity = CMath::SqrtF(0.5f * hurlVelocity * parent.GetGravityConstant());
    const CVector3f backUpVec = backVec + backVec.Magnitude() * CVector3f::Up();
    if (backUpVec.CanBeNormalized()) {
      body.CommandMgr().DeliverCmd(CBCHurledCmd(-backVec, hurlVelocity * backUpVec.AsNormalized()));
      parent.SetMomentumWR(CVector3f(0.f, 0.f, -parent.GetMass() * parent.GetGravityConstant()));
    }
    break;
  }
  case kAR_Fall:
    body.CommandMgr().DeliverCmd(CBCKnockDownCmd(-backVec, x7c_severity));
    break;
  case kAR_KnockBack:
    body.CommandMgr().DeliverCmd(CBCKnockBackCmd(-backVec, x7c_severity));
    break;
  case kAR_Flinch: {
    const CPASDatabase& db = body.GetPASDatabase();
    const CPASAnimParmData parms(pas::kAS_AdditiveFlinch);
    const rstl::pair< float, int > best = db.FindBestAnimation(parms, *mgr.Random(), -1);
    if (best.first > 0.f) {
      parent.ModelData()->AnimationData()->AddAdditiveAnimation(best.second, 1.f, false, true);
      x64_flinchRemTime =
          rstl::max_val(x64_flinchRemTime,
                        parent.ModelData()->AnimationData()->GetAnimationDuration(best.second));
    }
    break;
  }
  default:
    break;
  }
}
