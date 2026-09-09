#include "MetroidPrime/BodyState/CBSWallHang.hpp"

#include "MetroidPrime/BodyState/CBodyController.hpp"
#include "MetroidPrime/CActor.hpp"
#include "MetroidPrime/CAnimPlaybackParms.hpp"
#include "MetroidPrime/CModelData.hpp"
#include "MetroidPrime/CPhysicsActor.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/Enemies/CPatterned.hpp"
#include "MetroidPrime/TCastTo.hpp"

#include "Kyoto/Animation/CPASAnimParmData.hpp"
#include "Kyoto/Animation/CPASDatabase.hpp"
#include "Kyoto/Math/CMath.hpp"

CBSWallHang::CBSWallHang()
: x4_state(pas::kWHS_Invalid)
, x8_wpId(kInvalidUniqueId)
, xc_launchVel(CVector3f::Zero())
, x18_24_launched(false)
, x18_25_needsExit(false) {}

void CBSWallHang::SetLaunchVelocity(CBodyController& bc) {
  if (!x18_24_launched) {
    if (CPhysicsActor* actor = TCastToPtr< CPhysicsActor >(&bc.GetOwner())) {
      actor->SetVelocityWR(xc_launchVel);
      actor->SetConstantForceWR(actor->GetMass() * xc_launchVel);
    }
    x18_24_launched = true;
  }
}

bool CBSWallHang::IsInAir(const CBodyController& bc) const {
  return x4_state == pas::kWHS_JumpArc || x4_state == pas::kWHS_JumpAirLoop ||
         x4_state == pas::kWHS_OutOfWallHangTurn || x4_state == pas::kWHS_DetachJumpLoop;
}

bool CBSWallHang::ApplyAnimationDeltas() const {
  return x4_state == pas::kWHS_IntoJump || x4_state == pas::kWHS_IntoWallHang ||
         x4_state == pas::kWHS_WallHang || x4_state == pas::kWHS_Five ||
         x4_state == pas::kWHS_OutOfWallHang || x4_state == pas::kWHS_DetachOutOfJump;
}

bool CBSWallHang::ApplyHeadTracking() const {
  return x4_state == pas::kWHS_WallHang || x4_state == pas::kWHS_Five;
}

bool CBSWallHang::CanShoot() const { return x4_state == pas::kWHS_WallHang; }

bool CBSWallHang::ApplyGravity() const {
  return x4_state != pas::kWHS_WallHang && x4_state != pas::kWHS_IntoWallHang &&
         x4_state != pas::kWHS_OutOfWallHang;
}

void CBSWallHang::Start(CBodyController& bc, CStateManager& mgr) {
  const CBCWallHangCmd* cmd =
      static_cast< const CBCWallHangCmd* >(bc.CommandMgr().GetCmd(kBSC_WallHang));
  x4_state = pas::kWHS_IntoJump;
  x8_wpId = cmd->GetTarget();
  x18_25_needsExit = false;
  const CPASAnimParmData parms(pas::kAS_WallHang, CPASAnimParm::FromEnum(x4_state));
  bc.PlayBestAnimation(parms, *mgr.Random());
}

