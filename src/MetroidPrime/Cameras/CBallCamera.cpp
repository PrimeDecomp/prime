#include "MetroidPrime/Cameras/CBallCamera.hpp"

#include "Kyoto/Math/CRelAngle.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/Math/CloseEnough.hpp"

#include "Collision/CCollidableSphere.hpp"
#include "Collision/CCollisionInfo.hpp"
#include "Collision/CMaterialFilter.hpp"
#include "Collision/CRayCastResult.hpp"

#include "MetroidPrime/CCollisionActor.hpp"
#include "MetroidPrime/CControlMapper.hpp"
#include "MetroidPrime/CGameCollision.hpp"
#include "MetroidPrime/Cameras/CCameraManager.hpp"
#include "MetroidPrime/Cameras/CFirstPersonCamera.hpp"
#include "MetroidPrime/Cameras/CPathCamera.hpp"
#include "MetroidPrime/Player/CMorphBall.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/ScriptObjects/CScriptCameraHint.hpp"
#include "MetroidPrime/ScriptObjects/CScriptDock.hpp"
#include "MetroidPrime/ScriptObjects/CScriptDoor.hpp"
#include "MetroidPrime/ScriptObjects/CScriptSpindleCamera.hpp"
#include "MetroidPrime/ScriptObjects/CScriptWater.hpp"
#include "MetroidPrime/Tweaks/CTweakBall.hpp"
#include "MetroidPrime/Tweaks/CTweakPlayer.hpp"

#include "WorldFormat/CMetroidAreaCollider.hpp"

#include "math.h"

#pragma inline_max_size(250)

static CMaterialList kLineOfSightIncludeList = CMaterialList(kMT_Solid);
static CMaterialList kLineOfSightExcludeList =
    CMaterialList(kMT_ProjectilePassthrough, kMT_Player, kMT_Character, kMT_CameraPassthrough);
static CMaterialFilter kLineOfSightFilter =
    CMaterialFilter::MakeIncludeExclude(kLineOfSightIncludeList, kLineOfSightExcludeList);

