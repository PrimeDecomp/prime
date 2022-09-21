#include "MetroidPrime/Cameras/CBallCamera.hpp"

#include "math.h"

#include "MetroidPrime/CCollisionActor.hpp"
#include "MetroidPrime/Cameras/CCameraManager.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/Tweaks/CTweakBall.hpp"

static CMaterialList kLineOfSightIncludeList = CMaterialList(kMT_Solid);
static CMaterialList kLineOfSightExcludeList =
    CMaterialList(kMT_ProjectilePassthrough, kMT_Player, kMT_Character, kMT_CameraPassthrough);
static CMaterialFilter kLineOfSightFilter =
    CMaterialFilter::MakeIncludeExclude(kLineOfSightIncludeList, kLineOfSightExcludeList);

// TODO non-matching
CBallCamera::CBallCamera(TUniqueId uid, TUniqueId watchedId, const CTransform4f& xf, f32 fovY,
                         f32 nearZ, f32 farZ, f32 aspect)
: CGameCamera(uid, true, rstl::string_l("Ball Camera"),
              CEntityInfo(kInvalidAreaId, CEntity::NullConnectionList, kInvalidEditorId), xf, fovY,
              nearZ, farZ, aspect, watchedId, false, 0)
, x188_behaviour(kBCB_Default)
, x18c_24_(true)
, x18c_25_chaseAllowed(true)
, x18c_26_boostAllowed(true)
, x18c_27_obscureAvoidance(true)
, x18c_28_volumeCollider(true)
, x18c_29_clampAttitude(false)
, x18c_30_clampAzimuth(false)
, x18c_31_clearLOS(true)
, x18d_24_prevClearLOS(true)
, x18d_25_avoidGeometryFull(false)
, x18d_26_lookAtBall(false)
, x18d_27_forceProcessing(false)
, x18d_28_obtuseDirection(false)
, x18d_29_noElevationInterp(false)
, x18d_30_directElevation(false)
, x18d_31_overrideLookDir(false)
, x18e_24_noElevationVelClamp(false)
, x18e_25_noSpline(false)
, x18e_26_(false)
, x18e_27_nearbyDoorClosed(false)
, x18e_28_nearbyDoorClosing(false)
, x190_curMinDistance(gpTweakBall->GetBallCameraMinSpeedDistance())
, x194_targetMinDistance(gpTweakBall->GetBallCameraMinSpeedDistance())
, x198_maxDistance(gpTweakBall->GetBallCameraMaxSpeedDistance())
, x19c_backwardsDistance(gpTweakBall->GetBallCameraBackwardsDistance())
, x1a0_elevation(gpTweakBall->GetBallCameraElevation())
, x1a4_curAnglePerSecond(gpTweakBall->GetBallCameraAnglePerSecond())
, x1a8_targetAnglePerSecond(gpTweakBall->GetBallCameraAnglePerSecond())
, x1ac_attitudeRange(1.553343f)
, x1b0_azimuthRange(1.553343f)
, x1b4_lookAtOffset(gpTweakBall->GetBallCameraOffset())
, x1c0_lookPosAhead(0.f, 0.f, 0.f)
, x1cc_fixedLookPos(CVector3f::Zero())
, x1d8_lookPos(0.f, 0.f, 0.f)
, x1e4_nextLookXf(CTransform4f::Identity())
, x214_ballCameraSpring(gpTweakBall->GetBallCameraSpringConstant(),
                        gpTweakBall->GetBallCameraSpringMax(),
                        gpTweakBall->GetBallCameraSpringTardis())
, x228_ballCameraCentroidSpring(gpTweakBall->GetBallCameraCentroidSpringConstant(),
                                gpTweakBall->GetBallCameraCentroidSpringMax(),
                                gpTweakBall->GetBallCameraCentroidSpringTardis())
, x23c_ballCameraLookAtSpring(gpTweakBall->GetBallCameraLookAtSpringConstant(),
                              gpTweakBall->GetBallCameraLookAtSpringMax(),
                              gpTweakBall->GetBallCameraLookAtSpringTardis() * 1.1f)
, x250_ballCameraCentroidDistanceSpring(gpTweakBall->GetBallCameraCentroidDistanceSpringConstant(),
                                        gpTweakBall->GetBallCameraCentroidDistanceSpringMax(),
                                        gpTweakBall->GetBallCameraCentroidDistanceSpringTardis())
