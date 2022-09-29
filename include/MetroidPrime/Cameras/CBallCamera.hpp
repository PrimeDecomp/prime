#ifndef __CBALLCAMERA_HPP__
#define __CBALLCAMERA_HPP__

#include "types.h"

#include "MetroidPrime/Cameras/CCameraSpline.hpp"
#include "MetroidPrime/Cameras/CGameCamera.hpp"

#include "Kyoto/Math/CMath.hpp"

class CCameraSpring {
public:
  CCameraSpring(f32 k, f32 max, f32 tardis)
  : x0_k(k), x4_k2Sqrt(CMath::SqrtF(k) * 2.f), x8_max(max), xc_tardis(tardis), x10_dx(0.f) {}
  void Reset();
  f32 ApplyDistanceSpringNoMax(f32 targetX, f32 curX, f32 dt);
  f32 ApplyDistanceSpring(f32 targetX, f32 curX, f32 dt);

private:
  f32 x0_k;
  f32 x4_k2Sqrt;
  f32 x8_max;
  f32 xc_tardis;
  f32 x10_dx;
};

class CCameraCollider {
public:
  CCameraCollider(f32 radius, CVector3f vec, const CCameraSpring& spring, f32 scale)
  : x4_radius(radius)
  , x8_lastLocalPos(vec)
  , x14_localPos(vec)
  , x20_scaledWorldPos(vec)
  , x2c_lastWorldPos(vec)
  , x38_spring(spring)
  , x4c_occlusionCount(0)
  , x50_scale(scale) {}
  virtual ~CCameraCollider() {}

  f32 GetRadius() const { return x4_radius; }
  // TODO
  const CVector3f& GetRealPosition() const { return x2c_lastWorldPos; }
  const CVector3f& GetDesiredPosition() const { return x14_localPos; }
  const CVector3f& GetLookAtPosition() const { return x20_scaledWorldPos; }
  const CVector3f& GetLineOfSight() const;
  const CVector3f& GetPosition() const { return x8_lastLocalPos; }
  uint GetOcclusionCount() const { return x4c_occlusionCount; }

  void SetRadius(f32 radius) { this->x4_radius = radius; }
  // TODO
  void SetPosition(CVector3f vec) { x8_lastLocalPos = vec; }
  void SetRealPosition(CVector3f vec) { x2c_lastWorldPos = vec; }
  void SetDesiredPosition(CVector3f vec) { x14_localPos = vec; }
  void SetLookAtPosition(CVector3f vec) { x20_scaledWorldPos = vec; }
  void SetLineOfSight();
  void SetOcclusionCount(uint val) { x4c_occlusionCount = val; }

private:
  f32 x4_radius;
  CVector3f x8_lastLocalPos;    // position
  CVector3f x14_localPos;       // desired position
  CVector3f x20_scaledWorldPos; // look at position
  CVector3f x2c_lastWorldPos;   // real position
  CCameraSpring x38_spring;

public: // TODO
  uint x4c_occlusionCount;
  f32 x50_scale;
};

class CBallCamera : public CGameCamera {
public:
  enum EBallCameraState {
    kBCS_Default,
    kBCS_One,
    kBCS_Chase,
    kBCS_Boost,
    kBCS_ToBall,
    kBCS_FromBall,
  };
  enum EBallCameraBehaviour {
    kBCB_Default,
    kBCB_FreezeLookPosition, // Unused
    kBCB_HintBallToCam,
    kBCB_HintInitializePosition,
    kBCB_HintFixedPosition,
    kBCB_HintFixedTransform,
    kBCB_PathCameraDesiredPos, // Unused
    kBCB_PathCamera,
    kBCB_SpindleCamera,
  };
  enum ESplineState {
    kBSS_Invalid,
    kBSS_Nav,
    kBSS_Arc,
  };

  CBallCamera(TUniqueId uid, TUniqueId watchedId, const CTransform4f& xf, f32 fovY, f32 nearZ,
              f32 farZ, f32 aspect);