CBallCamera::CBallCamera(TUniqueId uid, TUniqueId watchedId, const CTransform4f& xf, float fovY,
                         float nearZ, float farZ, float aspect)
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
, x47c_failsafeState(rs_new SFailsafeState)
, x480_(rs_new SUnknown) {
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

void CBallCamera::TeleportLookAtStuff(CStateManager& mgr) {
  CVector3f pos = mgr.GetPlayer()->GetBallPosition();
  x1d8_lookPos = pos;
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
  InterpolateFOV(GetFov(), CCameraManager::GetDefaultThirdPersonVerticalFOV(), 1.f, 0.f);
  x1a8_targetAnglePerSecond = gpTweakBall->GetBallCameraAnglePerSecond();
  x18d_29_noElevationInterp = false;
  x18d_30_directElevation = false;
  x18d_31_overrideLookDir = false;
  x18e_24_noElevationVelClamp = false;
  x18e_25_noSpline = false;
  x18e_26_ = false;
}

// TODO non-matching
void CBallCamera::SetupColliders(rstl::vector< CCameraCollider >& out, float xMag, float zMag,
                                 float radius, int count, float k, float max, float startAngle) {
  out.reserve(count);
  const float thetaDelta = 2.f * M_PIF;
  for (int i = 0; i < count; ++i) {
    float z = zMag * static_cast< float >(cos(startAngle));
    if (startAngle > M_PIF / 2.f) {
      z *= 0.25f;
    }

    CVector3f pos(xMag * static_cast< float >(sin(startAngle)), 0.f, z);
    CCameraSpring spring(k, max, 1.f);
    {
      CCameraCollider collider(radius, pos, spring, 1.f);
      out.push_back(collider);
    }
    startAngle += thetaDelta / float(count);
  }
}

void CBallCamera::Render(const CStateManager& mgr) const {}

void CBallCamera::Reset(const CTransform4f& xf, CStateManager& mgr) {
  x214_ballCameraSpring.Reset();
  x228_ballCameraCentroidSpring.Reset();
  x23c_ballCameraLookAtSpring.Reset();
  x250_ballCameraCentroidDistanceSpring.Reset();
  x41c_ballCameraChaseSpring.Reset();
  x448_ballCameraBoostSpring.Reset();

  CVector3f desiredPos =
      FindDesiredPosition(GetDistance(), GetElevation(), xf.GetForward(), mgr, false);

  if (const CPlayer* player = TCastToConstPtr< CPlayer >(mgr.GetObjectById(GetWatchedObject()))) {
    TeleportLookAtStuff(mgr);
    x310_idealLookVec = x1b4_lookAtOffset;
    x31c_predictedLookPos = GetLookAtPosition();
    CVector3f dist = GetLookAtPosition() - desiredPos;
    dist.SetZ(0.f);
    if (dist.CanBeNormalized()) {
      TeleportCamera(CTransform4f::LookAt(desiredPos, GetLookAtPosition()), mgr);
    } else {
      CTransform4f camXf = player->CreateTransformFromMovementDirection();
      camXf.SetTranslation(desiredPos);
      TeleportCamera(camXf, mgr);
      mgr.CameraManager()->SetPlayerCamera(mgr, GetUniqueId());
    }

    x2e8_ballVelFlat = 0.f;
    x2ec_maxBallVel = 0.f;
    x190_curMinDistance = x194_targetMinDistance;
    x2fc_ballDeltaFlat = CVector3f::Zero();
    x2f0_ballDelta = CVector3f::Zero();
    x18d_28_obtuseDirection = false;
    x308_speedFactor = 0.f;
    x2dc_prevBallPos = player->GetBallPosition();
    x294_dampedPos = GetTranslation();
    x2a0_smallCentroid = CVector3f::Zero();
    x2ac_mediumCentroid = CVector3f::Zero();
    x2b8_largeCentroid = CVector3f::Zero();
    x2c4_smallCollidersObsCount = 0;
    x2c8_mediumCollidersObsCount = 0;
    x2cc_largeCollidersObsCount = 0;
    x2d0_smallColliderIt = 0;
    x2d4_mediumColliderIt = 0;
    x2d8_largeColliderIt = 0;
    x32c_colliderMag = 1.f;
    x18d_25_avoidGeometryFull = true;
    x18d_27_forceProcessing = true;
    Think(0.1f, mgr);
    x18d_25_avoidGeometryFull = false;
    x18d_27_forceProcessing = false;
  }
}

void CBallCamera::UpdateCollidersDistances(rstl::vector< CCameraCollider >& colliderList,
                                           float xMag, float zMag, float angOffset) {
  float theta = angOffset;
  for (int i = 0; i < colliderList.size(); ++i) {
    float z = cosf(theta) * zMag;
    if (theta > M_PIF / 2.f) {
      z *= 0.25f;
    }

    float x;
    x = sinf(theta);
    x = CMath::Limit(x, 1.f);
    x *= xMag;
    CVector3f pos(x, 0.f, z);
    colliderList[i].SetDesiredPosition(pos);
    theta += 2.f * M_PIF / colliderList.size();
  }
}

// TODO non-matching
void CBallCamera::UpdateColliders(const CTransform4f& xf,
                                  rstl::vector< CCameraCollider >& colliderList, int& idx,
                                  int count, float tolerance, const TEntityList& nearList, float dt,
                                  CStateManager& mgr) {
  if (idx < colliderList.size()) {
    const CPlayer& player = *mgr.GetPlayer();
    x310_idealLookVec = CVector3f(0.f, gpTweakBall->GetBallCameraOffset().GetY(),
                                  gpTweakPlayer->mPlayerBallHalfExtent);
    x310_idealLookVec[kDY] = x310_idealLookVec.GetY() * x308_speedFactor;
    x31c_predictedLookPos = player.GetMovementDirection() * x310_idealLookVec.GetY();
    x31c_predictedLookPos[kDZ] = x310_idealLookVec.GetZ();
    x31c_predictedLookPos += player.GetTranslation();
    const CVector3f& xfTranslation = xf.GetTranslation();
    CTransform4f predictedLookXf = CTransform4f::LookAt(xfTranslation, x31c_predictedLookPos);
    CVector3f predictedLookPos = predictedLookXf.GetTranslation();
    for (int i = 0; i < count; ++i) {
      CVector3f localPos = colliderList[idx].GetDesiredPosition();
      CVector3f worldPos = predictedLookXf.Rotate(localPos) + predictedLookXf.GetTranslation();
      CVector3f dist = colliderList[idx].GetRealPosition() - worldPos;
      if (dist.Magnitude() < 0.1f) {
        localPos = colliderList[idx].GetPosition();
        worldPos = colliderList[idx].GetRealPosition();
      }
      CVector3f centerToCollider = worldPos - predictedLookPos;
      float mag = centerToCollider.Magnitude();
      if (centerToCollider.CanBeNormalized()) {
        centerToCollider.Normalize();
        TUniqueId intersectId = kInvalidUniqueId;
        const CRayCastResult& result = mgr.RayWorldIntersection(
            intersectId, predictedLookXf.GetTranslation(), centerToCollider,
            mag + colliderList[idx].GetRadius(), kLineOfSightFilter, nearList);
        float t = result.GetTime();
        if (result.IsValid()) {
          worldPos = predictedLookXf.GetTranslation() +
                     centerToCollider * (t - colliderList[idx].GetRadius());
          CVector3f centerToPoint = worldPos - predictedLookXf.GetTranslation();
          localPos = predictedLookXf.GetRotation().GetInverse() * centerToPoint;
        }
      }
      colliderList[idx].SetRealPosition(worldPos);
      colliderList[idx].SetPosition(localPos);
      CVector3f scaledWorldColliderPos = centerToCollider * mag / tolerance;
      scaledWorldColliderPos *= x308_speedFactor;
      scaledWorldColliderPos += x31c_predictedLookPos;
      colliderList[idx].SetLookAtPosition(scaledWorldColliderPos);
      if (mgr.RayCollideWorld(worldPos, scaledWorldColliderPos, nearList, kLineOfSightFilter,
                              nullptr)) {
        colliderList[idx].SetOcclusionCount(0);
      } else {
        colliderList[idx].SetOcclusionCount(colliderList[idx].GetOcclusionCount() + 1);
      }
      idx += 1;
      if (idx == colliderList.size()) {
        idx = 0;
      }
    }
  }
}

// TODO non-matching regswaps
CVector3f
CBallCamera::CalculateCollidersCentroid(const rstl::vector< CCameraCollider >& colliderList,
                                        int) const {
  int colliderCount = colliderList.size();
  if (colliderCount < 3) {
    return CVector3f(0.f, 1.f, 0.f);
  }

  float scale;
  float accumCross = 0.f;
  float accumX = 0.f;
  float accumZ = 0.f;
  int clearColliders = 0;
  int prevCol = colliderCount - 1;
  for (int i = 0, offset = 0; i < colliderCount; ++i, offset += 0x54) {
    if (colliderList[prevCol].GetOcclusionCount() < 2 && colliderList[i].GetOcclusionCount() < 2) {
      scale = colliderList[prevCol].GetScale();
      float z0 = scale * colliderList[prevCol].GetPosition().GetZ();
      float x1 = scale * colliderList[i].GetPosition().GetX();
      float x0 = scale * colliderList[prevCol].GetPosition().GetX();
      float z1 = scale * colliderList[i].GetPosition().GetZ();

      float cross = x0 * z1 - x1 * z0;
      accumCross += cross;
      accumX += cross * (x1 + x0);
      accumZ += cross * (z1 + z0);
    } else {
      clearColliders += 1;
    }
    prevCol = i;
  }

  if (static_cast< float >(clearColliders) / static_cast< float >(colliderCount) <=
      x330_clearColliderThreshold) {
    return CVector3f(0.f, 1.f, 0.f);
  }

  if (accumCross != 0.f) {
    float baryCross = 3.f * accumCross;
    return CVector3f(accumX / baryCross, 0.f, accumZ / baryCross);
  }

  return CVector3f(0.f, 2.f, 0.f);
}

CVector3f CBallCamera::ApplyColliders() {
  CVector3f smallCentroid =
      CalculateCollidersCentroid(x264_smallColliders, x2c4_smallCollidersObsCount);
  CVector3f mediumCentroid =
      CalculateCollidersCentroid(x274_mediumColliders, x2c8_mediumCollidersObsCount);
  CVector3f largeCentroid =
      CalculateCollidersCentroid(x284_largeColliders, x2cc_largeCollidersObsCount);

  if (smallCentroid.GetY() == 0.f) {
    x2a0_smallCentroid = smallCentroid;
  } else {
    x2a0_smallCentroid = CVector3f::Zero();
  }

  float centroidX = x2a0_smallCentroid.GetX();
  float centroidZ = x2a0_smallCentroid.GetZ();

  if (mediumCentroid.GetY() == 0.f) {
    x2ac_mediumCentroid = mediumCentroid;
  } else {
    x2ac_mediumCentroid = CVector3f::Zero();
  }

  centroidX += x2ac_mediumCentroid.GetX();
  centroidZ += x2ac_mediumCentroid.GetZ();

  if (largeCentroid.GetY() == 0.f) {
    x2b8_largeCentroid = largeCentroid;
  } else {
    x2b8_largeCentroid = CVector3f::Zero();
  }

  centroidX += x2b8_largeCentroid.GetX();
  centroidZ += x2b8_largeCentroid.GetZ();

  if (x18c_31_clearLOS) {
    centroidX /= 1.5f;
  }
  centroidZ /= 3.f;

  if (!x18c_31_clearLOS && x368_obscuringObjectId == kInvalidUniqueId) {
    float xMul = 1.5f;
    float zMul = 1.f;
    if (x350_obscuringMaterial.HasMaterial(kMT_Floor)) {
      zMul += 2.f * x358_unobscureMag;
    }
    if (x350_obscuringMaterial.HasMaterial(kMT_Wall)) {
      xMul += 3.f * CMath::Clamp(0.f, x358_unobscureMag - 0.25f, 1.f);
    }
    centroidX *= xMul;
    centroidZ *= zMul;
  }

  if (!x18c_28_volumeCollider) {
    return CVector3f::Zero();
  }

  if (fabsf(centroidX) < 0.05f) {
    centroidX = 0.f;
  }
  if (fabsf(centroidZ) < 0.05f) {
    centroidZ = 0.f;
  }

  if (x18c_31_clearLOS) {
    centroidZ *= 0.5f;
  }

  return CVector3f(centroidX, 0.f, centroidZ);
}

int CBallCamera::CountObscuredColliders(const rstl::vector< CCameraCollider >& colliderList) const {
  int ret = 0;
  for (int i = 0; i < colliderList.size(); i++) {
    if (colliderList[i].GetOcclusionCount() >= 2) {
      ++ret;
    }
  }
  return ret;
}

CAABox
CBallCamera::CalculateCollidersBoundingBox(const rstl::vector< CCameraCollider >& colliderList,
                                           const CStateManager& mgr) const {
  CAABox aabb = CAABox::MakeMaxInvertedBox();
  for (int i = 0; i < colliderList.size(); i++) {
    aabb.AccumulateBounds(colliderList[i].GetRealPosition());
  }
  aabb.AccumulateBounds(mgr.GetPlayer()->GetTranslation());
  return aabb;
}

CVector3f CBallCamera::AvoidGeometryFull(const CTransform4f& xf, const TEntityList& nearList,
                                         float dt, CStateManager& mgr) {
  UpdateColliders(xf, x264_smallColliders, x2d0_smallColliderIt, x264_smallColliders.size(), 4.f,
                  nearList, dt, mgr);
  UpdateColliders(xf, x274_mediumColliders, x2d4_mediumColliderIt, x274_mediumColliders.size(), 4.f,
                  nearList, dt, mgr);
  UpdateColliders(xf, x284_largeColliders, x2d8_largeColliderIt, x284_largeColliders.size(), 4.f,
                  nearList, dt, mgr);
  return ApplyColliders();
}

CVector3f CBallCamera::AvoidGeometry(const CTransform4f& xf, const TEntityList& nearList, float dt,
                                     CStateManager& mgr) {
  switch (x328_avoidGeomCycle) {
  case 0:
    UpdateColliders(xf, x264_smallColliders, x2d0_smallColliderIt, 1, 4.f, nearList, dt, mgr);
    break;
  case 1:
    UpdateColliders(xf, x274_mediumColliders, x2d4_mediumColliderIt, 3, 4.f, nearList, dt, mgr);
    break;
  case 2:
    UpdateColliders(xf, x284_largeColliders, x2d8_largeColliderIt, 4, 4.f, nearList, dt, mgr);
    break;
  case 3:
    UpdateColliders(xf, x284_largeColliders, x2d8_largeColliderIt, 4, 4.f, nearList, dt, mgr);
    break;
  default:
    break;
  }

  int newCycle = x328_avoidGeomCycle + 1;
  x328_avoidGeomCycle = newCycle;
  if (newCycle >= 4) {
    x328_avoidGeomCycle = 0;
  }

  return ApplyColliders();
}

bool CBallCamera::DetectCollision(const CVector3f& from, const CVector3f& to, float radius,
                                  float& d, CStateManager& mgr) {
  CVector3f delta = to - from;
  float deltaMag = delta.Magnitude();
  CVector3f deltaNorm = delta * (1.f / deltaMag);
  bool clear = true;

  if (deltaMag > FLT_EPSILON * 10.f) {
    float margin = 2.f * radius;
    CAABox aabb = CAABox::MakeMaxInvertedBox();
    aabb.AccumulateBounds(from);
    aabb.AccumulateBounds(to);
    aabb = CAABox(aabb.GetMinPoint() - CVector3f(margin, margin, margin),
                  aabb.GetMaxPoint() + CVector3f(margin, margin, margin));
    TEntityList nearList;
    mgr.BuildColliderList(nearList, *mgr.Player(), aabb);
    CAreaCollisionCache cache(aabb);
    CGameCollision::BuildAreaCollisionCache(mgr, cache);
    if (cache.HasCacheOverflowed()) {
      clear = false;
    }
    if (CGameCollision::DetectCollisionBoolean_Cached(
            mgr, cache,
            CCollidableSphere(CSphere(CVector3f::Zero(), radius), CMaterialList(kMT_Solid)),
            CTransform4f::Translate(from),
            CMaterialFilter::MakeIncludeExclude(
                CMaterialList(kMT_Solid), CMaterialList(kMT_ProjectilePassthrough, kMT_Player,
                                                        kMT_Character, kMT_CameraPassthrough)),
            nearList)) {
      d = -1.f;
      return true;
    }
    if (clear) {
      TUniqueId intersectId = kInvalidUniqueId;
      CCollisionInfo info;
      double dTmp = deltaMag;
      if (CGameCollision::DetectCollision_Cached_Moving(
              mgr, cache,
              CCollidableSphere(CSphere(CVector3f::Zero(), radius), CMaterialList(kMT_Solid)),
              CTransform4f::Translate(from),
              CMaterialFilter::MakeIncludeExclude(
                  CMaterialList(kMT_Solid), CMaterialList(kMT_ProjectilePassthrough, kMT_Player,
                                                          kMT_Character, kMT_CameraPassthrough)),
              nearList, deltaNorm, intersectId, info, dTmp)) {
        d = static_cast< float >(dTmp);
        clear = false;
      }
    }
  }
  return !clear;
}

CVector3f CBallCamera::FindDesiredPosition(float distance, float elevation, CVector3f dir,
                                           CStateManager& mgr, bool fullTest) {
  const CPlayer* player = TCastToConstPtr< CPlayer >(mgr.ObjectById(GetWatchedObject()));
  if (!player) {
    return CVector3f::Zero();
  }

  CVector3f useDir = dir;
  if (!dir.CanBeNormalized()) {
    useDir = CVector3f::Forward();
  }

  const CTransform4f lookDirXf = CTransform4f::LookAt(CVector3f::Zero(), useDir);
  const CVector3f ballPos = player->GetBallPosition();
  float dist = distance;
  float elev = elevation;
  ConstrainElevationAndDistance(elev, dist, 0.f, mgr);

  CVector3f eyePos = player->GetEyePosition();
  if (!mgr.RayCollideWorld(ballPos, eyePos, kLineOfSightFilter, nullptr)) {
    eyePos = ballPos;
  }

  CVector3f idealLookVec(0.f, -dist, elev - (eyePos.GetZ() - ballPos.GetZ()));
  idealLookVec = lookDirXf.GetRotation() * idealLookVec;
  CVector3f lookVec(0.f, dist, elev - (eyePos.GetZ() - ballPos.GetZ()));
  float idealLookDist = idealLookVec.Magnitude();
  const CRelAngle resolveLOSIntervalAng = CRelAngle::FromDegrees(30.f);
  float seekStep = 0.3f;
  bool foundClear = false;
  const bool clear = !DetectCollision(eyePos, eyePos + idealLookVec, 0.3f, idealLookDist, mgr);

  if (!clear && idealLookDist <= 0.f) {
    CAABox aabb(ballPos.GetX() - distance, ballPos.GetY() - distance, ballPos.GetZ(),
                ballPos.GetX() + distance, ballPos.GetY() + distance, elev + ballPos.GetZ());
    TEntityList nearList;
    CActor* actor = TCastToPtr< CActor >(mgr.ObjectById(x46c_collisionActorId));
    mgr.BuildNearList(nearList, aabb, kLineOfSightFilter, actor);

    const CTransform4f xfNeg =
        CQuaternion::ZRotation(CRelAngle(-resolveLOSIntervalAng.AsRadians())).BuildTransform4f();
    const CTransform4f xfPos = CQuaternion::ZRotation(resolveLOSIntervalAng).BuildTransform4f();

    while (!foundClear && idealLookDist > dist) {
      const float lookDist = idealLookDist;
      idealLookVec.Normalize();
      idealLookVec = lookDist * idealLookVec;
      CVector3f lookVecNeg = xfNeg.Rotate(idealLookVec);
      CVector3f lookVecPos = xfPos.Rotate(idealLookVec);

      for (int i = 0; CCast::LtoF(i) < 180.f / resolveLOSIntervalAng.AsDegrees(); ++i) {
        if (mgr.RayCollideWorld(eyePos, eyePos + lookVecNeg, nearList, kLineOfSightFilter,
                                nullptr)) {
          foundClear = true;
          lookVec = lookVecNeg;
          break;
        }

        if (mgr.RayCollideWorld(eyePos, eyePos + lookVecPos, nearList, kLineOfSightFilter,
                                nullptr)) {
          foundClear = true;
          lookVec = lookVecPos;
          break;
        }

        lookVecNeg = xfNeg * lookVecNeg;
        lookVecPos = xfPos * lookVecPos;
      }

      idealLookDist -= seekStep;
    }
  } else {
    if (idealLookDist < 2.f) {
      idealLookVec.Normalize();
      idealLookVec *= 2.f;
    }

    const CTransform4f xfNeg =
        CQuaternion::ZRotation(CRelAngle(-resolveLOSIntervalAng.AsRadians())).BuildTransform4f();
    CVector3f lookVecNeg = xfNeg.Rotate(idealLookVec);
    const CTransform4f xfPos = CQuaternion::ZRotation(resolveLOSIntervalAng).BuildTransform4f();
    CVector3f lookVecPos = xfPos.Rotate(idealLookVec);

    if (clear || (!fullTest && (idealLookDist > 2.f || x2e8_ballVelFlat > 1.25f))) {
      const float lookDist = idealLookDist;
      idealLookVec.Normalize();
      lookVec = lookDist * idealLookVec;
      foundClear = true;
    } else {
      for (int i = 0; CCast::LtoF(i) < 180.f / resolveLOSIntervalAng.AsDegrees(); ++i) {
        idealLookDist = lookVecNeg.Magnitude();
        const bool negClear =
            !DetectCollision(eyePos, eyePos + lookVecNeg, 0.3f, idealLookDist, mgr);
        if (negClear || idealLookDist > 2.f) {
          const float lookDist = idealLookDist;
          lookVecNeg.Normalize();
          lookVec = lookDist * lookVecNeg;
          foundClear = true;
          break;
        }

        idealLookDist = lookVecPos.Magnitude();
        const bool posClear =
            !DetectCollision(eyePos, eyePos + lookVecPos, 0.3f, idealLookDist, mgr);
        if (posClear || idealLookDist > 2.f) {
          const float lookDist = idealLookDist;
          lookVecPos.Normalize();
          lookVec = lookDist * lookVecPos;
          foundClear = true;
          break;
        }

        lookVecNeg = xfNeg * lookVecNeg;
        lookVecPos = xfPos * lookVecPos;
      }

      if (!foundClear) {
        CAABox findBounds(ballPos.GetX() - distance, ballPos.GetY() - distance, ballPos.GetZ(),
                          ballPos.GetX() + distance, ballPos.GetY() + distance,
                          elev + ballPos.GetZ());
        TEntityList nearList;
        CActor* actor = TCastToPtr< CActor >(mgr.ObjectById(x46c_collisionActorId));
        mgr.BuildNearList(nearList, findBounds, kLineOfSightFilter, actor);

        const CTransform4f xfNeg2 =
            CQuaternion::ZRotation(CRelAngle(-resolveLOSIntervalAng.AsRadians()))
                .BuildTransform4f();
        const CTransform4f xfPos2 =
            CQuaternion::ZRotation(resolveLOSIntervalAng).BuildTransform4f();

        while (!foundClear && idealLookDist > dist) {
          const float lookDist = idealLookDist;
          idealLookVec.Normalize();
          idealLookVec = lookDist * idealLookVec;
          CVector3f lookVecNeg2 = xfNeg2.Rotate(idealLookVec);
          CVector3f lookVecPos2 = xfPos2.Rotate(idealLookVec);

          for (int i = 0; CCast::LtoF(i) < 180.f / resolveLOSIntervalAng.AsDegrees(); ++i) {
            if (mgr.RayCollideWorld(eyePos, eyePos + lookVecNeg2, nearList, kLineOfSightFilter,
                                    nullptr)) {
              foundClear = true;
              lookVec = lookVecNeg2;
              break;
            }

            if (mgr.RayCollideWorld(eyePos, eyePos + lookVecPos2, nearList, kLineOfSightFilter,
                                    nullptr)) {
              foundClear = true;
              lookVec = lookVecPos2;
              break;
            }

            lookVecNeg2 = xfNeg2 * lookVecNeg2;
            lookVecPos2 = xfPos2 * lookVecPos2;
          }

          idealLookDist -= seekStep;
        }
      }
    }
  }

  if (!foundClear) {
    return GetTranslation();
  }

  CVector3f ret = eyePos + lookVec;
  return ret;
}

CTransform4f CBallCamera::FindDesiredTransform(CVector3f dir, CStateManager& mgr) {
  CVector3f useDir = dir;
  if (!dir.CanBeNormalized()) {
    useDir = CVector3f(0.f, 1.f, 0.f);
  }

  float distance = x190_curMinDistance;
  float elevation = x1a0_elevation;
  ConstrainElevationAndDistance(elevation, distance, 0.f, mgr);

  CVector3f desiredPos = FindDesiredPosition(distance, elevation, useDir, mgr, false);
  CVector3f pos = desiredPos;
  UpdateLookAtPosition(0.f, mgr);
  CTransform4f xf = CTransform4f::LookAt(pos, x1d8_lookPos, CVector3f::Up());
  return xf;
}

void CBallCamera::UpdateObjectTooCloseId(CStateManager& mgr) {
  x3e0_tooCloseActorDist = 1000000.f;
  x3dc_tooCloseActorId = kInvalidUniqueId;

  CVector3f ballPos = mgr.GetPlayer()->GetBallPosition();
  CVector3f cam = GetTranslation();
  CAABox bounds = CAABox::Identity();
  CObjectList objList = mgr.ObjectListById(kOL_PlatformAndDoor);

  for (int i = objList.GetFirstObjectIndex(); i != -1; i = objList.GetNextObjectIndex(i)) {
    CPhysicsActor* actor = TCastToPtr< CScriptDoor >(objList[i]);
    if (actor != nullptr && actor->GetCurrentAreaId() == mgr.GetPlayer()->GetCurrentAreaId()) {
      bounds = actor->GetBoundingBox();
      float cameraDist = CVector3f(actor->GetTranslation() - cam).Magnitude();
      float ballDist = CVector3f(actor->GetTranslation() - ballPos).Magnitude();
      float dist = CMath::Min(cameraDist, ballDist);
      if (dist < 30.f && dist < x3e0_tooCloseActorDist) {
        x3dc_tooCloseActorId = actor->GetUniqueId();
        x3e0_tooCloseActorDist = dist;
      }
    }
  }
}

bool CBallCamera::ConstrainElevationAndDistance(float& elevation, float& distance, float dt,
                                                CStateManager& mgr) {
  const CPlayer* player = mgr.GetPlayer();
  CVector3f ballToCam = GetTranslation() - player->GetBallPosition();
  float ballToCamMag = 0.f;
  if (ballToCam.CanBeNormalized()) {
    CVector2f flat(ballToCam.GetX(), ballToCam.GetY());
    ballToCamMag = flat.Magnitude();
  } else {
    ballToCam = -player->GetMovementDirection();
  }

  const float curDistance = distance;
  bool doorClose = false;
  float newDistance = curDistance;
  float stretchFac = 1.f;
  float baseElevation = elevation;
  float springMul = stretchFac;
  if (CScriptDoor* door = TCastToPtr< CScriptDoor >(
          const_cast< CEntity* >(mgr.GetObjectById(x3dc_tooCloseActorId)))) {
    if (!door->IsBallDoor()) {
      stretchFac = CMath::AbsF(x3e0_tooCloseActorDist / (3.f * curDistance));
      if (fabs(stretchFac) > 1.f) {
        float sign = 1.f;
        if (stretchFac < 0.f) {
          sign = -1.f;
        }
        stretchFac = 1.f * sign;
      }
      if (x3e0_tooCloseActorDist < 3.f * curDistance) {
        doorClose = true;
      }
      if (door->IsOpen()) {
        newDistance = stretchFac * (curDistance - x468_conservativeDoorCamDistance) +
                      x468_conservativeDoorCamDistance;
      } else {
        newDistance = stretchFac * (curDistance - 5.f) + 5.f;
      }
      if (x18d_28_obtuseDirection) {
        newDistance = newDistance * (1.f + x308_speedFactor);
      }
      baseElevation = 0.75f;
      if (door->IsOpen()) {
        baseElevation = 1.5f;
      }
      springMul = 4.f;
    }
  }

  distance = x214_ballCameraSpring.ApplyDistanceSpring(newDistance, ballToCamMag, dt * springMul);
  elevation = (elevation - baseElevation) * stretchFac + baseElevation;
  return doorClose;
}

CVector3f CBallCamera::ConstrainYawAngle(const CPlayer& player, float distance, float yawSpeed,
                                         float dt, CStateManager& mgr) const {
  CVector3f playerToCamFlat = GetTranslation() - player.GetTranslation();
  playerToCamFlat.SetZ(0.f);

  CVector3f lookDir = player.GetTransform().GetColumn(kDY);
  if (player.GetMorphballTransitionState() == CPlayer::kMS_Morphed) {
    lookDir = player.GetMovementDirection();
    const CScriptDoor* door =
        TCastToConstPtr< CScriptDoor >(mgr.GetObjectById(x3dc_tooCloseActorId));
    if ((door == nullptr || !door->IsOpen()) &&
        (x400_state == kBCS_Boost || x400_state == kBCS_Chase)) {
      lookDir = player.GetLeaveMorphDirection();
    }
  }
  if (player.GetMorphballTransitionState() == CPlayer::kMS_Unmorphing) {
    lookDir = player.GetLeaveMorphDirection();
  }

  lookDir.SetZ(0.f);
  if (lookDir.CanBeNormalized()) {
    lookDir.Normalize();
  } else {
    lookDir = -playerToCamFlat;
  }

  if (!playerToCamFlat.CanBeNormalized()) {
    return -lookDir;
  }
  playerToCamFlat.Normalize();

  double dot = CVector3f::Dot(playerToCamFlat, -lookDir);
  if (1.0 < CMath::AbsD(dot)) {
    float sign = 1.f;
    if (dot < 0.0) {
      sign = -1.f;
    }
    dot = 1.f * sign;
  }

  if (dot >= 0.99999f) {
    return -lookDir;
  }

  float localAngle = static_cast< float >(acos(dot)) / yawSpeed;
  const float useAngle = CMath::Clamp(0.f, localAngle, 1.f);
  const CRelAngle relAngle(distance * dt * useAngle);
  const CVector3f& negLookDir = -lookDir;
  const CUnitVector3f from(negLookDir);
  const CUnitVector3f to(playerToCamFlat);
  CQuaternion quat = CQuaternion::LookAt(to, from, relAngle);
  CQuaternion quatCopy(quat);
  return quatCopy.Transform(playerToCamFlat);
}

CTransform4f CBallCamera::UpdateCameraPositions(float dt, const CTransform4f& oldXf,
                                                const CTransform4f& newXf) {
  CTransform4f useXf(newXf);
  if (CMath::AbsF(oldXf.GetForward().GetZ()) > 0.9f &&
      CMath::AbsF(newXf.GetForward().GetZ()) > 0.9f) {
    if (CVector3f::Dot(oldXf.GetRight(), newXf.GetRight()) > 0.999f) {
    } else {
      CRelAngle ang(2.f * (0.017453292f * dt));
      CQuaternion quat = CQuaternion::ClampedRotateTo(oldXf.GetRight(), newXf.GetRight(), ang);
      CQuaternion quatCopy(quat);
      CVector3f useRight = quatCopy.BuildTransform4f() * oldXf.GetRight();
      if (CMath::AbsF(CVector3f::Dot(useRight, newXf.GetForward())) > 0.999f) {
      } else {
        CVector3f up = CVector3f::Cross(newXf.GetForward(), useRight).AsNormalized();
        CVector3f forward = newXf.GetForward().AsNormalized();
        useRight = CVector3f::Cross(up, forward);
        useXf = CTransform4f(useRight, newXf.GetForward(), up, newXf.GetTranslation());
      }
    }
  }

  return useXf;
}

void CBallCamera::UpdateTransform(const CVector3f& lookDir, const CVector3f& pos, float dt,
                                  CStateManager& mgr) {
  CTransform4f xf(GetTransform());
  CVector3f useLookDir = lookDir;
  if (x18d_31_overrideLookDir) {
    if (mgr.CameraManager()->GetCameraHint(mgr)) {
      useLookDir = mgr.CameraManager()->GetCameraHint(mgr)->GetTransform().GetForward();
    }
  }

  CVector3f lookDirFlat(useLookDir);
  lookDirFlat.SetZ(0.f);
  if (!lookDirFlat.CanBeNormalized()) {
    SetTranslation(pos);
    return;
  }

  CVector3f curLookDir = GetTransform().GetForward();
  if (curLookDir.CanBeNormalized()) {
    curLookDir.Normalize();
  } else {
    CVector3f lookPos = pos + useLookDir;
    SetTransform(CTransform4f::LookAt(pos, lookPos, CVector3f::Up()));
    SetTranslation(pos);
    return;
  }

  float dot = CVector3f::Dot(curLookDir, useLookDir);
  dot = CMath::Limit(dot, 1.f);

  if (fabsf(dot) >= 0.99999f) {
    CVector3f lookPos = pos + useLookDir;
    SetTransform(CTransform4f::LookAt(pos, lookPos, CVector3f::Up()));
  } else {
    const float angleSpeedMul = CMath::Clamp(0.f, acosf(dot) / (1.0471976f * dt), 1.f);
    CRelAngle angleDelta(dt * x1a4_curAnglePerSecond * angleSpeedMul);

    float lookUpDot = CVector3f::Dot(useLookDir, CVector3f::Up());
    lookUpDot = CMath::Limit(lookUpDot, 1.f);
    const float lookUpDotAbs = fabsf(lookUpDot);
    float maxAngleDelta = (1.f - lookUpDotAbs) * (12.566371f * dt);

    if (x36c_splineState == kBSS_Nav) {
      maxAngleDelta = 4.1887903f * dt;
      if (maxAngleDelta < angleDelta.AsRadians()) {
        angleDelta = CRelAngle(4.1887903f * dt);
      }
    }

    if (maxAngleDelta < angleDelta.AsRadians() && !mgr.GetPlayer()->IsMorphBallTransitioning() &&
        lookUpDotAbs > 0.999f) {
      angleDelta = CRelAngle(maxAngleDelta);
    }

    switch (x400_state) {
    case kBCS_Boost:
      angleDelta = CRelAngle(dt * x438_boostAnglePerSecond * angleSpeedMul);
      break;
    case kBCS_Chase:
      if (x18c_25_chaseAllowed) {
        angleDelta = CRelAngle(dt * x40c_chaseAnglePerSecond * angleSpeedMul);
      }
      break;
    default:
      break;
    }

    if (x18d_26_lookAtBall || mgr.CameraManager()->IsInterpolationCameraActive()) {
      x18d_26_lookAtBall = false;
      CRelAngle fullRot = 6.2831855f;
      CUnitVector3f lookDirUnit(useLookDir);
      CUnitVector3f curLookDirUnit(curLookDir);
      CQuaternion quat = CQuaternion::LookAt(curLookDirUnit, lookDirUnit, fullRot);
      CQuaternion quatCopy(quat);
      SetTransform(quatCopy.BuildTransform4f() * GetTransform().GetRotation());
    } else {
      CUnitVector3f lookDirUnit(useLookDir);
      CUnitVector3f curLookDirUnit(curLookDir);
      CQuaternion quat = CQuaternion::LookAt(curLookDirUnit, lookDirUnit, angleDelta);
      CQuaternion quatCopy(quat);
      SetTransform(quatCopy.BuildTransform4f() * GetTransform().GetRotation());
    }
  }

  SetTranslation(pos);
}

void CBallCamera::UpdatePlayerMovement(float dt, CStateManager& mgr) {
  const CPlayer* player = mgr.GetPlayer();
  x2ec_maxBallVel = fabsf(player->GetActualBallMaxVelocity(dt));

  CVector3f ballPos = player->GetBallPosition();
  x2f0_ballDelta = ballPos - x2dc_prevBallPos;
  x2fc_ballDeltaFlat = x2f0_ballDelta;
  x2fc_ballDeltaFlat.SetZ(0.f);
  if (x2fc_ballDeltaFlat.CanBeNormalized()) {
    x2e8_ballVelFlat = x2fc_ballDeltaFlat.Magnitude() / dt;
  } else {
    x2e8_ballVelFlat = 0.f;
  }

  x2dc_prevBallPos = ballPos;
  x18d_28_obtuseDirection = false;

  CVector3f camToBallFlat = ballPos - GetTranslation();
  camToBallFlat.SetZ(0.f);
  if (camToBallFlat.CanBeNormalized()) {
    camToBallFlat.Normalize();
    float dot = CVector3f::Dot(camToBallFlat, player->GetMovementDirection());
    dot = CMath::Limit(dot, 1.f);
    if (fabsf(acosf(dot)) > 1.7453293f) {
      x18d_28_obtuseDirection = true;
    }
  }

  x308_speedFactor = 0.f;
  float tmpVel = x2e8_ballVelFlat - 4.f;
  if (tmpVel > 0.f) {
    float speedFactor = fabsf(sinf(0.017453292f * (90.f * (tmpVel / (x2ec_maxBallVel - 4.f)))));
    x308_speedFactor = CMath::Limit(speedFactor, 1.f);
  }

  x190_curMinDistance =
      x308_speedFactor * (x198_maxDistance - x194_targetMinDistance) + x194_targetMinDistance;
  if (x308_speedFactor > 0.5f && player->GetPlayerMovementState() == NPlayer::kMS_OnGround) {
    x30c_speedingTime = dt * x308_speedFactor + x30c_speedingTime;
  } else {
    x30c_speedingTime = 0.f;
  }
  x30c_speedingTime = CMath::Clamp(0.f, x30c_speedingTime, 3.f);
}

CVector3f CBallCamera::InterpolateCameraElevation(const CVector3f& camPos, float dt) const {
  if (x1a0_elevation < 2.f) {
    return camPos;
  }

  CVector3f ret = camPos;
  float z = camPos.GetZ();
  if (!x18c_31_clearLOS && x350_obscuringMaterial.HasMaterial(kMT_Floor)) {
    x3d4_elevInterpTimer = 1.f;
    CVector3f translationA = GetTranslation();
    CVector3f translationB = GetTranslation();
    ret = translationA;
    z = translationA.GetZ();
    x3d8_elevInterpStart = translationB.GetZ();
  } else if (x3d4_elevInterpTimer > 0.f) {
    x3d4_elevInterpTimer -= dt;
    float timer = CMath::Clamp(0.f, x3d4_elevInterpTimer, 1.f);
    z = (z - x3d8_elevInterpStart) * (1.f - timer) + x3d8_elevInterpStart;
  }

  ret.SetZ(z);
  return ret;
}

bool CBallCamera::ShouldResetSpline(CStateManager& mgr) const {
  bool ret = false;
  if (x400_state != kBCS_ToBall && !mgr.CameraManager()->IsInterpolationCameraActive() &&
      mgr.GetPlayer()->GetMorphBall()->GetSpiderBallState() != CMorphBall::kSBS_Active &&
      x36c_splineState == kBSS_Invalid) {
    const int behaviour = x188_behaviour;
    if (behaviour >= kBCB_SpindleCamera + 1 || behaviour < kBCB_HintFixedPosition) {
      ret = true;
    }
  }
  return ret;
}

void CBallCamera::BuildSpline(CStateManager& mgr) {
  CVector3f ballPos = mgr.GetPlayer()->GetBallPosition();
  CVector3f translation = GetTranslation();
  const CVector3f forward(0.f, 1.f, 0.f);
  x36c_splineState = kBSS_Arc;
  x370_24_reevalSplineEnd = false;
  x37c_camSpline.Reset(4);
  x37c_camSpline.AddKnot(translation, forward);

  float distance = x190_curMinDistance;
  float elevation = x1a0_elevation;
  ConstrainElevationAndDistance(elevation, distance, 0.f, mgr);

  CVector3f halfwayPoint(translation.GetX() + 0.5f * (ballPos.GetX() - translation.GetX()),
                         translation.GetY() + 0.5f * (ballPos.GetY() - translation.GetY()),
                         translation.GetZ());
  CVector3f delta = translation - halfwayPoint;

  CRelAngle angle(0.7853982f);
  CQuaternion rot = CQuaternion::ZRotation(angle);
  if (CVector3f::Cross(mgr.GetPlayer()->GetMovementDirection(), GetTransform().GetColumn(kDY))
          .GetZ() >= 0.f) {
    rot = CQuaternion::ZRotation(CRelAngle(-0.7853982f));
  }

  delta = rot.Transform(delta);
  CVector3f knot1(halfwayPoint.GetX() + delta.GetX(), halfwayPoint.GetY() + delta.GetY(),
                  translation.GetZ() + delta.GetZ());
  TUniqueId intersectId = kInvalidUniqueId;
  TEntityList nearList;
  CRayCastResult result = mgr.RayWorldIntersection(intersectId, knot1, -delta.AsNormalized(),
                                                   delta.Magnitude(), kLineOfSightFilter, nearList);
  if (result.IsValid()) {
    knot1 = result.GetPoint() + 1.5f * delta.AsNormalized();
  } else {
    knot1 = halfwayPoint + delta;
  }
  x37c_camSpline.AddKnot(knot1, CVector3f(0.f, 1.f, 0.f));

  CVector3f moveDir = mgr.GetPlayer()->GetMovementDirection();
  FindDesiredPosition(distance, elevation, moveDir, mgr, false);

  delta = rot.Transform(delta);
  CVector3f knot2 = halfwayPoint + delta;
  result = mgr.RayWorldIntersection(intersectId, knot2, -delta.AsNormalized(), delta.Magnitude(),
                                    kLineOfSightFilter, nearList);
  if (result.IsValid()) {
    knot2 = result.GetPoint() + 2.f * delta.AsNormalized();
  } else {
    knot2 = halfwayPoint + delta;
  }
  x37c_camSpline.AddKnot(knot2, CVector3f(0.f, 1.f, 0.f));

  delta = rot.Transform(delta);
  CVector3f knot3 = halfwayPoint + delta;
  result = mgr.RayWorldIntersection(intersectId, knot3, -delta.AsNormalized(), delta.Magnitude(),
                                    kLineOfSightFilter, nearList);
  if (result.IsValid()) {
    knot3 = result.GetPoint() + 2.f * delta.AsNormalized();
  } else {
    knot3 = halfwayPoint + delta;
  }
  x37c_camSpline.AddKnot(knot3, CVector3f(0.f, 1.f, 0.f));

  CMaterialList intersectMat;
  if (!SplineIntersectTest(intersectMat, mgr) && intersectMat.HasMaterial(kMT_Wall)) {
    delta = knot1 - halfwayPoint;
    result = mgr.RayWorldIntersection(intersectId, knot1, -delta.AsNormalized(), delta.Magnitude(),
                                      kLineOfSightFilter, nearList);
    if (result.IsValid() && !result.GetMaterial().HasMaterial(kMT_Pillar)) {
      CVector3f adjusted = result.GetPoint() - 1.25f * (0.3f * delta.AsNormalized());
      x37c_camSpline.SetKnotPosition(1, adjusted);
    }

    delta = knot2 - halfwayPoint;
    result = mgr.RayWorldIntersection(intersectId, knot2, -delta.AsNormalized(), delta.Magnitude(),
                                      kLineOfSightFilter, nearList);
    if (result.IsValid() && !result.GetMaterial().HasMaterial(kMT_Pillar)) {
      CVector3f adjusted = result.GetPoint() - 1.25f * (0.3f * delta.AsNormalized());
      x37c_camSpline.SetKnotPosition(2, adjusted);
    }

    x37c_camSpline.UpdateSplineLength();
    if (!SplineIntersectTest(intersectMat, mgr)) {
      x36c_splineState = kBSS_Invalid;
      return;
    }
  }

  x374_splineCtrl = 0.5f;
  x378_splineCtrlRange = 0.5f;
  x37c_camSpline.UpdateSplineLength();
  x3c8_collisionExcludeList = CMaterialList();
}

void CBallCamera::ResetSpline(CStateManager& mgr) {
  CVector3f ballPos = mgr.GetPlayer()->GetBallPosition();
  TUniqueId intersectId = kInvalidUniqueId;
  TEntityList nearList;
  CRayCastResult result = mgr.RayWorldIntersection(intersectId, ballPos, CVector3f(0.f, 0.f, -1.f),
                                                   20.f, kLineOfSightFilter, nearList);
  float downFactor = 1.f;
  if (result.IsValid()) {
    float time = result.GetTime() / 20.f;
    downFactor = CMath::Clamp(0.f, time, 1.f);
  }

  const float clampedDownFactor = downFactor;

  x36c_splineState = kBSS_Nav;
  x370_24_reevalSplineEnd = true;
  x3d0_24_camBehindFloorOrWall = false;
  x37c_camSpline.Reset(4);

  CVector3f translation(GetTransform().Get03(), GetTransform().Get13(), GetTransform().Get23());
  x37c_camSpline.AddKnot(translation, CVector3f(0.f, 1.f, 0.f));

  float distance = x190_curMinDistance;
  float elevation = x1a0_elevation;
  ConstrainElevationAndDistance(elevation, distance, 0.f, mgr);

  CVector3f knot1(x35c_splineIntermediatePos.GetX(), x35c_splineIntermediatePos.GetY(),
                  GetTransform().Get23());
  const float knot1X = knot1.GetX();
  const double knot1Y = knot1.GetY();
  x37c_camSpline.AddKnot(knot1, CVector3f(0.f, 1.f, 0.f));

  const float factor = 0.5f + clampedDownFactor;
  CVector3f knot2(
      knot1.GetX() + factor * (x35c_splineIntermediatePos.GetX() - GetTransform().Get03()),
      knot1.GetY() + factor * (x35c_splineIntermediatePos.GetY() - GetTransform().Get13()),
      knot1.GetZ() + factor * (x35c_splineIntermediatePos.GetZ() - GetTransform().Get23()));
  const double knot2Z = knot2.GetZ();
  x37c_camSpline.AddKnot(knot2, CVector3f(0.f, 1.f, 0.f));

  CVector3f pt2Ball = ballPos - knot2;
  pt2Ball.SetZ(0.f);
  if (pt2Ball.CanBeNormalized()) {
    pt2Ball.Normalize();
  } else {
    pt2Ball = mgr.GetPlayer()->GetMovementDirection();
  }

  CVector3f desiredPos = FindDesiredPosition(distance, elevation, pt2Ball, mgr, false);
  x37c_camSpline.AddKnot(desiredPos, CVector3f(0.f, 1.f, 0.f));
  x37c_camSpline.UpdateSplineLength();

  CMaterialList intersectMat;
  x3d0_24_camBehindFloorOrWall = false;
  x3c8_collisionExcludeList = CMaterialList(kMT_Floor, kMT_Ceiling);
  if (!SplineIntersectTest(intersectMat, mgr) &&
      (intersectMat.HasMaterial(kMT_Floor) || intersectMat.HasMaterial(kMT_Wall))) {
    CVector3f newKnot2(knot1X, knot1Y, knot2Z);
    x37c_camSpline.SetKnotPosition(2, newKnot2);
    x37c_camSpline.UpdateSplineLength();
    if (!SplineIntersectTest(intersectMat, mgr) && intersectMat.HasMaterial(kMT_Floor)) {
      x3d0_24_camBehindFloorOrWall = true;
      x3c8_collisionExcludeList = CMaterialList();
    }
  }

  x374_splineCtrl = 0.5f * clampedDownFactor + 2.f;
  x378_splineCtrlRange = 2.5f;
}

void CBallCamera::UpdateUsingFreeLook(float dt, CStateManager& mgr) {
  if (x400_state == kBCS_ToBall || x400_state == kBCS_FromBall) {
    x36c_splineState = kBSS_Invalid;
    return;
  }

  if (x36c_splineState == kBSS_Nav && x188_behaviour <= kBCB_SpindleCamera &&
      x188_behaviour >= kBCB_HintFixedPosition) {
    x36c_splineState = kBSS_Invalid;
    return;
  }

  float distance = x190_curMinDistance;
  float elevation = x1a0_elevation;
  ConstrainElevationAndDistance(elevation, distance, 0.f, mgr);

  CVector3f ballPos = mgr.GetPlayer()->GetBallPosition();
  CVector3f knotToBall = ballPos - x37c_camSpline.GetKnotPosition(2);
  knotToBall.SetZ(0.f);
  if (knotToBall.CanBeNormalized()) {
    knotToBall.Normalize();
  } else {
    knotToBall = mgr.GetPlayer()->GetMovementDirection();
  }

  CVector3f knot3 = x37c_camSpline.GetKnotPosition(3);

  CVector3f desiredPos = FindDesiredPosition(distance, elevation, knotToBall, mgr, false);

  if (x370_24_reevalSplineEnd) {
    x37c_camSpline.SetKnotPosition(3, desiredPos);
  }

  x374_splineCtrl -= dt;

  float splineT = 1.f - CMath::Clamp(0.f, x374_splineCtrl / x378_splineCtrlRange, 1.f);

  if (x36c_splineState == kBSS_Nav) {
    CMaterialList intersectMat;
    if (!SplineIntersectTest(intersectMat, mgr)) {
      x37c_camSpline.SetKnotPosition(3, knot3);
      if (intersectMat.HasMaterial(kMT_Floor)) {
        x36c_splineState = kBSS_Invalid;
        return;
      }
    }
  }

  if (x374_splineCtrl <= 0.f || (splineT > 0.75f && x18c_31_clearLOS)) {
    if (x36c_splineState == kBSS_Arc && !x18c_31_clearLOS) {
      CMaterialList intersectMat;
      if (!SplineIntersectTest(intersectMat, mgr)) {
        x36c_splineState = kBSS_Invalid;
      } else {
        CVector3f oldKnot2 = x37c_camSpline.GetKnotPosition(2);
        CVector3f oldKnot1 = x37c_camSpline.GetKnotPosition(1);
        BuildSpline(mgr);
        x37c_camSpline.SetKnotPosition(3, x37c_camSpline.GetKnotPosition(1));
        x37c_camSpline.SetKnotPosition(2, x37c_camSpline.GetKnotPosition(0));
        x37c_camSpline.SetKnotPosition(1, oldKnot2);
        x37c_camSpline.SetKnotPosition(0, oldKnot1);
        x37c_camSpline.UpdateSplineLength();
        x374_splineCtrl =
            x378_splineCtrlRange -
            x378_splineCtrlRange * (x37c_camSpline.GetKnotT(2) / x37c_camSpline.GetLength());
        x374_splineCtrl -= dt;
        splineT = 1.f - CMath::Clamp(0.f, x374_splineCtrl / x378_splineCtrlRange, 1.f);
      }
    } else {
      x36c_splineState = kBSS_Invalid;
    }
  }

  x37c_camSpline.UpdateSplineLength();
  CVector3f pos =
      x37c_camSpline.GetInterpolatedSplinePointByLength(splineT * x37c_camSpline.GetLength())
          .GetTranslation();

  if (CPhysicsActor* act = TCastToPtr< CPhysicsActor >(mgr.ObjectById(x46c_collisionActorId))) {
    CMaterialFilter filter = act->GetMaterialFilter();
    CMaterialList incl(filter.GetIncludeList());
    incl.Add(kMT_Wall);
    CMaterialList excl(filter.GetExcludeList());
    excl.Add(x3c8_collisionExcludeList);
    CMaterialFilter tmpFilter(incl, excl, CMaterialFilter::kFT_IncludeExclude);
    act->SetMaterialFilter(tmpFilter);
    desiredPos = MoveCollisionActor(pos, dt, mgr);
    act->SetMaterialFilter(filter);
  }

  CVector3f lookDir = x1d8_lookPos - desiredPos;
  if (x18d_26_lookAtBall) {
    lookDir = ballPos - desiredPos;
  }

  if (lookDir.CanBeNormalized()) {
    lookDir.Normalize();
    UpdateTransform(lookDir, desiredPos, dt, mgr);
  }

  TeleportCamera(desiredPos, mgr);

  if (x3d0_24_camBehindFloorOrWall && x374_splineCtrl / x378_splineCtrlRange < 0.5f) {
    x36c_splineState = kBSS_Invalid;
  }
}

void CBallCamera::UpdateUsingColliders(float dt, CStateManager& mgr) {
  const CPlayer* player = mgr.GetPlayer();
  if (player->GetBombJumpCounter() == 1) {
    return;
  }

  const CVector3f ballPos = player->GetBallPosition();
  if (player->GetBombJumpCounter() == 2) {
    CVector3f lookDir = x1d8_lookPos - GetTranslation();
    if (x18d_26_lookAtBall) {
      lookDir = ballPos - GetTranslation();
    }

    if (lookDir.CanBeNormalized()) {
      lookDir.Normalize();
      UpdateTransform(lookDir, GetTranslation(), dt, mgr);
    }
    return;
  }

  if (player->GetMorphballTransitionState() == CPlayer::kMS_Unmorphed &&
      !x18d_25_avoidGeometryFull) {
    return;
  }

  const CVector3f oldPos = GetTranslation();
  x2c4_smallCollidersObsCount = CountObscuredColliders(x264_smallColliders);
  x2c8_mediumCollidersObsCount = CountObscuredColliders(x274_mediumColliders);
  x2cc_largeCollidersObsCount = CountObscuredColliders(x284_largeColliders);

  CVector3f ballToCamFlat(GetTranslation().GetX() - ballPos.GetX(),
                          GetTranslation().GetY() - ballPos.GetY(), 0.f);
  float ballToCamFlatMag = 0.f;
  if (ballToCamFlat.CanBeNormalized()) {
    ballToCamFlatMag = ballToCamFlat.Magnitude();
  } else {
    ballToCamFlat = -player->GetMovementDirection();
  }

  CVector3f posAtBallLevel(GetTranslation().GetX(), GetTranslation().GetY(), ballPos.GetZ());
  CTransform4f ballToUnderCamLook = CTransform4f::Identity();
  if ((posAtBallLevel - ballPos).CanBeNormalized()) {
    ballToUnderCamLook = CTransform4f::LookAt(ballPos, posAtBallLevel, CVector3f::Up());
  }

  float distance = x214_ballCameraSpring.ApplyDistanceSpring(x190_curMinDistance, ballToCamFlatMag,
                                                             (3.f + x308_speedFactor) * dt);
  CVector3f camToBall = ballPos - GetTranslation();
  camToBall.SetZ(0.f);
  if (camToBall.CanBeNormalized()) {
    camToBall.Normalize();
    float dot = CVector3f::Dot(camToBall, player->GetMovementDirection());
    dot = CMath::Limit(dot, 1.f);
    if (CMath::AbsF(acosf(dot)) > CRelAngle::FromDegrees(150.f).AsRadians() &&
        player->GetVelocityWR().CanBeNormalized()) {
      distance = x214_ballCameraSpring.ApplyDistanceSpring(
          x190_curMinDistance + x308_speedFactor * (x19c_backwardsDistance - x190_curMinDistance),
          ballToCamFlatMag, 3.f * dt);
    }
  }

  x334_collidersAABB = CalculateCollidersBoundingBox(x284_largeColliders, mgr);
  TEntityList nearList;
  mgr.BuildNearList(nearList, x334_collidersAABB, kLineOfSightFilter,
                    TCastToPtr< CActor >(mgr.ObjectById(x46c_collisionActorId)));

  if (!x18c_31_clearLOS && x368_obscuringObjectId == kInvalidUniqueId) {
    if (x34c_obscuredTime > 0.f || x350_obscuringMaterial.HasMaterial(kMT_Floor) ||
        x350_obscuringMaterial.HasMaterial(kMT_Wall)) {
      x32c_colliderMag += 2.f * dt;
      if (x32c_colliderMag < 2.f) {
        x32c_colliderMag = 2.f;
      }
      if (x32c_colliderMag > 2.f) {
        x32c_colliderMag = 2.f;
      }
      UpdateCollidersDistances(x264_smallColliders, 2.31f * x32c_colliderMag,
                               2.31f * x32c_colliderMag / 2.f, -M_PIF / 2.f);
      UpdateCollidersDistances(x274_mediumColliders, 4.62f * x32c_colliderMag,
                               4.62f * x32c_colliderMag / 2.f, -M_PIF / 2.f);
      UpdateCollidersDistances(x284_largeColliders, 7.f * x32c_colliderMag,
                               7.f * x32c_colliderMag / 2.f, -M_PIF / 2.f);
    }
  } else {
    float targetColliderMag = 1.f;
    if (x18d_24_prevClearLOS && player->GetMoveSpeed() < 1.f) {
      targetColliderMag = 0.25f;
    }
    x32c_colliderMag += (targetColliderMag - x32c_colliderMag) * dt * 2.f;
    UpdateCollidersDistances(x264_smallColliders, x32c_colliderMag * 2.31f,
                             x32c_colliderMag * 2.31f, -M_PIF / 2.f);
    UpdateCollidersDistances(x274_mediumColliders, x32c_colliderMag * 4.62f,
                             x32c_colliderMag * 4.62f, -M_PIF / 2.f);
    UpdateCollidersDistances(x284_largeColliders, x32c_colliderMag * 7.f, x32c_colliderMag * 7.f,
                             -M_PIF / 2.f);
  }

  float elevation = x1a0_elevation;
  bool interpolateElevation = true;
  if (ConstrainElevationAndDistance(elevation, distance, dt, mgr)) {
    interpolateElevation = false;
  }
  CVector3f desiredBallToCam = ballToUnderCamLook.Rotate(CVector3f(0.f, distance, elevation));

  const CScriptDoor* door = TCastToConstPtr< CScriptDoor >(mgr.GetObjectById(x3dc_tooCloseActorId));
  if (door == nullptr || !door->IsOpen()) {
    if (x400_state == kBCS_Boost) {
      CVector3f ballToCam(GetTranslation().GetX() - ballPos.GetX(),
                          GetTranslation().GetY() - ballPos.GetY(),
                          GetTranslation().GetZ() - ballPos.GetZ());
      if (ballToCam.CanBeNormalized()) {
        ballToCam.Normalize();
      } else {
        ballToCam = GetTransform().GetColumn(kDY);
      }
      if (CMath::AbsF(ballToCamFlatMag - x430_boostElevation) < 1.f) {
        ballToCam = ConstrainYawAngle(*player, gpTweakBall->GetBallCameraBoostDistance(),
                                      gpTweakBall->GetBallCameraBoostYawSpeed(), dt, mgr);
      }
      ballToCam.SetZ(0.f);
      ballToCam.Normalize();
      ballToCam *= distance;
      ballToCam.SetZ(1.f);
      desiredBallToCam = ballToCam;
      interpolateElevation = false;
    }
    if (x18c_25_chaseAllowed &&
        (x400_state == kBCS_Chase || x188_behaviour == kBCB_FreezeLookPosition)) {
      CVector3f ballToCam(GetTranslation().GetX() - ballPos.GetX(),
                          GetTranslation().GetY() - ballPos.GetY(),
                          GetTranslation().GetZ() - ballPos.GetZ());
      if (ballToCam.CanBeNormalized()) {
        ballToCam.Normalize();
      } else {
        ballToCam = GetTransform().GetColumn(kDY);
      }
      if (CMath::AbsF(ballToCamFlatMag - x404_chaseElevation) < 3.f) {
        ballToCam = ConstrainYawAngle(*player, gpTweakBall->GetBallCameraChaseDistance(),
                                      gpTweakBall->GetBallCameraChaseYawSpeed(), dt, mgr);
      }
      ballToCam.SetZ(0.f);
      ballToCam.Normalize();
      ballToCam *= distance;
      ballToCam.SetZ(gpTweakBall->GetBallCameraElevation());
      desiredBallToCam = ballToCam;
      interpolateElevation = false;
    }
  }

  if (x188_behaviour == kBCB_HintBallToCam) {
    desiredBallToCam = x45c_overrideBallToCam;
    if (x18c_27_obscureAvoidance) {
      CVector3f ballToCamDir = x45c_overrideBallToCam;
      if (ballToCamDir.CanBeNormalized()) {
        ballToCamDir.Normalize();
      } else {
        ballToCamDir = -player->GetMovementDirection();
      }
      TUniqueId intersectId = kInvalidUniqueId;
      const CRayCastResult result = mgr.RayWorldIntersection(
          intersectId, ballPos, ballToCamDir, distance, kLineOfSightFilter, nearList);
      if (result.IsValid()) {
        desiredBallToCam = ballToCamDir * result.GetTime() * 0.9f;
      }
    }
    interpolateElevation = false;
  }

  distance = desiredBallToCam.Magnitude();
  CVector3f desiredCamPos(ballPos.GetX() + desiredBallToCam.GetX(),
                          ballPos.GetY() + desiredBallToCam.GetY(),
                          ballPos.GetZ() + desiredBallToCam.GetZ());
  float collDist = 0.f;
  if (DetectCollision(ballPos, desiredCamPos, 0.3f, collDist, mgr)) {
    if (collDist >= 1.f) {
      desiredBallToCam.Normalize();
      desiredBallToCam *= collDist;
      desiredCamPos = CVector3f(ballPos.GetX() + desiredBallToCam.GetX(),
                                ballPos.GetY() + desiredBallToCam.GetY(),
                                ballPos.GetZ() + desiredBallToCam.GetZ());
    } else {
      desiredCamPos = GetTranslation();
      desiredBallToCam = desiredCamPos - ballPos;
    }
  }

  CTransform4f lookXf = CTransform4f::LookAt(desiredCamPos, x1d8_lookPos, CVector3f::Up());
  CTransform4f oldLookXf = CTransform4f::LookAt(GetTranslation(), x1d8_lookPos, CVector3f::Up());
  x1e4_nextLookXf = lookXf;
  lookXf = oldLookXf;

  CVector3f colliderPointLocal = CVector3f::Zero();
  if (x18d_25_avoidGeometryFull || !x18c_31_clearLOS) {
    colliderPointLocal = AvoidGeometryFull(lookXf, nearList, dt, mgr);
  } else {
    colliderPointLocal = AvoidGeometry(lookXf, nearList, dt, mgr);
  }

  CVector2f oldBallToCamFlat2f(GetTranslation().GetX() - ballPos.GetX(),
                               GetTranslation().GetY() - ballPos.GetY());
  CVector3f oldBallToCamFlat(oldBallToCamFlat2f, 0.f);
  if (oldBallToCamFlat.Magnitude() < 2.f) {
    if (x18c_31_clearLOS && x478_shortMoveCount > 2) {
      colliderPointLocal *= 1.f / float(x478_shortMoveCount);
    }
    if (collDist < 3.f) {
      colliderPointLocal *= 0.25f;
      if (x18c_31_clearLOS && x478_shortMoveCount > 0) {
        colliderPointLocal *= x308_speedFactor;
      }
    }
    if (collDist < 1.f) {
      colliderPointLocal = CVector3f::Zero();
    }
  }

  CVector3f rotatedColliderPoint = lookXf.Rotate(colliderPointLocal);
  CVector3f camDelta(rotatedColliderPoint.GetX() + desiredCamPos.GetX() - ballPos.GetX(),
                     rotatedColliderPoint.GetY() + desiredCamPos.GetY() - ballPos.GetY(),
                     rotatedColliderPoint.GetZ() + desiredCamPos.GetZ() - ballPos.GetZ());
  if (camDelta.CanBeNormalized()) {
    camDelta.Normalize();
  }
  CVector3f desiredPos(ballPos.GetX() + distance * camDelta.GetX(),
                       ballPos.GetY() + distance * camDelta.GetY(),
                       ballPos.GetZ() + distance * camDelta.GetZ());

  if (x188_behaviour == kBCB_PathCameraDesiredPos) {
    const CPathCamera* pathCam =
        TCastToConstPtr< CPathCamera >(mgr.GetObjectById(mgr.CameraManager()->GetPathCameraId()));
    if (pathCam != nullptr) {
      desiredPos = pathCam->GetTranslation();
    }
  }

  CVector3f dampDelta(x294_dampedPos.GetX() - desiredPos.GetX(),
                      x294_dampedPos.GetY() - desiredPos.GetY(),
                      x294_dampedPos.GetZ() - desiredPos.GetZ());
  float dampDeltaMag = dampDelta.Magnitude();
  if (dampDelta.CanBeNormalized()) {
    dampDelta.Normalize();
  }
  float springDist = x228_ballCameraCentroidSpring.ApplyDistanceSpring(0.f, dampDeltaMag, dt);
  x294_dampedPos = CVector3f(desiredPos.GetX() + springDist * dampDelta.GetX(),
                             desiredPos.GetY() + springDist * dampDelta.GetY(),
                             desiredPos.GetZ() + springDist * dampDelta.GetZ());

  CVector3f posDelta(oldPos.GetX() - x294_dampedPos.GetX(), oldPos.GetY() - x294_dampedPos.GetY(),
                     oldPos.GetZ() - x294_dampedPos.GetZ());
  dampDeltaMag = posDelta.Magnitude();
  if (posDelta.CanBeNormalized()) {
    posDelta.Normalize();
  }

  float springMag = x250_ballCameraCentroidDistanceSpring.ApplyDistanceSpring(
      0.f, dampDeltaMag, (x18d_28_obtuseDirection ? 3.f : 1.f) * dt);
  if (x400_state == kBCS_Boost) {
    springMag = x448_ballCameraBoostSpring.ApplyDistanceSpring(0.f, dampDeltaMag, dt);
  } else if (x18c_25_chaseAllowed) {
    if (x400_state == kBCS_Chase || x188_behaviour == kBCB_FreezeLookPosition) {
      springMag = x41c_ballCameraChaseSpring.ApplyDistanceSpring(0.f, dampDeltaMag, dt);
    }
  }

  CVector3f finalPos(x294_dampedPos.GetX() + springMag * posDelta.GetX(),
                     x294_dampedPos.GetY() + springMag * posDelta.GetY(),
                     x294_dampedPos.GetZ() + springMag * posDelta.GetZ());
  if (player->GetMorphBall()->GetSpiderBallState() != CMorphBall::kSBS_Active &&
      !x18e_24_noElevationVelClamp && player->GetVelocityWR().GetZ() > 8.f) {
    CVector3f delta(finalPos.GetX() - oldPos.GetX(), finalPos.GetY() - oldPos.GetY(),
                    finalPos.GetZ() - oldPos.GetZ());
    delta.SetZ(CMath::Clamp(-0.1f * dt, delta.GetZ(), 0.1f * dt));
    finalPos = oldPos + delta;
  }

  if (interpolateElevation && x400_state != kBCS_ToBall) {
    CVector3f tmpPos = finalPos;
    finalPos = InterpolateCameraElevation(tmpPos, dt);
  }
  if (x18d_29_noElevationInterp) {
    finalPos.SetZ(elevation + ballPos.GetZ());
  }

  if (oldBallToCamFlat.Magnitude() < 2.f) {
    if (finalPos.GetZ() < 2.f + ballPos.GetZ()) {
      finalPos.SetZ(2.f + ballPos.GetZ());
    }
    x214_ballCameraSpring.Reset();
  }

  finalPos = ClampElevationToWater(finalPos, mgr);
  if (oldBallToCamFlat.Magnitude() < 2.f && x3dc_tooCloseActorId != kInvalidUniqueId &&
      x3e0_tooCloseActorDist < 5.f) {
    door = TCastToConstPtr< CScriptDoor >(mgr.GetObjectById(x3dc_tooCloseActorId));
    if (door != nullptr && !door->IsOpen()) {
      finalPos =
          CVector3f(GetTranslation().GetX(), GetTranslation().GetY(), GetTranslation().GetZ());
    }
  }

  const float backupZ = finalPos.GetZ();
  finalPos = MoveCollisionActor(finalPos, dt, mgr);
  if (x18c_31_clearLOS && x478_shortMoveCount > 0) {
    finalPos.SetZ(backupZ);
    finalPos = MoveCollisionActor(finalPos, dt, mgr);
  }

  CVector3f lookDir(x1d8_lookPos.GetX() - finalPos.GetX(), x1d8_lookPos.GetY() - finalPos.GetY(),
                    x1d8_lookPos.GetZ() - finalPos.GetZ());
  if (x18d_26_lookAtBall) {
    lookDir = CVector3f(ballPos.GetX() - finalPos.GetX(), ballPos.GetY() - finalPos.GetY(),
                        ballPos.GetZ() - finalPos.GetZ());
  }
  if (lookDir.CanBeNormalized()) {
    lookDir.Normalize();
    UpdateTransform(lookDir, finalPos, dt, mgr);
  }

  if (x470_clampVelTimer > 0.f) {
    x470_clampVelTimer -= dt;
  }

  nearList.clear();
}

void CBallCamera::UpdateUsingTransitions(float dt, CStateManager& mgr) {
  if (x400_state == kBCS_FromBall) {
    UpdateTransitionFromBallCamera(mgr);
    return;
  }

  x18d_26_lookAtBall = false;
  const CPlayer* player = mgr.GetPlayer();
  CVector3f ballPos = player->GetBallPosition();
  CVector3f eyePos = player->GetEyePosition();
  ballPos.SetZ(ballPos.GetZ() + x1b4_lookAtOffset.GetZ());

  float lookDirX = GetTransform().Get01();
  float lookDirY = GetTransform().Get11();
  float lookDirZ = GetTransform().Get21();
  CTransform4f oldXf(GetTransform());

  switch (x400_state) {
  case kBCS_ToBall: {
    float distance = x194_targetMinDistance;
    float elevation = x1a0_elevation;
    ConstrainElevationAndDistance(elevation, distance, dt, mgr);
    distance = x194_targetMinDistance;

    bool nearDoor = false;
    if (CheckDoorProximity(GetTranslation(), mgr) || x478_shortMoveCount > 2) {
      nearDoor = true;
    }

    CVector3f toDesired =
        FindDesiredPosition(distance, elevation, player->GetMovementDirection(), mgr, nearDoor) -
        eyePos;

    float morphFactor = player->GetMorphBallTransitionFactor();

    CVector3f finalPos = eyePos + toDesired * morphFactor;

    if (CPhysicsActor* act = TCastToPtr< CPhysicsActor >(mgr.ObjectById(x46c_collisionActorId))) {
      act->SetTranslation(GetTranslation());
      finalPos = ClampElevationToWater(finalPos, mgr);
      finalPos = MoveCollisionActor(finalPos, dt, mgr);

      CVector3f camToLookDir = x1d8_lookPos - finalPos;
      if (camToLookDir.CanBeNormalized()) {
        camToLookDir.Normalize();
        float devDot = lookDirX * camToLookDir.GetX() + lookDirY * camToLookDir.GetY() +
                       lookDirZ * camToLookDir.GetZ();
        devDot = CMath::Limit(devDot, 1.f);
        float absDevDot = CMath::AbsF(devDot);

        float halfMorphFactor = player->GetMorphBallTransitionFactor() * 0.5f;
        halfMorphFactor = CMath::Limit(halfMorphFactor, 1.f);

        float devAngle = acosf(absDevDot) * halfMorphFactor;
        if (absDevDot < 1.f) {
          CVector3f oldForward = oldXf.GetForward();
          CUnitVector3f camToLookUnit(camToLookDir);
          CUnitVector3f oldForwardUnit(oldForward);
          CRelAngle relAngle(devAngle);
          CQuaternion quat = CQuaternion::LookAt(oldForwardUnit, camToLookUnit, relAngle);
          CQuaternion quatCopy(quat);
          CTransform4f quatXf = quatCopy.BuildTransform4f();
          SetTransform(quatXf * oldXf.GetRotation());
        } else {
          SetTransform(CTransform4f::LookAt(CVector3f::Zero(), camToLookDir));
        }
      }
    }
    SetTransform(ValidateCameraTransform(GetTransform(), oldXf));
    SetTranslation(finalPos);
    TeleportCamera(finalPos, mgr);
    break;
  }
  case kBCS_FromBall: {
    float morphFactor = player->GetMorphBallTransitionFactor();
    if (fabsf(morphFactor - 1.f) < 0.00001f) {
      SetTransform(player->GetTransform());
      SetTranslation(player->GetEyePosition());
      return;
    }

    float morphT = player->GetMorphBallTransitionFactor() / 0.9f;
    morphT = CMath::Limit(morphT, 1.f);

    CVector3f finalPos = GetTranslation();
    CVector3f eyeToCam = GetTranslation() - eyePos;
    eyeToCam.SetZ(0.f);
    if (eyeToCam.CanBeNormalized()) {
      float distance = eyeToCam.Magnitude();
      float maxDist = (1.f - player->GetMorphBallTransitionFactor()) * x190_curMinDistance;
      if (distance > maxDist) {
        distance = maxDist;
      }

      CVector3f playerToCamDir = GetTranslation() - player->GetTranslation();
      float yawSpeed = M_PIF;
      playerToCamDir.SetZ(0.f);
      CVector3f moveDir = player->GetMovementDirection();
      if (playerToCamDir.CanBeNormalized()) {
        playerToCamDir.Normalize();
      } else {
        playerToCamDir = -moveDir;
      }
      if (moveDir.CanBeNormalized()) {
        moveDir.Normalize();
        float devDot = CVector3f::Dot(playerToCamDir, -moveDir);
        devDot = CMath::Limit(devDot, 1.f);
        yawSpeed = fabsf(acosf(devDot)) * morphT / dt;
      }

      CVector3f useLookDir = ConstrainYawAngle(*player, yawSpeed, 0.174533f, dt, mgr);
      useLookDir.SetZ(0.f);
      useLookDir.Normalize();

      CVector3f camPos(useLookDir.GetX() * distance + eyePos.GetX(),
                       useLookDir.GetY() * distance + eyePos.GetY(),
                       (GetTranslation().GetZ() - eyePos.GetZ()) * morphT + eyePos.GetZ());
      finalPos = ClampElevationToWater(camPos, mgr);
      finalPos = MoveCollisionActor(finalPos, dt, mgr);

      CVector3f finalToBall(ballPos.GetX() - finalPos.GetX(), ballPos.GetY() - finalPos.GetY(),
                            0.f);
      CVector3f lookPos(ballPos.GetX(), ballPos.GetY(),
                        morphT * (eyePos.GetZ() - ballPos.GetZ()) + ballPos.GetZ());
      if (finalToBall.CanBeNormalized()) {
        SetTransform(CTransform4f::LookAt(finalPos, lookPos));
      } else {
        SetTransform(mgr.GetCameraManager()->GetFirstPersonCamera()->GetTransform());
      }
    } else {
      SetTransform(mgr.GetCameraManager()->GetFirstPersonCamera()->GetTransform());
    }
    SetTranslation(finalPos);
    break;
  }
  default:
    break;
  }

  mgr.CameraManager()->FirstPersonCamera()->Reset(GetTransform(), mgr);
}

void CBallCamera::UpdateUsingSpindleCameras(float dt, CStateManager& mgr) {
  if (const CScriptSpindleCamera* cam = TCastToConstPtr< CScriptSpindleCamera >(
          mgr.ObjectById(mgr.GetCameraManager()->GetSpindleCameraId()))) {
    TeleportCamera(cam->GetTransform(), mgr);
    x18d_26_lookAtBall = true;
  }
}

void CBallCamera::UpdateUsingPathCameras(float dt, CStateManager& mgr) {
  if (const CPathCamera* cam = TCastToConstPtr< CPathCamera >(
          mgr.ObjectById(mgr.GetCameraManager()->GetPathCameraId()))) {
    TeleportCamera(cam->GetTransform(), mgr);
    x18d_26_lookAtBall = true;
  }
}

CVector3f CBallCamera::TweenVelocity(const CVector3f& curVel, const CVector3f& newVel, float rate,
                                     float dt) {
  float t;
  float x;
  float y;
  float z;
  const float curX = curVel.GetX();
  const float curY = curVel.GetY();
  const float curZ = curVel.GetZ();
  CVector3f velDelta = newVel - curVel;
  if (velDelta.CanBeNormalized()) {
    t = CMath::Limit(velDelta.Magnitude() / (rate * dt), 1.f);

    CVector3f deltaNorm = velDelta.AsNormalized();
    x = rate * deltaNorm.GetX();
    y = rate * deltaNorm.GetY();
    z = rate * deltaNorm.GetZ();
    x *= dt;
    y *= dt;
    z *= dt;
    x *= t;
    y *= t;
    z *= t;
    x += curX;
    y += curY;
    z += curZ;
  } else {
    x = newVel.GetX();
    y = newVel.GetY();
    z = newVel.GetZ();
  }

  return CVector3f(x, y, z);
}

CVector3f CBallCamera::ComputeVelocity(const CVector3f& curVel, const CVector3f& posDelta) const {
  CVector3f ret = posDelta;
  float mag = ret.Magnitude();
  if (x470_clampVelTimer > 0.f && ret.CanBeNormalized() && !x18d_28_obtuseDirection) {
    mag = CMath::Limit(mag, x474_clampVelRange);
    ret = ret.AsNormalized() * mag;
  }
  return ret;
}

void CBallCamera::UpdateAnglePerSecond(float dt) {
  float delta = x1a8_targetAnglePerSecond - x1a4_curAnglePerSecond;
  if (fabsf(delta) >= 0.0017453292f) {
    float angle = CMath::Limit(delta / M_PIF, 1.f);
    x1a4_curAnglePerSecond = angle * (10.471975f * dt) + x1a4_curAnglePerSecond;
  } else {
    x1a4_curAnglePerSecond = x1a8_targetAnglePerSecond;
  }
}

CVector3f CBallCamera::ClampElevationToWater(const CVector3f& pos, CStateManager& mgr) const {
  const CScriptWater* water =
      TCastToConstPtr< CScriptWater >(mgr.GetObjectById(mgr.GetPlayer()->InFluidId()));
  CVector3f ret(pos);
  if (water) {
    const float waterZ = water->GetTriggerBoundsWR().GetMaxPoint().GetZ();
    float posZ = pos.GetZ();
    float deltaZ = posZ - waterZ;
    if (posZ >= waterZ) {
      if (deltaZ <= 0.25f) {
        ret.SetZ(0.25f + waterZ);
      }
    } else if (posZ < waterZ) {
      if (deltaZ >= -0.12f) {
        ret.SetZ(waterZ - 0.12f);
      }
    }
  }
  return ret;
}

CVector3f CBallCamera::MoveCollisionActor(const CVector3f& pos, float dt, CStateManager& mgr) {
  CBallCamera* self = this;
  const CVector3f& usePos = pos;
  if (CPhysicsActor* act = TCastToPtr< CPhysicsActor >(mgr.ObjectById(x46c_collisionActorId))) {
    CVector3f posDelta = usePos - act->GetTranslation();
    if (!posDelta.CanBeNormalized() || posDelta.Magnitude() < 0.01f) {
      act->Stop();
      return act->GetTranslation();
    }

    const CVector3f oldVel = CVector3f(act->GetVelocityWR());
    const CVector3f oldTranslation = CVector3f(act->GetTranslation());
    CVector3f newVel = ComputeVelocity(CVector3f(oldVel), posDelta / dt);
    act->SetVelocityWR(newVel);
    act->SetMovable(true);
    act->AddMaterial(kMT_Solid, mgr);
    CGameCollision::Move(mgr, *act, dt, nullptr);

    CVector3f postDelta = act->GetTranslation() - usePos;
    if (postDelta.CanBeNormalized() && postDelta.Magnitude() > 0.1f) {
      act->SetTranslation(oldTranslation);
      CVector3f tweenVel = TweenVelocity(oldVel, newVel, 50.f, dt);
      act->SetVelocityWR(tweenVel);
      CGameCollision::Move(mgr, *act, dt, nullptr);
      postDelta = act->GetTranslation() - usePos;
      if (postDelta.Magnitude() > 0.1f) {
        self->x478_shortMoveCount += 1;
      } else {
        self->x478_shortMoveCount = 0;
      }
    } else {
      act->Stop();
      self->x478_shortMoveCount = 0;
    }

    act->SetMovable(false);
    act->RemoveMaterial(kMT_Solid, mgr);
    return act->GetTranslation();
  }

  return usePos;
}

CVector3f CBallCamera::GetFixedLookTarget(const CVector3f& hintToLookDir,
                                          CStateManager& mgr) const {
  const CScriptCameraHint* hint = mgr.GetCameraManager()->GetCameraHint(mgr);
  if (hint == nullptr) {
    return hintToLookDir;
  }

  CVector3f hintDir = hint->GetTransform().GetColumn(kDY);
  CVector3f hintDirFlat(hintDir);
  hintDirFlat.SetZ(0.f);
  if (hintDir.CanBeNormalized() && hintDirFlat.CanBeNormalized()) {
    hintDir.Normalize();
    hintDirFlat.Normalize();
  } else {
    hintDir = CVector3f(0.f, 1.f, 0.f);
    hintDirFlat = CVector3f(0.f, 1.f, 0.f);
  }

  CVector3f hintToLookDirFlat(hintToLookDir);
  hintToLookDirFlat.SetZ(0.f);
  if (hintToLookDir.CanBeNormalized() && hintToLookDirFlat.CanBeNormalized()) {
    hintToLookDirFlat.Normalize();
  } else {
    hintToLookDirFlat = hintDirFlat;
  }

  float attitude;
  attitude = acosf(CMath::Limit(CVector3f::Dot(hintToLookDir, hintToLookDirFlat), 1.f));
  if (x18c_29_clampAttitude) {
    float refAttitude = acosf(CMath::Limit(CVector3f::Dot(hintDir, hintDirFlat), 1.f));
    float delta = CMath::Limit(attitude - refAttitude, x1ac_attitudeRange);
    attitude = refAttitude + delta;
  }

  if (hintToLookDir.GetZ() >= 0.f) {
    attitude = -attitude;
  }

  float azimuth;
  azimuth = acosf(CMath::Limit(CVector3f::Dot(hintToLookDirFlat, hintDirFlat), 1.f));
  if (x18c_30_clampAzimuth) {
    azimuth = CMath::Limit(azimuth, x1b0_azimuthRange);
  }

  if (hintToLookDirFlat.GetX() * hintDirFlat.GetY() -
          hintDirFlat.GetX() * hintToLookDirFlat.GetY() >=
      0.f) {
    azimuth = -azimuth;
  }

  CQuaternion azimuthQuat = CQuaternion::ZRotation(CRelAngle(azimuth));
  CVector3f azimuthLookDirFlat = azimuthQuat.Transform(hintDirFlat);
  CUnitVector3f attitudeAxis(azimuthLookDirFlat.GetY(), -azimuthLookDirFlat.GetX(), 0.f);
  attitudeAxis.Normalize();
  CQuaternion attitudeQuat = CQuaternion::AxisAngle(attitudeAxis, CRelAngle(-attitude));
  CVector3f ret = CVector3f(attitudeQuat.Transform(azimuthLookDirFlat));
  return ret;
}

void CBallCamera::UpdateUsingFixedCameras(float dt, CStateManager& mgr) {
  if (const CScriptCameraHint* hint = mgr.GetCameraManager()->GetCameraHint(mgr)) {
    switch (x188_behaviour) {
    case kBCB_HintFixedPosition: {
      CVector3f hintPos = hint->GetTranslation();
      CVector3f hintToLookPos = x1d8_lookPos - hintPos;
      if (hintToLookPos.CanBeNormalized()) {
        CVector3f lookDir = GetFixedLookTarget(hintToLookPos.AsNormalized(), mgr);
        hintToLookPos = lookDir;
        if ((hint->GetOverrideFlags() & 0x40) != 0) {
          x18d_26_lookAtBall = true;
        }
        UpdateTransform(hintToLookPos, hintPos, dt, mgr);
      }
      break;
    }
    case kBCB_HintFixedTransform:
      const_cast< CTransform4f& >(GetTransform()) = hint->GetTransform();
      SetTransformDirty(true);
      SetTransformDirtySpare(true);
      SetPreRenderHasMoved(true);
      break;
    default:
      break;
    }
    TeleportCamera(GetTranslation(), mgr);
  }
}

void CBallCamera::UpdateLookAtPosition(float dt, CStateManager& mgr) {
  CPlayer* player =
      TCastToPtr< CPlayer >(const_cast< CEntity* >(mgr.GetObjectById(xe8_watchedObject)));
  if (player == nullptr) {
    return;
  }

  CVector3f ballPos = player->GetBallPosition();
  if (player->IsMorphBallTransitioning()) {
    x1d8_lookPos = ballPos;
    x1d8_lookPos.SetZ(x1d8_lookPos.GetZ() + x1b4_lookAtOffset.GetZ());
    x1c0_lookPosAhead = x1d8_lookPos;
    x1cc_fixedLookPos = x1d8_lookPos;
    return;
  }

  CVector3f moveDir = player->GetMovementDirection();
  moveDir.Normalize();

  CVector3f lookAtOffset(x308_speedFactor * x1b4_lookAtOffset.GetX(),
                         x308_speedFactor * x1b4_lookAtOffset.GetY(), x1b4_lookAtOffset.GetZ());
  if (x18c_25_chaseAllowed &&
      (x400_state == kBCS_Chase || x188_behaviour == kBCB_FreezeLookPosition)) {
    lookAtOffset =
        CVector3f(x308_speedFactor * x410_chaseLookAtOffset.GetX(),
                  x308_speedFactor * x410_chaseLookAtOffset.GetY(), x410_chaseLookAtOffset.GetZ());
  }

  if (mgr.GetCameraManager()->IsInterpolationCameraActive()) {
    lookAtOffset = CVector3f(0.f, 0.f, x1b4_lookAtOffset.GetZ());
  }

  CTransform4f moveXf(player->CreateTransformFromMovementDirection());
  CTransform4f moveRot = moveXf.GetRotation();
  if (x2fc_ballDeltaFlat.CanBeNormalized()) {
    lookAtOffset = moveRot * lookAtOffset;
  }

  float lookAheadX = ballPos.GetX() + lookAtOffset.GetX();
  float lookAheadY = ballPos.GetY() + lookAtOffset.GetY();
  float lookAheadZ = ballPos.GetZ() + lookAtOffset.GetZ();
  float prevLookX = x1d8_lookPos.GetX();
  float prevLookY = x1d8_lookPos.GetY();
  float prevLookZ = x1d8_lookPos.GetZ();

  CVector3f lookDelta(prevLookX - lookAheadX, prevLookY - lookAheadY, prevLookZ - lookAheadZ);
  x1c0_lookPosAhead = CVector3f(lookAheadX, lookAheadY, lookAheadZ);
  x1cc_fixedLookPos = CVector3f(ballPos.GetX(), ballPos.GetY(), lookAheadZ);

  float lookDeltaMag = lookDelta.Magnitude();
  if (lookDelta.CanBeNormalized()) {
    lookDelta.Normalize();
  }

  float speedingTime = x30c_speedingTime / 3.f;
  float zero = 0.f;
  float one = 1.f;
  float springDist = x23c_ballCameraLookAtSpring.ApplyDistanceSpringNoMax(
      0.f, lookDeltaMag, dt * (0.75f * *CMath::Clamp(&zero, &speedingTime, &one) + 1.f));
  if (springDist > 0.001f) {
    lookAheadX += springDist * lookDelta.GetX();
    lookAheadY += springDist * lookDelta.GetY();
    lookAheadZ += springDist * lookDelta.GetZ();
  }

  lookDelta = CVector3f(lookAheadX - prevLookX, lookAheadY - prevLookY, lookAheadZ - prevLookZ);
  if (x18d_26_lookAtBall) {
    x1d8_lookPos = ballPos;
    x1d8_lookPos.SetZ(x1d8_lookPos.GetZ() + x1b4_lookAtOffset.GetZ());
  } else {
    x1d8_lookPos = CVector3f(lookAheadX, lookAheadY, lookAheadZ);
  }

  if (x188_behaviour == kBCB_HintFixedTransform) {
    x1d8_lookPos = x1cc_fixedLookPos;
    x1c0_lookPosAhead = x1cc_fixedLookPos;
  } else if (x188_behaviour >= kBCB_HintFixedTransform) {
    if (x188_behaviour == kBCB_SpindleCamera) {
      x1d8_lookPos = x1cc_fixedLookPos;
      x1c0_lookPosAhead = x1cc_fixedLookPos;
    } else if (mgr.GetCameraManager()->IsInterpolationCameraActive()) {
      x1d8_lookPos = x1c0_lookPosAhead;
      x1cc_fixedLookPos = x1c0_lookPosAhead;
    }
  } else if (x188_behaviour >= kBCB_HintFixedPosition) {
    x1d8_lookPos = x1cc_fixedLookPos;
    x1c0_lookPosAhead = x1d8_lookPos;
  } else if (mgr.GetCameraManager()->IsInterpolationCameraActive()) {
    x1d8_lookPos = x1c0_lookPosAhead;
    x1cc_fixedLookPos = x1c0_lookPosAhead;
  }
  if (x18d_30_directElevation) {
    x1d8_lookPos.SetZ(ballPos.GetZ() + x1b4_lookAtOffset.GetZ());
    x1c0_lookPosAhead.SetZ(x1d8_lookPos.GetZ());
    x1cc_fixedLookPos.SetZ(x1d8_lookPos.GetZ());
  }

  if (x18d_31_overrideLookDir && mgr.GetCameraManager()->GetCameraHint(mgr) != nullptr) {
    const CScriptCameraHint* hint = mgr.GetCameraManager()->GetCameraHint(mgr);
    x1d8_lookPos = GetTranslation() + 0.2f * hint->GetTransform().GetColumn(kDY);
    x1c0_lookPosAhead = x1d8_lookPos;
    x1cc_fixedLookPos = x1d8_lookPos;
  }
}

void CBallCamera::ActivateFailSafe(float dt, CStateManager& mgr) {
  float distance = x190_curMinDistance;
  float elevation = x1a0_elevation;
  ConstrainElevationAndDistance(elevation, distance, dt, mgr);

  CVector3f desiredPos =
      FindDesiredPosition(distance, elevation, mgr.GetPlayer()->GetMovementDirection(), mgr, true);
  SetTranslation(desiredPos);
  TeleportLookAtStuff(mgr);

  CTransform4f camXf = CTransform4f::LookAt(desiredPos, x1d8_lookPos, CVector3f::Up());
  TeleportCamera(camXf, mgr);
  mgr.CameraManager()->SetPlayerCamera(mgr, GetUniqueId());

  x3e4_pendingFailsafe = false;
  x34c_obscuredTime = 0.f;
}

void CBallCamera::CheckFailSafe(float dt, CStateManager& mgr) {
  CVector3f ballPos = mgr.Player()->GetBallPosition();
  x18d_24_prevClearLOS = x18c_31_clearLOS;

  CVector3f camToBall = ballPos - GetTranslation();
  float camToBallMag = camToBall.Magnitude();
  camToBall.Normalize();

  TEntityList nearList;
  mgr.BuildNearList(nearList, GetTranslation(), camToBall, camToBallMag, kLineOfSightFilter,
                    nullptr);

  CRayCastResult result =
      mgr.RayWorldIntersection(x368_obscuringObjectId, GetTranslation(), camToBall, camToBallMag,
                               kLineOfSightFilter, nearList);
  if (result.IsValid()) {
    x350_obscuringMaterial = result.GetMaterial();
    CVector3f ballPosCopy(ballPos);
    CVector3f playerPos = mgr.Player()->GetTranslation();
    if (!mgr.RayCollideWorld(GetTranslation(), ballPosCopy, nearList, kLineOfSightFilter,
                             mgr.Player()) &&
        !mgr.RayCollideWorld(GetTranslation(), playerPos, nearList, kLineOfSightFilter,
                             mgr.Player())) {
      x18c_31_clearLOS = false;
      if (x18d_24_prevClearLOS) {
        x35c_splineIntermediatePos = ballPos;
        if (ShouldResetSpline(mgr) && !x18e_25_noSpline &&
            x350_obscuringMaterial.HasMaterial(kMT_Floor) &&
            mgr.RayCollideWorld(ballPos, ballPos + CVector3f(0.f, 0.f, -2.5f), nearList,
                                kLineOfSightFilter, nullptr)) {
          ResetSpline(mgr);
        }
      }
    }
  } else {
    x18c_31_clearLOS = true;
    x350_obscuringMaterial = CMaterialList(kMT_NoStepLogic);
  }

  if (!x18c_31_clearLOS) {
    x34c_obscuredTime += dt;
    if (ShouldResetSpline(mgr) && !x18e_25_noSpline &&
        x350_obscuringMaterial.HasMaterial(kMT_Pillar)) {
      BuildSpline(mgr);
    }
  } else {
    x34c_obscuredTime = 0.f;
  }

  x358_unobscureMag = CMath::Clamp(0.f, x34c_obscuredTime * 0.5f, 1.f);
  if (x18c_27_obscureAvoidance &&
      (x34c_obscuredTime > 2.f ||
       (x3dc_tooCloseActorId != kInvalidUniqueId && x34c_obscuredTime > 1.f)) &&
      !x18c_31_clearLOS && x36c_splineState == kBSS_Invalid) {
    x3e4_pendingFailsafe = true;
  } else {
    x3e4_pendingFailsafe = false;
  }

  bool doFailSafe = x3e4_pendingFailsafe;
  CVector3f ballDelta = GetTranslation() - ballPos;
  if (ballDelta.Magnitude() < 0.3f + gpTweakPlayer->GetPlayerBallHalfExtent()) {
    doFailSafe = true;
  }

  if (x18e_27_nearbyDoorClosed) {
    x18e_27_nearbyDoorClosed = false;
    if (result.IsValid()) {
      doFailSafe = true;
    }
  }

  if (x18e_28_nearbyDoorClosing) {
    x18e_28_nearbyDoorClosing = false;
    if (CheckDoorProximity(GetTranslation(), mgr)) {
      doFailSafe = true;
    }
  }

  if (doFailSafe) {
    ActivateFailSafe(dt, mgr);
  }
}

bool CBallCamera::CheckDoorProximity(const CVector3f& vec, const CStateManager& mgr) {
  TUniqueId dockId;
  TUniqueId useDockId;
  TUniqueId doorId = mgr.GetCameraManager()->GetBallCamera()->x3dc_tooCloseActorId;
  TUniqueId useDoorId = doorId;
  const CScriptDoor* door = TCastToConstPtr< CScriptDoor >(mgr.GetObjectById(useDoorId));
  if (door == nullptr || door->IsOpen()) {
    return false;
  }

  rstl::optional_object< CAABox > touchBounds = door->GetTouchBounds();
  const float boxRange = 0.3f;
  CVector3f mins(vec.GetX() - boxRange, vec.GetY() - boxRange, vec.GetZ() - boxRange);
  CVector3f maxs(vec.GetX() + boxRange, vec.GetY() + boxRange, vec.GetZ() + boxRange);
  CAABox testAABB(mins, maxs);
  if (!touchBounds || !touchBounds->DoBoundsOverlap(testAABB)) {
    return false;
  }

  dockId = door->GetConnectedDockID();
  useDockId = dockId;
  const CScriptDock* dock = TCastToConstPtr< CScriptDock >(mgr.GetObjectById(useDockId));
  if (dock == nullptr) {
    return false;
  }

  if (fabsf(dock->GetPlane(mgr).GetHeight(vec)) < 1.15f) {
    return true;
  }

  return false;
}

void CBallCamera::DoorClosing(TUniqueId uid) {
  if (uid == x3dc_tooCloseActorId) {
    x18e_28_nearbyDoorClosing = true;
  }
}

void CBallCamera::DoorClosed(TUniqueId uid) {
  if (uid == x3dc_tooCloseActorId) {
    x18e_27_nearbyDoorClosed = true;
  }
}

void CBallCamera::Think(float dt, CStateManager& mgr) {
  const TAreaId areaId = mgr.GetNextAreaId();
  mgr.SetActorAreaId(*this, areaId);
  UpdatePlayerMovement(dt, mgr);

  CCollisionActor* colAct = TCastToPtr< CCollisionActor >(mgr.ObjectById(x46c_collisionActorId));
  if (colAct != nullptr) {
    mgr.SetActorAreaId(*colAct, areaId);
  }

  const int camState = mgr.GetPlayer()->GetCameraState();
  if (camState != CPlayer::kCS_Ball && camState != CPlayer::kCS_Transitioning &&
      camState != CPlayer::kCS_Two && !x18d_27_forceProcessing) {
    if (colAct == nullptr) {
      return;
    }
    colAct->SetActive(false);
    return;
  }

  if (colAct != nullptr) {
    colAct->SetActive(true);
  }

  CTransform4f oldXf(GetTransform());
  if (mgr.GetPlayer()->GetBombJumpCounter() != 1) {
    UpdateLookAtPosition(dt, mgr);
  }
  CheckFailSafe(dt, mgr);
  UpdateObjectTooCloseId(mgr);
  UpdateAnglePerSecond(dt);

  switch (x400_state) {
  case kBCS_One:
    break;
  case kBCS_Default:
  case kBCS_Chase:
  case kBCS_Boost:
    switch (x188_behaviour) {
    case kBCB_PathCamera:
      UpdateUsingPathCameras(dt, mgr);
      break;
    case kBCB_HintFixedPosition:
    case kBCB_HintFixedTransform:
      UpdateUsingFixedCameras(dt, mgr);
      break;
    case kBCB_Default:
    case kBCB_FreezeLookPosition:
    case kBCB_HintBallToCam:
    case kBCB_PathCameraDesiredPos:
      if (x36c_splineState != kBSS_Invalid) {
        UpdateUsingFreeLook(dt, mgr);
      } else {
        UpdateUsingColliders(dt, mgr);
      }
      break;
    case kBCB_SpindleCamera:
      UpdateUsingSpindleCameras(dt, mgr);
      break;
    case kBCB_HintInitializePosition:
    default:
      break;
    }
    break;
  case kBCS_ToBall:
  case kBCS_FromBall:
    UpdateUsingTransitions(dt, mgr);
    break;
  default:
    break;
  }

  CTransform4f copyXf(UpdateCameraPositions(dt, oldXf, GetTransform()));
  copyXf = ValidateCameraTransform(copyXf, oldXf);
  SetTransform(copyXf);
}

void CBallCamera::SetState(EBallCameraState state, CStateManager& mgr) {
  switch (state) {
  case kBCS_ToBall: {
    CTransform4f xf = mgr.CameraManager()->GetFirstPersonCamera()->GetTransform();
    SetTransform(xf);
    TeleportCamera(xf.GetTranslation(), mgr);
    InterpolateFOV(mgr.CameraManager()->GetFirstPersonCamera()->GetFov(),
                   CCameraManager::GetDefaultThirdPersonVerticalFOV(), 1.f, 0.f);
    x36c_splineState = kBSS_Invalid;
  }
  case kBCS_Default:
  case kBCS_Chase:
  case kBCS_Boost:
    mgr.SetGameState(CStateManager::kGS_Running);
    break;
  case kBCS_FromBall:
    mgr.CameraManager()->SetPlayerCamera(mgr, GetUniqueId());
    mgr.SetGameState(CStateManager::kGS_Running);
    InterpolateFOV(GetFov(), CCameraManager::GetDefaultFirstPersonVerticalFOV(), 1.f, 0.f);
    x36c_splineState = kBSS_Invalid;
    break;
  default:
    break;
  }

  x400_state = state;
}

void CBallCamera::ProcessInput(const CFinalInput& input, CStateManager& mgr) {
  if (input.ControllerNumber() == 0) {
    TUniqueId uid = xe8_watchedObject;
    CPlayer* pl = TCastToPtr< CPlayer >(const_cast< CEntity* >(mgr.GetObjectById(uid)));
    if (pl != nullptr && pl->GetMorphballTransitionState() == CPlayer::kMS_Morphed) {
      int state = x400_state;
      switch (state) {
      case kBCS_Chase:
        if (!ControlMapper::GetDigitalInput(ControlMapper::kC_ChaseCamera, input) ||
            pl->IsInFreeLook()) {
          SetState(kBCS_Default, mgr);
        }
        break;
      case kBCS_Boost:
        if (!pl->GetMorphBall()->IsBoosting()) {
          SetState(kBCS_Default, mgr);
        }
        break;
      case kBCS_Default:
        if (x18c_25_chaseAllowed) {
          bool pressed = ControlMapper::GetPressInput(ControlMapper::kC_ChaseCamera, input);
          if (pressed) {
            SetState(kBCS_Chase, mgr);
          }
        }
        break;
      case kBCS_ToBall:
      case kBCS_FromBall:
      default:
        break;
      }

      if (x18c_26_boostAllowed && x400_state != kBCS_Boost &&
          (pl->GetMorphBall()->IsBoosting() || pl->GetMorphBall()->GetBoostChargeTimer() > 0.f)) {
        SetState(kBCS_Boost, mgr);
      }
    }
  }
}

void CBallCamera::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) {
  CGameCamera::AcceptScriptMsg(msg, uid, mgr);

  switch (msg) {
  case kSM_Registered: {
    TUniqueId newId = mgr.AllocateUniqueId();
    x46c_collisionActorId = newId;
    CCollisionActor* colAct = rs_new CCollisionActor(x46c_collisionActorId, GetAreaId(),
                                                     kInvalidUniqueId, true, 0.3f, 1.f);
    if (colAct != nullptr) {
      CMaterialList include(kMT_Solid);
      CMaterialList exclude(kMT_Player, kMT_CameraPassthrough);
      CMaterialFilter filter = CMaterialFilter::MakeIncludeExclude(include, exclude);
      colAct->SetMaterialFilter(filter);
      colAct->MaterialList() = CMaterialList(kMT_ProjectilePassthrough, kMT_ScanPassthrough,
                                             kMT_SeeThrough, kMT_CameraPassthrough);
      colAct->SetTranslation(GetTranslation());
      mgr.AddObject(colAct);
      colAct->SetMovable(false);
      colAct->SetLastNonCollidingState(CMotionState(
          GetTranslation(), CNUQuaternion::BuildFromAxisAngle(CVector3f::Forward(), 0.f),
          CVector3f::Zero(), CAxisAngle::Identity()));
    }

    CMaterialList include;
    CMaterialList exclude(kMT_Solid, kMT_ProjectilePassthrough, kMT_Player, kMT_Character,
                          kMT_CameraPassthrough);
    CMaterialFilter selfFilter = CMaterialFilter::MakeIncludeExclude(include, exclude);
    SetMaterialFilter(selfFilter);
    RemoveMaterial(kMT_Solid, mgr);
    break;
  }
  case kSM_Deleted:
    mgr.DeleteObjectRequest(x46c_collisionActorId);
    x46c_collisionActorId = kInvalidUniqueId;
    break;
  default:
    break;
  }
}

