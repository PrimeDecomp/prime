#ifndef _CGROUNDMOVEMENT
#define _CGROUNDMOVEMENT

#include "MetroidPrime/TGameTypes.hpp"
#include "rstl/reserved_vector.hpp"

class CStateManager;
class CPhysicsActor;

typedef rstl::reserved_vector< TUniqueId, 1024 > TEntityList;

class CGroundMovement {
public:
  static void MoveGroundCollider(CStateManager& mgr, CPhysicsActor& actor, float dt,
                                 const TEntityList* colliderList);
  static void MoveGroundCollider_New(CStateManager& mgr, CPhysicsActor& actor, float dt,
                                     const TEntityList* colliderList);
};

#endif
