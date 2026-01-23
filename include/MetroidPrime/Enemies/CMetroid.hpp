#ifndef _CMETROID
#define _CMETROID

#include "Collision/CCollidableSphere.hpp"
#include "MetroidPrime/CActorParameters.hpp"
#include "MetroidPrime/Enemies/CPatterned.hpp"
#include "MetroidPrime/PathFinding/CPathFindSearch.hpp"

class CMetroidData {
  static const uint skNumProperties;

public:
  enum EGammaFlavor {
    kGF_Invalid,
    kGF_Red,
    kGF_White,
    kGF_Purple,
    kGF_Yellow,
  };
  CMetroidData(CInputStream& in);
  ~CMetroidData();

  static uint GetNumProperties() { return skNumProperties; }

  uint GetNumValidGammaModels() const;

  const rstl::optional_object< CAnimationParameters >&
  GetSpawnedGammaAnimParms(const EGammaFlavor flavor) const;

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
class CMetroid : public CPatterned {
  static const CDamageVulnerability skGammaRedDamageVulnerability;
  static const CDamageVulnerability skGammaWhiteDamageVulnerability;
  static const CDamageVulnerability skGammaPurpleDamageVulnerability;
  static const CDamageVulnerability skGammaYellowDamageVulnerability;
  static const CDamageVulnerability skStandingFaceHugVulnerability;
  static const CColor skGammaRedColorMod;
  static const CColor skGammaWhiteColorMod;
  static const CColor skGammaPurpleColorMod;
  static const CColor skGammaYellowColorMod;

public:
  CMetroid(const TUniqueId uid, const rstl::string& name, const EFlavorType flavor,
           const CEntityInfo& info, const CTransform4f& xf, const CModelData& mData,
           const CPatternedInfo& pInfo, const CActorParameters& aParms,
           const CMetroidData& metroidData, const TUniqueId other);
  ~CMetroid();
  void UpdateTouchBounds();

  void Accept(IVisitor& visitor) override;

private:
  enum EAIState {
    kAiState_Invalid = -1,
    kAiState_Zero,
    kAiState_One,
    kAiState_Two,
    kAiState_Over,
  };

  enum EAttackState {
    kAttackState_None,
    kAttackState_Attached,
    kAttackState_Draining,
    kAttackState_Over,
  };

  // TODO: Reconcile this with CMetroidData::EGammaFlavor
  enum EGammaType {
    kGF_Invalid = -1,
    kGF_Normal,
    kGF_Red,
    kGF_White,
    kGF_Purple,
    kGF_Orange,
  };

  EAIState mState;
  CMetroidData mMetroidData;
  TUniqueId mTeamAiManagerId;
  CCollidableSphere mCollisionPrimitive;
  CPathFindSearch mPathFindSearch;
  CVector3f x7a4;
  TUniqueId mAttackTarget;
  float mAttackChance;
  float mTelegraphAttackTime;
  float mEnergyDrained;
  float mEnergyDrainTime;
  float x7c0;
  EAttackState mAttackState;
  EGammaType mGammaType;
  CVector3f mScale1;
  CVector3f mScale2;
  CVector3f mScale3;
  float mGrowthDuration;
  float mGrowthEnergy;
  float mLastGrowthEnergy;
  float mSeekTime;
  float mMaxSeekTime;
  float mLoopAttackDistance;
  CVector3f mDetachPos;
  pas::EStepDirection mDodgeDirection;
  CPatternedInfo mPatternedInfo;
  CActorParameters mActorParameters;
  TUniqueId mParent;
  uchar x9be;
  bool mAlert : 1;
  bool mGrowing : 1;
  bool mShotAt : 1;
  bool x9bf_27_ : 1;
  bool x9bf_28_ : 1;
  bool mIsAttacking : 1;
  bool mRestoreSolidCollision : 1;
  bool mRestoreCharacterCollision : 1;
  bool mIsEnergyDrainVulnerable : 1;
};

#endif // _CMETROID