void CBallCamera::Accept(IVisitor& visitor) { visitor.Visit(*this); }

void CBallCamera::OverrideCameraInfo(CStateManager& mgr) {
  const CScriptCameraHint* hint = mgr.CameraManager()->GetCameraHint(mgr);
  if (hint == nullptr) {
    return;
  }

  ResetToTweaks(mgr);
  x188_behaviour = hint->GetBehaviourType();

  if ((hint->GetOverrideFlags() & 0x2) == 0) {
    x18c_25_chaseAllowed = false;
  } else {
    x18c_25_chaseAllowed = true;
  }
  if ((hint->GetOverrideFlags() & 0x4) == 0) {
    x18c_26_boostAllowed = false;
  } else {
    x18c_26_boostAllowed = true;
  }
  if ((hint->GetOverrideFlags() & 0x8) == 0) {
    x18c_27_obscureAvoidance = false;
  } else {
    x18c_27_obscureAvoidance = true;
  }
  if ((hint->GetOverrideFlags() & 0x10) == 0) {
    x18c_28_volumeCollider = false;
  } else {
    x18c_28_volumeCollider = true;
  }

  if ((hint->GetOverrideFlags() & 0x40) != 0) {
    x18d_26_lookAtBall = true;
  }
  if ((hint->GetOverrideFlags() & 0x4000) == 0) {
    x18d_29_noElevationInterp = false;
  } else {
    x18d_29_noElevationInterp = true;
  }
  if ((hint->GetOverrideFlags() & 0x8000) == 0) {
    x18d_30_directElevation = false;
  } else {
    x18d_30_directElevation = true;
  }
  if ((hint->GetOverrideFlags() & 0x10000) == 0) {
    x18d_31_overrideLookDir = false;
  } else {
    x18d_31_overrideLookDir = true;
  }
  if ((hint->GetOverrideFlags() & 0x20000) == 0) {
    x18e_24_noElevationVelClamp = false;
  } else {
    x18e_24_noElevationVelClamp = true;
  }
  if ((hint->GetOverrideFlags() & 0x80000) == 0) {
    x18e_25_noSpline = false;
  } else {
    x18e_25_noSpline = true;
  }
  if ((hint->GetOverrideFlags() & 0x80000) == 0) {
    x18e_26_ = false;
  } else {
    x18e_26_ = true;
  }

  if ((hint->GetOverrideFlags() & 0x400000) != 0) {
    x194_targetMinDistance = hint->GetInfo().GetMinDist();
  }
  if ((hint->GetOverrideFlags() & 0x800000) != 0) {
    x198_maxDistance = hint->GetInfo().GetMaxDist();
  }
  if ((hint->GetOverrideFlags() & 0x1000000) != 0) {
    x19c_backwardsDistance = hint->GetInfo().GetBackwardsDist();
  }
  if ((hint->GetOverrideFlags() & 0x80000000) != 0) {
    x1a0_elevation = hint->GetInfo().GetElevation();
  }
  if ((hint->GetOverrideFlags() & 0x2000000) != 0) {
    x1b4_lookAtOffset = hint->GetInfo().GetLookAtOffset();
  }
  if ((hint->GetOverrideFlags() & 0x4000000) != 0) {
    x410_chaseLookAtOffset = hint->GetInfo().GetChaseLookAtOffset();
  }

  if ((hint->GetOverrideFlags() & 0x10000000) != 0) {
    x18c_29_clampAttitude = true;
    x1ac_attitudeRange = hint->GetInfo().GetAttitudeRange();
  } else {
    x18c_29_clampAttitude = false;
  }
  if ((hint->GetOverrideFlags() & 0x20000000) != 0) {
    x18c_30_clampAzimuth = true;
    x1b0_azimuthRange = hint->GetInfo().GetAzimuthRange();
  } else {
    x18c_30_clampAzimuth = false;
  }

  if ((hint->GetOverrideFlags() & 0x8000000) != 0) {
    InterpolateFOV(x15c_currentFov, hint->GetInfo().GetFov(), 1.f, 0.f);
  }
  if ((hint->GetOverrideFlags() & 0x40000000) != 0) {
    x1a8_targetAnglePerSecond = hint->GetInfo().GetAnglePerSecond();
  }

  if ((hint->GetOverrideFlags() & 0x200) != 0) {
    mgr.Player()->SetControlDirectionInterpolation(hint->GetInfo().GetControlInterpDur());
  } else {
    mgr.Player()->ResetControlDirectionInterpolation();
  }

  switch (hint->GetBehaviourType()) {
  case kBCB_HintBallToCam: {
    CVector3f ballToCam = hint->GetInfo().GetBallToCam();
    x45c_overrideBallToCam = ballToCam;
    TeleportLookAtStuff(mgr);

    CVector3f camPos = mgr.GetPlayer()->GetBallPosition() + ballToCam;
    if ((hint->GetOverrideFlags() & 0x1) != 0) {
      float distance = CVector2f(ballToCam.GetX(), ballToCam.GetY()).Magnitude();
      CVector2f camToBallXY(ballToCam.GetX(), ballToCam.GetY());
      CVector3f camToBall = -CVector3f(camToBallXY.GetX(), camToBallXY.GetY(), 0.f).AsNormalized();
      camPos = FindDesiredPosition(distance, ballToCam.GetZ(), camToBall, mgr, false);
    }

    CTransform4f camXf = CTransform4f::LookAt(camPos, x1d8_lookPos, CVector3f::Up());
    TeleportCamera(camXf, mgr);
    break;
  }
  case kBCB_HintFixedTransform:
    TeleportLookAtStuff(mgr);
    TeleportCamera(hint->GetTransform(), mgr);
    break;
  case kBCB_Default:
    if ((hint->GetOverrideFlags() & 0x20) != 0) {
      TeleportLookAtStuff(mgr);
      if ((hint->GetOverrideFlags() & 0x40000) != 0) {
        const CTransform4f& camXf = mgr.CameraManager()->GetCurrentCameraTransform(mgr);
        CVector3f lookDir = mgr.GetPlayer()->GetTranslation() - camXf.GetTranslation();
        lookDir[kDZ] = 0.f;
        if (lookDir.CanBeNormalized()) {
          lookDir.Normalize();
        } else {
          lookDir = mgr.GetPlayer()->GetMovementDirection();
        }
        TeleportCamera(FindDesiredTransform(lookDir, mgr), mgr);
      } else {
        CTransform4f camXf =
            CTransform4f::LookAt(hint->GetTranslation(), x1d8_lookPos, CVector3f::Up());
        TeleportCamera(camXf, mgr);
      }
    }
    break;
  case kBCB_HintFixedPosition: {
    TeleportLookAtStuff(mgr);
    CTransform4f camXf =
        CTransform4f::LookAt(hint->GetTranslation(), x1d8_lookPos, CVector3f::Up());
    TeleportCamera(camXf, mgr);
    break;
  }
  case kBCB_FreezeLookPosition:
  case kBCB_HintInitializePosition:
    if ((hint->GetOverrideFlags() & 0x20) != 0) {
      TeleportLookAtStuff(mgr);
      float distance = x190_curMinDistance;
      float elevation = x1a0_elevation;
      ConstrainElevationAndDistance(elevation, distance, 0.f, mgr);
      CVector3f desiredPos = FindDesiredPosition(
          distance, elevation, mgr.GetPlayer()->GetMovementDirection(), mgr, false);
      CTransform4f camXf = CTransform4f::LookAt(desiredPos, x1cc_fixedLookPos, CVector3f::Up());
      TeleportCamera(camXf, mgr);
    }
    break;
  case kBCB_PathCameraDesiredPos:
  case kBCB_PathCamera:
  case kBCB_SpindleCamera:
  default:
    break;
  }

  if ((hint->GetOverrideFlags() & 0x20) != 0) {
    mgr.CameraManager()->SetPlayerCamera(mgr, GetUniqueId());
  }
}
namespace {
CVector3f GetFailsafeBezierPoint(const rstl::vector< CVector3f >& points, float t) {
  const float invT = 1.f - t;
  const float invTSq = invT * invT;
  const float tSq = t * t;
  return points[0] * (invTSq * invT) + points[1] * (3.f * t * invTSq) +
         points[2] * (3.f * tSq * invT) + points[3] * (tSq * t);
}
} // namespace

