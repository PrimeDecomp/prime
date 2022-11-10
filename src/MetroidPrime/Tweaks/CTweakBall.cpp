#include "MetroidPrime/Tweaks/CTweakBall.hpp"

#include "Kyoto/Streams/CInputStream.hpp"
#include "Kyoto/Math/CMath.hpp"

CTweakBall::~CTweakBall() {}

CTweakBall::CTweakBall(CInputStream& in) 
: x78_ballCameraOffset(CVector3f::Zero())
, x158_(0.0f)
, x18c_ballCameraChaseLookAtOffset(CVector3f::Zero())
, x1b8_ballCameraBoostLookAtOffset(CVector3f::Zero())
, x1ec_maxLeanAngle(0.0f)
{
  int i;
  for (i = 0; i < 8; ++i) {
    x4_maxTranslationAcceleration[i] = in.ReadFloat();
  }
  for (i = 0; i < 8; ++i) {
    x24_translationFriction[i] = in.ReadFloat();
  }
  for (i = 0; i < 8; ++i) {
    x44_translationMaxSpeed[i] = in.ReadFloat();
  }
  x64_ = in.ReadFloat();
  x68_ = in.ReadFloat();
  x6c_ = -in.ReadFloat();
  x70_ = -in.ReadFloat();
  for (i = 0; i < 8; ++i) {
    xc4_ballForwardBrakingAcceleration[i] = in.ReadFloat();
  }
  xe4_ballGravity = -in.ReadFloat();
  xe8_ballWaterGravity = -in.ReadFloat();
  x14c_ = in.ReadFloat();
  x150_ = in.ReadFloat();
  x158_ = in.ReadFloat() * (M_PIF / 180.f);
  x1dc_minimumAlignmentSpeed = in.ReadFloat();
  x1e0_tireness = in.ReadFloat();
  x1ec_maxLeanAngle = in.ReadFloat() * (M_PIF / 180.f);
  x1f0_tireToMarbleThresholdSpeed = in.ReadFloat();
  x1f4_marbleToTireThresholdSpeed = in.ReadFloat();
  x1f8_forceToLeanGain = in.ReadFloat();
  x1fc_leanTrackingGain = in.ReadFloat();
  x12c_ballSlipFactor[0] = 10000.f;
  x12c_ballSlipFactor[1] = 10000.f;
  x12c_ballSlipFactor[2] = 1000.f;
  x12c_ballSlipFactor[3] = 10000.f;
  x12c_ballSlipFactor[4] = 2000.f;
  x12c_ballSlipFactor[5] = 2000.f;
  x12c_ballSlipFactor[6] = 2000.f;
  x12c_ballSlipFactor[7] = 2000.f; 
  xec_ = 10000.f;
  xf0_ = 1000.f;
  xf4_ = 40000.f;
  xf8_ = 40000.f;
  xfc_ = 40000.f;
  x100_ = 40000.f;
  x104_ = 40000.f;
  x108_ = 40000.f;
  x10c_ = 10000.f;
  x110_ = 1000.f;
  x114_ = 40000.f;
  x118_ = 40000.f;
  x11c_ = 40000.f;
  x120_ = 40000.f;
  x124_ = 40000.f;
  x128_ = 40000.f;
  x74_ballCameraAnglePerSecond = in.ReadFloat() * (M_PIF / 180.f);
  x78_ballCameraOffset = CVector3f(in);
  x84_ballCameraMinSpeedDistance = in.ReadFloat();
  x88_ballCameraMaxSpeedDistance = in.ReadFloat();
  x8c_ballCameraBackwardsDistance = in.ReadFloat();
  x90_ = in.ReadFloat() * (M_PIF / 180.f);
  x94_ballCameraSpringConstant = in.ReadFloat();
  x98_ballCameraSpringMax = in.ReadFloat();
  x9c_ballCameraSpringTardis = in.ReadFloat();
  xa0_ballCameraCentroidSpringConstant = in.ReadFloat();
  xa4_ballCameraCentroidSpringMax = in.ReadFloat();
  xa8_ballCameraCentroidSpringTardis = in.ReadFloat();
  xac_ballCameraCentroidDistanceSpringConstant = in.ReadFloat();
  xb0_ballCameraCentroidDistanceSpringMax = in.ReadFloat();
  xb4_ballCameraCentroidDistanceSpringTardis = in.ReadFloat();
  xb8_ballCameraLookAtSpringConstant = in.ReadFloat();
  xbc_ballCameraLookAtSpringMax = in.ReadFloat();
  xc0_ballCameraLookAtSpringTardis = in.ReadFloat();
  x154_ = in.ReadFloat();
  x15c_ = in.ReadFloat() * (M_PIF / 180.f);
  x160_ = in.ReadFloat();
  x164_ = in.ReadFloat();
  x168_ = in.ReadFloat();
  x16c_ = in.ReadFloat() * (M_PIF / 180.f);
  x170_conservativeDoorCamDistance = in.ReadFloat();
  x174_ = in.ReadFloat() * (M_PIF / 180.f);
  x178_ballCameraChaseElevation = in.ReadFloat();
  x17c_ballCameraChaseDampenAngle = in.ReadFloat() * (M_PIF / 180.f);
  x180_ballCameraChaseDistance = in.ReadFloat();
  x184_ballCameraChaseYawSpeed = in.ReadFloat() * (M_PIF / 180.f);
  x188_ballCameraChaseAnglePerSecond = in.ReadFloat() * (M_PIF / 180.f);
  x18c_ballCameraChaseLookAtOffset = CVector3f(in);
  x198_ballCameraChaseSpringConstant = in.ReadFloat();
  x19c_ballCameraChaseSpringMax = in.ReadFloat();
  x1a0_ballCameraChaseSpringTardis = in.ReadFloat();
  x1a4_ballCameraBoostElevation = in.ReadFloat();
  x1a8_ballCameraBoostDampenAngle = in.ReadFloat() * (M_PIF / 180.f);
  x1ac_ballCameraBoostDistance = in.ReadFloat();
  x1b0_ballCameraBoostYawSpeed = in.ReadFloat() * (M_PIF / 180.f);
  x1b4_ballCameraBoostAnglePerSecond = in.ReadFloat() * (M_PIF / 180.f);
  x1b8_ballCameraBoostLookAtOffset = CVector3f(in);
  x1c4_ballCameraBoostSpringConstant = in.ReadFloat();
  x1c8_ballCameraBoostSpringMax = in.ReadFloat();
  x1cc_ballCameraBoostSpringTardis = in.ReadFloat();
  x1d0_ballCameraControlDistance = in.ReadFloat();
  x1d4_ = in.ReadFloat();
  x1d8_ = in.ReadFloat();
  x1e4_leftStickDivisor = in.ReadFloat();
  x1e8_rightStickDivisor = in.ReadFloat();
  x200_ = in.ReadFloat();
  x204_ballTouchRadius = in.ReadFloat();
  x20c_boostBallDrainTime = in.ReadFloat();
  x218_boostBallMinChargeTime = in.ReadFloat();
  x21c_boostBallMinRelativeSpeedForDamage = in.ReadFloat();
  x220_boostBallChargeTime0 = in.ReadFloat();
  x224_boostBallChargeTime1 = in.ReadFloat();
  x210_boostBallMaxChargeTime = in.ReadFloat();
  x228_boostBallChargeTime2 = x210_boostBallMaxChargeTime;
  x22c_boostBallIncrementalSpeed0 = in.ReadFloat();
  x230_boostBallIncrementalSpeed1 = in.ReadFloat();
  x234_boostBallIncrementalSpeed2 = in.ReadFloat();
}
