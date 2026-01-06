#include "MetroidPrime/Enemies/CFireFlea.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/Cameras/CCameraFilterPass.hpp"
#include "MetroidPrime/Player/CPlayerState.hpp"

const CColor CFireFlea::CDeathCameraEffect::skEndFadeColor(1.f, 1.f, 0.5f, 1.f);
const CColor CFireFlea::CDeathCameraEffect::skStartFadeColor(1.f, 0.f, 0.f, 0.f);

CColor CFireFlea::CDeathCameraEffect::sCurrentFadeColor = CColor(0.f, 0.f, 0.f, 0.f);

CFireFlea::CDeathCameraEffect::CDeathCameraEffect(TUniqueId uid, TAreaId aid,
                                                  const rstl::string& name)
: CEntity(uid, CEntityInfo(aid, CEntity::NullConnectionList), true, name)
, x34_(13)
, x38_(5)
, x3c_(60)
, x40_(190)
, x44_(0) {}

void CFireFlea::CDeathCameraEffect::PreThink(float dt, CStateManager& mgr) {
  CCameraFilterPass& pass = mgr.CameraFilterPass(CStateManager::kCFS_Five);
  uint r5 = x34_ + x38_;
  uint r8 = r5 + x3c_;
  uint r31 = r8 + x40_;

  if (x44_ >= x34_ && x44_ <= r5) {
    sCurrentFadeColor =
        CColor::Add(sCurrentFadeColor,
                    CColor::Lerp(skStartFadeColor, skEndFadeColor, (float)(x34_ - x44_) / x40_));
    pass.SetFilter(CCameraFilterPass::kFT_Blend, CCameraFilterPass::kFS_Fullscreen, 0.f,
                   sCurrentFadeColor, -1);
  } else if (x44_ >= r8 && x44_ <= r31) {
    sCurrentFadeColor =
        CColor::Add(sCurrentFadeColor,
                    CColor::Lerp(skEndFadeColor, skStartFadeColor, (float)(r8 - x44_) / x40_));
    pass.SetFilter(CCameraFilterPass::kFT_Blend, CCameraFilterPass::kFS_Fullscreen, 0.f,
                   sCurrentFadeColor, -1);
  } else if (x44_ >= r5) {
    sCurrentFadeColor = skEndFadeColor;
    pass.SetFilter(CCameraFilterPass::kFT_Blend, CCameraFilterPass::kFS_Fullscreen, 0.f,
                   sCurrentFadeColor, -1);
  }

  if (r31 == x44_) {
    pass.DisableFilter(0.f);
    mgr.DeleteObjectRequest(GetUniqueId());
    x44_ = 0;
  } else {
    ++x44_;
  }

  if (mgr.GetPlayerState()->GetActiveVisor(mgr) != CPlayerState::kPV_Thermal) {
    pass.DisableFilter(0.f);
  }
}

void CFireFlea::CDeathCameraEffect::Think(float dt, CStateManager& mgr) {
  sCurrentFadeColor = CColor(0.f, 0.f, 0.f, 0.f);
}

void CFireFlea::CDeathCameraEffect::Accept(IVisitor& visitor) { visitor.Visit(*this); }
