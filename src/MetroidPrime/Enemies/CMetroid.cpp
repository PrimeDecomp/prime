#include "MetroidPrime/Enemies/CMetroid.hpp"
#include "MetroidPrime/Enemies/CTeamAiMgr.hpp"

#include "Kyoto/Animation/CPASAnimParmData.hpp"
#include "Kyoto/Animation/CSegId.hpp"

const uint CMetroidData::skNumProperties = 20;

const CDamageVulnerability
    CMetroid::skGammaRedDamageVulnerability(kVN_Deflect, kVN_Deflect, kVN_Deflect, kVN_Immune,
                                            kVN_Deflect, kVN_Normal, kVN_Deflect, kVN_Deflect,
                                            kVN_Normal, kVN_Deflect, kVN_Deflect, kVN_Deflect,
                                            kVN_Deflect, kVN_Deflect, kVN_Deflect, kDT_None);

const CDamageVulnerability
    CMetroid::skGammaWhiteDamageVulnerability(kVN_Deflect, kVN_Immune, kVN_Deflect, kVN_Deflect,
                                              kVN_Deflect, kVN_Normal, kVN_Deflect, kVN_Deflect,
                                              kVN_Normal, kVN_Deflect, kVN_Deflect, kVN_Deflect,
                                              kVN_Deflect, kVN_Deflect, kVN_Deflect, kDT_None);
const CDamageVulnerability
    CMetroid::skGammaPurpleDamageVulnerability(kVN_Deflect, kVN_Deflect, kVN_Immune, kVN_Deflect,
                                               kVN_Deflect, kVN_Normal, kVN_Deflect, kVN_Deflect,
                                               kVN_Normal, kVN_Deflect, kVN_Deflect, kVN_Deflect,
                                               kVN_Deflect, kVN_Deflect, kVN_Deflect, kDT_None);

const CDamageVulnerability
    CMetroid::skGammaYellowDamageVulnerability(kVN_Immune, kVN_Deflect, kVN_Deflect, kVN_Deflect,
                                               kVN_Deflect, kVN_Normal, kVN_Deflect, kVN_Deflect,
                                               kVN_Normal, kVN_Deflect, kVN_Deflect, kVN_Deflect,
                                               kVN_Deflect, kVN_Deflect, kVN_Deflect, kDT_None);
const CDamageVulnerability
    CMetroid::skStandingFaceHugVulnerability(kVN_Deflect, kVN_Deflect, kVN_Deflect, kVN_Deflect,
                                             kVN_Deflect, kVN_Normal, kVN_Deflect, kVN_Deflect,
                                             kVN_Deflect, kVN_Deflect, kVN_Deflect, kVN_Deflect,
                                             kVN_Deflect, kVN_Deflect, kVN_Deflect, kDT_None);

const CColor CMetroid::skGammaRedColorMod(static_cast< uchar >(254), 0, 40);
const CColor CMetroid::skGammaWhiteColorMod(static_cast< uchar >(216), 216, 216);
const CColor CMetroid::skGammaPurpleColorMod(static_cast< uchar >(198), 14, 255);
const CColor CMetroid::skGammaYellowColorMod(static_cast< uchar >(253), 239, 86);

CMetroidData::CMetroidData(CInputStream& in)
: mFrozenVulnerability(in)
, mEnergyDrainVulnerability(in)
, mEnergyDrainPerSecond(in.Get< float >())
, mMaxEnergyDrainAllowed(in.Get< float >())
, mTelegraphAttackTime(in.Get< float >())
, mStage2GrowthScale(in.Get< float >())
, mStage2GrowthEnergy(in.Get< float >())
, mExplosionGrowthEnergy(in.Get< float >())
, mRedAnimation(rstl::optional_object< CAnimationParameters >(LoadAnimationParameters(in)))
, mWhiteAnimation(rstl::optional_object< CAnimationParameters >(LoadAnimationParameters(in)))
, mPurpleAnimation(rstl::optional_object< CAnimationParameters >(LoadAnimationParameters(in)))
, mYellowAnimation(rstl::optional_object< CAnimationParameters >(LoadAnimationParameters(in)))
, mStartsInWall(in.Get< bool >()) {}

