#include "MetaRender/CCubeRenderer.hpp"

#include "Kyoto/Graphics/CDrawable.hpp"
#include "Kyoto/Graphics/CDrawablePlaneObject.hpp"
#include "Kyoto/Graphics/CGraphicsPalette.hpp"
#include "Kyoto/Graphics/CModelFlags.hpp"
#include "Kyoto/Graphics/CTexture.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Math/CUnitVector3f.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "dolphin/types.h"
#include "rstl/math.hpp"
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
  static uchar var##Holder[sizeof(__typeof__(*var))];                                              \
  var = new (var##Holder) std::type_identity< __typeof__(*var) >::type();

  HOLDER(sData);
  HOLDER(sBuckets);
  HOLDER(sPlaneObjectData);
  HOLDER(sPlaneObjectBucket);

  sBuckets->resize(50, BucketHolderType());
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
  sData->push_back(CDrawable(dtype, extraSort, dist, aabb, const_cast< void* >(data)));
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
    const rstl::vector< CMetroidModelInstance, rstl::rmemory_allocator >* geometry,
    const CAreaOctTree* octTree,
    const rstl::auto_ptr< rstl::vector< TCachedToken< CTexture >, rstl::rmemory_allocator > >&
        textures,
    const rstl::auto_ptr< rstl::vector< rstl::auto_ptr< CCubeModel >, rstl::rmemory_allocator > >&
        models,
    int areaIdx)
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
#if NONMATCHING
, x34_unk1(0)
#endif
, x38_unk2(0)
, x3c_unk3(0)
, x40_unk4(0)
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
