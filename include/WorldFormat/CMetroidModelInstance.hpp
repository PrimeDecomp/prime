#ifndef _CMETROIDMODELINSTANCE
#define _CMETROIDMODELINSTANCE

#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CTransform4f.hpp"

#include "rstl/vector.hpp"

class CMetroidModelInstance {
public:
  CMetroidModelInstance(const void* header, const void* firstGeom, const void* positions,
                        const void* normals, const void* colors, const void* texCoords,
                        const void* packedTexCoords, const rstl::vector< void* >& surfaces);

private:
  u32 x0_visorFlags;
  CTransform4f x4_worldXf;
  CAABox x34_worldAABB;
  const void* x4c_materialData;
  rstl::vector<void*> x50_surfaces;
  const void* x60_positions;
  const void* x64_normals;
  const void* x68_colors;
  const void* x6c_texCoords;
  const void* x70_packedTexCoords;
};

#endif // _CMETROIDMODELINSTANCE
