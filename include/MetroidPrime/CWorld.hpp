#ifndef _CWORLD
#define _CWORLD

#include "types.h"

#include "MetroidPrime/CGameArea.hpp"
#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/IObjectStore.hpp"

#include "rstl/string.hpp"

class CMapWorld;
class CModel;
class IGameArea;

class IWorld {
public:
  virtual ~IWorld();
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

class CGameArea;
class CRelay;
class CSoundGroupData;
class IDvdRequest;
class IFactory;

// TODO move?
enum EEnvFxType {
  kEFX_None,
  kEFX_Snow,
  kEFX_Rain,
  kEFX_UnderwaterFlake,
};

class CWorld : public IWorld {
public:
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

  const CGameArea& GetAreaAlways(TAreaId id) const { return *x18_areas[id.Value()]; }
  const CGameArea* GetArea(TAreaId id) const { return x18_areas[id.Value()].get(); }
  CGameArea* Area(TAreaId id) { return x18_areas[id.Value()].get(); }
  bool IsAreaValid(TAreaId id) const { return x18_areas[id.Value()]->IsLoaded(); }
  CAssetId GetWorldAssetId() const { return x8_mlvlId; }
  TAreaId GetAreaIdForSaveId(int saveId) const;

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
  CMapWorld* x28_mapWorld;
  rstl::vector< CRelay > x2c_relays;
  rstl::rc_ptr< IDvdRequest > x3c_loadToken;
  rstl::single_ptr< uchar > x40_loadBuf;
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

#endif // _CWORLD
