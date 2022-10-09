#include "WorldFormat/CMetroidModelInstance.hpp"

#include "Kyoto/Basics/CBasics.hpp"

const CTransform4f& TransformFromData(const void* ptr) {
  return *static_cast< const CTransform4f* >(ptr);
}

CAABox BoundingBoxFromData(const void* ptr) {
  const CAABox* tmp = static_cast< const CAABox* >(ptr);
  float minX = CBasics::SwapBytes(tmp->GetMinPoint().GetX());
  float minY = CBasics::SwapBytes(tmp->GetMinPoint().GetY());
  float minZ = CBasics::SwapBytes(tmp->GetMinPoint().GetZ());
  float maxX = CBasics::SwapBytes(tmp->GetMaxPoint().GetX());
  float maxY = CBasics::SwapBytes(tmp->GetMaxPoint().GetY());
  float maxZ = CBasics::SwapBytes(tmp->GetMaxPoint().GetZ());
  return CAABox(minX, minY, minZ, maxX, maxY, maxZ);
}

CMetroidModelInstance::CMetroidModelInstance(const void*, const void*, const void*, const void*,
                                             const void*, const void*, const void*,
                                             const rstl::vector< void* >&) {}
