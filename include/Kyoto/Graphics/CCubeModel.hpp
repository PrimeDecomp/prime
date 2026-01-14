#ifndef _CCUBEMODEL
#define _CCUBEMODEL

#include "Kyoto/Graphics/CCubeMaterial.hpp"
#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/TToken.hpp"
#include <rstl/vector.hpp>

class IObjectStore;
class CTexture;
class CTransform4f;
class CCubeSurface;

class CCubeModel {
public:
  class ModelInstance {
  public:
    ModelInstance(rstl::vector< void* >& surfaces, const void* materialData, const void* positions,
                  const void* normals, const void* colors, const void* uvs,
                  const void* packedTexCoords)
    : x0_surfacePtrs(surfaces)
    , x4_materialData(materialData)
    , x8_positions(positions)
    , xc_normals(normals)
    , x10_colors(colors)
    , x14_texCoords(uvs)
    , x18_packedTexCoords(packedTexCoords) {}

    rstl::vector< void* >& Surfaces() { return x0_surfacePtrs; }
    const rstl::vector< void* >& GetSurfaces() const { return x0_surfacePtrs; }
    const void* GetMaterialPointer() const { return x4_materialData; }
    void SetMaterialPointer(const void* mat) { x4_materialData = mat; }
    const void* GetVertexPointer() const { return x8_positions; }
    const void* GetNormalPointer() const { return xc_normals; }
    const void* GetColorPointer() const { return x10_colors; }
    const void* GetTCPointer() const { return x14_texCoords; }
    const void* GetPackedTCPointer() const { return x18_packedTexCoords; }

  private:
    rstl::vector< void* >& x0_surfacePtrs;
    const void* x4_materialData;
    const void* x8_positions;
    const void* xc_normals;
    const void* x10_colors;
    const void* x14_texCoords;
    const void* x18_packedTexCoords;
  };
  CCubeModel(rstl::vector< void* >* surfaces, rstl::vector< TCachedToken< CTexture > >* textures,
             const void* materialData, const void* positions, const void* normals,
             const void* colors, const void* uvs, const void* compressedUvs, const CAABox& bounds,
             uchar visorFlags, bool texturesLoaded, uint idx);
  static void SetRenderModelBlack(bool v);
  static void DisableShadowMaps();
  static void EnableShadowMaps(const CTexture*, const CTransform4f&, unsigned char, unsigned char);
  static void SetDrawingOccluders(bool);
  static void MakeTexturesFromMats(const void* data,
                                   rstl::vector< TCachedToken< CTexture > >& textures,
                                   IObjectStore& store, bool cache);

  CCubeMaterial GetMaterialByIndex(const int idx) const;
  void SetStaticArraysCurrent() const;
  void SetArraysCurrent() const;
  void SetSkinningArraysCurrent(const float* positions, const float* normals) const;
  void SetUsingPackedLightmaps(const bool use) const;
  void DrawSurface(const CCubeSurface& surface, const CModelFlags& modelFlags) const;
  void DrawSurfaceWireframe(const CCubeSurface& surface) const;

private:
  ModelInstance x0_instance;
  rstl::vector< TCachedToken< CTexture > >* x1c_textures;
  CAABox x20_bounds;
  CCubeSurface* x38_firstUnsorted;
  CCubeSurface* x3c_firstSorted;
  uchar x40_24_loadTextures : 1;
  bool x40_25_visible : 1;
  uchar x41_visorFlags;
  uint x44_idx;
  
  static bool sUsingPackedLightmaps;
};

#endif // _CCUBEMODEL
