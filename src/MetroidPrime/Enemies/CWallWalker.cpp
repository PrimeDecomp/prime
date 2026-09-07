#include "MetroidPrime/Enemies/CWallWalker.hpp"

#include "Kyoto/Animation/CVertexMorphEffect.hpp"
#include "Kyoto/Math/CRelAngle.hpp"
#include "Kyoto/Math/CloseEnough.hpp"
#include "MetroidPrime/BodyState/CBodyController.hpp"
#include "MetroidPrime/CAnimData.hpp"
#include "MetroidPrime/CGameCollision.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/Enemies/CPatternedInfo.hpp"
#include "MetroidPrime/ScriptObjects/CScriptWaypoint.hpp"
#include "MetroidPrime/TCastTo.hpp"
#include "WorldFormat/CMetroidAreaCollider.hpp"

#pragma inline_max_size(250)

static const char* const skBendingAnimation = "BendingAnimationHack";

CWallWalker::CWallWalker(const EPatternedAI chr, const TUniqueId uid, const rstl::string& name,
                         const EFlavorType flavorType, const CEntityInfo& info,
                         const CTransform4f& xf, const CModelData& mData,
                         const CPatternedInfo& pInfo, const EMovementType moveType,
                         const EColliderType colType, const EBodyType bodyType,
                         const CActorParameters& actParms, const ECreatureSize kbVariant,
                         const float collisionCloseMargin, const EType walkerType,
                         const bool disableMove, const float alignAngVel,
                         const float advanceWpRadius, const float playerObstructionMinDist)
: CPatterned(chr, uid, name, flavorType, info, xf, mData, pInfo, moveType, colType, bodyType,
             actParms, kbVariant)
, x568_alignNormal(CVector3f::Zero(), CVector3f::Right(), CVector3f::Forward(), 0xffffffff)
, x590_colSphere(CSphere(CVector3f::Zero(), pInfo.GetHalfExtent()), GetMaterialList())
, x5b0_collisionCloseMargin(collisionCloseMargin)
, x5b4_alignAngVel(alignAngVel)
, x5b8_tumbleAngle(0.f)
, x5bc_patrolPauseRemTime(0.f)
, x5c0_advanceWpRadius(advanceWpRadius)
, x5c4_playerObstructionMinDist(playerObstructionMinDist)
, x5c8_bendingHackWeight(0.f)
, x5cc_bendingHackAnim(
      GetAnimationData()->GetCharacterInfo().GetAnimationIndex(rstl::string_l(skBendingAnimation)))
, x5d0_walkerType(walkerType)
, x5d4_thinkCounter(0)
, x5d6_24_alignToFloor(false)
, x5d6_25_hasAlignSurface(false)
, x5d6_26_playerObstructed(false)
, x5d6_27_disableMove(disableMove)
, x5d6_28_addBendingWeight(false)
, x5d6_29_applyBendingHack(false) {}

CVector3f CWallWalker::ProjectPointToPlane(const CVector3f& point, const CVector3f& planePoint,
                                           const CVector3f& normal) {
  return point - CVector3f::Dot(point - planePoint, normal) * normal;
}

CVector3f CWallWalker::ProjectVectorToPlane(const CVector3f& vec, const CVector3f& planeDir) {
  return vec - CVector3f::Dot(vec, planeDir) * planeDir;
}

bool CWallWalker::PointOnSurface(const CCollisionSurface& surface, const CVector3f& point) {
  const CVector3f projected = ProjectPointToPlane(point, surface.GetVert(0), surface.GetNormal());
  const CVector3f normal = surface.GetNormal();
  for (int i = 0; i < 3; ++i) {
    const CVector3f edge = surface.GetVert((i + 2) % 3) - surface.GetVert(i);
    const CVector3f delta = projected - surface.GetVert(i);
    const CVector3f cross = CVector3f::Cross(delta, edge);
    if (CVector3f::Dot(normal, cross) < 0.f) {
      return false;
    }
  }
  return true;
}

void CWallWalker::OrientToSurfaceNormal(const CVector3f& normal, float clampAngle) {
  const CVector3f& up = GetTransform().GetUp();
  const float dot = CVector3f::Dot(up, normal);
  if (close_enough(dot, 1.f)) {
    return;
  }
  if (dot < -0.999f) {
    return;
  }
  const CQuaternion rotation = CQuaternion::ClampedRotateTo(GetTransform().GetUp(), normal,
                                                            CRelAngle::FromDegrees(clampAngle));
  const CQuaternion localRotation(rotation.GetScalar(),
                                  GetTransform().TransposeRotate(rotation.GetVector()));
  SetRotation((CQuaternion::FromMatrix(GetTransform()) * localRotation).BuildNormalized());
}

