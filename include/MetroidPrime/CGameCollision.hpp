#ifndef _CGAMECOLLISION
#define _CGAMECOLLISION

#include "types.h"

#include "MetroidPrime/CStateManager.hpp"

class CActor;
class CAreaCollisionCache;
class CCollisionInfo;
class CCollisionInfoList;
class CCollisionPrimitive;
class CGameArea;
class CMaterialFilter;
class CStateManager;
class CTransform4f;
class CRayCastResult;
class CPhysicsActor;
class CInternalCollisionStructure;
class CUnitVector3f;
class ICollisionFilter;

class CGameCollision {
public:
  static void InitCollision();
  static bool NullCollisionCollider(const CInternalCollisionStructure&, CCollisionInfoList&);
  static bool NullBooleanCollider(const CInternalCollisionStructure&);
  static bool NullMovingCollider(const CInternalCollisionStructure&, const CVector3f&, double&,
                                 CCollisionInfo&);
  static bool DetectStaticCollisionBoolean(const CStateManager&, const CCollisionPrimitive&,
                                           const CTransform4f&, const CMaterialFilter&);
  static bool DetectStaticCollisionBoolean_Cached(const CStateManager&, CAreaCollisionCache&,
                                                  const CCollisionPrimitive&,
                                                  const CTransform4f&,
                                                  const CMaterialFilter&);
  static bool DetectStaticCollision(const CStateManager&, const CCollisionPrimitive&,
                                    const CTransform4f&, const CMaterialFilter&,
                                    CCollisionInfoList&);
  static bool DetectStaticCollision_Cached(const CStateManager&, CAreaCollisionCache&,
                                           const CCollisionPrimitive&, const CTransform4f&,
                                           const CMaterialFilter&, CCollisionInfoList&);
  static bool DetectStaticCollision_Cached_Moving(const CStateManager&, CAreaCollisionCache&,
                                                  const CCollisionPrimitive&,
                                                  const CTransform4f&,
                                                  const CMaterialFilter&, CVector3f,
                                                  CCollisionInfo&, double&);
  static bool DetectDynamicCollisionBoolean(const CCollisionPrimitive&, const CTransform4f&,
                                            const TEntityList&, const CStateManager&);
  static bool DetectDynamicCollision(const CCollisionPrimitive&, const CTransform4f&,
                                     const TEntityList&, TUniqueId&, CCollisionInfoList&,
                                     const CStateManager&);
  static bool DetectDynamicCollisionMoving(const CCollisionPrimitive&, const CTransform4f&,
                                           const TEntityList&, CVector3f, TUniqueId&,
                                           CCollisionInfo&, double&, const CStateManager&);
  static void BuildAreaCollisionCache(const CStateManager& mgr, CAreaCollisionCache& cache);
  static bool DetectCollisionBoolean(const CStateManager& mgr, const CCollisionPrimitive& prim,
                                     const CTransform4f& xf, const CMaterialFilter& filter,
                                     const TEntityList& nearList);
  static bool DetectCollisionBoolean_Cached(const CStateManager& mgr, CAreaCollisionCache& cache,
                                            const CCollisionPrimitive& prim, const CTransform4f& xf,
                                            const CMaterialFilter& filter,
                                            const TEntityList& nearList);
  static bool DetectCollision(const CStateManager&, const CCollisionPrimitive&,
                              const CTransform4f&, const CMaterialFilter&, const TEntityList&,
                              TUniqueId&, CCollisionInfoList&);
  static bool DetectCollision_Cached(const CStateManager&, CAreaCollisionCache&,
                                     const CCollisionPrimitive&, const CTransform4f&,
                                     const CMaterialFilter&, const TEntityList&, TUniqueId&,
                                     CCollisionInfoList&);
  static bool DetectCollision_Cached_Moving(const CStateManager&, CAreaCollisionCache&,
                                            const CCollisionPrimitive&, const CTransform4f&,
                                            const CMaterialFilter&, const TEntityList&, CVector3f,
                                            TUniqueId&, CCollisionInfo&, double&);
  static CRayCastResult RayStaticIntersection(const CStateManager&, const CVector3f&,
                                              const CVector3f&, float, const CMaterialFilter&);
  static bool RayStaticIntersectionBool(const CStateManager&, const CVector3f&, const CVector3f&,
                                        float, const CMaterialFilter&);
  static bool RayStaticIntersectionArea(const CGameArea&, const CVector3f&, const CVector3f&, float,
                                        const CMaterialFilter&);
  static CRayCastResult RayDynamicIntersection(const CStateManager& mgr, TUniqueId& idOut,
                                               const CVector3f& pos, const CVector3f& dir,
                                               float mag, const CMaterialFilter& filter,
                                               const TEntityList& nearList);
  static bool RayDynamicIntersectionBool(const CStateManager&, const CVector3f&, const CVector3f&,
                                         const CMaterialFilter&, TEntityList, const CActor*, float);
  static CRayCastResult RayWorldIntersection(const CStateManager& mgr, TUniqueId& idOut,
                                             const CVector3f& pos, const CVector3f& dir,
                                             float mag, const CMaterialFilter& filter,
                                             const TEntityList& nearList);
  static rstl::optional_object< CVector3f >
  FindNonIntersectingVector(const CStateManager& mgr, CAreaCollisionCache& cache,
                            CPhysicsActor& actor, const CCollisionPrimitive& prim,
                            const TEntityList& nearList); // name?
  static void CollisionFailsafe(const CStateManager& mgr, CAreaCollisionCache& cache,
                                CPhysicsActor& actor,
                                const CCollisionPrimitive& prim,
                                const TEntityList& nearList, float dt,
                                uint failsafeTicks);
  static void AvoidStaticCollisionWithinRadius(const CStateManager& mgr, CPhysicsActor& actor,
                                               uint iterations, float dt, float height,
                                               float size, float mass, float radius);
  static void Move(CStateManager& mgr, CPhysicsActor& actor, float dt, const TEntityList*);
  static void MovePlayer(CStateManager& mgr, CPhysicsActor& actor, float dt,
                         const TEntityList*);
  static void MoveAndCollide(CStateManager& mgr, CPhysicsActor& actor, float dt,
                             const ICollisionFilter& filter, const TEntityList*);

  static void MakeCollisionCallbacks(CStateManager&, CPhysicsActor&, const TUniqueId&,
                                     const CCollisionInfoList&);
  static void SendScriptMessages(CStateManager&, CActor&, CActor*, const CCollisionInfoList&);
  static void SendMaterialMessage(CStateManager&, const CMaterialList&, CActor&);
  static void ShowCollisionResults(CCollisionInfoList& list, const CColor& color);
  static float GetCoefficientOfRestitution(const CCollisionInfo& info);
  static bool IsFloor(const CMaterialList& material, const CVector3f& normal);
  static bool CanBlock(const CMaterialList& material, const CVector3f& normal);
  static float GetMinExtentForCollisionPrimitive(const CCollisionPrimitive&);
  static void ResolveCollisions(CPhysicsActor&, CPhysicsActor*, const CCollisionInfoList&);
  static void CollideWithStaticBodyNoRot(CPhysicsActor&, const CMaterialList&, const CMaterialList&,
                                         const CUnitVector3f&, float, bool);
  static void CollideWithDynamicBodyNoRot(CPhysicsActor&, CPhysicsActor&, const CCollisionInfo&,
                                          float, bool);
  static CVector3f GetActorRelativeVelocities(const CPhysicsActor*, const CPhysicsActor*);
};

#endif // _CGAMECOLLISION
