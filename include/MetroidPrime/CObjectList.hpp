#ifndef _COBJECTLIST
#define _COBJECTLIST

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
    short mNext;
    short mPrev;
    SObjectListEntry() : mEnt(nullptr), mNext(-1), mPrev(-1) {}
  };

public:
  CObjectList(EGameObjectList list);

  virtual uchar IsQualified(const CEntity& ent);

  void AddObject(CEntity& ent);
  void RemoveObject(TUniqueId uid);
  CEntity* GetObjectById(TUniqueId uid);
  const CEntity* GetObjectById(TUniqueId uid) const;
  CEntity* GetValidObjectById(TUniqueId uid);
  const CEntity* GetValidObjectById(TUniqueId uid) const;
  CEntity* operator[](int idx);
  const CEntity* operator[](int idx) const;
  const CEntity* GetObjectByIndex(int idx) const;
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
  short mFirstId;
  short mCount;
};
CHECK_SIZEOF(CObjectList, 0x200c)

#endif // _COBJECTLIST
