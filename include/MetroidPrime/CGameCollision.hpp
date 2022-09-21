#ifndef _CGAMECOLLISION_HPP
#define _CGAMECOLLISION_HPP

#include "types.h"

class CStateManager;
class CCollisionPrimitive;
class CTransform4f;
class CMaterialFilter;

class CGameCollision {
public:
  static bool DetectStaticCollisionBoolean(const CStateManager&, const CCollisionPrimitive&,
                                           const CTransform4f&, const CMaterialFilter&);
  static bool DetectDynamicCollisionBoolean(const CCollisionPrimitive&, const CTransform4f&,
                                            const TEntityList&, const CStateManager&);
};

#endif