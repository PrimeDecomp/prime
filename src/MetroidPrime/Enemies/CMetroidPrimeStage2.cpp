#include "MetroidPrime/Enemies/CMetroidPrimeStage2.hpp"

#include "Collision/CCollidableSphere.hpp"
#include "Collision/CCollisionInfoList.hpp"
#include "Collision/CRayCastResult.hpp"
#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/CRandom16.hpp"
#include "Kyoto/Math/CRelAngle.hpp"
#include "Kyoto/Particles/CElementGen.hpp"
#include "MetaRender/CCubeRenderer.hpp"
#include "MetroidPrime/BodyState/CBodyController.hpp"
#include "MetroidPrime/CAnimData.hpp"
#include "MetroidPrime/CCollisionActor.hpp"
#include "MetroidPrime/CCollisionActorManager.hpp"
#include "MetroidPrime/CGameArea.hpp"
#include "MetroidPrime/CGameCollision.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/CWorld.hpp"
#include "MetroidPrime/Cameras/CCameraManager.hpp"
#include "MetroidPrime/Cameras/CCameraShakeData.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/ScriptObjects/CScriptWaypoint.hpp"
#include "MetroidPrime/TCastTo.hpp"
#include "MetroidPrime/Weapons/CGameProjectile.hpp"
#include "MetroidPrime/Weapons/CShockWave.hpp"
#include "rstl/math.hpp"

static const int skVisorPhases[] = {0, 1, 0, 2};
static const int skStepDirections[] = {1, 2, 3};
static const char* const skLockOnTarget = "lockon_target_LCTR";
static const char* const skEyes = "Eyes";
static const char* const skHead = "Head";
static SSphereJointInfo skJointInfo[] = {{skLockOnTarget, 1.5f}};

template < int N >
static inline uint CountBitGroups(uint bits) {
  const uint mask = 0xffffffffu / ((1u << (1u << N)) + 1u);
  bits = (bits & mask) + ((bits & ~mask) >> (1 << N));
  return CountBitGroups< N + 1 >(bits);
}
template <>
inline uint CountBitGroups< 5 >(uint bits) {
  return bits;
}
static inline uint CountSetBits(uint bits) { return CountBitGroups< 0 >(bits); }

CMetroidPrimeStage2::CMetroidPrimeStage2(TUniqueId uid, const rstl::string& name,
                                         const CEntityInfo& info, const CTransform4f& xf,
                                         const CModelData& mData, const CPatternedInfo& pInfo,
                                         const CActorParameters& actParms, CAssetId particle1,
                                         CDamageInfo dInfo, CAssetId electric, uint sfxId,
                                         CAssetId particle2)
: CPatterned(kC_MetroidPrimeStage2, uid, name, kFT_Zero, info, xf, mData, pInfo, kMT_Flyer, kCT_One,
             kBT_Flyer, actParms, kCS_Medium)
, x568_particleDesc(gpSimplePool->GetObj(SObjectTag('PART', particle2)))
, x574_searchPath(nullptr, 3, pInfo.GetPathfindingIndex(), 1.f, 1.f)
, x658_collisionManager(nullptr)
, x65c_elementGen(nullptr)
, x660_particle1(particle1)
, x664_electric(electric)
, x668_spawnXf(CTransform4f::Identity())
, x698_damageInfo(dInfo)
, x6b4_spaceWarpPos(xf.GetTranslation())
, x6c0_hpThreshold(0.f)
, x6c4_hpFraction(0.f)
, x6c8_phaseAlpha(0.f)
, x6cc_baseScale(4.f)
, x6d0_maxScale(0.9f * x6cc_baseScale + x6cc_baseScale)
, x6d4_morphT(0.f)
, x6d8_damagePhase(0)
, x6dc_currentVisorPhase(0)
, x6e0_previousVisorPhase(x6dc_currentVisorPhase)
, x6e4_spawnedAiCount(0)
, x6e8_minAttackInterval(2)
, x6ec_maxAttackInterval(4)
, x6f0_attackCounter(0)
, x6f4_nextAttackThreshold(x6e8_minAttackInterval - 1)
, x6f8_maxSpawnedCount(2)
, x6fc_materialSetIdx(0)
, x700_stepDirection(1)
, x704_bossUtilityWaypointId(kInvalidUniqueId)
, x706_lockOnTargetCollider(kInvalidUniqueId)
, x708_sfxHandle()
, x70c_sfxId(CSfxManager::TranslateSFXID(sfxId))
, x70e_24_isProjectileAttacking(false)
, x70e_25_canAttack(true)
, x70e_26_isPhaseTransitioning(false)
, x70e_27_isSpaceWarping(false)
, x70e_28_isVisible(true)
, x70e_29_canSpawnAi(false)
, x70e_30_isMorphing(false)
, x70e_31_hasEventStarted(false) {
  SetDrawShadow(false);
  MakeThermalColdAndHot();
}

CMetroidPrimeStage2::~CMetroidPrimeStage2() {}

