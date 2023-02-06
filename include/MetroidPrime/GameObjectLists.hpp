#ifndef _GAMEOBJECTLISTS
#define _GAMEOBJECTLISTS

#include "MetroidPrime/CObjectList.hpp"

class CActorList : public CObjectList {
public:
  CActorList();
  uchar IsQualified(const CEntity& ent);
};

class CPhysicsActorList : public CObjectList {
public:
  CPhysicsActorList();
  uchar IsQualified(const CEntity& ent);
};

class CGameCameraList : public CObjectList {
public:
  CGameCameraList();
  uchar IsQualified(const CEntity& ent);
};

class CListeningAiList : public CObjectList {
public:
  CListeningAiList();
  uchar IsQualified(const CEntity& ent);
};

class CAiWaypointList : public CObjectList {
public:
  CAiWaypointList();
  uchar IsQualified(const CEntity& ent);
};

class CPlatformAndDoorList : public CObjectList {
public:
  CPlatformAndDoorList();
  uchar IsQualified(const CEntity& ent);
  static uchar IsPlatform(const CEntity* ent);
  static uchar IsDoor(const CEntity*);
};

class CGameLightList : public CObjectList {
public:
  CGameLightList();
  uchar IsQualified(const CEntity& ent);
};


#endif // _GAMEOBJECTLISTS
