#ifndef _CCOLLIDABLEAABOXSPHERE
#define _CCOLLIDABLEAABOXSPHERE

#include "Collision/CCollidableAABox.hpp"
#include "Collision/CCollidableSphere.hpp"
#include "Collision/CCollisionPrimitive.hpp"

class CCollidableAABoxSphere : public CCollisionPrimitive {
public:
  const CCollidableAABox& GetCollidableAABox() const { return x10_aabox; }
  const CCollidableSphere& GetCollidableSphere() const { return x38_sphere; }

private:
  CCollidableAABox x10_aabox;
  CCollidableSphere x38_sphere;
};
CHECK_SIZEOF(CCollidableAABoxSphere, 0x58)

#endif
