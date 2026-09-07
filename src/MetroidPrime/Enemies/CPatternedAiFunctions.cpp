#include "MetroidPrime/Enemies/CPatterned.hpp"

#include "Collision/CRayCastResult.hpp"
#include "Kyoto/CRandom16.hpp"
#include "Kyoto/Math/CRelAngle.hpp"
#include "MetroidPrime/BodyState/CBodyState.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/Cameras/CCameraManager.hpp"
#include "MetroidPrime/Cameras/CFirstPersonCamera.hpp"
#include "MetroidPrime/PathFinding/CPathFindSearch.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/ScriptObjects/CScriptActorKeyframe.hpp"
#include "MetroidPrime/ScriptObjects/CScriptWaypoint.hpp"
#include "MetroidPrime/TCastTo.hpp"
#include <float.h>

void CPatterned::Start(CStateManager&, EStateMsg, float) {}

void CPatterned::Patrol(CStateManager& mgr, EStateMsg msg, float arg) {
  switch (msg) {
  case kStateMsg_Activate:
    if (x3ac_lastPatrolDest == kInvalidUniqueId) {
      x2dc_destObj = GetConnectedObject(mgr, kSS_Patrol, kSM_Follow);
      x30c_behaviourOrient = kBO_MoveDir;
      x3b0_moveSpeed = 1.f;
      if (x2dc_destObj != kInvalidUniqueId) {
        if (const CScriptWaypoint* waypoint =
                TCastToConstPtr< CScriptWaypoint >(mgr.GetObjectById(x2dc_destObj))) {
          x30c_behaviourOrient = static_cast< EBehaviourOrient >(waypoint->GetBehaviourOrient());
          x3b0_moveSpeed = waypoint->GetSpeed();
        }
      }
    } else {
      x2dc_destObj = x3ac_lastPatrolDest;
    }
    x2ec_reflectedDestPos = GetTranslation();
    x328_24_inPosition = false;
    x2d8_patrolState = kPS_Patrol;
    x2f8_waypointPauseRemTime = 0.f;
    break;
  case kStateMsg_Update:
    switch (x2d8_patrolState) {
    case kPS_Patrol:
      if (x328_24_inPosition && x2dc_destObj != kInvalidUniqueId) {
        if (const CScriptWaypoint* waypoint =
                TCastToConstPtr< CScriptWaypoint >(mgr.GetObjectById(x2dc_destObj))) {
          if (waypoint->GetPause() > 0.f) {
            x2f8_waypointPauseRemTime = waypoint->GetPause();
            x2d8_patrolState = kPS_Pause;
          }
        }
      }
      if (x2dc_destObj == kInvalidUniqueId) {
        x2d8_patrolState = kPS_Done;
      }
      UpdateDest(mgr);
      ApproachDest(mgr);
      break;
    case kPS_Pause:
      if (x2f8_waypointPauseRemTime <= 0.f) {
        x2d8_patrolState = kPS_Patrol;
      }
      break;
    case kPS_Done:
      if (x2dc_destObj != kInvalidUniqueId) {
        x2d8_patrolState = kPS_Patrol;
      }
      break;
    default:
      break;
    }
    break;
  case kStateMsg_Deactivate:
    x3ac_lastPatrolDest = x2dc_destObj;
    x2d8_patrolState = kPS_Invalid;
    break;
  default:
    break;
  }
}

