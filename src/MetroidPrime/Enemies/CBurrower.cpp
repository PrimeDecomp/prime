#include "MetroidPrime/Enemies/CBurrower.hpp"

#include "Kyoto/Animation/CInt32POINode.hpp"
#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/Math/CRelAngle.hpp"
#include "MetaRender/CCubeRenderer.hpp"
#include "MetroidPrime/CActorLights.hpp"
#include "MetroidPrime/CWorld.hpp"
#include "Kyoto/Animation/CVertexMorphEffect.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/TCastTo.hpp"
#include "Kyoto/Particles/CElementGen.hpp"

const CDamageVulnerability CBurrower::skBombVulnerability =
    CDamageVulnerability(kVN_Deflect, kVN_Deflect, kVN_Deflect, kVN_Deflect, kVN_Normal, kVN_Normal,
                        kVN_Deflect, kVN_Deflect, kVN_Deflect, kVN_Deflect, kVN_Deflect,
                        kVN_Deflect, kVN_Deflect, kVN_Deflect, kVN_Deflect, kDT_None);

CBurrower::CBurrower(const TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                    const CTransform4f& xf, const CModelData& mData, const CPatternedInfo& pInfo,
                    const CActorParameters& actParms, const CAssetId& jumpParticle,
                    const CAssetId& trailParticle, const CAssetId& projectile,
                    const CDamageInfo& projectileDamage, const CAssetId& visorParticle,
                    const uint visorSfx, const CAssetId deathExplosionParticle)
: CPatterned(kC_Burrower, uid, name, kFT_Zero, info, xf, mData, pInfo, kMT_Ground, kCT_One,
             kBT_BiPedal, actParms, kCS_Small)
, x568_pathFindSearch(nullptr, 1, pInfo.GetPathfindingIndex(), 1.f, 1.f)
, x64c_projectileInfo(projectile, projectileDamage)
, x69c_attackTime(0.f)
, x6a0_lurkTimer(0.f)
, x6a4_invulnDamageTime(0.f)
, x6a8_lastDestObj(kInvalidUniqueId)
, x6aa_visorSfx(CSfxManager::TranslateSFXID(visorSfx))
, x6ac_24_doFacePlayer(false)
, x6ac_25_inAir(false) {
  SetDrawShadow(false);
  MakeThermalColdAndHot();
  x64c_projectileInfo.Token().Lock();

  if (jumpParticle != kInvalidAssetId) {
    TLockedToken< CGenDescription > desc =
        TLockedToken< CGenDescription >(gpSimplePool->GetObj(SObjectTag('PART', jumpParticle)));
    x674_jumpParticle = rs_new CElementGen(desc, CElementGen::kMOT_One);
    if (x674_jumpParticle.get()) {
      x674_jumpParticle->SetLeaveLightsEnabledForModelRender(true);
      x674_jumpParticle->SetGlobalScale(GetModelScale());
      x674_jumpParticle->SetParticleEmission(false);
    }
  }

  if (trailParticle != kInvalidAssetId) {
    TLockedToken< CGenDescription > desc =
        TLockedToken< CGenDescription >(gpSimplePool->GetObj(SObjectTag('PART', trailParticle)));
    x678_trailParticle = rs_new CElementGen(desc);
    if (x678_trailParticle.get()) {
      x678_trailParticle->SetGlobalScale(GetModelScale());
      x678_trailParticle->SetParticleEmission(false);
    }
  }

  if (visorParticle != kInvalidAssetId) {
    x67c_visorParticle = rstl::optional_object< TLockedToken< CGenDescription > >(
        gpSimplePool->GetObj(SObjectTag('PART', visorParticle)));
  }

  if (deathExplosionParticle != kInvalidAssetId) {
    x68c_deathExplosionParticle = gpSimplePool->GetObj(SObjectTag('PART', deathExplosionParticle));
    x68c_deathExplosionParticle->Lock();
  }
}

CBurrower::~CBurrower() {}

void CBurrower::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) {
  CPatterned::AcceptScriptMsg(msg, uid, mgr);
  switch (msg) {
  case kSM_Registered:
    BodyCtrl()->Activate(mgr);
    break;
  case kSM_InitializedInArea: {
    const TAreaId areaId = GetCurrentAreaId();
    const CGameArea::CPostConstructed* constructed =
        mgr.GetWorld()->GetAreaAlways(areaId).GetPostConstructed();
    x568_pathFindSearch.SetArea(constructed->x10bc_pathArea);
    if (!CPatterned::HasPatrolPath(mgr, 0.f)) {
      x678_trailParticle = nullptr;
    }
    break;
  }
  case kSM_InvulnDamage:
    x6a4_invulnDamageTime = 1.f;
    break;
  }
}

void CBurrower::Render(const CStateManager& mgr) const {
  if (GetActorLights() && x674_jumpParticle.get()) {
    GetActorLights()->ActivateLights();
    x674_jumpParticle->Render();
  }
  CPatterned::Render(mgr);
}

