#include "MetaRender/CCubeRenderer.hpp"

#include "Kyoto/Animation/CSkinnedModel.hpp"
#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Graphics/CCubeMaterial.hpp"
#include "Kyoto/Graphics/CCubeModel.hpp"
#include "Kyoto/Graphics/CCubeSurface.hpp"
#include "Kyoto/Graphics/CDrawable.hpp"
#include "Kyoto/Graphics/CDrawablePlaneObject.hpp"
#include "Kyoto/Graphics/CGX.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Graphics/CGraphicsPalette.hpp"
#include "Kyoto/Graphics/CLight.hpp" // IWYU pragma: keep
#include "Kyoto/Graphics/CModelFlags.hpp"
#include "Kyoto/Graphics/CTexture.hpp"
#include "Kyoto/IObjectStore.hpp"
#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CFrustumPlanes.hpp"
#include "Kyoto/Math/CPlane.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Math/CUnitVector3f.hpp"
#include "Kyoto/Math/CVector2f.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/Particles/CParticleGen.hpp"
#include "Kyoto/TToken.hpp"
#include "MetaRender/IRenderer.hpp"
#include "Weapons/IWeaponRenderer.hpp"
#include "WorldFormat/CMetroidModelInstance.hpp"
#include "dolphin/gx/GXEnum.h"
#include "dolphin/gx/GXGeometry.h"
#include "dolphin/gx/GXStruct.h"
#include "dolphin/gx/GXVert.h"
#include "dolphin/types.h"
#include "rstl/auto_ptr.hpp"
#include "rstl/construct.hpp"
#include "rstl/math.hpp"
#include "rstl/optional_object.hpp"
#include "rstl/pair.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/vector.hpp"

#include <string.h>
#include <type_traits>

CCubeRenderer* CCubeRenderer::sRenderer = nullptr;
static CModelFlags skNormalFlag = CModelFlags::Normal();
static CModelFlags skNormalFlagNoUpdate = CModelFlags::Normal().DepthCompareUpdate(true, false);

