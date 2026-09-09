#include "MetroidPrime/Enemies/CPhazonHealingNodule.hpp"

#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/Enemies/CPatternedInfo.hpp"

#include "Kyoto/CSimplePool.hpp"
#include "Kyoto/Particles/CParticleElectric.hpp"

static EMaterialTypes skCharacterMaterial = kMT_Character;

CPhazonHealingNodule::CPhazonHealingNodule(TUniqueId uid, const rstl::string& name,
                                           const CEntityInfo& info, const CTransform4f& xf,
                                           const CModelData& mData,
                                           const CActorParameters& actParams,
                                           const CPatternedInfo& pInfo, CAssetId particleDescId,
                                           const rstl::string& actorLctr)
: CPatterned(kC_PhazonHealingNodule, uid, name, kFT_Zero, info, xf, mData, pInfo, kMT_Flyer,
             kCT_One, kBT_Restricted, actParams, kCS_Medium)
, x568_active(0)
, x56c_emitting(false)
, x56e_connId(kInvalidUniqueId)
, x570_electricDesc(gpSimplePool->GetObj(SObjectTag('ELSC', particleDescId)))
, x57c_particleElectric(nullptr)
, x580_initialHealthInfo(pInfo.GetHealthInfo())
, x58c_actorLctr(actorLctr) {
  CMaterialList exclude = GetMaterialFilter().GetExcludeList();
  exclude.Add(skCharacterMaterial);
  SetMaterialFilter(
      CMaterialFilter::MakeIncludeExclude(GetMaterialFilter().GetIncludeList(), exclude));
}

void CPhazonHealingNodule::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid,
                                           CStateManager& mgr) {
  switch (msg) {
  case kSM_Registered:
    if (!BodyCtrl()->GetIsActive()) {
      BodyCtrl()->Activate(mgr);
    }
    *GetDamageVulnerability() = CDamageVulnerability::ImmuneVulnerability();
    KnockBackCtrl().SetAutoResetImpulse(false);
    BodyCtrl()->SetLocomotionType(pas::kLT_Relaxed);
    RemoveMaterial(kMT_Target, mgr);
    RemoveMaterial(kMT_Orbit, mgr);
    AddMaterial(kMT_Immovable, mgr);
    break;
  case kSM_InitializedInArea: {
    CPatterned::AcceptScriptMsg(msg, uid, mgr);
    const uint count = GetConnectionList().size();
    for (uint i = 0; i < count; ++i) {
      const SConnection& conn = GetConnectionList()[i];
      const TUniqueId connId = mgr.GetIdForScript(conn.x8_objId);
      if (conn.x0_state == kSS_Patrol && connId != kInvalidUniqueId &&
          conn.x4_msg == kSM_Activate) {
        x56e_connId = connId;
      }
    }
    break;
  }
  case kSM_Increment:
    x568_active = 1;
    break;
  case kSM_Decrement:
    x568_active = 0;
    x57c_particleElectric.reset();
    x56c_emitting = false;
    break;
  case kSM_Reset:
    *HealthInfo(mgr) = x580_initialHealthInfo;
    break;
  default:
    CPatterned::AcceptScriptMsg(msg, uid, mgr);
    break;
  }
}

void CPhazonHealingNodule::DoUserAnimEvent(CStateManager& mgr, const CInt32POINode& node,
                                           EUserEventType type, float dt) {
  switch (type) {
  case kUE_BeginAction:
    x56c_emitting = true;
    x57c_particleElectric =
        rstl::rc_ptr< CParticleElectric >(rs_new CParticleElectric(x570_electricDesc));
    x57c_particleElectric->SetParticleEmission(true);
    break;
  case kUE_EndAction:
    x56c_emitting = false;
    x57c_particleElectric.reset();
    break;
  default:
    CPatterned::DoUserAnimEvent(mgr, node, type, dt);
    break;
  }
}

void CPhazonHealingNodule::Think(float dt, CStateManager& mgr) {
  if (!GetActive()) {
    return;
  }

  CPatterned::Think(dt, mgr);
  if (HealthInfo(mgr)->GetHP() <= 0.f) {
    x57c_particleElectric.reset();
    x56c_emitting = false;
    StateMachineState().SetState(mgr, *this, GetStateMachine(), rstl::string_l("Patrol"));
    x568_active = 0;
  }
  if (x57c_particleElectric) {
    UpdateParticleElectric(mgr);
    x57c_particleElectric->Update(dt);
  }
}

