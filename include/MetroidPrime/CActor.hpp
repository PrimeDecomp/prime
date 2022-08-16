#ifndef _CACTOR_HPP
#define _CACTOR_HPP

#include "types.h"

#include "Collision/CMaterialFilter.hpp"
#include "Collision/CMaterialList.hpp"

#include "MetroidPrime/CEntity.hpp"
#include "MetroidPrime/CModelData.hpp"
#include "MetroidPrime/CModelFlags.hpp"

#include "Kyoto/Audio/CSfxHandle.hpp"
#include "Kyoto/Graphics/CColor.hpp"
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

enum EWeaponCollisionResponseTypes {
  kWCR_None,
  kWCR_Default,
  kWCR_Unknown2,
  kWCR_Metal,
  kWCR_Grass,
  kWCR_Ice,
  kWCR_Goo,
  kWCR_Wood,
  kWCR_Water,
  kWCR_Mud,
  kWCR_Lava,
  kWCR_Sand,
  kWCR_Projectile,
  kWCR_OtherProjectile,
  kWCR_Unknown14,
  kWCR_Unknown15,
  kWCR_EnemyNormal,
  kWCR_EnemySpecial,
  kWCR_EnemyShielded,
  kWCR_Unknown19,
  kWCR_Unknown20,
  kWCR_Unknown21,
  kWCR_Unknown22,
  kWCR_Unknown23,
  kWCR_Unknown24,
  kWCR_Unknown25,
  kWCR_Unknown26,
  kWCR_Unknown27,
  kWCR_Unknown28,
  kWCR_Unknown29,
  kWCR_Unknown30,
  kWCR_Unknown31,
  kWCR_Unknown32,
  kWCR_Unknown33,
  kWCR_Unknown34,
  kWCR_Unknown35,
  kWCR_Unknown36,
  kWCR_Unknown37,
  kWCR_ChozoGhost,
  kWCR_Unknown39,
  kWCR_Unknown40,
  kWCR_Unknown41,
  kWCR_AtomicBeta,
  kWCR_AtomicAlpha,
  kWCR_Unknown44,
  kWCR_Unknown45,
  kWCR_Unknown46,
  kWCR_Unknown47,
  kWCR_Unknown48,
  kWCR_Unknown49,
  kWCR_Unknown50,
  kWCR_Unknown51,
  kWCR_Unknown52,
  kWCR_Unknown53,
  kWCR_Unknown54,
  kWCR_Unknown55,
  kWCR_Unknown56,
  kWCR_Unknown57,
  kWCR_Unknown58,
  kWCR_Unknown59,
  kWCR_Unknown60,
  kWCR_Unknown61,
  kWCR_Unknown62,
  kWCR_Unknown63,
  kWCR_Unknown64,
  kWCR_Unknown65,
  kWCR_Unknown66,
  kWCR_Unknown67,
  kWCR_Unknown68,
  kWCR_Unknown69,
  kWCR_Unknown70,
  kWCR_Unknown71,
  kWCR_Unknown72,
  kWCR_Unknown73,
  kWCR_Unknown74,
  kWCR_Unknown75,
  kWCR_Unknown76,
  kWCR_Unknown77,
  kWCR_Unknown78,
  kWCR_Unknown79,
  kWCR_Unknown80,
  kWCR_Unknown81,
  kWCR_Unknown82,
  kWCR_Unknown83,
  kWCR_Unknown84,
  kWCR_Unknown85,
  kWCR_Unknown86,
  kWCR_Unknown87,
  kWCR_Unknown88,
  kWCR_Unknown89,
  kWCR_Unknown90,
  kWCR_Unknown91,
  kWCR_AtomicBetaReflect,
  kWCR_AtomicAlphaReflect,
};
enum EProjectileAttrib {
  kPA_None = 0,
  kPA_PartialCharge = (1 << 0),
  kPA_PlasmaProjectile = (1 << 1),
  kPA_Charged = (1 << 2),
  kPA_Ice = (1 << 3),
  kPA_Wave = (1 << 4),
  kPA_Plasma = (1 << 5),
  kPA_Phazon = (1 << 6),
  kPA_ComboShot = (1 << 7),
  kPA_Bombs = (1 << 8),
  kPA_PowerBombs = (1 << 9),
  kPA_BigProjectile = (1 << 10),
  kPA_ArmCannon = (1 << 11),
  kPA_BigStrike = (1 << 12),
  kPA_DamageFalloff = (1 << 13),
  kPA_StaticInterference = (1 << 14),
  kPA_PlayerUnFreeze = (1 << 15),
  kPA_ParticleOPTS = (1 << 16),
  kPA_KeepInCinematic = (1 << 17),
};
enum EUserEventType {
  kUE_Projectile = 0,
  kUE_EggLay = 1,
  kUE_LoopedSoundStop = 2,
  kUE_AlignTargetPos = 3,
  kUE_AlignTargetRot = 4,
  kUE_ChangeMaterial = 5,
  kUE_Delete = 6,
  kUE_GenerateEnd = 7,
  kUE_DamageOn = 8,
  kUE_DamageOff = 9,
  kUE_AlignTargetPosStart = 10,
  kUE_DeGenerate = 11,
  kUE_Landing = 12,
  kUE_TakeOff = 13,
  kUE_FadeIn = 14,
  kUE_FadeOut = 15,
  kUE_ScreenShake = 16,
  kUE_BeginAction = 17,
  kUE_EndAction = 18,
  kUE_BecomeRagDoll = 19,
  kUE_IkLock = 20,
  kUE_IkRelease = 21,
  kUE_BreakLockOn = 22,
  kUE_BecomeShootThrough = 23,
  kUE_RemoveCollision = 24,
  kUE_ObjectPickUp = 25,
  kUE_ObjectDrop = 26,
  kUE_EventStart = 27,
  kUE_EventStop = 28,
  kUE_Activate = 29,
  kUE_Deactivate = 30,
  kUE_SoundPlay = 31,
  kUE_SoundStop = 32,
  kUE_EffectOn = 33,
  kUE_EffectOff = 34,
};

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

  CActor(TUniqueId uid, bool active, const rstl::string& name, const CEntityInfo& info, const CTransform4f& xf, const CModelData& mData,
         const CMaterialList& list, const CActorParameters& params, TUniqueId nextDrawNode);
  ~CActor();

  virtual void PreRender(CStateManager&, const CFrustumPlanes&);
  virtual void AddToRenderer(const CFrustumPlanes&, const CStateManager&) const;
  virtual void Render(const CStateManager&) const;
  virtual bool CanRenderUnsorted(const CStateManager&) const;
  virtual void CalculateRenderBounds();
  virtual CHealthInfo* HealthInfo(CStateManager&);
  virtual const CDamageVulnerability* GetDamageVulnerability() const;
  virtual const CDamageVulnerability* GetDamageVulnerability(const CVector3f&, const CVector3f&, const CDamageInfo&) const;
  virtual rstl::optional_object< CAABox > GetTouchBounds() const;
  virtual void Touch(CActor&, CStateManager&);
  virtual CVector3f GetOrbitPosition(const CStateManager&) const;
  virtual CVector3f GetAimPosition(const CStateManager&, float) const;
  virtual CVector3f GetHomingPosition(const CStateManager&, float) const;
  virtual CVector3f GetScanObjectIndicatorPosition(const CStateManager&) const;
  virtual EWeaponCollisionResponseTypes GetCollisionResponseType(const CVector3f&, const CVector3f&, const CWeaponMode&,
                                                                 EProjectileAttrib) const;
  virtual void FluidFXThink(EFluidState, CScriptWater&, CStateManager&);
  virtual void OnScanStateChanged(EScanState, CStateManager&);
  virtual CAABox GetSortingBounds(const CStateManager&) const;
  virtual void DoUserAnimEvent(CStateManager& mgr, const CInt32POINode& node, EUserEventType type, float dt);

  SAdvancementDeltas UpdateAnimation(float dt, CStateManager& mgr, bool advTree);

  void ProcessSoundEvent(s32 sfxId, f32 weight, s32 flags, f32 fallOff, f32 maxDist, u8 minVol, u8 maxVol, const CVector3f& toListener,
                         const CVector3f& position, s32 aid, CStateManager& mgr, bool translateId);

  void UpdateSfxEmitters();
  void RemoveEmitter();
  void SetModelData(const CModelData& modelData);
  f32 GetAverageAnimVelocity(s32 anim);
  void EnsureRendered(const CStateManager& mgr) const;
  void EnsureRendered(const CStateManager& mgr, const CVector3f& pos, const CAABox& bounds) const;
  void DrawTouchBounds() const;

  const CTransform4f& GetTransform() const { return x34_transform; }
  CVector3f GetTranslation() const { return x34_transform.GetTranslation(); }

  bool HasModelData() const { return GetModelData() && (GetModelData()->HasAnimation() || GetModelData()->HasNormalModel()); }
  CModelData* ModelData() { return x64_modelData.get(); }
  const CModelData* GetModelData() const { return x64_modelData.get(); }

  bool HasAnimation() const { return GetModelData() && GetModelData()->HasAnimation(); }
  CAnimData* AnimationData() { return ModelData()->AnimationData(); }
  const CAnimData* GetAnimationData() const { return GetModelData()->GetAnimationData(); }

  bool HasShadow() const { return !x94_simpleShadow.null(); }
  CSimpleShadow* Shadow() { return x94_simpleShadow.get(); }
  const CSimpleShadow* GetShadow() const { return x94_simpleShadow.get(); }

  bool HasActorLights() const { return !x90_actorLights.null(); }
  CActorLights* ActorLights() { return x90_actorLights.get(); }
  const CActorLights* GetActorLights() const { return x90_actorLights.get(); }

  const CModelFlags& GetModelFlags() const { return xb4_drawFlags; }
  void SetModelFlags(const CModelFlags& flags) { xb4_drawFlags = flags; }

  bool GetTransformDirty() const { return xe4_27_notInSortedLists; }
  bool GetTransformDirtySpare() const { return xe4_28_transformDirty; }
  bool GetPreRenderHasMoved() const { return xe4_29_actorLightsDirty; }
  bool GetPreRenderClipped() const { return xe4_30_outOfFrustum; }
  bool GetCalculateLighting() const { return xe4_31_calculateLighting && HasActorLights(); }
  bool GetDrawShadow() const { return xe5_24_shadowEnabled; }
  bool GetShadowDirty() const { return xe5_25_shadowDirty; }
  bool GetMuted() const { return xe5_26_muted; }
  bool GetRenderParticleDatabaseInside() const { return xe6_29_renderParticleDBInside; }

  void SetTransformDirty(bool b) { xe4_27_notInSortedLists = b; }
  void SetTransformDirtySpare(bool b) { xe4_28_transformDirty = b; }
  void SetPreRenderHasMoved(bool b) { xe4_29_actorLightsDirty = b; }
  void SetPreRenderClipped(bool b) { xe4_30_outOfFrustum = b; }
  void SetCalculateLighting(bool b) { xe4_31_calculateLighting = b; }
  void SetDrawShadow(bool b) { xe5_24_shadowEnabled = b; }
  void SetShadowDirty(bool b) { xe5_25_shadowDirty = b; }
  void SetMuted(bool b) { xe5_26_muted = b; }
  void SetRenderParticleDatabaseInside(bool b) { xe6_29_renderParticleDBInside = b; }

  const CAABox& GetRenderBoundsCached() const { return x9c_renderBounds; }
  void SetRenderBounds(const CAABox& bounds) { x9c_renderBounds = bounds; }

  // 000c0ec8 00001c 801711a8  4 GetUseInSortedLists__6CActorCFv 	CActor.o
  // 000c0ee4 000014 801711c4  4 SetUseInSortedLists__6CActorFb 	CActor.o
  // 000c0ef8 00001c 801711d8  4 GetCallTouch__6CActorCFv 	CActor.o
  // 000c0f14 000014 801711f4  4 SetCallTouch__6CActorFb 	CActor.o
  // GetOrbitDistanceCheck__6CActorCFv
  // GetCalculateLighting__6CActorCFv
  // GetDrawShadow__6CActorCFv
  // GetRenderBoundsCached__6CActorCFv
  // GetRenderParticleDatabaseInside__6CActorCFv

  // HasModelParticles__6CActorCFv

