#ifndef _CPLAYERCAMERABOB
#define _CPLAYERCAMERABOB

#include "types.h"

#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Math/CVector2f.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/TOneStatic.hpp"

#include "rstl/reserved_vector.hpp"

class CStateManager;

class CPlayerCameraBob : public TOneStatic< CPlayerCameraBob > {
public:
  enum ECameraBobType {
    kCBT_Zero,
    kCBT_One,
  };
  enum ECameraBobState {
    kCBS_Walk,
    kCBS_Orbit,
    kCBS_InAir,
    kCBS_WalkNoBob,
    kCBS_GunFireNoBob,
    kCBS_TurningNoBob,
    kCBS_FreeLookNoBob,
    kCBS_GrappleNoBob,
    kCBS_Unspecified,
  };

  static float kCameraBobExtentX;
  static float kCameraBobExtentY;
  static float kCameraBobPeriod;
  static float kOrbitBobScale;
  static float kMaxOrbitBobScale;
  static float kSlowSpeedPeriodScale;
  static float kTargetMagnitudeTrackingRate;
  static float kLandingBobSpringConstant;
  static float kPeakNegativeVerticalSpeedForHeavyLanding;
  static float kMaxNegativeVerticalSpeedConsidered;
  static float kHeavyLandingBobSpringConstant;
  static float kHeavyLandingHelmetBobSpringConstant;
  static float kViewWanderRadius;
  static float kViewWanderSpeedMin;
  static float kViewWanderSpeedMax;
  static float kViewWanderRollVariation;
  static float kGunBobMagnitude;
  static float kHelmetBobMagnitude;
  static float kLandingBobDamping;
  static float kHeavyLandingBobDamping;
  static float kHeavyLandingHelmetBobDamping;

  CPlayerCameraBob(ECameraBobType type,
                   const CVector2f& vec = CVector2f(kCameraBobExtentX, kCameraBobExtentY),
                   float bobPeriod = kCameraBobPeriod);

  const CVector3f& GetCameraBobTranslation() const {
    return x2c_cameraBobTransform.GetTranslation();
  }
  const CTransform4f& GetViewWanderTransform() const;
  CVector3f GetHelmetBobTranslation() const;
  CTransform4f GetGunBobTransformation() const;
  CTransform4f GetCameraBobTransformation() const;
  void SetPlayerVelocity(const CVector3f& velocity);
  void SetBobMagnitude(float);
  void SetBobTimeScale(float);
  void ResetCameraBobTime();
  void SetCameraBobTransform(const CTransform4f& xf);
  void SetState(ECameraBobState state, CStateManager& mgr);
  void InitViewWander(CStateManager&);
  void UpdateViewWander(float, CStateManager&);
  void Update(float, CStateManager&);
  CVector3f CalculateRandomViewWanderPosition(CStateManager&);
  float CalculateRandomViewWanderPitch(CStateManager&);
  void CalculateMovingTranslation(float& x, float& z) const;
  float CalculateLandingTranslation() const;
  CTransform4f CalculateCameraBobTransformation() const;

  const float& GetViewWanderMagnitude() const { return x100_wanderMagnitude; }
  static void ReadTweaks(CInputStream& in);

  static float GetCameraBobExtentX() { return kCameraBobExtentX; }
  static float GetCameraBobExtentY() { return kCameraBobExtentY; }
  static float GetCameraBobPeriod() { return kCameraBobPeriod; }
  static float GetOrbitBobScale() { return kOrbitBobScale; }
  static float GetMaxOrbitBobScale() { return kMaxOrbitBobScale; }
  static float GetSlowSpeedPeriodScale() { return kSlowSpeedPeriodScale; }
  static float GetMaxNegativeVerticalSpeedConsidered() { return kMaxNegativeVerticalSpeedConsidered; }

private:
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
  rstl::reserved_vector< CVector3f, 4 > x7c_wanderPoints;
  rstl::reserved_vector< float, 4 > xb0_wanderPitches;
  float xc4_wanderTime;
  float xc8_viewWanderSpeed;
  uint xcc_wanderIndex;
  CTransform4f xd0_viewWanderXf;
  float x100_wanderMagnitude;
  float x104_targetWanderMagnitude;
};
CHECK_SIZEOF(CPlayerCameraBob, 0x108)

#endif // _CPLAYERCAMERABOB
