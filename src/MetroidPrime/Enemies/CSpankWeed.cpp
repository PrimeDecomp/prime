#include "MetroidPrime/Enemies/CSpankWeed.hpp"

#include "MetroidPrime/Collision/CJointCollisionDescription.hpp"

static const char* Arm_2 = "Arm_2";
static const char* Arm_3 = "Arm_3";
static const char* Arm_4 = "Arm_4";
static const char* Arm_5 = "Arm_5";
static const char* Arm_6 = "Arm_6";
static const char* Arm_7 = "Arm_7";
static const char* Arm_8 = "Arm_8";
static const char* Arm_9 = "Arm_9";
static const char* Arm_10 = "Arm_10";
static const char* Arm_11 = "Arm_11";
static const char* Arm_12 = "Arm_12";
static const char* Arm_end = "Arm_end";

const SSphereJointInfo CSpankWeed::skSphereJointInfoList[] = {
    {"Arm_4", 1.5f}, {"Arm_6", 1.f},  {"Arm_7", 1.f},        {"Arm_8", 1.f},
    {"Arm_9", 1.f},  {"Arm_11", 1.f}, {"swoosh_LCTR", 1.5f},
};

static const char* lockon_target_LCTR = "lockon_target_LCTR";
static const char* Eye = "Eye";

CSpankWeed::CSpankWeed(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                       const CTransform4f& xf, const CModelData& mData,
                       const CActorParameters& actParms, const CPatternedInfo& pInfo,
                       float maxDetectionRange, float maxHearingRange, float maxSightRange,
                       float hideTime)
: CPatterned(kC_SpankWeed, uid, name, kFT_Zero, info, xf, mData, pInfo, kMT_Flyer, kCT_One,
             kBT_Restricted, actParms, kKBV_Medium)
, x568_maxDetectionRange(maxDetectionRange)
, x56c_detectionHeightRange(pInfo.GetDetectionHeightRange())
, x570_maxHearingRange(maxHearingRange)
, x574_maxSightRange(maxSightRange)
, x578_hideTime(hideTime)
, x57c_canKnockBack(false)
, x580_(0.f)
, x584_retreatOrigin(xf.GetTranslation())
, x590_(kInvalidUniqueId)
, x598_isHiding(false)
, x59c_lockonOffset(CVector3f::Zero())
, x5a8_lockonTarget(CVector3f::Zero())
, x5b4_(-1)
, x5b8_(-1)
, x5bc_(-1) {
  SetCallTouch(false);
  SetDrawShadow(false);
  const CVector3f modelScale = GetModelData()->GetScale();
  if (modelScale.GetX() != modelScale.GetY() || modelScale.GetX() != modelScale.GetZ()) {
    const float mag = modelScale.Magnitude();
    const float scale = CMath::SqrtF(3.f);
    ModelData()->SetScale(CVector3f(mag / scale, mag / scale, mag / scale));
    char buf[1024];
    sprintf(
        buf,
        "WARNING: Non-uniform scale (%.2f, %.2f, %.2f) applied to Spank Weed...changing scale to "
        "(%.2f, %.2f, %.2f)\n",
        modelScale.GetX(), modelScale.GetY(), modelScale.GetZ(), mag, mag, mag);
  }

  CMaterialList list = GetMaterialFilter().GetExcludeList();
  list.Add(CMaterialList(kMT_Character, kMT_Player));
  SetMaterialFilter(
      CMaterialFilter::MakeIncludeExclude(GetMaterialFilter().GetIncludeList(), list));

  const CSegId lockonLctr = AnimationData()->GetLocatorSegId(rstl::string_l("lockon_target_LCTR"));

  if (lockonLctr != CSegId()) {
    const CTransform4f tmpXf = GetAnimationData()->GetLocatorTransform(lockonLctr, nullptr);
    const CVector3f scale = GetModelData()->GetScale();
    const CTransform4f locatorXf = GetTransform() * CTransform4f::Scale(scale) * tmpXf;

    x5a8_lockonTarget = locatorXf.GetTranslation();
    x59c_lockonOffset = locatorXf.GetTranslation() - GetTranslation();
  }

  GetKnockBackCtrl().SetAutoResetImpulse(false);
}