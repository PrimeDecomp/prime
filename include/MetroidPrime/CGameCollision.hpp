#ifndef _CGAMECOLLISION
#define _CGAMECOLLISION

#include "types.h"

class CAreaCollisionCache;
class CCollisionInfo;
class CCollisionPrimitive;
class CMaterialFilter;
class CStateManager;
class CTransform4f;

class CGameCollision {
public:
  static bool DetectStaticCollisionBoolean(const CStateManager&, const CCollisionPrimitive&,
                                           const CTransform4f&, const CMaterialFilter&);
  static bool DetectDynamicCollisionBoolean(const CCollisionPrimitive&, const CTransform4f&,
                                            const TEntityList&, const CStateManager&);
  static void BuildAreaCollisionCache(const CStateManager& mgr, CAreaCollisionCache& cache);
  static bool DetectCollisionBoolean_Cached(const CStateManager& mgr, CAreaCollisionCache& cache,
                                            const CCollisionPrimitive& prim, const CTransform4f& xf,
                                            const CMaterialFilter& filter,
                                            const TEntityList& nearList);
  static bool DetectCollision_Cached_Moving(const CStateManager&, CAreaCollisionCache&,
                                            const CCollisionPrimitive&, const CTransform4f&,
                                            const CMaterialFilter&, const TEntityList&, CVector3f,
                                            TUniqueId&, CCollisionInfo&, f64&);
};

#endif // _CGAMECOLLISION
