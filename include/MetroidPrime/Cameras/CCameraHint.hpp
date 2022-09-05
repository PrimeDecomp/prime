#ifndef __CCAMERAHINT_HPP__
#define __CCAMERAHINT_HPP__

#include "types.h"
#include "MetroidPrime/Cameras/CBallCamera.hpp"
#include "Kyoto/Math/CVector3f.hpp"

class CCameraHint {
public:
  CCameraHint(uint overrideFlags, CBallCamera::EBallCameraBehaviour behaviour, f32 minDist, f32 maxDist,
              f32 backwardsDist, const CVector3f& lookAtOffset, const CVector3f& chaseLookAtOffset,
              const CVector3f& ballToCam, f32 fov, f32 attitudeRange, f32 azimuthRange,
              f32 anglePerSecond, f32 clampVelRange, f32 clampRotRange, f32 elevation, f32 interpolateTime,
              f32 clampVelTime, f32 controlInterpDur);
  virtual ~CCameraHint();
  
private:
  uint mOverrideFlags;
  CBallCamera::EBallCameraBehaviour mBehaviour;
  f32 mMinDist;
  f32 mMaxDist;
  f32 mBackwardsDist;
  CVector3f mLookAtOffset;
  CVector3f mChaseLookAtOffset;
  CVector3f mBallToCam;
  f32 mFov;
  f32 mAttitudeRange;
  f32 mAzimuthRange;
  f32 mAnglePerSecond;
  f32 mClampVelRange;
  f32 mClampRotRange;
  f32 mElevation;
  f32 mInterpolateTime;
  f32 mClampVelTime;
  f32 mControlInterpDur;
};

#endif // __CCAMERAHINT_HPP__
