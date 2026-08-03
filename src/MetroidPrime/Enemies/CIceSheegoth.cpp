#include "MetroidPrime/Enemies/CIceSheegoth.hpp"
#include "MetroidPrime/CCollisionActorManager.hpp"

#include "Kyoto/Animation/CPASAnimParmData.hpp"
#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/Math/CRelAngle.hpp"
#include "Kyoto/Particles/CElementGen.hpp"
#include "Kyoto/Particles/CParticleElectric.hpp"

const CVector3f CIceSheegoth::skChargingBounds(2.f, 2.f, 2.f);

const SJointInfo CIceSheegoth::skLeftLegJointList[] = {
    {"L_hip", "L_knee", 0.4f, 0.75f},
    {"L_ankle", "L_Toe_3", 0.4f, 0.75f},
};

const SJointInfo CIceSheegoth::skRightLegJointList[] = {
    {"R_hip", "R_knee", 0.4f, 0.75f},
    {"R_ankle", "R_Toe_3", 0.4f, 0.75f},
};

const SSphereJointInfo CIceSheegoth::skSphereJointList[] = {
    {"Jaw_end_LCTR", 0.55f},   {"Pelvis", 1.1f},     {"LCTR_SHEMOUTH", 1.1f}, {"butt_LCTR", 0.7f},
    {"Ice_Shards_LCTR", 1.2f}, {"GillL_LCTR", 0.6f}, {"GillR_LCTR", 0.6f},
};

CIceSheegothData::CIceSheegothData(CInputStream& in, int propCount)
: x0_(CRelAngle::FromDegrees(in.Get< float >()).AsRadians())
, x4_(CRelAngle::FromDegrees(in.Get< float >()).AsRadians())
, x8_(in.Get< CVector3f >())
, x14_(in.Get< float >())
, x18_(in)
, x80_(in)
, xe8_(in)
, x150_(in.Get< CAssetId >())
, x154_(in)
, x170_(in.Get< float >())
, x174_(in.Get< float >())
, x178_(in.Get< CAssetId >())
, x17c_fireBreathResId(in.Get< CAssetId >())
, x180_fireBreathDamage(in)
, x19c_(in.Get< CAssetId >())
, x1a0_(in.Get< CAssetId >())
, x1a4_(in.Get< CAssetId >())
, x1a8_(in.Get< CAssetId >())
, x1ac_(in.Get< CAssetId >())
, x1b0_(in.Get< float >())
, x1b4_(in.Get< float >())
, x1b8_(in)
, x1d4_(CSfxManager::TranslateSFXID(in.Get< uint >()))
, x1d8_(in.Get< float >())
, x1dc_(in.Get< float >())
, x1e0_maxInterestTime(in.Get< float >())
, x1e4_(in.Get< CAssetId >())
, x1e8_(CSfxManager::TranslateSFXID(in.Get< uint >()))
, x1ec_(in.Get< CAssetId >())
, x1f0_24_(in.Get< bool >())
, x1f0_25_(in.Get< bool >()) {}

CIceSheegoth::CIceSheegoth(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                           const CTransform4f& xf, const CModelData& mData,
                           const CPatternedInfo& pInfo, const CActorParameters& actParms,
                           const CIceSheegothData& sheegothData)
: CPatterned(kC_IceSheegoth, uid, name, kFT_Zero, info, xf, mData, pInfo, kMT_Ground, kCT_One,
             kBT_BiPedal, actParms, kKBV_Large)
