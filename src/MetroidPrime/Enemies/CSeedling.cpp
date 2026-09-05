#include "MetroidPrime/Enemies/CSeedling.hpp"

#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/Math/CloseEnough.hpp"
#include "MetroidPrime/CWorld.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"

const char* const CSeedling::skSpikeLocators[12] = {
    "A_spike1_LCTR_SDK", "A_spike2_LCTR_SDK", "A_spike3_LCTR_SDK", "A_spike4_LCTR_SDK",
    "A_spike5_LCTR_SDK", "A_spike6_LCTR_SDK", "B_spike1_LCTR_SDK", "B_spike2_LCTR_SDK",
    "B_spike3_LCTR_SDK", "B_spike4_LCTR_SDK", "B_spike5_LCTR_SDK", "B_spike6_LCTR_SDK",
};

CSeedling::CSeedling(const TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                     const CTransform4f& xf, const CModelData& mData, const CPatternedInfo& pInfo,
                     const CActorParameters& actParms, const CAssetId& needleModel,
                     const CAssetId& weaponId, const CDamageInfo& projectileDamage,
                     const CDamageInfo& deathDamage, const float f1, const float f2, const float f3,
                     const float f4)
: CWallWalker(kC_Seedling, uid, name, kFT_Zero, info, xf, mData, pInfo, kMT_Flyer, kCT_Zero,
              kBT_WallWalker, actParms, kCS_Small, f3, kWT_Seedling, false, f2, f1, f4)
, x5d8_searchPath(nullptr, 1, pInfo.GetPathfindingIndex(), 1.f, 1.f)
, x6bc_spikeData(rs_new CModelData(CStaticRes(needleModel, mData.ScaleCopy())))
, x6c0_projectileInfo(weaponId, projectileDamage)
, x6e8_deathDamage(deathDamage)
, x704_modelBounds(CAABox::MakeNullBox())
, x71c_attackCoolOff(0.f)
, x720_prevObj(kInvalidUniqueId)
, x722_24_renderOnlyClusterA(true)
, x722_25_curNeedleCluster(false) {
  x6c0_projectileInfo.Token().Lock();
  SetDrawShadow(false);
  MakeThermalColdAndHot();
}

CSeedling::~CSeedling() {}

void CSeedling::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) {
  CPatterned::AcceptScriptMsg(msg, uid, mgr);

  switch (msg) {
  case kSM_Registered:
    BodyCtrl()->Activate(mgr);
    x704_modelBounds = GetModelData()->GetBounds();
    break;
  case kSM_InitializedInArea: {
    const TAreaId aid = GetCurrentAreaId();
    x5d8_searchPath.SetArea(
        mgr.GetWorld()->GetAreaAlways(aid).GetPostConstructed()->x10bc_pathArea);
  } break;
  case kSM_Activate: {
    x5d6_27_disableMove = false;
    const TUniqueId id = GetConnectedObject(mgr, kSS_Patrol, kSM_Follow);
    if (id != kInvalidUniqueId) {
      x2dc_destObj = id;
    }
  } break;
  }
}

void CSeedling::Render(const CStateManager& mgr) const {
  if (IsAlive() && !x6bc_spikeData.null()) {
    const int start = x722_24_renderOnlyClusterA ? 0 : x722_25_curNeedleCluster ? 6 : 0;
    const int max = x722_24_renderOnlyClusterA ? 12 : 6;

    for (int i = 0; i < max; i++) {
      CTransform4f lctrXf(GetLctrTransform(rstl::string_l(skSpikeLocators[i + start])));
      x6bc_spikeData->Render(mgr, lctrXf, GetActorLights(), CModelFlags::Normal());
    }
  }
  CWallWalker::Render(mgr);
}

void CSeedling::Think(float dt, CStateManager& mgr) {
  if (!GetActive()) {
    return;
  }

  ++x5d4_thinkCounter;
  x5d6_26_playerObstructed = false;

  if (mgr.GetWorld()->GetArea(GetCurrentAreaId())->GetOcclusionState() != CGameArea::kOS_Visible) {
    x5d6_26_playerObstructed = true;
  }

  if (!x5d6_26_playerObstructed) {
    const CVector3f playerPos = mgr.GetPlayer()->GetTranslation();
    const float distance = (playerPos - GetTranslation()).Magnitude();
    if (distance > x5c4_playerObstructionMinDist) {
      CRayCastResult result =
          mgr.RayStaticIntersection(playerPos, (GetTranslation() - playerPos).AsNormalized(),
                                    distance, CMaterialFilter::skPassEverything);
      if (result.IsValid()) {
        x5d6_26_playerObstructed = true;
      }
    }
  }

  if (x5d6_26_playerObstructed) {
    xf8_24_movable = false;
  } else {
    xf8_24_movable = x5d6_24_alignToFloor == false ? 1 : 0;
    CWallWalker::Think(dt, mgr);
    if (!x5d6_27_disableMove && close_enough(x450_bodyController->GetPercentageFrozen(), 0.f) &&
        x5d6_24_alignToFloor) {
      AlignToFloor(mgr, x590_colSphere.GetSphere().GetRadius(),
                   GetTranslation() + (2.f * (dt * GetVelocityWR())), dt);
    }

    if (x71c_attackCoolOff > 0.f) {
      x71c_attackCoolOff -= dt;
    }
  }
}

