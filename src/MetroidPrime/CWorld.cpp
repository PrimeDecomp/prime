#include "MetroidPrime/CWorld.hpp"

#include "MetroidPrime/CScriptLayerManager.hpp"

#include "Kyoto/Alloc/IAllocator.hpp"
#include "Kyoto/Audio/CAudioSys.hpp"
#include "Kyoto/Audio/CMidiManager.hpp"
#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/Audio/CStreamAudioManager.hpp"
#include "Kyoto/Basics/CCast.hpp"
#include "Kyoto/CDvdRequest.hpp" // IWYU pragma: keep
#include "Kyoto/CResFactory.hpp"
#include "Kyoto/CSimplePool.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Graphics/CModel.hpp"
#include "Kyoto/SObjectTag.hpp"
#include "Kyoto/Streams/CMemoryInStream.hpp"
#include "MetaRender/CCubeRenderer.hpp"
#include "MetroidPrime/CGameArea.hpp"
#include "MetroidPrime/CInGameTweakManager.hpp"
#include "MetroidPrime/CMain.hpp"
#include "MetroidPrime/CMapWorld.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/Player/CGameState.hpp"
#include "MetroidPrime/Player/CWorldState.hpp"
#include "MetroidPrime/Player/CWorldTransManager.hpp"
#include "MetroidPrime/ScriptObjects/CScriptAreaAttributes.hpp"
#include "MetroidPrime/ScriptObjects/CScriptRoomAcoustics.hpp"
#include "MetroidPrime/ScriptObjects/CScriptStreamedMusic.hpp"
#include "MetroidPrime/TCastTo.hpp"
#include "MetroidPrime/TGameTypes.hpp"
#include "rstl/vector.hpp"

CGameArea::CConstChainIterator CWorld::skGlobalEnd;
CGameArea::CChainIterator CWorld::skGlobalNonConstEnd;

void CWorldLayers::ReadWorldLayers(CInputStream& in, int version, CAssetId mlvlId) {
  if (static_cast< uint >(version) > 14) {
    rstl::vector< Area > areas(in);
    rstl::rc_ptr< rstl::vector< rstl::string > > names(rs_new rstl::vector< rstl::string >(in));
    rstl::rc_ptr< rstl::vector< int > > indices(rs_new rstl::vector< int >(in));
    gpGameState->StateForWorld(mlvlId).GetLayerState()->InitializeWorldLayers(areas, names,
                                                                              indices);
  }
}

CRelay::CRelay(CInputStream& in)
: x0_relay(in.ReadLong())
, x4_target(in.ReadLong())
, x8_msg(in.ReadShort())
, xa_active(in.ReadBool()) {}

IWorld::~IWorld() {}

CWorld::CSoundGroupData::CSoundGroupData(int grpId, CAssetId agsc)
: x0_groupId(grpId)
, x4_agscId(agsc)
, x8_24_loadedIntoAram(false)
, x8_25_loaded(false)
, xc_name()
, x1c_groupData() {
  if (!CAudioSys::SysIsGroupSetLoaded(CAudioSys::SysGetGroupSetName(agsc))) {
    x1c_groupData = gpSimplePool->GetObj(SObjectTag('AGSC', agsc));
  }
}

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
, x48_chainHeads()
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

