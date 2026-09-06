#ifndef _CFBSTREAMEDANIMREADER
#define _CFBSTREAMEDANIMREADER

#include "Kyoto/Animation/CAllFormatsAnimSource.hpp"
#include "Kyoto/Animation/CAnimSourceReaderBase.hpp"

class CMemoryInputToBitLevelLoader;
template < typename T >
class CBitLevelLoader;

class CFBStreamedAnimReaderTotals {
public:
  CFBStreamedAnimReaderTotals(const CFBStreamedCompression& source);
  ~CFBStreamedAnimReaderTotals();
  void CalculateDown();
  void IncrementInto(CBitLevelLoader< CMemoryInputToBitLevelLoader >& loader,
                     const CFBStreamedCompression& source, CFBStreamedAnimReaderTotals& out);
  const CVector3f& GetVector(uint index) const {
    uint offset = index * 8 + 4;
    return *reinterpret_cast< const CVector3f* >(x10_computedFloats + offset);
  }

private:
  uchar* x0_buffer;
  short* x4_cumulativeInts;
  uchar* x8_hasTrans;
  ushort* xc_segIds;
  float* x10_computedFloats;
  uint x14_rotDiv;
  float x18_transMult;
  uint x1c_curKey;
  bool x20_calculated;
  uint x24_boneChanCount;
};
CHECK_SIZEOF(CFBStreamedAnimReaderTotals, 0x28)

class CFBKeyFrameReductionPerChannel_HeaderForAll;
class CTimeRemainderAndFraction;
class CFBFullBodyAspectsForStream {
public:
  CFBFullBodyAspectsForStream(const CFBKeyFrameReductionPerChannel_HeaderForAll& header,
                              const CTimeRemainderAndFraction& time, const CCharAnimTime& duration);
  void SetTime(const CTimeRemainderAndFraction& time);

private:
  const CFBKeyFrameReductionPerChannel_HeaderForAll* x0_header;
  uint x4_priorFrame;
  uint x8_nextFrame;
  uint xc_lastFrame;
  float x10_sampleTime;
  float x14_t;
  uint x18_priorKey;
  uint x1c_nextKey;
};
CHECK_SIZEOF(CFBFullBodyAspectsForStream, 0x20)

class CFBStreamedPairOfTotals {
public:
  CFBStreamedPairOfTotals(const TSubAnimTypeToken< CFBStreamedCompression >& source);
  ~CFBStreamedPairOfTotals();

private:
  TSubAnimTypeToken< CFBStreamedCompression > x0_source;
  bool x10_nextSel;
  CFBStreamedAnimReaderTotals x14_a;
  CFBStreamedAnimReaderTotals x3c_b;
  CFBFullBodyAspectsForStream x64_aspects;
  uint x84_curKey;
};
CHECK_SIZEOF(CFBStreamedPairOfTotals, 0x88)

class CMemoryInputToBitLevelLoader {
  friend class CBitLevelLoader< CMemoryInputToBitLevelLoader >;

public:
  CMemoryInputToBitLevelLoader(const uint* data) : x0_data(data - 1) {}

private:
  const uint* x0_data;
};
CHECK_SIZEOF(CMemoryInputToBitLevelLoader, 0x4)

template < typename T >
class CBitLevelLoader {
public:
  CBitLevelLoader(T& input) : x0_input(&input), x4_word(Input(input)), x8_bit(0) {}

private:
  static uint Input(T& input);

  T* x0_input;
  uint x4_word;
  uint x8_bit;
};

template <>
inline uint
CBitLevelLoader< CMemoryInputToBitLevelLoader >::Input(CMemoryInputToBitLevelLoader& input) {
  return *++input.x0_data;
}

class CSegIdToIndexConverter {
public:
  CSegIdToIndexConverter(const CFBStreamedAnimReaderTotals& totals);

private:
  int x0_indices[100];
};
CHECK_SIZEOF(CSegIdToIndexConverter, 0x190)

class CFBStreamedAnimReader : public CAnimSourceReaderBase {
public:
  ~CFBStreamedAnimReader() override;
  CAdvancementResults VAdvanceView(const CCharAnimTime& time) override;
  CCharAnimTime VGetTimeRemaining() const override;
  CSteadyStateAnimInfo VGetSteadyStateAnimInfo() const override;
  bool VHasOffset(const CSegId& seg) const override;
  CVector3f VGetOffset(const CSegId& seg) const override;
  CQuaternion VGetRotation(const CSegId& seg) const override;
  void VGetSegStatementSet(const CSegIdList& list, CSegStatementSet& setOut) const override;
  void VGetSegStatementSet(const CSegIdList& list, CSegStatementSet& setOut,
                           const CCharAnimTime& time) const override;
  rstl::ownership_transfer< IAnimReader > VClone() const override;
  void VSetPhase(float phase) override;
  CAdvancementResults VGetAdvancementResults(const CCharAnimTime& a,
                                             const CCharAnimTime& b) const override;
  virtual bool VSupportsReverseView() const;
  virtual CAdvancementResults VReverseView(const CCharAnimTime& time);

  CFBStreamedAnimReader(const TSubAnimTypeToken< CFBStreamedCompression >& source,
                        CCharAnimTime time);

private:
  TSubAnimTypeToken< CFBStreamedCompression > x54_source;
  CSteadyStateAnimInfo x64_steadyStateInfo;
  mutable CFBStreamedPairOfTotals x7c_totals;
  mutable CMemoryInputToBitLevelLoader x104_input;
  mutable CBitLevelLoader< CMemoryInputToBitLevelLoader > x108_bitLoader;
  CSegIdToIndexConverter x114_segIdToIndex;
};
CHECK_SIZEOF(CFBStreamedAnimReader, 0x2a4)

#endif // _CFBSTREAMEDANIMREADER
