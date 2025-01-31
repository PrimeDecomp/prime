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
  ~CMetroidModelInstance() {}

  int GetFlags() const { return x0_visorFlags; }
  const CAABox& GetBoundingBox() const { return x34_worldAABB; }
  const void* GetMaterialPointer() const { return x4c_materialData; }
  const rstl::vector< void* >& GetSurfaces() const { return x50_surfaces; }
  const void* GetVertexPointer() const { return x60_positions; }
  const void* GetNormalPointer() const { return x64_normals; }
  const void* GetColorPointer() const { return x68_colors; }
  const void* GetTCPointer() const { return x6c_texCoords; }
  const void* GetPackedTCPointer() const { return x70_packedTexCoords; }

private:
  int x0_visorFlags;
  CTransform4f x4_worldXf;
  CAABox x34_worldAABB;
  const void* x4c_materialData;
  rstl::vector< void* > x50_surfaces;
  const void* x60_positions;
  const void* x64_normals;
  const void* x68_colors;
  const void* x6c_texCoords;
  const void* x70_packedTexCoords;
};

#endif // _CMETROIDMODELINSTANCE
