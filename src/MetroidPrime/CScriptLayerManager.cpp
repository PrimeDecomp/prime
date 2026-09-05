#pragma inline_max_size(250)

#include "MetroidPrime/CScriptLayerManager.hpp"

#include "Kyoto/Streams/CInputStream.hpp"
#include "Kyoto/Streams/COutputStream.hpp"
#include "rstl/string.hpp"

static const rstl::string skEmptyString(rstl::string::literal_t(), "");

CScriptLayerManager::CScriptLayerManager() {}

CScriptLayerManager::CScriptLayerManager(CInputStream& in, const CWorldSaveGameInfo&) {
  const uint count = in.ReadBits(10);
  x10_saveLayers.reserve(count);
  for (uint i = 0; i < count; ++i) {
    x10_saveLayers.push_back(in.ReadBits(1) != 0);
  }
}

void CScriptLayerManager::PutTo(COutputStream& out) const {
  uint totalLayerCount = 0;
  const int areaCount = x0_areaLayers.size();
  for (int i = 0; i < areaCount; ++i) {
    totalLayerCount += GetAreaLayerCount(TAreaId(i)) - 1;
  }
  out.WriteBits(totalLayerCount, 10);
  for (int i = 0; i < areaCount; ++i) {
    int layerCount = GetAreaLayerCount(TAreaId(i));
    for (int l = 1; l < layerCount; ++l) {
      out.WriteBits(IsLayerActive(TAreaId(i), TLayerId(l)) ? 1 : 0, 1);
    }
  }
}

void CScriptLayerManager::SetLayerActive(TAreaId areaIdx, TLayerId layerIdx, bool active) {
  CWorldLayers::Area& area = x0_areaLayers[areaIdx.Value()];
  int layerId = layerIdx.Value();
  if (active) {
    area.m_layerBits |= 1 << layerId;
  } else {
    area.m_layerBits &= ~(1 << layerId);
  }
}

bool CScriptLayerManager::IsLayerActive(TAreaId areaIdx, TLayerId layerIdx) const {
  const u64& layerBits = x0_areaLayers[areaIdx.Value()].m_layerBits;
  return (layerBits & (1 << layerIdx.Value())) != 0;
}

void CScriptLayerManager::InitializeWorldLayers(const rstl::vector< CWorldLayers::Area >& layers) {
  if (!x0_areaLayers.empty()) {
    return;
  }

  x0_areaLayers = layers;
  if (x10_saveLayers.size() == 0) {
    return;
  }

  int bit = 0;
  const int areaCount = x0_areaLayers.size();
  for (int i = 0; i < areaCount; ++i) {
    int layerCount = GetAreaLayerCount(TAreaId(i));
    for (int l = 1; l < layerCount; ++l) {
      SetLayerActive(TAreaId(i), TLayerId(l), x10_saveLayers[bit++]);
    }
  }

  x10_saveLayers = rstl::bit_vector< rstl::rmemory_allocator >();
}

int CScriptLayerManager::GetAreaLayerCount(TAreaId areaId) const {
  return x0_areaLayers[areaId.Value()].m_layerCount;
}

const rstl::vector< CWorldLayers::Area >& CScriptLayerManager::GetAreaLayers() const {
  return x0_areaLayers;
}