namespace Buckets {
typedef rstl::reserved_vector< CDrawable*, 128 > BucketHolderType;

static rstl::pair< float, float > skWorstMinMaxDistance(99999.f, -99999.f);
static rstl::reserved_vector< ushort, 50 > sBucketIndex;
static rstl::reserved_vector< CDrawable, 512 >* sData;
static rstl::reserved_vector< BucketHolderType, 50 >* sBuckets;
static rstl::pair< float, float > sMinMaxDistance = skWorstMinMaxDistance;
static rstl::reserved_vector< CDrawablePlaneObject, 8 >* sPlaneObjectData;
static rstl::reserved_vector< ushort, 8 >* sPlaneObjectBucket;

void Init() {
#define HOLDER(var)                                                                                \
  static uchar var##Holder[sizeof(__typeof__(*var)) + 4];                                          \
  var = new (var##Holder) std::type_identity< __typeof__(*var) >::type();

  HOLDER(sData);
  HOLDER(sBuckets);
  HOLDER(sPlaneObjectData);
  HOLDER(sPlaneObjectBucket);

  sBuckets->resize(50);
  sMinMaxDistance = skWorstMinMaxDistance;
}

void Shutdown() {
  sData = nullptr;
  sBuckets = nullptr;
  sPlaneObjectData = nullptr;
  sPlaneObjectBucket = nullptr;
}

// TODO non-matching
void Insert(const CVector3f& pos, const CAABox& aabb, EDrawableType dtype, const void* data,
            const CPlane& plane, ushort extraSort) {
  if (sData->size() == sData->capacity()) {
    return;
  }
  float dist = plane.GetHeight(pos);
  const CDrawable& drawable = CDrawable(dtype, extraSort, dist, aabb, const_cast< void* >(data));
  sData->push_back(drawable);
  sMinMaxDistance.first = rstl::min_val(dist, sMinMaxDistance.first);
  sMinMaxDistance.second = rstl::max_val(dist, sMinMaxDistance.second);
#ifdef __MWERKS__
  __dcbt(&sData->back(), 0);
#endif
}

void InsertPlaneObject(float closeDist, float farDist, const CAABox& aabb, bool invertTest,
                       const CPlane& plane, bool zOnly, EDrawableType dtype, const void* data) {
  // TODO
}

void Sort() {
  // TODO
}

void Clear() {
  sData->clear();
  sBucketIndex.clear();
  sPlaneObjectData->clear();
  sPlaneObjectBucket->clear();
  for (AUTO(it, sBuckets->begin()); it != sBuckets->end(); ++it) {
    it->clear();
  }
  sMinMaxDistance = skWorstMinMaxDistance;
}
} // namespace Buckets

CCubeRenderer::CAreaListItem::CAreaListItem(
    const rstl::vector< CMetroidModelInstance >* geometry, const CAreaOctTree* octTree,
    const rstl::auto_ptr< rstl::vector< TCachedToken< CTexture > > >& textures,
    const rstl::auto_ptr< rstl::vector< rstl::auto_ptr< CCubeModel > > >& models, int areaIdx)
: x0_geometry(geometry)
, x4_octTree(octTree)
, x8_textures(textures)
, xc_models(models)
, x18_areaIdx(areaIdx)
, x1c_lightOctreeWords() {}

// TODO CSkinnedModel
extern "C" void fn_80352740();

CCubeRenderer::CCubeRenderer(IObjectStore& objStore, COsContext& osContext, CMemorySys& memorySys,
                             CResFactory& resFactory)
: x8_factory(resFactory)
, xc_objStore(objStore)
, x10_font(1.f)
, x18_primVertCount(0)
, x1c_areaListItems()
, x34_surfaces()
, x44_frustumPlanes(CTransform4f::Identity(), 1.5707964f, 1.f, 1.f, false, 100.f)
, xa8_drawableCallback(nullptr)
#if NONMATCHING
, xac_drawableCallbackUserData(nullptr)
#endif
, xb0_viewPlane(0.f, CUnitVector3f(0.f, 1.f, 0.f, CUnitVector3f::kN_Yes))
, xc0_pvsMode(0)
#if NONMATCHING
, xc4_unk5(0)
#endif
, xc8_pvsVisSet()
, xe0_pvsAreaIdx(-1)
, xe4_blackTex(kTF_RGB565, 4, 4, 1)
, x14c_reflectionTex()
, x150_reflectionTex(kTF_IA8, 32, 32, 1)
, x1b8_fogVolumeRamp(kTF_I8, 256, 256, 1)
, x220_sphereRamp(kTF_I8, 32, 32, 1)
, x288_thermalPalette(kPF_RGB565, 16)
, x2a8_thermalRand(20)
, x2ac_fogVolumes()
, x2c4_spaceWarps()
, x2dc_reflectionAge(2)
, x2e0_primColor(CColor::White())
, x2e4_primNormal(CVector3f::Forward())
, x2f0_thermalVisorLevel(1.f)
, x2f4_thermalColor(static_cast< uchar >(255), static_cast< uchar >(0), static_cast< uchar >(255))
, x2f8_thermalColdScale(0)
, x2fc_tevReg1Color(static_cast< uchar >(255), static_cast< uchar >(0), static_cast< uchar >(255))
, x300_dynamicLights()
, x310_phazonSuitMaskCountdown(0)
, x314_phazonSuitMask()
, x318_24_reflectionDirty(false)
, x318_25_drawWireframe(false)
, x318_26_requestRGBA6(false)
, x318_27_currentRGBA6(false)
, x318_28_disableFog(false)
, x318_29_thermalVisor(false)
, x318_30_inAreaDraw(false)
, x318_31_persistRGBA6(false) {
  void* data = xe4_blackTex.Lock();
  memset(data, 0, 32);
  xe4_blackTex.UnLock();
  GenerateReflectionTex();
  GenerateFogVolumeRampTex();
  GenerateSphereRampTex();
  LoadThermoPalette();
  sRenderer = this;
  Buckets::Init();
  fn_80352740();
}

void CCubeRenderer::GenerateReflectionTex() {
  // TODO
}

void CCubeRenderer::GenerateFogVolumeRampTex() {
  // TODO
}

void CCubeRenderer::GenerateSphereRampTex() {
  const int height = 32;
  const int width = 32;
  const float halfRes = (height - 1) / 2.f;

  uchar* data = static_cast< uchar* >(x220_sphereRamp.Lock());
  for (int y = 0; y < height; ++y) {
    int start = y * width;
    for (int x = 0; x < width; ++x) {
      // I8 block is 8x4 (WxH)
      // Convert swizzled coords to linear
      float fx = static_cast< float >(((y % 4) << 3) + (x & 7));
      float fy = static_cast< float >(((y / 4) << 2) + (x >> 3));
      fx = (fx / halfRes) - 1.f;
      fy = (fy / halfRes) - 1.f;
      float mag = CMath::SqrtF(fx * fx + fy * fy);
      float value = CMath::Clamp(0.f, 1.f - (mag * mag), 1.f);
      data[start + x] = static_cast< uchar >(value * 255.f);
    }
  }
  x220_sphereRamp.UnLock();
}

void CCubeRenderer::LoadThermoPalette() {
  x288_thermalPalette.Lock();
  TLockedToken< CTexture > token = xc_objStore.GetObj("TXTR_ThermoPalette");
  int i = 0;
  if (const CGraphicsPalette* pal = token->GetPalette()) {
    while (i < 16) {
      x288_thermalPalette.GetPaletteData()[i] = pal->GetPaletteData()[i];
      ++i;
    }
  } else {
    while (i < 16) {
      x288_thermalPalette.GetPaletteData()[i++] = 0;
    }
  }
  x288_thermalPalette.UnLock();
}

CCubeRenderer::~CCubeRenderer() {
  sRenderer = nullptr;
  Buckets::Shutdown();
  CSkinnedModel::RemoveDummySkinnedModelRef();
  if (!x314_phazonSuitMask.null()) {
    x314_phazonSuitMask->fn_8030E10C();
  }
}

void CCubeRenderer::AddStaticGeometry(const rstl::vector< CMetroidModelInstance >* geometry,
                                      const CAreaOctTree* octTree, int areaIdx) {
  if (FindStaticGeometry(geometry) == x1c_areaListItems.end()) {
    rstl::auto_ptr< rstl::vector< rstl::auto_ptr< CCubeModel > > > models =
        rs_new rstl::vector< rstl::auto_ptr< CCubeModel > >();
    rstl::auto_ptr< rstl::vector< TCachedToken< CTexture > > > textures =
        rs_new rstl::vector< TCachedToken< CTexture > >();
    if (!geometry->empty()) {
      CCubeModel::MakeTexturesFromMats(geometry->front().GetMaterialPointer(), *textures,
                                       xc_objStore, false);
      models->reserve(geometry->size());
      for (int i = 0; i < geometry->size(); ++i) {
        const CMetroidModelInstance* it = &geometry->at(i);
        models->push_back(rs_new CCubeModel(
            const_cast< rstl::vector< void* >* >(&it->GetSurfaces()), textures.get(),
            it->GetMaterialPointer(), it->GetVertexPointer(), it->GetColorPointer(),
            it->GetNormalPointer(), it->GetTCPointer(), it->GetPackedTCPointer(),
            it->GetBoundingBox(), it->GetFlags(), false, i));
      }
    }
    x1c_areaListItems.push_back(CAreaListItem(geometry, octTree, textures, models, areaIdx));
    GXInvalidateVtxCache();
  }
}

rstl::list< CCubeRenderer::CAreaListItem >::iterator
CCubeRenderer::FindStaticGeometry(const rstl::vector< CMetroidModelInstance >* geometry) {
  for (AUTO(it, x1c_areaListItems.begin()); it != x1c_areaListItems.end(); ++it) {
    if (it->x0_geometry == geometry) {
      return it;
    }
  }
  return x1c_areaListItems.end();
}

void CCubeRenderer::RemoveStaticGeometry(const rstl::vector< CMetroidModelInstance >* geometry) {
  AUTO(search, FindStaticGeometry(geometry));
  if (search != x1c_areaListItems.end()) {
    x1c_areaListItems.erase(search);
  }
}

void CCubeRenderer::SetModelMatrix(const CTransform4f& xf) { CGraphics::SetModelMatrix(xf); }

// TODO non-matching
void CCubeRenderer::SetWorldViewpoint(const CTransform4f& xf) {
  CGraphics::SetViewPointMatrix(xf);
  const CUnitVector3f forward(xf.GetColumn(kDY), CUnitVector3f::kN_No);
  xb0_viewPlane = CPlane(CVector3f::Dot(forward, xf.GetTranslation()), forward);
}

void CCubeRenderer::BeginScene() {
  int width = CGraphics::GetViewport().mWidth;
  int height = CGraphics::GetViewport().mHeight;
  CGraphics::SetUseVideoFilter(true);
  CGraphics::SetViewport(0, 0, width, height);
  CGraphics::SetClearColor(CColor(static_cast< uchar >(0), static_cast< uchar >(0),
                                  static_cast< uchar >(0), static_cast< uchar >(0)));
  CGraphics::SetCullMode(kCM_Front);
  CGraphics::SetDepthWriteMode(true, kE_LEqual, true);
  CGraphics::SetBlendMode(kBM_Blend, kBF_SrcAlpha, kBF_InvSrcAlpha, kLO_Clear);
#if NONMATCHING
  float aspect = static_cast< float >(width) / static_cast< float >(height);
#else
  float aspect = 1.3333334f;
#endif
  CGraphics::SetPerspective(75.f, aspect, 1.f, 4096.f);
  CGraphics::SetModelMatrix(CTransform4f::Identity());
  CGraphics::TickRenderTimings();
  if (x310_phazonSuitMaskCountdown != 0) {
    --x310_phazonSuitMaskCountdown;
    if (x310_phazonSuitMaskCountdown == 0) {
      x314_phazonSuitMask->fn_8030E10C();
      x314_phazonSuitMask = nullptr;
    }
  }

  x318_27_currentRGBA6 = x318_26_requestRGBA6;
  if (!x318_31_persistRGBA6) {
    x318_26_requestRGBA6 = false;
  }

  GXSetPixelFmt(x318_27_currentRGBA6 ? GX_PF_RGBA6_Z24 : GX_PF_RGB8_Z24, GX_ZC_LINEAR);
  GXSetAlphaUpdate(GX_TRUE);
  GXSetDstAlpha(GX_TRUE, 0);
  CGraphics::BeginScene();
}

void CCubeRenderer::EndScene() {
  x318_31_persistRGBA6 = !CGraphics::IsBeginSceneClearFb();
  CGraphics::EndScene();
  if (x2dc_reflectionAge >= 2) {
    x14c_reflectionTex = nullptr;
  } else {
    ++x2dc_reflectionAge;
  }
}

void CCubeRenderer::AddParticleGen(const CParticleGen& gen) {
  AUTO(bounds, gen.GetBounds());
  if (bounds) {
    CVector3f closestPoint = bounds->ClosestPointAlongVector(xb0_viewPlane.GetNormal());
    Buckets::Insert(closestPoint, *bounds, kDT_Particle, static_cast< const void* >(&gen),
                    xb0_viewPlane, 0);
  }
}

void CCubeRenderer::AddParticleGen(const CParticleGen& gen, const CVector3f& pos,
                                   const CAABox& bounds) {
  Buckets::Insert(pos, bounds, kDT_Particle, static_cast< const void* >(&gen), xb0_viewPlane, 0);
}

void CCubeRenderer::AddPlaneObject(const void* obj, const CAABox& aabb, const CPlane& plane,
                                   int type) {
  static const CVector3f sOptimalPlane(0.f, 0.f, 1.f);

  CVector3f closestPoint = aabb.ClosestPointAlongVector(xb0_viewPlane.GetNormal());
  float closestDist = xb0_viewPlane.GetHeight(closestPoint);
  CVector3f furthestPoint = aabb.FurthestPointAlongVector(xb0_viewPlane.GetNormal());
  float furthestDist = xb0_viewPlane.GetHeight(furthestPoint);
  if (closestDist < 0.f && furthestDist < 0.f) {
    return;
  }

  bool zOnly;
  if (plane.GetNormal() == sOptimalPlane) {
    zOnly = true;
  } else {
    zOnly = false;
  }

  bool invertTest;
  if (zOnly) {
    if (CGraphics::GetViewMatrix().GetTranslation().GetZ() >= plane.GetConstant()) {
      invertTest = true;
    } else {
      invertTest = false;
    }
  } else if (plane.GetHeight(CGraphics::GetViewMatrix().GetTranslation()) >= 0.f) {
    invertTest = true;
  } else {
    invertTest = false;
  }

  Buckets::InsertPlaneObject(closestDist, furthestDist, aabb, invertTest, plane, zOnly,
                             EDrawableType(type + 2), obj);
}

void CCubeRenderer::AddDrawable(const void* obj, const CVector3f& pos, const CAABox& aabb, int mode,
                                IRenderer::EDrawableSorting sorting) {
  if (sorting == IRenderer::kDS_UnsortedCallback) {
    xa8_drawableCallback(obj, xac_drawableCallbackUserData, mode);
  } else {
    Buckets::Insert(pos, aabb, EDrawableType(mode + 2), obj, xb0_viewPlane, 0);
  }
}

void CCubeRenderer::SetupRendererStates(bool depthWrite) {
  CGraphics::DisableAllLights();
  CGraphics::SetModelMatrix(CTransform4f::Identity());
  CGraphics::SetAmbientColor(CColor(0));
  CGraphics::SetDepthWriteMode(true, kE_LEqual, depthWrite);
  CCubeMaterial::ResetCachedMaterials();
  GXSetTevColor(GX_TEVREG1, x2fc_tevReg1Color.GetGXColor());
}

void CCubeRenderer::SetupCGraphicsStates() {
  const GXColor sWhite = {255, 255, 255, 255};
  CGraphics::DisableAllLights();
  CGraphics::SetModelMatrix(CTransform4f::Identity());
  CTevCombiners::ResetStates();
  CGraphics::SetAmbientColor(CColor(0.4f, 0.4f, 0.4f, 1.f));
  CGX::SetChanMatColor(CGX::Channel0, sWhite);
  CGraphics::SetDepthWriteMode(true, kE_LEqual, true);
  CGX::SetChanCtrl(CGX::Channel1, false, GX_SRC_REG, GX_SRC_REG, GX_LIGHT_NULL, GX_DF_NONE,
                   GX_AF_NONE);
  CCubeMaterial::EnsureTevsDirect();
}

namespace Renderer {
IRenderer* AllocateRenderer(IObjectStore& objStore, COsContext& osContext, CMemorySys& memorySys,
                            CResFactory& resFactory) {
  CCubeRenderer* renderer = rs_new CCubeRenderer(objStore, osContext, memorySys, resFactory);
  IWeaponRenderer::SetRenderer(renderer);
  return renderer;
}
} // namespace Renderer

void CCubeRenderer::PrimColor(float r, float g, float b, float a) {
  x2e0_primColor.Set(r, g, b, a);
}

void CCubeRenderer::PrimColor(const CColor& color) { x2e0_primColor = color; }

void CCubeRenderer::BeginPrimitive(IRenderer::EPrimitiveType type, int nverts) {
  const GXVtxDescList vtxDescList[4] = {
      {GX_VA_POS, GX_DIRECT},
      {GX_VA_NRM, GX_DIRECT},
      {GX_VA_CLR0, GX_DIRECT},
      {GX_VA_NULL, GX_NONE},
  };
  CGX::SetChanCtrl(CGX::Channel0, false, GX_SRC_REG, GX_SRC_VTX, GX_LIGHT_NULL, GX_DF_NONE,
                   GX_AF_NONE);
  CGX::SetNumChans(1);
  CGX::SetNumTexGens(0);
  CGX::SetNumTevStages(1);
  CGX::SetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR0A0);
  CGX::SetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_RASC);
  CGX::SetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_RASA);
  CGX::SetStandardTevColorAlphaOp(GX_TEVSTAGE0);
  x18_primVertCount = nverts;
  CGX::SetVtxDescv(vtxDescList);
  CGX::Begin(GXPrimitive(type), GX_VTXFMT0, nverts);
}