pas::EAnimationState CBSWallHang::UpdateBody(float dt, CBodyController& bc, CStateManager& mgr) {
  pas::EAnimationState state = GetBodyStateTransition(dt, bc);
  if (state == pas::kAS_Invalid) {
    switch (x4_state) {
    case pas::kWHS_IntoJump:
      if (bc.IsAnimationOver()) {
        const CPASAnimParmData parms(pas::kAS_WallHang, CPASAnimParm::FromEnum(1));
        const rstl::pair< float, int > best =
            bc.GetPASDatabase().FindBestAnimation(parms, *mgr.Random(), -1);
        if (best.first > 0.f) {
          x4_state = pas::kWHS_JumpArc;
          const CAnimPlaybackParms playParms(best.second, -1, 1.f, true);
          bc.SetCurrentAnimation(playParms, false, false);
        } else {
          x4_state = pas::kWHS_JumpAirLoop;
          const CPASAnimParmData loopParms(pas::kAS_WallHang, CPASAnimParm::FromEnum(x4_state));
          bc.LoopBestAnimation(loopParms, *mgr.Random());
        }

        if (CPhysicsActor* actor = TCastToPtr< CPhysicsActor >(&bc.GetOwner())) {
          mgr.DeliverScriptMsg(actor, kInvalidUniqueId, kSM_Jumped);
          if (const CActor* waypoint = TCastToConstPtr< CActor >(mgr.GetObjectById(x8_wpId))) {
            const CVector3f toWaypoint = waypoint->GetTranslation() - actor->GetTranslation();
            if (!(toWaypoint.GetZ() < 0.f)) {
              const float gravity = -actor->GetMomentumWR().GetZ() / actor->GetMass();
              const float zVel = CMath::SqrtF(2.f * gravity * toWaypoint.GetZ());
              const float invTime = 1.f / (zVel / gravity);
              x18_24_launched = false;
              xc_launchVel =
                  CVector3f(invTime * toWaypoint.GetX(), invTime * toWaypoint.GetY(), zVel);
            }
          }
        }
      }
      break;
    case pas::kWHS_JumpArc:
      SetLaunchVelocity(bc);
      if (bc.IsAnimationOver()) {
        x4_state = pas::kWHS_JumpAirLoop;
        const CPASAnimParmData parms(pas::kAS_WallHang, CPASAnimParm::FromEnum(x4_state));
        bc.LoopBestAnimation(parms, *mgr.Random());
      } else {
        CheckForWall(bc, mgr);
      }
      break;
    case pas::kWHS_JumpAirLoop:
      SetLaunchVelocity(bc);
      if (!CheckForWall(bc, mgr)) {
        CheckForLand(bc, mgr);
      }
      break;
    case pas::kWHS_IntoWallHang:
      if (bc.IsAnimationOver()) {
        x4_state = pas::kWHS_WallHang;
        const CPASAnimParmData parms(pas::kAS_WallHang, CPASAnimParm::FromEnum(x4_state));
        bc.LoopBestAnimation(parms, *mgr.Random());
      } else if (bc.CommandMgr().GetCmd(kBSC_ExitState) != nullptr) {
        x18_25_needsExit = true;
      }
      break;
    case pas::kWHS_WallHang: {
      CBodyStateCmdMgr& cmdMgr = bc.CommandMgr();
      if (cmdMgr.GetTargetVector().IsNonZero()) {
        if (const CActor* waypoint = TCastToConstPtr< CActor >(mgr.GetObjectById(x8_wpId))) {
          if (const CActor* actor = TCastToPtr< CActor >(&bc.GetOwner())) {
            const CVector3f lookDir = cmdMgr.GetTargetVector().AsNormalized();
            const float actorDot = CVector3f::Dot(actor->GetTransform().GetForward(),
                                                  waypoint->GetTransform().GetForward());
            const float lookDot = CVector3f::Dot(lookDir, waypoint->GetTransform().GetForward());
            if (actorDot < -0.5f || lookDot > 0.5f) {
              bc.FaceDirection(-lookDir, dt);
            }
          }
        }
      }

      if (cmdMgr.GetCmd(kBSC_ExitState) != nullptr || x18_25_needsExit) {
        x4_state = pas::kWHS_OutOfWallHang;
        const CPASAnimParmData parms(pas::kAS_WallHang, CPASAnimParm::FromEnum(x4_state));
        bc.PlayBestAnimation(parms, *mgr.Random());
      }
      FixInPlace(bc);
      break;
    }
    case pas::kWHS_Five:
      if (bc.IsAnimationOver()) {
        x4_state = pas::kWHS_WallHang;
        const CPASAnimParmData parms(pas::kAS_WallHang, CPASAnimParm::FromEnum(x4_state));
        bc.LoopBestAnimation(parms, *mgr.Random());
      }
      FixInPlace(bc);
      break;
    case pas::kWHS_OutOfWallHang:
      if (bc.IsAnimationOver()) {
        const CPASAnimParmData parms(pas::kAS_WallHang, CPASAnimParm::FromEnum(7));
        const rstl::pair< float, int > best =
            bc.GetPASDatabase().FindBestAnimation(parms, *mgr.Random(), -1);
        if (best.first > 0.f) {
          x4_state = pas::kWHS_OutOfWallHangTurn;
          const CAnimPlaybackParms playParms(best.second, -1, 1.f, true);
          bc.SetCurrentAnimation(playParms, false, false);
        } else {
          x4_state = pas::kWHS_DetachJumpLoop;
          const CPASAnimParmData loopParms(pas::kAS_WallHang, CPASAnimParm::FromEnum(x4_state));
          bc.LoopBestAnimation(loopParms, *mgr.Random());
        }

        if (CPhysicsActor* actor = TCastToPtr< CPhysicsActor >(&bc.GetOwner())) {
          mgr.DeliverScriptMsg(actor, kInvalidUniqueId, kSM_Jumped);
          x18_24_launched = false;
          if (const CActor* waypoint = TCastToConstPtr< CActor >(mgr.GetObjectById(x8_wpId))) {
            xc_launchVel = 15.f * waypoint->GetTransform().GetForward();
            xc_launchVel.SetZ(5.f);
          } else {
            xc_launchVel = -15.f * actor->GetTransform().GetForward();
          }
          actor->SetAngularMomentumWR(CAxisAngle::Identity());
        }
      }
      break;
    case pas::kWHS_OutOfWallHangTurn:
      SetLaunchVelocity(bc);
      if (bc.IsAnimationOver()) {
        x4_state = pas::kWHS_DetachJumpLoop;
        const CPASAnimParmData parms(pas::kAS_WallHang, CPASAnimParm::FromEnum(x4_state));
        bc.LoopBestAnimation(parms, *mgr.Random());
      } else {
        CheckForLand(bc, mgr);
      }
      break;
    case pas::kWHS_DetachJumpLoop:
      SetLaunchVelocity(bc);
      CheckForLand(bc, mgr);
      break;
    case pas::kWHS_DetachOutOfJump:
      if (bc.IsAnimationOver()) {
        x4_state = pas::kWHS_Invalid;
        state = pas::kAS_Locomotion;
      }
      break;
    default:
      break;
    }
  }
  return state;
}

