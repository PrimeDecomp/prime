#include "MetroidPrime/GameObjectLists.hpp"
#include "MetroidPrime/Enemies/CPatterned.hpp"
#include "MetroidPrime/TCastTo.hpp"

CActorList::CActorList() : CObjectList(kOL_Actor) {}

uchar CActorList::IsQualified(const CEntity& ent) {
  return TCastToConstPtr< CActor >(ent) != nullptr;
}

CPhysicsActorList::CPhysicsActorList() : CObjectList(kOL_PhysicsActor) {}

uchar CPhysicsActorList::IsQualified(const CEntity& ent) {
  return TCastToConstPtr< CPhysicsActor >(ent) != nullptr;
}

CGameCameraList::CGameCameraList() : CObjectList(kOL_GameCamera) {}

uchar CGameCameraList::IsQualified(const CEntity& ent) {
  return TCastToConstPtr< CGameCamera >(ent) != nullptr;
}

CListeningAiList::CListeningAiList() : CObjectList(kOL_ListeningAi) {}

uchar CListeningAiList::IsQualified(const CEntity& ent) {
  bool ret = false;
  const CPatterned* pat = TCastToConstPtr< CPatterned >(ent);
  if (pat && pat->IsListening()) {
    ret = true;
  }
  return ret;
}

CAiWaypointList::CAiWaypointList() : CObjectList(kOL_AiWaypoint) {}

uchar CAiWaypointList::IsQualified(const CEntity& ent) {
  bool ret = false;
  if (TCastToConstPtr< CScriptCoverPoint >(ent) != nullptr) {
    ret = true;
  } else if (TCastToConstPtr< CScriptAiJumpPoint >(ent) != nullptr) {
    ret = true;
  }

  return ret;
}

CPlatformAndDoorList::CPlatformAndDoorList() : CObjectList(kOL_PlatformAndDoor) {}

uchar CPlatformAndDoorList::IsPlatform(const CEntity* ent) {
  return TCastToConstPtr< CScriptPlatform >(ent) != nullptr;
}

uchar CPlatformAndDoorList::IsDoor(const CEntity* ent) {
  return TCastToConstPtr< CScriptDoor >(ent) != nullptr;
}

uchar CPlatformAndDoorList::IsQualified(const CEntity& ent) {
  uchar ret = false;

  if (IsPlatform(&ent) || IsDoor(&ent)) {
    ret = true;
  }

  return ret;
}


CGameLightList::CGameLightList() : CObjectList(kOL_GameLight) {}
uchar CGameLightList::IsQualified(const CEntity& ent) {
  return TCastToConstPtr< CGameLight >(ent) != nullptr;
}