void CPatterned::FollowPattern(CStateManager& mgr, EStateMsg msg, float arg) {
  switch (msg) {
  case kStateMsg_Activate:
    SetupPattern(mgr);
    if (x328_29_noPatternShagging || !IsPatternObstructed(mgr, GetTranslation(), x2e0_destPos)) {
      ApproachDest(mgr);
    } else {
      x39c_curPattern = x38c_patterns.size();
      x400_30_patternShagged = true;
    }
    break;
  case kStateMsg_Update:
    if (x328_24_inPosition) {
      ++x39c_curPattern;
      UpdatePatternDestPos(mgr);
      if (!x328_29_noPatternShagging && IsPatternObstructed(mgr, GetTranslation(), x2e0_destPos)) {
        x39c_curPattern = x38c_patterns.size();
        x400_30_patternShagged = true;
      } else if (x39c_curPattern < x38c_patterns.size()) {
        x2ec_reflectedDestPos = GetTranslation();
        x328_24_inPosition = false;
        x3b0_moveSpeed = x38c_patterns[x39c_curPattern].GetSpeed();
        x380_behaviour = static_cast< EBehaviour >(x38c_patterns[x39c_curPattern].GetBehaviour());
        x30c_behaviourOrient =
            static_cast< EBehaviourOrient >(x38c_patterns[x39c_curPattern].GetBehaviourOrient());
        x384_behaviourModifiers = static_cast< EBehaviourModifiers >(
            x38c_patterns[x39c_curPattern].GetBehaviourModifiers());
      }
    } else {
      UpdatePatternDestPos(mgr);
    }
    ApproachDest(mgr);
    break;
  case kStateMsg_Deactivate:
    x38c_patterns.clear();
    x400_30_patternShagged = false;
    break;
  default:
    break;
  }
}

void CPatterned::TargetPatrol(CStateManager& mgr, EStateMsg msg, float arg) {
  switch (msg) {
  case kStateMsg_Activate:
    x2dc_destObj = GetConnectedObject(mgr, kSS_Patrol, kSM_Follow);
    if (const CActor* actor = TCastToConstPtr< CActor >(mgr.GetObjectById(x2dc_destObj))) {
      SetDestPos(actor->GetTranslation());
    }
    x2ec_reflectedDestPos = GetTranslation();
    x328_24_inPosition = false;
    break;
  default:
    break;
  }
}

void CPatterned::TargetPlayer(CStateManager& mgr, EStateMsg msg, float arg) {
  switch (msg) {
  case kStateMsg_Activate:
    x2dc_destObj = mgr.GetPlayer()->GetUniqueId();
    SetDestPos(mgr.GetPlayer()->GetTranslation());
    x2ec_reflectedDestPos = GetTranslation();
    x328_24_inPosition = false;
    break;
  default:
    break;
  }
}

void CPatterned::Dead(CStateManager& mgr, EStateMsg msg, float arg) {
  switch (msg) {
  case kStateMsg_Activate:
    x31c_faceVec = CVector3f::Zero();
    break;
  case kStateMsg_Update:
    x450_bodyController->CommandMgr().DeliverCmd(CBodyStateCmd(kBSC_Die));
    if (!x400_27_fadeToDeath) {
      if (x450_bodyController->GetBodyStateInfo().GetCurrentState()->IsDead()) {
        x400_27_fadeToDeath = true;
        x3e8_alphaDelta = -1.f / 3.f;
        RemoveMaterial(kMT_Character, kMT_Solid, kMT_Target, kMT_Orbit, mgr);
        AddMaterial(kMT_ProjectilePassthrough, mgr);
      }
    }
    break;
  default:
    break;
  }
}

void CPatterned::PathFind(CStateManager& mgr, EStateMsg msg, float arg) {
  if (GetSearchPath()) {
    switch (msg) {
    case kStateMsg_Deactivate:
      break;
    case kStateMsg_Activate:
      if (GetSearchPath()->Search(GetTranslation(), x2e0_destPos) == CPathFindSearch::kR_Success) {
        x2ec_reflectedDestPos = GetTranslation();
        SetDestPos(GetSearchPath()->GetPoint());
        x328_24_inPosition = false;
        ApproachDest(mgr);
      }
      break;
    case kStateMsg_Update:
      if (!GetSearchPath()->IsOver()) {
        if (x328_25_verticalMovement || x328_27_onGround) {
          x401_24_pathOverCount += 1;
          x401_24_pathOverCount &= 3;
        }
        CVector3f position = GetTranslation() + 0.3f * CVector3f::Up();
        x2ec_reflectedDestPos = position - (x2e0_destPos - position);
        ApproachDest(mgr);
        CVector3f point = position + GetModelScale().GetY() * GetTransform().GetForward();
        GetSearchPath()->GetSplinePointWithLookahead(
            point, position, skActorApproachDistance * GetModelScale().GetY());
        SetDestPos(point);
        if (GetSearchPath()->SegmentOver(position)) {
          GetSearchPath()->Advance();
        }
      }
      break;
    }
  }
}

