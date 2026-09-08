#ifndef _CGROUNDMOVEMENT
#define _CGROUNDMOVEMENT

#include "Collision/CCollisionInfo.hpp"
#include "MetroidPrime/TGameTypes.hpp"
#include "rstl/optional_object.hpp"
#include "rstl/reserved_vector.hpp"

class CStateManager;
class CPhysicsActor;
class CAreaCollisionCache;
class CMaterialFilter;
class CCollisionInfoList;

typedef rstl::reserved_vector< TUniqueId, 1024 > TEntityList;

class CGroundMovement {
public:
  struct SMovementOptions {
    bool x0_setWaterLandingForce;
    float x4_waterLandingForceCoefficient;
    float x8_minimumWaterLandingForce;
    float xc_anyZThreshold;
    float x10_downwardZThreshold;
    float x14_waterLandingVelocityReduction;
    bool x18_dampForceAndMomentum;
    bool x19_alwaysClip;
    bool x1a_disableClipForFloorOnly;
    uint x1c_maxCollisionCycles;
    float x20_minimumTranslationDelta;
    float x24_dampedNormalCoefficient;
    float x28_dampedDeltaCoefficient;
    float x2c_floorElasticForce;
    float x30_wallElasticConstant;
    float x34_wallElasticLinear;
    float x38_maxPositiveVerticalVelocity;
    rstl::optional_object< CVector3f > x3c_floorPlaneNormal;

    SMovementOptions() {}
  };
  struct SMoveObjectResult {
    rstl::optional_object< TUniqueId > x0_id;
    rstl::optional_object< CCollisionInfo > x8_collision;
    uint x6c_processedCollisions;
    float x70_processedDt;
  };

  static void CheckFalling(CPhysicsActor& actor, CStateManager& mgr, float dt);
  static void MoveGroundCollider(CStateManager& mgr, CPhysicsActor& actor, float dt,
                                 const TEntityList* colliderList);
  static void MoveGroundCollider_New(CStateManager& mgr, CPhysicsActor& actor, float dt,
                                     const TEntityList* colliderList);
  static bool ResolveUpDown(CAreaCollisionCache& cache, CStateManager& mgr, CPhysicsActor& actor,
                            const CMaterialFilter& filter, const TEntityList& nearList,
                            float stepUp, float stepDown, float& resolved,
                            CCollisionInfoList& list);
  static bool MoveGroundColliderZ(CAreaCollisionCache& cache, CStateManager& mgr,
                                  CPhysicsActor& actor, const CMaterialFilter& filter,
                                  const TEntityList& nearList, float amount, float& resolved,
                                  CCollisionInfoList& list, TUniqueId& idOut);
  static bool MoveGroundColliderXY(CAreaCollisionCache& cache, CStateManager& mgr,
                                   CPhysicsActor& actor, const CMaterialFilter& filter,
                                   const TEntityList& nearList, float dt);
  static CVector3f CollisionDamping(const CVector3f& velocity, const CVector3f& direction,
                                    const CVector3f& normal, float normalCoefficient,
                                    float deltaCoefficient);
  static bool RemoveNormalComponent(const CVector3f& normal, const CVector3f& direction,
                                    CVector3f& collisionNormal, float& normalDot);
  static bool RemoveNormalComponent(const CVector3f& normal, CVector3f& velocity);
  static CMaterialList MoveObjectAnalytical(CStateManager& mgr, CPhysicsActor& actor, float dt,
                                            const TEntityList& nearList, CAreaCollisionCache& cache,
                                            const SMovementOptions& options,
                                            SMoveObjectResult& result);
};

NESTED_CHECK_SIZEOF(CGroundMovement, SMovementOptions, 0x4c)
NESTED_CHECK_SIZEOF(CGroundMovement, SMoveObjectResult, 0x74)

#endif