uint CMetroidData::GetNumValidGammaModels() const {
  uint numValidGammaModels = 0;
  if (mRedAnimation) {
    numValidGammaModels++;
  }
  if (mWhiteAnimation) {
    numValidGammaModels++;
  }
  if (mPurpleAnimation) {
    numValidGammaModels++;
  }
  if (mYellowAnimation) {
    numValidGammaModels++;
  }
  return numValidGammaModels;
}

const rstl::optional_object< CAnimationParameters >&
CMetroidData::GetSpawnedGammaAnimParms(const EGammaFlavor flavor) const {
  switch (flavor) {
  case kGF_Red:
    return mRedAnimation;
  case kGF_White:
    return mWhiteAnimation;
  case kGF_Purple:
    return mPurpleAnimation;
  case kGF_Yellow:
    return mYellowAnimation;
  default:
    return mRedAnimation;
  }
}

static const float kTest = 0.9f;

CMetroid::CMetroid(const TUniqueId uid, const rstl::string& name, const EFlavorType flavor,
                   const CEntityInfo& info, const CTransform4f& xf, const CModelData& mData,
                   const CPatternedInfo& pInfo, const CActorParameters& aParms,
                   const CMetroidData& metroidData, const TUniqueId other)
: CPatterned(kC_Metroid, uid, name, flavor, info, xf, mData, pInfo, kMT_Flyer, kCT_One, kBT_Flyer,
             aParms, kKBV_Medium)
, mState(kAiState_Invalid)
, mMetroidData(metroidData)
, mTeamAiManagerId(kInvalidUniqueId)
, mCollisionPrimitive(CSphere(CVector3f::Zero(), GetModelData()->ScaleCopy().GetY() * 0.9f), GetMaterialList())
, mPathFindSearch(nullptr, 1 | 2, pInfo.GetPathfindingIndex(), 1.f, 1.f)
, x7a4(CVector3f::Zero())
, mAttackTarget(kInvalidUniqueId)
, mAttackChance(0.f)
, mTelegraphAttackTime(0.f)
, mEnergyDrained(0.f)
, mEnergyDrainTime(0.f)
, x7c0(0.f)
, mAttackState(kAttackState_None)
, mGammaType(flavor != kFT_Two ? CMetroidData::kGF_Invalid : CMetroidData::kGF_Normal)
, mScale1(ModelData()->ScaleCopy())
, mScale2(ModelData()->ScaleCopy())
, mScale3(ModelData()->ScaleCopy())
, mGrowthDuration(0.f)
, mGrowthEnergy(0.f)
, mLastGrowthEnergy(0.f)
, mSeekTime(0.f)
, mMaxSeekTime(0.f)
, mLoopAttackDistance(0.f)
, mDetachPos(CVector3f::Zero())
, mDodgeDirection(pas::kSD_Invalid)
, mPatternedInfo(pInfo)
, mActorParameters(aParms)
, mParent(other)
, x9be(0)
, mAlert(false)
, mGrowing(false)
, mShotAt(false)
, x9bf_27_(false)
, x9bf_28_(false)
, mIsAttacking(false)
, mRestoreCharacterCollision(false)
, mRestoreSolidCollision(false)
, mIsEnergyDrainVulnerable(false) {
  const CPASAnimParmData pasAnimParms(pas::kAS_LoopAttack, CPASAnimParm::FromEnum(2),
                                      CPASAnimParm::FromEnum(3));
  mLoopAttackDistance = GetAnimationDistance(pasAnimParms);

  UpdateTouchBounds();
  SetCoefficientOfRestitutionModifier(0.9f);
  GetKnockBackCtrl().SetX82_24(false);
  GetKnockBackCtrl().SetEnableBurn(false);
  GetKnockBackCtrl().SetEnableBurnDeath(false);
  GetKnockBackCtrl().SetEnableShock(false);
  if (GetFlavorType() == kFT_Two) {
    GetKnockBackCtrl().SetEnableFreeze(false);
  }
  mPatternedInfo.SetActive(true);
}

CMetroid::~CMetroid() {}

void CMetroid::Accept(IVisitor& visitor) { visitor.Visit(*this); }

void CMetroid::Think(float dt, CStateManager& mgr) {
  if (!GetActive()) {
    return;
  }
  
  //CTeamAiMgr
  CPatterned::Think(dt, mgr);
}
