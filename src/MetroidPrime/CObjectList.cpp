#include "MetroidPrime/CObjectList.hpp"

#include "MetroidPrime/CEntity.hpp"

CObjectList::CObjectList(EGameObjectList list) : mListType(list), mFirstId(-1), mCount(0) {
  for (int i = 0; i < kMaxObjects; ++i) {
    mObjects[i] = SObjectListEntry();
  }
}

bool CObjectList::IsQualified(const CEntity& ent) { return true; }

void CObjectList::AddObject(CEntity& ent) {
  if (IsQualified(ent)) {
    short next = -1;
    if (mFirstId != -1) {
      mObjects[this->mFirstId].mPrev = ent.GetUniqueId().Value();
      next = mFirstId;
    }
    mFirstId = ent.GetUniqueId().Value();
    SObjectListEntry* entry = &mObjects[ent.GetUniqueId().Value()];
    entry->mEnt = &ent;
    entry->mNext = next;
    entry->mPrev = -1;
    ++mCount;
  }
}

void CObjectList::RemoveObject(TUniqueId uid) {
  if (mObjects[uid.Value()].mEnt == nullptr) {
    return;
  }

  if (mObjects[uid.Value()].mEnt->GetUniqueId() != uid) {
    return;
  }

  if (mFirstId == uid.Value()) {
    mFirstId = mObjects[uid.Value()].mNext;
    s16 next = mObjects[uid.Value()].mNext;
    if (next != -1) {
      mObjects[next].mPrev = -1;
    }
  } else {
    mObjects[mObjects[uid.Value()].mPrev].mNext = mObjects[uid.Value()].mNext;
    s16 next = mObjects[uid.Value()].mNext;
    if (next != -1) {
      mObjects[next].mPrev = mObjects[uid.Value()].mPrev;
    }
  }
  --mCount;
  mObjects[uid.Value()].mEnt = nullptr;
  u16 index = uid.Value();
  mObjects[index].mNext = -1;
  mObjects[index].mPrev = -1;
}

CEntity* CObjectList::GetObjectById(TUniqueId uid) {
  if (uid == kInvalidUniqueId)
    return nullptr;
  CEntity* ret = mObjects[uid.Value()].mEnt;
  return ret && uid == ret->GetUniqueId() && !ret->IsScriptingBlocked() ? ret : nullptr;
}

const CEntity* CObjectList::GetObjectById(TUniqueId uid) const {
  if (uid == kInvalidUniqueId)
    return nullptr;
  const CEntity* ret = mObjects[uid.Value()].mEnt;
  return ret && uid == ret->GetUniqueId() && !ret->IsScriptingBlocked() ? ret : nullptr;
}

CEntity* CObjectList::GetValidObjectById(TUniqueId uid) {
  if (uid == kInvalidUniqueId)
    return nullptr;
  CEntity* ret = mObjects[uid.Value()].mEnt;
  return ret && uid == ret->GetUniqueId() ? ret : nullptr;
}

const CEntity* CObjectList::GetValidObjectById(TUniqueId uid) const {
  if (uid == kInvalidUniqueId)
    return nullptr;
  CEntity* ret = mObjects[uid.Value()].mEnt;
  return ret && uid == ret->GetUniqueId() ? ret : nullptr;
}

CEntity* CObjectList::operator[](int idx) {
  CEntity* ret = mObjects[idx].mEnt;
  return ret == nullptr || ret->IsScriptingBlocked() ?  nullptr :  ret;
}

const CEntity* CObjectList::operator[](int idx) const {
  const CEntity* ret = mObjects[idx].mEnt;
  return ret == nullptr || ret->IsScriptingBlocked() ?  nullptr :  ret;
}


const CEntity* CObjectList::GetObjectByIndex(int idx) const { return mObjects[idx].mEnt; }