, x568_state(-1)
, x56c_data(sheegothData)
, x760_pathSearch(nullptr, 1, pInfo.GetPathfindingIndex(), 1.f, 1.f)
, x844_approachSearch(nullptr, 1, pInfo.GetPathfindingIndex(), 1.f, 1.f)
, x928_pathFindMode(kPFM_Normal)
, x92c_lastDest(CVector3f::Zero())
, x938_(CVector3f::Zero())
, x944_(1.f)
, x948_(1.f)
, x94c_(x3b4_speed)
, x950_(0.f)
, x954_attackTimeLeft(0.f)
, x958_(0.f)
, x95c_(0.f)
, x960_(0.f)
//, x964_(0.f)
, x968_interestTimer(0.f)
, x96c_(2.f)
, x970_maxHp(0.f)
, x974_(sheegothData.GetX174())
, x978_(0.f)
, x97c_(0.f)
, x980_(CVector3f::Zero())
, x98c_mouthVulnerability(pInfo.GetDamageVulnerability())
, x9f4_boneTracking(*GetAnimationData(), rstl::string_l("Head_1"),
                    CRelAngle::FromDegrees(80.f).AsRadians(),
                    CRelAngle::FromDegrees(180.f).AsRadians(), kBTF_None)
, xa30_(GetBoundingBox(), GetMaterialList())
, xa58_projectileInfo(sheegothData.GetX150(), sheegothData.GetX154())
, xa80_flameThrowerId(kInvalidUniqueId)
, xa84_(sheegothData.GetX178() != kInvalidAssetId
            ? gpSimplePool->GetObj(SObjectTag('WPSC', sheegothData.GetX178()))
            : gpSimplePool->GetObj("FlameThrower"))
, xa8c_(gpSimplePool->GetObj(SObjectTag('PART', sheegothData.GetX1a0())))
, xa98_(rs_new CElementGen(xa8c_))
, xaa0_(gpSimplePool->GetObj(SObjectTag('PART', sheegothData.GetX1a4())))
, xaac_(rs_new CElementGen(xaa0_))
, xab4_(gpSimplePool->GetObj(SObjectTag('PART', sheegothData.GetX1a8())))
, xabc_(rs_new CElementGen(xab4_))
, xac8_(gpSimplePool->GetObj(SObjectTag('WPSC', sheegothData.GetX1ac())))
, xad4_(rs_new CParticleElectric(xac8_))
, xadc_(gpSimplePool->GetObj(SObjectTag('PART', sheegothData.GetX19c())))
, xaf4_mouthLocator(0xFF)
, xaf6_iceShardsCollider(kInvalidUniqueId)
, xaf8_mouthCollider(kInvalidUniqueId)
, xb28_24_shotAt(false)
, xb28_25_(false)
, xb28_26_(false)
, xb28_27_(false)
, xb28_28_(false)
, xb28_29_(false)
, xb28_30_(false)
, xb28_31_(false)
, xb29_24_(false)
, xb29_25_(false)
, xb29_26_(false)
, xb29_27_(false)
, xb29_28_(false)
, xb29_29_scanned(false) {
  xa58_projectileInfo.Token().Lock();
  UpdateTouchBounds();
  GetKnockBackCtrl().SetEnableFreeze(false);
  GetKnockBackCtrl().SetX82_24(false);
  GetKnockBackCtrl().SetEnableLaggedBurnDeath(false);
  GetKnockBackCtrl().SetEnableExplodeDeath(false);
  const CPASAnimParmData parms(pas::kAS_Step, CPASAnimParm::FromEnum(1), CPASAnimParm::FromEnum(0));
  x950_ = GetAnimationDistance(parms) * GetModelScale().GetY();
  xa98_->SetGlobalScale(GetModelScale());
  xaac_->SetGlobalScale(GetModelScale());
  xabc_->SetGlobalScale(GetModelScale());
  xad4_->SetGlobalScale(GetModelScale());
  BodyCtrl()->BodyStateInfo().SetLocoAnimChangeAtEndOfAnimOnly(true);
  MakeThermalColdAndHot();
  x328_31_energyAttractor = true;
}

CIceSheegoth::~CIceSheegoth() {}

void CIceSheegoth::Accept(IVisitor& visitor) { visitor.Visit(*this); }

float CIceSheegoth::GetGravityConstant() const { return kGravityAccel * 10.f; }
const CCollisionPrimitive* CIceSheegoth::GetCollisionPrimitive() const { return &xa30_; }
CPathFindSearch* CIceSheegoth::GetSearchPath() {
  if (x928_pathFindMode == kPFM_Normal) {
    return &x760_pathSearch;
  }

  return &x844_approachSearch;
}
