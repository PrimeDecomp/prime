#ifndef _IRENDERER
#define _IRENDERER

#include "types.h"

#include <dolphin/gx/GXEnum.h>

#include "rstl/pair.hpp"
#include "rstl/vector.hpp"

#include "Kyoto/TToken.hpp"

class CAABox;
class CAreaOctTree;
class CColor;
class CFrustumPlanes;
class CLight;
class CMemorySys;
class CMetroidModelInstance;
class CModel;
class COsContext;
class CParticleGen;
class CPlane;
class CPVSVisSet;
class CResFactory;
class CSkinnedModel;
class CTransform4f;
class CVector2f;
class CVector3f;
class IObjectStore;

class IRenderer {
public:
  typedef void (*TDrawableCallback)(const void*, const void*, int);

  enum EDrawableSorting {
    kDS_SortedCallback,
    kDS_UnsortedCallback,
  };

  enum EPrimitiveType {
    kPT_Quads = GX_QUADS,
    kPT_Triangles = GX_TRIANGLES,
    kPT_TriangleStrip = GX_TRIANGLESTRIP,
    kPT_TriangleFan = GX_TRIANGLEFAN,
    kPT_Lines = GX_LINES,
    kPT_LineStrip = GX_LINESTRIP,
    kPT_Points = GX_POINTS,
  };

  enum EDebugOption {
    kDO_Invalid = -1,
    kDO_PVSMode,
    kDO_PVSState,
    kDO_FogDisabled,
  };

  virtual ~IRenderer();
  // TODO vtable

  virtual void AddStaticGeometry(const rstl::vector< CMetroidModelInstance >* geometry,
                                 const CAreaOctTree* octTree, int areaIdx);
  virtual void EnablePVS(const CPVSVisSet& set, int areaIdx);
  virtual void DisablePVS();
  virtual void RemoveStaticGeometry(const rstl::vector< CMetroidModelInstance >* geometry);
  virtual void DrawUnsortedGeometry(int areaIdx, int mask, int targetMask);
  virtual void DrawSortedGeometry(int areaIdx, int mask, int targetMask);
  virtual void DrawStaticGeometry(int areaIdx, int mask, int targetMask);
  virtual void DrawAreaGeometry(int areaIdx, int mask, int targetMask);
  virtual void PostRenderFogs();
  virtual void SetModelMatrix(const CTransform4f& xf);
  virtual void AddParticleGen(const CParticleGen& gen);
  virtual void AddParticleGen(const CParticleGen& gen, const CVector3f&, const CAABox&);
  virtual void AddPlaneObject(const void* obj, const CAABox& aabb, const CPlane& plane, int type);
  virtual void AddDrawable(const void* obj, const CVector3f& pos, const CAABox& bounds, int mode,
                           IRenderer::EDrawableSorting sorting);
  virtual void SetDrawableCallback(TDrawableCallback cb, const void* ctx);
  virtual void SetWorldViewpoint(const CTransform4f& xf);
  virtual void SetPerspective(float, float, float, float, float);
  virtual void SetPerspective(float, float, float, float);
  virtual rstl::pair< CVector2f, CVector2f > SetViewportOrtho(bool centered, float znear,
                                                              float zfar);
  virtual void SetClippingPlanes(const CFrustumPlanes&);
  virtual void SetViewport(int left, int right, int width, int height);
  virtual void SetDepthReadWrite(const bool read, const bool update);
  virtual void SetBlendMode_AdditiveAlpha();
  virtual void SetBlendMode_AlphaBlended();
  virtual void SetBlendMode_NoColorWrite();
  virtual void SetBlendMode_ColorMultiply();
  virtual void SetBlendMode_InvertDst();
  virtual void SetBlendMode_InvertSrc();
  virtual void SetBlendMode_Replace();
  virtual void SetBlendMode_AdditiveDestColor();

  virtual void SetDebugOption(IRenderer::EDebugOption option, int value);
  virtual void BeginScene();
  virtual void EndScene();
  virtual void BeginPrimitive(IRenderer::EPrimitiveType prim, int count);
  virtual void BeginLines(int nverts);
  virtual void BeginLineStrip(int nverts);
  virtual void BeginTriangles(int nverts);
  virtual void BeginTriangleStrip(int nverts);
  virtual void BeginTriangleFan(int nverts);
  virtual void PrimVertex(const CVector3f& vtx);
  virtual void PrimNormal(const CVector3f& nrm);
  virtual void PrimColor(float r, float g, float b, float a);
  virtual void PrimColor(const CColor& color);
  virtual void EndPrimitive();
  virtual void SetAmbientColor(const CColor& color);
  virtual void DrawString();
  virtual float GetFPS();
  virtual void CacheReflection();
  virtual void DrawSpaceWarp();
  virtual void DrawThermalModel();
  virtual void DrawModelDisintegrate();
  virtual void DrawModelFlat();
  virtual void SetWireframeFlags();
  virtual void SetWorldFog();
  virtual void RenderFogVolume(const CColor&, const CAABox&, const TLockedToken< CModel >*,
                               const CSkinnedModel*);
  virtual void SetThermal();
  virtual void SetThermalColdScale();
  virtual void DoThermalBlendCold();
  virtual void DoThermalBlendHot();
  virtual void GetStaticWorldDataSize();
  virtual void SetGXRegister1Color();
  virtual void SetWorldLightFadeLevel();
  virtual void Something();
  virtual void PrepareDynamicLights(const rstl::vector< CLight >& lights);
};

inline IRenderer::~IRenderer() {}

namespace Renderer {
IRenderer* AllocateRenderer(IObjectStore&, COsContext&, CMemorySys&, CResFactory&);
}; // namespace Renderer

#endif // _IRENDERER
