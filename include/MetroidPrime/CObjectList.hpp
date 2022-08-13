#ifndef __COBJECTLIST_HPP__
#define __COBJECTLIST_HPP__

#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"

#define kMaxObjects 1024

enum EGameObjectList {
  kGOL_Invalid = -1,
  kGOL_All,
  kGOL_Actor,
  kGOL_PhysicsActor,
  kGOL_GameCamera,
  kGOL_GameLight,
  kGOL_ListeningAi,
  kGOL_AiWaypoint,
  kGOL_PlatformAndDoor,
};

class CEntity;
class CObjectList {
  struct SObjectListEntry {
    CEntity* mEnt;
    s16 mNext;
    s16 mPrev;
    SObjectListEntry();
  };

public:
  CObjectList(EGameObjectList list);
  bool IsQualified(CEntity& ent);
  void AddObject(CEntity& ent);
  void RemoveObject(TUniqueId uid);
  CEntity* GetObjectById();
  const CEntity* GetObjectById() const;
  CEntity* GetValidObjectById(TUniqueId uid);
  const CEntity* GetValidObjectById(TUniqueId uid) const;
  CEntity* operator[](s32 idx);
  const CEntity* operator[](s32 idx) const;
  const CEntity* GetValidObjectByIndex(s32 idx) const;
  s32 size() const { return mCount; }

private:
  SObjectListEntry mObjects[1024];
  EGameObjectList mListType;
  s16 mFirstId = -1;
  s16 mCount = 0;
};

#endif // __COBJECTLIST_HPP__
