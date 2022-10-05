#ifndef _CPLAYERCAMERABOB_HPP_
#define _CPLAYERCAMERABOB_HPP_

#include "Kyoto/Math/CVector2f.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/Math/CTransform4f.hpp"

class CStateManager;
class CPlayerCameraBob {
public:
  enum ECameraBobType { kCBT_Zero, kCBT_One };

  enum ECameraBobState {
    kCBS_Walk,
    kCBS_Orbit,
    kCBS_InAir,
    kCBS_WalkNoBob,
    kCBS_GunFireNoBob,
    kCBS_TurningNoBob,
    kCBS_FreeLookNoBob,
    kCBS_GrappleNoBob,
    kCBS_Unspecified
  };

  static CVector2f GetCameraBobExtent() { return CVector2f(kCameraBobExtentX, kCameraBobExtentY); }
  static float GetCameraBobPeriod() { return kCameraBobPeriod; }
  static float GetOrbitBobScale() { return kOrbitBobScale; }
  static float GetMaxOrbitBobScale() { return kMaxOrbitBobScale; }
  static float GetSlowSpeedPeriodScale() { return kSlowSpeedPeriodScale; }

private:
  static float kCameraBobExtentX;
  static float kCameraBobExtentY;
  static float kCameraBobPeriod;
  static float kOrbitBobScale;
  static float kMaxOrbitBobScale;
  static float kSlowSpeedPeriodScale;
  static float kTargetMagnitudeTrackingRate;
  static float kLandingBobSpringConstant;
  static float kLandingBobSpringConstant2;
  static float kViewWanderRadius;
  static float kViewWanderSpeedMin;
  static float kViewWanderSpeedMax;
  static float kViewWanderRollVariation;
  static float kGunBobMagnitude;
  static float kHelmetBobMagnitude;
  static const float kLandingBobDamping;
  static const float kLandingBobDamping2;
  static const float kCameraDamping;

  ECameraBobType x0_type;
  CVector2f x4_vec;
  float xc_bobPeriod;
  float x10_targetBobMagnitude;
  float x14_bobMagnitude;
  float x18_bobTimeScale;
  float x1c_bobTime;
  ECameraBobState x20_oldState;
  ECameraBobState x24_curState;
  bool x28_applyLandingTrans;
  bool x29_hardLand;
  CTransform4f x2c_cameraBobTransform;
  CVector3f x5c_playerVelocity;
  float x68_playerPeakFallVel;
  float x6c_landingVelocity;
  float x70_landingTranslation;
  float x74_camVelocity;
  float x78_camTranslation;
  CVector3f x7c_wanderPoints[4];
  float xb0_wanderPitches[4];
  float xc4_wanderTime;
  float xc8_viewWanderSpeed;
  u32 xcc_wanderIndex;
  CTransform4f xd0_viewWanderXf;
  float x100_wanderMagnitude;
  float x104_targetWanderMagnitude;

public:
  CPlayerCameraBob(ECameraBobType type, const CVector2f& vec, float bobPeriod);

  CTransform4f GetViewWanderTransform() const;
  CVector3f GetHelmetBobTranslation() const;
  CTransform4f GetGunBobTransformation() const;
  CTransform4f GetCameraBobTransformation() const;
  void SetPlayerVelocity(const CVector3f& velocity);
  void SetBobMagnitude(float);
  void SetBobTimeScale(float);
  void ResetCameraBobTime();
  void SetCameraBobTransform(const CTransform4f&);
  void SetState(ECameraBobState, CStateManager&);
  void InitViewWander(CStateManager&);
  void UpdateViewWander(float, CStateManager&);
  void Update(float, CStateManager&);
  CVector3f CalculateRandomViewWanderPosition(CStateManager&) const;
  float CalculateRandomViewWanderPitch(CStateManager&) const;
  void CalculateMovingTranslation(float& x, float& y) const;
  float CalculateLandingTranslation() const;
  CTransform4f CalculateCameraBobTransformation() const;
  static void ReadTweaks(CInputStream& in);
};


#endif // _CPLAYERCAMERABOB_HPP_
