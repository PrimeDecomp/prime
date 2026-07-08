#include "MetroidPrime/ScriptObjects/CScriptGunTurret.hpp"

#include "MetaRender/CCubeRenderer.hpp"
#include "MetroidPrime/CCollisionActorManager.hpp"
#include "MetroidPrime/CGameLight.hpp"
#include "MetroidPrime/Enemies/CAiFuncMap.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/Weapons/CGameProjectile.hpp"

#include <Kyoto/Audio/CSfxManager.hpp>
#include <Kyoto/Math/CRelAngle.hpp>
#include <Kyoto/Particles/CElementGen.hpp>
#include <Kyoto/Particles/CGenDescription.hpp>

static const uint skStateToLocoTypeLookup[] = {
    5, 7, 9, 0, 1, 0, 1, 2, 3, 1, 1, 1, 1,
};

static const SBurst skBurst2InfoTemplate[] = {
    {3, {1, 2, -1, -1, 0, 0, 0, 0}, 0.150000, 0.050000},
    {3, {7, 6, -1, -1, 0, 0, 0, 0}, 0.150000, 0.050000},
    {4, {3, 5, -1, -1, 0, 0, 0, 0}, 0.150000, 0.050000},
    {60, {16, 4, -1, -1, 0, 0, 0, 0}, 0.150000, 0.050000},
    {30, {4, 4, -1, -1, 0, 0, 0, 0}, 0.150000, 0.050000},
    {0, {0, 0, 0, 0, 0, 0, 0, 0}, 0.000000, 0.000000},
};

static const SBurst skBurst3InfoTemplate[] = {
    {30, {4, 5, 4, -1, 0, 0, 0, 0}, 0.150000, 0.050000},
    {30, {2, 3, 4, -1, 0, 0, 0, 0}, 0.150000, 0.050000},
    {30, {3, 4, 5, -1, 0, 0, 0, 0}, 0.150000, 0.050000},
    {5, {16, 1, 2, -1, 0, 0, 0, 0}, 0.150000, 0.050000},
    {5, {8, 7, 6, -1, 0, 0, 0, 0}, 0.150000, 0.050000},
    {0, {0, 0, 0, 0, 0, 0, 0, 0}, 0.000000, 0.000000},
};

static const SBurst skBurst4InfoTemplate[] = {
    {5, {16, 1, 2, 3, 0, 0, 0, 0}, 0.150000, 0.050000},
    {5, {9, 8, 7, 6, 0, 0, 0, 0}, 0.150000, 0.050000},
    {15, {2, 3, 4, 5, 0, 0, 0, 0}, 0.150000, 0.050000},
    {15, {5, 4, 3, 2, 0, 0, 0, 0}, 0.150000, 0.050000},
    {15, {10, 11, 4, 13, 0, 0, 0, 0}, 0.150000, 0.050000},
    {15, {14, 13, 4, 11, 0, 0, 0, 0}, 0.150000, 0.050000},
    {30, {2, 4, 4, 6, 0, 0, 0, 0}, 0.150000, 0.050000},
    {0, {0, 0, 0, 0, 0, 0, 0, 0}, 0.000000, 0.000000},
};

const SBurst skOOVBurst2InfoTemplate[] = {
    {20, {16, 15, -1, -1, 0, 0, 0, 0}, 0.150000, 0.050000},
    {20, {8, 9, -1, -1, 0, 0, 0, 0}, 0.150000, 0.050000},
    {20, {13, 11, -1, -1, 0, 0, 0, 0}, 0.150000, 0.050000},
    {20, {2, 6, -1, -1, 0, 0, 0, 0}, 0.150000, 0.050000},
    {20, {3, 4, -1, -1, 0, 0, 0, 0}, 0.150000, 0.050000},
    {0, {0, 0, 0, 0, 0, 0, 0, 0}, 0.000000, 0.000000},
};

const SBurst skOOVBurst3InfoTemplate[] = {
    {10, {14, 4, 10, -1, 0, 0, 0, 0}, 0.150000, 0.050000},
    {10, {15, 13, 4, -1, 0, 0, 0, 0}, 0.150000, 0.050000},
    {10, {9, 11, 4, -1, 0, 0, 0, 0}, 0.150000, 0.050000},
    {35, {15, 13, 11, -1, 0, 0, 0, 0}, 0.150000, 0.050000},
    {35, {9, 11, 13, -1, 0, 0, 0, 0}, 0.150000, 0.050000},
    {0, {0, 0, 0, 0, 0, 0, 0, 0}, 0.000000, 0.000000},
};

