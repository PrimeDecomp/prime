#include "MetroidPrime/CRagDoll.hpp"
#include "Collision/CCollidableSphere.hpp"
#include "Collision/CCollisionInfo.hpp"
#include "MetroidPrime/CAnimData.hpp"
#include "MetroidPrime/CGameCollision.hpp"
#include "MetroidPrime/CModelData.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "WorldFormat/CMetroidAreaCollider.hpp"

#include "Kyoto/Animation/CCharLayoutInfo.hpp"
#include "Kyoto/Animation/CHierarchyPoseBuilder.hpp"
#include "Kyoto/Math/CMath.hpp"

#include <float.h>

CRagDoll::CRagDoll(float normalGravity, float floatingGravity, float overTime, uint flags)
: x44_normalGravity(normalGravity)
, x48_floatingGravity(floatingGravity)
, x4c_impactCount(0)
, x50_overTimer(overTime)
, x54_impactVel(0.f)
, x58_averageVel(CVector3f::Zero())
, x64_angTimer(0.f)
, x68_24_prevMovingSlowly(false)
, x68_25_over(false)
, x68_26_primed(false)
, x68_27_continueSmallMovements((flags & 1) != 0)
, x68_28_noOverTimer((flags & 2) != 0)
, x68_29_noAiCollision((flags & 4) != 0) {}

void CRagDoll::SatisfyWorldConstraintsOnConstruction(CStateManager& mgr) {
  for (int i = 0; i < x4_particles.size(); ++i) {
    x4_particles[i].x3c_24_impactPending = true;
  }
  SatisfyWorldConstraints(mgr, 2);
  for (int i = 0; i < x4_particles.size(); ++i) {
    x4_particles[i].x14_prevPos = x4_particles[i].x4_curPos;
  }
}

void CRagDoll::Prime(CStateManager& mgr, const CTransform4f& xf, CModelData& mData) {
  const CVector3f& scale = CVector3f(mData.GetScale());
  CAnimData* animData = mData.AnimationData();
  animData->BuildPose();
  for (int i = 0; i < x4_particles.size(); ++i) {
    CSegId id = x4_particles[i].GetBone();
    if (id != CSegId::Invalid()) {
      x4_particles[i].x4_curPos =
          xf * CVector3f::ByElementMultiply(scale, animData->GetPose().GetOffset(id));
    }
  }
  SatisfyWorldConstraints(mgr, 2);
  for (int i = 0; i < x4_particles.size(); ++i) {
    x4_particles[i].x3c_24_impactPending = false;
  }
  x68_26_primed = true;
}

void CRagDoll::Verlet(float dt) {
  for (int i = 0; i < x4_particles.size(); ++i) {
    CVector3f& pos = x4_particles[i].x4_curPos;
    CVector3f& prevPos = x4_particles[i].x14_prevPos;
    CVector3f oldPos = pos;
    float damping = x4_particles[i].x3c_24_impactPending ? 0.9f : 1.f;
    pos += damping * (pos - prevPos);
    pos += dt * (dt * x4_particles[i].x20_velocity);
    pos += x4_particles[i].x2c_impactResponseDelta;
    prevPos = oldPos;
    const CVector3f& delta = pos - prevPos;
    if (delta.MagSquared() > 4.f) {
      pos = prevPos + 2.f * CVector3f(delta).AsNormalized();
    }
    x4_particles[i].x3c_24_impactPending = false;
    x4_particles[i].x2c_impactResponseDelta = CVector3f::Zero();
  }
}