, x294_dampedPos(0.f, 0.f, 0.f)
, x2a0_smallCentroid(0.f, 0.f, 1.f)
, x2ac_mediumCentroid(0.f, 0.f, 1.f)
, x2b8_largeCentroid(0.f, 0.f, 1.f)
, x2c4_smallCollidersObsCount(0)
, x2c8_mediumCollidersObsCount(0)
, x2cc_largeCollidersObsCount(0)
, x2d0_smallColliderIt(0)
, x2d4_mediumColliderIt(0)
, x2d8_largeColliderIt(0)
, x2dc_prevBallPos(0.f, 0.f, 0.f)
, x2e8_ballVelFlat(0.f)
, x2ec_maxBallVel(0.f)
, x2f0_ballDelta(CVector3f::Zero())
, x2fc_ballDeltaFlat(CVector3f::Zero())
, x308_speedFactor(0.f)
, x30c_speedingTime(0.f)
, x310_idealLookVec(0.f, 0.f, 0.f)
, x31c_predictedLookPos(0.f, 0.f, 0.f)
, x328_avoidGeomCycle(0)
, x32c_colliderMag(1.f)
, x330_clearColliderThreshold(0.2f)
, x334_collidersAABB(CAABox::Identity())
, x34c_obscuredTime(0.f)
, x350_obscuringMaterial(kMT_NoStepLogic)
, x358_unobscureMag(0.f)
, x35c_splineIntermediatePos(CVector3f::Zero())
, x368_obscuringObjectId(kInvalidUniqueId)
, x36c_splineState(kBSS_Invalid)
, x370_24_reevalSplineEnd(false)
, x374_splineCtrl(0.f)
// , x378_splineCtrlRange()
, x37c_camSpline(false)
, x3c8_collisionExcludeList(kMT_NoStepLogic)
, x3d0_24_camBehindFloorOrWall(false)
, x3d4_elevInterpTimer(0.f)
, x3d8_elevInterpStart(0.f)
, x3dc_tooCloseActorId(kInvalidUniqueId)
, x3e0_tooCloseActorDist(10000.f)
, x3e4_pendingFailsafe(false)
, x3e8_(0.f)
, x3ec_(0.f)
, x3f0_(0.f)
, x3f4_(2.f)
, x3f8_(0.f)
, x3fc_(0.f)
, x400_state(kBCS_Default)
, x404_chaseElevation(gpTweakBall->GetBallCameraChaseElevation())
, x408_chaseDistance(gpTweakBall->GetBallCameraChaseDistance())
, x40c_chaseAnglePerSecond(gpTweakBall->GetBallCameraChaseAnglePerSecond())
, x410_chaseLookAtOffset(gpTweakBall->GetBallCameraChaseLookAtOffset())
, x41c_ballCameraChaseSpring(gpTweakBall->GetBallCameraChaseSpringConstant(),
                             gpTweakBall->GetBallCameraChaseSpringMax(),
                             gpTweakBall->GetBallCameraChaseSpringTardis())
, x430_boostElevation(gpTweakBall->GetBallCameraBoostElevation())
, x434_boostDistance(gpTweakBall->GetBallCameraBoostDistance())
, x438_boostAnglePerSecond(gpTweakBall->GetBallCameraBoostAnglePerSecond())
, x43c_boostLookAtOffset(gpTweakBall->GetBallCameraBoostLookAtOffset())
, x448_ballCameraBoostSpring(gpTweakBall->GetBallCameraBoostSpringConstant(),
                             gpTweakBall->GetBallCameraBoostSpringMax(),
                             gpTweakBall->GetBallCameraBoostSpringTardis())
, x45c_overrideBallToCam(CVector3f::Zero())
, x468_conservativeDoorCamDistance(gpTweakBall->GetConservativeDoorCameraDistance())
, x46c_collisionActorId(kInvalidUniqueId)
, x470_clampVelTimer(0.f)
, x474_clampVelRange(0.f)
, x478_shortMoveCount(0)
, x47c_failsafeState(new SFailsafeState)
, x480_(new SUnknown) {
  SetupColliders(x264_smallColliders, 2.31f, 2.31f, 0.1f, 3, 2.f, 0.5f, -M_PIF / 2.f);
  SetupColliders(x274_mediumColliders, 4.62f, 4.62f, 0.1f, 6, 2.f, 0.5f, -M_PIF / 2.f);
  SetupColliders(x284_largeColliders, 7.f, 7.f, 0.1f, 12, 2.f, 0.5f, -M_PIF / 2.f);
}

