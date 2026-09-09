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
  CVector2f Arrival2D(const CPhysicsActor& actor, const CVector2f& v0) const;
  static bool SolveQuadratic(const float a, const float b, const float c, float& xPos, float& xNeg);
  static bool SolveCubic(const rstl::reserved_vector< float, 4 >& coefficients,
                         rstl::reserved_vector< float, 4 >& roots);
  static bool SolveQuartic(const rstl::reserved_vector< float, 5 >& coefficients,
                           rstl::reserved_vector< float, 4 >& roots);
  static bool ProjectLinearIntersection(const CVector3f& origin, float speed,
                                        const CVector3f& position, const CVector3f& velocity,
                                        CVector3f& intersection);
  static bool ProjectLinearIntersection(const CVector3f& origin, float speed,
                                        const CVector3f& position, const CVector3f& velocity,
                                        const CVector3f& acceleration, CVector3f& intersection);

  static bool ProjectOrbitalIntersection(const CVector3f& origin, float speed, float dt,
                                         const CVector3f& position, const CVector3f& velocity,
                                         const CVector3f& orbitPoint, CVector3f& intersection);
  static bool ProjectOrbitalIntersection(const CVector3f& origin, float speed, float dt,
                                         const CVector3f& position, const CVector3f& velocity,
                                         const CVector3f& acceleration, const CVector3f& orbitPoint,
                                         CVector3f& intersection);

  static CVector3f ProjectOrbitalPosition(const CVector3f& position, const CVector3f& velocity,
                                          const CVector3f& orbitPoint, float dt, float preThinkDt);

private:
  float x0_;
};
CHECK_SIZEOF(CSteeringBehaviors, 0x4)

#endif // _CSTEERINGBEHAVIORS
