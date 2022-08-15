#include "MetroidPrime/CActor.hpp"

#include "MetroidPrime/CActorLights.hpp"
#include "MetroidPrime/CActorParameters.hpp"
#include "MetroidPrime/CAnimData.hpp"
#include "MetroidPrime/CModelData.hpp"
#include "MetroidPrime/Cameras/CCameraManager.hpp"
#include "MetroidPrime/Cameras/CGameCamera.hpp"

#include "Kyoto/Audio/CAudioSys.hpp"
#include "Kyoto/Audio/CSfxManager.hpp"

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

SAdvancementDeltas CActor::UpdateAnimation(float dt, CStateManager& mgr, bool advTree) {
  SAdvancementDeltas result = ModelData()->AdvanceAnimation(dt, mgr, GetAreaId(), advTree);
  ModelData()->AdvanceParticles(GetTransform(), dt, mgr);
  UpdateSfxEmitters();
  if (HasAnimation()) {
    u16 maxVol = xd4_maxVol;
    s32 aid = x4_areaId.Value();

    const CGameCamera* camera = mgr.GetCameraManager().GetCurrentCamera(mgr);
    const CVector3f origin = GetTranslation();
    const CVector3f toCamera = camera->GetTranslation() - origin;

    const CInt32POINode* intNode = nullptr;
    const CSoundPOINode* soundNode = nullptr;
    const CParticlePOINode* particleNode = nullptr;
      
    s32 soundNodeCount = 0;
    if (HasAnimation()) {
      soundNode = GetAnimationData()->GetSoundPOIList(soundNodeCount);
    } else {
      soundNode = nullptr;
    }
    if (soundNodeCount > 0 && soundNode != nullptr) {
      for (s32 i = 0; i < soundNodeCount; ++soundNode, ++i) {
        s32 charIdx = soundNode->GetCharacterIndex();
        if (soundNode->GetPoiType() != kPT_Sound || GetMuted())
          continue;
        if (charIdx != -1 && GetAnimationData()->GetCharacterIndex() != charIdx)
          continue;
        ProcessSoundEvent(soundNode->GetSoundId(), soundNode->GetWeight(), soundNode->GetFlags(), soundNode->GetFallOff(),
                          soundNode->GetMaxDistance(), 20, maxVol, toCamera, origin, aid, mgr, true);
      }
    }

    s32 intNodeCount = 0;
    if (HasAnimation()) {
      intNode = GetAnimationData()->GetInt32POIList(intNodeCount);
    } else {
      intNode = nullptr;
    }
    if (intNodeCount > 0 && intNode != nullptr) {
      for (s32 i = 0; i < intNodeCount; ++intNode, ++i) {
        s32 charIdx = intNode->GetCharacterIndex();
        if (intNode->GetPoiType() == kPT_SoundInt32 && !GetMuted() &&
            (charIdx == -1 || GetAnimationData()->GetCharacterIndex() == charIdx)) {
          ProcessSoundEvent(intNode->GetValue(), intNode->GetWeight(), intNode->GetFlags(), 0.1f, 150.f, 20, maxVol, toCamera, origin, aid,
                            mgr, true);
        } else if (intNode->GetPoiType() == kPT_UserEvent) {
          DoUserAnimEvent(mgr, *intNode, static_cast< EUserEventType >(intNode->GetValue()), dt);
        }
      }
    }

    s32 particleNodeCount = 0;
    if (HasAnimation()) {
      particleNode = GetAnimationData()->GetParticlePOIList(particleNodeCount);
    } else {
      particleNode = nullptr;
    }
    if (particleNodeCount > 0 && particleNode != nullptr) {
      for (s32 i = 0; i < particleNodeCount; ++particleNode, ++i) {
        s32 charIdx = particleNode->GetCharacterIndex();
        if (charIdx != -1 && GetAnimationData()->GetCharacterIndex() != charIdx)
          continue;
        AnimationData()->SetParticleEffectState(particleNode->GetString(), true, mgr);
      }
    }
  }
  return result;
}

void CActor::RemoveEmitter() {
  CSfxHandle handle = x8c_loopingSfxHandle;
  if (handle) {
    CSfxManager::RemoveEmitter(handle);
    x88_sfxId = -1;
    x8c_loopingSfxHandle = 0;
  }
}

void CActor::DoUserAnimEvent(CStateManager& mgr, const CInt32POINode& node, EUserEventType type, float dt) {
  if (type == kUE_LoopedSoundStop) {
    RemoveEmitter();
  }
}

f32 CActor::GetAverageAnimVelocity(s32 anim) { return HasAnimation() ? GetAnimationData()->GetAverageVelocity(anim) : 0.f; }

void CActor::CalculateRenderBounds() {
  if (HasModelData()) {
    x9c_renderBounds = GetModelData()->GetBounds(GetTransform());
  } else {
    const CVector3f origin = GetTranslation();
    x9c_renderBounds = CAABox(origin, origin);
  }
}

void CActor::SetModelData(const CModelData& modelData) { x64_modelData = modelData.IsNull() ? nullptr : new CModelData(modelData); }

// Unreferenced
extern "C" {
void sub_8005502c() {}
}