void CCubeRenderer::BeginLines(int nverts) {
  CCubeRenderer::BeginPrimitive(IRenderer::kPT_Lines, nverts);
}

void CCubeRenderer::BeginLineStrip(int nverts) {
  CCubeRenderer::BeginPrimitive(IRenderer::kPT_LineStrip, nverts);
}

void CCubeRenderer::BeginTriangles(int nverts) {
  CCubeRenderer::BeginPrimitive(IRenderer::kPT_Triangles, nverts);
}

void CCubeRenderer::BeginTriangleStrip(int nverts) {
  CCubeRenderer::BeginPrimitive(IRenderer::kPT_TriangleStrip, nverts);
}

void CCubeRenderer::BeginTriangleFan(int nverts) {
  CCubeRenderer::BeginPrimitive(IRenderer::kPT_TriangleFan, nverts);
}

void CCubeRenderer::PrimVertex(const CVector3f& vtx) {
  --x18_primVertCount;
  GXPosition3f32(vtx.GetX(), vtx.GetY(), vtx.GetZ());
  GXNormal3f32(x2e4_primNormal.GetX(), x2e4_primNormal.GetY(), x2e4_primNormal.GetZ());
  GXColor1u32(x2e0_primColor.GetColor_u32());
}

void CCubeRenderer::PrimNormal(const CVector3f& nrm) { x2e4_primNormal = nrm; }

