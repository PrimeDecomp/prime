#ifndef _CTWEAKBALL
#define _CTWEAKBALL

#include "types.h"

#include "MetroidPrime/Tweaks/ITweakObject.hpp"

#include "Kyoto/Math/CVector3f.hpp"

#include "rstl/string.hpp"

class CTweakBall : public ITweakObject {
public:
  ~CTweakBall() override;

  f32 GetMaxBallTranslationAcceleration(int s) const { return x4_maxTranslationAcceleration[s]; }
  f32 GetBallTranslationFriction(int s) const { return x24_translationFriction[s]; }
  f32 GetBallTranslationMaxSpeed(int s) const { return x44_translationMaxSpeed[s]; }
  f32 GetBallCameraElevation() const { return 2.736f; }
  f32 GetBallCameraAnglePerSecond() const { return x74_ballCameraAnglePerSecond; }
  const CVector3f& GetBallCameraOffset() const { return x78_ballCameraOffset; }
  f32 GetBallCameraMinSpeedDistance() const { return x84_ballCameraMinSpeedDistance; }
  f32 GetBallCameraMaxSpeedDistance() const { return x88_ballCameraMaxSpeedDistance; }
  f32 GetBallCameraBackwardsDistance() const { return x8c_ballCameraBackwardsDistance; }
  f32 GetBallCameraSpringConstant() const { return x94_ballCameraSpringConstant; }
  f32 GetBallCameraSpringMax() const { return x98_ballCameraSpringMax; }
  f32 GetBallCameraSpringTardis() const { return x9c_ballCameraSpringTardis; }
  f32 GetBallCameraCentroidSpringConstant() const { return xa0_ballCameraCentroidSpringConstant; }
  f32 GetBallCameraCentroidSpringMax() const { return xa4_ballCameraCentroidSpringMax; }
  f32 GetBallCameraCentroidSpringTardis() const { return xa8_ballCameraCentroidSpringTardis; }
  f32 GetBallCameraCentroidDistanceSpringConstant() const {
    return xac_ballCameraCentroidDistanceSpringConstant;
  }
  f32 GetBallCameraCentroidDistanceSpringMax() const {
    return xb0_ballCameraCentroidDistanceSpringMax;
  }
  f32 GetBallCameraCentroidDistanceSpringTardis() const {
    return xb4_ballCameraCentroidDistanceSpringTardis;
  }
  f32 GetBallCameraLookAtSpringConstant() const { return xb8_ballCameraLookAtSpringConstant; }
  f32 GetBallCameraLookAtSpringMax() const { return xbc_ballCameraLookAtSpringMax; }
  f32 GetBallCameraLookAtSpringTardis() const { return xc0_ballCameraLookAtSpringTardis; }
  f32 GetBallForwardBrakingAcceleration(int s) const {
    return xc4_ballForwardBrakingAcceleration[s];
  }
  f32 GetBallGravity() const { return xe4_ballGravity; }
  f32 GetBallWaterGravity() const { return xe8_ballWaterGravity; }
  f32 GetBallSlipFactor(int s) const { return x12c_ballSlipFactor[s]; }
  f32 GetConservativeDoorCameraDistance() const { return x170_conservativeDoorCamDistance; }
  f32 GetBallCameraChaseElevation() const { return x178_ballCameraChaseElevation; }
  f32 GetBallCameraChaseDampenAngle() const { return x17c_ballCameraChaseDampenAngle; }
  f32 GetBallCameraChaseDistance() const { return x180_ballCameraChaseDistance; }
  f32 GetBallCameraChaseYawSpeed() const { return x184_ballCameraChaseYawSpeed; }
  f32 GetBallCameraChaseAnglePerSecond() const { return x188_ballCameraChaseAnglePerSecond; }
  const CVector3f& GetBallCameraChaseLookAtOffset() const {
    return x18c_ballCameraChaseLookAtOffset;
  }
  f32 GetBallCameraChaseSpringConstant() const { return x198_ballCameraChaseSpringConstant; }
  f32 GetBallCameraChaseSpringMax() const { return x19c_ballCameraChaseSpringMax; }
  f32 GetBallCameraChaseSpringTardis() const { return x1a0_ballCameraChaseSpringTardis; }
  f32 GetBallCameraBoostElevation() const { return x1a4_ballCameraBoostElevation; }
  f32 GetBallCameraBoostDampenAngle() const { return x1a8_ballCameraBoostDampenAngle; }
  f32 GetBallCameraBoostDistance() const { return x1ac_ballCameraBoostDistance; }
  f32 GetBallCameraBoostYawSpeed() const { return x1b0_ballCameraBoostYawSpeed; }
  f32 GetBallCameraBoostAnglePerSecond() const { return x1b4_ballCameraBoostAnglePerSecond; }
  const CVector3f& GetBallCameraBoostLookAtOffset() const {
    return x1b8_ballCameraBoostLookAtOffset;
  }
  f32 GetBallCameraBoostSpringConstant() const { return x1c4_ballCameraBoostSpringConstant; }
  f32 GetBallCameraBoostSpringMax() const { return x1c8_ballCameraBoostSpringMax; }
  f32 GetBallCameraBoostSpringTardis() const { return x1cc_ballCameraBoostSpringTardis; }
  f32 GetBallCameraControlDistance() const { return x1d0_ballCameraControlDistance; }
  f32 GetMinimumAlignmentSpeed() const { return x1dc_minimumAlignmentSpeed; }
  f32 GetTireness() const { return x1e0_tireness; }
  f32 GetMaxLeanAngle() const { return x1ec_maxLeanAngle; }
  f32 GetTireToMarbleThresholdSpeed() const { return x1f0_tireToMarbleThresholdSpeed; }
  f32 GetMarbleToTireThresholdSpeed() const { return x1f4_marbleToTireThresholdSpeed; }
  f32 GetForceToLeanGain() const { return x1f8_forceToLeanGain; }
  f32 GetLeanTrackingGain() const { return x1fc_leanTrackingGain; }
  f32 GetLeftStickDivisor() const { return x1e4_leftStickDivisor; }
  f32 GetRightStickDivisor() const { return x1e8_rightStickDivisor; }
  f32 GetBallTouchRadius() const { return x204_ballTouchRadius; }
  f32 GetBoostBallDrainTime() const { return x20c_boostBallDrainTime; }
  f32 GetBoostBallMaxChargeTime() const { return x210_boostBallMaxChargeTime; }
  f32 GetBoostBallMinChargeTime() const { return x218_boostBallMinChargeTime; }
  f32 GetBoostBallMinRelativeSpeedForDamage() const {
    return x21c_boostBallMinRelativeSpeedForDamage;
  }
  f32 GetBoostBallChargeTimeTable(int i) const {
    switch (i) {
    default:
    case 0:
      return x220_boostBallChargeTime0;
    case 1:
      return x224_boostBallChargeTime1;
    case 2:
      return x228_boostBallChargeTime2;
    }
  }
  f32 GetBoostBallIncrementalSpeedTable(int i) const {
    switch (i) {
    default:
    case 0:
      return x22c_boostBallIncrementalSpeed0;
    case 1:
      return x230_boostBallIncrementalSpeed1;
    case 2:
      return x234_boostBallIncrementalSpeed2;
    }
  }

private:
  f32 x4_maxTranslationAcceleration[8];
  f32 x24_translationFriction[8];
  f32 x44_translationMaxSpeed[8];
  f32 x64_;
  f32 x68_;
  f32 x6c_;
  f32 x70_;
  f32 x74_ballCameraAnglePerSecond;
  CVector3f x78_ballCameraOffset;
  f32 x84_ballCameraMinSpeedDistance;
  f32 x88_ballCameraMaxSpeedDistance;
  f32 x8c_ballCameraBackwardsDistance;
  f32 x90_;
  f32 x94_ballCameraSpringConstant;
  f32 x98_ballCameraSpringMax;
  f32 x9c_ballCameraSpringTardis;
  f32 xa0_ballCameraCentroidSpringConstant;
  f32 xa4_ballCameraCentroidSpringMax;
  f32 xa8_ballCameraCentroidSpringTardis;
  f32 xac_ballCameraCentroidDistanceSpringConstant;
  f32 xb0_ballCameraCentroidDistanceSpringMax;
  f32 xb4_ballCameraCentroidDistanceSpringTardis;
  f32 xb8_ballCameraLookAtSpringConstant;
  f32 xbc_ballCameraLookAtSpringMax;
  f32 xc0_ballCameraLookAtSpringTardis;
  f32 xc4_ballForwardBrakingAcceleration[8];
  f32 xe4_ballGravity;
  f32 xe8_ballWaterGravity;
  f32 xec_;
  f32 xf0_;
  f32 xf4_;
  f32 xf8_;
  f32 xfc_;
  f32 x100_;
  f32 x104_;
  f32 x108_;
  f32 x10c_;
  f32 x110_;
  f32 x114_;
  f32 x118_;
  f32 x11c_;
  f32 x120_;
  f32 x124_;
  f32 x128_;
  f32 x12c_ballSlipFactor[8];
  f32 x14c_;
  f32 x150_;
  f32 x158_;
  f32 x154_;
  f32 x15c_;
  f32 x160_;
  f32 x164_;
  f32 x168_;
  f32 x16c_;
  f32 x170_conservativeDoorCamDistance;
  f32 x174_;
  f32 x178_ballCameraChaseElevation;
  f32 x17c_ballCameraChaseDampenAngle;
  f32 x180_ballCameraChaseDistance;
  f32 x184_ballCameraChaseYawSpeed;
  f32 x188_ballCameraChaseAnglePerSecond;
  CVector3f x18c_ballCameraChaseLookAtOffset;
  f32 x198_ballCameraChaseSpringConstant;
  f32 x19c_ballCameraChaseSpringMax;
  f32 x1a0_ballCameraChaseSpringTardis;
  f32 x1a4_ballCameraBoostElevation;
  f32 x1a8_ballCameraBoostDampenAngle;
  f32 x1ac_ballCameraBoostDistance;
  f32 x1b0_ballCameraBoostYawSpeed;
  f32 x1b4_ballCameraBoostAnglePerSecond;
  CVector3f x1b8_ballCameraBoostLookAtOffset;
  f32 x1c4_ballCameraBoostSpringConstant;
  f32 x1c8_ballCameraBoostSpringMax;
  f32 x1cc_ballCameraBoostSpringTardis;
  f32 x1d0_ballCameraControlDistance;
  f32 x1d4_;
  f32 x1d8_;
  f32 x1dc_minimumAlignmentSpeed;
  f32 x1e0_tireness;
  f32 x1ec_maxLeanAngle;
  f32 x1f0_tireToMarbleThresholdSpeed;
  f32 x1f4_marbleToTireThresholdSpeed;
  f32 x1f8_forceToLeanGain;
  f32 x1fc_leanTrackingGain;
  f32 x1e4_leftStickDivisor;
  f32 x1e8_rightStickDivisor;
  f32 x200_;
  f32 x204_ballTouchRadius;
  f32 x208_;
  f32 x20c_boostBallDrainTime;
  f32 x218_boostBallMinChargeTime;
  f32 x21c_boostBallMinRelativeSpeedForDamage;
  f32 x220_boostBallChargeTime0;
  f32 x224_boostBallChargeTime1;
  f32 x228_boostBallChargeTime2;
  f32 x210_boostBallMaxChargeTime;
  f32 x22c_boostBallIncrementalSpeed0;
  f32 x230_boostBallIncrementalSpeed1;
  f32 x234_boostBallIncrementalSpeed2;
};

extern CTweakBall* gpTweakBall;

#endif // _CTWEAKBALL
