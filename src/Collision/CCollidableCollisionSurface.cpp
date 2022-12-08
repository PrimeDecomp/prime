#include "Collision/CCollidableCollisionSurface.hpp"

int CCollidableCollisionSurface::sTableIndex = -1;

void CCollidableCollisionSurface::SetStaticTableIndex(uint index) {
  sTableIndex = index;
}

CCollisionPrimitive::Type CCollidableCollisionSurface::GetType() {
  return CCollisionPrimitive::Type(SetStaticTableIndex, "CCollidableCollisionSurface");
}