void CMetroidPrimeStage2::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid,
                                          CStateManager& mgr) {
  CPatterned::AcceptScriptMsg(msg, uid, mgr);
  switch (msg) {
  case kSM_Registered: {
    SetupCollisionManager(mgr);
    x658_collisionManager->SetActive(mgr, true);
    x6cc_baseScale = GetModelData()->GetScale().GetX();
    x6d0_maxScale = 0.9f * x6cc_baseScale + x6cc_baseScale;
    const float scale = 1.f / (0.625f * x6cc_baseScale);
    x55c_moveScale = CVector3f(scale, scale, scale);
    const float hp = HealthInfo(mgr)->GetHP();
    x6c0_hpThreshold = 0.3f * hp;
    if (hp > 0.f) {
      x6c4_hpFraction = 1.f / hp;
    }
    x450_bodyController->Activate(mgr);
    break;
  }
  case kSM_InitializedInArea: {
    const TAreaId area = GetCurrentAreaId();
    x574_searchPath.SetArea(mgr.GetWorld()->GetArea(area)->GetPostConstructed()->x10bc_pathArea);
    x704_bossUtilityWaypointId = GetConnectedObject(mgr, kSS_Play, kSM_Activate);
    break;
  }
  case kSM_Activate:
    x658_collisionManager->SetActive(mgr, true);
    break;
  case kSM_Deactivate:
    x658_collisionManager->SetActive(mgr, false);
    break;
  case kSM_Deleted:
    x658_collisionManager->Destroy(mgr);
    mgr.SetBossParams(kInvalidUniqueId, 0.f, 0);
    break;
  case kSM_Touched:
    if (CCollisionActor* const actor = TCastToPtr< CCollisionActor >(mgr.ObjectById(uid))) {
      if (actor->GetLastTouchedObject() == mgr.GetPlayer()->GetUniqueId() &&
          x420_curDamageRemTime <= 0.f) {
        mgr.ApplyDamage(
            GetUniqueId(), mgr.GetPlayer()->GetUniqueId(), GetUniqueId(), GetContactDamage(),
            CMaterialFilter::MakeIncludeExclude(CMaterialList(kMT_Solid), CMaterialList()),
            CVector3f::Zero());
        x420_curDamageRemTime = x424_damageWaitTime;
      }
    }
    break;
  case kSM_Damage:
    if (CCollisionActor* const actor = TCastToPtr< CCollisionActor >(mgr.ObjectById(uid))) {
      const TUniqueId touched = actor->GetLastTouchedObject();
      if (const CGameProjectile* projectile =
              TCastToConstPtr< CGameProjectile >(mgr.GetObjectById(touched))) {
        if (projectile->GetOwnerId() == mgr.GetPlayer()->GetUniqueId()) {
          const CDamageVulnerability* vulnerability = actor->GetDamageVulnerability();
          const CWeaponMode& mode = projectile->GetCurrentDamageInfo().GetWeaponMode();
          if (vulnerability->WeaponHits(mode, CDamageVulnerability::kRD_No) &&
              mode.GetType() == kWT_Phazon) {
            UpdateSummonType(mgr);
            TakeDamage(CVector3f::Forward(), 1.f);
            if (!x70e_24_isProjectileAttacking && !x70e_26_isPhaseTransitioning) {
              x450_bodyController->CommandMgr().DeliverCmd(
                  CBCKnockBackCmd(GetTransform().GetForward(), pas::kS_One));
              PlayPainSound(mgr);
            }
          }
        }
      }
    } else if (const CGameProjectile* projectile =
                   TCastToConstPtr< CGameProjectile >(mgr.GetObjectById(uid))) {
      mgr.ApplyDamage(
          uid, x706_lockOnTargetCollider, projectile->GetOwnerId(),
          projectile->GetCurrentDamageInfo(),
          CMaterialFilter::MakeIncludeExclude(CMaterialList(kMT_Solid), CMaterialList()),
          CVector3f::Zero());
    }
    break;
  case kSM_Start:
    x70e_25_canAttack = true;
    break;
  case kSM_Stop:
    x70e_25_canAttack = false;
    break;
  case kSM_InvulnDamage:
    break;
  }
}

void CMetroidPrimeStage2::SetupCollisionManager(CStateManager& mgr) {
  rstl::vector< CJointCollisionDescription > joints;
  joints.reserve(1);
  AddSphereCollisionList(skJointInfo, 1, joints);
  x658_collisionManager =
      rs_new CCollisionActorManager(mgr, GetUniqueId(), GetCurrentAreaId(), joints, false);
  x658_collisionManager->SetActive(mgr, GetActive());
  for (uint i = 0; i < x658_collisionManager->GetNumCollisionActors(); ++i) {
    const CJointCollisionDescription& desc = x658_collisionManager->GetCollisionDescFromIndex(i);
    const TUniqueId id = desc.GetCollisionActorId();
    if (CCollisionActor* actor = TCastToPtr< CCollisionActor >(mgr.ObjectById(id))) {
      if (desc.GetName() == rstl::string_l(skLockOnTarget)) {
        x706_lockOnTargetCollider = id;
      }
    }
  }
  SetupHealthInfo(mgr);
  SetMaterialFilter(CMaterialFilter::MakeIncludeExclude(
      CMaterialList(kMT_Solid), CMaterialList(kMT_CollisionActor, kMT_Player, kMT_Character)));
  AddMaterial(kMT_ProjectilePassthrough, mgr);
}

