#include "MetroidPrime/Player/CPlayerCameraBob.hpp"

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
    float landDampen = kLandingBobDamping;
    float landSpring = kLandingBobSpringConstant;
    if (x29_hardLand) {
      landDampen = kHeavyLandingBobDamping;
      landSpring = kHeavyLandingBobSpringConstant;
    }

    x6c_landingVelocity +=
        dt * (-(landDampen * x6c_landingVelocity) - landSpring * x70_landingTranslation);
    x70_landingTranslation += x6c_landingVelocity * dt;
    x74_camVelocity += dt * (-(kHeavyLandingHelmetBobDamping * x74_camVelocity) -
                             kHeavyLandingHelmetBobSpringConstant * x78_camTranslation);
    x78_camTranslation += x74_camVelocity * dt;

    if (static_cast< float >(fabs(x6c_landingVelocity)) < 0.005f &&
        static_cast< float >(fabs(x70_landingTranslation)) < 0.005f &&
        static_cast< float >(fabs(x74_camVelocity)) < 0.005f &&
        static_cast< float >(fabs(x78_camTranslation)) < 0.005f) {
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

  const float bobMagnitude = mgr.CameraManager()->GetCameraBobMagnitude();
  x70_landingTranslation *= bobMagnitude;
  x78_camTranslation *= bobMagnitude;
  x104_targetWanderMagnitude *= bobMagnitude;
  if (mgr.GetPlayer()->DoneSidewaysDashing()) {
    x70_landingTranslation *= 0.2f;
    x78_camTranslation *= 0.2f;
    x104_targetWanderMagnitude *= 0.2f;
  }

  x100_wanderMagnitude +=
      kTargetMagnitudeTrackingRate * (x104_targetWanderMagnitude - x100_wanderMagnitude);
  x100_wanderMagnitude = x100_wanderMagnitude < 0.f ? 0.f : x100_wanderMagnitude;
  x14_bobMagnitude += kTargetMagnitudeTrackingRate * (x10_targetBobMagnitude - x14_bobMagnitude);
  UpdateViewWander(dt, mgr);

  x2c_cameraBobTransform = CalculateCameraBobTransformation() * GetViewWanderTransform() *
                           CTransform4f::LookAt(CVector3f::Zero(),
                                                CVector3f(0.f, 2.f, x78_camTranslation),
                                                CVector3f::Up());
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
  if (x0_type == kCBT_Zero) {
    const double c = ((M_PIF * 2.f) * CMath::ModF(x1c_bobTime, 2.f * xc_bobPeriod) / xc_bobPeriod);
    x = (x14_bobMagnitude * x4_vec.GetX()) * static_cast< float >(sin(c));
    z = (x14_bobMagnitude * x4_vec.GetY()) *
        static_cast< float >(fabs(cos(c * .5)) * cos(c * .5));
  } else if (x0_type == kCBT_One) {
    const float fX = CMath::ModF(x1c_bobTime, 2.f * xc_bobPeriod);
    if (fX > xc_bobPeriod) {
      x = (2.f - (fX / xc_bobPeriod)) * (x14_bobMagnitude * x4_vec.GetX());
    } else {
      x = ((fX / xc_bobPeriod)) * (x14_bobMagnitude * x4_vec.GetX());
    }

    const float sY = static_cast< float >(sin(CMath::ModF((M_PI * fX) / xc_bobPeriod, M_PI)));
    z = (1.f - sY) * (x14_bobMagnitude * x4_vec.GetY()) * 0.5f +
        (0.5f * -((sY * sY) - 1.f) * (x14_bobMagnitude * x4_vec.GetY()));
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
  const float angle = 2.f * (M_PIF * mgr.Random()->Float());
  const float bias = kViewWanderRadius * mgr.Random()->Float();
  return CVector3f(bias * CMath::SlowSineR(angle), 1.f,
                   bias * CMath::SlowCosineR(angle));
}

float CPlayerCameraBob::CalculateRandomViewWanderPitch(CStateManager& mgr) {
  return CRelAngle::FromDegrees(2.f * (mgr.Random()->Float() - 0.5f) * kViewWanderRollVariation)
      .AsRadians();
}

void CPlayerCameraBob::UpdateViewWander(float dt, CStateManager& mgr) {
  CVector3f pt = CMath::GetCatmullRomSplinePoint(
      x7c_wanderPoints[xcc_wanderIndex], x7c_wanderPoints[(xcc_wanderIndex + 1) & 3],
      x7c_wanderPoints[(xcc_wanderIndex + 2) & 3], x7c_wanderPoints[(xcc_wanderIndex + 3) & 3],
      xc4_wanderTime);
  pt.SetX(pt.GetX() * x100_wanderMagnitude);
  pt.SetZ(pt.GetZ() * x100_wanderMagnitude);

  const float pitch = CMath::GetCatmullRomSplinePoint(
      xb0_wanderPitches[xcc_wanderIndex], xb0_wanderPitches[(xcc_wanderIndex + 1) & 3],
      xb0_wanderPitches[(xcc_wanderIndex + 2) & 3], xb0_wanderPitches[(xcc_wanderIndex + 3) & 3],
      xc4_wanderTime);
  xd0_viewWanderXf = CTransform4f::LookAt(CVector3f::Zero(), pt, CVector3f::Up()) *
                     CTransform4f::RotateY(CRelAngle(pitch * x100_wanderMagnitude));

  xc4_wanderTime += xc8_viewWanderSpeed * dt;
  if (xc4_wanderTime >= 1.f) {
    x7c_wanderPoints[xcc_wanderIndex] = CalculateRandomViewWanderPosition(mgr);
    xb0_wanderPitches[xcc_wanderIndex] = CalculateRandomViewWanderPitch(mgr);
    xc8_viewWanderSpeed =
        (kViewWanderSpeedMax - kViewWanderSpeedMin) * mgr.Random()->Float() + kViewWanderSpeedMin;
    xcc_wanderIndex = (xcc_wanderIndex + 1) & 3;
    xc4_wanderTime -= 1.f;
  }
}
const CTransform4f& CPlayerCameraBob::GetViewWanderTransform() const { return xd0_viewWanderXf; }