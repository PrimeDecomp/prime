#include "MetroidPrime/ScriptObjects/CScriptCounter.hpp"

CScriptCounter::CScriptCounter(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                               int initial, int max, bool autoReset, bool active)
: CEntity(uid, info, active, name)
, x34_initial(initial)
, x38_current(initial)
, x3c_max(max)
, x40_autoReset(autoReset) {}

CScriptCounter::~CScriptCounter() {}

void CScriptCounter::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId objId,
                                     CStateManager& stateMgr) override {
  switch (msg) {
  case kSM_SetToZero:
    if (GetActive()) {
      x38_current = 0;
      SendScriptMsgs(kSS_Zero, stateMgr, kSM_None);

      if (x40_autoReset)
        x38_current = x34_initial;
    }
    break;
  case kSM_SetToMax:
    if (GetActive()) {
      x38_current = x3c_max;
      SendScriptMsgs(kSS_MaxReached, stateMgr, kSM_None);

      if (x40_autoReset)
        x38_current = x34_initial;
    }
    break;
  case kSM_Decrement:
    if (GetActive() && x38_current != 0) {
      --x38_current;
      if (x38_current == 0) {
        SendScriptMsgs(kSS_Zero, stateMgr, kSM_None);
        if (x40_autoReset)
          x38_current = x34_initial;
      }
    }
    break;
  case kSM_Increment:
    if (GetActive() && x38_current < x3c_max) {
      ++x38_current;
      if (x38_current == x3c_max) {
        SendScriptMsgs(kSS_MaxReached, stateMgr, kSM_None);
        if (x40_autoReset)
          x38_current = x34_initial;
      }
    }
    break;
  case kSM_Reset:
    if (GetActive())
      x38_current = x34_initial;
    break;
  default:
    break;
  }

  CEntity::AcceptScriptMsg(msg, objId, stateMgr);
}

void CScriptCounter::Accept(IVisitor& visitor) override { visitor.Visit(*this); }
