#ifndef _CCUBEMODEL
#define _CCUBEMODEL

#include "CCubeSurface.hpp"
#include "Kyoto/Graphics/CCubeMaterial.hpp"
#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/TToken.hpp"
#include <rstl/vector.hpp>

class IObjectStore;
class CTexture;
class CTransform4f;
class CCubeSurface;
class CStopwatch;

enum ESurfaceSelection {
  kSS_Unsorted,
  kSS_Sorted,
  kSS_All,
};

class CCubeModel {
public:
  class ModelInstance {
  public:
    ModelInstance(rstl::vector< void* >& surfaces, const void* materialData, const void* positions,
                  const void* normals, const void* colors, const void* uvs,
                  const void* packedTexCoords)
    : mSurfacePtrs(surfaces)
    , mMaterialData(materialData)
    , mPositions(positions)
    , mNormals(normals)
    , mColors(colors)
    , mTexCoords(uvs)
    , mPackedTexCoords(packedTexCoords) {}

    rstl::vector< void* >& Surfaces() { return mSurfacePtrs; }
    const rstl::vector< void* >& GetSurfaces() const { return mSurfacePtrs; }
    const void* GetMaterialPointer() const { return mMaterialData; }
    void SetMaterialPointer(const void* mat) { mMaterialData = mat; }
    const void* GetVertexPointer() const { return mPositions; }
    const void* GetNormalPointer() const { return mNormals; }
    const void* GetColorPointer() const { return mColors; }
    const void* GetTCPointer() const { return mTexCoords; }
    const void* GetPackedTCPointer() const { return mPackedTexCoords; }

  private:
    rstl::vector< void* >& mSurfacePtrs;
    const void* mMaterialData;
    const void* mPositions;
    const void* mNormals;
    const void* mColors;
    const void* mTexCoords;
    const void* mPackedTexCoords;
  };
  CCubeModel(rstl::vector< void* >* surfaces, rstl::vector< TCachedToken< CTexture > >* textures,
             const void* materialData, const void* positions, const void* normals,
             const void* colors, const void* uvs, const void* compressedUvs, const CAABox& bounds,
             uchar visorFlags, bool texturesLoaded, uint idx);
  static void SetRenderModelBlack(bool v);
  static void SetModelWireframe(bool v);
  void UnlockTextures() const;
  void RemapMaterialData(const void* data, rstl::vector< TCachedToken< CTexture > >* texture);
  void DrawNormal(const float* positions, const float* normals, ESurfaceSelection which) const;
  static void DisableShadowMaps();
  static void EnableShadowMaps(const CTexture*, const CTransform4f&, unsigned char, unsigned char);
  static void SetNewPlayerPositionAndTime(const CVector3f&, const CStopwatch&);
  static void SetDrawingOccluders(bool);
  static void MakeTexturesFromMats(const void* data,
                                   rstl::vector< TCachedToken< CTexture > >& textures,
                                   IObjectStore& store, bool cache);

  const ModelInstance& GetModelInstance() const { return mInstance; }
  bool AreTexturesLoaded() const { return !mLoadTextures; }

  const void* GetPositions() const { return mInstance.GetVertexPointer(); }
  const void* GetNormals() const { return mInstance.GetNormalPointer(); }

  const CAABox& GetBoundingBox() const { return mBounds; }
  const CCubeSurface& GetNormalSurfaces() const { return mFirstUnsorted; }
  const CCubeSurface& GetAlphaSurfaces() const { return mFirstSorted; }
  bool GetShouldDrawWorldFlag() const { return mVisible; }
  void SetShouldDrawWorldFlag(bool shouldDraw) { mVisible = shouldDraw; }
  uchar GetModelFlags() const { return mVisorFlags; }
  int GetModelIndex() const { return mIdx; } // TODO: name

  CCubeMaterial GetMaterialByIndex(const int idx) const;
  void SetStaticArraysCurrent() const;
  void SetArraysCurrent() const;
  void SetSkinningArraysCurrent(const float* positions, const float* normals) const;
  void SetUsingPackedLightmaps(const bool use) const;
  static bool IsUsingPackedLightmaps() { return sUsingPackedLightmaps; }
  void DrawSurface(const CCubeSurface& surface, const CModelFlags& modelFlags) const;
  void DrawSurfaceWireframe(const CCubeSurface& surface) const;
  void DrawFlat(const float* positions, const float* normals, ESurfaceSelection which) const;
  bool TryLockTextures() const;
  void Draw(const CModelFlags& flags) const;
  void Draw(const float* positions, const float* normals, const CModelFlags& flags) const;
  void DrawNormal(const CModelFlags& flags) const;
  void DrawAlpha(const CModelFlags& flags) const;
  void DrawSurfaces(const CModelFlags& flags) const;
  void DrawNormalSurfaces(const CModelFlags& flags) const;
  void DrawAlphaSurfaces(const CModelFlags& flags) const;

  rstl::vector< TCachedToken< CTexture > >& GetTextures() const { return *mTextures; };

private:
  ModelInstance mInstance;
  rstl::vector< TCachedToken< CTexture > >* mTextures;
  CAABox mBounds;
  CCubeSurface mFirstUnsorted;
  CCubeSurface mFirstSorted;
  mutable bool mLoadTextures : 1;
  bool mVisible : 1;
  uchar mVisorFlags;
  int mIdx;

  static bool sUsingPackedLightmaps;
};

#endif // _CCUBEMODEL
