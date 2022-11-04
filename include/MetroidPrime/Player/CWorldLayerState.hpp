#ifndef _CWORLDLAYERSTATE
#define _CWORLDLAYERSTATE

#include "MetroidPrime/TGameTypes.hpp"

#include "rstl/vector.hpp"

class CBitStreamReader;
class CWorldSaveGameInfo;
class CMemoryStreamOut;

class CWorldLayers {
public:
  class Area {
  public:
    int m_startNameIdx;
    int m_layerCount;
    // u64 m_layerBits;
    uint m_layerBitsHi;
    uint m_layerBitsLo;
  };
};

class WordBitmap {
public:
  WordBitmap() : bitCount(0) {}

  int GetBitCount() const { return bitCount; }

  bool GetBit(int idx) const {
    int wordIdx = idx / 32;
    if (wordIdx >= words.size()) {
      return false;
    }
    int wordCur = idx % 32;
    return ((words[wordIdx] >> wordCur) & 0x1) != 0u;
  }

  void operator=(const WordBitmap&);

  void Clear() {
    words.clear();
    bitCount = 0;
  }

private:
  int bitCount;
  rstl::vector< uint > words;
};

class CWorldLayerState {
public:
  CWorldLayerState(CBitStreamReader&, const CWorldSaveGameInfo&);

  void PutTo(CMemoryStreamOut&);

  void SetLayerActive(const TAreaId& areaIdx, const int& layerIdx, bool active);
  bool IsLayerActive(const TAreaId& areaIdx, const int& layerIdx);

  void InitializeWorldLayers(const rstl::vector< CWorldLayers::Area >&);
  int GetAreaLayerCount(const TAreaId&);

private:
  rstl::vector< CWorldLayers::Area > x0_areaLayers;
  WordBitmap x10_saveLayers;
};

#endif // _CWORLDLAYERSTATE
