#ifndef _CGAMECOLLISION
#define _CGAMECOLLISION

#include "types.h"

#include "MetroidPrime/CStateManager.hpp"

class CAreaCollisionCache;
class CCollisionInfo;
class CCollisionPrimitive;
class CMaterialFilter;
class CStateManager;
class CTransform4f;
class CRayCastResult;
class CPhysicsActor;

class CGameCollision {
public:
  static void InitCollision();
  static bool DetectStaticCollisionBoolean(const CStateManager&, const CCollisionPrimitive&,
                                           const CTransform4f&, const CMaterialFilter&);
  static bool DetectDynamicCollisionBoolean(const CCollisionPrimitive&, const CTransform4f&,
                                            const TEntityList&, const CStateManager&);
  static void BuildAreaCollisionCache(const CStateManager& mgr, CAreaCollisionCache& cache);
  static bool DetectCollisionBoolean(const CStateManager& mgr, const CCollisionPrimitive& prim,
                                     const CTransform4f& xf, const CMaterialFilter& filter,
                                     const TEntityList& nearList);
  static bool DetectCollisionBoolean_Cached(const CStateManager& mgr, CAreaCollisionCache& cache,
                                            const CCollisionPrimitive& prim, const CTransform4f& xf,
                                            const CMaterialFilter& filter,
                                            const TEntityList& nearList);
  static bool DetectCollision_Cached_Moving(const CStateManager&, CAreaCollisionCache&,
                                            const CCollisionPrimitive&, const CTransform4f&,
                                            const CMaterialFilter&, const TEntityList&, CVector3f,
                                            TUniqueId&, CCollisionInfo&, double&);
  static CRayCastResult RayStaticIntersection(const CStateManager&, const CVector3f&,
                                              const CVector3f&, float, const CMaterialFilter&);
  static CRayCastResult RayDynamicIntersection(const CStateManager& mgr, TUniqueId& idOut,
                                               const CVector3f& pos, const CVector3f& dir,
                                               float mag, const CMaterialFilter& filter,
                                               const TEntityList& nearList);
  static rstl::optional_object< CVector3f >
  FindNonIntersectingVector(const CStateManager& mgr, CAreaCollisionCache& cache,
                            CPhysicsActor& actor, const CCollisionPrimitive& prim,
                            const TEntityList& nearList); // name?

  static void Move(CStateManager& mgr, CPhysicsActor& actor, float dt, const TEntityList*);
};

#endif // _CGAMECOLLISION
