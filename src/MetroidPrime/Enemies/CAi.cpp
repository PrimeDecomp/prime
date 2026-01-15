#include "MetroidPrime/Enemies/CAi.hpp"
#include "Collision/CMaterialList.hpp"
#include "MetroidPrime/CActorLights.hpp"
#include "MetroidPrime/CDamageVulnerability.hpp"
#include "MetroidPrime/CEntityInfo.hpp"
#include "MetroidPrime/CPhysicsActor.hpp"
#include "MetroidPrime/CSimpleShadow.hpp"
#include "MetroidPrime/Enemies/CAiFuncMap.hpp"
#include "MetroidPrime/Enemies/CStateMachine.hpp"

#include <Kyoto/CSimplePool.hpp>
#include <Kyoto/SObjectTag.hpp>
#include <rstl/algorithm.hpp>
#include <rstl/vector.hpp>
#include <string.h>

namespace {
struct cstr_less {
  bool operator()(const char* a, const char* b) const { return (strcmp(a, b) < 0); }
};

} // namespace

CAiFuncMap* CAi::mFuncMap = nullptr;
const char* gkStateNames[] = {
    "Patrol",        "FollowPattern", "Dead",
    "PathFind",      "Start",         "SelectTarget",
    "TargetPatrol",  "TargetPlayer",  "TargetCover",
    "Halt",          "Walk",          "Run",
    "Generate",      "Deactivate",    "Attack",
    "LoopedAttack",  "JumpBack",      "DoubleSnap",
    "Shuffle",       "TurnAround",    "Skid",
    "Active",        "InActive",      "CoverAttack",
    "Crouch",        "FadeIn",        "FadeOut",
    "GetUp",         "Taunt",         "Suck",
    "Flee",          "Lurk",          "ProjectileAttack",
    "Flinch",        "Hurled",        "TelegraphAttack",
    "Jump",          "Explode",       "Dodge",
    "Retreat",       "Cover",         "Approach",
    "WallHang",      "WallDetach",    "Enraged",
    "SpecialAttack", "Growth",        "Faint",
    "Land",          "Bounce",        "PathFindEx",
    "Dizzy",         "CallForBackup", "BulbAttack",
    "PodAttack",
};

const CAiStateFunc gkStateFuncs[] = {
    &CAi::Patrol,        &CAi::FollowPattern, &CAi::Dead,
    &CAi::PathFind,      &CAi::Start,         &CAi::SelectTarget,
    &CAi::TargetPatrol,  &CAi::TargetPlayer,  &CAi::TargetCover,
    &CAi::Halt,          &CAi::Walk,          &CAi::Run,
    &CAi::Generate,      &CAi::Deactivate,    &CAi::Attack,
    &CAi::LoopedAttack,  &CAi::JumpBack,      &CAi::DoubleSnap,
    &CAi::Shuffle,       &CAi::TurnAround,    &CAi::Skid,
    &CAi::Active,        &CAi::InActive,      &CAi::CoverAttack,
    &CAi::Crouch,        &CAi::FadeIn,        &CAi::FadeOut,
    &CAi::GetUp,         &CAi::Taunt,         &CAi::Suck,
    &CAi::Flee,          &CAi::Lurk,          &CAi::ProjectileAttack,
    &CAi::Flinch,        &CAi::Hurled,        &CAi::TelegraphAttack,
    &CAi::Jump,          &CAi::Explode,       &CAi::Dodge,
    &CAi::Retreat,       &CAi::Cover,         &CAi::Approach,
    &CAi::WallHang,      &CAi::WallDetach,    &CAi::Enraged,
    &CAi::SpecialAttack, &CAi::Growth,        &CAi::Faint,
    &CAi::Land,          &CAi::Bounce,        &CAi::PathFindEx,
    &CAi::Dizzy,         &CAi::CallForBackup, &CAi::BulbAttack,
    &CAi::PodAttack,
};
const int kStateCount = sizeof(gkStateNames) / sizeof(gkStateNames[0]);

