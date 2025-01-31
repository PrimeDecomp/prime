#ifndef _CCUBEMODEL
#define _CCUBEMODEL

#include <Kyoto/TToken.hpp>
#include <rstl/vector.hpp>

class CAABox;
class IObjectStore;
class CTexture;
class CTransform4f;
class CCubeSurface;

class CCubeModel {
public:
  CCubeModel(rstl::vector< void* >* surfaces, rstl::vector< TCachedToken< CTexture > >* textures,
             const void* materialData, const void* positions, const void* normals,
             const void* vtxColors, const void* floatUvs, const void* shortUvs, const CAABox& aabox,
             uchar visorFlags, bool texturesLoaded, uint idx);
  static void SetRenderModelBlack(bool v);
  static void DisableShadowMaps();
  static void EnableShadowMaps(const CTexture*, const CTransform4f&, unsigned char, unsigned char);
  static void SetDrawingOccluders(bool);
  static void MakeTexturesFromMats(const void* data,
                                   rstl::vector< TCachedToken< CTexture > >& textures,
                                   IObjectStore& store, bool cache);
};

#endif // _CCUBEMODEL