bool CBallCamera::CheckFailsafeFromMorphBallState(CStateManager& mgr) const {
  TUniqueId intersectId = kInvalidUniqueId;
  float frontCount = 0.f;
  rstl::reserved_vector< TUniqueId, 1024 > nearList;
  rstl::reserved_vector< CRayCastResult, 6 > frontResults;
  rstl::reserved_vector< CRayCastResult, 6 > backResults;

  float curT = 0.f;
  while (curT < 6.f) {
    CVector3f posA = GetFailsafeBezierPoint(x47c_failsafeState->x90_splinePoints, curT / 6.f);
    CVector3f posB =
        GetFailsafeBezierPoint(x47c_failsafeState->x90_splinePoints, (1.f + curT) / 6.f);
    CVector3f delta = posB - posA;
    if (delta.Magnitude() > 0.1f) {
      frontResults.push_back(mgr.RayWorldIntersection(intersectId, posA, delta.AsNormalized(),
                                                      delta.Magnitude(), kLineOfSightFilter,
                                                      nearList));
      ++frontCount;
      backResults.push_back(mgr.RayWorldIntersection(intersectId, posB, -delta.AsNormalized(),
                                                     delta.Magnitude(), kLineOfSightFilter,
                                                     nearList));
    } else {
      frontResults.push_back(CRayCastResult());
      ++frontCount;
      backResults.push_back(CRayCastResult());
    }
    curT += 1.f;
  }

  for (int i = 0;; ++i) {
    if (i >= int(frontCount)) {
      return true;
    }

    const CRayCastResult& resA = frontResults[i];
    const CRayCastResult& resB = backResults[i];
    if (resA.IsValid()) {
      CVector3f delta = resA.GetPoint() - resB.GetPoint();
      if (close_enough(delta.Magnitude(), 0.f)) {
        delta = GetFailsafeBezierPoint(x47c_failsafeState->x90_splinePoints,
                                       (1.f + CCast::LtoF(i)) / 6.f) -
                resA.GetPoint();
      }
      if (delta.Magnitude() > 0.3f) {
        return false;
      }
    }
  }
}

