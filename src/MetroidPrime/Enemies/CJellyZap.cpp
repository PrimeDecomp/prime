#include "MetroidPrime/Enemies/CJellyZap.hpp"

#include "MetroidPrime/ScriptObjects/CFishCloud.hpp"

#include "MetroidPrime/BodyState/CBodyController.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/ScriptObjects/CFishCloud.hpp"

CJellyZap::CJellyZap(const TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                     const CTransform4f& xf, const CModelData& mData,
                     const CDamageInfo& attackDamage, const bool b1, const float attackRadius,
                     const float f2, const float f3, const float f4, const float attackDelay,
                     const float f6, const float f7, const float f8, const float priority,
                     const float repulseRadius, const float attractRadius, const float f12,
                     const CPatternedInfo& pInfo, const CActorParameters& actParms)
: CPatterned(kC_JellyZap, uid, name, kFT_Zero, info, xf, mData, pInfo, kMT_Flyer, kCT_One,
             kBT_BiPedal, actParms, kKBV_Medium)
, x568_(0)
, x56c_attackDamage(attackDamage)
, x588_attackRadius(attackRadius)
, x58c_(f2)
, x590_(f4)
, x594_(f3)
, x598_(f8)
, x59c_priority(priority)
, x5a0_repulseRadius(repulseRadius)
, x5a4_attractRadius(attractRadius)
, x5a8_attackDelay(attackDelay)
, x5ac_(f6)
, x5b0_(f7)
, x5b4_(f12)
, x5b8_24_(false)
, x5b8_25_(false)
, x5b8_26_(b1) {
  UpdateThermalFrozenState(true);
  SetBaseDamageMag(0.f);
}

void CJellyZap::Accept(IVisitor& visitor) { visitor.Visit(*this); }

void CJellyZap::Think(const float dt, CStateManager& mgr) {
  CPatterned::Think(dt, mgr);

  if (!GetActive()) {
    return;
  }

  if (x5b8_24_) {
    BodyCtrl()->FaceDirection(mgr.GetPlayer()->GetTranslation() - GetTranslation(), dt);
  }

  float damage = x50c_baseDamageMag;

  if (x5b8_25_ && GetBodyCtrl()->GetPercentageFrozen() == 0.f) {
    damage += dt / 0.3f;
  } else {
    damage -= dt / 0.75f;
  }

  SetBaseDamageMag(CMath::Clamp(0.f, damage, 1.f));
}

void CJellyZap::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) {
  CPatterned::AcceptScriptMsg(msg, uid, mgr);

  switch (msg) {
  case kSM_Activate:
    AddAttractor(mgr);
    break;
  case kSM_Registered:
    BodyCtrl()->Activate(mgr);
    break;
  case kSM_Deleted:
  case kSM_Deactivate:
    RemoveAllAttractors(mgr);
    break;
  default:
    break;
  }
}

void CJellyZap::DoUserAnimEvent(CStateManager& mgr, const CInt32POINode& node, EUserEventType type,
                                float dt) {

  static CMaterialFilter playerFilter = CMaterialFilter::MakeInclude(CMaterialList(kMT_Player));
  bool skipCall = false;
  switch (type) {
  case kUE_DamageOn: {
    mgr.ApplyDamageToWorld(GetUniqueId(), *this, GetTranslation(), x56c_attackDamage, playerFilter);
    skipCall = true;
  } break;
  default:
    break;
  }

  if (!skipCall) {
    CPatterned::DoUserAnimEvent(mgr, node, type, dt);
  }
}

bool CJellyZap::InDetectionRange(CStateManager& mgr, float arg) {
  if (mgr.GetPlayer()->IsInFluid() != true) {
    return false;
  }
  return CPatterned::InDetectionRange(mgr, arg);
}

bool CJellyZap::InAttackPosition(CStateManager& mgr, float arg) {
  if (mgr.GetPlayer()->IsInFluid() != true) {
    return false;
  }

  return (mgr.GetPlayer()->GetTranslation() - GetTranslation()).MagSquared() <
         x588_attackRadius * x588_attackRadius;
}

bool CJellyZap::ShouldSpecialAttack(CStateManager& mgr, float arg) { return ClosestToPlayer(mgr); }

bool CJellyZap::ShouldAttack(CStateManager& mgr, float arg) {
  return GetStateMachineTime() > x5a8_attackDelay;
}

void CJellyZap::InActive(CStateManager& mgr, EStateMsg msg, float arg) {
  switch (msg) {
  case kStateMsg_Activate:
    SetWasHit(false);
    BodyCtrl()->SetLocomotionType(pas::kLT_Relaxed);
    AddAttractor(mgr);
    x568_ = 0;
    break;
  default:
    break;
  }
}

