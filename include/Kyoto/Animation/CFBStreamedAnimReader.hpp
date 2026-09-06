#ifndef _CFBSTREAMEDANIMREADER
#define _CFBSTREAMEDANIMREADER

#include "Kyoto/Animation/CAllFormatsAnimSource.hpp"
#include "Kyoto/Animation/CAnimSourceReaderBase.hpp"

class CFBStreamedAnimReaderTotals {
public:
  CFBStreamedAnimReaderTotals(const CFBStreamedCompression& source);
  ~CFBStreamedAnimReaderTotals();

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
public:
  CMemoryInputToBitLevelLoader(const uint* data);

private:
  const uint* x0_data;
};
CHECK_SIZEOF(CMemoryInputToBitLevelLoader, 0x4)

template < typename T >
class CBitLevelLoader {
public:
  CBitLevelLoader(T& input);

private:
  T& x0_input;
  uint x4_word;
  uint x8_bit;
};

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