const SBurst skOOVBurst4InfoTemplate[] = {
    {10, {14, 13, 4, 11, 0, 0, 0, 0}, 0.150000, 0.050000},
    {30, {1, 15, 13, 11, 0, 0, 0, 0}, 0.150000, 0.050000},
    {20, {16, 15, 14, 13, 0, 0, 0, 0}, 0.150000, 0.050000},
    {10, {8, 9, 11, 4, 0, 0, 0, 0}, 0.150000, 0.050000},
    {10, {1, 15, 13, 4, 0, 0, 0, 0}, 0.150000, 0.050000},
    {20, {8, 9, 10, 11, 0, 0, 0, 0}, 0.150000, 0.050000},
    {0, {0, 0, 0, 0, 0, 0, 0, 0}, 0.000000, 0.000000},
};

const char* CScriptGunTurret::skGunLCTRName = "Gun_SDK";
const char* CScriptGunTurret::skBlastLCTRName = "Blast_LCTR";
const char* CScriptGunTurret::skLightLCTRName = "light_LCTR";
const char* CScriptGunTurret::skLockonTargetLCTRName = "lockon_target_LCTR";

static const SBurst* skBursts[] = {
    skBurst2InfoTemplate,
    skBurst3InfoTemplate,
    skBurst4InfoTemplate,
    skOOVBurst2InfoTemplate,
    skOOVBurst3InfoTemplate,
    skOOVBurst4InfoTemplate,
    nullptr,
};

#pragma inline_max_size(250)
CScriptGunTurretData::CScriptGunTurretData(CInputStream& in, const int propCount)
: x0_intoDeactivateDelay(in.Get< float >())
, x4_intoActivateDelay(in.Get< float >())
, x8_reloadTime(in.Get< float >())
, xc_reloadTimeVariance(in.Get< float >())
, x10_panStartTime(in.Get< float >())
, x14_panHoldTime(in.Get< float >())
, x18_totalPanSearchTime(30.f)
, x1c_leftMaxAngle(CRelAngle::FromDegrees(in.Get< float >()).AsRadians())
, x20_rightMaxAngle(CRelAngle::FromDegrees(in.Get< float >()).AsRadians())
, x24_downMaxAngle(CRelAngle::FromDegrees(in.Get< float >()).AsRadians())
, x28_turnSpeed(CRelAngle::FromDegrees(in.Get< float >()).AsRadians())
, x2c_detectionRange(in.Get< float >())
, x30_detectionZRange(in.Get< float >())
, x34_freezeDuration(in.Get< float >())
, x38_freezeVariance(in.Get< float >())
, x3c_freezeTimeout(propCount >= 48 ? in.Get< bool >() : false)
, x40_projectileRes(in.Get< CAssetId >())
, x44_projectileDamage(in)
, x60_idleLightRes(in.Get< CAssetId >())
, x64_deactivateLightRes(in.Get< CAssetId >())
, x68_targettingLightRes(in.Get< CAssetId >())
, x6c_frozenEffectRes(in.Get< CAssetId >())
, x70_chargingEffectRes(in.Get< CAssetId >())
, x74_panningEffectRes(in.Get< CAssetId >())
, x78_visorEffectRes(propCount >= 44 ? in.Get< CAssetId >() : kInvalidAssetId)
, x7c_trackingSoundId(CSfxManager::TranslateSFXID(in.Get< int >()))
, x7e_lockOnSoundId(CSfxManager::TranslateSFXID(in.Get< int >()))
, x80_unfreezeSoundId(CSfxManager::TranslateSFXID(in.Get< int >()))
, x82_stopClankSoundId(CSfxManager::TranslateSFXID(in.Get< int >()))
, x84_chargingSoundId(CSfxManager::TranslateSFXID(in.Get< int >()))
, x86_visorSoundId(propCount >= 45 ? CSfxManager::TranslateSFXID(in.Get< int >())
                                   : CSfxManager::kInternalInvalidSfxId)
, x88_extensionModelResId(in.Get< CAssetId >())
, x8c_extensionDropDownDist(in.Get< float >())
, x90_numInitialShots(in.Get< int >())
, x94_initialShotTableIndex(in.Get< int >())
, x98_numSubsequentShots(in.Get< int >())
, x9c_frenzyDuration(propCount >= 47 ? in.Get< float >() : 3.f)
, xa0_scriptedStartOnly(propCount >= 46 ? in.Get< bool >() : false) {}