bool CPatterned::OffLine(CStateManager&, float arg) {
  CVector3f curLine = GetTranslation() - x2ec_reflectedDestPos;
  CVector3f pathLine = x2e0_destPos - x2ec_reflectedDestPos;
  float distance = 0.f;
  if (CVector3f::Dot(pathLine, curLine) <= 0.f) {
    distance = curLine.MagSquared();
  } else {
    pathLine.Normalize();
    curLine -= CVector3f::Dot(pathLine, curLine) * pathLine;
    distance = curLine.MagSquared();
    const CVector3f delta = GetTranslation() - x2e0_destPos;
    if (CVector3f::Dot(pathLine, delta) > 0.f) {
      distance = delta.MagSquared();
    }
  }
  return distance > arg * arg;
}

bool CPatterned::InRange(CStateManager& mgr, float arg) {
  float distance = (mgr.GetPlayer()->GetTranslation() - GetTranslation()).MagSquared();
  float range = 0.5f * (x2fc_minAttackRange + x300_maxAttackRange);
  return distance < range * range;
}

bool CPatterned::TooClose(CStateManager& mgr, float arg) {
  return (mgr.GetPlayer()->GetTranslation() - GetTranslation()).MagSquared() <
         x2fc_minAttackRange * x2fc_minAttackRange;
}

bool CPatterned::InMaxRange(CStateManager& mgr, float arg) {
  return (mgr.GetPlayer()->GetTranslation() - GetTranslation()).MagSquared() <
         x300_maxAttackRange * x300_maxAttackRange;
}

bool CPatterned::InDetectionRange(CStateManager& mgr, float arg) {
  const CVector3f delta = mgr.GetPlayer()->GetTranslation() - GetTranslation();
  bool result = false;
  if (delta.MagSquared() < x3bc_detectionRange * x3bc_detectionRange) {
    result = true;
    if (x3c0_detectionHeightRange > 0.f) {
      result = delta.GetZ() * delta.GetZ() < x3c0_detectionHeightRange * x3c0_detectionHeightRange;
    }
  }
  return result;
}

bool CPatterned::Leash(CStateManager&, float arg) {
  bool result = x3d4_curPlayerLeashTime > x3d0_playerLeashTime;
  if (result) {
    const float distance = (x3a0_latestLeashPosition - GetTranslation()).MagSquared();
    result = result && distance > x3c8_leashRadius * x3c8_leashRadius;
  }
  return result;
}

bool CPatterned::SpotPlayer(CStateManager& mgr, float arg) {
  bool result = false;
  CVector3f delta = mgr.GetPlayer()->GetAimPosition(mgr, 0.f) - GetGunEyePos();
  float dot = CVector3f::Dot(delta, GetTransform().GetForward());
  if (dot > 0.f) {
    float distance = delta.MagSquared();
    result = dot * dot > distance * x3c4_detectionAngle;
  }
  return result;
}

bool CPatterned::PlayerSpot(CStateManager& mgr, float arg) {
  if (mgr.GetPlayer()->GetMorphballTransitionState() == CPlayer::kMS_Unmorphed) {
    CVector3f aim = mgr.GetPlayer()->GetAimPosition(mgr, 0.f);
    CVector3f center = GetBoundingBox().GetCenterPoint();
    CVector3f delta = center - aim;
    float distance = delta.Magnitude();
    delta *= 1.f / distance;
    CVector3f screen = mgr.GetCameraManager()->GetFirstPersonCamera()->ConvertToScreenSpace(center);
    if (screen.GetZ() > 0.f && screen.GetX() * screen.GetX() < 1.f &&
        screen.GetY() * screen.GetY() < 1.f) {
      const CMaterialFilter filter = CMaterialFilter::MakeInclude(CMaterialList(kMT_Solid));
      CRayCastResult result = mgr.RayStaticIntersection(aim, delta, distance, filter);
      if (!result.IsValid()) {
        return true;
      }
    }
  }
  return false;
}

