#include "MetroidPrime/Player/CWorldLayerState.hpp"

#include "Kyoto/Streams/CMemoryStreamOut.hpp"

CWorldLayerState::CWorldLayerState(CBitStreamReader&, const CWorldSaveGameInfo&) {}

void CWorldLayerState::PutTo(CMemoryStreamOut& out) {
  u32 totalLayerCount = 0;
  for (int i = 0; i < x0_areaLayers.size(); ++i) {
    TAreaId areaId(i);
    totalLayerCount += GetAreaLayerCount(areaId) - 1;
  }

  out.WriteBits(totalLayerCount, 10);

  for (int i = 0; i < x0_areaLayers.size(); ++i) {
    TAreaId areaId(i);
    int count = GetAreaLayerCount(areaId);
    for (int l = 1; l < count; ++l) {
      out.WriteBits(static_cast<uint>(IsLayerActive(areaId, l)), 1);
    }
  }
}

void CWorldLayerState::SetLayerActive(const TAreaId& areaIdx, const int& layerIdx, bool active) {
  CWorldLayers::Area& area = x0_areaLayers[areaIdx.Value()];
  int layerId = layerIdx;
  if (active) {
    u32 flag = 1 << layerId;
    // area.m_layerBits = area.m_layerBits | flag;
    area.m_layerBitsLo = area.m_layerBitsLo | flag;
    area.m_layerBitsHi = area.m_layerBitsHi | (flag >> 0x1f);
  } else {
    u32 flag = ~(1 << layerId);
    // area.m_layerBits = area.m_layerBits & flag;
    area.m_layerBitsLo = area.m_layerBitsLo & flag;
    area.m_layerBitsHi = area.m_layerBitsHi & (flag >> 0x1f);
  }
}

bool CWorldLayerState::IsLayerActive(const TAreaId& areaIdx, const int& layerIdx) {
  const uint* layerBits = &x0_areaLayers[areaIdx.Value()].m_layerBitsHi;
  u32 flag = 1 << layerIdx;
  return ((layerBits[1] & flag) | (layerBits[0] >> 0x1f)) != 0;
}

void WordBitmap::operator=(const WordBitmap& other) {
  bitCount = other.bitCount;
  words = other.words;
}

void CWorldLayerState::InitializeWorldLayers(const rstl::vector< CWorldLayers::Area >& layers) {
  if (!x0_areaLayers.empty()) {
    return;
  }

  x0_areaLayers = layers;
  if (x10_saveLayers.GetBitCount() == 0) {
    return;
  }

  uint a = 0;
  uint b = 0;
  for (int i = 0; i < x0_areaLayers.size(); ++i) {
    TAreaId areaId(i);
    int layerCount = GetAreaLayerCount(areaId);
    for (uint l = 1; l < layerCount; ++l) {
      SetLayerActive(areaId, l, x10_saveLayers.GetBit(b++));
    }
    ++a;
  }

  x10_saveLayers = WordBitmap();
}

int CWorldLayerState::GetAreaLayerCount(const TAreaId& areaId) {
  return x0_areaLayers[areaId.Value()].m_startNameIdx;
}