const char* gkTriggerNames[] = {
    "InAttackPosition",
    "Leash",
    "OffLine",
    "Attacked",
    "PathShagged",
    "PathOver",
    "PathFound",
    "TooClose",
    "InRange",
    "InMaxRange",
    "InDetectionRange",
    "SpotPlayer",
    "PlayerSpot",
    "PatternOver",
    "PatternShagged",
    "HasAttackPattern",
    "HasPatrolPath",
    "HasRetreatPattern",
    "Delay",
    "RandomDelay",
    "FixedDelay",
    "Default",
    "AnimOver",
    "ShouldAttack",
    "ShouldDoubleSnap",
    "InPosition",
    "ShouldTurn",
    "HitSomething",
    "ShouldJumpBack",
    "Stuck",
    "NoPathNodes",
    "Landed",
    "HearShot",
    "HearPlayer",
    "CoverCheck",
    "CoverFind",
    "CoverBlown",
    "CoverNearlyBlown",
    "CoveringFire",
    "GotUp",
    "LineOfSight",
    "AggressionCheck",
    "AttackOver",
    "ShouldTaunt",
    "Inside",
    "ShouldFire",
    "ShouldFlinch",
    "PatrolPathOver",
    "ShouldDodge",
    "ShouldRetreat",
    "ShouldCrouch",
    "ShouldMove",
    "ShotAt",
    "HasTargetingPoint",
    "ShouldWallHang",
    "SetAIStage",
    "AIStage",
    "StartAttack",
    "BreakAttack",
    "ShouldStrafe",
    "ShouldSpecialAttack",
    "LostInterest",
    "CodeTrigger",
    "BounceFind",
    "Random",
    "FixedRandom",
    "IsDizzy",
    "ShouldCallForBackup",
};

const CAiTriggerFunc gkTriggerFuncs[] = {
    &CAi::InAttackPosition,
    &CAi::Leash,
    &CAi::OffLine,
    &CAi::Attacked,
    &CAi::PathShagged,
    &CAi::PathOver,
    &CAi::PathFound,
    &CAi::TooClose,
    &CAi::InRange,
    &CAi::InMaxRange,
    &CAi::InDetectionRange,
    &CAi::SpotPlayer,
    &CAi::PlayerSpot,
    &CAi::PatternOver,
    &CAi::PatternShagged,
    &CAi::HasAttackPattern,
    &CAi::HasPatrolPath,
    &CAi::HasRetreatPattern,
    &CAi::Delay,
    &CAi::RandomDelay,
    &CAi::FixedDelay,
    &CAi::Default,
    &CAi::AnimOver,
    &CAi::ShouldAttack,
    &CAi::ShouldDoubleSnap,
    &CAi::InPosition,
    &CAi::ShouldTurn,
    &CAi::HitSomething,
    &CAi::ShouldJumpBack,
    &CAi::Stuck,
    &CAi::NoPathNodes,
    &CAi::Landed,
    &CAi::HearShot,
    &CAi::HearPlayer,
    &CAi::CoverCheck,
    &CAi::CoverFind,
    &CAi::CoverBlown,
    &CAi::CoverNearlyBlown,
    &CAi::CoveringFire,
    &CAi::GotUp,
    &CAi::LineOfSight,
    &CAi::AggressionCheck,
    &CAi::AttackOver,
    &CAi::ShouldTaunt,
    &CAi::Inside,
    &CAi::ShouldFire,
    &CAi::ShouldFlinch,
    &CAi::PatrolPathOver,
    &CAi::ShouldDodge,
    &CAi::ShouldRetreat,
    &CAi::ShouldCrouch,
    &CAi::ShouldMove,
    &CAi::ShotAt,
    &CAi::HasTargetingPoint,
    &CAi::ShouldWallHang,
    &CAi::SetAIStage,
    &CAi::AIStage,
    &CAi::StartAttack,
    &CAi::BreakAttack,
    &CAi::ShouldStrafe,
    &CAi::ShouldSpecialAttack,
    &CAi::LostInterest,
    &CAi::CodeTrigger,
    &CAi::BounceFind,
    &CAi::Random,
    &CAi::FixedRandom,
    &CAi::IsDizzy,
    &CAi::ShouldCallForBackup,
};