bool CPatterned::Landed(CStateManager&, float arg) {
  bool result = x328_27_onGround && !x328_28_prevOnGround;
  x328_28_prevOnGround = x328_27_onGround;
  return result;
}

bool CPatterned::PathOver(CStateManager&, float arg) {
  if (GetSearchPath() && (x328_25_verticalMovement || x328_27_onGround)) {
    return !GetSearchPath()->IsShagged() && GetSearchPath()->IsOver();
  }
  return false;
}

bool CPatterned::PathFound(CStateManager&, float arg) {
  return GetSearchPath() && !GetSearchPath()->IsShagged();
}

bool CPatterned::PathShagged(CStateManager&, float arg) {
  if (GetSearchPath()) {
    if (GetSearchPath()->IsShagged()) {
      return true;
    }
    if (GetSearchPath()->GetCurrentWaypoint() > 0 && x401_24_pathOverCount == 0) {
      CVector3f original = GetTranslation() + 0.3f * CVector3f::Up();
      CVector3f point = original;
      GetSearchPath()->GetSplinePoint(point, GetTranslation());
      if ((point - original).MagSquared() >
          4.f * skActorApproachDistance * skActorApproachDistance) {
        return true;
      }
    }
  }
  return false;
}

bool CPatterned::NoPathNodes(CStateManager&, float arg) {
  if (GetSearchPath()) {
    return GetSearchPath()->OnPath(GetTranslation()) != CPathFindSearch::kR_Success;
  }
  return true;
}

bool CPatterned::HasAttackPattern(CStateManager& mgr, float arg) {
  return GetConnectedObject(mgr, kSS_Attack, kSM_Follow) != kInvalidUniqueId;
}

bool CPatterned::HasRetreatPattern(CStateManager& mgr, float arg) {
  return GetConnectedObject(mgr, kSS_Retreat, kSM_Follow) != kInvalidUniqueId;
}

bool CPatterned::PatternOver(CStateManager&, float arg) {
  return x39c_curPattern >= x38c_patterns.size();
}

bool CPatterned::PatternShagged(CStateManager&, float arg) { return x400_30_patternShagged; }

bool CPatterned::Attacked(CStateManager&, float arg) { return x400_24_hitByPlayerProjectile; }

bool CPatterned::HasPatrolPath(CStateManager& mgr, float arg) {
  return GetConnectedObject(mgr, kSS_Patrol, kSM_Follow) != kInvalidUniqueId;
}

bool CPatterned::InPosition(CStateManager&, float arg) { return x328_24_inPosition; }

bool CPatterned::AnimOver(CStateManager&, float arg) { return x32c_animState == kAS_Over; }

bool CPatterned::Stuck(CStateManager&, float arg) { return x4f0_predictedLeashTime > 0.2f; }

bool CPatterned::PatrolPathOver(CStateManager&, float arg) {
  return x2dc_destObj == kInvalidUniqueId;
}

bool CPatterned::Delay(CStateManager&, float arg) { return x330_stateMachineState.GetTime() > arg; }

bool CPatterned::RandomDelay(CStateManager&, float arg) {
  return x330_stateMachineState.GetTime() > arg * x330_stateMachineState.GetRandom();
}

bool CPatterned::FixedDelay(CStateManager&, float arg) {
  return x330_stateMachineState.GetTime() > x330_stateMachineState.GetDelay();
}

bool CPatterned::CodeTrigger(CStateManager&, float arg) {
  return x330_stateMachineState.GetCodeTrigger();
}

