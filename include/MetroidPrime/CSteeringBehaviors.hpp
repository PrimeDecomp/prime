#ifndef _CSTEERINGBEHAVIORS
#define _CSTEERINGBEHAVIORS

#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Math/CVector2f.hpp"

#include "rstl/reserved_vector.hpp"

#include "types.h"

class CStateManager;
class CVector3f;
class CPhysicsActor;

class CSteeringBehaviors {
public:
  CSteeringBehaviors();
  CVector3f Flee(const CPhysicsActor& actor, const CVector3f& v0) const;
  CVector3f Seek(const CPhysicsActor& actor, const CVector3f& target) const;
  CVector3f Arrival(const CPhysicsActor& actor, const CVector3f& dest, float dampingRadius) const;
  CVector3f Pursuit(const CPhysicsActor& actor, const CVector3f& v0, const CVector3f& v1) const;
  CVector3f Separation(const CPhysicsActor& actor, const CVector3f& pos, float maxDist) const;
  CVector3f Alignment(const CPhysicsActor& actor, rstl::reserved_vector< TUniqueId, 1024 >& list,
                      const CStateManager& mgr) const;

  CVector3f Cohesion(const CPhysicsActor& actor, rstl::reserved_vector< TUniqueId, 1024 >& list,
                     float dampingRadius, const CStateManager& mgr) const;

  CVector2f Flee2D(const CPhysicsActor& actor, const CVector2f& v0) const;
  CVector2f Arrival2D(const CPhysicsActor& actor, const CVector2f& v0, const float) const;
  static bool SolveQuadratic(const float a, const float b, const float c, float& xPos, float& xNeg);
  static bool ProjectLinearIntersection(const CVector3f& v0, float f1, const CVector3f& v1,
                                        const CVector3f& v2, CVector3f& v3);
  static bool ProjectLinearIntersection(const CVector3f& v0, float f1, const CVector3f& v1,
                                        const CVector3f& v2, const CVector3f& v3, CVector3f& v4);

  static bool ProjectOrbitalIntersection(const CVector3f& v0, float f1, float f2,
                                         const CVector3f& v1, const CVector3f& v2,
                                         const CVector3f& v3, CVector3f& v4);
  static bool ProjectOrbitalIntersection(const CVector3f& v0, float f1, float f2,
                                         const CVector3f& v1, const CVector3f& v2,
                                         const CVector3f& v3, const CVector3f& v4, CVector3f& v5);

  static CVector3f ProjectOrbitalPosition(const CVector3f& pos, const CVector3f& vel,
                                          const CVector3f& orbitPoint, float dt, float preThinkDt);

private:
  float x0_;
};
CHECK_SIZEOF(CSteeringBehaviors, 0x4)

#endif // _CSTEERINGBEHAVIORS
