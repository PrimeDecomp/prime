#include "Collision/CCollisionPrimitive.hpp"
#include "Collision/InternalColliders.hpp"
#include "Kyoto/Alloc/CMemory.hpp"
#include <string.h>

int CCollisionPrimitive::sNumTypes = 0;
bool CCollisionPrimitive::sInitComplete = false;
bool CCollisionPrimitive::sTypesAdded = false;
bool CCollisionPrimitive::sTypesAdding = false;
bool CCollisionPrimitive::sCollidersAdded = false;
bool CCollisionPrimitive::sCollidersAdding = false;

int sNullCollider;
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
  int i = 0;
  int j = 0;
  for (int i = 0; i < sNumTypes; ++i) {
    for (int j = 0; j < sNumTypes; ++j) {
      if (i == 0xFFFFFFFF || j == 0xFFFFFFFF) {
        sNullCollider = (i * sNumTypes);
      }
      if (j == 0xFFFFFFFF || i == 0xFFFFFFFF) {
        sNullCollider = (i * sNumTypes);
      }
    }
  }

  sCollidersAdding = false;
  sCollidersAdded = true;
  sInitComplete = true;
}