void CPatterned::ApproachDest(CStateManager& mgr) {
  CVector3f face = mgr.GetPlayer()->GetTranslation() - GetTranslation();
  CVector3f move = x2e0_destPos - GetTranslation();
  if (!x328_25_verticalMovement) {
    move.SetZ(0.f);
    face.SetZ(0.f);
  }
  const CVector3f path = x2e0_destPos - x2ec_reflectedDestPos;
  if (CVector3f::Dot(path, move) <= 0.f) {
    x328_24_inPosition = true;
  } else if (move.MagSquared() < skActorApproachDistance * skActorApproachDistance) {
    move = path;
  }
  if (!x328_24_inPosition) {
    if (move.CanBeNormalized()) {
      move.Normalize();
    }
    switch (x30c_behaviourOrient) {
    case kBO_Constant:
    case kBO_Three:
      break;
    case kBO_MoveDir:
      face = move;
      break;
    case kBO_Destination:
      if (x39c_curPattern != 0 && x39c_curPattern < x38c_patterns.size()) {
        face = x38c_patterns[x39c_curPattern].GetForward();
      } else if (x2dc_destObj != kInvalidUniqueId) {
        if (const CScriptWaypoint* waypoint =
                TCastToConstPtr< CScriptWaypoint >(mgr.GetObjectById(x2dc_destObj))) {
          face = waypoint->GetTransform().GetForward();
        }
      }
      break;
    }
    x31c_faceVec = face;
    x310_moveVec = x3b0_moveSpeed * move;
    if (!KnockbackWhenFrozen()) {
      x450_bodyController->CommandMgr().DeliverCmd(
          CBCLocomotionCmd(x310_moveVec, x31c_faceVec, 1.f));
    } else if (x30c_behaviourOrient == kBO_MoveDir ||
               !x450_bodyController->HasBodyState(pas::kAS_Step)) {
      x450_bodyController->CommandMgr().DeliverCmd(
          CBCLocomotionCmd(x310_moveVec, CVector3f::Zero(), 1.f));
    } else {
      pas::EStepDirection step = FindBestStepDirection(x310_moveVec);
      if (step != pas::kSD_Forward) {
        x450_bodyController->CommandMgr().DeliverCmd(CBCStepCmd(step, pas::kStep_Normal));
      } else {
        x450_bodyController->CommandMgr().DeliverCmd(
            CBCLocomotionCmd(x310_moveVec, CVector3f::Zero(), 1.f));
      }
      x450_bodyController->CommandMgr().DeliverTargetVector(x31c_faceVec);
    }
  } else {
    float maxSpeed = x450_bodyController->GetBodyStateInfo().GetMaxSpeed();
    if (maxSpeed > FLT_EPSILON) {
      float speed = GetVelocityWR().Magnitude() / maxSpeed;
      CVector3f move = speed * GetTransform().GetForward();
      x450_bodyController->CommandMgr().DeliverCmd(CBCLocomotionCmd(move, CVector3f::Zero(), 1.f));
    }
  }
}

void CPatterned::UpdateDest(CStateManager& mgr) {
  if (x328_24_inPosition && x2dc_destObj != kInvalidUniqueId) {
    if (CScriptWaypoint* waypoint = TCastToPtr< CScriptWaypoint >(mgr.ObjectById(x2dc_destObj))) {
      UpdateActorKeyframe(mgr);
      x2dc_destObj = waypoint->NextWaypoint(mgr);
      if (x2dc_destObj != kInvalidUniqueId) {
        x2ec_reflectedDestPos = GetTranslation();
        x328_24_inPosition = false;
        if (const CScriptWaypoint* next =
                TCastToConstPtr< CScriptWaypoint >(mgr.GetObjectById(x2dc_destObj))) {
          x3b0_moveSpeed = waypoint->GetSpeed();
          x30c_behaviourOrient = static_cast< EBehaviourOrient >(waypoint->GetBehaviourOrient());
          if (waypoint->GetBehaviourModifiers() & 2) {
            CBodyStateCmdMgr& cmdMgr = x450_bodyController->CommandMgr();
            cmdMgr.DeliverCmd(CBCJumpCmd(next->GetTranslation(), pas::kJT_Normal));
          } else if (waypoint->GetBehaviourModifiers() & 4) {
            TUniqueId nextId = next->NextWaypoint(mgr);
            if (nextId != kInvalidUniqueId) {
              if (const CScriptWaypoint* end =
                      TCastToConstPtr< CScriptWaypoint >(mgr.GetObjectById(nextId))) {
                CBodyStateCmdMgr& cmdMgr = x450_bodyController->CommandMgr();
                cmdMgr.DeliverCmd(
                    CBCJumpCmd(next->GetTranslation(), end->GetTranslation(), pas::kJT_Normal));
              }
            }
          }
        }
      }
      mgr.DeliverScriptMsg(waypoint, GetUniqueId(), kSM_Arrived);
    }
  }
  if (x2dc_destObj != kInvalidUniqueId) {
    if (const CActor* actor = TCastToConstPtr< CActor >(mgr.GetObjectById(x2dc_destObj))) {
      SetDestPos(actor->GetTranslation());
    }
  }
}

