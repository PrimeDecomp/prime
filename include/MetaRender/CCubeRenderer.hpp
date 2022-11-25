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
  ~CCubeRenderer() override;
  // TODO types
  void AddStaticGeometry() override;
  void EnablePVS() override;
  void DisablePVS() override;
  void RemoveStaticGeometry() override;
  void DrawUnsortedGeometry() override;
  void DrawSortedGeometry() override;
  void DrawStaticGeometry() override;
  void DrawAreaGeometry() override;
  void PostRenderFogs() override;
  void SetModelMatrix(const CTransform4f& xf) override;
  void AddParticleGen(const CParticleGen& gen) override;
  void AddParticleGen2() override;
  void AddPlaneObject() override;
  void AddDrawable(const void* obj, const CVector3f& pos, const CAABox& bounds, int mode,
                   IRenderer::EDrawableSorting sorting) override;
  void SetDrawableCallback(TDrawableCallback cb, void* ctx) override;
  void SetWorldViewpoint() override;
  void SetPerspective1(float, float, float, float, float) override;
  void SetPerspective2() override;
  rstl::pair< CVector2f, CVector2f > SetViewportOrtho(bool centered, float znear,
                                                      float zfar) override;
  void SetClippingPlanes() override;
  void SetViewport() override;
  void SetDepthReadWrite(bool read, bool update) override;
  void SetBlendMode_AdditiveAlpha() override;
  void SetBlendMode_AlphaBlended() override;
  void SetBlendMode_NoColorWrite() override;
  void SetBlendMode_ColorMultiply() override;
  void SetBlendMode_InvertDst() override;
  void SetBlendMode_InvertSrc() override;
  void SetBlendMode_Replace() override;
  void SetBlendMode_AdditiveDestColor() override;
  void SetDebugOption() override;
  void BeginScene() override;
  void EndScene() override;
  void BeginPrimitive(GXPrimitive prim, int count) override;
  void BeginLines(int nverts) override;
  void BeginLineStrip(int nverts) override;
  void BeginTriangles(int nverts) override;
  void BeginTriangleStrip(int nverts) override;
  void BeginTriangleFan(int nverts) override;
  void PrimVertex(const CVector3f& vtx) override;
  void PrimNormal(const CVector3f& nrm) override;
  void PrimColor(float r, float g, float b, float a) override;
  void PrimColor(const CColor& color) override;
  void EndPrimitive() override;
  void SetAmbientColor(const CColor& color) override;
  void DrawString() override;
  void GetFPS() override;
  void CacheReflection() override;
  void DrawSpaceWarp() override;
  void DrawThermalModel() override;
  void DrawModelDisintegrate() override;
  void DrawModelFlat() override;
  void SetWireframeFlags() override;
  void SetWorldFog() override;
  void RenderFogVolume(const CColor&, const CAABox&, const TLockedToken< CModel >*,
                       const CSkinnedModel*) override;
  void SetThermal() override;
  void SetThermalColdScale() override;
  void DoThermalBlendCold() override;
  void DoThermalBlendHot() override;
  void GetStaticWorldDataSize() override;
  void SetGXRegister1Color() override;
  void SetWorldLightFadeLevel() override;
  void Something() override;
  void PrepareDynamicLights() override;

  void AllocatePhazonSuitMaskTexture();

  uchar x8_pad[0x310];
  bool x318_24_ : 1;
  bool x318_25_ : 1;
  bool x318_26_ : 1;
};

extern CCubeRenderer* gpRender;

#endif // _CCUBERENDERER
