#ifndef _CCOLLIDABLECOLLISIONSURFACE
#define _CCOLLIDABLECOLLISIONSURFACE


#include "Collision/CCollisionPrimitive.hpp"

class CCollidableCollisionSurface {
  static int sTableIndex;

public:
  static CCollisionPrimitive::Type GetType();
  static void SetStaticTableIndex(uint index);
};

#endif // _CCOLLIDABLECOLLISIONSURFACE
