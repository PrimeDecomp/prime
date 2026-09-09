#include "MetroidPrime/Player/CPlayerCameraBob.hpp"

#include "Kyoto/Basics/CCast.hpp"
#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Math/CRelAngle.hpp"
#include "Kyoto/Streams/CInputStream.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/Cameras/CCameraManager.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
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
float CPlayerCameraBob::kHeavyLandingViewDip = 2.f;
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

void CPlayerCameraBob::Update(float dt, CStateManager& mgr) {
  x1c_bobTime += dt * x18_bobTimeScale;
  if (x28_applyLandingTrans) {
    float damping = kLandingBobDamping;
    float spring = kLandingBobSpringConstant;
    if (x29_hardLand) {
      damping = kHeavyLandingBobDamping;
      spring = kHeavyLandingBobSpringConstant;
    }

    x6c_landingVelocity +=
        dt * (-(damping * x6c_landingVelocity) - spring * x70_landingTranslation);
    x70_landingTranslation += x6c_landingVelocity * dt;
    x74_camVelocity += dt * (-(kHeavyLandingHelmetBobDamping * x74_camVelocity) -
                             kHeavyLandingHelmetBobSpringConstant * x78_camTranslation);
    x78_camTranslation += x74_camVelocity * dt;
    if (CMath::AbsF(x6c_landingVelocity) < 0.005f && CMath::AbsF(x70_landingTranslation) < 0.005f &&
        CMath::AbsF(x74_camVelocity) < 0.005f && CMath::AbsF(x78_camTranslation) < 0.005f) {
      x28_applyLandingTrans = false;
      x70_landingTranslation = 0.f;
      x78_camTranslation = 0.f;
    }
  }

  if (x24_curState == kCBS_WalkNoBob) {
    x104_targetWanderMagnitude = 1.f;
  } else {
    x104_targetWanderMagnitude = 0.f;
  }

  float magnitude = mgr.GetCameraManager()->GetCameraBobMagnitude();
  x70_landingTranslation *= magnitude;
  x78_camTranslation *= magnitude;
  x104_targetWanderMagnitude *= magnitude;
  if (mgr.GetPlayer()->GetDoneSidewaysDashing()) {
    x70_landingTranslation *= 0.2f;
    x78_camTranslation *= 0.2f;
    x104_targetWanderMagnitude *= 0.2f;
  }

  x100_wanderMagnitude +=
      kTargetMagnitudeTrackingRate * (x104_targetWanderMagnitude - x100_wanderMagnitude);
  if (x100_wanderMagnitude < 0.f) {
    x100_wanderMagnitude = 0.f;
  }
  x14_bobMagnitude += kTargetMagnitudeTrackingRate * (x10_targetBobMagnitude - x14_bobMagnitude);
  UpdateViewWander(dt, mgr);
  x2c_cameraBobTransform =
      CalculateCameraBobTransformation() * GetViewWanderTransform() *
      CTransform4f::LookAt(CVector3f::Zero(),
                           CVector3f(0.f, kHeavyLandingViewDip, x78_camTranslation));
}

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

void CPlayerCameraBob::CalculateMovingTranslation(float& x, float& z) const {
  switch (x0_type) {
  case kCBT_Zero: {
    double angle = 2.0 * M_PI * fmod(x1c_bobTime, 2.0 * xc_bobPeriod) / xc_bobPeriod;
    x = (x14_bobMagnitude * x4_vec[0]) * CCast::ToReal32(sin(angle));
    z = (x14_bobMagnitude * x4_vec[1]) * CCast::ToReal32(cos(angle / 2.0) * fabs(cos(angle / 2.0)));
    break;
  }
  case kCBT_One: {
    float time = CCast::ToReal32(fmod(x1c_bobTime, 2.0 * xc_bobPeriod));
    double angle = (M_PI * time) / xc_bobPeriod;
    if (time > xc_bobPeriod) {
      x = (2.f - time / xc_bobPeriod) * (x14_bobMagnitude * x4_vec[0]);
    } else {
      x = time / xc_bobPeriod * (x14_bobMagnitude * x4_vec[0]);
    }
    float sine = CCast::ToReal32(sin(fmod(angle, M_PI)));
    z = ((1.f - sine) * (x14_bobMagnitude * x4_vec[1])) / 2.f +
        0.5f * (-(sine * sine - 1.f) * (x14_bobMagnitude * x4_vec[1]));
    break;
  }
  }
}

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

CVector3f CPlayerCameraBob::CalculateRandomViewWanderPosition(CStateManager& mgr) {
  float angle = 2.f * (M_PIF * mgr.Random()->Float());
  float radius = kViewWanderRadius * mgr.Random()->Float();
  return CVector3f(radius * CMath::SlowSineR(angle), 1.f, radius * CMath::SlowCosineR(angle));
}

float CPlayerCameraBob::CalculateRandomViewWanderPitch(CStateManager& mgr) {
  return CRelAngle::FromDegrees(2.f * (mgr.Random()->Float() - 0.5f) * kViewWanderRollVariation)
      .AsRadians();
}

void CPlayerCameraBob::UpdateViewWander(float dt, CStateManager& mgr) {
  CVector3f point = CMath::GetCatmullRomSplinePoint(
      x7c_wanderPoints[xcc_wanderIndex], x7c_wanderPoints[(xcc_wanderIndex + 1) % 4],
      x7c_wanderPoints[(xcc_wanderIndex + 2) % 4], x7c_wanderPoints[(xcc_wanderIndex + 3) % 4],
      xc4_wanderTime);
  float pitch = CMath::GetCatmullRomSplinePoint(
      xb0_wanderPitches[xcc_wanderIndex], xb0_wanderPitches[(xcc_wanderIndex + 1) % 4],
      xb0_wanderPitches[(xcc_wanderIndex + 2) % 4], xb0_wanderPitches[(xcc_wanderIndex + 3) % 4],
      xc4_wanderTime);
  point = CVector3f(x100_wanderMagnitude * point[0], point[1], x100_wanderMagnitude * point[2]);
  xd0_viewWanderXf = CTransform4f::LookAt(CVector3f(0.f, 0.f, 0.f), point) *
                     CTransform4f::RotateY(CRelAngle::FromRadians(pitch * x100_wanderMagnitude));

  xc4_wanderTime += xc8_viewWanderSpeed * dt;
  if (xc4_wanderTime >= 1.f) {
    x7c_wanderPoints[xcc_wanderIndex] = CalculateRandomViewWanderPosition(mgr);
    xb0_wanderPitches[xcc_wanderIndex] = CalculateRandomViewWanderPitch(mgr);
    xc8_viewWanderSpeed =
        (kViewWanderSpeedMax - kViewWanderSpeedMin) * mgr.Random()->Float() + kViewWanderSpeedMin;
    ++xcc_wanderIndex;
    xcc_wanderIndex %= 4;
    xc4_wanderTime -= 1.f;
  }
}

const CTransform4f& CPlayerCameraBob::GetViewWanderTransform() const { return xd0_viewWanderXf; }
