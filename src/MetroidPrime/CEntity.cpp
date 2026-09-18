#include "MetroidPrime/CEntity.hpp"

#include "MetroidPrime/CValidEntityPredicate.hpp"

rstl::vector< SConnection > CEntity::NullConnectionList;

CEntityInfo::CEntityInfo(const TAreaId aid, const rstl::vector< SConnection >& conns, TEditorId eid)
: x0_areaId(aid), x4_conns(conns), x14_editorId(eid) {}

u64 CEntityInfo::GetGloballyUniqueIdForScriptObject(uint worldId, TEditorId editorId) {
  return (static_cast< u64 >(worldId) << 32) | editorId.value;
}

u64 CEntityInfo::GetGloballyUniqueIdForScriptObject(uint worldId) const {
  return (static_cast< u64 >(worldId) << 32) | x14_editorId.value;
}

CEntity::CEntity(const TUniqueId id, const CEntityInfo& info, bool active, const rstl::string& name)
: x4_areaId(info.GetAreaId())
, x8_uid(id)
, xc_editorId(info.GetEditorId())
, x10_name(name)
, x20_conns(info.GetConnectionList())
, x30_24_active(active)
, x30_25_inGraveyard(false)
, x30_26_scriptingBlocked(false)
, x30_27_notInArea(x4_areaId == kInvalidAreaId) {}

CEntity::~CEntity() {}

void CEntity::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) {
  switch (msg) {
  case kSM_Activate:
    if (!x30_24_active) {
      SetActive(true);
      SendScriptMsgs(kSS_Active, mgr, kSM_None);
    }
    break;
  case kSM_Deactivate:
    if (x30_24_active) {
      SetActive(false);
      SendScriptMsgs(kSS_Inactive, mgr, kSM_None);
    }
    break;
  case kSM_ToggleActive:
    if (!x30_24_active) {
      AcceptScriptMsg(kSM_Activate, uid, mgr);
    } else {
      AcceptScriptMsg(kSM_Deactivate, uid, mgr);
    }
    break;
  }
}

void CEntity::SendScriptMsgs(EScriptObjectState state, CStateManager& mgr,
                             EScriptObjectMessage skipMsg) {
  rstl::vector< SConnection >::const_iterator it = x20_conns.begin();
  for (; it != x20_conns.end(); ++it) {
    if (it->x0_state == state && it->x4_msg != skipMsg) {
      mgr.SendScriptMsg(GetUniqueId(), it->x8_objId, it->x4_msg, state);
    }
  }
}

void CEntity::PreThink(float dt, CStateManager& mgr) {}

void CEntity::Think(float dt, CStateManager& mgr) {}

void CEntity::SetActive(const bool active) { x30_24_active = active; }

const TAreaId CEntity::GetAreaId() const { return x30_27_notInArea ? kInvalidAreaId : x4_areaId; }

TUniqueId CEntity::CheckConnectedObject_if(const CStateManager& mgr, EScriptObjectState state,
                                          EScriptObjectMessage msg,
                                          const CValidEntityPredicate& predicate) const {
  for (AUTO(conn, x20_conns.begin()); conn != x20_conns.end(); conn++) {
    if ((state == kSS_Any || state == conn->x0_state) &&
        (msg == kSM_None || msg == conn->x4_msg)) {
      CStateManager::TIdListResult ids = mgr.GetIdListForScript(conn->x8_objId);
      for (AUTO(it, ids.first); it != ids.second; ++it) {
        if (predicate(mgr, it->second)) {
          return it->second;
        }
      }
    }
  }
  return kInvalidUniqueId;
}

#if VERSION >= VERSION_R3IJ_00
// This unit provides the shared Trilogy connection-vector instantiation.
template void rstl::vector< SConnection >::reserve(int);
#endif