CBallCamera::~CBallCamera() {}

void CBallCamera::TeleportColliders(rstl::vector< CCameraCollider >& colliderList, CVector3f pos) {
  for (int i = 0; i < colliderList.size(); ++i) {
    colliderList[i].SetRealPosition(pos);
    colliderList[i].SetDesiredPosition(pos);
    colliderList[i].SetLookAtPosition(pos);
  }
}

void CBallCamera::TeleportCamera(const CVector3f& pos, CStateManager& mgr) {
  x294_dampedPos = pos;
  TeleportColliders(x264_smallColliders, pos);
  TeleportColliders(x274_mediumColliders, pos);
  TeleportColliders(x284_largeColliders, pos);
  if (CCollisionActor* act = TCastToPtr< CCollisionActor >(mgr.ObjectById(x46c_collisionActorId))) {
    act->SetTranslation(pos);
  }
}

// TODO non-matching
void CBallCamera::ResetPosition(CStateManager& mgr) {
  x1d8_lookPos = mgr.GetPlayer()->GetBallPosition();
  x1d8_lookPos.SetZ(x1d8_lookPos.GetZ() + x1b4_lookAtOffset.GetZ());
  x1c0_lookPosAhead = x1d8_lookPos;
  x1cc_fixedLookPos = x1d8_lookPos;
}

void CBallCamera::TeleportCamera(const CTransform4f& xf, CStateManager& mgr) {
  SetTransform(xf);
  TeleportCamera(xf.GetTranslation(), mgr);
}

void CBallCamera::ResetToTweaks(CStateManager& mgr) {
  x188_behaviour = kBCB_Default;
  SetAllowChaseCamera(true);
  SetAllowBoostCamera(true);
  SetGeometryAvoidance(true);
  x18c_28_volumeCollider = true;
  x18c_29_clampAttitude = false;
  x18c_30_clampAzimuth = false;
  SetMinDistance(gpTweakBall->GetBallCameraMinSpeedDistance());
  SetMaxDistance(gpTweakBall->GetBallCameraMaxSpeedDistance());
  SetBackwardsDistance(gpTweakBall->GetBallCameraBackwardsDistance());
  SetDistanceSpring(CCameraSpring(gpTweakBall->GetBallCameraSpringConstant(),
                                  gpTweakBall->GetBallCameraSpringMax(),
                                  gpTweakBall->GetBallCameraSpringTardis()));
  SetCentroidDistanceSpring(
      CCameraSpring(gpTweakBall->GetBallCameraCentroidDistanceSpringConstant(),
                    gpTweakBall->GetBallCameraCentroidDistanceSpringMax(),
                    gpTweakBall->GetBallCameraCentroidDistanceSpringTardis()));
  SetLookAtOffset(gpTweakBall->GetBallCameraOffset());
  SetChaseLookAtOffset(gpTweakBall->GetBallCameraChaseLookAtOffset());
  SetElevation(gpTweakBall->GetBallCameraElevation());
  x1ac_attitudeRange = M_PIF / 2.f;
  x1b0_azimuthRange = M_PIF / 2.f;
  SetFovInterpolation(GetFov(), CCameraManager::DefaultThirdPersonFov(), 1.f, 0.f);
  x1a8_targetAnglePerSecond = gpTweakBall->GetBallCameraAnglePerSecond();
  x18d_29_noElevationInterp = false;
  x18d_30_directElevation = false;
  x18d_31_overrideLookDir = false;
  x18e_24_noElevationVelClamp = false;
  x18e_25_noSpline = false;
  x18e_26_ = false;
}

void CBallCamera::SetupColliders(rstl::vector< CCameraCollider >& out, f32 xMag, f32 zMag,
                                 f32 radius, int count, f32 k, f32 max, f32 startAngle) {
  out.reserve(count);
  f32 theta = startAngle;
  for (int i = 0; i < count; ++i) {
    f32 z = cos(theta) * zMag;
    if (theta > M_PIF / 2.f) {
      z *= 0.25f;
    }
    out.push_back(CCameraCollider(radius, CVector3f(xMag * sin(theta), 0.f, z),
                                  CCameraSpring(k, max, 1.f), 1.f));
    theta += 2.f * M_PIF / f32(count);
  }
}