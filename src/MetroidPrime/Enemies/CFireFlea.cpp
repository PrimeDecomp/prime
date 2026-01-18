#include "MetroidPrime/Enemies/CFireFlea.hpp"

#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/Math/CloseEnough.hpp"
#include "MetroidPrime/BodyState/CBodyController.hpp"
#include "MetroidPrime/CAnimData.hpp"
#include "MetroidPrime/CEntityInfo.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/CWorld.hpp"
#include "MetroidPrime/Cameras/CCameraFilterPass.hpp"
#include "MetroidPrime/Enemies/CKnockBackController.hpp"
#include "MetroidPrime/Enemies/CPatterned.hpp"
#include "MetroidPrime/Player/CPlayerState.hpp"
#include "MetroidPrime/TCastTo.hpp"

const CColor CFireFlea::CDeathCameraEffect::skEndFadeColor(1.f, 1.f, 0.5f, 1.f);
const CColor CFireFlea::CDeathCameraEffect::skStartFadeColor(1.f, 0.f, 0.f, 0.f);
CColor CFireFlea::CDeathCameraEffect::sCurrentFadeColor = CColor(0.f, 0.f, 0.f, 0.f);
int CFireFlea::sLightIdx = 0;

CFireFlea::CDeathCameraEffect::CDeathCameraEffect(TUniqueId uid, TAreaId aid,
                                                  const rstl::string& name)
: CEntity(uid, CEntityInfo(aid, CEntity::NullConnectionList), true, name)
, x34_startFadeTime(13)
, x38_fadeDuration(5)
, x3c_reverseFadeDuration(60)
, x40_totalFadeDuration(190)
, x44_currentTime(0) {}

void CFireFlea::CDeathCameraEffect::PreThink(float dt, CStateManager& mgr) {
  CCameraFilterPass& pass = mgr.CameraFilterPass(CStateManager::kCFS_Five);
  const uint endFadeTime = x34_startFadeTime + x38_fadeDuration;
  const uint reverseFadeStartTime = endFadeTime + x3c_reverseFadeDuration;
  const uint endTransitionTime = reverseFadeStartTime + x40_totalFadeDuration;

  if (x44_currentTime >= x34_startFadeTime && x44_currentTime <= endFadeTime) {
    sCurrentFadeColor =
        CColor::Add(sCurrentFadeColor, CColor::Lerp(skStartFadeColor, skEndFadeColor,
                                                    (float)(x44_currentTime - x34_startFadeTime) /
                                                        x40_totalFadeDuration));
    pass.SetFilter(CCameraFilterPass::kFT_Blend, CCameraFilterPass::kFS_Fullscreen, 0.f,
                   sCurrentFadeColor, -1);
  } else if (x44_currentTime >= reverseFadeStartTime && x44_currentTime <= endTransitionTime) {
    sCurrentFadeColor = CColor::Add(
        sCurrentFadeColor,
        CColor::Lerp(skEndFadeColor, skStartFadeColor,
                     (float)(x44_currentTime - reverseFadeStartTime) / x40_totalFadeDuration));
    pass.SetFilter(CCameraFilterPass::kFT_Blend, CCameraFilterPass::kFS_Fullscreen, 0.f,
                   sCurrentFadeColor, -1);
  } else if (x44_currentTime >= endFadeTime) {
    sCurrentFadeColor = skEndFadeColor;
    pass.SetFilter(CCameraFilterPass::kFT_Blend, CCameraFilterPass::kFS_Fullscreen, 0.f,
                   sCurrentFadeColor, -1);
  }

  if (x44_currentTime == endTransitionTime) {
    pass.DisableFilter(0.f);
    mgr.DeleteObjectRequest(GetUniqueId());
    x44_currentTime = 0;
  } else {
    ++x44_currentTime;
  }

  if (mgr.GetPlayerState()->GetActiveVisor(mgr) != CPlayerState::kPV_Thermal) {
    pass.DisableFilter(0.f);
  }
}

