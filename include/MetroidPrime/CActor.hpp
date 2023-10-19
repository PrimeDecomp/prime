#ifndef _CACTOR
#define _CACTOR

#include "types.h"

#include "Collision/CMaterialFilter.hpp"
#include "Collision/CMaterialList.hpp"

#include "MetroidPrime/ActorCommon.hpp"
#include "MetroidPrime/CEntity.hpp"
#include "MetroidPrime/CModelData.hpp"


#include "Kyoto/Audio/CSfxHandle.hpp"
#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Graphics/CModelFlags.hpp"
#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/TToken.hpp"

#include "rstl/optional_object.hpp"
#include "rstl/pair.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/single_ptr.hpp"

class CActorLights;
class CActorParameters;
class CScannableObjectInfo;
class CSimpleShadow;

class CDamageInfo;
class CDamageVulnerability;
class CFrustumPlanes;
class CHealthInfo;
class CScriptWater;
class CWeaponMode;
class CInt32POINode;

class CActor : public CEntity {
public:
  enum EThermalFlags {
    kTF_None = 0,
    kTF_Cold = 1,
    kTF_Hot = 2,
  };
  enum EFluidState {
    kFS_EnteredFluid,
    kFS_InFluid,
    kFS_LeftFluid,
  };
  enum EScanState {
    kSS_Start,
    kSS_Processing,
    kSS_Done,
  };

