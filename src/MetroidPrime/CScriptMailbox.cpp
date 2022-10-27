#include "MetroidPrime/CScriptMailbox.hpp"

#include "Kyoto/Streams/CInputStream.hpp"

CScriptMailbox::CScriptMailbox() { CMemory::OffsetFakeStatics(sizeof(*this)); }

CScriptMailbox::CScriptMailbox(CInputStream& in, const CWorldSaveGameInfo& world) {
  CMemory::OffsetFakeStatics(sizeof(*this));
}

CScriptMailbox::~CScriptMailbox() { CMemory::OffsetFakeStatics(-sizeof(*this)); }

void CScriptMailbox::PutTo(COutputStream& out, CWorldSaveGameInfo& world) const {}

void CScriptMailbox::SendMsgs(const TAreaId& area, CStateManager& mgr) {}

void CScriptMailbox::AddMsg(TEditorId id) {
  rstl::reserved_vector< TEditorId, 512 >::iterator iter = x0_relays.begin();
  for (; iter != x0_relays.end(); ++iter) {
    if (*iter == id) {
      return;
    }
  }

  x0_relays.push_back(id);
}

void CScriptMailbox::RemoveMsg(TEditorId id) {}

bool CScriptMailbox::HasMsg(TEditorId id) const {
  rstl::reserved_vector< TEditorId, 512 >::const_iterator iter = x0_relays.begin();
  for (; iter != x0_relays.end(); ++iter) {
    if (*iter == id) {
      return true;
    }
  }

  return false;
}
