#ifndef __COBJECTLIST_HPP__
#define __COBJECTLIST_HPP__

#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"

#define kMaxObjects 1024

enum EGameObjectList {
  kOL_Invalid = -1,
  kOL_All,
  kOL_Actor,
  kOL_PhysicsActor,
  kOL_GameCamera,
  kOL_GameLight,
  kOL_ListeningAi,
  kOL_AiWaypoint,
  kOL_PlatformAndDoor,
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

  virtual bool IsQualified(CEntity& ent);

  void AddObject(CEntity& ent);
  void RemoveObject(TUniqueId uid);
  CEntity* GetObjectById();
  const CEntity* GetObjectById() const;
  CEntity* GetValidObjectById(TUniqueId uid);
  const CEntity* GetValidObjectById(TUniqueId uid) const;
  CEntity* operator[](int idx);
  const CEntity* operator[](int idx) const;
  const CEntity* GetValidObjectByIndex(int idx) const;
  int size() const { return mCount; }

  int GetFirstObjectIndex() const { return mFirstId; }
  int GetNextObjectIndex(int idx) const {
    if (idx != -1) {
      return mObjects[idx].mNext;
    } else {
      return -1;
    }
  }

private:
  SObjectListEntry mObjects[1024];
  EGameObjectList mListType;
  s16 mFirstId;
  s16 mCount;
};
CHECK_SIZEOF(CObjectList, 0x200c)

#endif // __COBJECTLIST_HPP__
