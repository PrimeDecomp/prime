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

CMetroidModelInstance::CMetroidModelInstance(const void* header, const void* firstGeom,
                                             const void* positions, const void* normals,
                                             const void* colors, const void* texCoords,
                                             const void* packedTexCoords,
                                             const rstl::vector< void* >& surfaces)
: x0_visorFlags(*reinterpret_cast< const uint* >(header))
, x4_worldXf(TransformFromData((uchar*)header + sizeof(uint)))
, x34_worldAABB(BoundingBoxFromData((uchar*)header + sizeof(CTransform4f) + sizeof(uint)))
, x4c_materialData(firstGeom)
, x50_surfaces(surfaces)
, x60_positions(positions)
, x64_normals(normals)
, x68_colors(colors)
, x6c_texCoords(texCoords)
, x70_packedTexCoords(packedTexCoords) {}
