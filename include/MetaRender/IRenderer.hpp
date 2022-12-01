#ifndef _IRENDERER
#define _IRENDERER

#include "types.h"
#include "rstl/pair.hpp"
#include "rstl/vector.hpp"

#include "Kyoto/TToken.hpp"

class CTransform4f;
class CParticleGen;
class IObjectStore;
class COsContext;
class CMemorySys;
class CResFactory;
class CAABox;
class CVector2f;
class CVector3f;
class CModel;
class CFrustumPlanes;
class CSkinnedModel;
class CColor;
class CLight;
class CPVSVisSet;

class IRenderer {
public:
  typedef void (*TDrawableCallback)(const void*, const void*, int);
  
  enum EDrawableSorting {
    kDS_SortedCallback,
    kDS_UnsortedCallback,
  };

  virtual ~IRenderer();
  // TODO vtable
  
  virtual void AddStaticGeometry();
  virtual void EnablePVS(const CPVSVisSet& set, int areaIdx);
  virtual void DisablePVS();
  virtual void RemoveStaticGeometry();
  virtual void DrawUnsortedGeometry(int areaIdx, int mask, int targetMask);
  virtual void DrawSortedGeometry(int areaIdx, int mask, int targetMask);
  virtual void DrawStaticGeometry(int areaIdx, int mask, int targetMask);
  virtual void DrawAreaGeometry(int areaIdx, int mask, int targetMask);
  virtual void PostRenderFogs();
  virtual void SetModelMatrix(const CTransform4f& xf);
  virtual void AddParticleGen(const CParticleGen& gen);
  virtual void AddParticleGen2();
  virtual void AddPlaneObject();
  virtual void AddDrawable(const void* obj, const CVector3f& pos, const CAABox& bounds, int mode,
                           IRenderer::EDrawableSorting sorting);
  virtual void SetDrawableCallback(TDrawableCallback cb, void* ctx);
  virtual void SetWorldViewpoint();
  virtual void SetPerspective1(float, float, float, float, float);
  virtual void SetPerspective2();
  virtual rstl::pair< CVector2f, CVector2f > SetViewportOrtho(bool centered, float znear,
                                                              float zfar);
  virtual void SetClippingPlanes(const CFrustumPlanes&);
  virtual void SetViewport(int left, int right, int width, int height);
  virtual void SetDepthReadWrite(bool read, bool update);
  virtual void SetBlendMode_AdditiveAlpha();
  virtual void SetBlendMode_AlphaBlended();
  virtual void SetBlendMode_NoColorWrite();
  virtual void SetBlendMode_ColorMultiply();
  virtual void SetBlendMode_InvertDst();
  virtual void SetBlendMode_InvertSrc();
  virtual void SetBlendMode_Replace();
  virtual void SetBlendMode_AdditiveDestColor();

  virtual void SetDebugOption();
  virtual void BeginScene();
  virtual void EndScene();
  virtual void BeginPrimitive(GXPrimitive prim, int count);
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
  virtual void GetFPS();
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
  virtual void PrepareDynamicLights(const rstl::vector<CLight>& lights);
};

namespace Renderer {
IRenderer* AllocateRenderer(IObjectStore&, COsContext&, CMemorySys&, CResFactory&);
}; // namespace Renderer

#endif // _IRENDERER