void CMetroidPrimeStage2::AddSphereCollisionList(
    const SSphereJointInfo* joints, int count, rstl::vector< CJointCollisionDescription >& descs) {
  const CAnimData* animData = GetModelData()->GetAnimationData();
  for (int i = 0; i < count; ++i) {
    const CSegId seg = animData->GetLocatorSegId(rstl::string_l(joints[i].name));
    if (seg != CSegId(0xff)) {
      const CJointCollisionDescription desc = CJointCollisionDescription::SphereCollision(
          seg, joints[i].radius, rstl::string_l(joints[i].name), 1000.f);
      descs.push_back(desc);
    }
  }
}

void CMetroidPrimeStage2::SetupHealthInfo(CStateManager& mgr) {
  const CHealthInfo* health = HealthInfo(mgr);
  if (CCollisionActor* actor =
          TCastToPtr< CCollisionActor >(mgr.ObjectById(x706_lockOnTargetCollider))) {
    *actor->HealthInfo(mgr) = *health;
    actor->SetDamageVulnerability(
        *static_cast< const CMetroidPrimeStage2* >(this)->GetDamageVulnerability());
  }
}

void CMetroidPrimeStage2::UpdateHealthInfo(CStateManager& mgr) {
  if (IsAlive()) {
    if (CCollisionActor* actor =
            TCastToPtr< CCollisionActor >(mgr.ObjectById(x706_lockOnTargetCollider))) {
      actor->SetDamageVulnerability(
          *static_cast< const CMetroidPrimeStage2* >(this)->GetDamageVulnerability());
      CAi::HealthInfo(mgr)->SetHP(actor->HealthInfo(mgr)->GetHP());
    }
    if (HealthInfo(mgr)->GetHP() <= 0.f) {
      Death(mgr, CVector3f::Zero(), kSS_DeathRattle);
      RemoveMaterial(kMT_Orbit, kMT_Target, mgr);
    }
  }
}

void CMetroidPrimeStage2::Think(float dt, CStateManager& mgr) {
  if (GetActive()) {
    CPatterned::Think(dt, mgr);
    if (IsAlive()) {
      UpdateVisibleSpectrum(dt, mgr);
    }
    x450_bodyController->FaceDirection(mgr.GetPlayer()->GetTranslation() - GetTranslation(), dt);
    x658_collisionManager->Update(dt, mgr, CCollisionActorManager::kUO_ObjectSpace);
    UpdateHealthInfo(mgr);
    UpdateNumActiveMetroids(mgr);
    if (x70e_30_isMorphing) {
      x6d4_morphT += 2.f * dt;
      if (x6d4_morphT >= 1.f) {
        x6d4_morphT = 0.f;
      }
      UpdateMaterialSet(-4.f * x6d4_morphT * (x6d4_morphT - 1.f));
    }
  }
}

void CMetroidPrimeStage2::UpdateVisibleSpectrum(float dt, CStateManager& mgr) {
  const int phase = skVisorPhases[mgr.GetPlayerState()->GetCurrentVisor()];
  if (phase == x6dc_currentVisorPhase) {
    const float alpha = 1.f - x6c8_phaseAlpha;
    x42c_color.SetAlpha(alpha);
    const float scale = alpha * (x6cc_baseScale - x6d0_maxScale) + x6d0_maxScale;
    ModelData()->SetScale(CVector3f(scale, scale, scale));
    if (x70e_28_isVisible != true) {
      AddMaterial(kMT_Orbit, kMT_Target, mgr);
      ActivateHeadFx(mgr, true);
      x70e_28_isVisible = true;
    }
  } else {
    const float alpha = phase == x6e0_previousVisorPhase ? x6c8_phaseAlpha : 0.f;
    x42c_color.SetAlpha(alpha);
    const float scale = alpha * (x6cc_baseScale - x6d0_maxScale) + x6d0_maxScale;
    ModelData()->SetScale(CVector3f(scale, scale, scale));
    if (x70e_28_isVisible) {
      RemoveMaterial(kMT_Orbit, kMT_Target, mgr);
      ActivateHeadFx(mgr, false);
      x70e_28_isVisible = false;
    }
  }
  const CTransform4f& xf = GetCreatureTransform(mgr);
  if (x70e_26_isPhaseTransitioning) {
    x6c8_phaseAlpha -= 0.5f * dt;
    x6b4_spaceWarpPos = xf.GetTranslation();
    if (x6c8_phaseAlpha < 0.f) {
      x6c8_phaseAlpha = 0.f;
      x70e_26_isPhaseTransitioning = false;
      x70e_27_isSpaceWarping = false;
    }
  }
  if (x65c_elementGen.get()) {
    if (!x65c_elementGen->IsSystemDeletable()) {
      x65c_elementGen->SetGlobalOrientation(xf.GetRotation());
      x65c_elementGen->SetGlobalTranslation(xf.GetTranslation());
      x65c_elementGen->Update(dt);
    } else {
      x65c_elementGen = nullptr;
    }
  }
}

