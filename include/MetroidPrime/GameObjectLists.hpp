#ifndef _GAMEOBJECTLISTS
#define _GAMEOBJECTLISTS

#include "MetroidPrime/CObjectList.hpp"

class CActorList : public CObjectList {
public:
  CActorList();
  uchar IsQualified(const CEntity& ent) override;
};

class CPhysicsActorList : public CObjectList {
public:
  CPhysicsActorList();
  uchar IsQualified(const CEntity& ent) override;
};

class CGameCameraList : public CObjectList {
public:
  CGameCameraList();
  uchar IsQualified(const CEntity& ent) override;
};

class CListeningAiList : public CObjectList {
public:
  CListeningAiList();
  uchar IsQualified(const CEntity& ent) override;
};

class CAiWaypointList : public CObjectList {
public:
  CAiWaypointList();
  uchar IsQualified(const CEntity& ent) override;
};

class CPlatformAndDoorList : public CObjectList {
public:
  CPlatformAndDoorList();
  uchar IsQualified(const CEntity& ent) override;
  static uchar IsPlatform(const CEntity* ent);
  static uchar IsDoor(const CEntity*);
};

class CGameLightList : public CObjectList {
public:
  CGameLightList();
  uchar IsQualified(const CEntity& ent) override;
};


#endif // _GAMEOBJECTLISTS