  // CEntity
  ~CBallCamera() override;
  void Accept(IVisitor& visitor) override;
  void Think(f32 dt, CStateManager& mgr) override;
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) override;

  // CActor
  void Render(const CStateManager&) const override;

  // CGameCamera
  void ProcessInput(const CFinalInput&, CStateManager& mgr) override;
  void Reset(const CTransform4f&, CStateManager& mgr) override;

  // CBallCamera
  void SetupColliders(rstl::vector< CCameraCollider >& out, f32 xMag, f32 zMag, f32 radius,
                      int count, f32 k, f32 max, f32 startAngle);
  void TeleportColliders(rstl::vector< CCameraCollider >& colliderList, CVector3f pos);
  void TeleportCamera(const CVector3f& pos, CStateManager& mgr);
  void TeleportCamera(const CTransform4f& xf, CStateManager& mgr);
  void ResetPosition(CStateManager& mgr);
  void ResetToTweaks(CStateManager& mgr);
  CVector3f FindDesiredPosition(f32 distance, f32 elevation, CVector3f dir, CStateManager& mgr,
                                bool fullTest);
  void UpdateCollidersDistances(rstl::vector< CCameraCollider >& colliderList, f32 xMag, f32 zMag,
                                f32 angOffset);
  void UpdateColliders(const CTransform4f& xf, rstl::vector< CCameraCollider >& colliderList,
                       int& idx, int count, float tolerance, const TEntityList& nearList, f32 dt,
                       CStateManager& mgr);

  const CVector3f& GetLookAtPosition() const { return x1d8_lookPos; }
  f32 GetDistance() const { return x190_curMinDistance; }
  f32 GetElevation() const { return x1a0_elevation; }

  void SetBehaviourType(EBallCameraBehaviour type) { x188_behaviour = type; }
  void SetAllowChaseCamera(bool v) { x18c_25_chaseAllowed = v; }
  void SetAllowBoostCamera(bool v) { x18c_26_boostAllowed = v; }
  // void SetLineOfSightCheck(bool v);
  void SetGeometryAvoidance(bool v) { x18c_27_obscureAvoidance = true; }
  void SetMinDistance(f32 v) { x194_targetMinDistance = v; }
  void SetMaxDistance(f32 v) { x198_maxDistance = v; }
  void SetBackwardsDistance(f32 v) { x19c_backwardsDistance = v; }
  void SetDistanceSpring(const CCameraSpring& spring) { x214_ballCameraSpring = spring; }
  void SetCentroidDistanceSpring(const CCameraSpring& spring) {
    x250_ballCameraCentroidDistanceSpring = spring;
  }
  void SetElevation(f32 v) { x1a0_elevation = v; }
  void SetLookAtOffset(CVector3f vec) { x1b4_lookAtOffset = vec; }
  void SetChaseLookAtOffset(CVector3f vec) { x410_chaseLookAtOffset = vec; }
  void SetWorldOffset(CVector3f vec); // TODO

