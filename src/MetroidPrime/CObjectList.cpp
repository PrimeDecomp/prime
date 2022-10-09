#include "MetroidPrime/CObjectList.hpp"

#include "MetroidPrime/CEntity.hpp"

CObjectList::SObjectListEntry::SObjectListEntry() : mEnt(nullptr), mNext(-1), mPrev(-1) {}

CObjectList::CObjectList(EGameObjectList list) : mListType(list), mFirstId(-1), mCount(0) {
  for (int i = 0; i < kMaxObjects; ++i) {
    mObjects[i] = SObjectListEntry();
  }
}

bool CObjectList::IsQualified(CEntity& ent) { return true; }

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

void CObjectList::RemoveObject(TUniqueId uid) {}

CEntity* CObjectList::GetObjectById() { return nullptr; }

const CEntity* CObjectList::GetObjectById() const { return nullptr; }

CEntity* CObjectList::GetValidObjectById(TUniqueId uid) { return nullptr; }

const CEntity* CObjectList::GetValidObjectById(TUniqueId uid) const { return nullptr; }

CEntity* CObjectList::operator[](int idx) { return nullptr; }

const CEntity* CObjectList::operator[](int idx) const { return nullptr; }

const CEntity* CObjectList::GetValidObjectByIndex(int idx) const { return nullptr; }