void CPhazonHealingNodule::Patrol(CStateManager& mgr, EStateMsg msg, float dt) {
  switch (msg) {
  case kStateMsg_Activate:
    BodyCtrl()->SetLocomotionType(pas::kLT_Relaxed);
    RemoveMaterial(kMT_Target, mgr);
    RemoveMaterial(kMT_Orbit, mgr);
    break;
  case kStateMsg_Update:
  case kStateMsg_Deactivate:
    break;
  }
}

void CPhazonHealingNodule::Lurk(CStateManager& mgr, EStateMsg msg, float dt) {
  switch (msg) {
  case kStateMsg_Activate:
    BodyCtrl()->SetLocomotionType(pas::kLT_Lurk);
    break;
  case kStateMsg_Update:
  case kStateMsg_Deactivate:
    break;
  }
}

bool CPhazonHealingNodule::InDetectionRange(CStateManager&, float) { return x568_active == 1; }

bool CPhazonHealingNodule::InRange(CStateManager&, float) { return x568_active == 0; }

void CPhazonHealingNodule::Render(const CStateManager& mgr) const {
  if (x57c_particleElectric) {
    x57c_particleElectric->Render();
  }
  CPatterned::Render(mgr);
}

void CPhazonHealingNodule::Growth(CStateManager& mgr, EStateMsg msg, float dt) {
  switch (msg) {
  case kStateMsg_Activate:
    x588_state = 0;
    BodyCtrl()->SetLocomotionType(pas::kLT_Lurk);
    break;
  case kStateMsg_Update:
    switch (x588_state) {
    case 0:
      if (BodyCtrl()->GetCurrentStateId() == pas::kAS_Step) {
        x588_state = 2;
      } else {
        BodyCtrl()->CommandMgr().DeliverCmd(CBCStepCmd(pas::kSD_Forward, pas::kStep_Normal));
      }
      break;
    case 2:
      if (BodyCtrl()->GetCurrentStateId() != pas::kAS_Step) {
        x588_state = 3;
      }
      break;
    }
    break;
  case kStateMsg_Deactivate:
  default:
    break;
  }
}

void CPhazonHealingNodule::Faint(CStateManager& mgr, EStateMsg msg, float dt) {
  switch (msg) {
  case kStateMsg_Activate:
    x588_state = 0;
    break;
  case kStateMsg_Update:
    switch (x588_state) {
    case 0:
      if (BodyCtrl()->GetCurrentStateId() == pas::kAS_Step) {
        x588_state = 2;
        BodyCtrl()->SetLocomotionType(pas::kLT_Relaxed);
      } else {
        BodyCtrl()->CommandMgr().DeliverCmd(CBCStepCmd(pas::kSD_Backward, pas::kStep_Normal));
      }
      break;
    case 2:
      if (BodyCtrl()->GetCurrentStateId() != pas::kAS_Step) {
        x588_state = 3;
      }
      break;
    }
    break;
  case kStateMsg_Deactivate:
  default:
    break;
  }
}

bool CPhazonHealingNodule::AnimOver(CStateManager&, float) { return x588_state == 3; }

void CPhazonHealingNodule::UpdateParticleElectric(CStateManager& mgr) {
  if (x57c_particleElectric) {
    if (const CPatterned* actor =
            static_cast< const CPatterned* >(mgr.GetObjectById(x56e_connId))) {
      const CVector3f start = GetLctrTransform(rstl::string_l("Electricity_LCTR")).GetTranslation();
      const CVector3f end = actor->GetLctrTransform(x58c_actorLctr).GetTranslation();
      x57c_particleElectric->SetOverrideIPos(start);
      x57c_particleElectric->SetOverrideFPos(end);
    }
  }
}

void CPhazonHealingNodule::Death(CStateManager& mgr, const CVector3f&, EScriptObjectState) {
  SendScriptMsgs(kSS_Dead, mgr, kSM_None);
  SendScriptMsgs(kSS_DeathRattle, mgr, kSM_None);
}

void CPhazonHealingNodule::MassiveDeath(CStateManager& mgr) {
  Death(mgr, CVector3f::Zero(), kSS_Dead);
}

void CPhazonHealingNodule::MassiveFrozenDeath(CStateManager& mgr) {
  Death(mgr, CVector3f::Zero(), kSS_Dead);
}

void CPhazonHealingNodule::PhazeOut(CStateManager& mgr) { Death(mgr, CVector3f::Zero(), kSS_Dead); }

void CPhazonHealingNodule::KnockBack(const CVector3f&, CStateManager&, const CDamageInfo&, float,
                                     bool, const bool) {}

CPhazonHealingNodule::~CPhazonHealingNodule() {}