private:
  struct SFailsafeState {
    CTransform4f x0_playerXf;
    CTransform4f x30_camXf;
    CVector3f x60_lookPos;
    CVector3f x6c_behindPos;
    CVector3f x78_;
    CVector3f x84_playerPos;
    rstl::vector< CVector3f > x90_splinePoints;

    SFailsafeState();
  };
  struct SUnknown {
    SUnknown();
  };

  EBallCameraBehaviour x188_behaviour;
  bool x18c_24_ : 1;
  bool x18c_25_chaseAllowed : 1;
  bool x18c_26_boostAllowed : 1;
  bool x18c_27_obscureAvoidance : 1;
  bool x18c_28_volumeCollider : 1;
  bool x18c_29_clampAttitude : 1;
  bool x18c_30_clampAzimuth : 1;
  bool x18c_31_clearLOS : 1;
  bool x18d_24_prevClearLOS : 1;
  bool x18d_25_avoidGeometryFull : 1;
  bool x18d_26_lookAtBall : 1;
  bool x18d_27_forceProcessing : 1;
  bool x18d_28_obtuseDirection : 1;
  bool x18d_29_noElevationInterp : 1;
  bool x18d_30_directElevation : 1;
  bool x18d_31_overrideLookDir : 1;
  bool x18e_24_noElevationVelClamp : 1;
  bool x18e_25_noSpline : 1;
  bool x18e_26_ : 1;
  bool x18e_27_nearbyDoorClosed : 1;
  bool x18e_28_nearbyDoorClosing : 1;
  f32 x190_curMinDistance;
  f32 x194_targetMinDistance;
  f32 x198_maxDistance;
  f32 x19c_backwardsDistance;
  f32 x1a0_elevation;
  f32 x1a4_curAnglePerSecond;
  f32 x1a8_targetAnglePerSecond;
  f32 x1ac_attitudeRange;
  f32 x1b0_azimuthRange;
  CVector3f x1b4_lookAtOffset;
  CVector3f x1c0_lookPosAhead;
  CVector3f x1cc_fixedLookPos;
  CVector3f x1d8_lookPos;
  CTransform4f x1e4_nextLookXf;
  CCameraSpring x214_ballCameraSpring;
  CCameraSpring x228_ballCameraCentroidSpring;
  CCameraSpring x23c_ballCameraLookAtSpring;
  CCameraSpring x250_ballCameraCentroidDistanceSpring;
  rstl::vector< CCameraCollider > x264_smallColliders;
  rstl::vector< CCameraCollider > x274_mediumColliders;
  rstl::vector< CCameraCollider > x284_largeColliders;
  CVector3f x294_dampedPos;
  CVector3f x2a0_smallCentroid;
  CVector3f x2ac_mediumCentroid;
  CVector3f x2b8_largeCentroid;
  int x2c4_smallCollidersObsCount;
  int x2c8_mediumCollidersObsCount;
  int x2cc_largeCollidersObsCount;
  int x2d0_smallColliderIt;
  int x2d4_mediumColliderIt;
  int x2d8_largeColliderIt;
  CVector3f x2dc_prevBallPos;
  f32 x2e8_ballVelFlat;
  f32 x2ec_maxBallVel;
  CVector3f x2f0_ballDelta;
  CVector3f x2fc_ballDeltaFlat;
  f32 x308_speedFactor;
  f32 x30c_speedingTime;
  CVector3f x310_idealLookVec;
  CVector3f x31c_predictedLookPos;
  uint x328_avoidGeomCycle;
  f32 x32c_colliderMag;
  f32 x330_clearColliderThreshold;
  CAABox x334_collidersAABB;
  f32 x34c_obscuredTime;
  CMaterialList x350_obscuringMaterial;
  f32 x358_unobscureMag;
  CVector3f x35c_splineIntermediatePos;
  TUniqueId x368_obscuringObjectId;
  ESplineState x36c_splineState;
  bool x370_24_reevalSplineEnd : 1;
  f32 x374_splineCtrl;
  f32 x378_splineCtrlRange;
  CCameraSpline x37c_camSpline;
  CMaterialList x3c8_collisionExcludeList;
  bool x3d0_24_camBehindFloorOrWall : 1;
  f32 x3d4_elevInterpTimer;
  f32 x3d8_elevInterpStart;
  TUniqueId x3dc_tooCloseActorId;
  f32 x3e0_tooCloseActorDist;
  bool x3e4_pendingFailsafe;
  f32 x3e8_;
  f32 x3ec_;
  f32 x3f0_;
  f32 x3f4_;
  f32 x3f8_;
  f32 x3fc_;
  EBallCameraState x400_state;
  f32 x404_chaseElevation;
  f32 x408_chaseDistance;
  f32 x40c_chaseAnglePerSecond;
  CVector3f x410_chaseLookAtOffset;
  CCameraSpring x41c_ballCameraChaseSpring;
  f32 x430_boostElevation;
  f32 x434_boostDistance;
  f32 x438_boostAnglePerSecond;
  CVector3f x43c_boostLookAtOffset;
  CCameraSpring x448_ballCameraBoostSpring;
  CVector3f x45c_overrideBallToCam;
  f32 x468_conservativeDoorCamDistance;
  TUniqueId x46c_collisionActorId;
  f32 x470_clampVelTimer;
  f32 x474_clampVelRange;
  uint x478_shortMoveCount;
  rstl::single_ptr< SFailsafeState > x47c_failsafeState;
  rstl::single_ptr< SUnknown > x480_;
};
CHECK_SIZEOF(CBallCamera, 0x488)

#endif // __CBALLCAMERA_HPP__
