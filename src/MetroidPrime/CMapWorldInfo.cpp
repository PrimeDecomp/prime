#include "MetroidPrime/CMapWorldInfo.hpp"

#include "MetroidPrime/CMemoryCard.hpp"
#include "MetroidPrime/Player/CWorldSaveGameInfo.hpp"

#include "Kyoto/Streams/CInputStream.hpp"
#include "Kyoto/Streams/COutputStream.hpp"
#include "rstl/algorithm.hpp"

#pragma inline_max_size(250)

CMapWorldInfo::CMapWorldInfo() : mMapStationUsed(false) {}

CMapWorldInfo::CMapWorldInfo(CInputStream& in, const CWorldSaveGameInfo& saveInfo,
                           CAssetId worldResId)
: mMapStationUsed(false) {
  const CSaveWorldMemory& worldMemory = gpMemoryCard->GetSaveWorldMemory(worldResId);
  long areaCount = worldMemory.GetAreaCount();
  mVisitedAreas.reserve(areaCount);
  for (int i = 0; i < areaCount; ++i) {
    mVisitedAreas.push_back(in.ReadBits(1) != 0);
  }
  mMappedAreas.reserve(areaCount);
  for (int i = 0; i < areaCount; ++i) {
    mMappedAreas.push_back(in.ReadBits(1) != 0);
  }
  rstl::bit_vector<> doors(saveInfo.GetDoors().size(), false);
  for (int i = 0; i < doors.size(); ++i) {
    doors[i] = in.ReadBits(1) != 0;
  }
  mMapStationUsed = in.ReadBits(1) != 0;
  // Retail consumes the saved door bits without restoring mVisitedDoors.
  rstl::sort_by_key(mVisitedDoors);
}

void CMapWorldInfo::PutTo(COutputStream& out, const CWorldSaveGameInfo& saveInfo,
                         int worldId) const {
  int areaCount = gpMemoryCard->GetSaveWorldMemory(worldId).GetAreaCount();
  for (int i = 0; i < areaCount; ++i) {
    if (i < mVisitedAreas.size()) {
      out.WriteBits(mVisitedAreas[i] ? 1 : 0, 1);
    } else {
      out.WriteBits(0, 1);
    }
  }
  for (int i = 0; i < areaCount; ++i) {
    if (i < mMappedAreas.size()) {
      out.WriteBits(mMappedAreas[i] ? 1 : 0, 1);
    } else {
      out.WriteBits(0, 1);
    }
  }
  rstl::bit_vector<> doors(saveInfo.GetDoors().size(), false);
  for (int i = 0; i < saveInfo.GetDoors().size(); ++i) {
    if (IsDoorVisited(TEditorId(saveInfo.GetDoors()[i]))) {
      doors[i] = true;
    }
  }
  for (int i = 0; i < doors.size(); ++i) {
    out.WriteBits(doors[i] ? 1 : 0, 1);
  }
  out.WriteBits(mMapStationUsed != 0, 1);
}

void CMapWorldInfo::SetDoorVisited(TEditorId eid, const bool visited) {
  mVisitedDoors.reserve(mVisitedDoors.size() + 1);
  AUTO(it, rstl::lower_bound(
               mVisitedDoors.begin(), mVisitedDoors.end(), eid,
               rstl::default_pair_sorter_finder< rstl::vector< rstl::pair< TEditorId, bool > > >()));
  if (it == mVisitedDoors.end() || it->first != eid) {
    mVisitedDoors.insert(it, rstl::pair< TEditorId, bool >(eid, visited));
  } else {
    it->second = visited;
  }
}

bool CMapWorldInfo::IsDoorVisited(const TEditorId eid) const {
  AUTO(it, rstl::lower_bound(
               mVisitedDoors.begin(), mVisitedDoors.end(), eid,
               rstl::default_pair_sorter_finder< rstl::vector< rstl::pair< TEditorId, bool > > >()));
  if (it == mVisitedDoors.end()) {
    return false;
  }
  if (it->first != eid) {
    return false;
  }
  return it->second;
}

void CMapWorldInfo::SetAreaVisited(TAreaId areaId, bool visited) {
  if (areaId.Value() + 1 > mVisitedAreas.size()) {
    mVisitedAreas.reserve(areaId.Value() + 1);
    mVisitedAreas.insert(mVisitedAreas.end(), areaId.Value() - mVisitedAreas.size() + 1, false);
  }
  mVisitedAreas[areaId.Value()] = visited;
}

void CMapWorldInfo::SetIsMapped(TAreaId areaId, bool mapped) {
  if (areaId.Value() + 1 > mMappedAreas.size()) {
    mMappedAreas.reserve(areaId.Value() + 1);
    mMappedAreas.insert(mMappedAreas.end(), areaId.Value() - mMappedAreas.size() + 1, false);
  }
  mMappedAreas[areaId.Value()] = mapped;
}

bool CMapWorldInfo::IsWorldVisible(const TAreaId areaId) const {
  if (mMapStationUsed) {
    return true;
  }
  return IsMapped(areaId);
}

bool CMapWorldInfo::IsMapped(TAreaId areaId) const {
  if (areaId.Value() + 1 > mMappedAreas.size()) {
    mMappedAreas.reserve(areaId.Value() + 1);
    mMappedAreas.insert(mMappedAreas.end(), areaId.Value() - mMappedAreas.size() + 1, false);
  }
  return mMappedAreas[areaId.Value()];
}

bool CMapWorldInfo::IsAreaVisited(TAreaId areaId) const {
  if (areaId.Value() + 1 > mVisitedAreas.size()) {
    mVisitedAreas.reserve(areaId.Value() + 1);
    mVisitedAreas.insert(mVisitedAreas.end(), areaId.Value() - mVisitedAreas.size() + 1, false);
  }
  return mVisitedAreas[areaId.Value()];
}

bool CMapWorldInfo::IsAreaVisible(const TAreaId areaId) const {
  return IsAreaVisited(areaId) || IsMapped(areaId);
}

bool CMapWorldInfo::IsAnythingSet() {
  for (int i = 0; i < mVisitedAreas.size(); ++i) {
    if (mVisitedAreas[i]) {
      return true;
    }
  }
  for (int i = 0; i < mMappedAreas.size(); ++i) {
    if (mMappedAreas[i]) {
      return true;
    }
  }
  return mMapStationUsed;
}