void CBurrower::Think(float dt, CStateManager& mgr) {
  if (!GetActive()) {
    return;
  }
  CPatterned::Think(dt, mgr);
  if (x6a4_invulnDamageTime > 0.f) {
    x6a4_invulnDamageTime -= dt;
  }
  if (x6ac_24_doFacePlayer) {
    CVector3f forward = GetTransform().GetForward();
    CVector3f toPlayer = mgr.GetPlayer()->GetTranslation() - GetTranslation();
    forward.SetZ(0.f);
    forward.Normalize();
    toPlayer.SetZ(0.f);
    toPlayer.Normalize();
    if (CVector3f::Dot(forward, toPlayer) < 0.9993f) {
      const CQuaternion rotation = CQuaternion::LookAt(
          CUnitVector3f(forward, CUnitVector3f::kN_No),
          CUnitVector3f(toPlayer[kDX], toPlayer[kDY], toPlayer[kDZ]), CRelAngle::FromDegrees(360.f * dt));
      RotateToOR(CQuaternion(rotation.GetScalar(),
                             GetTransform().TransposeRotate(rotation.GetVector())), dt);
    }
  } else if (x69c_attackTime > 0.f) {
    x69c_attackTime -= dt;
  }
  if (x674_jumpParticle.get()) {
    x6a0_lurkTimer -= dt;
    if (!x6ac_25_inAir && x6a0_lurkTimer <= 0.f) {
      if (IsAlive()) {
        x674_jumpParticle->SetParticleEmission(true);
        x674_jumpParticle->SetOrientation(GetTransform().GetRotation());
        x674_jumpParticle->SetTranslation(GetTranslation());
        x674_jumpParticle->ForceParticleCreation(1);
        x674_jumpParticle->SetOrientation(CTransform4f::Identity());
        x674_jumpParticle->SetParticleEmission(false);
      }
      x6a0_lurkTimer = 0.1875f;
    }
    x674_jumpParticle->Update(dt);
  }
  if (x678_trailParticle.get()) {
    if (IsAlive() && !x6ac_25_inAir) {
      x678_trailParticle->SetTranslation(GetTranslation());
    }
    x678_trailParticle->Update(dt);
  }
}

void CBurrower::Patrol(CStateManager& mgr, EStateMsg msg, float arg) {
  switch (msg) {
  case kStateMsg_Activate:
    x6ac_25_inAir = false;
    if (x678_trailParticle.get()) {
      x678_trailParticle->SetParticleEmission(true);
    }
    break;
  case kStateMsg_Update:
    break;
  case kStateMsg_Deactivate:
    x6a8_lastDestObj = x2dc_destObj;
    break;
  }
  CPatterned::Patrol(mgr, msg, arg);
}

void CBurrower::Active(CStateManager& mgr, EStateMsg msg, float arg) {
  switch (msg) {
  case kStateMsg_Activate:
    x6ac_24_doFacePlayer = true;
    x32c_animState = kAS_Ready;
    break;
  case kStateMsg_Update:
    TryCommand(mgr, pas::kAS_Generate, &CPatterned::TryGenerateDeactivate, 0);
    break;
  case kStateMsg_Deactivate:
    x6ac_24_doFacePlayer = false;
    x6ac_25_inAir = true;
    x32c_animState = kAS_NotReady;
    break;
  }
}

void CBurrower::ProjectileAttack(CStateManager& mgr, EStateMsg msg, float arg) {
  switch (msg) {
  case kStateMsg_Activate:
    x6ac_24_doFacePlayer = true;
    x6ac_25_inAir = true;
    if (x678_trailParticle.get()) {
      x678_trailParticle->SetParticleEmission(false);
    }
    x32c_animState = kAS_Ready;
    break;
  case kStateMsg_Update:
    TryCommand(mgr, pas::kAS_ProjectileAttack, &CPatterned::TryProjectileAttack, 0);
    break;
  case kStateMsg_Deactivate:
    x32c_animState = kAS_NotReady;
    x69c_attackTime = mgr.Random()->Float() * x308_attackTimeVariation + x304_averageAttackTime;
    x6ac_24_doFacePlayer = false;
    x328_25_verticalMovement = false;
    AddMaterial(kMT_GroundCollider, mgr);
    x55c_moveScale = CVector3f(1.f, 1.f, 1.f);
    break;
  }
}

void CBurrower::Retreat(CStateManager& mgr, EStateMsg msg, float arg) {
  switch (msg) {
  case kStateMsg_Activate:
    x32c_animState = kAS_Ready;
    break;
  case kStateMsg_Update:
    TryCommand(mgr, pas::kAS_Generate, &CPatterned::TryGenerateDeactivate, 1);
    break;
  case kStateMsg_Deactivate:
    x32c_animState = kAS_NotReady;
    if (x678_trailParticle.get()) {
      x6ac_25_inAir = false;
      x678_trailParticle->SetParticleEmission(true);
    }
    break;
  }
}