const int kTriggerCount = sizeof(gkTriggerNames) / sizeof(gkTriggerNames[0]);
CAiFuncMap::CAiFuncMap() {
  x0_states.reserve(kStateCount);
  for (int i = 0; i < x0_states.capacity(); ++i) {
    x0_states.push_back(rstl::pair< const char*, CAiStateFunc >(gkStateNames[i], gkStateFuncs[i]));
  }
  x10_triggers.reserve(kTriggerCount);
  for (int i = 0; i < x10_triggers.capacity(); ++i) {
    x10_triggers.push_back(
        rstl::pair< const char*, CAiTriggerFunc >(gkTriggerNames[i], gkTriggerFuncs[i]));
  }
  rstl::sort_by_key(x0_states, cstr_less());
  rstl::sort_by_key(x10_triggers, cstr_less());
  CAi::CreateFuncLookup(this);
}

CAiStateFunc CAiFuncMap::GetStateFunc(const char* state) const {
  CAiStateFunc func = nullptr;
  rstl::vector< rstl::pair< const char*, CAiStateFunc > >::const_iterator it;
  it = rstl::find_by_key(x0_states, state, cstr_less());
  if (it != x0_states.end()) {
    func = it->second;
  }
  return func;
}

CAiTriggerFunc CAiFuncMap::GetTriggerFunc(const char* trigger) const {
  CAiTriggerFunc func = rstl::find_by_key(x10_triggers, trigger, cstr_less())->second;
  return func;
}
CAi::CAi(TUniqueId uid, bool active, const rstl::string& name, const CEntityInfo& entityInfo,
         const CTransform4f& transform, const CModelData& modelData, const CAABox& bounds,
         const float mass, const CHealthInfo& healthInfo, const CDamageVulnerability& vuln,
         const CMaterialList& materialList, CAssetId stateMachine,
         const CActorParameters& actorParams, const float stepUp, const float stepDown)
: CPhysicsActor(uid, active, name, entityInfo, transform, modelData,
                materialList.Union(CMaterialList(kMT_AIBlock, kMT_CameraPassthrough)), bounds,
                SMoverData(mass), actorParams, stepUp, stepDown)
, x258_healthInfo(healthInfo)
, x260_damageVulnerability(vuln)
, x2c8_stateMachine(gpSimplePool->GetObj(SObjectTag(FourCC('AFSM'), stateMachine))) {
  x2c8_stateMachine.Lock();
  CreateShadowIfNeeded();
  if (GetShadow()) {
    SetDrawShadow(true);
    Shadow()->SetAlwaysCalculateRadius(false);
  }

  if (GetActorLights()) {
    ActorLights()->SetCastShadows(true);
  }
}

CAi::~CAi() {}

CHealthInfo* CAi::HealthInfo(CStateManager& mgr) { return &x258_healthInfo; }
const CDamageVulnerability* CAi::GetDamageVulnerability() const {
  return &x260_damageVulnerability;
}
CDamageVulnerability* CAi::GetDamageVulnerability() { return &x260_damageVulnerability; }

void CAi::TakeDamage(const CVector3f& direction, float magnitude) {}

void CAi::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId other, CStateManager& mgr) {
  switch (msg) {
  case kSM_InitializedInArea:
    SetMaterialFilter(CMaterialFilter::MakeIncludeExclude(
        GetMaterialFilter().GetIncludeList().Union(CMaterialList(kMT_AIBlock)),
        GetMaterialFilter().GetExcludeList()));
  default:
    CPhysicsActor::AcceptScriptMsg(msg, other, mgr);
  }
}

void CAi::FluidFXThink(EFluidState state, CScriptWater& water, CStateManager& mgr) {}
void CAi::CreateFuncLookup(CAiFuncMap* map) { mFuncMap = map; }

CAiStateFunc CAi::GetStateFunc(const char* state) { return mFuncMap->GetStateFunc(state); }
CAiTriggerFunc CAi::GetTriggerFunc(const char* trigger) {
  return mFuncMap->GetTriggerFunc(trigger);
}