static const CMaterialList skTurretMaterialList(kMT_Character);
static const CMaterialList skGunMaterialList(kMT_Solid, kMT_Character, kMT_Orbit, kMT_Target);

CScriptGunTurret::CScriptGunTurret(TUniqueId uid, const rstl::string& name, ETurretComponent comp,
                                   const CEntityInfo& info, const CTransform4f& xf,
                                   const CModelData& mData, const CAABox& aabb,
                                   const CHealthInfo& hInfo, const CDamageVulnerability& dVuln,
                                   const CActorParameters& aParms,
                                   const CScriptGunTurretData& turretData)
: CPhysicsActor(uid, true, name, info, xf, mData,
                comp == kTC_Base ? skTurretMaterialList : skGunMaterialList, aabb,
                SMoverData(1000.f), aParms, 0.3f, 0.1f)
, x258_type(comp)
, x25c_gunId(kInvalidUniqueId)
, x260_lastGunHP(0.f)
, x264_healthInfo(hInfo)
, x26c_damageVuln(dVuln)
, x2d4_data(turretData)
, x378_(kInvalidUniqueId)
, x37c_projectileInfo(turretData.GetProjectileRes(), turretData.GetProjectileDamage())
, x3a4_burstFire(skBursts, 1)
, x404_targetPosition(CVector3f::Zero())
, x410_idleLightDesc(gpSimplePool->GetObj(SObjectTag('PART', turretData.GetIdleLightRes())))
, x41c_deactivateLightDesc(
      gpSimplePool->GetObj(SObjectTag('PART', turretData.GetDeactivateLightRes())))
, x428_targettingLightDesc(
      gpSimplePool->GetObj(SObjectTag('PART', turretData.GetTargettingLightRes())))
, x434_frozenEffectDesc(gpSimplePool->GetObj(SObjectTag('PART', turretData.GetFrozenEffectRes())))
, x440_chargingEffectDesc(
      gpSimplePool->GetObj(SObjectTag('PART', turretData.GetChargingEffectRes())))
, x44c_panningEffectDesc(gpSimplePool->GetObj(SObjectTag('PART', turretData.GetPanningEffectRes())))
, x458_visorEffectDesc(
      turretData.GetVisorEffectRes() != kInvalidAssetId
          ? rstl::optional_object< TLockedToken< CGenDescription > >(
                gpSimplePool->GetObj(SObjectTag('PART', turretData.GetVisorEffectRes())))
          : rstl::optional_object_null())
, x468_idleLight(rs_new CElementGen(x410_idleLightDesc))
, x470_deactivateLight(rs_new CElementGen(x41c_deactivateLightDesc))
, x478_targettingLight(rs_new CElementGen(x428_targettingLightDesc))
, x480_frozenEffect(rs_new CElementGen(x434_frozenEffectDesc))
, x488_chargingEffect(rs_new CElementGen(x440_chargingEffectDesc))
, x490_panningEffect(rs_new CElementGen(x44c_panningEffectDesc))
, x498_lightId(kInvalidUniqueId)
, x4a0_collisionActor(kInvalidUniqueId)
, x4a4_extensionModel(rstl::optional_object< CModelData >())
, x4f4_extensionRange(0.f)
, x4f8_extensionT(0.f)
, x4fc_extensionOffset(xf.GetTranslation())
, x510_timeSinceLastTargetSfx(0.f)
, x514_lastFrontVector(xf.GetForward())
, x520_state(kTS_Invalid)
, x524_curStateTime(0.f)
, x528_curInactiveTime(0.f)
, x52c_curActiveTime(0.f)
, x530_curPanTime(0.f)
, x534_fireCycleRemTime(0.f)
, x538_halfFireCycleDur(0.f)
, x53c_freezeRemTime(0.f)
, x540_turretAnim(-1)
, x544_originalFrontVec(xf.GetForward())
, x550_originalRightVec(xf.GetRight())
, x55c_additiveChargeAnim(-1)
, x560_24_dead(false)
, x560_25_frozen(false)
, x560_26_firedWithSetBurst(false)
, x560_27_burstSet(false)
, x560_28_hasBeenActivated(false)
, x560_29_scriptedStart(false)
, x560_30_needsStopClankSound(true)
, x560_31_frenzyReverse(false) {

  if (comp == kTC_Base && HasAnimation()) {
    ModelData()->EnableLooping(true);
  }
  x37c_projectileInfo.Token().Lock();
}

