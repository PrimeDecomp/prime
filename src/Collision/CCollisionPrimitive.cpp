#include "Collision/CCollisionPrimitive.hpp"
#include "Collision/CCollisionInfoList.hpp"
#include "Collision/CInternalCollisionStructure.hpp"
#include "Collision/InternalColliders.hpp"
#include "Kyoto/Alloc/CMemory.hpp"
#include <string.h>

int CCollisionPrimitive::sNumTypes = 0;
bool CCollisionPrimitive::sInitComplete = false;
bool CCollisionPrimitive::sTypesAdded = false;
bool CCollisionPrimitive::sTypesAdding = false;
bool CCollisionPrimitive::sCollidersAdded = false;
bool CCollisionPrimitive::sCollidersAdding = false;

ComparisonFunc sNullCollider;
BooleanComparisonFunc sNullBooleanCollider;
MovingComparisonFunc sNullMovingCollider;

rstl::single_ptr< rstl::vector< CCollisionPrimitive::Type > >
    CCollisionPrimitive::sCollisionTypeList;
rstl::single_ptr< ComparisonFunc > CCollisionPrimitive::sTableOfCollidables;
rstl::single_ptr< BooleanComparisonFunc > CCollisionPrimitive::sTableOfBooleanCollidables;
rstl::single_ptr< MovingComparisonFunc > CCollisionPrimitive::sTableOfMovingCollidables;

CCollisionPrimitive::CCollisionPrimitive(const CMaterialList& list) : x8_material(list) {}

void CCollisionPrimitive::InitBeginTypes() {
  sCollisionTypeList = rs_new rstl::vector< Type >();
  sCollisionTypeList->reserve(3);
  sTypesAdding = true;
  InternalColliders::AddTypes();
}

void CCollisionPrimitive::InitAddType(const Type& type) {
  type.GetSetter()(sCollisionTypeList->size());
  sCollisionTypeList->reserve(sCollisionTypeList->size() + 1);
  sCollisionTypeList->push_back(type);
}

void CCollisionPrimitive::InitEndTypes() {
  rstl::vector< Type > types = *sCollisionTypeList;
  sCollisionTypeList = rs_new rstl::vector< Type >(types);
  sNumTypes = types.size();
  sTypesAdding = false;
  sTypesAdded = true;
}

void CCollisionPrimitive::InitBeginColliders() {
  int numColliders = sCollisionTypeList->size() * sCollisionTypeList->size();
  sTableOfCollidables = rs_new ComparisonFunc[numColliders];
  sTableOfBooleanCollidables = rs_new BooleanComparisonFunc[numColliders];
  sTableOfMovingCollidables = rs_new MovingComparisonFunc[numColliders];
  memset(sTableOfCollidables.get(), 0, numColliders * sizeof(uint));
  memset(sTableOfBooleanCollidables.get(), 0, numColliders * sizeof(uint));
  memset(sTableOfMovingCollidables.get(), 0, numColliders * sizeof(uint));
  sCollidersAdding = true;
  InternalColliders::AddColliders();
}

void CCollisionPrimitive::InitEndColliders() {
  // dumb dumb dumb
  ComparisonFunc* funcs1 = sTableOfCollidables.get();
  for (int i = 0; i < sNumTypes; ++i) {
    // dumb dumb dumb
    ComparisonFunc func1 = funcs1[i * sNumTypes];
    // dumb dumb dumb
    ComparisonFunc* funcs2 = sTableOfCollidables.get();
    for (int j = 0; j < sNumTypes; ++j) {
      // dumb dumb dumb
      ComparisonFunc func2 = funcs2[j * sNumTypes];
      if (i == 0xFFFFFFFF || j == 0xFFFFFFFF) {
        sNullCollider = nullptr;
      }
      if (j == 0xFFFFFFFF || i == 0xFFFFFFFF) {
        sNullCollider = nullptr;
      }
      // DUMB DUMB DUMB DUMB
      func2 = func2;
    }
    // DUMB DUMB DUMB DUMB
    func1 = func1;
  }

  sCollidersAdding = false;
  sCollidersAdded = true;
  sInitComplete = true;
}

void CCollisionPrimitive::InitAddCollider(const Comparison& comp) {}
void CCollisionPrimitive::InitAddBooleanCollider(const BooleanComparison& comp) {}
void CCollisionPrimitive::InitAddMovingCollider(const MovingComparison& comp) {}

bool CCollisionPrimitive::InternalCollide(const CInternalCollisionStructure&, CCollisionInfoList&) {
}
bool CCollisionPrimitive::InternalCollideMoving(const CInternalCollisionStructure&,
                                                const CVector3f&, double&, CCollisionInfo&) {}

bool CCollisionPrimitive::InternalCollideBoolean(const CInternalCollisionStructure&) {}

void CCollisionPrimitive::Uninitialize() {
  sInitComplete = false;
  sCollidersAdding = false;
  sCollidersAdded = false;
  sTypesAdding = false;
  sTypesAdded = false;
  sNumTypes = 0;
  sCollisionTypeList = nullptr;
  sTableOfCollidables = nullptr;
  sTableOfBooleanCollidables = nullptr;
  sTableOfMovingCollidables = nullptr;
}
bool CCollisionPrimitive::CollideBoolean(const CInternalCollisionStructure::CPrimDesc& prim0,
                                         const CInternalCollisionStructure::CPrimDesc& prim1) {
  return InternalCollideBoolean(CInternalCollisionStructure(prim0, prim1));
}

bool CCollisionPrimitive::Collide(const CInternalCollisionStructure::CPrimDesc& prim0,
                                  const CInternalCollisionStructure::CPrimDesc& prim1,
                                  CCollisionInfoList& list) {
  return InternalCollide(CInternalCollisionStructure(prim0, prim1), list);
}

bool CCollisionPrimitive::CollideMoving(const CInternalCollisionStructure::CPrimDesc& prim0,
                                        const CInternalCollisionStructure::CPrimDesc& prim1,
                                        const CVector3f& dir, double& dOut,
                                        CCollisionInfo& infoOut) {
  return InternalCollideMoving(CInternalCollisionStructure(prim0, prim1), dir, dOut, infoOut);
}

void CCollisionPrimitive::InitAddCollider(ComparisonFunc comp, const char*, const char*) {}
void CCollisionPrimitive::InitAddBooleanCollider(BooleanComparisonFunc comp, const char*,
                                                 const char*) {}
void CCollisionPrimitive::InitAddMovingCollider(MovingComparisonFunc comp, const char*,
                                                const char*) {}
