#ifndef _CCOLLIDABLESPHERE
#define _CCOLLIDABLESPHERE

#include "types.h"

#include "Collision/CCollisionPrimitive.hpp"

#include "Kyoto/Math/CSphere.hpp"

class CCollidableSphere : public CCollisionPrimitive {
public:
  CCollidableSphere(const CSphere& sphere, const CMaterialList& material)
  : CCollisionPrimitive(material), x10_sphere(sphere) {}

  uint GetTableIndex() const;
  CAABox CalculateAABox(const CTransform4f&) const;
  CAABox CalculateLocalAABox() const;
  FourCC GetPrimType() const;
  ~CCollidableSphere() {}
  CRayCastResult CastRayInternal(const CInternalRayCastStructure&) const;

private:
  CSphere x10_sphere;
};
CHECK_SIZEOF(CCollidableSphere, 0x20)

#endif // _CCOLLIDABLESPHERE
