#ifndef _CCOLLISIONPRIMITIVE
#define _CCOLLISIONPRIMITIVE

#include "types.h"

#include "Collision/CMaterialList.hpp"

#include "Kyoto/IObjectStore.hpp"
#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CTransform4f.hpp"

class CRayCastResult;
class CInternalRayCastStructure;

class CCollisionPrimitive {
public:
  CCollisionPrimitive(const CMaterialList& list);

  virtual uint GetTableIndex() const = 0;
  virtual void SetMaterial(const CMaterialList&);
  virtual const CMaterialList& GetMaterial() const;
  virtual CAABox CalculateAABox(const CTransform4f&) const = 0;
  virtual CAABox CalculateLocalAABox() const = 0;
  virtual FourCC GetPrimType() const = 0;
  virtual ~CCollisionPrimitive();
  virtual CRayCastResult CastRayInternal(const CInternalRayCastStructure&) const = 0;

private:
  uint x4_;
  CMaterialList x8_material;
};
CHECK_SIZEOF(CCollisionPrimitive, 0x10)

inline CCollisionPrimitive::~CCollisionPrimitive() {}

#endif // _CCOLLISIONPRIMITIVE
