#ifndef _CTWEAKPLAYER
#define _CTWEAKPLAYER

#include "types.h"

#include "MetroidPrime/Tweaks/ITweakObject.hpp"

#include "rstl/string.hpp"

class CTweakPlayer : public ITweakObject {
public:
  ~CTweakPlayer() override;

  // TODO CPlayer::ESurfaceRestraints
  float GetMaxTranslationalAcceleration(int s) const { return x4_maxTranslationalAcceleration[s]; }
  float GetMaxRotationalAcceleration(int s) const { return x24_maxRotationalAcceleration[s]; }
  float GetPlayerTranslationFriction(int s) const { return x44_translationFriction[s]; }
  float GetPlayerRotationFriction(int s) const { return x64_rotationFriction[s]; }
  float GetPlayerRotationMaxSpeed(int s) const { return x84_rotationMaxSpeed[s]; }
  float GetPlayerTranslationMaxSpeed(int s) const { return xa4_translationMaxSpeed[s]; }
  float GetNormalGravAccel() const { return xc4_normalGravAccel; }
  float GetFluidGravAccel() const { return xc8_fluidGravAccel; }
  float GetVerticalJumpAccel() const { return xcc_verticalJumpAccel; }
  float GetHorizontalJumpAccel() const { return xd0_horizontalJumpAccel; }
  float GetVerticalDoubleJumpAccel() const { return xd4_verticalDoubleJumpAccel; }
  float GetHorizontalDoubleJumpAccel() const { return xd8_horizontalDoubleJumpAccel; }
  float GetWaterJumpFactor() const { return xdc_waterJumpFactor; }
  float GetWaterBallJumpFactor() const { return xe0_waterBallJumpFactor; }
  float GetLavaJumpFactor() const { return xe4_lavaJumpFactor; }
  float GetLavaBallJumpFactor() const { return xe8_lavaBallJumpFactor; }
  float GetPhazonJumpFactor() const { return xec_phazonJumpFactor; }
  float GetPhazonBallJumpFactor() const { return xf0_phazonBallJumpFactor; }
  float GetAllowedJumpTime() const { return xf4_allowedJumpTime; }
  float GetAllowedDoubleJumpTime() const { return xf8_allowedDoubleJumpTime; }
  float GetMinDoubleJumpWindow() const { return xfc_minDoubleJumpWindow; }
  float GetMaxDoubleJumpWindow() const { return x100_maxDoubleJumpWindow; }
  float GetMinJumpTime() const { return x108_minJumpTime; }
  float GetMinDoubleJumpTime() const { return x10c_minDoubleJumpTime; }
  float GetAllowedLedgeTime() const { return x110_allowedLedgeTime; }
  float GetDoubleJumpImpulse() const { return x114_doubleJumpImpulse; }
  float GetBackwardsForceMultiplier() const { return x118_backwardsForceMultiplier; }
  float GetBombJumpRadius() const { return x11c_bombJumpRadius; }
  float GetBombJumpHeight() const { return x120_bombJumpHeight; }
  float GetEyeOffset() const { return x124_eyeOffset; }
  float GetTurnSpeedMultiplier() const { return x128_turnSpeedMultiplier; }
  float GetFreeLookTurnSpeedMultiplier() const { return x12c_freeLookTurnSpeedMultiplier; }
  float GetFreeLookSpeed() const { return x138_freeLookSpeed; }
  float GetFreeLookSnapSpeed() const { return x13c_freeLookSnapSpeed; }
  float GetFreeLookCenteredThresholdAngle() const { return x144_freeLookCenteredThresholdAngle; }
  float GetFreeLookCenteredTime() const { return x148_freeLookCenteredTime; }
  float GetOrbitModeTimer() const { return x180_orbitModeTimer; }
  float GetOrbitUpperAngle() const { return x188_orbitUpperAngle; }
  float GetOrbitLowerAngle() const { return x18c_orbitLowerAngle; }
  float GetOrbitHorizAngle() const { return x190_orbitHorizAngle; }
  float GetOrbitMaxTargetDistance() const { return x19c_orbitMaxTargetDistance; }
  float GetOrbitMaxLockDistance() const { return x1a0_orbitMaxLockDistance; }
  float GetOrbitDistanceThreshold() const { return x1a4_orbitDistanceThreshold; }
  uint GetOrbitScreenBoxHalfExtentX(int zone) const { return x1a8_orbitScreenBoxHalfExtentX[zone]; }
  uint GetOrbitScreenBoxHalfExtentY(int zone) const { return x1b0_orbitScreenBoxHalfExtentY[zone]; }
  uint GetOrbitScreenBoxCenterX(int zone) const { return x1b8_orbitScreenBoxCenterX[zone]; }
  uint GetOrbitScreenBoxCenterY(int zone) const { return x1c0_orbitScreenBoxCenterY[zone]; }
  uint GetOrbitZoneIdealX(int zone) const { return x1c8_orbitZoneIdealX[zone]; }
  uint GetOrbitZoneIdealY(int zone) const { return x1d0_orbitZoneIdealY[zone]; }
  float GetOrbitNearX() const { return x1d8_orbitNearX; }
  float GetOrbitNearZ() const { return x1dc_orbitNearZ; }
  float GetOrbitFixedOffsetZDiff() const { return x1e8_orbitFixedOffsetZDiff; }
  float GetOrbitZRange() const { return x1ec_orbitZRange; }
  bool GetDashEnabled() const { return x200_24_dashEnabled; }
  bool GetDashOnButtonRelease() const { return x200_25_dashOnButtonRelease; }
  float GetDashButtonHoldCancelTime() const { return x204_dashButtonHoldCancelTime; }
  float GetDashStrafeInputThreshold() const { return x208_dashStrafeInputThreshold; }
  float GetSidewaysDoubleJumpImpulse() const { return x20c_sidewaysDoubleJumpImpulse; }
  float GetSidewaysVerticalDoubleJumpAccel() const { return x210_sidewaysVerticalDoubleJumpAccel; }
  float GetSidewaysHorizontalDoubleJumpAccel() const {
    return x214_sidewaysHorizontalDoubleJumpAccel;
  }
  float GetScanningRange() const { return x218_scanningRange; }
  bool GetScanRetention() const { return x21c_24_scanRetention; }
  bool GetScanFreezesGame() const { return x21c_25_scanFreezesGame; }
  bool GetOrbitWhileScanning() const { return x21c_26_orbitWhileScanning; }
  float GetScanMaxTargetDistance() const { return x220_scanMaxTargetDistance; }
  float GetScanMaxLockDistance() const { return x224_scanMaxLockDistance; }
  bool GetMoveDuringFreeLook() const { return x228_27_moveDuringFreeLook; }
  bool GetHoldButtonsForFreeLook() const { return x228_28_holdButtonsForFreeLook; }
  bool GetTwoButtonsForFreeLook() const { return x228_29_twoButtonsForFreeLook; }
  bool GetAimWhenOrbitingPoint() const { return x229_25_aimWhenOrbitingPoint; }
  bool GetStayInFreeLookWhileFiring() const { return x229_26_stayInFreeLookWhileFiring; }
  bool GetOrbitFixedOffset() const { return x229_29_orbitFixedOffset; }
  bool GetGunButtonTogglesHolster() const { return x229_30_gunButtonTogglesHolster; }
  bool GetGunNotFiringHolstersGun() const { return x229_31_gunNotFiringHolstersGun; }
  bool GetFallingDoubleJump() const { return x22a_24_fallingDoubleJump; }
  bool GetImpulseDoubleJump() const { return x22a_25_impulseDoubleJump; }
  bool GetFiringCancelsCameraPitch() const { return x22a_26_firingCancelsCameraPitch; }
  bool GetAssistedAimingIgnoreHorizontal() const { return x22a_27_assistedAimingIgnoreHorizontal; }
  bool GetAssistedAimingIgnoreVertical() const { return x22a_28_assistedAimingIgnoreVertical; }
  float GetAimMaxDistance() const { return x234_aimMaxDistance; }
  float GetAimThresholdDistance() const { return x24c_aimThresholdDistance; }
  float GetAimBoxWidth() const { return x258_aimBoxWidth; }
  float GetAimBoxHeight() const { return x25c_aimBoxHeight; }
  float GetAimTargetTimer() const { return x260_aimTargetTimer; }
  float GetAimAssistHorizontalAngle() const { return x264_aimAssistHorizontalAngle; }
  float GetAimAssistVerticalAngle() const { return x268_aimAssistVerticalAngle; }
  float GetPlayerHeight() const { return x26c_playerHeight; }
  float GetPlayerXYHalfExtent() const { return x270_playerXYHalfExtent; }
  float GetStepUpHeight() const { return x274_stepUpHeight; }
  float GetStepDownHeight() const { return x278_stepDownHeight; }
  float GetPlayerBallHalfExtent() const { return x27c_playerBallHalfExtent; }
  float GetOrbitDistanceMax() const { return x2a0_orbitDistanceMax; }
  float GetGrappleSwingLength() const { return x2a4_grappleSwingLength; }
  float GetGrappleSwingPeriod() const { return x2a8_grappleSwingPeriod; }
  float GetGrapplePullSpeedMin() const { return x2ac_grapplePullSpeedMin; }
  float GetMaxGrappleLockedTurnAlignDistance() const {
    return x2b4_maxGrappleLockedTurnAlignDistance;
  }
  float GetGrapplePullSpeedProportion() const { return x2b8_grapplePullSpeedProportion; }
  float GetGrapplePullSpeedMax() const { return x2bc_grapplePullSpeedMax; }
  float GetGrappleLookCenterSpeed() const { return x2c0_grappleLookCenterSpeed; }
  float GetMaxGrappleTurnSpeed() const { return x2c4_maxGrappleTurnSpeed; }
  float GetGrappleJumpForce() const { return x2c8_grappleJumpForce; }
  float GetGrappleReleaseTime() const { return x2cc_grappleReleaseTime; }
  uint GetGrappleJumpMode() const { return x2d0_grappleJumpMode; }
  bool GetOrbitReleaseBreaksGrapple() const { return x2d4_orbitReleaseBreaksGrapple; }
  bool GetInvertGrappleTurn() const { return x2d5_invertGrappleTurn; }
  float GetGrappleBeamSpeed() const { return x2d8_grappleBeamSpeed; }
  float GetGrappleBeamXWaveAmplitude() const { return x2dc_grappleBeamXWaveAmplitude; }
  float GetGrappleBeamZWaveAmplitude() const { return x2e0_grappleBeamZWaveAmplitude; }
  float GetGrappleBeamAnglePhaseDelta() const { return x2e4_grappleBeamAnglePhaseDelta; }
  float GetHorizontalFreeLookAngleVel() const { return x130_horizontalFreeLookAngleVel; }
  float GetVerticalFreeLookAngleVel() const { return x134_verticalFreeLookAngleVel; }
  float GetOrbitCameraSpeed() const { return x184_orbitCameraSpeed; }
  float GetOrbitPreventionTime() const { return x1fc_orbitPreventionTime; }
  bool GetFreeLookTurnsPlayer() const { return x228_24_freelookTurnsPlayer; }
  float GetJumpCameraPitchDownStart() const { return x288_jumpCameraPitchDownStart; }
  float GetJumpCameraPitchDownFull() const { return x28c_jumpCameraPitchDownFull; }
  float GetJumpCameraPitchDownAngle() const { return x290_jumpCameraPitchDownAngle; }
  float GetFallCameraPitchDownStart() const { return x294_fallCameraPitchDownStart; }
  float GetFallCameraPitchDownFull() const { return x298_fallCameraPitchDownFull; }
  float GetFallCameraPitchDownAngle() const { return x29c_fallCameraPitchDownAngle; }
  float GetFirstPersonCameraSpeed() const { return x280_firstPersonCameraSpeed; }
  float GetGrappleCameraSpeed() const { return x2b0_grappleCameraSpeed; }
  float GetFreeLookDampenFactor() const { return x14c_freeLookDampenFactor; }
  float GetLeftAnalogMax() const { return x150_leftDiv; }
  float GetRightAnalogMax() const { return x154_rightDiv; }
  float GetOrbitMinDistance(int type) const { return x158_orbitMinDistance[type]; }
  float GetOrbitNormalDistance(int type) const { return x164_orbitNormalDistance[type]; }
  float GetOrbitMaxDistance(int type) const { return x170_orbitMaxDistance[type]; }
  float GetFrozenTimeout() const { return x2f8_frozenTimeout; }
  uint GetIceBreakJumpCount() const { return x2fc_iceBreakJumpCount; }
  float GetVariaDamageReduction() const { return x300_variaDamageReduction; }
  float GetGravityDamageReduction() const { return x304_gravityDamageReduction; }
  float GetPhazonDamageReduction() const { return x308_phazonDamageReduction; }

private:
  float x4_maxTranslationalAcceleration[8];
  float x24_maxRotationalAcceleration[8];
  float x44_translationFriction[8];
  float x64_rotationFriction[8];
  float x84_rotationMaxSpeed[8];
  float xa4_translationMaxSpeed[8];
  float xc4_normalGravAccel;
  float xc8_fluidGravAccel;
  float xcc_verticalJumpAccel;
  float xd0_horizontalJumpAccel;
  float xd4_verticalDoubleJumpAccel;
  float xd8_horizontalDoubleJumpAccel;
  float xdc_waterJumpFactor;
  float xe0_waterBallJumpFactor;
  float xe4_lavaJumpFactor;
  float xe8_lavaBallJumpFactor;
  float xec_phazonJumpFactor;
  float xf0_phazonBallJumpFactor;
  float xf4_allowedJumpTime;
  float xf8_allowedDoubleJumpTime;
  float xfc_minDoubleJumpWindow;
  float x100_maxDoubleJumpWindow;
  float x104_;
  float x108_minJumpTime;
  float x10c_minDoubleJumpTime;
  float x110_allowedLedgeTime;
  float x114_doubleJumpImpulse;
  float x118_backwardsForceMultiplier;
  float x11c_bombJumpRadius;
  float x120_bombJumpHeight;
  float x124_eyeOffset;
  float x128_turnSpeedMultiplier;
  float x12c_freeLookTurnSpeedMultiplier;
  float x130_horizontalFreeLookAngleVel;
  float x134_verticalFreeLookAngleVel;
  float x138_freeLookSpeed;
  float x13c_freeLookSnapSpeed;
  float x140_;
  float x144_freeLookCenteredThresholdAngle;
  float x148_freeLookCenteredTime;
  float x14c_freeLookDampenFactor;
  float x150_leftDiv;
  float x154_rightDiv;
  float x158_orbitMinDistance[3];
  float x164_orbitNormalDistance[3];
  float x170_orbitMaxDistance[3];
  float x17c_;
  float x180_orbitModeTimer;
  float x184_orbitCameraSpeed;
  float x188_orbitUpperAngle;
  float x18c_orbitLowerAngle;
  float x190_orbitHorizAngle;
  float x194_;
  float x198_;
  float x19c_orbitMaxTargetDistance;
  float x1a0_orbitMaxLockDistance;
  float x1a4_orbitDistanceThreshold;
  uint x1a8_orbitScreenBoxHalfExtentX[2];
  uint x1b0_orbitScreenBoxHalfExtentY[2];
  uint x1b8_orbitScreenBoxCenterX[2];
  uint x1c0_orbitScreenBoxCenterY[2];
  uint x1c8_orbitZoneIdealX[2];
  uint x1d0_orbitZoneIdealY[2];
  float x1d8_orbitNearX;
  float x1dc_orbitNearZ;
  float x1e0_;
  float x1e4_;
  float x1e8_orbitFixedOffsetZDiff;
  float x1ec_orbitZRange;
  float x1f0_;
  float x1f4_;
  float x1f8_;
  float x1fc_orbitPreventionTime;
  bool x200_24_dashEnabled : 1;
  bool x200_25_dashOnButtonRelease : 1;
  float x204_dashButtonHoldCancelTime;
  float x208_dashStrafeInputThreshold;
  float x20c_sidewaysDoubleJumpImpulse;
  float x210_sidewaysVerticalDoubleJumpAccel;
  float x214_sidewaysHorizontalDoubleJumpAccel;
  float x218_scanningRange;
  bool x21c_24_scanRetention : 1;
  bool x21c_25_scanFreezesGame : 1;
  bool x21c_26_orbitWhileScanning : 1;
  float x220_scanMaxTargetDistance;
  float x224_scanMaxLockDistance;
  bool x228_24_freelookTurnsPlayer : 1;
  bool x228_25_ : 1;
  bool x228_26_ : 1;
  bool x228_27_moveDuringFreeLook : 1;
  bool x228_28_holdButtonsForFreeLook : 1;
  bool x228_29_twoButtonsForFreeLook : 1;
  bool x228_30_ : 1;
  bool x228_31_ : 1;
  bool x229_24_ : 1;
  bool x229_25_aimWhenOrbitingPoint : 1;
  bool x229_26_stayInFreeLookWhileFiring : 1;
  bool x229_27_ : 1;
  bool x229_28_ : 1;
  bool x229_29_orbitFixedOffset : 1;
  bool x229_30_gunButtonTogglesHolster : 1;
  bool x229_31_gunNotFiringHolstersGun : 1;
  bool x22a_24_fallingDoubleJump : 1;
  bool x22a_25_impulseDoubleJump : 1;
  bool x22a_26_firingCancelsCameraPitch : 1;
  bool x22a_27_assistedAimingIgnoreHorizontal : 1;
  bool x22a_28_assistedAimingIgnoreVertical : 1;
  float x22c_;
  float x230_;
  float x234_aimMaxDistance;
  float x238_;
  float x23c_;
  float x240_;
  float x244_;
  float x248_;
  float x24c_aimThresholdDistance;
  float x250_;
  float x254_;
  float x258_aimBoxWidth;
  float x25c_aimBoxHeight;
  float x260_aimTargetTimer;
  float x264_aimAssistHorizontalAngle;
  float x268_aimAssistVerticalAngle;
  float x26c_playerHeight;
  float x270_playerXYHalfExtent;
  float x274_stepUpHeight;
  float x278_stepDownHeight;
  float x27c_playerBallHalfExtent;
  float x280_firstPersonCameraSpeed;
  float x284_;
  float x288_jumpCameraPitchDownStart;
  float x28c_jumpCameraPitchDownFull;
  float x290_jumpCameraPitchDownAngle;
  float x294_fallCameraPitchDownStart;
  float x298_fallCameraPitchDownFull;
  float x29c_fallCameraPitchDownAngle;
  float x2a0_orbitDistanceMax;
  float x2a4_grappleSwingLength;
  float x2a8_grappleSwingPeriod;
  float x2ac_grapplePullSpeedMin;
  float x2b0_grappleCameraSpeed;
  float x2b4_maxGrappleLockedTurnAlignDistance;
  float x2b8_grapplePullSpeedProportion;
  float x2bc_grapplePullSpeedMax;
  float x2c0_grappleLookCenterSpeed;
  float x2c4_maxGrappleTurnSpeed;
  float x2c8_grappleJumpForce;
  float x2cc_grappleReleaseTime;
  uint x2d0_grappleJumpMode;
  bool x2d4_orbitReleaseBreaksGrapple;
  bool x2d5_invertGrappleTurn;
  float x2d8_grappleBeamSpeed;
  float x2dc_grappleBeamXWaveAmplitude;
  float x2e0_grappleBeamZWaveAmplitude;
  float x2e4_grappleBeamAnglePhaseDelta;
  float x2e8_;
  float x2ec_;
  float x2f0_;
  bool x2f4_;
  float x2f8_frozenTimeout;
  uint x2fc_iceBreakJumpCount;
  float x300_variaDamageReduction;
  float x304_gravityDamageReduction;
  float x308_phazonDamageReduction;
};

extern CTweakPlayer* gpTweakPlayer;

#endif // _CTWEAKPLAYER
