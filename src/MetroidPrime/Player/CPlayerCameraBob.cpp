#include "MetroidPrime/Player/CPlayerCameraBob.hpp"

#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Math/CRelAngle.hpp"
#include "Kyoto/Streams/CInputStream.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "rstl/math.hpp"

float CPlayerCameraBob::kCameraBobExtentX = 0.071f;
float CPlayerCameraBob::kCameraBobExtentY = 0.142f;
float CPlayerCameraBob::kCameraBobPeriod = 0.47f;
float CPlayerCameraBob::kOrbitBobScale = 0.77f;
float CPlayerCameraBob::kMaxOrbitBobScale = 0.8f;
float CPlayerCameraBob::kSlowSpeedPeriodScale = 0.3f;
float CPlayerCameraBob::kTargetMagnitudeTrackingRate = 0.1f;
float CPlayerCameraBob::kLandingBobSpringConstant = 150.f;
float CPlayerCameraBob::kPeakNegativeVerticalSpeedForHeavyLanding = -30.f;
float CPlayerCameraBob::kMaxNegativeVerticalSpeedConsidered = -35.f;
float CPlayerCameraBob::kHeavyLandingBobSpringConstant = 40.f;
float CPlayerCameraBob::kHeavyLandingHelmetBobSpringConstant = 80.f;
float CPlayerCameraBob::kViewWanderRadius = 0.03f;
float CPlayerCameraBob::kViewWanderSpeedMin = 0.1f;
float CPlayerCameraBob::kViewWanderSpeedMax = 0.3f;
float CPlayerCameraBob::kViewWanderRollVariation = 0.3f;
float CPlayerCameraBob::kGunBobMagnitude = 0.3f;
float CPlayerCameraBob::kHelmetBobMagnitude = 2.f;
float CPlayerCameraBob::kLandingBobDamping = CMath::SqrtF(kLandingBobSpringConstant) * 2.f;
float CPlayerCameraBob::kHeavyLandingBobDamping =
    CMath::SqrtF(kHeavyLandingBobSpringConstant) * 4.f;
float CPlayerCameraBob::kHeavyLandingHelmetBobDamping =
    CMath::SqrtF(kHeavyLandingHelmetBobSpringConstant) * 6.f;

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

void CPlayerCameraBob::Update(float, CStateManager&) {}

void CPlayerCameraBob::SetBobTimeScale(const float scale) {
  x18_bobTimeScale = scale;
  x18_bobTimeScale = rstl::max_val(x18_bobTimeScale, 0.f);
  x18_bobTimeScale = rstl::min_val(x18_bobTimeScale, 1.f);
}

void CPlayerCameraBob::SetBobMagnitude(const float scale) {
  x10_targetBobMagnitude = scale;
  x10_targetBobMagnitude = rstl::max_val(x10_targetBobMagnitude, 0.f);
  x10_targetBobMagnitude = rstl::min_val(x10_targetBobMagnitude, 1.f);
}

CTransform4f CPlayerCameraBob::CalculateCameraBobTransformation() const {
  float x = 0.f;
  float z = 0.f;
  CalculateMovingTranslation(x, z);
  if (x28_applyLandingTrans) {
    z += CalculateLandingTranslation();
  }

  return CTransform4f::Translate(x, 0.f, z);
}

CTransform4f CPlayerCameraBob::GetCameraBobTransformation() const { return x2c_cameraBobTransform; }

CTransform4f CPlayerCameraBob::GetGunBobTransformation() const {
  return CTransform4f(
      CTransform4f::Translate(GetCameraBobTranslation() * (kGunBobMagnitude + 1.f)));
}

CVector3f CPlayerCameraBob::GetHelmetBobTranslation() const {
  return kHelmetBobMagnitude *
         (x2c_cameraBobTransform.GetTranslation() - CVector3f(0.f, 0.f, x78_camTranslation));
}

float CPlayerCameraBob::CalculateLandingTranslation() const { return x70_landingTranslation; }

void CPlayerCameraBob::CalculateMovingTranslation(float& x, float& z) const {}

void CPlayerCameraBob::ResetCameraBobTime() { x1c_bobTime = 0.f; }

void CPlayerCameraBob::SetState(ECameraBobState state, CStateManager& mgr) {
  if (state == x24_curState) {
    return;
  }

  x20_oldState = x24_curState;
  x24_curState = state;

  if (x20_oldState == kCBS_InAir) {
    x28_applyLandingTrans = true;
    x68_playerPeakFallVel =
        rstl::max_val(x68_playerPeakFallVel, kMaxNegativeVerticalSpeedConsidered);
    x29_hardLand = x68_playerPeakFallVel < kPeakNegativeVerticalSpeedForHeavyLanding;
    if (x29_hardLand) {
      x74_camVelocity += x68_playerPeakFallVel;
    }
    x6c_landingVelocity += x68_playerPeakFallVel;
    x68_playerPeakFallVel = 0.f;
  }

  if (x24_curState == kCBS_WalkNoBob && x100_wanderMagnitude) {
    InitViewWander(mgr);
  }
}

void CPlayerCameraBob::SetPlayerVelocity(const CVector3f& velocity) {
  x5c_playerVelocity = velocity;
  x68_playerPeakFallVel = rstl::min_val(velocity[kDZ], x68_playerPeakFallVel);
}

void CPlayerCameraBob::InitViewWander(CStateManager& mgr) {
  x7c_wanderPoints[0] = CVector3f(0.f, 1.f, 0.f);
  x7c_wanderPoints[1] = x7c_wanderPoints[0];
  x7c_wanderPoints[2] = x7c_wanderPoints[0];
  x7c_wanderPoints[3] = CalculateRandomViewWanderPosition(mgr);
  xb0_wanderPitches[0] = 0.f;
  xb0_wanderPitches[1] = xb0_wanderPitches[0];
  xb0_wanderPitches[2] = xb0_wanderPitches[0];
  xb0_wanderPitches[3] = CalculateRandomViewWanderPitch(mgr);
  xc8_viewWanderSpeed =
      (kViewWanderSpeedMax - kViewWanderSpeedMin) * mgr.Random()->Float() + kViewWanderSpeedMin;
  xc4_wanderTime = 0.f;
  xcc_wanderIndex = 0;
}

CVector3f CPlayerCameraBob::CalculateRandomViewWanderPosition(CStateManager&) {}

float CPlayerCameraBob::CalculateRandomViewWanderPitch(CStateManager& mgr) {
  return CRelAngle::FromDegrees(2.f * (mgr.Random()->Float() - 0.5f) * kViewWanderRollVariation)
      .AsRadians();
}

void CPlayerCameraBob::UpdateViewWander(float, CStateManager&) {}
const CTransform4f& CPlayerCameraBob::GetViewWanderTransform() const { return xd0_viewWanderXf; }