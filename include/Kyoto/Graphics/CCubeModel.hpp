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
  CCubeModel(rstl::vector< CCubeSurface* >* surfaces, rstl::vector< TCachedToken< CTexture > >* textures,
             void* materialData, void* positions, void* normals, void* vtxColors, void* floatUvs,
             void* shortUvs, const CAABox& aabox, uint visorFlags, bool texturesLoaded, uint idx);
  static void SetRenderModelBlack(bool v);
  static void DisableShadowMaps();
  static void EnableShadowMaps(const CTexture*, const CTransform4f&, unsigned char, unsigned char);
  static void SetDrawingOccluders(bool);
  static void MakeTexturesFromMats(uchar* data, rstl::vector< TCachedToken< CTexture > >& textures,
                                   IObjectStore& store, bool cache);
};

#endif // _CCUBEMODEL
