#ifndef _CMETROIDDATA
#define _CMETROIDDATA

#include "types.h"

#include "MetroidPrime/CAnimationParameters.hpp"
#include "MetroidPrime/CDamageVulnerability.hpp"

#include "rstl/optional_object.hpp"

class CMetroidData {
  static const uint skNumProperties;

public:
  enum EGammaFlavor {
    kGF_Invalid = -1,
    kGF_Normal,
    kGF_Red,
    kGF_White,
    kGF_Purple,
    kGF_Yellow,
  };

  CMetroidData(CInputStream& in);

  static uint GetNumProperties() { return skNumProperties; }

  const CDamageVulnerability& GetFrozenVulnerability() const { return mFrozenVulnerability; }
  const CDamageVulnerability& GetEnergyDrainVulnerability() const {
    return mEnergyDrainVulnerability;
  }
  float GetEnergyDrainPerSec() const { return mEnergyDrainPerSecond; }
  float GetMaxEnergyDrainAllowed() const { return mMaxEnergyDrainAllowed; }
  float GetTelegraphAttackTime() const { return mTelegraphAttackTime; }
  float GetStage2GrowthScale() const { return mStage2GrowthScale; }
  float GetStage2GrowthEnergy() const { return mStage2GrowthEnergy; }
  float GetExplosionGrowthEnergy() const { return mExplosionGrowthEnergy; }
  bool GetStartsInWall() const { return mStartsInWall; }
  void SetStartsInWall(bool v) { mStartsInWall = v; }

  uint GetNumValidGammaModels() const;
  const rstl::optional_object< CAnimationParameters >&
  GetSpawnedGammaAnimParms(EGammaFlavor flavor) const;

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
  rstl::optional_object< CAnimationParameters > mWhiteAnimation;
  rstl::optional_object< CAnimationParameters > mPurpleAnimation;
  rstl::optional_object< CAnimationParameters > mYellowAnimation;
  bool mStartsInWall : 1;
};
CHECK_SIZEOF(CMetroidData, 0x12C)

#endif // _CMETROIDDATA
