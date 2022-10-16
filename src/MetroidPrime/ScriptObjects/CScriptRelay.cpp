#include "MetroidPrime/ScriptObjects/CScriptRelay.hpp"

CScriptRelay::CScriptRelay(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                           bool active)
: CEntity(uid, info, active, name), x34_nextRelay(kInvalidUniqueId), x38_sendCount(0) {}

void CScriptRelay::UpdateObjectRef(CStateManager& stateMgr) {
  TUniqueId* tmp = stateMgr.GetLastRelayIdPtr();
  while (tmp != nullptr && *tmp != kInvalidUniqueId) {
    if (*tmp == GetUniqueId()) {
      *tmp = x34_nextRelay;
      return;
    }
    CScriptRelay* obj = static_cast<CScriptRelay*>(stateMgr.ObjectById(*tmp));
    if (obj == nullptr) {
      return;
    }
    tmp = &obj->x34_nextRelay;
  }
}

void CScriptRelay::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId objId,
                                   CStateManager& stateMgr) override {
  CEntity::AcceptScriptMsg(msg, objId, stateMgr);

  switch (msg) {
  case kSM_SetToZero:
    if (!x30_24_active) {
      return;
    }

    x38_sendCount++;
    TUniqueId tmp = stateMgr.GetLastRelayId();
    while (tmp != GetUniqueId() && tmp != kInvalidUniqueId) {
      CEntity* obj = stateMgr.ObjectById(tmp);
      if (!obj) {
        tmp = kInvalidUniqueId;
        break;
      }

      tmp = static_cast< const CScriptRelay* >(obj)->x34_nextRelay;
    }

    if (tmp == kInvalidUniqueId) {
      x34_nextRelay = stateMgr.GetLastRelayId();
      stateMgr.SetLastRelayId(GetUniqueId());
    }
    break;

  case kSM_Deleted:
    UpdateObjectRef(stateMgr);
    break;
  }
}

void CScriptRelay::Think(float, CStateManager& stateMgr) override {
  switch (x38_sendCount) {
  default:
    while (x38_sendCount != 0) {
      x38_sendCount--;
      SendScriptMsgs(kSS_Zero, stateMgr, kSM_None);
    }
    UpdateObjectRef(stateMgr);
  case 0:
    return;
  }
}

void CScriptRelay::Accept(IVisitor& visitor) override { visitor.Visit(*this); }

CScriptRelay::~CScriptRelay() {}
