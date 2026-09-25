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

  int GetFlags() const { return mVisorFlags; }
  const CAABox& GetBoundingBox() const { return mWorldAABB; }
  const void* GetMaterialPointer() const { return mMaterialData; }
  const rstl::vector< void* >& GetSurfaces() const { return mSurfaces; }
  const void* GetVertexPointer() const { return mPositions; }
  const void* GetNormalPointer() const { return mNormals; }
  const void* GetColorPointer() const { return mColors; }
  const void* GetTCPointer() const { return mTexCoords; }
  const void* GetPackedTCPointer() const { return mPackedTexCoords; }

private:
  int mVisorFlags;
  CTransform4f mWorldXf;
  CAABox mWorldAABB;
  const void* mMaterialData;
  rstl::vector< void* > mSurfaces;
  const void* mPositions;
  const void* mNormals;
  const void* mColors;
  const void* mTexCoords;
  const void* mPackedTexCoords;
};

#endif // _CMETROIDMODELINSTANCE