void CRagDoll::AccumulateForces(float dt, float waterTop) {
  float inverseDt = 1.f / dt;
  x64_angTimer += dt;
  if (x64_angTimer > 4.f) {
    x64_angTimer -= 4.f;
  }
  float targetZ = 0.1f * CMath::FastSinR(1.5707964f * x64_angTimer) + (waterTop - 0.2f);
  CVector3f centerOfVolume = CVector3f::Zero();
  float totalVolume = 0.f;
  for (int i = 0; i < x4_particles.size(); ++i) {
    CRagDollParticle& particle = x4_particles[i];
    float volume = particle.x10_radius * particle.x10_radius * particle.x10_radius;
    totalVolume += volume;
    centerOfVolume += volume * particle.x4_curPos;
    float fromTargetZ = particle.x4_curPos.GetZ() - targetZ;
    float verticalAcc = x48_floatingGravity;
    float termVelCoefficient = 0.f;
    if (CMath::AbsF(fromTargetZ) < 0.5f) {
      termVelCoefficient = 0.5f * fromTargetZ / 0.5f + 0.5f;
      verticalAcc *= -fromTargetZ / 0.5f;
    } else if (fromTargetZ > 0.f) {
      verticalAcc = x44_normalGravity;
      termVelCoefficient = 1.f;
    }
    particle.x20_velocity[kDZ] += verticalAcc;
    CVector3f velocity = inverseDt * (particle.x4_curPos - particle.x14_prevPos);
    float speed = velocity.Magnitude();
    if (speed > FLT_EPSILON) {
      CVector3f direction = (1.f / speed) * velocity;
      float drag = 0.75f * (1.2f * termVelCoefficient + 1000.f * (1.f - termVelCoefficient));
      float acceleration = drag * speed * speed / (8000.f * particle.x10_radius);
      particle.x20_velocity -= acceleration * direction;
    }
  }
  float inverseVolume = 1.f / totalVolume;
  CVector3f averageTorque = CVector3f::Zero();
  centerOfVolume *= inverseVolume;
  for (int i = 0; i < x4_particles.size(); ++i) {
    CRagDollParticle& particle = x4_particles[i];
    float volume = particle.x10_radius * particle.x10_radius * particle.x10_radius;
    averageTorque += volume * CVector3f::Cross(particle.x4_curPos - centerOfVolume,
                                               particle.x4_curPos - particle.x14_prevPos);
  }
  averageTorque *= inverseDt * inverseVolume;
  if (averageTorque.CanBeNormalized()) {
    for (int i = 0; i < x4_particles.size(); ++i) {
      CRagDollParticle& particle = x4_particles[i];
      particle.x20_velocity -=
          25.f * CVector3f::Cross(averageTorque, particle.x4_curPos - centerOfVolume);
    }
  }
}

bool CRagDoll::SatisfyWorldConstraints(CStateManager& mgr, int pass) {
  CAABox bounds = CAABox::MakeMaxInvertedBox();
  for (int i = 0; i < x4_particles.size(); ++i) {
    if (pass == 1 || x4_particles[i].x3c_24_impactPending) {
      float radius = x4_particles[i].x10_radius;
      CVector3f extent(radius, radius, radius);
      bounds.AccumulateBounds(x4_particles[i].x14_prevPos - extent);
      bounds.AccumulateBounds(x4_particles[i].x14_prevPos + extent);
      bounds.AccumulateBounds(x4_particles[i].x4_curPos - extent);
      bounds.AccumulateBounds(x4_particles[i].x4_curPos + extent);
    }
  }
  CAreaCollisionCache cache(bounds);
  CGameCollision::BuildAreaCollisionCache(mgr, cache);
  bool needsSecondPass = false;
  TUniqueId bestId = kInvalidUniqueId;
  CMaterialList include =
      x68_29_noAiCollision ? CMaterialList(kMT_Solid) : CMaterialList(kMT_Solid, kMT_AIBlock);
  CMaterialFilter filter = CMaterialFilter::MakeIncludeExclude(
      include, x68_29_noAiCollision
                   ? CMaterialList(kMT_Character, kMT_Player, kMT_AIBlock, kMT_Occluder)
                   : CMaterialList(kMT_Character, kMT_Player));
  TEntityList nearList;
  mgr.BuildNearList(nearList, bounds, filter, nullptr);
  for (int i = 0; i < x4_particles.size(); ++i) {
    if (pass == 1 || x4_particles[i].x3c_24_impactPending) {
      CVector3f delta = x4_particles[i].x4_curPos - x4_particles[i].x14_prevPos;
      float magnitude = delta.Magnitude();
      if (magnitude > 0.0001f) {
        delta *= 1.f / magnitude;
        CSphere sphere(x4_particles[i].x14_prevPos, x4_particles[i].x10_radius);
        double distance = magnitude;
        CCollisionInfo info;
        CGameCollision::DetectCollision_Cached_Moving(
            mgr, cache, CCollidableSphere(sphere, include), CTransform4f::Identity(), filter,
            nearList, delta, bestId, info, distance);
        if (info.IsValid()) {
          needsSecondPass = true;
          switch (pass) {
          case 1: {
            x4_particles[i].x3c_24_impactPending = true;
            float dot = CVector3f::Dot(delta, info.GetNormalLeft());
            x4_particles[i].x38_impactFrameVel = -dot * magnitude;
            x4_particles[i].x2c_impactResponseDelta =
                magnitude * (-0.125f * dot) * info.GetNormalLeft();
            float penetration = (magnitude - static_cast< float >(distance)) * dot;
            x4_particles[i].x4_curPos += (0.0001f - penetration) * info.GetNormalLeft();
            break;
          }
          case 2:
            x4_particles[i].x4_curPos =
                x4_particles[i].x14_prevPos + static_cast< float >(distance - 0.0001) * delta;
            break;
          }
        }
      } else if (!x68_27_continueSmallMovements) {
        x4_particles[i].x4_curPos = x4_particles[i].x14_prevPos;
      }
    }
  }
  return needsSecondPass;
}

