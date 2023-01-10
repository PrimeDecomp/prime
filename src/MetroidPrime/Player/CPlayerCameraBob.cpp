#include "MetroidPrime/Player/CPlayerCameraBob.hpp"

#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

float CPlayerCameraBob::kCameraBobExtentX = 0.071f;
float CPlayerCameraBob::kCameraBobExtentY = 0.142f;
float CPlayerCameraBob::kCameraBobPeriod = 0.47f;
float CPlayerCameraBob::kOrbitBobScale = 0.769f;
float CPlayerCameraBob::kMaxOrbitBobScale = 0.8f;
float CPlayerCameraBob::kSlowSpeedPeriodScale = 0.3f;
float CPlayerCameraBob::kTargetMagnitudeTrackingRate = 0.1f;
float CPlayerCameraBob::kLandingBobSpringConstant = 150.f;
float CPlayerCameraBob::lbl_805A7398 = -30.f;
float CPlayerCameraBob::lbl_805A739C = -35.f;
float CPlayerCameraBob::kLandingBobSpringConstant2 = 40.f;
float CPlayerCameraBob::lbl_805A73A4 = 80.f;
float CPlayerCameraBob::kViewWanderRadius = 0.03f;
float CPlayerCameraBob::kViewWanderSpeedMin = 0.1f;
float CPlayerCameraBob::kViewWanderSpeedMax = 0.3f;
float CPlayerCameraBob::kViewWanderRollVariation = 0.3f;
float CPlayerCameraBob::kGunBobMagnitude = 0.3f;
float CPlayerCameraBob::kHelmetBobMagnitude = 2.f;
float CPlayerCameraBob::kLandingBobDamping = CMath::SqrtF(kLandingBobSpringConstant) * 2.f;
float CPlayerCameraBob::kLandingBobDamping2 = CMath::SqrtF(kLandingBobSpringConstant2) * 4.f;
float CPlayerCameraBob::kCameraDamping = CMath::SqrtF(lbl_805A73A4) * 6.f;

CPlayerCameraBob::CPlayerCameraBob(ECameraBobType type, const CVector2f& vec, float bobPeriod)
: x0_type(type)
, x4_vec(vec)
, xc_bobPeriod(bobPeriod)
, x10_targetBobMagnitude(0.f)
, x14_bobMagnitude(0.f)
, x18_bobTimeScale(0.f)
, x1c_bobTime(0.f)
, x20_oldState(kCBS_Unspecified)
, x24_curState(kCBS_Unspecified)
, x28_applyLandingTrans(false)
, x29_hardLand(false)
, x2c_cameraBobTransform(CTransform4f::Identity())
, x5c_playerVelocity(CVector3f(0.f, 0.f, 0.f))
, x68_playerPeakFallVel(0.f)
, x6c_landingVelocity(0.f)
, x70_landingTranslation(0.f)
, x74_camVelocity(0.f)
, x78_camTranslation(0.f)
, xc4_wanderTime(0.f)
, xc8_viewWanderSpeed(kViewWanderSpeedMin)
, xcc_wanderIndex(0)
, xd0_viewWanderXf(CTransform4f::Identity())
, x100_wanderMagnitude(FLT_EPSILON)
, x104_targetWanderMagnitude(0.f) {
  for (int i = 0; i < 4; ++i) {
    x7c_wanderPoints.push_back(CVector3f(0.f, 1.f, 0.f));
  }
  for (int i = 0; i < 4; ++i) {
    xb0_wanderPitches.push_back(0.f);
  }
}

void CPlayerCameraBob::ReadTweaks(CInputStream& in) {
  kCameraBobExtentX = in.ReadFloat();
  kCameraBobExtentY = in.ReadFloat();
  kCameraBobPeriod = in.ReadFloat();
  kOrbitBobScale = in.ReadFloat();
  kMaxOrbitBobScale = in.ReadFloat();
  kSlowSpeedPeriodScale = in.ReadFloat();
  kTargetMagnitudeTrackingRate = in.ReadFloat();
  kLandingBobSpringConstant = in.ReadFloat();
  kViewWanderRadius = in.ReadFloat();
  kViewWanderSpeedMin = in.ReadFloat();
  kViewWanderSpeedMax = in.ReadFloat();
  kViewWanderRollVariation = in.ReadFloat();
  kGunBobMagnitude = in.ReadFloat();
  kHelmetBobMagnitude = in.ReadFloat();
}
