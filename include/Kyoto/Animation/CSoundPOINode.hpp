#ifndef _CSOUNDPOINODE
#define _CSOUNDPOINODE

#include "Kyoto/Animation/CPOINode.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

class CSoundPOINode : public CPOINode {
public:
  CSoundPOINode(rstl::string name = "", ushort type = kPT_Sound,
                const CCharAnimTime& time = CCharAnimTime(), int index = -1, bool unique = false,
                float weight = 1.f, int charIdx = -1, int flags = 0, int sfxId = 0,
                float fallOff = 0.f, float maxDist = 0.f)
  : CPOINode(name, type, time, index, unique, weight, charIdx, flags)
  , x38_sfxId(sfxId)
  , x3c_falloff(fallOff)
  , x40_maxDist(maxDist) {}

  CSoundPOINode(CInputStream& in)
  : CPOINode(in)
  , x38_sfxId(in.ReadInt32())
  , x3c_falloff(in.ReadFloat())
  , x40_maxDist(in.ReadFloat()) {}

  uint GetSoundId() const { return x38_sfxId; }
  float GetFallOff() const { return x3c_falloff; }
  float GetMaxDistance() const { return x40_maxDist; }

  static CSoundPOINode CopyNodeMinusStartTime(const CSoundPOINode& node,
                                              const CCharAnimTime& startTime) {
    return CSoundPOINode(node.GetString(), node.GetPoiType(), node.GetTime() - startTime,
                         node.GetIndex(), node.GetSaveState(), node.GetWeight(),
                         node.GetCharacterIndex(), node.GetFlags(), node.GetSoundId(),
                         node.GetFallOff(), node.GetMaxDistance());
  }

private:
  uint x38_sfxId;
  float x3c_falloff;
  float x40_maxDist;
};

#endif // _CSOUNDPOINODE
