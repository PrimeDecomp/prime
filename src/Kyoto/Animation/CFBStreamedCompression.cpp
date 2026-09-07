#include "Kyoto/Animation/CFBStreamedCompression.hpp"

#include "Kyoto/Animation/CAnimPOIData.hpp"
#include "Kyoto/Animation/CFBStreamedAnimReader.hpp"
#include "Kyoto/IObjectStore.hpp"
#include "Kyoto/Math/CloseEnough.hpp"
#include "Kyoto/SObjectTag.hpp"

rstl::auto_ptr< uint > CFBStreamedCompression::GetRotationsAndOffsets(uint words,
                                                                      CInputStream& in) {
  rstl::auto_ptr< uint > data(rs_new uint[words]);
  CStandardMultiFormatHeader* mainHeader =
      reinterpret_cast< CStandardMultiFormatHeader* >(data.get());
  new (mainHeader) CStandardMultiFormatHeader(in);
  CFBStreamedCompressionTimeHeader* timeHeader = const_cast< CFBStreamedCompressionTimeHeader* >(
      static_cast< const CFBStreamedCompressionTimeHeader* >(mainHeader->AfterEnd()));
  new (timeHeader) CFBStreamedCompressionTimeHeader(in);
  void* channelAddress = const_cast< void* >(timeHeader->AfterEnd());
  in.Get< uint >();
  CFBStreamedPerChannelHeaderList* channels =
      static_cast< CFBStreamedPerChannelHeaderList* >(channelAddress);
  new (channels) CFBStreamedPerChannelHeaderList(in);
  const CFBStreamedPerChannelHeader& first = *channels->begin();
  const uchar* bytes = channels->AfterEnd();
  uint* bits = const_cast< uint* >(reinterpret_cast< const uint* >(bytes));
  uint wordCount = static_cast< uint >(
      static_cast< float >(
          channels->GetSumOfBitCounts() * first.GetRotationBitStorage().GetWidth() + 31) /
      32.f);
  for (uint i = 0; i < wordCount; ++i) {
    *bits++ = in.Get< uint >();
  }
  return data;
}

CFBStreamedCompression::CFBStreamedCompression(CInputStream& in, IObjectStore& store)
: x0_scratchSize(in.Get< uint >())
, x4_evnt(in.Get< uint >())
, x8_evntToken(nullptr)
, xc_rotsAndOffs(GetRotationsAndOffsets(x0_scratchSize / 4 + 1, in).release())
, x14_rootOffset(0.f, 0.f, 0.f) {
  if (x4_evnt != 0) {
    x8_evntToken = rs_new TLockedToken< CAnimPOIData >(store.GetObj(SObjectTag('EVNT', x4_evnt)));
  }

  const CFBStreamedCompression& source = *this;
  const CStandardMultiFormatHeader& mainHeader = source.MainHeader();
  const CFBStreamedCompressionTimeHeader& timeHeader = TimeHeader(mainHeader);
  const CFBStreamedPerChannelHeaderList& channels = GetPerChannelHeaderList(timeHeader);
  const CFBStreamedPerChannelHeader* channel =
      reinterpret_cast< const CFBStreamedPerChannelHeader* >(channels.GetFirstAddress());
  const uint* bytes = GetBytes(channels);
  uint keyframes = GetNumKeyframes();
  CMemoryInputToBitLevelLoader input(bytes);
  CBitLevelLoader< CMemoryInputToBitLevelLoader > loader(input);
  uint rootIndex = 0;
  for (int remaining = channels.size(); remaining != 0; --remaining) {
    if (channel->GetSegId() == CSegId::Root()) {
      break;
    }
    ++rootIndex;
    channel = channel->AfterEnd();
  }

  CFBStreamedAnimReaderTotals totals(source);
  totals.CalculateDown();
  CVector3f previous = totals.GetVector(rootIndex);
  float distance = 0.f;
  for (uint i = 0; i < keyframes; ++i) {
    totals.IncrementInto(loader, source, totals);
    totals.CalculateDown();
    CVector3f current = totals.GetVector(rootIndex);
    CVector3f difference = current - previous;
    previous = current;
    float delta = difference.Magnitude();
    if (!close_enough(delta, 0.f)) {
      distance += delta;
    }
  }
  x10_averageVelocity = distance / source.GetAnimationDuration().GetSeconds();
}

CFBStreamedCompression::~CFBStreamedCompression() {}

CCharAnimTime CFBStreamedCompression::GetAnimationDuration() const {
  return MainHeader().GetMaxTime();
}