void CCubeRenderer::EndPrimitive() {
  while (x18_primVertCount != 0) {
    PrimVertex(CVector3f::Zero());
  }
  CGX::End();
}

void CCubeRenderer::SetAmbientColor(const CColor& color) { CGraphics::SetAmbientColor(color); }

void CCubeRenderer::SetPerspective(float fovy, float aspect, float znear, float zfar) {
  CGraphics::SetPerspective(fovy, aspect, znear, zfar);
}

void CCubeRenderer::SetPerspective(float fovy, float width, float height, float znear, float zfar) {
  CGraphics::SetPerspective(fovy, width / height, znear, zfar);
}

rstl::pair< CVector2f, CVector2f > CCubeRenderer::SetViewportOrtho(bool centered, float znear,
                                                                   float zfar) {
  const CViewport& vp = CGraphics::GetViewport();
  int vpLeft = vp.mLeft;
  int vpTop = vp.mTop;
  int vpWidth = vp.mWidth;
  int vpHeight = vp.mHeight;
  float left = static_cast< float >(centered ? vpLeft - vpWidth / 2 : vpLeft);
  float top = static_cast< float >(centered ? vpTop - vpHeight / 2 : vpTop);
  float right = static_cast< float >(centered ? vpLeft + vpWidth / 2 : vpLeft + vpWidth);
  float bottom = static_cast< float >(centered ? vpTop + vpHeight / 2 : vpTop + vpHeight);
  CGraphics::SetOrtho(left, right, bottom, top, znear, zfar);
  CGraphics::SetViewPointMatrix(CTransform4f::Identity());
  CGraphics::SetModelMatrix(CTransform4f::Identity());
  return rstl::pair< CVector2f, CVector2f >(CVector2f(left, top), CVector2f(right, bottom));
}

