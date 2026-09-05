#pragma inline_max_size(250)

#include "MetroidPrime/CMemoryCard.hpp"

#include "MetroidPrime/CGameHintInfo.hpp"
#include "MetroidPrime/CWorld.hpp"
#include "MetroidPrime/Player/CGameState.hpp"
#include "MetroidPrime/Player/CWorldState.hpp"

#include "Kyoto/CResFactory.hpp"
#include "Kyoto/CSimplePool.hpp"
#include "Kyoto/Text/CStringTable.hpp"
#include "rstl/algorithm.hpp"

CMemoryCard::CMemoryCard()
: x0_hints(gpSimplePool->GetObj("HINT_Hints"))
, x30_scanCategoryCounts(0u) {
  x0_hints.Lock();
  x1c_worldInter = rs_new rstl::vector< CSaveWorldIntermediate >;
  rstl::vector< CSaveWorldIntermediate >& worlds = *x1c_worldInter;
  xc_memoryWorlds.reserve(16);
  worlds.reserve(16);

  const rstl::vector< rstl::pair< rstl::string, SObjectTag > > resources =
      gpResourceFactory->GetResourceIdToNameList();
  for (AUTO(it, resources.begin()); it != resources.end(); ++it) {
    CAssetId worldId = it->second.GetId();
    if (gpResourceFactory->GetResourceTypeById(worldId) == 'MLVL') {
      AUTO(existing, rstl::lower_bound(
                         xc_memoryWorlds.begin(), xc_memoryWorlds.end(), worldId,
                         rstl::default_pair_sorter_finder<
                             rstl::vector< rstl::pair< CAssetId, CSaveWorldMemory > > >()));
      if (existing == xc_memoryWorlds.end() || existing->first != worldId) {
        xc_memoryWorlds.insert(existing,
                              rstl::pair< CAssetId, CSaveWorldMemory >(worldId, CSaveWorldMemory()));
        worlds.push_back(CSaveWorldIntermediate(worldId, kInvalidAssetId));
      }
    }
  }
}

CMemoryCard::~CMemoryCard() {}

CSaveWorldIntermediate::CSaveWorldIntermediate(CAssetId mlvlId, CAssetId savwId) {
  if (savwId == kInvalidAssetId) {
    x2c_dummyWorld = rs_new CDummyWorld(mlvlId, false);
  } else {
    x34_saveWorld = rs_new TCachedToken< CWorldSaveGameInfo >(
        gpSimplePool->GetObj(SObjectTag('SAVW', savwId)));
    x34_saveWorld->Lock();
  }
  x0_mlvlId = mlvlId;
  x4_worldNameId = kInvalidAssetId;
  x8_saveWorldId = savwId;
}

bool CSaveWorldIntermediate::InitializePump() {
  if (!x2c_dummyWorld.null()) {
    if (x2c_dummyWorld->ICheckWorldComplete()) {
      IWorld& world = *x2c_dummyWorld;
      x4_worldNameId = world.IGetStringTableAssetId();
      x8_saveWorldId = world.IGetSaveWorldAssetId();
      int areaCount = world.IGetAreaCount();
      xc_areaIds.reserve(areaCount);
      for (int i = 0; i < areaCount; ++i) {
        xc_areaIds.push_back(world.IGetAreaAlways(TAreaId(i))->IGetAreaSaveId());
      }
      CWorldState& state = gpGameState->StateForWorld(world.IGetWorldAssetId());
      x1c_defaultLayerStates = state.GetLayerState()->GetAreaLayers();
      if (x8_saveWorldId != kInvalidAssetId) {
        x34_saveWorld = rs_new TCachedToken< CWorldSaveGameInfo >(
            gpSimplePool->GetObj(SObjectTag('SAVW', x8_saveWorldId)));
        x34_saveWorld->Lock();
      }
      x2c_dummyWorld = nullptr;
    }
  } else {
    if (!x34_saveWorld.null()) {
      if (x34_saveWorld->TryCache()) {
        return true;
      }
    } else {
      return true;
    }
  }
  return false;
}