void CSeedling::Patrol(CStateManager& mgr, EStateMsg msg, float arg) {
  switch (msg) {
  case kStateMsg_Activate: {
    BodyCtrl()->SetLocomotionType(pas::kLT_Relaxed);
    x5d6_24_alignToFloor = true;
    x150_momentum = CVector3f::Zero();
    x5d6_25_hasAlignSurface = false;
    SetMovable(false);
    const TUniqueId id =
        (x720_prevObj != kInvalidUniqueId ? x720_prevObj
                                          : GetConnectedObject(mgr, kSS_Patrol, kSM_Follow));
    if (id != kInvalidUniqueId) {
      x2dc_destObj = id;
    }
  } break;
  case kStateMsg_Update: {
    GotoNextWaypoint(mgr);
    const CVector3f upVec = GetTransform().GetUp();
    CVector3f direction = x2e0_destPos - GetTranslation();
    direction.Normalize();
    BodyCtrl()->CommandMgr().DeliverCmd(
        CBCLocomotionCmd(ProjectVectorToPlane(direction, upVec), CVector3f::Zero(), 0.f));
    const CVector3f direction2 =
        1.f * ProjectVectorToPlane(x45c_steeringBehaviors.Seek(*this, x2e0_destPos), upVec);
    BodyCtrl()->CommandMgr().DeliverCmd(
        CBCLocomotionCmd(ProjectVectorToPlane(direction2, upVec), CVector3f::Zero(), 1.f));
    BodyCtrl()->CommandMgr().DeliverCmd(
        CBCLocomotionCmd(1.f * GetTransform().GetForward(), CVector3f::Zero(), 0.f));
  } break;
  case kStateMsg_Deactivate:
    x720_prevObj = x2dc_destObj;
    break;
  }
}

void CSeedling::Active(CStateManager& mgr, EStateMsg msg, float arg) {
  switch (msg) {
  case kStateMsg_Activate:
    BodyCtrl()->SetLocomotionType(pas::kLT_Lurk);
    break;
  case kStateMsg_Update:
    break;
  case kStateMsg_Deactivate:
    break;
  }

  CPatterned::Patrol(mgr, msg, arg);
}

void CSeedling::Enraged(CStateManager& mgr, EStateMsg msg, float arg) {
  switch (msg) {
  case kStateMsg_Activate:
    BodyCtrl()->SetLocomotionType(pas::kLT_Internal8);
    break;
  case kStateMsg_Update:
    break;
  case kStateMsg_Deactivate:
    break;
  }
}

void CSeedling::ProjectileAttack(CStateManager& mgr, EStateMsg msg, float arg) {
  switch (msg) {
  case kStateMsg_Activate:
    x32c_animState = kAS_Ready;
    break;
  case kStateMsg_Update:
    TryCommand(mgr, pas::kAS_ProjectileAttack, &CPatterned::TryProjectileAttack, 0);
    break;
  case kStateMsg_Deactivate:
    x32c_animState = kAS_NotReady;
    x71c_attackCoolOff = x308_attackTimeVariation * mgr.Random()->Float() + x304_averageAttackTime;
    break;
  }
}

void CSeedling::Generate(CStateManager& mgr, EStateMsg msg, float arg) {
  switch (msg) {
  case kStateMsg_Activate:
    x32c_animState = kAS_Ready;
    break;
  case kStateMsg_Update:
    TryCommand(mgr, pas::kAS_Generate, &CPatterned::TryGenerate, 0);
    break;
  case kStateMsg_Deactivate:
    x32c_animState = kAS_NotReady;
    break;
  }
}

CProjectileInfo* CSeedling::ProjectileInfo() { return &x6c0_projectileInfo; }

void CSeedling::DoUserAnimEvent(CStateManager& mgr, const CInt32POINode& node, EUserEventType type,
                                float dt) {
  bool skip = false;
  switch (type) {
  case kUE_BeginAction:
    skip = true;
    x722_24_renderOnlyClusterA = true;
    break;
  case kUE_Projectile:
    FireSpikes(mgr);
    skip = true;
    break;
  default:
    break;
  }

  if (!skip) {
    CPatterned::DoUserAnimEvent(mgr, node, type, dt);
  }
}

void CSeedling::FireSpikes(CStateManager& mgr) {
  int start = x722_25_curNeedleCluster ? 0 : 6;
  for (int i = 0; i < 6; i++) {
    const CTransform4f locatorXf(GetLctrTransform(rstl::string_l(skSpikeLocators[i + start])));
    LaunchProjectile(locatorXf, mgr, 6, CWeapon::kPA_None, true, rstl::optional_object_null(),
                     CSfxManager::kInternalInvalidSfxId, false, GetModelScale());
  }

  x722_25_curNeedleCluster = !x722_25_curNeedleCluster;
  x722_24_renderOnlyClusterA = false;
}

bool CSeedling::ShouldAttack(CStateManager& mgr, float arg) {
  return x71c_attackCoolOff <= 0.f && mgr.CanCreateProjectile(GetUniqueId(), kWT_AI, 6);
}

rstl::optional_object< CAABox > CSeedling::GetTouchBounds() const {
  return x704_modelBounds.GetTransformedAABox(GetTransform());
}

void CSeedling::Touch(CActor& actor, CStateManager& mgr) {
  if (IsAlive() && TCastToPtr< CPlayer >(actor)) {
    MassiveDeath(mgr);
  }

  CPatterned::Touch(actor, mgr);
}

void CSeedling::MassiveDeath(CStateManager& mgr) {
  if (IsAlive()) {
    mgr.ApplyDamageToWorld(
        GetUniqueId(), *this, GetTranslation(), x6e8_deathDamage,
        CMaterialFilter::MakeIncludeExclude(CMaterialList(kMT_Solid), CMaterialList()));
    FireSpikes(mgr);
  }
  CPatterned::MassiveDeath(mgr);
}