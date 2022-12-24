#ifndef _CCOLLISIONPRIMITIVE
#define _CCOLLISIONPRIMITIVE

#include "types.h"

#include "Collision/CMaterialList.hpp"

#include "Kyoto/IObjectStore.hpp"
#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "rstl/single_ptr.hpp"
#include "rstl/vector.hpp"

class CRayCastResult;
class CCollisionInfoList;
class CInternalCollisionStructure;
class CInternalRayCastStructure;
class CCollisionInfo;

typedef void (*PrimitiveSetter)(uint);

typedef bool (*ComparisonFunc)(const CInternalCollisionStructure&, CCollisionInfoList&);
typedef bool (*BooleanComparisonFunc)(const CInternalCollisionStructure&);
typedef bool (*MovingComparisonFunc)(const CInternalCollisionStructure&, const CVector3f&, double&,
                                     CCollisionInfo&);

class CCollisionPrimitive {
public:
  class Type {
  public:
    Type(PrimitiveSetter setter, const char* info) : mSetter(setter), mInfo(info) {}

    PrimitiveSetter GetSetter() const { return mSetter; }
    const char* GetInfo() const { return mInfo; }

  private:
    PrimitiveSetter mSetter;
    const char* mInfo;
  };

  CCollisionPrimitive(const CMaterialList& list);

  virtual uint GetTableIndex() const = 0;
  virtual void SetMaterial(const CMaterialList&);
  virtual const CMaterialList& GetMaterial() const;
  virtual CAABox CalculateAABox(const CTransform4f&) const = 0;
  virtual CAABox CalculateLocalAABox() const = 0;
  virtual FourCC GetPrimType() const = 0;
  virtual ~CCollisionPrimitive();
  virtual CRayCastResult CastRayInternal(const CInternalRayCastStructure&) const = 0;

  static void InitBeginTypes();
  static void InitAddType(const Type& type);
  static void InitEndTypes();
  static void Uninitialize();

private:
  static int sNumTypes;
  static bool sInitComplete;
  static bool sTypesAdded;
  static bool sTypesAdding;
  static bool sCollidersAdded;
  static bool sCollidersAdding;
  static rstl::single_ptr< rstl::vector< Type > > sCollisionTypeList;
  static rstl::single_ptr< ComparisonFunc > sTableOfCollidables;
  static rstl::single_ptr< BooleanComparisonFunc > sTableOfBooleanCollidables;
  static rstl::single_ptr< MovingComparisonFunc > sTableOfMovingCollidables;
  static ComparisonFunc sNullCollider;
  static BooleanComparisonFunc sNullBooleanCollider;
  static MovingComparisonFunc sNullMovingCollider;

  uint x4_;
  CMaterialList x8_material;
};
CHECK_SIZEOF(CCollisionPrimitive, 0x10)

inline CCollisionPrimitive::~CCollisionPrimitive() {}

#endif // _CCOLLISIONPRIMITIVE
