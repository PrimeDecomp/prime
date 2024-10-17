#include "MetroidPrime/CWorld.hpp"
#include "Kyoto/Alloc/IAllocator.hpp"
#include "Kyoto/Audio/CAudioSys.hpp"
#include "Kyoto/Audio/CMidiManager.hpp"
#include "Kyoto/Audio/CStreamAudioManager.hpp"
#include "Kyoto/CDvdRequest.hpp" // IWYU pragma: keep
#include "Kyoto/CResFactory.hpp"
#include "Kyoto/CSimplePool.hpp"
#include "Kyoto/SObjectTag.hpp"
#include "Kyoto/Streams/CMemoryInStream.hpp"
#include "MetroidPrime/CGameArea.hpp"
#include "MetroidPrime/CInGameTweakManager.hpp"
#include "MetroidPrime/CMain.hpp"
#include "MetroidPrime/CMapWorld.hpp"
#include "MetroidPrime/Player/CGameState.hpp"
#include "MetroidPrime/Player/CWorldTransManager.hpp"
#include "MetroidPrime/ScriptObjects/CScriptRoomAcoustics.hpp"
#include "MetroidPrime/TCastTo.hpp"
#include "MetroidPrime/TGameTypes.hpp"
#include "rstl/vector.hpp"

CWorld::CWorld(IObjectStore& objStore, CResFactory& resFactory, CAssetId mlvlId)
: x4_phase(kP_Loading)
, x8_mlvlId(mlvlId)
, xc_strgId(kInvalidAssetId)
, x10_savwId(kInvalidAssetId)
, x18_areas()
, x24_mapwId(kInvalidAssetId)
, x28_mapWorld()
, x2c_relays()
, x3c_loadToken()
, x40_loadBuf()
, x44_bufSz(0)
, x48_chainCount(0)
, x60_objectStore(&objStore)
, x64_resFactory(&resFactory)
, x68_curAreaId(kInvalidAreaId)
, x6c_loadedAudioGrpCount(0)
, x70_24_currentAreaNeedsAllocation(true)
, x70_25_loadPaused(false)
, x70_26_skyboxActive(false)
, x70_27_skyboxVisible(false)
, x74_soundGroupData()
, x84_defAudioTrack()
, x94_skyboxWorld()
, xa4_skyboxWorldLoaded()
, xb4_skyboxOverride()
, xc4_neededFx(kEFX_None)
, xc8_globalSfxHandles() {
  SObjectTag mlvl('MLVL', mlvlId);
  x44_bufSz = gpResourceFactory->ResourceSize(mlvl);
  x40_loadBuf = static_cast< char* >(CMemory::Alloc(x44_bufSz, IAllocator::kHI_RoundUpLen));
  x3c_loadToken = resFactory.GetResLoader().LoadResourceAsync(mlvl, x40_loadBuf.get());
}

CWorld::~CWorld() {
  StopSounds();
  CWorldTransManager* transManager = gpGameState->WorldTransitionManager().GetPtr();
  if (transManager->GetTransType() != CWorldTransManager::kTT_Disabled &&
      gpMain->GetRestartMode() == CMain::kRM_None) {
    CStreamAudioManager::StopOneShot();
  } else {
    CStreamAudioManager::StopAll();
  }
  UnloadSoundGroups();
  CScriptRoomAcoustics::DisableAuxCallbacks();
}

bool CWorld::ScheduleAreaToLoad(CGameArea* area, CStateManager& mgr) {
  if (!area->IsPostConstructed()) {
    MoveToChain(area, kC_Loading);
    return true;
  } else {
    if (area->GetCurChain() != kC_Alive) {
      if (area->GetCurChain() != kC_AliveJudgement) {
        x70_24_currentAreaNeedsAllocation = true;
      }
      MoveToChain(area, kC_Alive);
    }
    return false;
  }
}