  CActor(TUniqueId uid, bool active, const rstl::string& name, const CEntityInfo& info,
         const CTransform4f& xf, const CModelData& mData, const CMaterialList& list,
         const CActorParameters& params, TUniqueId nextDrawNode);
  ~CActor() override;

  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) override;
  void SetActive(const bool active) override;

  virtual void PreRender(CStateManager&, const CFrustumPlanes&);
  virtual void AddToRenderer(const CFrustumPlanes&, const CStateManager&) const;
  virtual void Render(const CStateManager&) const;
  virtual bool CanRenderUnsorted(const CStateManager&) const;
  virtual void CalculateRenderBounds();
  const CHealthInfo* GetHealthInfo(const CStateManager& mgr) const {
    return const_cast< CActor* >(this)->HealthInfo(const_cast< CStateManager& >(mgr));
  }
  virtual CHealthInfo* HealthInfo(CStateManager&);
  virtual const CDamageVulnerability* GetDamageVulnerability() const;
  virtual const CDamageVulnerability* GetDamageVulnerability(const CVector3f&, const CVector3f&,
                                                             const CDamageInfo&) const;
  virtual rstl::optional_object< CAABox > GetTouchBounds() const;
  virtual void Touch(CActor&, CStateManager&);
  virtual CVector3f GetOrbitPosition(const CStateManager&) const;
  virtual CVector3f GetAimPosition(const CStateManager&, float) const;
  virtual CVector3f GetHomingPosition(const CStateManager&, float) const;
  virtual CVector3f GetScanObjectIndicatorPosition(const CStateManager&) const;
  virtual EWeaponCollisionResponseTypes GetCollisionResponseType(const CVector3f&, const CVector3f&,
                                                                 const CWeaponMode&,
                                                                 int /*EProjectileAttrib?*/) const;
  virtual void FluidFXThink(EFluidState, CScriptWater&, CStateManager&);
  virtual void OnScanStateChange(EScanState, CStateManager&);
  virtual CAABox GetSortingBounds(const CStateManager&) const;
  virtual void DoUserAnimEvent(CStateManager& mgr, const CInt32POINode& node, EUserEventType type,
                               float dt);

  CAdvancementDeltas UpdateAnimation(float dt, CStateManager& mgr, bool advTree);

  void ProcessSoundEvent(int sfxId, float weight, int flags, float fallOff, float maxDist,
                         uchar minVol, uchar maxVol, const CVector3f& toListener,
                         const CVector3f& position, int aid, CStateManager& mgr, bool translateId);

  void UpdateSfxEmitters();
  void RemoveEmitter();
  void SetModelData(const CModelData& modelData);
  float GetAverageAnimVelocity(int anim);
  void EnsureRendered(const CStateManager& mgr) const;
  void EnsureRendered(const CStateManager& mgr, const CVector3f& pos, const CAABox& bounds) const;
  void DrawTouchBounds() const;
  bool IsModelOpaque(const CStateManager& mgr) const;
  void RenderInternal(const CStateManager& mgr) const;
  void CreateShadowIfNeeded();

  const CTransform4f& GetTransform() const { return x34_transform; }
  void SetTransform(const CTransform4f& xf) {
    x34_transform = xf;
    SetTransformDirty(true);
    SetTransformDirtySpare(true);
    SetPreRenderHasMoved(true);
  }
  void SetRotation(const CQuaternion& rot) { SetTransform(rot.BuildTransform4f(GetTranslation())); }
  CQuaternion GetRotation() const { return CQuaternion::FromMatrix(GetTransform()); }
  CVector3f GetTranslation() const { return x34_transform.GetTranslation(); }
  void SetTranslation(const CVector3f& vec);
  CTransform4f GetLocatorTransform(const rstl::string& segName) const;
  CTransform4f GetScaledLocatorTransform(const rstl::string& segName) const;
  float GetYaw() const;
  float GetPitch() const;
  void SetActorLights(rstl::auto_ptr< CActorLights > lights);
  void SetInFluid(bool b, TUniqueId uid);
  CScannableObjectInfo* GetScannableObjectInfo() const;
  void MoveScannableObjectInfoToActor(CActor* actor, CStateManager& mgr);

  /// ????
  bool NullModel() const { return !GetAnimationData() && !GetModelData()->HasNormalModel(); }

  bool HasModelData() const {
    return GetModelData() && (GetModelData()->HasAnimation() || GetModelData()->HasNormalModel());
  }
  CModelData* ModelData() { return x64_modelData.get(); }
  const CModelData* GetModelData() const { return x64_modelData.get(); }

  bool HasAnimation() const { return GetModelData() && GetModelData()->HasAnimation(); }
  CAnimData* AnimationData() { return ModelData()->AnimationData(); }
  const CAnimData* GetAnimationData() const { return GetModelData()->GetAnimationData(); }

  bool HasShadow() const { return GetShadow() != nullptr; }
  CSimpleShadow* Shadow() { return x94_simpleShadow.get(); }
  const CSimpleShadow* GetShadow() const { return x94_simpleShadow.get(); }

  bool HasActorLights() const { return !x90_actorLights.null(); }
  CActorLights* ActorLights() { return x90_actorLights.get(); }
  const CActorLights* GetActorLights() const { return x90_actorLights.get(); }

  const CModelFlags& GetModelFlags() const { return xb4_drawFlags; }
  void SetModelFlags(const CModelFlags& flags) { xb4_drawFlags = flags; }

  const CMaterialList& GetMaterialList() const { return x68_material; }
  CMaterialList& MaterialList() { return x68_material; }

  const CMaterialFilter& GetMaterialFilter() const;
  void SetMaterialFilter(const CMaterialFilter& filter);

  bool GetTransformDirty() const { return xe4_27_notInSortedLists; }
  bool GetTransformDirtySpare() const { return xe4_28_transformDirty; }
  bool GetPreRenderHasMoved() const { return xe4_29_actorLightsDirty; }
  bool GetPreRenderClipped() const { return xe4_30_outOfFrustum; }
  bool GetCalculateLighting() const { return xe4_31_calculateLighting && HasActorLights(); }
  bool GetDrawShadow() const { return xe5_24_shadowEnabled; }
  bool GetShadowDirty() const { return xe5_25_shadowDirty; }
  bool GetMuted() const { return xe5_26_muted; }
  EThermalFlags GetThermalFlags() const {
    return static_cast< EThermalFlags >(xe6_27_thermalVisorFlags);
  }
  bool GetRenderParticleDatabaseInside() const { return xe6_29_renderParticleDBInside; }
  bool GetTargetable() const { return xe7_31_targetable; }

  void SetTransformDirty(bool b) { xe4_27_notInSortedLists = b; }
  void SetTransformDirtySpare(bool b) { xe4_28_transformDirty = b; }
  void SetPreRenderHasMoved(bool b) { xe4_29_actorLightsDirty = b; }
  void SetPreRenderClipped(bool b) { xe4_30_outOfFrustum = b; }
  void SetCalculateLighting(bool b);
  void SetDrawShadow(bool b);
  void SetShadowDirty(bool b) { xe5_25_shadowDirty = b; }
  void SetMuted(bool b);
  void SetThermalFlags(EThermalFlags flags) { xe6_27_thermalVisorFlags = flags; }
  void SetRenderParticleDatabaseInside(bool b) { xe6_29_renderParticleDBInside = b; }
  void SetTargetable(bool b) { xe7_31_targetable = b; }

  void RemoveMaterial(EMaterialTypes, EMaterialTypes, EMaterialTypes, EMaterialTypes,
                      CStateManager&);
  void RemoveMaterial(EMaterialTypes, EMaterialTypes, EMaterialTypes, CStateManager&);
  void RemoveMaterial(EMaterialTypes, EMaterialTypes, CStateManager&);
  void RemoveMaterial(EMaterialTypes, CStateManager&);
  void AddMaterial(EMaterialTypes, EMaterialTypes, EMaterialTypes, EMaterialTypes, EMaterialTypes,
                   CStateManager&);
  void AddMaterial(EMaterialTypes, EMaterialTypes, EMaterialTypes, EMaterialTypes, CStateManager&);
  void AddMaterial(EMaterialTypes, EMaterialTypes, EMaterialTypes, CStateManager&);
  void AddMaterial(EMaterialTypes, EMaterialTypes, CStateManager&);
  void AddMaterial(EMaterialTypes, CStateManager&);
  void AddMaterial(const CMaterialList& l) { x68_material.Add(l); }

  const CAABox& GetRenderBoundsCached() const { return x9c_renderBounds; }
  void SetRenderBounds(const CAABox& bounds) { x9c_renderBounds = bounds; }

  bool GetUseInSortedLists() const;
  void SetUseInSortedLists(bool use);
  bool GetCallTouch() const;
  void SetCallTouch(bool value);
  // GetOrbitDistanceCheck__6CActorCFv
  // GetCalculateLighting__6CActorCFv
  // GetDrawShadow__6CActorCFv
  // GetRenderBoundsCached__6CActorCFv
  // GetRenderParticleDatabaseInside__6CActorCFv
  // HasModelParticles__6CActorCFv
  void SetVolume(uchar volume);
  void SetSoundEventPitchBend(int);
  CSfxHandle GetSfxHandle() const;
  bool CanDrawStatic() const;

