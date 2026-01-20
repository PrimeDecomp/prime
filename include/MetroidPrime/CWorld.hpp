#ifndef _CWORLD
#define _CWORLD

#include "Kyoto/SObjectTag.hpp"
#include "types.h"

#include "MetroidPrime/CGameArea.hpp"
#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Audio/CSfxHandle.hpp"
#include "Kyoto/IObjectStore.hpp"
#include "Kyoto/TToken.hpp"

#include "rstl/reserved_vector.hpp"
#include "rstl/string.hpp"
#include "rstl/vector.hpp"

class CAudioGroupSet;
class CDvdRequest;
class CGameArea;
class CMapWorld;
class CModel;
class CRelay;
class CStateManager;
class IGameArea;
class CResFactory;

class IWorld {
public:
  virtual ~IWorld() {}
  virtual CAssetId IGetWorldAssetId() const = 0;
  virtual CAssetId IGetStringTableAssetId() const = 0;
  virtual CAssetId IGetSaveWorldAssetId() const = 0;
  virtual const CMapWorld* IGetMapWorld() const = 0;
  virtual CMapWorld* IMapWorld() = 0;
  virtual const IGameArea* IGetAreaAlways(TAreaId id) const = 0;
  virtual TAreaId IGetCurrentAreaId() const = 0;
  virtual TAreaId IGetAreaId(CAssetId id) const = 0;
  virtual bool ICheckWorldComplete() = 0;
  virtual rstl::string IGetDefaultAudioTrack() const = 0;
  virtual int IGetAreaCount() const = 0;
};

class CRelay /* name? */ {
public:
  explicit CRelay(CInputStream& in);
  const TEditorId& GetRelayId() const { return x0_relay; }
  const TEditorId& GetTargetId() const { return x4_target; }
  const ushort& GetMessage() const { return x8_msg; }
  bool GetActive() const { return xa_active; }

  static rstl::vector< CRelay > ReadMemoryRelays(CInputStream& in); // name?

private:
  TEditorId x0_relay;
  TEditorId x4_target;
  ushort x8_msg;
  bool xa_active;
};

// TODO move?
enum EEnvFxType {
  kEFX_None,
  kEFX_Snow,
  kEFX_Rain,
  kEFX_UnderwaterFlake,
};

class CWorld final : public IWorld {
public:
  struct CSoundGroupData {
    int x0_groupId;
    CAssetId x4_agscId;
    bool x8_24_loadedIntoAram : 1;
    bool x8_25_loaded : 1;
    rstl::string xc_name;
    TCachedToken< CAudioGroupSet > x1c_groupData;

  public:
    CSoundGroupData(int grpId, CAssetId agsc);
  };

  enum EAreaTravelType {
    kATT_Zero,
    kATT_One,
  };

  enum EChain {
    kC_Invalid = -1,
    kC_ToDeallocate,
    kC_Deallocated,
    kC_Loading,
    kC_Alive,
    kC_AliveJudgement,
  };

  CWorld(IObjectStore& objStore, CResFactory& resFactory, CAssetId mlvlId);
  ~CWorld();
  CAssetId IGetWorldAssetId() const override;
  CAssetId IGetStringTableAssetId() const override;
  CAssetId IGetSaveWorldAssetId() const override;
  const CMapWorld* IGetMapWorld() const override;
  CMapWorld* IMapWorld() override;
  const IGameArea* IGetAreaAlways(TAreaId id) const override;
  TAreaId IGetCurrentAreaId() const override;
  TAreaId IGetAreaId(CAssetId id) const override;
  bool ICheckWorldComplete() override;
  rstl::string IGetDefaultAudioTrack() const override;
  int IGetAreaCount() const override;
  bool CheckWorldComplete(CStateManager* mgr, TAreaId aid, CAssetId mreaId);

  void SetLoadPauseState(bool);
  void TouchSky() const;
  void StopSounds();
  void UnloadSoundGroups();
  bool ScheduleAreaToLoad(CGameArea* area, CStateManager& mgr);
  void MoveToChain(CGameArea* area, EChain chain);
  void TravelToArea(TAreaId aid, CStateManager& mgr, EAreaTravelType type);
  CMapWorld* GetMapWorld() const;
  void LoadSoundGroups();
  void LoadSoundGroup(uchar groupId, CAssetId agscId, CSoundGroupData& data);

  const CGameArea& GetAreaAlways(const TAreaId id) const { return *x18_areas[id.Value()]; }
  CGameArea* Area(const TAreaId id) { return &*x18_areas[id.Value()]; }
  const CGameArea* GetArea(const TAreaId id) const { return &*x18_areas[id.Value()]; }
  bool IsAreaValid(const TAreaId id) const {
    return x18_areas[id.Value()]->IsLoaded();
  }
  CAssetId GetWorldAssetId() const { return x8_mlvlId; }
  TAreaId GetCurrentAreaId() const { return x68_curAreaId; }
  TAreaId GetAreaIdForSaveId(int saveId) const;
  const rstl::vector< CRelay >& GetRelays() const { return x2c_relays; }
  EEnvFxType GetNeededEnvFx() const { return xc4_neededFx; }

