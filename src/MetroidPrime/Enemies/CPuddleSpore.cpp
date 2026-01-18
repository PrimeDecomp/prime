#include "MetroidPrime/Enemies/CPuddleSpore.hpp"

#include "Kyoto/Particles/CElementGen.hpp"

int CPuddleSpore::kEyeCount = 16;
const char* CPuddleSpore::kEyeLocators[] = {
  "Glow_1_LCTR",
  "Glow_2_LCTR",
  "Glow_3_LCTR",
  "Glow_4_LCTR",
  "Glow_5_LCTR",
  "Glow_6_LCTR",
  "Glow_7_LCTR",
  "Glow_8_LCTR",
  "Glow_9_LCTR",
  "Glow_10_LCTR",
  "Glow_11_LCTR",
  "Glow_12_LCTR",
  "Glow_13_LCTR",
  "Glow_14_LCTR",
  "Glow_15_LCTR",
  "Glow_16_LCTR",
};

CPuddleSpore::CPuddleSpore(const TUniqueId uid, const rstl::string& name, const EFlavorType,
                           const CEntityInfo& info, const CTransform4f& xf, const CModelData& mData,
                           const CPatternedInfo& pInfo, const EColliderType colType, const CAssetId glowFx,
                           const float f1, const float f2, const float f3, const float f4, const float f5,
                           const CActorParameters& actParms, const CAssetId weapon,
                           const CDamageInfo& dInfo)
: CPatterned(kC_PuddleSpore, uid, name, x3fc_flavor, info, xf, mData, pInfo, kMT_Flyer, colType,
             kBT_Restricted, actParms, kKBV_Medium)
, x568_(0.f)
, x56c_(0.f)
, x570_(f1)
, x574_(f2)
, x578_(f3)
, x57c_(f4)
, x580_(f5)
, mBodyOrigin(pInfo.xcc_bodyOrigin)
, mHalfExtent(pInfo.xc4_halfExtent)
, mHeight(pInfo.xc8_height)
, x598_(0.f)
, x59c_(1.f)
, x5a0_(CalculateBoundingBox(), GetMaterialList())
, x5c8_(0)
, x5cc_(0)
, x5d0_(gpSimplePool->GetObj(SObjectTag('PART', glowFx)))
, mProjectileInfo(weapon, dInfo)
, x614_24(false)
, x614_25(false) {
  mParticles.reserve(kEyeCount);
  for (int i = 0; i < kEyeCount; ++i) {
    mParticles.push_back(x5d0_);
  }

  mProjectileInfo.Token().Lock();
  GetKnockBackCtrl().SetAutoResetImpulse(false);
}