// TOOD nonmatching
void CWorld::TravelToArea(TAreaId aid, CStateManager& mgr, EAreaTravelType type) {
  if (aid.Value() < 0 || aid.Value() >= x18_areas.size())
    return;
  x70_24_currentAreaNeedsAllocation = false;
  x68_curAreaId = aid;
  CGameArea* toDeallocateAreas = x4c_chainHeads[0];
  while (toDeallocateAreas) {
    if (toDeallocateAreas->Invalidate(&mgr)) {
      MoveToChain(toDeallocateAreas, kC_Deallocated);
      break;
    }
    toDeallocateAreas = toDeallocateAreas->GetNext();
  }

  CGameArea* aliveAreas = x4c_chainHeads[3];
  while (aliveAreas) {
    CGameArea* aliveArea = aliveAreas;
    aliveAreas = aliveAreas->GetNext();
    MoveToChain(aliveArea, kC_AliveJudgement);
  }
  CGameArea* loadingAreas = x4c_chainHeads[2];
  while (loadingAreas) {
    CGameArea* loadingArea = loadingAreas;
    loadingAreas = loadingAreas->GetNext();
    MoveToChain(loadingArea, kC_ToDeallocate);
  }

  CGameArea* area = Area(aid);
  if (area->GetCurChain() != kC_AliveJudgement)
    x70_24_currentAreaNeedsAllocation = true;
  area->Validate(mgr);
  MoveToChain(area, kC_Alive);
  area->SetOcclusionState(CGameArea::kOS_Visible);

  CGameArea* otherLoadArea = nullptr;
  if (type == kATT_Zero) {
    bool otherLoading = false;
    for (int i = 0; i < area->GetDockCount(); ++i) {
      const CGameArea::Dock& dock = area->GetDock(i);
      int dockRefCount = dock.GetDockRefs().size();
      for (int i = 0; i < dockRefCount; ++i) {
        if (!dock.ShouldLoadOtherArea(i))
          continue;
        TAreaId connArea = dock.GetConnectedAreaId(i);
        CGameArea* cArea = Area(connArea);
        if (!cArea->IsActive())
          continue;
        if (!otherLoading) {
          otherLoading = ScheduleAreaToLoad(cArea, mgr);
          if (!otherLoading)
            continue;
          otherLoadArea = cArea;
        } else
          ScheduleAreaToLoad(cArea, mgr);
      }
    }
  }
  CGameArea* judgementAreas = x4c_chainHeads[4];
  while (judgementAreas) {
    CGameArea* judgementArea = judgementAreas;
    judgementAreas = judgementArea->GetNext();
    MoveToChain(judgementArea, kC_ToDeallocate);
  }

  int toStreamCount = 0;
  toDeallocateAreas = x4c_chainHeads[0];
  while (toDeallocateAreas) {
    toDeallocateAreas->RemoveStaticGeometry();
    toDeallocateAreas = toDeallocateAreas->GetNext();
    ++toStreamCount;
  }

  if (!toStreamCount && otherLoadArea && !x70_25_loadPaused)
    otherLoadArea->StartStreamIn(mgr);

  GetMapWorld()->SetWhichMapAreasLoaded(*this, aid.Value(), 3);
}

// TOOD nonmatching
void CWorld::MoveToChain(CGameArea* area, EChain chain) {
  if (area->GetCurChain() == chain) {
    return;
  }

  if (area->GetCurChain() != kC_Invalid) {
    if (x4c_chainHeads[area->GetCurChain()] == area) {
      x4c_chainHeads[area->GetCurChain()] = area->GetNext();
    }
  }

  area->SetChain(x4c_chainHeads[int(chain)], int(chain));
  x4c_chainHeads[int(chain)] = area;
}