void CPatterned::UpdateActorKeyframe(CStateManager& mgr) {
  if (const CScriptWaypoint* waypoint =
          TCastToConstPtr< CScriptWaypoint >(mgr.GetObjectById(x2dc_destObj))) {
    const rstl::vector< SConnection >& connections = waypoint->GetConnectionList();
    for (AUTO(it, connections.begin()); it != connections.end(); ++it) {
      if (it->x0_state == kSS_Arrived && it->x4_msg == kSM_Action) {
        TUniqueId id = mgr.GetIdForScript(it->x8_objId);
        if (CScriptActorKeyframe* keyframe =
                TCastToPtr< CScriptActorKeyframe >(mgr.ObjectById(id))) {
          if (keyframe->GetActive() && keyframe->IsPassive()) {
            keyframe->UpdateEntity(GetUniqueId(), mgr);
          }
        }
      }
    }
  }
}

TUniqueId CPatterned::GetConnectedObject(CStateManager& mgr, EScriptObjectState state,
                                         EScriptObjectMessage msg) {
  rstl::reserved_vector< TUniqueId, 8 > ids;
  const rstl::vector< SConnection >& connections = GetConnectionList();
  for (AUTO(it, connections.begin()); it != connections.end(); ++it) {
    if (it->x0_state == state && it->x4_msg == msg) {
      TUniqueId id = mgr.GetIdForScript(it->x8_objId);
      if (const CEntity* entity = mgr.GetObjectById(id)) {
        if (entity->GetActive()) {
          ids.push_back(id);
          if (ids.capacity() - ids.size() <= 0) {
            break;
          }
        }
      }
    }
  }
  if (ids.size() != 0) {
    return ids[mgr.Random()->Next() % ids.size()];
  }
  return kInvalidUniqueId;
}

bool CPatterned::IsPatternObstructed(CStateManager& mgr, const CVector3f& from,
                                     const CVector3f& to) const {
  TEntityList nearList;
  bool obstructed = false;
  CMaterialFilter filter = CMaterialFilter::MakeInclude(CMaterialList(kMT_Character));
  CVector3f delta = to - from;
  if (delta.CanBeNormalized()) {
    CVector3f direction = delta.AsNormalized();
    float distance = delta.Magnitude();
    mgr.BuildNearList(nearList, from, direction, distance, filter, this);
    TUniqueId id = kInvalidUniqueId;
    const CMaterialFilter solidFilter = CMaterialFilter::MakeInclude(CMaterialList(kMT_Solid));
    CRayCastResult result =
        mgr.RayWorldIntersection(id, from, direction, distance, solidFilter, nearList);
    obstructed = result.GetValid();
  }
  return obstructed;
}

pas::EStepDirection CPatterned::FindBestStepDirection(const CVector3f& dir) const {
  const CVector3f localDir = GetTransform().TransposeRotate(dir);
  float angle = CVector3f::GetAngleDiff(localDir, CVector3f::Forward());
  if (angle < CMath::Deg2Rad(45.f)) {
    return pas::kSD_Forward;
  }
  if (angle > CMath::Deg2Rad(135.f)) {
    return pas::kSD_Backward;
  }
  if (CVector3f::Dot(localDir, CVector3f::Right()) > 0.f) {
    return pas::kSD_Right;
  }
  return pas::kSD_Left;
}

