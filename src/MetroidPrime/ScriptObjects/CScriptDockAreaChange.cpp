#include "MetroidPrime/ScriptObjects/CScriptDockAreaChange.hpp"

#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/ScriptObjects/CScriptDock.hpp"

CScriptDockAreaChange::CScriptDockAreaChange(TUniqueId uid, const rstl::string& name,
                                             const CEntityInfo& info, int w1, bool active)
: CEntity(uid, info, active, name), x34_dockReference(w1) {}

void CScriptDockAreaChange::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId objId,
                                            CStateManager& stateMgr) {

  switch (msg) {
  case kSM_Action:
    if (GetActive()) {
      rstl::vector< SConnection >::const_iterator it = GetConnectionList().begin();
      for (; it != GetConnectionList().end(); ++it) {
        if (it->x0_state != kSS_Play || it->x4_msg == kSM_UNKM0) {
          continue;
        }

        const CStateManager::TIdListResult& search = stateMgr.GetIdListForScript(it->x8_objId);
        CStateManager::TIdList::const_iterator searchItem = search.first;

        for (; searchItem != search.second; ++searchItem) {
          if (CScriptDock* dock =
                  TCastToPtr< CScriptDock >(stateMgr.ObjectById(searchItem->second))) {
            dock->SetDockReference(stateMgr, x34_dockReference);
          }
        }
      }

      SendScriptMsgs(kSS_Play, stateMgr, kSM_None);
    }
  }

  CEntity::AcceptScriptMsg(msg, objId, stateMgr);
}

void CScriptDockAreaChange::Accept(IVisitor& visitor) { visitor.Visit(*this); }

CScriptDockAreaChange::~CScriptDockAreaChange() {}