void CRagDoll::SatisfyConstraints(CStateManager& mgr) {
  int i;
  for (i = 0; i < x14_lengthConstraints.size(); ++i) {
    x14_lengthConstraints[i].Update();
  }
  for (i = 0; i < x24_jointConstraints.size(); ++i) {
    x24_jointConstraints[i].Update();
  }
  for (i = 0; i < x34_planeConstraints.size(); ++i) {
    x34_planeConstraints[i].Update();
  }
  if (SatisfyWorldConstraints(mgr, 1)) {
    SatisfyWorldConstraints(mgr, 2);
  }
}

void CRagDoll::ClearForces() {
  for (int i = 0; i < x4_particles.size(); ++i) {
    x4_particles[i].x20_velocity = CVector3f::Zero();
  }
}

void CRagDoll::CheckStatic(float dt) {
  x4c_impactCount = 0;
  x54_impactVel = 0.f;
  float halfDt = 0.5f * dt;
  float threshold = halfDt * halfDt;
  x58_averageVel = CVector3f::Zero();
  bool movingSlowly = true;
  for (int i = 0; i < x4_particles.size(); ++i) {
    CVector3f delta = x4_particles[i].x4_curPos - x4_particles[i].x14_prevPos;
    x58_averageVel += delta;
    if (delta.MagSquared() > threshold) {
      movingSlowly = false;
    }
    if (x4_particles[i].x3c_24_impactPending) {
      ++x4c_impactCount;
      x54_impactVel = CMath::Max(x54_impactVel, x4_particles[i].x38_impactFrameVel);
    }
  }
  if (!x4_particles.empty()) {
    x58_averageVel *= 1.f / (dt * x4_particles.size());
  }
  x54_impactVel /= dt;
  if (!x68_28_noOverTimer) {
    x50_overTimer -= dt;
    if (x50_overTimer <= 0.f) {
      x68_25_over = true;
    }
  }
  if (movingSlowly && x68_24_prevMovingSlowly) {
    x68_25_over = true;
  }
  x68_24_prevMovingSlowly = movingSlowly;
}

void CRagDoll::Update(CStateManager& mgr, float dt, float waterTop) {
  if (!IsOver() || WillContinueSmallMovements()) {
    AccumulateForces(dt, waterTop);
    Verlet(dt);
    SatisfyConstraints(mgr);
    ClearForces();
    CheckStatic(dt);
  }
}

void CRagDoll::CRagDollLengthConstraint::Update() {
  CVector3f& p1 = x0_p1->Position();
  CVector3f& p2 = x4_p2->Position();
  const CVector3f delta = p2 - p1;
  float magSquared = delta.MagSquared();
  float lengthSquared = x8_length * x8_length;
  bool solve = true;
  switch (xc_ineqType) {
  case 1:
    solve = magSquared < lengthSquared;
    break;
  case 2:
    solve = magSquared > lengthSquared;
    break;
  }
  if (solve) {
    const CVector3f correction = delta * (lengthSquared / (magSquared + lengthSquared) - 0.5f);
    p1 -= correction;
    p2 += correction;
  }
}