void CBurrower::TargetPatrol(CStateManager& mgr, EStateMsg msg, float arg) {
  switch (msg) {
  case kStateMsg_Activate: {
    const TUniqueId dest = x6a8_lastDestObj != kInvalidUniqueId
                               ? x6a8_lastDestObj
                               : GetConnectedObject(mgr, kSS_Patrol, kSM_Follow);
    x2dc_destObj = dest;
    if (const CActor* actor = TCastToConstPtr< CActor >(mgr.GetObjectById(dest))) {
      x2e0_destPos = actor->GetTranslation();
      x328_24_inPosition = false;
      x2ec_reflectedDestPos = GetTranslation();
    }
    break;
  }
  case kStateMsg_Update:
  case kStateMsg_Deactivate:
    break;
  }
}

void CBurrower::Lurk(CStateManager& mgr, EStateMsg msg, float arg) {
  switch (msg) {
  case kStateMsg_Activate:
    x6ac_25_inAir = false;
    x6a0_lurkTimer = 0.1875f;
    break;
  case kStateMsg_Update:
  case kStateMsg_Deactivate:
    break;
  }
}

CProjectileInfo* CBurrower::ProjectileInfo() { return &x64c_projectileInfo; }

void CBurrower::DoUserAnimEvent(CStateManager& mgr, const CInt32POINode& node,
                               EUserEventType type, float dt) {
  bool handled = false;
  switch (type) {
  case kUE_Projectile: {
    const CPlayer& player = *mgr.GetPlayer();
    const CVector3f aimPos = player.GetAimPosition(mgr, 0.f);
    const CVector3f gunPos = GetLctrTransform(node.GetLocatorName()).GetTranslation();
    const CVector3f target = ProjectileInfo()->PredictInterceptPos(gunPos, aimPos, player, true, dt);
    LaunchProjectile(CTransform4f::LookAt(gunPos, target), mgr, 1, CWeapon::kPA_None, false,
                     x67c_visorParticle, x6aa_visorSfx, false, GetModelScale());
    handled = true;
    break;
  }
  case kUE_TakeOff:
    RemoveMaterial(kMT_GroundCollider, mgr);
    x328_25_verticalMovement = true;
    x55c_moveScale = GetModelScale();
    handled = true;
    break;
  case kUE_Landing:
    x328_25_verticalMovement = false;
    AddMaterial(kMT_GroundCollider, mgr);
    x55c_moveScale = CVector3f(1.f, 1.f, 1.f);
    handled = true;
    break;
  }
  if (!handled) {
    CPatterned::DoUserAnimEvent(mgr, node, type, dt);
  }
}

bool CBurrower::PathShagged(CStateManager& mgr, float arg) {
  switch (x568_pathFindSearch.OnPath(GetTranslation())) {
  case CPathFindSearch::kR_InvalidArea:
    return true;
  default:
    return false;
  }
}

bool CBurrower::ShouldAttack(CStateManager& mgr, float arg) {
  if (x6a4_invulnDamageTime <= 0.f) {
    return x69c_attackTime <= 0.f && mgr.CanCreateProjectile(GetUniqueId(), kWT_AI, 1);
  }
  return false;
}

const CDamageVulnerability* CBurrower::GetDamageVulnerability() const {
  if (x6ac_25_inAir != true) {
    return &skBombVulnerability;
  }
  return CAi::GetDamageVulnerability();
}

const CDamageVulnerability* CBurrower::GetDamageVulnerability(
    const CVector3f&, const CVector3f&, const CDamageInfo&) const {
  if (x6ac_25_inAir != true) {
    return &skBombVulnerability;
  }
  return CAi::GetDamageVulnerability();
}

void CBurrower::AddToRenderer(const CFrustumPlanes& frustum, const CStateManager& mgr) const {
  if (GetActive() && x678_trailParticle.get()) {
    gpRender->AddParticleGen(*x678_trailParticle);
  }
  CPatterned::AddToRenderer(frustum, mgr);
}

void CBurrower::Death(CStateManager& mgr, const CVector3f& direction, EScriptObjectState state) {
  if (IsAlive()) {
    CPatterned::Death(mgr, direction, state);
    if (x678_trailParticle.get()) {
      x678_trailParticle->SetParticleEmission(false);
    }
  }
}

void CBurrower::TurnAround(CStateManager& mgr, EStateMsg msg, float arg) {
  switch (msg) {
  case kStateMsg_Activate: {
    const CVector3f forward = GetTransform().GetForward();
    BodyCtrl()->CommandMgr().DeliverCmd(CBCLocomotionCmd(-forward, forward, 1.f));
    break;
  }
  case kStateMsg_Update:
  case kStateMsg_Deactivate:
    break;
  }
}

const rstl::optional_object< TCachedToken< CGenDescription > >&
CBurrower::GetDeathExplosionParticle() const {
  return x6ac_25_inAir ? x68c_deathExplosionParticle : x520_deathExplosionParticle;
}
