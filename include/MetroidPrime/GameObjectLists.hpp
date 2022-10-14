#ifndef _GAMEOBJECTLISTS
#define _GAMEOBJECTLISTS

#include "MetroidPrime/CObjectList.hpp"

class CActorList final : public CObjectList {
public:
  CActorList();
  uchar IsQualified(const CEntity& ent) override;
};

class CPhysicsActorList final : public CObjectList {
public:
  CPhysicsActorList();
  uchar IsQualified(const CEntity& ent) override;
};

class CGameCameraList final : public CObjectList {
public:
  CGameCameraList();
  uchar IsQualified(const CEntity& ent) override;
};

class CListeningAiList final : public CObjectList {
public:
  CListeningAiList();
  uchar IsQualified(const CEntity& ent) override;
};

class CAiWaypointList final : public CObjectList {
public:
  CAiWaypointList();
  uchar IsQualified(const CEntity& ent) override;
};

class CPlatformAndDoorList final : public CObjectList {
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