protected:
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
  f32 xbc_time;
  u32 xc0_pitchBend;
  TUniqueId xc4_fluidId;
  TUniqueId xc6_nextDrawNode;
  s32 xc8_drawnToken;
  s32 xcc_addedToken;
  f32 xd0_damageMag;
  u8 xd4_maxVol;
  rstl::reserved_vector< CSfxHandle, 2 > xd8_nonLoopingSfxHandles;
  u32 xe4_24_nextNonLoopingSfxHandle : 3;
  u32 xe4_27_notInSortedLists : 1;
  u32 xe4_28_transformDirty : 1;
  u32 xe4_29_actorLightsDirty : 1;
  u32 xe4_30_outOfFrustum : 1;
  u32 xe4_31_calculateLighting : 1;
  u32 xe5_24_shadowEnabled : 1;
  u32 xe5_25_shadowDirty : 1;
  u32 xe5_26_muted : 1;
  u32 xe5_27_useInSortedLists : 1;
  u32 xe5_28_callTouch : 1;
  u32 xe5_29_globalTimeProvider : 1;
  u32 xe5_30_renderUnsorted : 1;
  u32 xe5_31_pointGeneratorParticles : 1;
  u32 xe6_24_fluidCounter : 3;
  EThermalFlags xe6_27_thermalVisorFlags : 2;
  u32 xe6_29_renderParticleDBInside : 1;
  u32 xe6_30_enablePitchBend : 1;
  u32 xe6_31_targetableVisorFlags : 4;
  u32 xe7_27_enableRender : 1;
  u32 xe7_28_worldLightingDirty : 1;
  u32 xe7_29_drawEnabled : 1;
  u32 xe7_30_doTargetDistanceTest : 1;
  u32 xe7_31_targetable : 1;
};
CHECK_SIZEOF(CActor, 0xe8)

#endif