void CMetroidPrimeStage2::PreRender(CStateManager& mgr, const CFrustumPlanes& frustum) {
  CPatterned::PreRender(mgr, frustum);
  const CPlayerState::EPlayerVisor visor = mgr.GetPlayerState()->GetActiveVisor(mgr);
  const int phase = skVisorPhases[visor];
  const bool xray = visor == CPlayerState::kPV_XRay;
  if (x70e_26_isPhaseTransitioning) {
    float alpha = 1.f - x6c8_phaseAlpha;
    if (phase != x6dc_currentVisorPhase) {
      alpha = phase == x6e0_previousVisorPhase ? x6c8_phaseAlpha : 0.f;
    }
    SetModelFlags(CModelFlags::AlphaBlendedDepthCompareUpdate(alpha, true, false)
                      .UseShaderSet(xray ? 0 : x6fc_materialSetIdx));
  } else {
    const CModelFlags flags = GetModelFlags().UseShaderSet(xray ? 0 : x6fc_materialSetIdx);
    if (phase != x6dc_currentVisorPhase) {
      SetModelFlags(flags.DepthCompareUpdate(true, false));
    } else {
      SetModelFlags(flags);
    }
  }
}

void CMetroidPrimeStage2::Render(const CStateManager& mgr) const {
  if (x70e_27_isSpaceWarping) {
    mgr.DrawSpaceWarp(x6b4_spaceWarpPos, 1.f);
  }
  CPatterned::Render(mgr);
}

void CMetroidPrimeStage2::UpdateNumActiveMetroids(CStateManager& mgr) {
  x6e4_spawnedAiCount = 0;
  CObjectList& list = mgr.ObjectListById(kOL_ListeningAi);
  for (int i = list.GetFirstObjectIndex(); i != -1; i = list.GetNextObjectIndex(i)) {
    if (CPatterned* actor = TCastToPtr< CPatterned >(list[i])) {
      if (actor != this && actor->GetActive() && actor->GetCurrentAreaId() == GetCurrentAreaId()) {
        ++x6e4_spawnedAiCount;
      }
    }
  }
}

void CMetroidPrimeStage2::KillActiveMetroids(CStateManager& mgr) {
  CObjectList& list = mgr.ObjectListById(kOL_ListeningAi);
  for (int i = list.GetFirstObjectIndex(); i != -1; i = list.GetNextObjectIndex(i)) {
    if (CPatterned* actor = TCastToPtr< CPatterned >(list[i])) {
      if (actor != this && actor->GetActive() && actor->GetCurrentAreaId() == GetCurrentAreaId()) {
        actor->MassiveDeath(mgr);
      }
    }
  }
}

bool CMetroidPrimeStage2::CanSummonToPosition(const CTransform4f& xf, CStateManager& mgr) {
  TEntityList nearList;
  const CMaterialFilter nearFilter =
      CMaterialFilter::MakeInclude(CMaterialList(kMT_Player, kMT_Character, kMT_AIBlock));
  const CVector3f position = xf.GetTranslation();
  const CAABox bounds(position - CVector3f(2.f, 2.f, 2.f), position + CVector3f(2.f, 2.f, 2.f));
  const CMaterialFilter filter = CMaterialFilter::MakeIncludeExclude(
      CMaterialList(kMT_Solid, kMT_Player, kMT_Character, kMT_AIBlock),
      CMaterialList(kMT_ProjectilePassthrough));
  mgr.BuildNearList(nearList, bounds, nearFilter, this);
  TUniqueId id = kInvalidUniqueId;
  CCollisionInfoList info;
  CCollidableSphere sphere(CSphere(CVector3f::Zero(), 2.f), CMaterialList(kMT_Solid, kMT_AIBlock));
  CGameCollision::DetectCollision(mgr, sphere, xf, filter, nearList, id, info);
  if (info.GetCount() > 0) {
    return false;
  }
  if (CCollisionActor* const actor =
          TCastToPtr< CCollisionActor >(mgr.ObjectById(x706_lockOnTargetCollider))) {
    const CVector3f delta = position - actor->GetTranslation();
    const float distance = delta.Magnitude();
    const CRayCastResult result = mgr.RayStaticIntersection(
        actor->GetTranslation(), delta.AsNormalized(), distance,
        CMaterialFilter::MakeExclude(CMaterialList(kMT_ProjectilePassthrough)));
    if (result.IsInvalid()) {
      return true;
    }
  }
  return false;
}