bool CBallCamera::SplineIntersectTest(CMaterialList& intersectMat, CStateManager& mgr) const {
  TUniqueId intersectId(kInvalidUniqueId);
  TEntityList nearList;
  rstl::reserved_vector< CRayCastResult, 12 > frontResults;
  rstl::reserved_vector< CRayCastResult, 12 > backResults;
  CMaterialList include(kMT_Solid, kMT_Floor, kMT_Wall);
  CMaterialFilter filter = CMaterialFilter::MakeIncludeExclude(
      include,
      CMaterialList(kMT_ProjectilePassthrough, kMT_Player, kMT_Character, kMT_CameraPassthrough));

  float curT = 0.f;
  while (curT < 12.f) {
    CVector3f posA = x37c_camSpline.GetInterpolatedSplinePointByTime(curT, 12.f);
    CVector3f posB = x37c_camSpline.GetInterpolatedSplinePointByTime(curT + 1.f, 12.f);
    CVector3f delta = posB - posA;
    if (delta.Magnitude() > 0.1f) {
      frontResults.push_back(mgr.RayWorldIntersection(intersectId, posA, delta.AsNormalized(),
                                                      delta.Magnitude(), filter, nearList));
      backResults.push_back(mgr.RayWorldIntersection(intersectId, posB, -delta.AsNormalized(),
                                                     delta.Magnitude(), filter, nearList));
    } else {
      frontResults.push_back(CRayCastResult());
      backResults.push_back(CRayCastResult());
    }
    curT += 1.f;
  }

  for (int i = 0; i < frontResults.size(); ++i) {
    const CRayCastResult& resA = frontResults[i];
    const CRayCastResult& resB = backResults[i];
    if (resA.IsValid()) {
      CVector3f delta = resA.GetPoint() - resB.GetPoint();
      if (close_enough(delta.Magnitude(), 0.f)) {
        delta = x37c_camSpline.GetInterpolatedSplinePointByTime(1.f + CCast::LtoF(i), 12.f) -
                resA.GetPoint();
      }
      if (delta.Magnitude() > 0.3f) {
        intersectMat = frontResults[i].GetMaterial();
        return false;
      }
    }
  }

  return true;
}