void CCubeRenderer::SetViewport(int left, int bottom, int width, int height) {
  CGraphics::SetViewport(left, bottom, width, height);
  CGraphics::SetScissor(left, bottom, width, height);
}

void CCubeRenderer::SetDepthReadWrite(const bool read, const bool update) {
  CGraphics::SetDepthWriteMode(read, kE_LEqual, update);
}

void CCubeRenderer::SetBlendMode_AdditiveAlpha() {
  CGraphics::SetBlendMode(kBM_Blend, kBF_SrcAlpha, kBF_One, kLO_Clear);
}

void CCubeRenderer::SetBlendMode_AlphaBlended() {
  CGraphics::SetBlendMode(kBM_Blend, kBF_SrcAlpha, kBF_InvSrcAlpha, kLO_Clear);
}

void CCubeRenderer::SetBlendMode_NoColorWrite() {
  CGraphics::SetBlendMode(kBM_Blend, kBF_Zero, kBF_One, kLO_Clear);
}

void CCubeRenderer::SetBlendMode_ColorMultiply() {
  CGraphics::SetBlendMode(kBM_Blend, kBF_Zero, kBF_SrcColor, kLO_Clear);
}

void CCubeRenderer::SetBlendMode_InvertDst() {
  CGraphics::SetBlendMode(kBM_Blend, kBF_InvSrcColor, kBF_Zero, kLO_Clear);
}