bool CMemoryCard::InitializePump() {
  if (x1c_worldInter.null()) {
    for (AUTO(it, xc_memoryWorlds.begin()); it != xc_memoryWorlds.end(); ++it) {
      if (it->second.x2c_worldName.valid() && !it->second.x2c_worldName->TryCache()) {
        return false;
      }
    }
    return x0_hints.TryCache();
  }

  bool done = true;
  rstl::vector< CSaveWorldIntermediate >& worlds = *x1c_worldInter;
  for (AUTO(it, worlds.begin()); it != worlds.end(); ++it) {
    CSaveWorldIntermediate& world = *it;
    if (world.InitializePump()) {
      if (world.x34_saveWorld.null()) {
        continue;
      }
      CSaveWorldMemory& memory = const_cast< CSaveWorldMemory& >(GetSaveWorldMemory(world.x0_mlvlId));
      if (memory.x4_saveWorldId == kInvalidAssetId) {
        memory.x4_saveWorldId = world.x8_saveWorldId;
      }
      if (memory.x0_worldNameId == kInvalidAssetId) {
        memory.x0_worldNameId = world.x4_worldNameId;
      }
      memory.xc_areaIds = world.xc_areaIds;
      memory.x1c_defaultLayerStates = world.x1c_defaultLayerStates;
      const CWorldSaveGameInfo& saveInfo = *world.x34_saveWorld->GetObject();
      memory.x8_areaCount = saveInfo.GetAreaCount();
      x20_scanStates.reserve(x20_scanStates.size() + saveInfo.GetScans().size());
      for (AUTO(scan, saveInfo.GetScans().begin()); scan != saveInfo.GetScans().end(); ++scan) {
        if (rstl::find(x20_scanStates.begin(), x20_scanStates.end(), *scan) == x20_scanStates.end()) {
          x20_scanStates.push_back(*scan);
          ++x30_scanCategoryCounts[scan->second];
        }
      }
      memory.x3c_saveWorld = *world.x34_saveWorld;
      world.x34_saveWorld = nullptr;
      SObjectTag worldName('STRG', memory.x0_worldNameId);
      if (gpResourceFactory->CanBuild(worldName)) {
        memory.x2c_worldName = TCachedToken< CStringTable >(gpSimplePool->GetObj(worldName));
        memory.x2c_worldName->Lock();
      }
    } else {
      done = false;
    }
  }
  if (done) {
    x1c_worldInter = nullptr;
    rstl::sort_by_key(x20_scanStates);
  }
  return false;
}

bool CMemoryCard::HasSaveWorldMemory(CAssetId worldId) const {
  AUTO(it, rstl::find_by_key(xc_memoryWorlds, worldId));
  return it != xc_memoryWorlds.end();
}

const CSaveWorldMemory& CMemoryCard::GetSaveWorldMemory(CAssetId worldId) const {
  AUTO(it, rstl::find_by_key(xc_memoryWorlds, worldId));
  return it->second;
}

const wchar_t* CSaveWorldMemory::GetFrontEndName() const {
  if (x2c_worldName.valid() && x2c_worldName->GetObject() != nullptr) {
    return x2c_worldName->GetObject()->GetString(0);
  }
  return nullptr;
}

rstl::pair< CAssetId, int > CMemoryCard::GetAreaAndWorldIdForSaveId(int saveId) const {
  for (AUTO(it, xc_memoryWorlds.begin()); it != xc_memoryWorlds.end(); ++it) {
    const rstl::vector< uint >& areas = it->second.xc_areaIds;
    AUTO(area, rstl::find(areas.begin(), areas.end(), static_cast< uint >(saveId)));
    if (area != areas.end()) {
      return rstl::pair< CAssetId, int >(it->first, rstl::distance(areas.begin(), area));
    }
  }
  const CAssetId invalidWorld = kInvalidAssetId;
  return rstl::pair< CAssetId, int >(invalidWorld, -1);
}
