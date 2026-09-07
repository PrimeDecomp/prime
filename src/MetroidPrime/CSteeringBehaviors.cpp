#include "MetroidPrime/CSteeringBehaviors.hpp"
#include "MetroidPrime/CPhysicsActor.hpp"

#include "Kyoto/Math/CMath.hpp"

CSteeringBehaviors::CSteeringBehaviors() : x0_(M_PIF / 2.f) {}

CVector3f CSteeringBehaviors::Flee(const CPhysicsActor& actor, const CVector3f& v0) const {
  CVector3f actVec = actor.GetTranslation() - v0;
  if (actVec.CanBeNormalized()) {
    return actVec.AsNormalized();
  }

  return actor.GetTransform().GetForward();
}

CVector3f CSteeringBehaviors::Seek(const CPhysicsActor& actor, const CVector3f& target) const {
  CVector3f posDiff = target - actor.GetTranslation();
  if (posDiff.CanBeNormalized()) {
    return posDiff.AsNormalized();
  }

  return CVector3f::Zero();
}

CVector3f CSteeringBehaviors::Arrival(const CPhysicsActor& actor, const CVector3f& dest,
                                      float dampingRadius) const {
  CVector3f posDiff = dest - actor.GetTranslation();
  if (posDiff.CanBeNormalized()) {
    if (posDiff.MagSquared() < (dampingRadius * dampingRadius)) {
      dampingRadius = posDiff.MagSquared() / (dampingRadius * dampingRadius);
    } else {
      dampingRadius = 1.f;
    }

    return dampingRadius * posDiff.AsNormalized();
  }

  return CVector3f::Zero();
}

CVector3f CSteeringBehaviors::Pursuit(const CPhysicsActor& actor, const CVector3f& v0,
                                      const CVector3f& v1) const {
  CVector3f target(CVector3f::Zero());
  const float mag = actor.GetVelocityWR().Magnitude();
  if (!ProjectLinearIntersection(actor.GetTranslation(), mag, v0, v1, target)) {
    target = v0 + v1 * 1.f;
  }

  const CVector3f ret = Seek(actor, target);
  return ret;
}

CVector3f CSteeringBehaviors::Separation(const CPhysicsActor& actor, const CVector3f& pos,
                                         float separation) const {
  CVector3f ret = CVector3f::Zero();
  const CVector3f posDiff = actor.GetTranslation() - pos;
  if (posDiff.MagSquared() < separation * separation) {
    const float t = (1.f - (posDiff.MagSquared() / (separation * separation)));
    ret =
        posDiff.CanBeNormalized() ? posDiff.AsNormalized() * t : actor.GetTransform().GetForward();
  }
  return ret;
}

CVector3f CSteeringBehaviors::Alignment(const CPhysicsActor& actor,
                                        rstl::reserved_vector< TUniqueId, 1024 >& list,
                                        const CStateManager& mgr) const {
  CVector3f align = CVector3f::Zero();

  if (!list.empty()) {
    for (int i = 0; i < list.size(); ++i) {
      if (const CActor* act = static_cast< const CActor* >(mgr.GetObjectById(list[i]))) {
        align += act->GetTransform().GetForward();
      }
    }

    align *= 1.f / list.size();
  }

  const float diff = CVector3f::GetAngleDiff(actor.GetTransform().GetForward(), align);
  align *= (diff / M_PIF);
  return align;
}

CVector3f CSteeringBehaviors::Cohesion(const CPhysicsActor& actor,
                                       rstl::reserved_vector< TUniqueId, 1024 >& list,
                                       const float dampingRadius, const CStateManager& mgr) const {
  CVector3f dest = CVector3f::Zero();
  if (!list.empty()) {
    for (int i = 0; i < list.size(); ++i) {
      if (const CActor* act = static_cast< const CActor* >(mgr.GetObjectById(list[i]))) {
        dest += act->GetTranslation();
      }
    }

    dest *= 1.f / list.size();
    return Arrival(actor, dest, dampingRadius);
  }
  return dest;
}

CVector2f CSteeringBehaviors::Flee2D(const CPhysicsActor& actor, const CVector2f& v0) const {
  const CVector2f diff = actor.GetTranslation().ToVec2f() - v0;
  if (diff.MagSquared() > FLT_EPSILON) {
    return diff.AsNormalized();
  }

  return actor.GetTransform().GetForward().ToVec2f();
}

CVector2f CSteeringBehaviors::Arrival2D(const CPhysicsActor& actor, const CVector2f& v0,
                                        const float) const {
  const CVector2f diffVec = v0 - actor.GetTranslation().ToVec2f();
  if (diffVec.MagSquared() > FLT_EPSILON) {
    return diffVec.AsNormalized();
  }

  return CVector2f::Zero();
}

bool CSteeringBehaviors::SolveQuadratic(const float a, const float b, const float c, float& xPos,
                                        float& xNeg) {
  const float q = b * b - 4.f * a * c;
  if (q < FLT_EPSILON || fabsf(a) < FLT_EPSILON) {
    return false;
  }

  const float qSq = CMath::SqrtF(q);
  xPos = (-b + qSq) / (2.f * a);
  xNeg = (-b - qSq) / (2.f * a);
  return true;
}