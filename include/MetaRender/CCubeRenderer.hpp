#ifndef _CCUBERENDERER
#define _CCUBERENDERER

#include "types.h"

#include <dolphin/gx/GXEnum.h>

#include "MetaRender/IRenderer.hpp"
#include "Weapons/IWeaponRenderer.hpp"

#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Math/CVector2f.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/TToken.hpp"

#include "rstl/pair.hpp"

class CSkinnedModel;
class CModel;

class CCubeRenderer : public IRenderer, public IWeaponRenderer {
public:
  ~CCubeRenderer();
  // TODO types
  void AddStaticGeometry();
  void EnablePVS(const CPVSVisSet& set, int areaIdx);
  void DisablePVS();
  void RemoveStaticGeometry();
  void DrawUnsortedGeometry(int areaIdx, int mask, int targetMask);
  void DrawSortedGeometry(int areaIdx, int mask, int targetMask);
  void DrawStaticGeometry(int areaIdx, int mask, int targetMask);
  void DrawAreaGeometry(int areaIdx, int mask, int targetMask);
  void PostRenderFogs();
  void SetModelMatrix(const CTransform4f& xf);
  void AddParticleGen(const CParticleGen& gen);
  void AddParticleGen2();
  void AddPlaneObject();
  void AddDrawable(const void* obj, const CVector3f& pos, const CAABox& bounds, int mode,
                   IRenderer::EDrawableSorting sorting);
  void SetDrawableCallback(TDrawableCallback cb, void* ctx);
  void SetWorldViewpoint();
  void SetPerspective1(float, float, float, float, float);
  void SetPerspective2();
  rstl::pair< CVector2f, CVector2f > SetViewportOrtho(bool centered, float znear,
                                                      float zfar);
  void SetClippingPlanes(const CFrustumPlanes&);
  void SetViewport(int left, int right, int width, int height);
  void SetDepthReadWrite(bool read, bool update);
  void SetBlendMode_AdditiveAlpha();
  void SetBlendMode_AlphaBlended();
  void SetBlendMode_NoColorWrite();
  void SetBlendMode_ColorMultiply();
  void SetBlendMode_InvertDst();
  void SetBlendMode_InvertSrc();
  void SetBlendMode_Replace();
  void SetBlendMode_AdditiveDestColor();
  void SetDebugOption();
  void BeginScene();
  void EndScene();
  void BeginPrimitive(GXPrimitive prim, int count);
  void BeginLines(int nverts);
  void BeginLineStrip(int nverts);
  void BeginTriangles(int nverts);
  void BeginTriangleStrip(int nverts);
  void BeginTriangleFan(int nverts);
  void PrimVertex(const CVector3f& vtx);
  void PrimNormal(const CVector3f& nrm);
  void PrimColor(float r, float g, float b, float a);
  void PrimColor(const CColor& color);
  void EndPrimitive();
  void SetAmbientColor(const CColor& color);
  void DrawString();
  void GetFPS();
  void CacheReflection();
  void DrawSpaceWarp();
  void DrawThermalModel();
  void DrawModelDisintegrate();
  void DrawModelFlat();
  void SetWireframeFlags();
  void SetWorldFog();
  void RenderFogVolume(const CColor&, const CAABox&, const TLockedToken< CModel >*,
                       const CSkinnedModel*);
  void SetThermal();
  void SetThermalColdScale();
  void DoThermalBlendCold();
  void DoThermalBlendHot();
  void GetStaticWorldDataSize();
  void SetGXRegister1Color();
  void SetWorldLightFadeLevel();
  void Something();
  void PrepareDynamicLights(const rstl::vector<CLight>& lights);

  void AllocatePhazonSuitMaskTexture();

  uchar x8_pad[0x310];
  bool x318_24_ : 1;
  bool x318_25_ : 1;
  bool x318_26_ : 1;
};

extern CCubeRenderer* gpRender;

#endif // _CCUBERENDERER