void CBSWallHang::Shutdown(CBodyController& bc) {}

bool CBSWallHang::CheckForWall(CBodyController& bc, CStateManager& mgr) {
  bool result = false;
  if (CPatterned* actor = TCastToPtr< CPatterned >(&bc.GetOwner())) {
    const CActor* waypoint = TCastToConstPtr< CActor >(mgr.GetObjectById(x8_wpId));
    float magSq = 10.f;
    if (waypoint != nullptr) {
      magSq = (waypoint->GetTranslation() - actor->GetTranslation()).MagSquared();
    }

    if (magSq < 1.f || actor->IsInCollision()) {
      x4_state = pas::kWHS_IntoWallHang;
      const CPASAnimParmData parms(pas::kAS_WallHang, CPASAnimParm::FromEnum(x4_state));
      const rstl::pair< float, int > best =
          bc.GetPASDatabase().FindBestAnimation(parms, *mgr.Random(), -1);
      const CVector3f target =
          waypoint != nullptr ? waypoint->GetTranslation() : actor->GetTranslation();
      const CVector3f scale = bc.GetOwner().GetModelData()->ScaleCopy();
      const CAnimPlaybackParms playParms(best.second, nullptr, &target,
                                         &bc.GetOwner().GetTransform(), &scale, false);
      bc.SetCurrentAnimation(playParms, false, false);
      actor->SetVelocityWR(CVector3f::Zero());
      actor->SetMomentumWR(CVector3f::Zero());
      mgr.DeliverScriptMsg(actor, kInvalidUniqueId, kSM_OnFloor);
      result = true;
    }
  }
  return result;
}

bool CBSWallHang::CheckForLand(CBodyController& bc, CStateManager& mgr) {
  bool result = false;
  if (CPatterned* actor = TCastToPtr< CPatterned >(&bc.GetOwner())) {
    if (actor->IsInCollision() || actor->IsOnGround()) {
      x4_state = pas::kWHS_DetachOutOfJump;
      const CPASAnimParmData parms(pas::kAS_WallHang, CPASAnimParm::FromEnum(x4_state));
      bc.PlayBestAnimation(parms, *mgr.Random());
      mgr.DeliverScriptMsg(actor, kInvalidUniqueId, kSM_OnFloor);
      result = true;
    }
  }
  return result;
}

void CBSWallHang::FixInPlace(CBodyController& bc) {
  if (CPatterned* actor = TCastToPtr< CPatterned >(&bc.GetOwner())) {
    actor->SetConstantForceWR(CVector3f::Zero());
    actor->SetVelocityWR(CVector3f::Zero());
  }
}

pas::EAnimationState CBSWallHang::GetBodyStateTransition(float dt, CBodyController& bc) {
  CBodyStateCmdMgr& cmdMgr = bc.CommandMgr();
  if (cmdMgr.GetCmd(kBSC_Hurled) != nullptr) {
    return pas::kAS_Hurled;
  }
  if (cmdMgr.GetCmd(kBSC_KnockDown) != nullptr) {
    return pas::kAS_Fall;
  }
  return pas::kAS_Invalid;
}

bool CBSWallHang::IsMoving() const { return true; }
