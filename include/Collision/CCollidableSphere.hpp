#ifndef _CCOLLIDABLESPHERE
#define _CCOLLIDABLESPHERE

#include "types.h"

#include "Collision/CCollisionPrimitive.hpp"

#include "Kyoto/Math/CSphere.hpp"

class CCollidableSphere : public CCollisionPrimitive {
public:
  CCollidableSphere(const CSphere& sphere, const CMaterialList& material)
  : CCollisionPrimitive(material), x10_sphere(sphere) {}
  
  static bool CollideMovingAABox(const CInternalCollisionStructure& collision, const CVector3f& dir,
                                 double& dOut, CCollisionInfo& infoOut);
  static bool CollideMovingSphere(const CInternalCollisionStructure& collision,
                                  const CVector3f& dir, double& dOut, CCollisionInfo& infoOut);

  uint GetTableIndex() const override;
  CAABox CalculateAABox(const CTransform4f&) const override;
  CAABox CalculateLocalAABox() const override;
  FourCC GetPrimType() const override;
  ~CCollidableSphere() override {}
  CRayCastResult CastRayInternal(const CInternalRayCastStructure&) const;

  static Type GetType();

private:
  CSphere x10_sphere;
};
CHECK_SIZEOF(CCollidableSphere, 0x20)

namespace Collide {
bool Sphere_Sphere(const CInternalCollisionStructure& collision, CCollisionInfoList& list);
bool Sphere_AABox_Bool(const CInternalCollisionStructure& collision);
bool Sphere_Sphere_Bool(const CInternalCollisionStructure& collision);
} // namespace Collide

#endif // _CCOLLIDABLESPHERE
