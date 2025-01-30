#ifndef _CCUBERENDERER
#define _CCUBERENDERER

#include "types.h"

#include <dolphin/gx/GXEnum.h>

#include "MetaRender/IRenderer.hpp"

#include "Kyoto/CRandom16.hpp"
#include "Kyoto/CResFactory.hpp"
#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Graphics/CGraphicsPalette.hpp"
#include "Kyoto/Graphics/CLight.hpp"
#include "Kyoto/Graphics/CTexture.hpp"
#include "Kyoto/IObjectStore.hpp"
#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CFrustumPlanes.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Math/CVector2f.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/PVS/CPVSVisSet.hpp"
#include "Kyoto/TToken.hpp"
#include "Kyoto/Text/CFont.hpp"

#include "Weapons/IWeaponRenderer.hpp"

#include "WorldFormat/CAreaOctTree.hpp"

#include "rstl/list.hpp"
#include "rstl/optional_object.hpp"
#include "rstl/pair.hpp"
#include "rstl/single_ptr.hpp"
#include "rstl/vector.hpp"

class CAreaOctTree;
class CCubeModel;
class CMetroidModelInstance;
class CModel;
class CSkinnedModel;

class CCubeRenderer : public IRenderer, public IWeaponRenderer {
private:
  class CAreaListItem {
    CAreaListItem(
        const rstl::vector< CMetroidModelInstance, rstl::rmemory_allocator >* geometry,
        const CAreaOctTree* octTree,
        const rstl::auto_ptr< rstl::vector< TCachedToken< CTexture >, rstl::rmemory_allocator > >&
            textures,
        const rstl::auto_ptr<
            rstl::vector< rstl::auto_ptr< CCubeModel >, rstl::rmemory_allocator > >& models,
        int areaIdx);

  private:
    const rstl::vector< CMetroidModelInstance, rstl::rmemory_allocator >* x0_geometry;
    const CAreaOctTree* x4_octTree;
    const rstl::auto_ptr< rstl::vector< TCachedToken< CTexture >, rstl::rmemory_allocator > >
        x8_textures;
    const rstl::auto_ptr< rstl::vector< rstl::auto_ptr< CCubeModel >, rstl::rmemory_allocator > >
        xc_models;
    int x18_areaIdx;
    rstl::vector< uint > x1c_lightOctreeWords;
  };
  class CFogVolumeListItem {
    CTransform4f x0_xf;
    CColor x30_color;
    CAABox x34_aabb;
    rstl::optional_object< TCachedToken< CModel > > x4c_model;
    const CSkinnedModel* x5c_skinnedModel;
  };

public:
  CCubeRenderer(IObjectStore&, COsContext&, CMemorySys&, CResFactory&);
  ~CCubeRenderer() override;
  // TODO types
  void AddStaticGeometry() override;
  void EnablePVS(const CPVSVisSet& set, int areaIdx) override;
  void DisablePVS() override;
  void RemoveStaticGeometry() override;
  void DrawUnsortedGeometry(int areaIdx, int mask, int targetMask) override;
  void DrawSortedGeometry(int areaIdx, int mask, int targetMask) override;
  void DrawStaticGeometry(int areaIdx, int mask, int targetMask) override;
  void DrawAreaGeometry(int areaIdx, int mask, int targetMask) override;
  void PostRenderFogs() override;
  void SetModelMatrix(const CTransform4f& xf) override;
  void AddParticleGen(const CParticleGen& gen) override;
  void AddParticleGen(const CParticleGen& gen, const CVector3f&, const CAABox&) override;
  void AddPlaneObject() override;
  void AddDrawable(const void* obj, const CVector3f& pos, const CAABox& bounds, int mode,
                   IRenderer::EDrawableSorting sorting) override;
  void SetDrawableCallback(TDrawableCallback cb, void* ctx) override;
  void SetWorldViewpoint() override;
  void SetPerspective1(float, float, float, float, float) override;
  void SetPerspective2() override;
  rstl::pair< CVector2f, CVector2f > SetViewportOrtho(bool centered, float znear,
                                                      float zfar) override;
  void SetClippingPlanes(const CFrustumPlanes&) override;
  void SetViewport(int left, int right, int width, int height) override;
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
  void PrepareDynamicLights(const rstl::vector< CLight >& lights) override;

private:
  CResFactory& x8_factory;
  IObjectStore& xc_objStore;
  CFont x10_font;
  int x18_primVertCount;
  rstl::list< CAreaListItem > x1c_areaListItems;
  int x34_unk1;
  int x38_unk2;
  int x3c_unk3;
  int x40_unk4;
  CFrustumPlanes x44_frustumPlanes;
  TDrawableCallback xa8_drawableCallback;
  void* xac_drawableCallbackUserData;
  CPlane xb0_viewPlane;
  uchar xc0_pvsMode;
  int xc4_unk5;
  rstl::optional_object< CPVSVisSet > xc8_pvsVisSet;
  int xe0_pvsAreaIdx;
  CTexture xe4_blackTex;
  rstl::single_ptr< CTexture > x14c_reflectionTex;
  CTexture x150_reflectionTex;
  CTexture x1b8_fogVolumeRamp;
  CTexture x220_sphereRamp;
  CGraphicsPalette x288_thermalPalette;
  CRandom16 x2a8_thermalRand;
  rstl::list< CFogVolumeListItem > x2ac_fogVolumes;
  rstl::list< rstl::pair< CVector3f, float > > x2c4_spaceWarps;
  int x2dc_reflectionAge;
  CColor x2e0_primColor;
  CVector3f x2e4_primNormal;
  float x2f0_thermalVisorLevel;
  CColor x2f4_thermalColor;
  uchar x2f8_thermalColdScale;
  CColor x2fc_tevReg1Color;
  rstl::vector< CLight > x300_dynamicLights;
  int x310_phazonSuitMaskCountdown;
  rstl::single_ptr< CTexture > x314_phazonSuitMask;
  bool x318_24_reflectionDirty : 1;
  bool x318_25_drawWireframe : 1;
  bool x318_26_requestRGBA6 : 1;
  bool x318_27_currentRGBA6 : 1;
  bool x318_28_disableFog : 1;
  bool x318_29_thermalVisor : 1;
  bool x318_30_inAreaDraw : 1;
  bool x318_31_persistRGBA6 : 1;

  void AllocatePhazonSuitMaskTexture();
  void GenerateReflectionTex();
  void GenerateFogVolumeRampTex();
  void GenerateSphereRampTex();
  void LoadThermoPalette();

  static CCubeRenderer* sRenderer;
};
CHECK_SIZEOF(CCubeRenderer, 0x31C);

extern CCubeRenderer* gpRender;

#endif // _CCUBERENDERER
