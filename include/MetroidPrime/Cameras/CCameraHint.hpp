#ifndef _CCAMERAHINT
#define _CCAMERAHINT

#include "Kyoto/Math/CVector3f.hpp"
#include "MetroidPrime/Cameras/CBallCamera.hpp"
#include "types.h"

class CCameraHint {
public:
  CCameraHint(uint overrideFlags, CBallCamera::EBallCameraBehaviour behaviour, float minDist,
              float maxDist, float backwardsDist, const CVector3f& lookAtOffset,
              const CVector3f& chaseLookAtOffset, const CVector3f& ballToCam, float fov,
              float attitudeRange, float azimuthRange, float anglePerSecond, float clampVelRange,
              float clampRotRange, float elevation, float interpolateTime, float clampVelTime,
              float controlInterpDur);
  virtual ~CCameraHint();

private:
  uint mOverrideFlags;
  CBallCamera::EBallCameraBehaviour mBehaviour;
  float mMinDist;
  float mMaxDist;
  float mBackwardsDist;
  CVector3f mLookAtOffset;
  CVector3f mChaseLookAtOffset;
  CVector3f mBallToCam;
  float mFov;
  float mAttitudeRange;
  float mAzimuthRange;
  float mAnglePerSecond;
  float mClampVelRange;
  float mClampRotRange;
  float mElevation;
  float mInterpolateTime;
  float mClampVelTime;
  float mControlInterpDur;
};

#endif // _CCAMERAHINT
