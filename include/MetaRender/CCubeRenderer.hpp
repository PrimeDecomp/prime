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
  void SetBlendMode_AdditiveDestColor() override;
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
  virtual void PrepareDynamicLights();

  void AllocatePhazonSuitMaskTexture();

  uchar x8_pad[0x310];
  bool x318_24_ : 1;
  bool x318_25_ : 1;
  bool x318_26_ : 1;
};

extern CCubeRenderer* gpRender;

#endif // _CCUBERENDERER