private:
  CTransform4f x34_transform;
  rstl::single_ptr< CModelData > x64_modelData;
  CMaterialList x68_material;
  CMaterialFilter x70_materialFilter;
  TSfxId x88_sfxId;
  CSfxHandle x8c_loopingSfxHandle;
  rstl::single_ptr< CActorLights > x90_actorLights;
  rstl::single_ptr< CSimpleShadow > x94_simpleShadow;
  rstl::single_ptr< TCachedToken< CScannableObjectInfo > > x98_scanObjectInfo;
  CAABox x9c_renderBounds;
  CModelFlags xb4_drawFlags;
  float xbc_time;
  uint xc0_pitchBend;
  TUniqueId xc4_fluidId;
  TUniqueId xc6_nextDrawNode;
  int xc8_drawnToken;
  int xcc_addedToken;
  float xd0_damageMag;
  uchar xd4_maxVol;
  rstl::reserved_vector< CSfxHandle, 2 > xd8_nonLoopingSfxHandles;
  uint xe4_24_nextNonLoopingSfxHandle : 3;
  uint xe4_27_notInSortedLists : 1;
  uint xe4_28_transformDirty : 1;
  uint xe4_29_actorLightsDirty : 1;
  uint xe4_30_outOfFrustum : 1;
  uint xe4_31_calculateLighting : 1;
  uint xe5_24_shadowEnabled : 1;
  uint xe5_25_shadowDirty : 1;
  uint xe5_26_muted : 1;
  uint xe5_27_useInSortedLists : 1;
  uint xe5_28_callTouch : 1;
  uint xe5_29_globalTimeProvider : 1;
  uint xe5_30_renderUnsorted : 1;
  uint xe5_31_pointGeneratorParticles : 1;
  uint xe6_24_fluidCounter : 3;
  uint xe6_27_thermalVisorFlags : 2;
  uint xe6_29_renderParticleDBInside : 1;
  uint xe6_30_enablePitchBend : 1;
  uint xe6_31_targetableVisorFlags : 4;
  uint xe7_27_enableRender : 1;
  uint xe7_28_worldLightingDirty : 1;
  uint xe7_29_drawEnabled : 1;
  uint xe7_30_doTargetDistanceTest : 1;
  uint xe7_31_targetable : 1;
};
CHECK_SIZEOF(CActor, 0xe8)

#endif // _CACTOR
