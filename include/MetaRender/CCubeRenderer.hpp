#ifndef _CCUBERENDERER_HPP
#define _CCUBERENDERER_HPP

#include "types.h"

#include <dolphin/gx/GXEnum.h>

#include "MetaRender/Renderer.hpp"

#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Math/CVector2f.hpp"
#include "rstl/pair.hpp"

class CCubeRenderer {
public:
  virtual ~CCubeRenderer();
  // TODO types
  virtual void AddStaticGeometry();
  virtual void EnablePVS();
  virtual void DisablePVS();
  virtual void RemoveStaticGeometry();
  virtual void DrawUnsortedGeometry();
  virtual void DrawSortedGeometry();
  virtual void DrawStaticGeometry();
  virtual void DrawAreaGeometry();
  virtual void PostRenderFogs();
  virtual void SetModelMatrix(const CTransform4f& xf);
  virtual void AddParticleGen1();
  virtual void AddParticleGen2();
  virtual void AddPlaneObject();
  virtual void AddDrawable(const void* obj, const CVector3f& pos, const CAABox& bounds, int mode,
                           IRenderer::EDrawableSorting sorting);
  virtual void SetDrawableCallback();
  virtual void SetWorldViewpoint();
  virtual void SetPerspective1();
  virtual void SetPerspective2();
  virtual rstl::pair< CVector2f, CVector2f > SetViewportOrtho(bool centered, f32 znear, f32 zfar);
  virtual void SetClippingPlanes();
  virtual void SetViewport();
  virtual void SetDepthReadWrite(bool read, bool update);
  virtual void SetBlendMode_AdditiveAlpha();
  virtual void SetBlendMode_AlphaBlended();
  virtual void SetBlendMode_NoColorWrite();
  virtual void SetBlendMode_ColorMultiply();
  virtual void SetBlendMode_InvertDst();
  virtual void SetBlendMode_InvertSrc();
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
  virtual void PrimColor(f32 r, f32 g, f32 b, f32 a);
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
  virtual void RenderFogVolume(const CColor&, const CAABox&, const TLockedToken<CModel>*, const CSkinnedModel*);
  virtual void SetThermal();
  virtual void SetThermalColdScale();
  virtual void DoThermalBlendCold();
  virtual void DoThermalBlendHot();
  virtual void GetStaticWorldDataSize();
  virtual void SetGXRegister1Color();
  virtual void SetWorldLightFadeLevel();
  virtual void Something();
  virtual void PrepareDynamicLights();
};

extern CCubeRenderer* gpRender;

#endif
