#include "MetroidPrime/CStateManager.hpp"

#include "MetroidPrime/CEnvFxManager.hpp"
#include "MetroidPrime/CMapWorldInfo.hpp"
#include "MetroidPrime/CRipple.hpp"
#include "MetroidPrime/CRumbleManager.hpp"
#include "MetroidPrime/CScriptMailbox.hpp"
#include "MetroidPrime/CStateManagerContainer.hpp"
#include "MetroidPrime/CWorld.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/Player/CPlayerState.hpp"
#include "MetroidPrime/Player/CWorldLayerState.hpp"
#include "MetroidPrime/Player/CWorldTransManager.hpp"
#include "MetroidPrime/ScriptObjects/CScriptMazeNode.hpp"

#include "Collision/CCollisionPrimitive.hpp"
#include "Kyoto/Graphics/CLight.hpp"

// CStateManager::CStateManager();
CStateManager::~CStateManager() {
  CMemory::OffsetFakeStatics(
      -(x808_objectLists.size() * sizeof(CObjectList) + 0x11c)); // TODO what is this 11c?
  x88c_rumbleManager->HardStopAll();
  x880_envFxManager->Cleanup();

  x900_random = &x8fc_random;

  CObjectList& list = *x808_objectLists[0];
  ClearGraveyard();
  for (int i = 0; i != kMaxObjects; ++i) {
    CEntity* ent = list[i];
    if (ent && ent->GetUniqueId() != x84c_player->GetUniqueId()) {
      ent->AcceptScriptMsg(kSM_Deleted, kInvalidUniqueId, *this);
      RemoveObject(ent->GetUniqueId());
      delete ent;
    }
  }
  ClearGraveyard();
  x84c_player->AcceptScriptMsg(kSM_Deleted, kInvalidUniqueId, *this);
  RemoveObject(x84c_player->GetUniqueId());
  delete x84c_player;
  x84c_player = nullptr;
  CCollisionPrimitive::Uninitialize();

  CMemory::SetOutOfMemoryCallback(nullptr, nullptr);
}

void CStateManager::RemoveObject(TUniqueId id) {}

void CStateManager::ClearGraveyard() {}