void CMetroidPrimeStage2::DoUserAnimEvent(CStateManager& mgr, const CInt32POINode& node,
                                          EUserEventType type, float dt) {
  bool handled = false;
  switch (type) {
  case kUE_EventStart:
    if (x70e_31_hasEventStarted != true) {
      SendScriptMsgs(kSS_CameraTarget, mgr, kSM_None);
      x70e_31_hasEventStarted = true;
    }
    handled = true;
    break;
  case kUE_BeginAction: {
    const ushort sfx = x70c_sfxId;
    CShockWaveInfo info(x660_particle1, x698_damageInfo, 2.f, x664_electric, sfx, 180.f);
    CreateShockWave(mgr, info);
    BlastShake(1.f, mgr);
    handled = true;
    break;
  }
  case kUE_Activate:
    SpawnPhazonPool(mgr);
    handled = true;
    break;
  case kUE_EggLay:
    if (x70e_29_canSpawnAi && x6d8_damagePhase != 0 && x6e4_spawnedAiCount < x6f8_maxSpawnedCount) {
      const float angle1 = CRelAngle::FromDegrees(22.5f).AsRadians() * mgr.Random()->Range(-1, 1);
      const float angle2 = CRelAngle::FromDegrees(45.f).AsRadians() * mgr.Random()->Range(-1, 1);
      const float radius = 2.f * CMath::FastCosR(angle1);
      const CVector3f position = x668_spawnXf * (2.f * CVector3f(radius * CMath::FastSinR(angle2),
                                                                 -CMath::FastSinR(angle1),
                                                                 radius * CMath::FastCosR(angle2)));
      if (CScriptWaypoint* waypoint =
              TCastToPtr< CScriptWaypoint >(mgr.ObjectById(x704_bossUtilityWaypointId))) {
        waypoint->SetTransform(CTransform4f::LookAt(
            position, mgr.GetPlayer()->GetAimPosition(mgr, 0.f), CVector3f::Up()));
        if (CanSummonToPosition(waypoint->GetTransform(), mgr)) {
          SendScriptMsgs(kSS_Zero, mgr, kSM_None);
          x6b4_spaceWarpPos = waypoint->GetTranslation();
        }
      }
    }
    handled = true;
    break;
  case kUE_Deactivate:
    x70e_27_isSpaceWarping = false;
    break;
  }
  if (!handled) {
    CPatterned::DoUserAnimEvent(mgr, node, type, dt);
  }
}

CVector3f CMetroidPrimeStage2::GetAimPosition(const CStateManager& mgr, float dt) const {
  if (const CCollisionActor* actor =
          TCastToConstPtr< CCollisionActor >(mgr.GetObjectById(x706_lockOnTargetCollider))) {
    return actor->GetTranslation();
  }
  return CPatterned::GetAimPosition(mgr, dt);
}

void CMetroidPrimeStage2::AddToRenderer(const CFrustumPlanes& frustum,
                                        const CStateManager& mgr) const {
  if (GetActive() && x65c_elementGen.get()) {
    gpRender->AddParticleGen(*x65c_elementGen);
  }
  CPatterned::AddToRenderer(frustum, mgr);
}

void CMetroidPrimeStage2::Generate(CStateManager& mgr, EStateMsg msg, float dt) {
  switch (msg) {
  case kStateMsg_Activate: {
    CVector3f lookPos = mgr.GetPlayer()->GetTranslation();
    lookPos.SetZ(GetTranslation().GetZ());
    CTransform4f xf = CTransform4f::LookAt(GetTranslation(), lookPos, CVector3f::Up());
    xf.SetTranslation(GetTranslation());
    SetTransform(xf);
    break;
  }
  case kStateMsg_Deactivate:
    mgr.SetBossParams(GetUniqueId(), HealthInfo(mgr)->GetHP(), 91);
    ActivateHeadFx(mgr, true);
    break;
  }
}

void CMetroidPrimeStage2::TelegraphAttack(CStateManager& mgr, EStateMsg msg, float dt) {
  switch (msg) {
  case kStateMsg_Activate:
    x32c_animState = kAS_Ready;
    x70e_30_isMorphing = true;
    break;
  case kStateMsg_Update:
    if (x70e_31_hasEventStarted) {
      TryCommand(mgr, pas::kAS_ProjectileAttack, &CPatterned::TryProjectileAttack, 5);
    } else {
      TryCommand(mgr, pas::kAS_MeleeAttack, &CPatterned::TryMeleeAttack, 2);
    }
    break;
  case kStateMsg_Deactivate:
    x32c_animState = kAS_NotReady;
    x70e_30_isMorphing = false;
    UpdateMaterialSet(1.f);
    break;
  }
}