CScriptGunTurret::~CScriptGunTurret() {}

void CScriptGunTurret::Think(float dt, CStateManager& mgr) {
  if (!GetActive()) {
    return;
  }

  switch (x258_type) {
  case kTC_Base:
    if (!x560_25_frozen) {
      ProcessGunStateMachine(dt, mgr);
      UpdateTurretAnimation();
      UpdateGunOrientation(dt, mgr);
      CVector3f vec = UpdateExtensionModelState(dt);
      const CAdvancementDeltas deltas = UpdateAnimation(dt, mgr, true);
      SetTranslation((GetTranslation() + deltas.GetOffsetDelta()) + vec);
      RotateToOR(deltas.GetOrientationDelta(), dt);
    } else {
      Stop();
    }

    UpdateTargettingSound(dt);
    break;
  case kTC_Gun:
    UpdateGunParticles(dt, mgr);
    const CAdvancementDeltas deltas = UpdateAnimation(dt, mgr, true);
    MoveToOR(deltas.GetOffsetDelta(), dt);
    RotateToOR(deltas.GetOrientationDelta(), dt);
    UpdateGunCollisionManager(dt, mgr);
    UpdateFrozenState(dt, mgr);
    break;
  }

  UpdateHealthInfo(mgr);
}

void CScriptGunTurret::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid,
                                       CStateManager& mgr) {
  CPhysicsActor::AcceptScriptMsg(msg, uid, mgr);

  switch (msg) {
  case kSM_Activate: {
    if (!x49c_collisionManager.null()) {
      x49c_collisionManager->SetActive(mgr, true);
    }
    break;
  }
  case kSM_Deactivate: {
    if (!x49c_collisionManager.null()) {
      x49c_collisionManager->SetActive(mgr, false);
    }
    break;
  }
  case kSM_Registered: {
    if (x258_type == kTC_Gun) {
      if (x478_targettingLight->SystemHasLight()) {
        x498_lightId = mgr.AllocateUniqueId();
        mgr.AddObject(rs_new CGameLight(x498_lightId, GetCurrentAreaId(), GetActive(),
                                        rstl::string_l("ParticleLight_") + GetDebugName(),
                                        GetTransform(), GetUniqueId(),
                                        x478_targettingLight->GetLight(), 0, 1, 0.f));
      }
      SetupCollisionManager(mgr);
    } else if (x258_type == kTC_Base) {
      if (x2d4_data.GetExtensionModelResId() != kInvalidAssetId) {
        {
          const CModelData mData(
              CStaticRes(x2d4_data.GetExtensionModelResId(), GetModelData()->GetScale()));
          x4a4_extensionModel = rstl::optional_object< CModelData >(mData);
        }
        x4f4_extensionRange = x4a4_extensionModel->GetBounds().GetDepth();
      }

      SetTurretState(kTS_Inactive, mgr);
    }
    break;
  }
  case kSM_Deleted: {
    if (x258_type == kTC_Gun && x498_lightId != kInvalidUniqueId) {
      mgr.DeleteObjectRequest(x498_lightId);
    }

    if (x50c_targetingEmitter) {
      CSfxManager::RemoveEmitter(x50c_targetingEmitter);
    }

    if (!x49c_collisionManager.null()) {
      x49c_collisionManager->Destroy(mgr);
    }
    break;
  }
  default:
    break;
  }
}

void CScriptGunTurret::Accept(IVisitor& visitor) { visitor.Visit(*this); }
void CScriptGunTurret::Render(const CStateManager& mgr) const {
  CPhysicsActor::Render(mgr);

  if (x258_type == kTC_Gun) {
    if (!x560_25_frozen) {
      switch (x520_state) {
      case kTS_Deactive:
      case kTS_DeactiveFromReady:
      case kTS_Deactivating:
      case kTS_DeactivatingFromReady:
        x470_deactivateLight->Render();
        break;
      case kTS_Inactive:
        x468_idleLight->Render();
        break;
      case kTS_PanningA:
      case kTS_PanningB:
        x490_panningEffect->Render();
        break;
      case kTS_Ready:
      case kTS_Targeting:
      case kTS_Firing:
      case kTS_ExitTargeting:
      case kTS_Frenzy:
        x478_targettingLight->Render();
        if (x520_state == kTS_Firing) {
          x488_chargingEffect->Render();
        }
        break;
      default:
        break;
      }
    } else {
      x480_frozenEffect->Render();
    }
  } else if (x258_type == kTC_Base && x4a4_extensionModel && x4f8_extensionT > 0.f) {
    CTransform4f xf = GetTransform();
    xf.SetTranslation(x4fc_extensionOffset + x4f4_extensionRange * (CVector3f::Down() * 0.5f));
    x4a4_extensionModel->Render(mgr, xf, GetActorLights(), CModelFlags::Normal());
  }
}