bool CWorld::CheckWorldComplete(CStateManager* mgr, TAreaId aid, CAssetId mreaId) {
  if (mreaId != kInvalidAssetId) {
    x68_curAreaId = TAreaId(0);
    int areaCount = x18_areas.size();
    for (int i = 0; i < areaCount; ++i) {
      if (GetArea(TAreaId(i))->GetAreaAssetId() == mreaId) {
        x68_curAreaId = TAreaId(i);
        break;
      }
    }
  } else {
    x68_curAreaId = aid;
  }

  const bool loadSky = mgr != nullptr;
  switch (x4_phase) {
  case kP_Loading: {
    if (!x3c_loadToken->IsComplete()) {
      return false;
    }
    CMemoryInStream in(x40_loadBuf.get(), x44_bufSz);
    in.ReadLong();
    int version = in.Get< int >();
    xc_strgId = in.Get< CAssetId >();
    if (static_cast< uint >(version) >= 15) {
      x10_savwId = in.Get< CAssetId >();
    }
    if (static_cast< uint >(version) >= 12) {
      CAssetId skyboxId = in.Get< CAssetId >();
      if (skyboxId != kInvalidAssetId && loadSky) {
        x94_skyboxWorld =
            TCachedToken< CModel >(gpSimplePool->GetObj(SObjectTag('CMDL', skyboxId)));
        x94_skyboxWorld->Lock();
      }
    }
    if (static_cast< uint >(version) >= 17) {
      x2c_relays = rstl::vector< CRelay >(in);
    }

    int areaCount = in.Get< int >();
    in.ReadLong();
    x18_areas.reserve(areaCount);
    for (int i = 0; i < areaCount; ++i) {
      x18_areas.push_back(rs_new CGameArea(in, i, version));
    }
    x48_chainHeads.resize(5, nullptr);
    for (int i = 0; i < areaCount; ++i) {
      MoveToChain(x18_areas[i].get(), kC_Deallocated);
    }

    x24_mapwId = in.Get< CAssetId >();
    x28_mapWorld =
        rs_new TCachedToken< CMapWorld >(gpSimplePool->GetObj(SObjectTag('MAPW', x24_mapwId)));
    x28_mapWorld->Lock();
    if (mgr) {
      rstl::vector< TEditorId > ids;
      mgr->LoadScriptObjects(kInvalidAreaId, in, ids);
      mgr->InitScriptObjects(ids);
    }

    if (static_cast< uint >(version) > 10) {
      int audioGroupCount = in.Get< int >();
      x74_soundGroupData.reserve(audioGroupCount);
      for (int i = 0; i < audioGroupCount; ++i) {
        int groupId = in.Get< int >();
        CAssetId agscId = in.Get< CAssetId >();
        x74_soundGroupData.push_back(CSoundGroupData(groupId, agscId));
      }
      CAudioSys::GetVerbose();
    }
    if (static_cast< uint >(version) > 12) {
      x84_defAudioTrack = rstl::string(in);
      rstl::string trackKey = CInGameTweakManager::GetIdentifierForWorldDefaultMusic(x8_mlvlId);
      char volume = 127;
      if (gpTweakManager->HasTweakValue(trackKey)) {
        x84_defAudioTrack = gpTweakManager->GetTweakValue(trackKey)->GetAudio().GetFileName();
        volume =
            CCast::ToInt8(127.f * gpTweakManager->GetTweakValue(trackKey)->GetAudio().GetVolume());
      }
      if (!CScriptStreamedMusic::IsAudioTrackNameSoftware(x84_defAudioTrack)) {
        CStreamAudioManager::SetDefaultAudio(x84_defAudioTrack, 0.f, 0.f, volume);
      }
    }
    CWorldLayers::ReadWorldLayers(in, version, x8_mlvlId);
    x3c_loadToken = nullptr;
    x40_loadBuf = nullptr;
    x44_bufSz = 0;
    x4_phase = kP_LoadingMap;
  }
  case kP_LoadingMap: {
    if (!x28_mapWorld->TryCache()) {
      return false;
    }
    if (x68_curAreaId == kInvalidAreaId) {
      GetMapWorld()->SetWhichMapAreasLoaded(*this, 0, 9999);
    } else {
      GetMapWorld()->SetWhichMapAreasLoaded(*this, x68_curAreaId.Value(), 3);
    }
    x4_phase = kP_LoadingMapAreas;
  }
  case kP_LoadingMapAreas: {
    if (x28_mapWorld->GetObject()->IsMapAreasStreaming()) {
      return false;
    }
    x4_phase = kP_LoadingSkyBox;
  }
  case kP_LoadingSkyBox: {
    x70_26_skyboxActive = true;
    x70_27_skyboxVisible = false;
    if (x94_skyboxWorld) {
      if (!x94_skyboxWorld->TryCache()) {
        return false;
      }
      CModel* skybox = x94_skyboxWorld->GetObject();
      skybox->Touch(0);
      if (!skybox->IsLoaded(0)) {
        return false;
      }
      xa4_skyboxWorldLoaded = TLockedToken< CModel >(*x94_skyboxWorld);
    }
    for (AUTO(it, x74_soundGroupData.begin()); it != x74_soundGroupData.end(); ++it) {
      if (it->x1c_groupData) {
        it->x1c_groupData->Lock();
      }
    }
    x4_phase = kP_LoadingSoundGroups;
  }
  case kP_LoadingSoundGroups: {
    bool allLoaded = true;
    for (AUTO(it, x74_soundGroupData.begin()); it != x74_soundGroupData.end(); ++it) {
      if (it->x1c_groupData) {
        if (it->x1c_groupData->IsLoaded()) {
          if (!it->x8_25_loaded) {
            LoadSoundGroup(it->x0_groupId, it->x4_agscId, *it);
          }
        } else {
          allLoaded = false;
        }
      }
    }
    if (!allLoaded) {
      return false;
    }
    LoadSoundGroups();
    x4_phase = kP_Done;
  }
  case kP_Done:
    return true;
  default:
    break;
  }
  return false;
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

void CWorld::TravelToArea(const TAreaId& aid, CStateManager& mgr, EAreaTravelType travelType) {
  if (aid.Value() < 0 || aid.Value() >= x18_areas.size())
    return;
  x70_24_currentAreaNeedsAllocation = false;
  x68_curAreaId = aid;
  CGameArea* toDeallocateAreas = x48_chainHeads[0];
  while (toDeallocateAreas) {
    if (toDeallocateAreas->Invalidate(&mgr)) {
      MoveToChain(toDeallocateAreas, kC_Deallocated);
      break;
    }
    toDeallocateAreas = toDeallocateAreas->GetNext();
  }

  CGameArea* aliveAreas = x48_chainHeads[3];
  while (aliveAreas) {
    CGameArea* aliveArea = aliveAreas;
    aliveAreas = aliveAreas->GetNext();
    MoveToChain(aliveArea, kC_AliveJudgement);
  }
  CGameArea* loadingAreas = x48_chainHeads[2];
  while (loadingAreas) {
    CGameArea* loadingArea = loadingAreas;
    loadingAreas = loadingAreas->GetNext();
    MoveToChain(loadingArea, kC_ToDeallocate);
  }

  CGameArea* const area = x18_areas[aid.Value()].get();
  if (area->GetCurChain() != kC_AliveJudgement)
    x70_24_currentAreaNeedsAllocation = true;
  area->Validate(mgr);
  MoveToChain(area, kC_Alive);
  area->SetOcclusionState(CGameArea::kOS_Visible);

  bool otherLoading = false;
  CGameArea* otherLoadArea = nullptr;
  if (travelType == kATT_LoadAdjacent) {
    for (int i = 0; i < area->GetDockCount(); ++i) {
      const CGameArea::Dock& dock = area->GetDock(i);
      const int dockRefCount = dock.GetDockRefs().size();
      for (int i = 0; i < dockRefCount; ++i) {
        if (!dock.ShouldLoadOtherArea(i))
          continue;
        CGameArea* cArea = Area(dock.GetConnectedAreaId(i));
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
  int toStreamCount = 0;
  CGameArea* judgementAreas = x48_chainHeads[4];
  while (judgementAreas) {
    CGameArea* judgementArea = judgementAreas;
    judgementAreas = judgementArea->GetNext();
    MoveToChain(judgementArea, kC_ToDeallocate);
  }

  toDeallocateAreas = x48_chainHeads[0];
  while (toDeallocateAreas) {
    toDeallocateAreas->RemoveStaticGeometry();
    toDeallocateAreas = toDeallocateAreas->GetNext();
    ++toStreamCount;
  }

  if (!toStreamCount && otherLoadArea && !x70_25_loadPaused)
    otherLoadArea->StartStreamIn(mgr);

  MapWorld()->SetWhichMapAreasLoaded(*this, aid.Value(), 3);
}

void CWorld::MoveToChain(CGameArea* area, EChain chain) {
  if (area->GetCurChain() == chain) {
    return;
  }

  if (area->GetCurChain() != kC_Invalid) {
    CGameArea*& head = x48_chainHeads[area->GetCurChain()];
    if (head == area) {
      head = area->GetNext();
    }
  }

  CGameArea*& newHead = x48_chainHeads[chain];
  area->SetChain(newHead, chain);
  newHead = area;
}

void CWorld::LoadSoundGroups() {
  rstl::vector< CAssetId > songAssets = gpTweakManager->GetSongAssetsInWorld(IGetWorldAssetId());
  if (songAssets.size() > 0) {
    x74_soundGroupData.reserve(x74_soundGroupData.size() + songAssets.size());
    for (AUTO(it, songAssets.begin()); it != songAssets.end(); ++it) {
      TToken< CMidiManager::CMidiData > token = gpSimplePool->GetObj(SObjectTag('CSNG', *it));
      x74_soundGroupData.push_back(
          CSoundGroupData(token.GetT()->GetGroupId(), token.GetT()->GetAGSCAssetId()));
    }
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

CDummyWorld::CDummyWorld(CAssetId mlvlId, const bool loadMap)
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
  const SObjectTag mlvl('MLVL', mlvlId);
  x38_bufSz = gpResourceFactory->ResourceSize(mlvl);
  x34_loadBuf = static_cast< char* >(CMemory::Alloc(x38_bufSz, IAllocator::kHI_RoundUpLen));
  x30_loadToken = gpResourceFactory->GetResLoader().LoadResourceAsync(mlvl, x34_loadBuf.get());
}

CDummyWorld::~CDummyWorld() {}

bool CDummyWorld::ICheckWorldComplete() {
  switch (x8_phase) {
  case kP_Loading: {
    if (!x30_loadToken->IsComplete()) {
      return false;
    }

    CMemoryInStream r(x34_loadBuf.get(), x38_bufSz);
    uint magic = r.ReadLong();
    int version = r.Get< int >();
    x10_strgId = r.Get< CAssetId >();

    if (static_cast< uint >(version) >= 15) {
      x14_savwId = r.Get< CAssetId >();
    }
    if (static_cast< uint >(version) >= 12) {
      uint sky = r.ReadLong();
    }
    if (static_cast< uint >(version) >= 17) {
      rstl::vector< CRelay > relay(r);
    }

    int areaCount = r.Get< int >();
    uint unk = r.ReadLong();

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

    if (static_cast< uint >(version) > 10) {
      int audioGroupCount = r.ReadLong();
      for (int i = 0; i < audioGroupCount; ++i) {
        r.ReadLong();
        r.ReadLong();
      }
    }

    if (static_cast< uint >(version) > 12) {
      rstl::string s(r);
    }

    CWorldLayers::ReadWorldLayers(r, version, xc_mlvlId);

    x30_loadToken = nullptr;
    x34_loadBuf = nullptr;
    x38_bufSz = 0;

    if (!x4_loadMap) {
      x8_phase = kP_Done;
      break;
    }
    x8_phase = kP_LoadingMap;
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
    int areaCount = x18_areas.size();
    for (int i = 0; i < areaCount; ++i) {
      if (IGetAreaAlways(TAreaId(i))->IGetAreaAssetId() == id) {
        return TAreaId(i);
      }
    }
  }
#if NONMATCHING
  return kInvalidAreaId;
#else
  return TAreaId(-1);
#endif
}

rstl::string CDummyWorld::IGetDefaultAudioTrack() const { return rstl::string_l(""); }

int CDummyWorld::IGetAreaCount() const { return x18_areas.size(); }

void CWorld::TouchSky() const {
  if (xa4_skyboxWorldLoaded) {
    (*xa4_skyboxWorldLoaded)->Touch(0);
  }
  if (xb4_skyboxOverride) {
    (*xb4_skyboxOverride)->Touch(0);
  }
}

void CWorld::Update(float dt) {
  xc4_neededFx = kEFX_None;
  bool needsSky = false;
  bool skyVisible = false;
  int areaCount = 0;
  CAssetId overrideSkyId = kInvalidAssetId;

  for (CGameArea::CChainIterator it = ChainHead(kC_Alive); it != skGlobalNonConstEnd;
       ++it, ++areaCount) {
    it->AliveUpdate(dt);
    if (it->DoesAreaNeedSkyNow()) {
      const CScriptAreaAttributes* attrs = it->GetPostConstructed()->x10d8_areaAttributes;
      if (attrs && attrs->GetSkyModel() != kInvalidAssetId) {
        overrideSkyId = attrs->GetSkyModel();
      }
      needsSky = true;
      if (it->GetOcclusionState() == CGameArea::kOS_Visible) {
        skyVisible = true;
      }
    }
    EEnvFxType envFx = it->DoesAreaNeedEnvFx();
    if (envFx != kEFX_None) {
      xc4_neededFx = envFx;
    }
  }

  if (areaCount == 0) {
    return;
  }
  if (overrideSkyId != kInvalidAssetId && needsSky) {
    x70_26_skyboxActive = true;
    x70_27_skyboxVisible = skyVisible;
    xb4_skyboxOverride =
        TLockedToken< CModel >(gpSimplePool->GetObj(SObjectTag('CMDL', overrideSkyId)));
    xa4_skyboxWorldLoaded = rstl::optional_object_null();
    if (x94_skyboxWorld) {
      x94_skyboxWorld->Unlock();
    }
  } else {
    xb4_skyboxOverride = rstl::optional_object_null();
    if (!x94_skyboxWorld) {
      x70_26_skyboxActive = false;
      x70_27_skyboxVisible = false;
    } else if (!needsSky) {
      xa4_skyboxWorldLoaded = rstl::optional_object_null();
      x94_skyboxWorld->Unlock();
      x70_26_skyboxActive = false;
      x70_27_skyboxVisible = false;
    } else {
      if (!xa4_skyboxWorldLoaded) {
        x94_skyboxWorld->Lock();
        if (x94_skyboxWorld->TryCache()) {
          CModel* skybox = x94_skyboxWorld->GetObject();
          skybox->Touch(0);
          if (skybox->IsLoaded(0)) {
            xa4_skyboxWorldLoaded = TLockedToken< CModel >(*x94_skyboxWorld);
          }
        }
      }
      x70_26_skyboxActive = true;
      x70_27_skyboxVisible = skyVisible;
    }
  }
}

void CWorld::PreRender() {
  for (CGameArea::CChainIterator it = ChainHead(kC_Alive); it != skGlobalNonConstEnd; ++it) {
    it->PreRender();
  }
}

void CWorld::DrawSky(const CTransform4f& xf) const {
  if ((xa4_skyboxWorldLoaded || xb4_skyboxOverride) && x70_27_skyboxVisible) {
    CGraphics::DisableAllLights();
    gpRender->SetModelMatrix(xf);
    gpRender->SetAmbientColor(CColor::White());
    CGraphics::SetDepthRange(0.999f, 1.f);
    (*(xb4_skyboxOverride ? xb4_skyboxOverride : xa4_skyboxWorldLoaded))
        ->Draw(CModelFlags::Normal().DepthCompareUpdate(true, false));
    CGraphics::SetDepthRange(0.125f, 1.f);
  }
}

bool CWorld::AreSkyNeedsMet() const {
  if (x70_26_skyboxActive) {
    if (xb4_skyboxOverride) {
      return (*xb4_skyboxOverride)->IsLoaded(0);
    }
    if (xa4_skyboxWorldLoaded) {
      return (*xa4_skyboxWorldLoaded)->IsLoaded(0);
    }
    return false;
  }
  return true;
}

TAreaId CWorld::GetAreaId(CAssetId assetId) const {
  TAreaId result(-1);
  if (assetId != kInvalidAssetId) {
    int areaCount = x18_areas.size();
    for (int i = 0; i < areaCount; ++i) {
      if (assetId == GetArea(TAreaId(i))->GetAreaAssetId()) {
        result = TAreaId(i);
        break;
      }
    }
  }
  return result;
}

TAreaId CWorld::IGetAreaId(CAssetId assetId) const { return GetAreaId(assetId); }

TAreaId CWorld::GetAreaIdForSaveId(uint saveId) const {
  TAreaId result(-1);
  if (saveId != kInvalidAssetId) {
    int areaCount = x18_areas.size();
    for (int i = 0; i < areaCount; ++i) {
      if (saveId == GetArea(TAreaId(i))->GetAreaSaveId()) {
        result = TAreaId(i);
        break;
      }
    }
  }
  return result;
}

void CWorld::SetLoadPauseState(bool paused) {
  for (CGameArea::CConstChainIterator it = GetChainHead(kC_Loading); skGlobalEnd != it; ++it) {
    const_cast< CGameArea& >(*it).SetLoadPauseState(paused);
  }
  x70_25_loadPaused = paused;
}

void CWorld::MoveAreaToChain3(TAreaId aid) { MoveToChain(Area(aid), kC_Alive); }

bool CWorld::HasGlobalSound(ushort soundId) const {
  for (AUTO(it, xc8_globalSfxHandles.begin()); it != xc8_globalSfxHandles.end(); ++it) {
    if (it->first == soundId) {
      return true;
    }
  }
  return false;
}

void CWorld::AddGlobalSound(ushort soundId, CSfxHandle handle) {
  if (xc8_globalSfxHandles.size() >= xc8_globalSfxHandles.capacity()) {
    return;
  }
  xc8_globalSfxHandles.push_back(rstl::pair< ushort, CSfxHandle >(soundId, handle));
}

void CWorld::StopGlobalSound(ushort soundId) {
  for (AUTO(it, xc8_globalSfxHandles.begin()); it != xc8_globalSfxHandles.end(); ++it) {
    if (it->first == soundId) {
      CSfxManager::RemoveEmitter(it->second);
      xc8_globalSfxHandles.erase(it);
      return;
    }
  }
}

void CWorld::StopSounds() {
  for (AUTO(it, xc8_globalSfxHandles.begin()); it != xc8_globalSfxHandles.end(); ++it) {
    CSfxManager::RemoveEmitter(it->second);
  }
  xc8_globalSfxHandles.clear();
}

void CWorld::CyclePauseState() {
  if (!x70_25_loadPaused) {
    SetLoadPauseState(true);
    SetLoadPauseState(false);
  }
}