CVector3f CPatterned::FindPatternDir(CStateManager& mgr) {
  CVector3f dir = CVector3f::Zero();
  switch (x378_patternOrient) {
  case kPO_StartToPlayerStart:
    dir = x35c_patternStartPlayerPos - x350_patternStartPos;
    break;
  case kPO_StartToPlayer:
    dir = mgr.GetPlayer()->GetTranslation() - x350_patternStartPos;
    break;
  case kPO_ReversePlayerForward:
    dir = -mgr.GetPlayer()->GetTransform().GetForward();
    break;
  case kPO_Forward:
    dir = GetTransform().GetForward();
    break;
  default:
    break;
  }
  return dir;
}

CQuaternion CPatterned::FindPatternRotation(const CVector3f& dir) {
  CVector3f flatDir = dir;
  CVector3f flatDelta = x368_destWPDelta;
  flatDir.SetZ(0.f);
  flatDelta.SetZ(0.f);
  flatDelta.Normalize();
  flatDir.Normalize();
  CQuaternion rotation = (flatDelta - flatDir).MagSquared() > 3.99f
                             ? CQuaternion::ZRotation(CRelAngle::FromDegrees(180.f))
                             : CQuaternion::ShortestRotationArc(flatDelta, flatDir);
  if (x328_25_verticalMovement) {
    CVector3f rotated =
        (rotation * CQuaternion(0.f, x368_destWPDelta) * rotation.BuildInverted()).GetVector();
    rotation =
        CQuaternion::ShortestRotationArc(rotated.AsNormalized(), dir.AsNormalized()) * rotation;
  }
  return rotation;
}

rstl::pair< CScriptWaypoint*, CScriptWaypoint* >
CPatterned::GetDestWaypoints(CStateManager& mgr) const {
  CScriptWaypoint* first = TCastToPtr< CScriptWaypoint >(mgr.ObjectById(x2dc_destObj));
  CScriptWaypoint* second = nullptr;
  if (first) {
    second = TCastToPtr< CScriptWaypoint >(mgr.ObjectById(first->FollowWaypoint(mgr)));
  }
  return rstl::pair< CScriptWaypoint*, CScriptWaypoint* >(first, second);
}

EScriptObjectState CPatterned::GetDesiredAttackState(CStateManager& mgr) const {
  float distance = (GetTranslation() - mgr.GetPlayer()->GetTranslation()).MagSquared();
  if (distance < x2fc_minAttackRange * x2fc_minAttackRange) {
    return kSS_Retreat;
  }
  if (distance > x300_maxAttackRange * x300_maxAttackRange) {
    return kSS_CloseIn;
  }
  return kSS_Attack;
}

