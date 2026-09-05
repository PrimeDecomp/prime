#ifndef _CSAVEWORLDMEMORY
#define _CSAVEWORLDMEMORY

#include "types.h"

#include "Kyoto/TToken.hpp"
#include "MetroidPrime/CScriptLayerManager.hpp"
#include "MetroidPrime/TGameTypes.hpp"
#include "rstl/optional_object.hpp"
#include "rstl/vector.hpp"

class CStringTable;

class CSaveWorldMemory {
  friend class CMemoryCard;

public:
  CSaveWorldMemory()
  : x0_worldNameId(kInvalidAssetId)
  , x4_saveWorldId(kInvalidAssetId)
  , x8_areaCount(0) {}
  int GetAreaCount() const { return x8_areaCount; }
  const wchar_t* GetFrontEndName() const;

private:
  CAssetId x0_worldNameId;
  CAssetId x4_saveWorldId;
  int x8_areaCount;
  rstl::vector< uint > xc_areaIds;
  rstl::vector< CWorldLayers::Area > x1c_defaultLayerStates;
  rstl::optional_object< TCachedToken< CStringTable > > x2c_worldName;
  rstl::optional_object< CToken > x3c_saveWorld;
};
CHECK_SIZEOF(CSaveWorldMemory, 0x48)

#endif // _CSAVEWORLDMEMORY