void CWallWalker::AlignToFloor(CStateManager& mgr, float radius, const CVector3f& newPos,
                               float dt) {
  bool hasSurface = false;
  const CVector3f extent(radius + x5b0_collisionCloseMargin, radius + x5b0_collisionCloseMargin,
                         radius + x5b0_collisionCloseMargin);
  const CAABox bounds(newPos - extent, newPos + extent);
  CAreaCollisionCache cache(bounds);
  CGameCollision::BuildAreaCollisionCache(mgr, cache);
  float margin = radius + x5b0_collisionCloseMargin;
  if (x5d6_25_hasAlignSurface) {
    x5d6_25_hasAlignSurface = PointOnSurface(x568_alignNormal, newPos);
  }
  if (!x5d6_25_hasAlignSurface || !(x5d4_thinkCounter & 3)) {
    for (int i = 0; i < static_cast< int >(cache.GetNumCaches()); ++i) {
      const CMetroidAreaCollider::COctreeLeafCache& leaf = cache.GetOctreeLeafCache(i);
      for (int j = 0; j < leaf.GetNumLeaves(); ++j) {
        const CAreaOctTree::Node& node = leaf.GetLeaf(j);
        const CAreaOctTree::TriListReference triangles = node.GetTriangleArray();
        const CAreaOctTree& tree = node.GetOwner();
        const int triangleCount = triangles.GetSize();
        for (int k = 0; k < triangleCount; ++k) {
          const CCollisionSurface& surface = tree.GetMasterListTriangle(triangles.GetAt(k));
          const float planeConstant = surface.GetPlane().GetConstant();
          const float dist =
              CMath::AbsF(CVector3f::Dot(surface.GetNormal(), newPos) - planeConstant);
          if (dist < margin && PointOnSurface(surface, newPos)) {
            margin = dist;
            x568_alignNormal = surface;
            hasSurface = true;
          }
        }
      }
    }
    x5d6_25_hasAlignSurface = hasSurface;
  }
  if (x5d6_25_hasAlignSurface) {
    OrientToSurfaceNormal(CVector3f(x568_alignNormal.GetNormal()), x5b4_alignAngVel * dt);
    x5b8_tumbleAngle = 0.f;
    x5d6_28_addBendingWeight = false;
  } else {
    const float angularVelocity =
        CMath::Rad2Deg(GetVelocityWR().Magnitude()) / x590_colSphere.GetSphere().GetRadius();
    const float angle = angularVelocity * dt;
    OrientToSurfaceNormal(CVector3f(GetTransform().GetForward()), angle);
    if (x450_bodyController->HasBodyState(pas::kAS_Step)) {
      x450_bodyController->CommandMgr().DeliverCmd(CBCStepCmd(pas::kSD_Down, pas::kStep_Normal));
    } else {
      x5d6_28_addBendingWeight = true;
    }
    x5b8_tumbleAngle += angle;
  }
}

void CWallWalker::PreThink(float dt, CStateManager& mgr) {
  CPatterned::PreThink(dt, mgr);
  if (GetActive() && !x5d6_26_playerObstructed && x5bc_patrolPauseRemTime <= 0.f &&
      !x5d6_27_disableMove && close_enough(x450_bodyController->GetPercentageFrozen(), 0.f) &&
      x5d6_24_alignToFloor) {
    // Retail constructs both orientation snapshots around the motion update.
    const CQuaternion oldOrientation = CQuaternion::FromMatrix(GetTransform());
    const CMotionState motion = PredictMotion(dt);
    AddMotionState(motion);
    const CQuaternion newOrientation = CQuaternion::FromMatrix(GetTransform());
    ClearForcesAndTorques();
    if (x5d6_25_hasAlignSurface) {
      const CPlane plane = x568_alignNormal.GetPlane();
      const CVector3f position = GetTranslation();
      const CVector3f projected = position - (plane.GetHeight(GetTranslation()) -
                                              x590_colSphere.GetSphere().GetRadius() - 0.01f) *
                                                 plane.GetNormal();
      SetTranslation(CVector3f::Lerp(position, projected, 10.f * dt));
    }
    MoveCollisionPrimitive(CVector3f::Zero());
  }
}

void CWallWalker::GotoNextWaypoint(CStateManager& mgr) {
  if (CScriptWaypoint* waypoint = TCastToPtr< CScriptWaypoint >(mgr.ObjectById(x2dc_destObj))) {
    const CVector3f position = waypoint->GetTranslation();
    const CVector3f& delta = position - GetTranslation();
    if (delta.MagSquared() < x5c0_advanceWpRadius * x5c0_advanceWpRadius) {
      x2dc_destObj = waypoint->NextWaypoint(mgr);
      if (!close_enough(waypoint->GetPause(), 0.f)) {
        x5bc_patrolPauseRemTime = waypoint->GetPause();
        if (x5d0_walkerType == kWT_Parasite) {
          x450_bodyController->SetLocomotionType(pas::kLT_Relaxed);
        }
      }
      mgr.DeliverScriptMsg(waypoint, GetUniqueId(), kSM_Arrived);
    }
    SetDestPos(position);
  }
}

void CWallWalker::Render(const CStateManager& mgr) const { CPatterned::Render(mgr); }

void CWallWalker::Think(float dt, CStateManager& mgr) {
  CPatterned::Think(dt, mgr);
  if (x5cc_bendingHackAnim == -1) {
    return;
  }
  if (x5d6_28_addBendingWeight) {
    if (x5c8_bendingHackWeight < 1.f) {
      const float speed = GetVelocityWR().Magnitude();
      const float weight = dt * speed / 0.6f;
      x5c8_bendingHackWeight += weight;
      if (x5c8_bendingHackWeight >= 1.f) {
        x5c8_bendingHackWeight = 1.f;
      }
    }
  } else if (x5c8_bendingHackWeight > 0.f) {
    const float speed = GetVelocityWR().Magnitude();
    const float weight = dt * speed / 1.5f;
    x5c8_bendingHackWeight -= weight;
    if (x5c8_bendingHackWeight <= 0.f) {
      x5c8_bendingHackWeight = 0.f;
    }
  }
  if (x5c8_bendingHackWeight > 0.f || x5d6_29_applyBendingHack) {
    if (x5c8_bendingHackWeight > 0.0001f) {
      AnimationData()->AddAdditiveAnimation(x5cc_bendingHackAnim, x5c8_bendingHackWeight, true,
                                            false);
      x5d6_29_applyBendingHack = true;
    } else {
      AnimationData()->DelAdditiveAnimation(x5cc_bendingHackAnim);
      x5d6_29_applyBendingHack = false;
    }
  }
}