void CWorld::LoadSoundGroups() {
  rstl::vector< CAssetId > songAssets = gpTweakManager->GetSongAssetsInWorld(IGetWorldAssetId());
  if (songAssets.empty()) {
    return;
  }
  x74_soundGroupData.reserve(songAssets.size());
  for (rstl::vector< CAssetId >::iterator it = songAssets.begin(); it != songAssets.end(); ++it) {
    TToken< CMidiManager::CMidiData > token = gpSimplePool->GetObj(SObjectTag('CSNG', *it));
    x74_soundGroupData.push_back(
        CSoundGroupData(token.GetT()->GetGroupId(), token.GetT()->GetSongId()));
  }
  for (rstl::vector< CSoundGroupData >::iterator it = x74_soundGroupData.begin();
       it != x74_soundGroupData.end(); ++it) {
    if (!it->x8_25_loaded) {
      LoadSoundGroup(it->x0_groupId, it->x4_agscId, *it);
    }
  }
}

void CWorld::LoadSoundGroup(uchar groupId, CAssetId agscId, CSoundGroupData& data) {
  data.x8_25_loaded = true;
  if (!CAudioSys::SysLoadGroupSet(gpSimplePool, agscId)) {
    rstl::string name = CAudioSys::SysGetGroupSetName(agscId);
    if (CAudioSys::SysPushGroupIntoARAM(name, groupId)) {
      data.x8_24_loadedIntoAram = true;
      data.xc_name = name;
      ++x6c_loadedAudioGrpCount;
      CAudioSys::SysUnloadSampleData(name);
    } else {
      CAudioSys::SysUnloadGroupSet(name);
    }
  }
}

void CWorld::UnloadSoundGroups() {
  for (int i = 0; i < x6c_loadedAudioGrpCount; ++i) {
    CAudioSys::SysPopGroupFromARAM();
  }
  for (rstl::vector< CSoundGroupData >::iterator it = x74_soundGroupData.begin();
       it != x74_soundGroupData.end(); ++it) {
    if (it->x8_24_loadedIntoAram) {
      CAudioSys::SysUnloadGroupSet(it->xc_name);
    }
  }
}

CMapWorld* CWorld::GetMapWorld() const { return x28_mapWorld->GetObject(); }

CAssetId CWorld::IGetWorldAssetId() const { return GetWorldAssetId(); }

CAssetId CWorld::IGetStringTableAssetId() const { return xc_strgId; }

CAssetId CWorld::IGetSaveWorldAssetId() const { return x10_savwId; }

const CMapWorld* CWorld::IGetMapWorld() const { return GetMapWorld(); }

CMapWorld* CWorld::IMapWorld() { return GetMapWorld(); }

const IGameArea* CWorld::IGetAreaAlways(TAreaId id) const { return &GetAreaAlways(id); }

TAreaId CWorld::IGetCurrentAreaId() const { return x68_curAreaId; }

bool CWorld::ICheckWorldComplete() {
  return CheckWorldComplete(nullptr, kInvalidAreaId, kInvalidAssetId);
}

rstl::string CWorld::IGetDefaultAudioTrack() const { return x84_defAudioTrack; }

int CWorld::IGetAreaCount() const { return x18_areas.size(); }

CDummyWorld::CDummyWorld(CAssetId mlvlId, bool loadMap)
: x4_loadMap(loadMap)
, x8_phase(kP_Loading)
, xc_mlvlId(mlvlId)
#if NONMATCHING
, x10_strgId(kInvalidAssetId)
#endif
, x14_savwId(kInvalidAssetId)
, x18_areas()
, x28_mapWorldId(kInvalidAssetId)
, x2c_mapWorld()
, x30_loadToken()
, x34_loadBuf()
, x38_bufSz(0)
, x3c_curAreaId(kInvalidAreaId) {
  SObjectTag mlvl('MLVL', mlvlId);
  x38_bufSz = gpResourceFactory->ResourceSize(mlvl);
  x34_loadBuf = static_cast< char* >(CMemory::Alloc(x38_bufSz, IAllocator::kHI_RoundUpLen));
  x30_loadToken = gpResourceFactory->GetResLoader().LoadResourceAsync(mlvl, x34_loadBuf.get());
}

class CMemoryRelays {
public:
  CMemoryRelays(CInputStream& in /*, const int& unk*/);

private:
  rstl::vector< CRelay > x0_relayList;
};

