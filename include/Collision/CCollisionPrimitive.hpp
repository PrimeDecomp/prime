#ifndef _CCOLLISIONPRIMITIVE
#define _CCOLLISIONPRIMITIVE

#include "types.h"

#include "Collision/CInternalCollisionStructure.hpp"
#include "Collision/CMaterialList.hpp"

#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/SObjectTag.hpp"

#include "rstl/single_ptr.hpp"
#include "rstl/vector.hpp"

class CRayCastResult;
class CCollisionInfoList;
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

  class Comparison {};
  class BooleanComparison {};
  class MovingComparison {};

  CCollisionPrimitive(const CMaterialList& list);

  virtual uint GetTableIndex() const = 0;
  virtual void SetMaterial(const CMaterialList& other) { x8_material = other; }
  virtual const CMaterialList& GetMaterial() const { return x8_material; }
  virtual CAABox CalculateAABox(const CTransform4f&) const = 0;
  virtual CAABox CalculateLocalAABox() const = 0;
  virtual FourCC GetPrimType() const = 0;
  virtual ~CCollisionPrimitive();
  virtual CRayCastResult CastRayInternal(const CInternalRayCastStructure&) const = 0;

  static void InitBeginTypes();
  static void InitAddType(const Type& type);
  static void InitEndTypes();
  static void InitBeginColliders();
  static void InitAddCollider(const Comparison& comp);
  static void InitAddBooleanCollider(const BooleanComparison& comp);
  static void InitAddMovingCollider(const MovingComparison& comp);
  static void InitAddCollider(ComparisonFunc comp, const char*, const char*);
  static void InitAddBooleanCollider(BooleanComparisonFunc comp, const char*, const char*);
  static void InitAddMovingCollider(MovingComparisonFunc comp, const char*, const char*);
  static void InitEndColliders();
  static void Uninitialize();

  static bool Collide(const CInternalCollisionStructure::CPrimDesc& prim0,
                      const CInternalCollisionStructure::CPrimDesc& prim1,
                      CCollisionInfoList& list);
  static bool CollideBoolean(const CInternalCollisionStructure::CPrimDesc& prim0,
                             const CInternalCollisionStructure::CPrimDesc& prim1);
  static bool CollideMoving(const CInternalCollisionStructure::CPrimDesc& prim0,
                            const CInternalCollisionStructure::CPrimDesc& prim1,
                            const CVector3f& dir, double& dOut, CCollisionInfo& infoOut);

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

  static bool InternalCollide(const CInternalCollisionStructure&, CCollisionInfoList&);
  static bool InternalCollideMoving(const CInternalCollisionStructure&, const CVector3f&, double&,
                                    CCollisionInfo&);
  static bool InternalCollideBoolean(const CInternalCollisionStructure&);

  uint x4_;
  CMaterialList x8_material;
};
CHECK_SIZEOF(CCollisionPrimitive, 0x10)

inline CCollisionPrimitive::~CCollisionPrimitive() {}

#endif // _CCOLLISIONPRIMITIVE
