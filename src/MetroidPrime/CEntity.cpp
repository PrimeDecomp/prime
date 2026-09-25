#include "MetroidPrime/CEntity.hpp"

rstl::vector< SConnection > CEntity::NullConnectionList;

CEntityInfo::CEntityInfo(TAreaId aid, const rstl::vector< SConnection >& conns, TEditorId eid)
: mAreaId(aid), mConns(conns), mEditorId(eid) {}

CEntity::CEntity(TUniqueId id, const CEntityInfo& info, bool active, const rstl::string& name)
: mAreaId(info.GetAreaId())
, mUid(id)
, mEditorId(info.GetEditorId())
, mName(name)
, mConns(info.GetConnectionList())
, mActive(active)
, mInGraveyard(false)
, mScriptingBlocked(false)
, mNotInArea(mAreaId == kInvalidAreaId) {}

CEntity::~CEntity() {}

void CEntity::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) {
  switch (msg) {
  case kSM_Activate:
    if (!mActive) {
      SetActive(true);
      SendScriptMsgs(kSS_Active, mgr, kSM_None);
    }
    break;
  case kSM_Deactivate:
    if (mActive) {
      SetActive(false);
      SendScriptMsgs(kSS_Inactive, mgr, kSM_None);
    }
    break;
  case kSM_ToggleActive:
    if (!mActive) {
      AcceptScriptMsg(kSM_Activate, uid, mgr);
    } else {
      AcceptScriptMsg(kSM_Deactivate, uid, mgr);
    }
    break;
  }
}

void CEntity::SendScriptMsgs(EScriptObjectState state, CStateManager& mgr,
                             EScriptObjectMessage skipMsg) {
  rstl::vector< SConnection >::const_iterator it = mConns.begin();
  for (; it != mConns.end(); ++it) {
    if (it->mState == state && it->mMsg != skipMsg) {
      mgr.SendScriptMsg(GetUniqueId(), it->mObjId, it->mMsg, state);
    }
  }
}

void CEntity::PreThink(float dt, CStateManager& mgr) {}

void CEntity::Think(float dt, CStateManager& mgr) {}

void CEntity::SetActive(const bool active) { mActive = active; }

const TAreaId CEntity::GetAreaId() const { return mNotInArea ? kInvalidAreaId : mAreaId; }
