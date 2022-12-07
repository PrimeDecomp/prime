#include "MetroidPrime/Tweaks/CTweakPlayer.hpp"

#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

CTweakPlayer::~CTweakPlayer() {}

CTweakPlayer::CTweakPlayer(CInputStream& in)
: x2d8_grappleBeamSpeed(0.0)
, x2dc_grappleBeamXWaveAmplitude(0.0)
, x2e0_grappleBeamZWaveAmplitude(0.0)
, x2e4_grappleBeamAnglePhaseDelta(0.0) {
  int i;
  for (i = 0; i < ARRAY_SIZE(x4_maxTranslationalAcceleration); ++i) {
    x4_maxTranslationalAcceleration[i] = in.ReadFloat();
  }
  for (i = 0; i < ARRAY_SIZE(x24_maxRotationalAcceleration); ++i) {
    x24_maxRotationalAcceleration[i] = in.ReadFloat();
  }
  for (i = 0; i < ARRAY_SIZE(x44_translationFriction); ++i) {
    x44_translationFriction[i] = in.ReadFloat();
  }
  for (i = 0; i < ARRAY_SIZE(x64_rotationFriction); ++i) {
    x64_rotationFriction[i] = in.ReadFloat();
  }
  for (i = 0; i < ARRAY_SIZE(x84_rotationMaxSpeed); ++i) {
    x84_rotationMaxSpeed[i] = in.ReadFloat();
  }
  for (i = 0; i < ARRAY_SIZE(xa4_translationMaxSpeed); ++i) {
    xa4_translationMaxSpeed[i] = in.ReadFloat();
  }

  xc4_normalGravAccel = in.ReadFloat();
  xc8_fluidGravAccel = in.ReadFloat();
  xcc_verticalJumpAccel = in.ReadFloat();
  xd0_horizontalJumpAccel = in.ReadFloat();
  xd4_verticalDoubleJumpAccel = in.ReadFloat();
  xd8_horizontalDoubleJumpAccel = in.ReadFloat();
  xdc_waterJumpFactor = in.ReadFloat();
  xe0_waterBallJumpFactor = in.ReadFloat();
  xe4_lavaJumpFactor = in.ReadFloat();
  xe8_lavaBallJumpFactor = in.ReadFloat();
  xec_phazonJumpFactor = in.ReadFloat();
  xf0_phazonBallJumpFactor = in.ReadFloat();
  xf4_allowedJumpTime = in.ReadFloat();
  xf8_allowedDoubleJumpTime = in.ReadFloat();
  xfc_minDoubleJumpWindow = in.ReadFloat();
  x100_maxDoubleJumpWindow = in.ReadFloat();
  x104_ = in.ReadFloat();
  x108_minJumpTime = in.ReadFloat();
  x10c_minDoubleJumpTime = in.ReadFloat();
  x110_allowedLedgeTime = in.ReadFloat();
  x114_doubleJumpImpulse = in.ReadFloat();
  x118_backwardsForceMultiplier = in.ReadFloat();
  x11c_bombJumpRadius = in.ReadFloat();
  x120_bombJumpHeight = in.ReadFloat();
  x124_eyeOffset = in.ReadFloat();
  x128_turnSpeedMultiplier = in.ReadFloat();
  x12c_freeLookTurnSpeedMultiplier = in.ReadFloat();

  x130_horizontalFreeLookAngleVel = in.ReadFloat() * (M_PIF / 180.f);
  x134_verticalFreeLookAngleVel = in.ReadFloat() * (M_PIF / 180.f);
  x138_freeLookSpeed = in.ReadFloat() * (M_PIF / 180.f);
  x13c_freeLookSnapSpeed = in.ReadFloat() * (M_PIF / 180.f);
  x140_ = in.ReadFloat() * (M_PIF / 180.f);
  x144_freeLookCenteredThresholdAngle = in.ReadFloat() * (M_PIF / 180.f);

  x148_freeLookCenteredTime = in.ReadFloat();
  x14c_freeLookDampenFactor = in.ReadFloat();
  x150_leftDiv = in.ReadFloat();
  x154_rightDiv = in.ReadFloat();

  x228_24_freelookTurnsPlayer = in.ReadBool();
  x228_25_ = in.ReadBool();
  x228_26_ = in.ReadBool();
  x228_27_moveDuringFreeLook = in.ReadBool();
  x228_28_holdButtonsForFreeLook = in.ReadBool();
  x228_29_twoButtonsForFreeLook = in.ReadBool();
  x228_30_ = in.ReadBool();
  x228_31_ = in.ReadBool();
  x229_24_ = in.ReadBool();
  x229_25_aimWhenOrbitingPoint = in.ReadBool();
  x229_26_stayInFreeLookWhileFiring = in.ReadBool();
  x229_27_ = in.ReadBool();
  x229_28_ = in.ReadBool();
  x229_29_orbitFixedOffset = in.ReadBool();
  x229_30_gunButtonTogglesHolster = in.ReadBool();
  x229_31_gunNotFiringHolstersGun = in.ReadBool();
  x22a_24_fallingDoubleJump = in.ReadBool();
  x22a_25_impulseDoubleJump = in.ReadBool();
  x22a_26_firingCancelsCameraPitch = in.ReadBool();
  x22a_27_assistedAimingIgnoreHorizontal = in.ReadBool();
  x22a_28_assistedAimingIgnoreVertical = in.ReadBool();

  x22c_ = in.ReadFloat();
  x230_ = in.ReadFloat();
  x234_aimMaxDistance = in.ReadFloat();

  x238_ = in.ReadFloat() * (M_PIF / 180.f);
  x23c_ = in.ReadFloat() * (M_PIF / 180.f);
  x240_ = in.ReadFloat() * (M_PIF / 180.f);
  x244_ = in.ReadFloat() * (M_PIF / 180.f);
  x248_ = in.ReadFloat() * (M_PIF / 180.f);
  x24c_aimThresholdDistance = in.ReadFloat();
  x250_ = in.ReadFloat() * (M_PIF / 180.f);
  x254_ = in.ReadFloat();
  x258_aimBoxWidth = in.ReadFloat();
  x25c_aimBoxHeight = in.ReadFloat();
  x260_aimTargetTimer = in.ReadFloat();
  x264_aimAssistHorizontalAngle = in.ReadFloat() * (M_PIF / 180.f);
  x268_aimAssistVerticalAngle = in.ReadFloat() * (M_PIF / 180.f);

  for (i = 0; i < 3; ++i) {
    x158_orbitMinDistance[i] = in.ReadFloat();
    x164_orbitNormalDistance[i] = in.ReadFloat();
    x170_orbitMaxDistance[i] = in.ReadFloat();
  }

  x17c_ = in.ReadFloat() * (M_PIF / 180.f);
  x180_orbitModeTimer = in.ReadFloat();
  x184_orbitCameraSpeed = in.ReadFloat() * (M_PIF / 180.f);
  x188_orbitUpperAngle = in.ReadFloat() * (M_PIF / 180.f);
  x18c_orbitLowerAngle = in.ReadFloat() * (M_PIF / 180.f);
  x190_orbitHorizAngle = in.ReadFloat() * (M_PIF / 180.f);
  x194_ = in.ReadFloat() * (M_PIF / 180.f);
  x198_ = in.ReadFloat() * (M_PIF / 180.f);
  x19c_orbitMaxTargetDistance = in.ReadFloat();
  x1a0_orbitMaxLockDistance = in.ReadFloat();
  x1a4_orbitDistanceThreshold = in.ReadFloat();

  for (i = 0; i < 2; ++i) {
    x1a8_orbitScreenBoxHalfExtentX[i] = in.ReadLong();
    x1b0_orbitScreenBoxHalfExtentY[i] = in.ReadLong();
    x1b8_orbitScreenBoxCenterX[i] = in.ReadLong();
    x1c0_orbitScreenBoxCenterY[i] = in.ReadLong();
    x1c8_orbitZoneIdealX[i] = in.ReadLong();
    x1d0_orbitZoneIdealY[i] = in.ReadLong();
  }

  x1d8_orbitNearX = in.ReadFloat();
  x1dc_orbitNearZ = in.ReadFloat();
  x1e0_ = in.ReadFloat();
  x1e4_ = in.ReadFloat();
  x1e8_orbitFixedOffsetZDiff = in.ReadFloat();
  x1ec_orbitZRange = in.ReadFloat();
  x1f0_ = in.ReadFloat() * (M_PIF / 180.f);
  x1f4_ = in.ReadFloat() * (M_PIF / 180.f);
  x1f8_ = in.ReadFloat();
  x1fc_orbitPreventionTime = in.ReadFloat();
  x200_24_dashEnabled = in.ReadBool();
  x200_25_dashOnButtonRelease = in.ReadBool();
  x204_dashButtonHoldCancelTime = in.ReadFloat();
  x208_dashStrafeInputThreshold = in.ReadFloat();
  x20c_sidewaysDoubleJumpImpulse = in.ReadFloat();
  x210_sidewaysVerticalDoubleJumpAccel = in.ReadFloat();
  x214_sidewaysHorizontalDoubleJumpAccel = in.ReadFloat();
  x218_scanningRange = in.ReadFloat();
  x21c_24_scanRetention = in.ReadBool();
  x21c_25_scanFreezesGame = in.ReadBool();
  x21c_26_orbitWhileScanning = in.ReadBool();
  x220_scanMaxTargetDistance = in.ReadFloat();
  x224_scanMaxLockDistance = in.ReadFloat();
  x2a0_orbitDistanceMax = in.ReadFloat();
  x2a4_grappleSwingLength = in.ReadFloat();
  x2a8_grappleSwingPeriod = in.ReadFloat();
  x2ac_grapplePullSpeedMin = in.ReadFloat();
  x2b0_grappleCameraSpeed = in.ReadFloat() * (M_PIF / 180.f);
  x2b4_maxGrappleLockedTurnAlignDistance = in.ReadFloat();
  x2b8_grapplePullSpeedProportion = in.ReadFloat();
  x2bc_grapplePullSpeedMax = in.ReadFloat();
  x2c0_grappleLookCenterSpeed = in.ReadFloat() * (M_PIF / 180.f);
  x2c4_maxGrappleTurnSpeed = in.ReadFloat();
  x2c8_grappleJumpForce = in.ReadFloat();
  x2cc_grappleReleaseTime = in.ReadFloat();
  x2d0_grappleJumpMode = in.ReadLong();
  x2d4_orbitReleaseBreaksGrapple = in.ReadBool();
  x2d5_invertGrappleTurn = in.ReadBool();
  x2d8_grappleBeamSpeed = in.ReadFloat();
  x2dc_grappleBeamXWaveAmplitude = in.ReadFloat();
  x2e0_grappleBeamZWaveAmplitude = in.ReadFloat();
  x2e4_grappleBeamAnglePhaseDelta = in.ReadFloat();
  x26c_playerHeight = in.ReadFloat();
  x270_playerXYHalfExtent = in.ReadFloat();
  x274_stepUpHeight = in.ReadFloat();
  x278_stepDownHeight = in.ReadFloat();
  x27c_playerBallHalfExtent = in.ReadFloat();
  x280_firstPersonCameraSpeed = in.ReadFloat() * (M_PIF / 180.f);
  x284_ = in.ReadFloat() * (M_PIF / 180.f);
  x288_jumpCameraPitchDownStart = in.ReadFloat();
  x28c_jumpCameraPitchDownFull = in.ReadFloat();
  x290_jumpCameraPitchDownAngle = in.ReadFloat() * (M_PIF / 180.f);
  x294_fallCameraPitchDownStart = in.ReadFloat();
  x298_fallCameraPitchDownFull = in.ReadFloat();
  x29c_fallCameraPitchDownAngle = in.ReadFloat() * (M_PIF / 180.f);
  x2e8_ = in.ReadFloat();
  x2ec_ = in.ReadFloat();
  x2f0_ = in.ReadFloat();
  x2f4_ = in.ReadBool();
  x2f8_frozenTimeout = in.ReadFloat();
  x2fc_iceBreakJumpCount = in.ReadLong();
  x300_variaDamageReduction = in.ReadFloat();
  x304_gravityDamageReduction = in.ReadFloat();
  x308_phazonDamageReduction = in.ReadFloat();
}