void CJellyZap::Active(CStateManager& mgr, EStateMsg msg, float arg) {
  switch (msg) {
  case kStateMsg_Activate: {
    x5b8_24_ = true;
    BodyCtrl()->SetLocomotionType(pas::kLT_Lurk);
    x568_ = 0;
    StateMachineState().SetDelay(GetPlayerLeashTime());
  } break;
  case kStateMsg_Update: {
    BodyCtrl()->CommandMgr().DeliverTargetVector(
        (mgr.GetPlayer()->GetTranslation() + CVector3f(0.f, 0.f, 1.f)) - GetTranslation());

    if (x5b8_26_) {
      const CVector3f tmpMove = arg * (x598_ * CVector3f(0.f, 1.f, 0.f));
      const CVector3f moveToImpulse =
          GetMoveToORImpulseWR(GetTransform().TransposeRotate(tmpMove), arg);

      ApplyImpulseOR(moveToImpulse, CAxisAngle::Identity());
    }
  } break;
  case kStateMsg_Deactivate:
    x5b8_24_ = false;
    break;
  }
}

void CJellyZap::Suck(CStateManager& mgr, EStateMsg msg, float arg) {}
bool CJellyZap::HitShell(const CVector3f&) const { return x568_ != 1; }

EWeaponCollisionResponseTypes CJellyZap::GetCollisionResponseType(const CVector3f& pos,
                                                                  const CVector3f&,
                                                                  const CWeaponMode&, int) const {
  EWeaponCollisionResponseTypes ret = kWCR_Unknown39;
  if (HitShell(pos)) {
    ret = kWCR_Unknown89;
  }

  return ret;
}

const CDamageVulnerability* CJellyZap::GetDamageVulnerability(const CVector3f& pos,
                                                              const CVector3f& dir,
                                                              const CDamageInfo& info) const {
  if (HitShell(pos)) {
    return &CDamageVulnerability::ReflectVulnerabilty();
  }

  return CAi::GetDamageVulnerability();
}

void CJellyZap::Attack(CStateManager& mgr, EStateMsg msg, float arg) {}

void CJellyZap::Flinch(CStateManager& mgr, EStateMsg msg, float arg) {
  switch (msg) {
  case kStateMsg_Activate:
    SetWasHit(false);
    SetAnimationState(kAS_Ready);
    StateMachineState().SetDelay(x5b0_);
    break;
  case kStateMsg_Update:
    TryCommand(mgr, pas::kAS_KnockBack, &CPatterned::TryKnockBack, 0);
    break;
  case kStateMsg_Deactivate:
    SetAnimationState(kAS_NotReady);
    break;
  }
}

void CJellyZap::AddAttractor(CStateManager& mgr) {
  AddSelfToFishCloud(mgr, x5a0_repulseRadius, x59c_priority, true);
  AddSelfToFishCloud(mgr, x5a4_attractRadius, x59c_priority, false);
}

void CJellyZap::RemoveAllAttractors(CStateManager& mgr) { RemoveSelfFromFishCloud(mgr); }

void CJellyZap::AddRepulsor(CStateManager& mgr) {
  AddSelfToFishCloud(mgr, x5a0_repulseRadius, x59c_priority, true);
}

void CJellyZap::AddSelfToFishCloud(CStateManager& mgr, const float radius, const float priority,
                                   const bool repulsor) {
  for (AUTO(conn, GetConnectionList().begin()); conn != GetConnectionList().end(); ++conn) {
    if (conn->x0_state != kSS_Modify || conn->x4_msg != kSM_Follow) {
      continue;
    }
    TUniqueId id = mgr.GetIdForScript(conn->x8_objId);
    if (id == kInvalidUniqueId) {
      continue;
    }

    CFishCloud* fishCloud = TCastToPtr< CFishCloud >(mgr.ObjectById(id));
    if (!fishCloud) {
      continue;
    }

    if (repulsor) {
      fishCloud->AddRepulsor(GetUniqueId(), false, radius, priority);
    } else {
      fishCloud->AddAttractor(GetUniqueId(), false, radius, priority);
    }
  }
}

void CJellyZap::RemoveSelfFromFishCloud(CStateManager& mgr) {
  for (AUTO(conn, GetConnectionList().begin()); conn != GetConnectionList().end(); ++conn) {
    if (conn->x0_state != kSS_Modify || conn->x4_msg != kSM_Follow) {
      continue;
    }
    TUniqueId id = mgr.GetIdForScript(conn->x8_objId);
    if (id == kInvalidUniqueId) {
      continue;
    }

    CFishCloud* fishCloud = TCastToPtr< CFishCloud >(mgr.ObjectById(id));
    if (!fishCloud) {
      continue;
    }
    fishCloud->RemoveAttractor(GetUniqueId());
    fishCloud->RemoveRepulsor(GetUniqueId());
  }
}

bool CJellyZap::ClosestToPlayer(CStateManager& mgr) const { return false; }

void CJellyZap::KnockBack(const CVector3f& pos, CStateManager& mgr, const CDamageInfo& info,
                          const EKnockBackType type, const bool inDeferred, const float magnitude) {
  if (info.GetWeaponMode().GetType() == kWT_Ice) {
    const CVector3f newPos(0.f, 0.f, 0.f);
    const CUnitVector3f dir = CUnitVector3f(GetTransform().TransposeRotate(pos));
    Freeze(mgr, newPos, dir, GetFreezeDuration());
  }
}
