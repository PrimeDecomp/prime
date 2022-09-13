#ifndef _CTWEAKPLAYER_HPP
#define _CTWEAKPLAYER_HPP

#include "types.h"

#include "MetroidPrime/Tweaks/ITweakObject.hpp"

#include "rstl/string.hpp"

class CTweakPlayer : public ITweakObject {
public:
  ~CTweakPlayer() override;

  // TODO CPlayer::ESurfaceRestraints
  f32 GetMaxTranslationalAcceleration(int s) const { return x4_maxTranslationalAcceleration[s]; }
  f32 GetMaxRotationalAcceleration(int s) const { return x24_maxRotationalAcceleration[s]; }
  f32 GetPlayerTranslationFriction(int s) const { return x44_translationFriction[s]; }
  f32 GetPlayerRotationFriction(int s) const { return x64_rotationFriction[s]; }
  f32 GetPlayerRotationMaxSpeed(int s) const { return x84_rotationMaxSpeed[s]; }
  f32 GetPlayerTranslationMaxSpeed(int s) const { return xa4_translationMaxSpeed[s]; }
  f32 GetNormalGravAccel() const { return xc4_normalGravAccel; }
  f32 GetFluidGravAccel() const { return xc8_fluidGravAccel; }
  f32 GetVerticalJumpAccel() const { return xcc_verticalJumpAccel; }
  f32 GetHorizontalJumpAccel() const { return xd0_horizontalJumpAccel; }
  f32 GetVerticalDoubleJumpAccel() const { return xd4_verticalDoubleJumpAccel; }
  f32 GetHorizontalDoubleJumpAccel() const { return xd8_horizontalDoubleJumpAccel; }
  f32 GetWaterJumpFactor() const { return xdc_waterJumpFactor; }
  f32 GetWaterBallJumpFactor() const { return xe0_waterBallJumpFactor; }
  f32 GetLavaJumpFactor() const { return xe4_lavaJumpFactor; }
  f32 GetLavaBallJumpFactor() const { return xe8_lavaBallJumpFactor; }
  f32 GetPhazonJumpFactor() const { return xec_phazonJumpFactor; }
  f32 GetPhazonBallJumpFactor() const { return xf0_phazonBallJumpFactor; }
  f32 GetAllowedJumpTime() const { return xf4_allowedJumpTime; }
  f32 GetAllowedDoubleJumpTime() const { return xf8_allowedDoubleJumpTime; }
  f32 GetMinDoubleJumpWindow() const { return xfc_minDoubleJumpWindow; }
  f32 GetMaxDoubleJumpWindow() const { return x100_maxDoubleJumpWindow; }
  f32 GetMinJumpTime() const { return x108_minJumpTime; }
  f32 GetMinDoubleJumpTime() const { return x10c_minDoubleJumpTime; }
  f32 GetAllowedLedgeTime() const { return x110_allowedLedgeTime; }
  f32 GetDoubleJumpImpulse() const { return x114_doubleJumpImpulse; }
  f32 GetBackwardsForceMultiplier() const { return x118_backwardsForceMultiplier; }
  f32 GetBombJumpRadius() const { return x11c_bombJumpRadius; }
  f32 GetBombJumpHeight() const { return x120_bombJumpHeight; }
  f32 GetEyeOffset() const { return x124_eyeOffset; }
  f32 GetTurnSpeedMultiplier() const { return x128_turnSpeedMultiplier; }
  f32 GetFreeLookTurnSpeedMultiplier() const { return x12c_freeLookTurnSpeedMultiplier; }
  f32 GetFreeLookSpeed() const { return x138_freeLookSpeed; }
  f32 GetFreeLookSnapSpeed() const { return x13c_freeLookSnapSpeed; }
  f32 GetFreeLookCenteredThresholdAngle() const { return x144_freeLookCenteredThresholdAngle; }
  f32 GetFreeLookCenteredTime() const { return x148_freeLookCenteredTime; }
  f32 GetOrbitModeTimer() const { return x180_orbitModeTimer; }
  f32 GetOrbitUpperAngle() const { return x188_orbitUpperAngle; }
  f32 GetOrbitLowerAngle() const { return x18c_orbitLowerAngle; }
  f32 GetOrbitHorizAngle() const { return x190_orbitHorizAngle; }
  f32 GetOrbitMaxTargetDistance() const { return x19c_orbitMaxTargetDistance; }
  f32 GetOrbitMaxLockDistance() const { return x1a0_orbitMaxLockDistance; }
  f32 GetOrbitDistanceThreshold() const { return x1a4_orbitDistanceThreshold; }
  uint GetOrbitScreenBoxHalfExtentX(int zone) const { return x1a8_orbitScreenBoxHalfExtentX[zone]; }
  uint GetOrbitScreenBoxHalfExtentY(int zone) const { return x1b0_orbitScreenBoxHalfExtentY[zone]; }
  uint GetOrbitScreenBoxCenterX(int zone) const { return x1b8_orbitScreenBoxCenterX[zone]; }
  uint GetOrbitScreenBoxCenterY(int zone) const { return x1c0_orbitScreenBoxCenterY[zone]; }
  uint GetOrbitZoneIdealX(int zone) const { return x1c8_orbitZoneIdealX[zone]; }
  uint GetOrbitZoneIdealY(int zone) const { return x1d0_orbitZoneIdealY[zone]; }
  f32 GetOrbitNearX() const { return x1d8_orbitNearX; }
  f32 GetOrbitNearZ() const { return x1dc_orbitNearZ; }
  f32 GetOrbitFixedOffsetZDiff() const { return x1e8_orbitFixedOffsetZDiff; }
  f32 GetOrbitZRange() const { return x1ec_orbitZRange; }
  bool GetDashEnabled() const { return x200_24_dashEnabled; }
  bool GetDashOnButtonRelease() const { return x200_25_dashOnButtonRelease; }
  f32 GetDashButtonHoldCancelTime() const { return x204_dashButtonHoldCancelTime; }
  f32 GetDashStrafeInputThreshold() const { return x208_dashStrafeInputThreshold; }
  f32 GetSidewaysDoubleJumpImpulse() const { return x20c_sidewaysDoubleJumpImpulse; }
  f32 GetSidewaysVerticalDoubleJumpAccel() const { return x210_sidewaysVerticalDoubleJumpAccel; }
  f32 GetSidewaysHorizontalDoubleJumpAccel() const { return x214_sidewaysHorizontalDoubleJumpAccel; }
  f32 GetScanningRange() const { return x218_scanningRange; }
  bool GetScanRetention() const { return x21c_24_scanRetention; }
  bool GetScanFreezesGame() const { return x21c_25_scanFreezesGame; }
  bool GetOrbitWhileScanning() const { return x21c_26_orbitWhileScanning; }
  f32 GetScanMaxTargetDistance() const { return x220_scanMaxTargetDistance; }
  f32 GetScanMaxLockDistance() const { return x224_scanMaxLockDistance; }
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
  f32 GetAimMaxDistance() const { return x234_aimMaxDistance; }
  f32 GetAimThresholdDistance() const { return x24c_aimThresholdDistance; }
  f32 GetAimBoxWidth() const { return x258_aimBoxWidth; }
  f32 GetAimBoxHeight() const { return x25c_aimBoxHeight; }
  f32 GetAimTargetTimer() const { return x260_aimTargetTimer; }
  f32 GetAimAssistHorizontalAngle() const { return x264_aimAssistHorizontalAngle; }
  f32 GetAimAssistVerticalAngle() const { return x268_aimAssistVerticalAngle; }
  f32 GetPlayerHeight() const { return x26c_playerHeight; }
  f32 GetPlayerXYHalfExtent() const { return x270_playerXYHalfExtent; }
  f32 GetStepUpHeight() const { return x274_stepUpHeight; }
  f32 GetStepDownHeight() const { return x278_stepDownHeight; }
  f32 GetPlayerBallHalfExtent() const { return x27c_playerBallHalfExtent; }
  f32 GetOrbitDistanceMax() const { return x2a0_orbitDistanceMax; }
  f32 GetGrappleSwingLength() const { return x2a4_grappleSwingLength; }
  f32 GetGrappleSwingPeriod() const { return x2a8_grappleSwingPeriod; }
  f32 GetGrapplePullSpeedMin() const { return x2ac_grapplePullSpeedMin; }
  f32 GetMaxGrappleLockedTurnAlignDistance() const { return x2b4_maxGrappleLockedTurnAlignDistance; }
  f32 GetGrapplePullSpeedProportion() const { return x2b8_grapplePullSpeedProportion; }
  f32 GetGrapplePullSpeedMax() const { return x2bc_grapplePullSpeedMax; }
  f32 GetGrappleLookCenterSpeed() const { return x2c0_grappleLookCenterSpeed; }
  f32 GetMaxGrappleTurnSpeed() const { return x2c4_maxGrappleTurnSpeed; }
  f32 GetGrappleJumpForce() const { return x2c8_grappleJumpForce; }
  f32 GetGrappleReleaseTime() const { return x2cc_grappleReleaseTime; }
  uint GetGrappleJumpMode() const { return x2d0_grappleJumpMode; }
  bool GetOrbitReleaseBreaksGrapple() const { return x2d4_orbitReleaseBreaksGrapple; }
  bool GetInvertGrappleTurn() const { return x2d5_invertGrappleTurn; }
  f32 GetGrappleBeamSpeed() const { return x2d8_grappleBeamSpeed; }
  f32 GetGrappleBeamXWaveAmplitude() const { return x2dc_grappleBeamXWaveAmplitude; }
  f32 GetGrappleBeamZWaveAmplitude() const { return x2e0_grappleBeamZWaveAmplitude; }
  f32 GetGrappleBeamAnglePhaseDelta() const { return x2e4_grappleBeamAnglePhaseDelta; }
  f32 GetHorizontalFreeLookAngleVel() const { return x130_horizontalFreeLookAngleVel; }
  f32 GetVerticalFreeLookAngleVel() const { return x134_verticalFreeLookAngleVel; }
  f32 GetOrbitCameraSpeed() const { return x184_orbitCameraSpeed; }
  f32 GetOrbitPreventionTime() const { return x1fc_orbitPreventionTime; }
  bool GetFreeLookTurnsPlayer() const { return x228_24_freelookTurnsPlayer; }
  f32 GetJumpCameraPitchDownStart() const { return x288_jumpCameraPitchDownStart; }
  f32 GetJumpCameraPitchDownFull() const { return x28c_jumpCameraPitchDownFull; }
  f32 GetJumpCameraPitchDownAngle() const { return x290_jumpCameraPitchDownAngle; }
  f32 GetFallCameraPitchDownStart() const { return x294_fallCameraPitchDownStart; }
  f32 GetFallCameraPitchDownFull() const { return x298_fallCameraPitchDownFull; }
  f32 GetFallCameraPitchDownAngle() const { return x29c_fallCameraPitchDownAngle; }
  f32 GetFirstPersonCameraSpeed() const { return x280_firstPersonCameraSpeed; }
  f32 GetGrappleCameraSpeed() const { return x2b0_grappleCameraSpeed; }
  f32 GetFreeLookDampenFactor() const { return x14c_freeLookDampenFactor; }
  f32 GetLeftAnalogMax() const { return x150_leftDiv; }
  f32 GetRightAnalogMax() const { return x154_rightDiv; }
  f32 GetOrbitMinDistance(int type) const { return x158_orbitMinDistance[type]; }
  f32 GetOrbitNormalDistance(int type) const { return x164_orbitNormalDistance[type]; }
  f32 GetOrbitMaxDistance(int type) const { return x170_orbitMaxDistance[type]; }
  f32 GetFrozenTimeout() const { return x2f8_frozenTimeout; }
  uint GetIceBreakJumpCount() const { return x2fc_iceBreakJumpCount; }
  f32 GetVariaDamageReduction() const { return x300_variaDamageReduction; }
  f32 GetGravityDamageReduction() const { return x304_gravityDamageReduction; }
  f32 GetPhazonDamageReduction() const { return x308_phazonDamageReduction; }

private:
  f32 x4_maxTranslationalAcceleration[8];
  f32 x24_maxRotationalAcceleration[8];
  f32 x44_translationFriction[8];
  f32 x64_rotationFriction[8];
  f32 x84_rotationMaxSpeed[8];
  f32 xa4_translationMaxSpeed[8];
  f32 xc4_normalGravAccel;
  f32 xc8_fluidGravAccel;
  f32 xcc_verticalJumpAccel;
  f32 xd0_horizontalJumpAccel;
  f32 xd4_verticalDoubleJumpAccel;
  f32 xd8_horizontalDoubleJumpAccel;
  f32 xdc_waterJumpFactor;
  f32 xe0_waterBallJumpFactor;
  f32 xe4_lavaJumpFactor;
  f32 xe8_lavaBallJumpFactor;
  f32 xec_phazonJumpFactor;
  f32 xf0_phazonBallJumpFactor;
  f32 xf4_allowedJumpTime;
  f32 xf8_allowedDoubleJumpTime;
  f32 xfc_minDoubleJumpWindow;
  f32 x100_maxDoubleJumpWindow;
  f32 x104_;
  f32 x108_minJumpTime;
  f32 x10c_minDoubleJumpTime;
  f32 x110_allowedLedgeTime;
  f32 x114_doubleJumpImpulse;
  f32 x118_backwardsForceMultiplier;
  f32 x11c_bombJumpRadius;
  f32 x120_bombJumpHeight;
  f32 x124_eyeOffset;
  f32 x128_turnSpeedMultiplier;
  f32 x12c_freeLookTurnSpeedMultiplier;
  f32 x130_horizontalFreeLookAngleVel;
  f32 x134_verticalFreeLookAngleVel;
  f32 x138_freeLookSpeed;
  f32 x13c_freeLookSnapSpeed;
  f32 x140_;
  f32 x144_freeLookCenteredThresholdAngle;
  f32 x148_freeLookCenteredTime;
  f32 x14c_freeLookDampenFactor;
  f32 x150_leftDiv;
  f32 x154_rightDiv;
  f32 x158_orbitMinDistance[3];
  f32 x164_orbitNormalDistance[3];
  f32 x170_orbitMaxDistance[3];
  f32 x17c_;
  f32 x180_orbitModeTimer;
  f32 x184_orbitCameraSpeed;
  f32 x188_orbitUpperAngle;
  f32 x18c_orbitLowerAngle;
  f32 x190_orbitHorizAngle;
  f32 x194_;
  f32 x198_;
  f32 x19c_orbitMaxTargetDistance;
  f32 x1a0_orbitMaxLockDistance;
  f32 x1a4_orbitDistanceThreshold;
  uint x1a8_orbitScreenBoxHalfExtentX[2];
  uint x1b0_orbitScreenBoxHalfExtentY[2];
  uint x1b8_orbitScreenBoxCenterX[2];
  uint x1c0_orbitScreenBoxCenterY[2];
  uint x1c8_orbitZoneIdealX[2];
  uint x1d0_orbitZoneIdealY[2];
  f32 x1d8_orbitNearX;
  f32 x1dc_orbitNearZ;
  f32 x1e0_;
  f32 x1e4_;
  f32 x1e8_orbitFixedOffsetZDiff;
  f32 x1ec_orbitZRange;
  f32 x1f0_;
  f32 x1f4_;
  f32 x1f8_;
  f32 x1fc_orbitPreventionTime;
  bool x200_24_dashEnabled : 1;
  bool x200_25_dashOnButtonRelease : 1;
  f32 x204_dashButtonHoldCancelTime;
  f32 x208_dashStrafeInputThreshold;
  f32 x20c_sidewaysDoubleJumpImpulse;
  f32 x210_sidewaysVerticalDoubleJumpAccel;
  f32 x214_sidewaysHorizontalDoubleJumpAccel;
  f32 x218_scanningRange;
  bool x21c_24_scanRetention : 1;
  bool x21c_25_scanFreezesGame : 1;
  bool x21c_26_orbitWhileScanning : 1;
  f32 x220_scanMaxTargetDistance;
  f32 x224_scanMaxLockDistance;
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
  f32 x22c_;
  f32 x230_;
  f32 x234_aimMaxDistance;
  f32 x238_;
  f32 x23c_;
  f32 x240_;
  f32 x244_;
  f32 x248_;
  f32 x24c_aimThresholdDistance;
  f32 x250_;
  f32 x254_;
  f32 x258_aimBoxWidth;
  f32 x25c_aimBoxHeight;
  f32 x260_aimTargetTimer;
  f32 x264_aimAssistHorizontalAngle;
  f32 x268_aimAssistVerticalAngle;
  f32 x26c_playerHeight;
  f32 x270_playerXYHalfExtent;
  f32 x274_stepUpHeight;
  f32 x278_stepDownHeight;
  f32 x27c_playerBallHalfExtent;
  f32 x280_firstPersonCameraSpeed;
  f32 x284_;
  f32 x288_jumpCameraPitchDownStart;
  f32 x28c_jumpCameraPitchDownFull;
  f32 x290_jumpCameraPitchDownAngle;
  f32 x294_fallCameraPitchDownStart;
  f32 x298_fallCameraPitchDownFull;
  f32 x29c_fallCameraPitchDownAngle;
  f32 x2a0_orbitDistanceMax;
  f32 x2a4_grappleSwingLength;
  f32 x2a8_grappleSwingPeriod;
  f32 x2ac_grapplePullSpeedMin;
  f32 x2b0_grappleCameraSpeed;
  f32 x2b4_maxGrappleLockedTurnAlignDistance;
  f32 x2b8_grapplePullSpeedProportion;
  f32 x2bc_grapplePullSpeedMax;
  f32 x2c0_grappleLookCenterSpeed;
  f32 x2c4_maxGrappleTurnSpeed;
  f32 x2c8_grappleJumpForce;
  f32 x2cc_grappleReleaseTime;
  uint x2d0_grappleJumpMode;
  bool x2d4_orbitReleaseBreaksGrapple;
  bool x2d5_invertGrappleTurn;
  f32 x2d8_grappleBeamSpeed;
  f32 x2dc_grappleBeamXWaveAmplitude;
  f32 x2e0_grappleBeamZWaveAmplitude;
  f32 x2e4_grappleBeamAnglePhaseDelta;
  f32 x2e8_;
  f32 x2ec_;
  f32 x2f0_;
  bool x2f4_;
  f32 x2f8_frozenTimeout;
  uint x2fc_iceBreakJumpCount;
  f32 x300_variaDamageReduction;
  f32 x304_gravityDamageReduction;
  f32 x308_phazonDamageReduction;
};

extern CTweakPlayer* gpTweakPlayer;

#endif