void CFireFlea::CDeathCameraEffect::Think(float dt, CStateManager& mgr) {
  sCurrentFadeColor = CColor(0.f, 0.f, 0.f, 0.f);
}

void CFireFlea::CDeathCameraEffect::Accept(IVisitor& visitor) { visitor.Visit(*this); }

CFireFlea::CFireFlea(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                     const CTransform4f& xf, const CModelData& mData,
                     const CActorParameters& actParams, const CPatternedInfo& pInfo, float f1)
: CPatterned(kC_FireFlea, uid, name, kFT_Zero, info, xf, mData, pInfo, kMT_Flyer, kCT_One,
             kBT_Flyer, actParams, kKBV_Small)
, x568_(1.f)
, x56c_(f1)
, xd74_(CVector3f::Zero())
, xd80_targetPos(CVector3f::Zero())
, xd8c_pathFind(nullptr, 1 | 2, pInfo.GetPathfindingIndex(), 1.f, 1.f) {
  CMaterialList exclude = GetMaterialFilter().GetExcludeList();
  exclude.Add(CMaterialList(kMT_Character));
  CMaterialList include = GetMaterialFilter().GetIncludeList();
  SetMaterialFilter(CMaterialFilter::MakeIncludeExclude(include, exclude));
  ModelData()->AnimationData()->SetParticleLightIdx(sLightIdx);
  ++sLightIdx;
}

void CFireFlea::Accept(IVisitor& visitor) { visitor.Visit(*this); }
void CFireFlea::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId sender, CStateManager& mgr) {
  CPatterned::AcceptScriptMsg(msg, sender, mgr);

  switch (msg) {
  case kSM_Registered:
    BodyCtrl()->Activate(mgr);
    break;
  case kSM_InitializedInArea: {
    TAreaId aid = GetCurrentAreaId();
    const CGameArea& area = mgr.GetWorld()->GetAreaAlways(aid);
    xd8c_pathFind.SetArea(area.GetPostConstructed()->x10bc_pathArea);
    xd8c_pathFind.SetPadding(50.f);
    break;
  }
  default:
    break;
  }
}

void CFireFlea::Think(float dt, CStateManager& mgr) {
  if (!GetActive()) {
    return;
  }
  CPatterned::Think(dt, mgr);
}

bool CFireFlea::HearShot(CStateManager& mgr, float arg) {
  x570_nearList.clear();
  CVector3f translation = GetTranslation();
  CAABox box(translation - CVector3f(10.f, 10.f, 10.f), translation + CVector3f(10.f, 10.f, 10.f));
  CMaterialFilter filter = CMaterialFilter::MakeInclude(CMaterialList(kMT_Projectile));
  mgr.BuildNearList(x570_nearList, box, filter, nullptr);
  return HeardShot();
}

void CFireFlea::Patrol(CStateManager& mgr, EStateMsg msg, float arg) {
  if (!close_enough(GetMoveVector(), CVector3f::Zero())) {
    MoveVector().Normalize();
  }

  SetMoveVector(AdjustMovementVec(mgr, GetMoveVector()));
  CPatterned::Patrol(mgr, msg, arg);
  if (GetPatrolState() == kPS_Done) {
    mgr.DeleteObjectRequest(GetUniqueId());
  }
}

bool CFireFlea::MoveTooCloseToWater(CStateManager& mgr, const CVector3f& forward) {
  TEntityList nearList;
  mgr.BuildNearList(nearList, GetTranslation(), forward, 2.f, CMaterialFilter::GetPassEverything());

  TEntityList::const_iterator iter = nearList.begin();
  for (; iter != nearList.end(); ++iter) {
    TUniqueId uid = *iter;
    if (TCastToConstPtr< CScriptWater >(mgr.GetObjectById(uid))) {
      return true;
    }
  }

  return false;
}
