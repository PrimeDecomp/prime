#include "MetroidPrime/Enemies/CMetroid.hpp"

#include "Kyoto/Animation/CSegId.hpp"

const uint CMetroidData::skNumProperties = 20;

class SSomething {
public:
  SSomething(uchar _a, uchar _b, uchar _c, uchar _d) : a(_a), b(_b), c(_c), d(_d) {}

private:
  uchar a;
  uchar b;
  uchar c;
  uchar d;
};
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
, mBlueAnimation(rstl::optional_object< CAnimationParameters >(LoadAnimationParameters(in)))
, mPurpleAnimation(rstl::optional_object< CAnimationParameters >(LoadAnimationParameters(in)))
, mYellowAnimation(rstl::optional_object< CAnimationParameters >(LoadAnimationParameters(in)))
, mStartsInWall(in.Get< bool >()) {}