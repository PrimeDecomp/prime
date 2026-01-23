#ifndef _CMETROID
#define _CMETROID

#include "MetroidPrime/Enemies/CPatterned.hpp"

class CMetroidData {
  static const uint skNumProperties;

public:
  CMetroidData(CInputStream& in);

  static uint GetNumProperties() { return skNumProperties; }

private:
  CDamageVulnerability mFrozenVulnerability;
  CDamageVulnerability mEnergyDrainVulnerability;
  float mEnergyDrainPerSecond;
  float mMaxEnergyDrainAllowed;
  float mTelegraphAttackTime;
  float mStage2GrowthScale;
  float mStage2GrowthEnergy;
  float mExplosionGrowthEnergy;
  rstl::optional_object< CAnimationParameters > mRedAnimation;
  rstl::optional_object< CAnimationParameters > mBlueAnimation;
  rstl::optional_object< CAnimationParameters > mPurpleAnimation;
  rstl::optional_object< CAnimationParameters > mYellowAnimation;
  bool mStartsInWall : 1;
};
class CMetroid : public CPatterned {
private:
  static const CDamageVulnerability skGammaRedDamageVulnerability;
  static const CDamageVulnerability skGammaWhiteDamageVulnerability;
  static const CDamageVulnerability skGammaPurpleDamageVulnerability;
  static const CDamageVulnerability skGammaYellowDamageVulnerability;
  static const CDamageVulnerability skStandingFaceHugVulnerability;
  static const CColor skGammaRedColorMod;
  static const CColor skGammaWhiteColorMod;
  static const CColor skGammaPurpleColorMod;
  static const CColor skGammaYellowColorMod;
};

#endif // _CMETROID