void CRagDoll::CRagDollJointConstraint::Update() {
  const CVector3f plane = CVector3f::Cross(x8_p3->GetPosition() - x0_p1->GetPosition(),
                                           x4_p2->GetPosition() - x0_p1->GetPosition());
  const CVector3f limb = x10_p5->GetPosition() - xc_p4->GetPosition();
  const CVector3f cross = CVector3f::Cross(limb, plane);
  if (cross.CanBeNormalized()) {
    const CVector3f normal = CVector3f::Cross(cross, limb).AsNormalized();
    const CVector3f delta = x14_p6->GetPosition() - x10_p5->GetPosition();
    float distance = CVector3f::Dot(delta, normal);
    if (distance > 0.f) {
      const CVector3f correction = 0.5f * distance * normal;
      x14_p6->Position() -= correction;
      x10_p5->Position() += correction;
    }
  }
}

void CRagDoll::CRagDollPlaneConstraint::Update() {
  const CVector3f normal = (x4_p2->GetPosition() - x0_p1->GetPosition()).AsNormalized();
  const CVector3f delta = xc_p4->GetPosition() - x8_p3->GetPosition();
  float distance = CVector3f::Dot(normal, delta);
  if (distance < 0.f) {
    const CVector3f correction = 0.5f * distance * normal;
    xc_p4->Position() -= correction;
    x10_p5->Position() += correction;
  }
}

void CRagDoll::AddParticle(const CSegId& id, const CVector3f& prevPos, const CVector3f& curPos,
                           float radius) {
  x4_particles.push_back(CRagDollParticle(id, curPos, radius, prevPos));
}

void CRagDoll::AddLengthConstraint(int i1, int i2) {
  x14_lengthConstraints.push_back(CRagDollLengthConstraint(
      &x4_particles[i1], &x4_particles[i2],
      (x4_particles[i1].GetPosition() - x4_particles[i2].GetPosition()).Magnitude(), 0));
}

void CRagDoll::AddMinLengthConstraint(int i1, int i2, float length) {
  x14_lengthConstraints.push_back(
      CRagDollLengthConstraint(&x4_particles[i1], &x4_particles[i2], length, 1));
}

void CRagDoll::AddMaxLengthConstraint(int i1, int i2, float length) {
  x14_lengthConstraints.push_back(
      CRagDollLengthConstraint(&x4_particles[i1], &x4_particles[i2], length, 2));
}

void CRagDoll::AddJointConstraint(int i1, int i2, int i3, int i4, int i5, int i6) {
  x24_jointConstraints.push_back(CRagDollJointConstraint(&x4_particles[i1], &x4_particles[i2],
                                                         &x4_particles[i3], &x4_particles[i4],
                                                         &x4_particles[i5], &x4_particles[i6]));
}

CQuaternion CRagDoll::BoneAlign(CHierarchyPoseBuilder& pb, const CCharLayoutInfo& charInfo, int i1,
                                int i2, const CQuaternion& q) {
  CVector3f fromParent = charInfo.GetFromParentUnrotated(x4_particles[i2].GetBone());
  CVector3f delta = x4_particles[i2].x4_curPos - x4_particles[i1].GetPosition();
  delta = CQuaternion::ScalarVector(q.GetScalar(), -q.GetVector()).Transform(delta);
  CQuaternion rotation = CQuaternion::ShortestRotationArc(fromParent, delta);
  pb.Insert(x4_particles[i1].GetBone(), rotation);
  return rotation;
}

CAABox CRagDoll::CalculateRenderBounds() const {
  CVector3f min(FLT_MAX, FLT_MAX, FLT_MAX);
  CVector3f max(-FLT_MAX, -FLT_MAX, -FLT_MAX);
  for (int i = 0; i < x4_particles.size(); ++i) {
    for (int j = 0; j < 3; ++j) {
      min[j] = CMath::Min(min[j], x4_particles[i].GetPosition()[j] - x4_particles[i].GetRadius());
      max[j] = CMath::Max(max[j], x4_particles[i].GetPosition()[j] + x4_particles[i].GetRadius());
    }
  }
  return CAABox(min, max);
}

void CRagDoll::PreRender(const CVector3f& pos, CModelData& mData) {}
