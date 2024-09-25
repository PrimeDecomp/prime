#ifndef _CCAMERAOVERRIDEINFO
#define _CCAMERAOVERRIDEINFO

#include "Kyoto/Math/CVector3f.hpp"
#include "MetroidPrime/Cameras/CBallCamera.hpp"
#include "types.h"

class CCameraOverrideInfo {
  friend class CScriptCameraHint;

public:
  CCameraOverrideInfo(uint overrideFlags, CBallCamera::EBallCameraBehaviour behaviour, float minDist,
              float maxDist, float backwardsDist, const CVector3f& lookAtOffset,
              const CVector3f& chaseLookAtOffset, const CVector3f& ballToCam, float fov,
              float attitudeRange, float azimuthRange, float anglePerSecond, float clampVelRange,
              float clampRotRange, float elevation, float interpolateTime, float clampVelTime,
              float controlInterpDur);
  virtual ~CCameraOverrideInfo() {}

  uint GetOverrideFlags() const { return mOverrideFlags; }
  CBallCamera::EBallCameraBehaviour GetBehaviourType() const { return mBehaviour; }
  float GetMinDist() const { return mMinDist; }
  float GetMaxDist() const { return mMaxDist; }
  float GetBackwardsDist() const { return mBackwardsDist; }
  const CVector3f& GetLookAtOffset() const { return mLookAtOffset; }
  const CVector3f& GetChaseLookAtOffset() const { return mChaseLookAtOffset; }
  const CVector3f& GetBallToCam() const { return mBallToCam; }
  float GetFov() const { return mFov; }
  float GetAttitudeRange() const { return mAttitudeRange; }
  float GetAzimuthRange() const { return mAzimuthRange; }
  float GetAnglePerSecond() const { return mAnglePerSecond; }
  float GetClampVelRange() const { return mClampVelRange; }
  float GetClampRotRange() const { return mClampRotRange; }
  float GetElevation() const { return mElevation; }
  float GetInterpolateTime() const { return mInterpolateTime; }
  float GetClampVelTime() const { return mClampVelTime; }
  float GetControlInterpDur() const { return mControlInterpDur; }

  bool Flagx20() const { return (mOverrideFlags & 0x20) != 0; }
  bool Flagx400() const { return (mOverrideFlags & 0x400) != 0; }
  bool Flagx800() const { return (mOverrideFlags & 0x800) != 0; }

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

#endif // _CCAMERAOVERRIDEINFO