void CScriptGunTurret::AddToRenderer(const CFrustumPlanes& frustum,
                                     const CStateManager& mgr) const {
  CActor::AddToRenderer(frustum, mgr);

  if (x258_type != kTC_Gun) {
    return;
  }

  if (!x560_25_frozen) {
    switch (x520_state) {
    case kTS_Deactive:
    case kTS_DeactiveFromReady:
    case kTS_Deactivating:
    case kTS_DeactivatingFromReady:
      gpRender->AddParticleGen(*x470_deactivateLight);
      break;
    case kTS_Inactive:
      gpRender->AddParticleGen(*x468_idleLight);
      break;
    case kTS_PanningA:
    case kTS_PanningB:
      gpRender->AddParticleGen(*x490_panningEffect);
      break;
    case kTS_Ready:
    case kTS_Targeting:
    case kTS_Firing:
    case kTS_ExitTargeting:
    case kTS_Frenzy:
      gpRender->AddParticleGen(*x478_targettingLight);
      if (x520_state == kTS_Firing || x520_state == kTS_Frenzy) {
        gpRender->AddParticleGen(*x488_chargingEffect);
      }
      break;
    default:
      break;
    }
  } else {
    gpRender->AddParticleGen(*x480_frozenEffect);
  }
}

rstl::optional_object< CAABox > CScriptGunTurret::GetTouchBounds() const {
  if (GetActive() && GetMaterialList().HasMaterial(kMT_Solid)) {
    return GetBoundingBox();
  }
  return rstl::optional_object_null();
}

void CScriptGunTurret::Touch(CActor& actor, CStateManager& mgr) {
  if (x258_type != kTC_Gun) {
    return;
  }

  if (const CGameProjectile* proj = TCastToConstPtr< CGameProjectile >(actor)) {
    const CPlayer* player = mgr.GetPlayer();
    if (proj->GetOwnerId() == player->GetUniqueId()) {
      const CDamageVulnerability* dVuln = GetDamageVulnerability();
      if (!x560_24_dead && x520_state != kTS_Frenzy &&
          (proj->GetAttribField() & CWeapon::kPA_Ice) == CWeapon::kPA_Ice &&
          dVuln->WeaponHits(CWeaponMode::Ice(), false)) {
        x560_25_frozen = true;
        SendScriptMsgs(kSS_Zero, mgr, kSM_None);
        x53c_freezeRemTime =
            mgr.Random()->Float() * x2d4_data.GetFreezeVariance() + x2d4_data.GetFreezeDuration();
        SetMuted(true);
      }

      SendScriptMsgs(kSS_Damage, mgr, kSM_None);
    }
  }
}

void CScriptGunTurret::ProcessCurrentState(EStateMsg msg, float dt, CStateManager& mgr) {
  switch (x520_state) {
  case kTS_Deactivating:
  case kTS_DeactivatingFromReady:
    ProcessDeactivatingState(msg, dt, mgr);
    break;
  case kTS_Inactive:
    ProcessInactiveState(msg, dt, mgr);
    break;
  case kTS_Ready:
    ProcessReadyState(msg, dt, mgr);
    break;
  case kTS_PanningA:
  case kTS_PanningB:
    ProcessPanningState(msg, dt, mgr);
    break;
  case kTS_Targeting:
  case kTS_Firing:
    ProcessTargettingState(msg, dt, mgr);
    break;
  case kTS_ExitTargeting:
    ProcessExitTargettingState(msg, dt, mgr);
    break;
  case kTS_Frenzy:
    ProcessFrenzyState(msg, dt, mgr);
    break;
  default:
    break;
  }
}

bool CScriptGunTurret::IsStopped(const float dt) const {
  const CVector2f thisForward(GetTransform().GetForward().ToVec2f());
  const CVector2f lastForward(x514_lastFrontVector.ToVec2f());

  return CVector2f::GetAngleDiff(lastForward, thisForward) < dt * (2 * (M_PIF / 180));
}