void CMetroidPrimeStage2::FadeIn(CStateManager& mgr, EStateMsg msg, float dt) {
  switch (msg) {
  case kStateMsg_Activate:
    x6f8_maxSpawnedCount = GetMaxSpawnCount(mgr);
    x32c_animState = kAS_Ready;
    x70e_24_isProjectileAttacking = true;
    break;
  case kStateMsg_Update:
    TryCommand(mgr, pas::kAS_ProjectileAttack, &CPatterned::TryProjectileAttack, 0);
    break;
  case kStateMsg_Deactivate:
    x70e_24_isProjectileAttacking = false;
    x70e_27_isSpaceWarping = false;
    x70e_29_canSpawnAi = false;
    x70e_30_isMorphing = false;
    x32c_animState = kAS_NotReady;
    break;
  }
}

void CMetroidPrimeStage2::FadeOut(CStateManager& mgr, EStateMsg msg, float dt) {
  switch (msg) {
  case kStateMsg_Activate:
    StartSpectralFade(mgr);
    break;
  case kStateMsg_Update:
  case kStateMsg_Deactivate:
    break;
  }
}

void CMetroidPrimeStage2::Dodge(CStateManager& mgr, EStateMsg msg, float dt) {
  switch (msg) {
  case kStateMsg_Activate:
    x32c_animState = kAS_Ready;
    x700_stepDirection = GetAvoidanceStep(mgr, false);
    break;
  case kStateMsg_Update:
    TryCommand(mgr, pas::kAS_Step, &CPatterned::TryStep, x700_stepDirection);
    break;
  case kStateMsg_Deactivate:
    x32c_animState = kAS_NotReady;
    break;
  }
}

void CMetroidPrimeStage2::Halt(CStateManager& mgr, EStateMsg msg, float dt) {}

void CMetroidPrimeStage2::PathFind(CStateManager& mgr, EStateMsg msg, float dt) {
  CPatterned::PathFind(mgr, msg, dt);
  switch (msg) {
  case kStateMsg_Update:
    StepToPosition(mgr.GetPlayer()->GetTranslation());
    break;
  }
}

void CMetroidPrimeStage2::PathFindEx(CStateManager& mgr, EStateMsg msg, float dt) {
  CPatterned::PathFind(mgr, msg, dt);
  switch (msg) {
  case kStateMsg_Activate:
    x70e_24_isProjectileAttacking = true;
    break;
  case kStateMsg_Update:
    StepToPosition(x2e0_destPos);
    break;
  case kStateMsg_Deactivate:
    x70e_24_isProjectileAttacking = false;
    break;
  }
}

void CMetroidPrimeStage2::JumpBack(CStateManager& mgr, EStateMsg msg, float dt) {
  switch (msg) {
  case kStateMsg_Activate:
    x32c_animState = kAS_Ready;
    x700_stepDirection = GetAvoidanceStep(mgr, true);
    break;
  case kStateMsg_Update:
    TryCommand(mgr, pas::kAS_Step, &CPatterned::TryStep, x700_stepDirection);
    break;
  case kStateMsg_Deactivate:
    x32c_animState = kAS_NotReady;
    break;
  }
}

void CMetroidPrimeStage2::Skid(CStateManager& mgr, EStateMsg msg, float dt) {
  switch (msg) {
  case kStateMsg_Activate:
    x32c_animState = kAS_Ready;
    break;
  case kStateMsg_Update:
    TryCommand(mgr, pas::kAS_Step, &CPatterned::TryStep, 5);
    break;
  case kStateMsg_Deactivate:
    x32c_animState = kAS_NotReady;
    break;
  }
}

void CMetroidPrimeStage2::Taunt(CStateManager& mgr, EStateMsg msg, float dt) {
  switch (msg) {
  case kStateMsg_Activate:
    x32c_animState = kAS_Ready;
    break;
  case kStateMsg_Update:
    TryCommand(mgr, pas::kAS_Taunt, &CPatterned::TryTaunt, 2);
    break;
  case kStateMsg_Deactivate:
    x32c_animState = kAS_NotReady;
    break;
  }
}

void CMetroidPrimeStage2::Dead(CStateManager& mgr, EStateMsg msg, float dt) {
  CPatterned::Dead(mgr, msg, dt);
  switch (msg) {
  case kStateMsg_Update:
    if (!GetModelData()->GetAnimationData()->IsAnimTimeRemaining(dt,
                                                                 rstl::string_l("Whole Body"))) {
      DeathDelete(mgr);
    }
    break;
  }
}

bool CMetroidPrimeStage2::ShouldAttack(CStateManager& mgr, float arg) {
  if (x70e_31_hasEventStarted) {
    return x70e_25_canAttack;
  }
  return true;
}

bool CMetroidPrimeStage2::ShouldCrouch(CStateManager& mgr, float arg) {
  if (x6f0_attackCounter < x6f4_nextAttackThreshold) {
    ++x6f0_attackCounter;
    return false;
  }
  const float hpFraction = x6c4_hpFraction * HealthInfo(mgr)->GetHP();
  x6f4_nextAttackThreshold =
      rstl::min_val(x6e8_minAttackInterval + static_cast< int >(3.f * (1.f - hpFraction)),
                    x6ec_maxAttackInterval);
  x6f0_attackCounter = 0;
  return true;
}