void CCubeRenderer::SetBlendMode_InvertSrc() {
  CGraphics::SetBlendMode(kBM_Logic, kBF_One, kBF_Zero, kLO_InvCopy);
}

void CCubeRenderer::SetBlendMode_Replace() {
  CGraphics::SetBlendMode(kBM_Blend, kBF_One, kBF_Zero, kLO_Clear);
}

void CCubeRenderer::SetBlendMode_AdditiveDestColor() {
  CGraphics::SetBlendMode(kBM_Blend, kBF_SrcColor, kBF_One, kLO_Clear);
}

void CCubeRenderer::SetClippingPlanes(const CFrustumPlanes& frustum) {
  x44_frustumPlanes = frustum;
}

float CCubeRenderer::GetFPS() { return CGraphics::GetFPS(); }

void CCubeRenderer::SetDrawableCallback(IRenderer::TDrawableCallback cb, const void* ctx) {
  xa8_drawableCallback = cb;
  xac_drawableCallbackUserData = ctx;
}

void CCubeRenderer::SetDebugOption(IRenderer::EDebugOption option, int value) {
  switch (option) {
  case IRenderer::kDO_PVSMode:
    xc0_pvsMode = value != 0 ? 1 : 0;
    break;
  case IRenderer::kDO_PVSState:
    xc4_pvsState = value;
    break;
  case IRenderer::kDO_FogDisabled:
    x318_28_disableFog = value != 0;
    break;
  default:
    break;
  }
}

CTexture* CCubeRenderer::GetRealReflection() {
  x2dc_reflectionAge = 0;
  if (!x14c_reflectionTex.null()) {
    return x14c_reflectionTex.get();
  }
  return &xe4_blackTex;
}
