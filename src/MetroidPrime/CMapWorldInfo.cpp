#include "MetroidPrime/CMapWorldInfo.hpp"

#include "MetroidPrime/CMemoryCard.hpp"
#include "MetroidPrime/Player/CWorldSaveGameInfo.hpp"

CMapWorldInfo::CMapWorldInfo() : mMapStationUsed(false) {}
CMapWorldInfo::CMapWorldInfo(CInputStream& in, const CWorldSaveGameInfo&, CAssetId worldResId) {}