bool CMetroidPrimeStage2::ShouldTaunt(CStateManager& mgr, float arg) {
  const CHealthInfo* info = HealthInfo(mgr);
  if (info && info->GetHP() > x6c0_hpThreshold) {
    return mgr.Random()->Next() % 100 < 50;
  }
  return false;
}

bool CMetroidPrimeStage2::InPosition(CStateManager& mgr, float arg) {
  return GetTransform().Get23() - mgr.GetPlayer()->GetTransform().Get23() > 0.25f;
}

bool CMetroidPrimeStage2::HasPatrolPath(CStateManager& mgr, float arg) {
  return !x70e_31_hasEventStarted && CPatterned::HasPatrolPath(mgr, arg);
}

bool CMetroidPrimeStage2::ShouldMove(CStateManager& mgr, float arg) {
  return !x70e_31_hasEventStarted;
}

bool CMetroidPrimeStage2::CoverFind(CStateManager& mgr, float arg) {
  CVector3f delta = x2e0_destPos - GetTranslation();
  return delta.MagSquared() < 90.f;
}

void CMetroidPrimeStage2::Death(CStateManager& mgr, const CVector3f& direction,
                                EScriptObjectState state) {
  if (IsAlive()) {
    KillActiveMetroids(mgr);
    ActivateHeadFx(mgr, false);
    if (CCollisionActor* actor =
            TCastToPtr< CCollisionActor >(mgr.ObjectById(x706_lockOnTargetCollider))) {
      actor->AddMaterial(kMT_ProjectilePassthrough, mgr);
    }
    CPatterned::Death(mgr, direction, state);
  }
}

void CMetroidPrimeStage2::SpawnPhazonPool(CStateManager& mgr) {
  const CRayCastResult result = GetGroundContactPoint(mgr);
  if (result.IsValid()) {
    x668_spawnXf = CTransform4f::Translate(result.GetPoint());
    if (CScriptWaypoint* waypoint =
            TCastToPtr< CScriptWaypoint >(mgr.ObjectById(x704_bossUtilityWaypointId))) {
      waypoint->SetTransform(x668_spawnXf);
      SendScriptMsgs(kSS_AboutToMassivelyDie, mgr, kSM_None);
      x70e_29_canSpawnAi = true;
    }
  }
}

void CMetroidPrimeStage2::ActivateHeadFx(CStateManager& mgr, const bool active) {
  CAnimData& animData = *ModelData()->AnimationData();
  animData.SetParticleEffectState(rstl::string_l(skEyes), active, mgr);
  animData.SetParticleEffectState(rstl::string_l(skHead), active, mgr);
}

CRayCastResult CMetroidPrimeStage2::GetGroundContactPoint(CStateManager& mgr) {
  return mgr.RayStaticIntersection(GetTranslation(), -CVector3f::Up(), 30.f,
                                   CMaterialFilter::skPassEverything);
}

void CMetroidPrimeStage2::CreateShockWave(CStateManager& mgr, const CShockWaveInfo& info) {
  const CRayCastResult result = GetGroundContactPoint(mgr);
  if (result.IsValid()) {
    CShockWave* const shock = rs_new CShockWave(mgr.AllocateUniqueId(), rstl::string_l("Shockwave"),
                                                CEntityInfo(GetCurrentAreaId(), NullConnectionList),
                                                CTransform4f::Translate(result.GetPoint()),
                                                GetUniqueId(), info, 1.5f, 0.5f);
    if (shock) {
      mgr.AddObject(shock);
    }
  }
}

void CMetroidPrimeStage2::BlastShake(float magnitude, CStateManager& mgr) {
  const CPlayer* player = mgr.GetPlayer();
  const CVector3f delta = GetTranslation() - player->GetTranslation();
  const float shake = 0.5f - 0.01f * delta.Magnitude();
  if (shake > 0.f && player->GetSurfaceRestraint() != CPlayer::kSR_Air) {
    mgr.CameraManager()->AddCameraShaker(CCameraShakeData::HardVertShake(0.5f, shake), true);
  }
}

int CMetroidPrimeStage2::GetMaxSpawnCount(CStateManager& mgr) { return 2; }

