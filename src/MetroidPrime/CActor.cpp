#include "MetroidPrime/CActor.hpp"
#include "MetroidPrime/CActorLights.hpp"
#include "MetroidPrime/CActorParameters.hpp"
#include "MetroidPrime/CModelData.hpp"

#include "Kyoto/Audio/CAudioSys.hpp"

static CMaterialList MakeActorMaterialList(const CMaterialList& in, const CActorParameters& params) {
  CMaterialList ret = in;
  if (params.GetVisorParameters().GetBool1()) {
    ret.Add(kMT_Unknown46);
  }
  if (params.GetVisorParameters().GetScanPassthrough()) {
    ret.Add(kMT_ScanPassthrough);
  }
  return ret;
}

CActor::CActor(TUniqueId uid, bool active, const rstl::string& name, const CEntityInfo& info, const CTransform4f& xf,
               const CModelData& mData, const CMaterialList& list, const CActorParameters& params, TUniqueId nextDrawNode)
: CEntity(uid, info, active, name)
, x34_transform(xf)
, x64_modelData(mData.IsStaticModel() ? nullptr : new CModelData(mData))
, x68_material(MakeActorMaterialList(list, params))
, x70_materialFilter(CMaterialFilter::MakeIncludeExclude(CMaterialList().Union(SolidMaterial), CMaterialList(0)))
, x88_sfxId(InvalidSfxId)
, x8c_loopingSfxHandle(0)
, x90_actorLights(mData.IsStaticModel() ? nullptr : params.GetLighting().MakeActorLights().release())
, x9c_renderBounds(CAABox::mskInvertedBox)
, xb4_drawFlags(CModelFlags::Normal())
, xbc_time(0.f)
, xc0_pitchBend(8192)
, xc4_fluidId(kInvalidUniqueId)
, xc6_nextDrawNode(nextDrawNode)
, xc8_drawnToken(-1)
, xcc_addedToken(-1)
, xd0_damageMag(params.GetThermalMag())
, xd4_maxVol(CAudioSys::kMaxVolume)
, xd8_nonLoopingSfxHandles(CSfxHandle(0))
, xe4_24_nextNonLoopingSfxHandle(0)
, xe4_27_notInSortedLists(true)
, xe4_28_transformDirty(true)
, xe4_29_actorLightsDirty(true)
, xe4_30_outOfFrustum(false)
, xe4_31_calculateLighting(true)
, xe5_24_shadowEnabled(false)
, xe5_25_shadowDirty(false)
, xe5_26_muted(false)
, xe5_27_useInSortedLists(true)
, xe5_28_callTouch(true)
, xe5_29_globalTimeProvider(params.GetUseGlobalRenderTime())
, xe5_30_renderUnsorted(params.ForceRenderUnsorted())
, xe5_31_pointGeneratorParticles(false)
, xe6_24_fluidCounter(0)
, xe6_27_thermalVisorFlags(params.IsHotInThermal() ? kTF_Hot : kTF_Cold)
, xe6_29_renderParticleDBInside(true)
, xe6_30_enablePitchBend(false)
, xe6_31_targetableVisorFlags(params.GetVisorParameters().GetMask())
, xe7_27_enableRender(true)
, xe7_28_worldLightingDirty(false)
, xe7_29_drawEnabled(active)
, xe7_30_doTargetDistanceTest(true)
, xe7_31_targetable(true) {
  if (x64_modelData) {
    if (params.GetXRay().first != 0) {
      x64_modelData->SetXRayModel(params.GetXRay());
    }
    if (params.GetInfra().first != 0) {
      x64_modelData->SetInfraModel(params.GetInfra());
    }
    const CLightParameters& lighting = params.GetLighting();
    if (!lighting.ShouldMakeLights() || lighting.GetMaxAreaLights() == 0) {
      x64_modelData->SetAmbientColor(lighting.GetAmbientColor());
    }
    x64_modelData->SetSortThermal(!params.NoSortThermal());
  }
  const CAssetId scanId = params.GetScannable().GetScannableObject0();
  if (scanId != kInvalidAssetId) {
    x98_scanObjectInfo = new TCachedToken< CScannableObjectInfo >(gpSimplePool->GetObj(SObjectTag('SCAN', scanId)));
    x98_scanObjectInfo->Lock();
  }
}

CActor::~CActor() { RemoveEmitter(); }

// TODO nonmatching
SAdvancementDeltas CActor::UpdateAnimation(float dt, CStateManager& mgr, bool advTree) {
  SAdvancementDeltas result = x64_modelData->AdvanceAnimation(dt, mgr, GetAreaId(), advTree);
  x64_modelData->AdvanceParticles(GetTransform(), dt, mgr);
  UpdateSfxEmitters();
  if (x64_modelData && x64_modelData->GetAnimData().get() != nullptr) {
  }
  return result;
}
