#include "MetroidPrime/CScriptMailbox.hpp"

#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/CWorld.hpp"
#include "MetroidPrime/Player/CWorldSaveGameInfo.hpp"

#include "Kyoto/Streams/CInputStream.hpp"
#include "Kyoto/Streams/COutputStream.hpp"

CScriptMailbox::CScriptMailbox() { CMemory::OffsetFakeStatics(sizeof(*this)); }

CScriptMailbox::CScriptMailbox(CInputStream& in, const CWorldSaveGameInfo& world) {
  rstl::vector< bool > relayStates(world.GetRelays().size(), false);
  for (int i = 0; i < relayStates.size(); ++i) {
    relayStates[i] = in.ReadBits(1);
  }

  for (int i = 0; i < relayStates.size(); ++i) {
    if (relayStates[i]) {
      TEditorId it = world.GetRelays()[i];
      x0_relays.push_back(it);
    }
  }

  CMemory::OffsetFakeStatics(sizeof(*this));
}

CScriptMailbox::~CScriptMailbox() { CMemory::OffsetFakeStatics(-sizeof(*this)); }

void CScriptMailbox::PutTo(COutputStream& out, CWorldSaveGameInfo& world) const {
  rstl::vector< bool > relayStates(world.GetRelays().size(), false);

  for (rstl::reserved_vector< TEditorId, 512 >::const_iterator it = x0_relays.begin();
       it != x0_relays.end(); ++it) {
    TEditorId id = *it;
    relayStates[world.GetRelayIndex(id)] = true;
  }

  for (int i = 0; i < relayStates.size(); ++i) {
    out.WriteBits(relayStates[i] ? 1 : 0, 1);
  }
}

void CScriptMailbox::SendMsgs(const TAreaId& areaId, CStateManager& mgr) {
  CWorld* world = mgr.World();

  if (world->GetRelays().size() <= 0) {
    return;
  }

  bool hasActiveRelays = false;
  for (rstl::vector< CRelay >::const_iterator it = world->GetRelays().begin();
       it != world->GetRelays().end(); ++it) {

    TEditorId targetId = it->GetTargetId();
    if (targetId.AreaNum() != areaId.Value())
      continue;

    TEditorId relayId = it->GetRelayId();
    if (HasMsg(relayId)) {
      mgr.SendScriptMsg(kInvalidUniqueId, targetId, EScriptObjectMessage(it->GetMessage()), kSS_Any);
      if (it->GetActive()) {
        hasActiveRelays = true;
      }
    }
  }

  if (!hasActiveRelays)
    return;

  for (rstl::vector< CRelay >::const_iterator it = world->GetRelays().begin();
       it != world->GetRelays().end(); ++it) {
    if (it->GetTargetId().AreaNum() != areaId.Value())
      continue;

    TEditorId relayId = it->GetRelayId();
    if (HasMsg(relayId) && it->GetActive()) {
      RemoveMsg(relayId);
    }
  }
}

void CScriptMailbox::AddMsg(TEditorId id) {
  rstl::reserved_vector< TEditorId, 512 >::iterator iter = x0_relays.begin();
  for (; iter != x0_relays.end(); ++iter) {
    if (*iter == id) {
      return;
    }
  }

  x0_relays.push_back(id);
}

void CScriptMailbox::RemoveMsg(TEditorId id) {
  rstl::reserved_vector< TEditorId, 512 >::iterator iter = x0_relays.begin();
  for (; iter != x0_relays.end(); ++iter) {
    if (*iter == id) {
      x0_relays.erase(iter);
      return;
    }
  }
}

bool CScriptMailbox::HasMsg(TEditorId id) const {
  rstl::reserved_vector< TEditorId, 512 >::const_iterator iter = x0_relays.begin();
  for (; iter != x0_relays.end(); ++iter) {
    if (*iter == id) {
      return true;
    }
  }

  return false;
}
