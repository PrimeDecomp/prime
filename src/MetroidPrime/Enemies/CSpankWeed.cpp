#include "MetroidPrime/Enemies/CSpankWeed.hpp"

const char* CSpankWeed::skJointNameList[] = {
    "Arm_2", "Arm_3",  "Arm_4",  "Arm_5",  "Arm_6",   "Arm_7",       "Arm_8",
    "Arm_9", "Arm_10", "Arm_11", "Arm_12", "Arm_end", "swoosh_LCTR", "lockon_target_LCTR",
    "Eye",
};

const int CSpankWeed::skJointNameListSize = ARRAY_SIZE(CSpankWeed::skJointNameList);

const SSphereJointInfo CSpankWeed::skSphereJointInfoList[] = {
    {"Arm_4", 1.5f}, {"Arm_6", 1.f},  {"Arm_7", 1.f},        {"Arm_8", 1.f},
    {"Arm_9", 1.f},  {"Arm_11", 1.f}, {"swoosh_LCTR", 1.5f},
};

CSpankWeed::CSpankWeed(const TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                       const CTransform4f& xf, const CModelData& mData,
                       const CActorParameters& actParms, const CPatternedInfo& pInfo,
                       const float maxDetectionRange, const float maxHearingRange,
                       const float maxSightRange, const float hideTime)
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
, x598_isHiding(true)
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
    const float scale = mag / CMath::SqrtF(3.f);
    ModelData()->SetScale(CVector3f(scale, scale, scale));

    char buf[1024];
    sprintf(buf,
            "WARNING: Non-uniform scale (%.2f, %.2f, %.2f) applied to Spank Weed...changing scale "
            "to (%.2f, %.2f, %.2f)\n",
            modelScale.GetX(), modelScale.GetY(), modelScale.GetZ(), scale, scale, scale);
  }

  CMaterialList list = GetMaterialFilter().GetExcludeList();
  list.Add(CMaterialList(kMT_Character, kMT_Player));
  SetMaterialFilter(
      CMaterialFilter::MakeIncludeExclude(GetMaterialFilter().GetIncludeList(), list));

  const CSegId segId = GetAnimationData()->GetLocatorSegId(rstl::string_l("lockon_target_LCTR"));

  if (segId.val() != 0xFFu) {
    const CTransform4f locatorXf = GetAnimationData()->GetLocatorTransform(segId, nullptr);
    const CVector3f scale = GetModelData()->GetScale();
    const CTransform4f scaledXf = GetTransform() * (CTransform4f::Scale(scale) * locatorXf);
    x5a8_lockonTarget = scaledXf.GetTranslation();
    x59c_lockonOffset = scaledXf.GetTranslation() - GetTranslation();
  }

  GetKnockBackCtrl().SetAutoResetImpulse(false);
}
