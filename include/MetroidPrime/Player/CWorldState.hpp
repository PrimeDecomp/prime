#ifndef _CWORLDSTATE
#define _CWORLDSTATE

#include "Kyoto/SObjectTag.hpp"
#include "MetroidPrime/TGameTypes.hpp"
#include "MetroidPrime/CMapWorldInfo.hpp"
#include "MetroidPrime/CScriptMailbox.hpp"
#include "MetroidPrime/CScriptLayerManager.hpp"
#include "rstl/rc_ptr.hpp"

class CWorldState {
public:
  explicit CWorldState(CAssetId worldId);
  CWorldState(CInputStream& in, CAssetId worldId, const CWorldSaveGameInfo& saveWorld);
  void PutTo(COutputStream& out, CWorldSaveGameInfo& saveWorld);

  rstl::ncrc_ptr< CScriptLayerManager >& GetLayerState();
  rstl::ncrc_ptr< CScriptMailbox >& Mailbox();
  CAssetId GetWorldAssetId() const;
  CAssetId GetDesiredAreaAssetId() const;
  TAreaId GetCurrentArea() const;
  void SetDesiredAreaAssetId(CAssetId id);
  void SetAreaId(TAreaId id);
  rstl::ncrc_ptr< CMapWorldInfo >& MapWorldInfo();
  rstl::rc_ptr< CMapWorldInfo > GetMapWorldInfo() const;

private:
  CAssetId x0_worldId;
  TAreaId x4_areaId;
  rstl::ncrc_ptr< CScriptMailbox > x8_mailbox;
  rstl::ncrc_ptr< CMapWorldInfo > xc_mapWorldInfo;
  CAssetId x10_desiredAreaAssetId;
  rstl::ncrc_ptr< CScriptLayerManager > x14_layerState;
};
CHECK_SIZEOF(CWorldState, 0x18)

#endif // _CWORLDSTATE