void CPatterned::SetupPattern(CStateManager& mgr) {
  EScriptObjectState state = GetDesiredAttackState(mgr);
  x2dc_destObj = GetConnectedObject(mgr, state, kSM_Follow);
  if (kInvalidUniqueId == x2dc_destObj && state != kSS_Attack) {
    x2dc_destObj = GetConnectedObject(mgr, kSS_Attack, kSM_Follow);
  }
  x38c_patterns.clear();
  if (kInvalidUniqueId != x2dc_destObj) {
    x350_patternStartPos = GetTranslation();
    x35c_patternStartPlayerPos = mgr.GetPlayer()->GetTranslation();
    const rstl::pair< CScriptWaypoint*, CScriptWaypoint* > waypoints = GetDestWaypoints(mgr);
    if (waypoints.first) {
      x374_patternTranslate =
          static_cast< EPatternTranslate >(waypoints.first->GetPatternTranslate());
      x378_patternOrient = static_cast< EPatternOrient >(waypoints.first->GetPatternOrient());
      x37c_patternFit = static_cast< EPatternFit >(waypoints.first->GetPatternFit());
      if (waypoints.second) {
        x368_destWPDelta = waypoints.second->GetTranslation() - waypoints.first->GetTranslation();
      } else {
        x368_destWPDelta = CVector3f::Zero();
      }
      int count = 0;
      CScriptWaypoint* current = waypoints.first;
      do {
        ++count;
        current = TCastToPtr< CScriptWaypoint >(mgr.ObjectById(current->NextWaypoint(mgr)));
        if (!current) {
          break;
        }
      } while (current->GetUniqueId() != waypoints.first->GetUniqueId());
      x38c_patterns.reserve(count);
      CVector3f origin = CVector3f::Zero();
      switch (x374_patternTranslate) {
      case kPT_RelativePlayerStart:
        if (waypoints.second) {
          origin = waypoints.second->GetTranslation();
        }
        break;
      case kPT_Absolute:
        break;
      default:
        origin = waypoints.first->GetTranslation();
        break;
      }
      current = waypoints.first;
      do {
        if (x38c_patterns.size() >= x38c_patterns.capacity()) {
          break;
        }
        CVector3f forward = current->GetTransform().GetForward();
        if (x368_destWPDelta.IsNonZero()) {
          CVector3f dir = FindPatternDir(mgr);
          forward = FindPatternRotation(dir).Transform(forward);
        }
        x38c_patterns.push_back(
            CPatternNode(current->GetTranslation() - origin, forward, current->GetSpeed(),
                         current->GetBehaviour(), current->GetBehaviourOrient(),
                         current->GetBehaviourModifiers(), current->GetAnimation()));
        current = TCastToPtr< CScriptWaypoint >(mgr.ObjectById(current->NextWaypoint(mgr)));
        if (!current) {
          break;
        }
      } while (current->GetUniqueId() != waypoints.first->GetUniqueId());
    }
  }
  x400_30_patternShagged = false;
  x39c_curPattern = 0;
  x328_24_inPosition = false;
  x2ec_reflectedDestPos = GetTranslation();
  if (!x38c_patterns.empty()) {
    x3b0_moveSpeed = x38c_patterns.front().GetSpeed();
    x380_behaviour = static_cast< EBehaviour >(x38c_patterns.front().GetBehaviour());
    x30c_behaviourOrient =
        static_cast< EBehaviourOrient >(x38c_patterns.front().GetBehaviourOrient());
    x384_behaviourModifiers =
        static_cast< EBehaviourModifiers >(x38c_patterns.front().GetBehaviourModifiers());
  }
}

void CPatterned::UpdatePatternDestPos(CStateManager& mgr) {
  if (x39c_curPattern < x38c_patterns.size()) {
    if (x368_destWPDelta.IsNonZero()) {
      CVector3f dir = FindPatternDir(mgr);
      SetDestPos(FindPatternRotation(dir).Transform(x38c_patterns[x39c_curPattern].GetPos()));
      switch (x37c_patternFit) {
      case kPF_Zero: {
        float ratio = x328_25_verticalMovement
                          ? dir.MagSquared() / x368_destWPDelta.MagSquared()
                          : (dir.GetX() * dir.GetX() + dir.GetY() * dir.GetY()) /
                                (x368_destWPDelta.GetX() * x368_destWPDelta.GetX() +
                                 x368_destWPDelta.GetY() * x368_destWPDelta.GetY());
        SetDestPos(CMath::SqrtF(ratio) * x2e0_destPos);
        break;
      }
      default:
        break;
      }
    } else {
      SetDestPos(x38c_patterns[x39c_curPattern].GetPos());
    }
  }
  switch (x374_patternTranslate) {
  case kPT_RelativeStart:
    SetDestPos(x2e0_destPos + x350_patternStartPos);
    break;
  case kPT_RelativePlayerStart:
    SetDestPos(x2e0_destPos + x35c_patternStartPlayerPos);
    break;
  case kPT_RelativePlayer:
    SetDestPos(x2e0_destPos + mgr.GetPlayer()->GetTranslation());
    break;
  default:
    break;
  }
}

bool CPatterned::Random(CStateManager&, float arg) {
  return x330_stateMachineState.GetRandom() < arg;
}

bool CPatterned::FixedRandom(CStateManager&, float arg) {
  return x330_stateMachineState.GetRandom() < x330_stateMachineState.GetFixedRandom();
}