  static void PropogateAreaChain(CGameArea::EOcclusionState occlusionState, CGameArea* area,
                                 CWorld* world);

  CGameArea::CChainIterator ChainHead(EChain chain) const {
    return CGameArea::CChainIterator(x4c_chainHeads[size_t(chain)]);
  }

  CGameArea::CConstChainIterator GetChainHead(EChain chain) const {
    return CGameArea::CConstChainIterator(x4c_chainHeads[size_t(chain)]);
  }
  static CGameArea::CConstChainIterator GetAliveAreasEnd();
  void StopGlobalSound(ushort soundId);

  int GetNumAreas() const { return x18_areas.size(); }
  bool AreSkyNeedsMet() const;
  
  void SetAreaAttributes(const TAreaId aid, CScriptAreaAttributes* attr) {
    Area(aid)->SetAreaAttributes(attr);
  }
  

private:
  enum Phase {
    kP_Loading,
    kP_LoadingMap,
    kP_LoadingMapAreas,
    kP_LoadingSkyBox,
    kP_LoadingSoundGroups,
    kP_Done,
  };

  Phase x4_phase;
  CAssetId x8_mlvlId;
  CAssetId xc_strgId;
  CAssetId x10_savwId;
  rstl::vector< rstl::auto_ptr< CGameArea > > x18_areas;
  CAssetId x24_mapwId;
  rstl::single_ptr< TCachedToken< CMapWorld > > x28_mapWorld;
  rstl::vector< CRelay > x2c_relays;
  rstl::single_ptr< CDvdRequest > x3c_loadToken;
  rstl::single_ptr< char > x40_loadBuf;
  uint x44_bufSz;
  uint x48_chainCount;
  CGameArea* x4c_chainHeads[5];
  IObjectStore* x60_objectStore;
  IFactory* x64_resFactory;
  TAreaId x68_curAreaId;
  uint x6c_loadedAudioGrpCount;
  bool x70_24_currentAreaNeedsAllocation : 1;
  bool x70_25_loadPaused : 1;
  bool x70_26_skyboxActive : 1;
  bool x70_27_skyboxVisible : 1;
  rstl::vector< CSoundGroupData > x74_soundGroupData;
  rstl::string x84_defAudioTrack;
  rstl::optional_object< TLockedToken< CModel > > x94_skyboxWorld;
  rstl::optional_object< TLockedToken< CModel > > xa4_skyboxWorldLoaded;
  rstl::optional_object< TLockedToken< CModel > > xb4_skyboxOverride;
  EEnvFxType xc4_neededFx;
  rstl::reserved_vector< CSfxHandle, 10 > xc8_globalSfxHandles;
};
CHECK_SIZEOF(CWorld, 0xf4)

struct SWorldLayers /* name? */ {
  static SWorldLayers ReadWorldLayers(CInputStream& in, int version, CAssetId mlvlId);
};

class CDummyWorld : public IWorld {
  enum Phase {
    kP_Loading,
    kP_LoadingMap,
    kP_LoadingMapAreas,
    kP_Done,
  };

  bool x4_loadMap;
  Phase x8_phase;
  CAssetId xc_mlvlId;
  CAssetId x10_strgId;
  CAssetId x14_savwId;
  rstl::vector< rstl::auto_ptr< CDummyGameArea > > x18_areas;
  CAssetId x28_mapWorldId;
  rstl::single_ptr< TCachedToken< CMapWorld > > x2c_mapWorld;
  rstl::single_ptr< CDvdRequest > x30_loadToken;
  rstl::single_ptr< char > x34_loadBuf;
  uint x38_bufSz;
  TAreaId x3c_curAreaId;

public:
  CDummyWorld(CAssetId mlvlId, bool loadMap);
  ~CDummyWorld() override;
  CAssetId IGetWorldAssetId() const override;
  CAssetId IGetStringTableAssetId() const override;
  CAssetId IGetSaveWorldAssetId() const override;
  const CMapWorld* IGetMapWorld() const override;
  CMapWorld* IMapWorld() override;
  const IGameArea* IGetAreaAlways(TAreaId id) const override;
  TAreaId IGetCurrentAreaId() const override;
  TAreaId IGetAreaId(CAssetId id) const override;
  bool ICheckWorldComplete() override;
  rstl::string IGetDefaultAudioTrack() const override;
  int IGetAreaCount() const override;
};

#endif // _CWORLD
