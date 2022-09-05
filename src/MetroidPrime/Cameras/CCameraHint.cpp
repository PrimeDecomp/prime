#include "MetroidPrime/Cameras/CCameraHint.hpp"
#include "Kyoto/Alloc/CMemory.hpp"

CCameraHint::CCameraHint(uint overrideFlags, CBallCamera::EBallCameraBehaviour behaviour, float minDist, float maxDist, float backwardsDist,
                         CVector3f* lookAtOffset, CVector3f* chaseLookAtOffset, CVector3f* ballToCam, float fov, float attitudeRange,
                         float azimuthRange, float anglePerSecond, float clampVelRange, float clampRotRange, float elevation,
                         float InterpolationTime, float clampVelTime, float controlInterpDur)
: mOverrideFlags(overrideFlags)
, mBehaviour(behaviour)
, mMinDist(minDist)
, mMaxDist(maxDist)
, mBackwardsDist(backwardsDist)
, mLookAtOffset(lookAtOffset)
, mChaseLookAtOffset(chaseLookAtOffset)
, mBallToCam(ballToCam)
, mFov(fov)
, mAttitudeRange(attitudeRange)
, mAzimuthRnage(azimuthRange)
, mAnglePerSecond(anglePerSecond)
, mClampVelRange(clampVelRange)
, mClampRotRange(clampRotRange)
, mElevation(elevation)
, mInterpolateTime(interpolateTime)
, mClampVelTime(clampVelTime)
, mControlInterpDur(controlInterpDur) {}

CCameraHint::~CCameraHint() {}