CMemoryRelays::CMemoryRelays(CInputStream& in /*, const int& unk*/) {
  int count = in.Get< int >();
  x0_relayList.reserve(count);
  for (int i = 0; i < count; ++i) {
    x0_relayList.push_back(CRelay(in));
  }
}

CDummyWorld::~CDummyWorld() {}

// TOOD nonmatching
bool CDummyWorld::ICheckWorldComplete() {
  switch (x8_phase) {
  case kP_Loading: {
    if (!x30_loadToken->IsComplete()) {
      return false;
    }

    CMemoryInStream r(x34_loadBuf.get(), x38_bufSz);
    r.ReadLong();
    uint version = r.Get< uint >();
    x10_strgId = r.Get< CAssetId >();

    if (version >= 15) {
      x14_savwId = r.Get< CAssetId >();
    }
    if (version >= 12) {
      r.ReadLong();
    }
    if (version >= 17) {
      // TOOD: this class takes some stack argument in r5
      // but I can't figure out what it is
      // int unk;
      CMemoryRelays relays(r /*, unk*/);
    }

    int areaCount = r.Get< int >();
    r.ReadLong();

    x18_areas.reserve(areaCount);
    for (int i = 0; i < areaCount; ++i) {
      x18_areas.push_back(rs_new CDummyGameArea(r, i, version));
    }

    x28_mapWorldId = r.Get< CAssetId >();
    if (x4_loadMap) {
      x2c_mapWorld = rs_new TCachedToken< CMapWorld >(
          gpSimplePool->GetObj(SObjectTag('MAPW', x28_mapWorldId)));
      x2c_mapWorld->Lock();
    }

    r.ReadChar();
    r.ReadLong();

    if (version > 10) {
      int audioGroupCount = r.ReadLong();
      for (int i = 0; i < audioGroupCount; ++i) {
        r.ReadLong();
        r.ReadLong();
      }
    }

    if (version > 12) {
      rstl::string s(r);
    }

    SWorldLayers::ReadWorldLayers(r, version, xc_mlvlId);

    x30_loadToken = nullptr;
    x34_loadBuf = nullptr;
    x38_bufSz = 0;

    if (!x4_loadMap) {
      x8_phase = kP_Done;
      break;
    } else {
      x8_phase = kP_LoadingMap;
    }
  }
  case kP_LoadingMap: {
    if (!x2c_mapWorld->TryCache()) {
      return false;
    }

    IMapWorld()->SetWhichMapAreasLoaded(*this, 0, 9999);
    x8_phase = kP_LoadingMapAreas;
  }
  case kP_LoadingMapAreas: {
    if (x2c_mapWorld->GetObject()->IsMapAreasStreaming()) {
      return false;
    }

    x8_phase = kP_Done;
  }
  case kP_Done:
    return true;
  default:
    break;
  }
  return false;
}

CAssetId CDummyWorld::IGetWorldAssetId() const { return xc_mlvlId; }

CAssetId CDummyWorld::IGetSaveWorldAssetId() const { return x14_savwId; }

CAssetId CDummyWorld::IGetStringTableAssetId() const { return x10_strgId; }

const CMapWorld* CDummyWorld::IGetMapWorld() const { return x2c_mapWorld->GetObject(); }

CMapWorld* CDummyWorld::IMapWorld() { return x2c_mapWorld->GetObject(); }

const IGameArea* CDummyWorld::IGetAreaAlways(TAreaId id) const { return &*x18_areas[id.Value()]; }

TAreaId CDummyWorld::IGetCurrentAreaId() const { return x3c_curAreaId; }

TAreaId CDummyWorld::IGetAreaId(CAssetId id) const {
  if (id != kInvalidAssetId) {
    for (int i = 0; i < x18_areas.size(); ++i) {
      TAreaId aid(i);
      if (IGetAreaAlways(aid)->IGetAreaAssetId() == id) {
        return aid;
      }
    }
  }
#if NONMATCHING
  return kInvalidAreaId;
#else
  return TAreaId(-1);
#endif
}