void CMetroidPrimeStage2::StartSpectralFade(CStateManager& mgr) {
  x330_stateMachineState.SetDelay(2.f);
  x70e_26_isPhaseTransitioning = true;
  x70e_27_isSpaceWarping = true;
  x6c8_phaseAlpha = 1.f;
  x70e_29_canSpawnAi = false;
  const int phase = skVisorPhases[mgr.GetPlayerState()->GetCurrentVisor()];
  const ushort sfx =
      phase == x6dc_currentVisorPhase ? static_cast< ushort >(0xb7e) : static_cast< ushort >(0xb7d);
  if (phase == x6dc_currentVisorPhase) {
    x65c_elementGen =
        rs_new CElementGen(x568_particleDesc, CElementGen::kMOT_Normal, CElementGen::kOSF_One);
    if (x65c_elementGen.get()) {
      const CTransform4f& xf = GetCreatureTransform(mgr);
      x65c_elementGen->SetGlobalScale(GetModelData()->ScaleCopy());
      x65c_elementGen->SetGlobalOrientation(xf.GetRotation());
      x65c_elementGen->SetGlobalTranslation(xf.GetTranslation());
    }
  }
  CSfxManager::AddEmitter(sfx, GetTranslation(), CVector3f::Zero(), true, false,
                          CSfxManager::kMedPriority, CSfxManager::kAllAreas);
  x6e0_previousVisorPhase = x6dc_currentVisorPhase;
  ++x6dc_currentVisorPhase;
  if (x6dc_currentVisorPhase > 2) {
    x6dc_currentVisorPhase = 0;
  }
}

uint CMetroidPrimeStage2::GetAvoidanceStep(CStateManager& mgr, bool allowBackward) {
  const CTransform4f& xf = GetCreatureTransform(mgr);
  int start = allowBackward ? 0 : 1;
  CVector3f directions[3];
  directions[0] = -xf.GetForward();
  directions[1] = -xf.GetRight();
  directions[2] = xf.GetRight();
  int available = 1 << start;
  for (int i = start; i < 3; ++i) {
    const CRayCastResult result = mgr.RayStaticIntersection(
        xf.GetTranslation(), directions[i], 20.f, CMaterialFilter::skPassEverything);
    if (result.IsInvalid()) {
      available |= 1 << i;
    }
  }
  int choice = 0;
  if (available <= 7) {
    switch (CountSetBits(available)) {
    case 1:
      choice = available >> 1;
      break;
    case 2:
      if ((mgr.Random()->Next() & 1) != 0) {
        choice = (available & 4) != 0 ? 2 : 1;
      } else {
        choice = (available & 1) ^ 1;
      }
      break;
    case 3:
      choice = mgr.Random()->Range(start, 2);
      break;
    }
  }
  return skStepDirections[choice];
}

void CMetroidPrimeStage2::UpdateSummonType(CStateManager& mgr) {
  const float hp = x6c4_hpFraction * HealthInfo(mgr)->GetHP();
  if (hp >= 0.f) {
    bool sendMsg = false;
    switch (x6d8_damagePhase) {
    case 0:
      if (hp < 0.75f) {
        x6d8_damagePhase = 1;
      }
      break;
    case 1:
      if (hp < 0.5f) {
        sendMsg = true;
        x6d8_damagePhase = 2;
      }
      break;
    case 2:
      if (hp < 0.25f) {
        sendMsg = true;
        x6d8_damagePhase = 3;
      }
      break;
    }
    if (sendMsg) {
      SendScriptMsgs(kSS_DeactivateState, mgr, kSM_None);
    }
  }
}

void CMetroidPrimeStage2::UpdateMaterialSet(float t) {
  const float count = GetModelData()->GetNumMaterialSets() - 2;
  const int material = count - count * t;
  if (x6fc_materialSetIdx != material) {
    x6fc_materialSetIdx = material;
  }
}

const CTransform4f& CMetroidPrimeStage2::GetCreatureTransform(CStateManager& mgr) const {
  if (const CCollisionActor* actor =
          TCastToConstPtr< CCollisionActor >(mgr.GetObjectById(x706_lockOnTargetCollider))) {
    return actor->GetTransform();
  }
  return GetTransform();
}

void CMetroidPrimeStage2::PlayPainSound(CStateManager& mgr) {
  if (!CSfxManager::IsPlaying(x708_sfxHandle)) {
    const int area = GetCurrentAreaId().Value();
    CAudioSys::C3DEmitterParmData parms(1000.f, 0.1f, 1, 127, 20);
    parms.x0_pos = GetCreatureTransform(mgr).GetTranslation();
    parms.xc_dir = CVector3f::Zero();
    parms.x24_sfxId = 0xb67;
    x708_sfxHandle = CSfxManager::AddEmitter(parms, true, CSfxManager::kMedPriority, false, area);
  }
}

void CMetroidPrimeStage2::StepToPosition(const CVector3f& position) {
  pas::EStepDirection dir =
      FindBestStepDirection(x450_bodyController->GetCommandMgr().GetMoveVector());
  x450_bodyController->CommandMgr().ClearLocomotionCmds();
  if (dir == pas::kSD_Forward) {
    const CVector3f delta = x2e0_destPos - GetTranslation();
    if (CVector3f::Dot(GetTransform().GetForward().AsNormalized(), delta.AsNormalized()) <
        -0.258819f) {
      dir = pas::kSD_Backward;
    }
  }
  x450_bodyController->CommandMgr().DeliverCmd(CBCStepCmd(dir, pas::kStep_Normal));
  x450_bodyController->CommandMgr().DeliverTargetVector(position - GetTranslation());
}
