#include "Collision/CCollisionPrimitive.hpp"
#include "Collision/InternalColliders.hpp"

int CCollisionPrimitive::sNumTypes = 0;
bool CCollisionPrimitive::sInitComplete = false;
bool CCollisionPrimitive::sTypesAdded = false;
bool CCollisionPrimitive::sTypesAdding = false;
bool CCollisionPrimitive::sCollidersAdded = false;
bool CCollisionPrimitive::sCollidersAdding = false;

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
  
}
