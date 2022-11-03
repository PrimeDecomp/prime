#include "WorldFormat/CMetroidModelInstance.hpp"

#include "Kyoto/Basics/CBasics.hpp"

static const CTransform4f& TransformFromData(const void* ptr) {
  return *static_cast< const CTransform4f* >(ptr);
}

static CAABox BoundingBoxFromData(const void* ptr) {
  float out[6];
  const float* tmp = reinterpret_cast< const float* >(ptr);
  for (int i = 0; i < 6; ++i) {
    out[i] = CBasics::SwapBytes(tmp[i]);
  }

  return *reinterpret_cast< const CAABox* >(out);
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
