#include "Kyoto/Audio/CAudioGroupSet.hpp"
#include "Kyoto/Basics/CBasics.hpp"

#include "Kyoto/Audio/CAudioSys.hpp"

#include "Kyoto/Alloc/CMemory.hpp"
#include "rstl/auto_ptr.hpp"
#include <string.h>

CAudioGroupSet::CAudioGroupSet(const TLockedToken< CAudioGrpSetLoc >& group)
: mBaseDir(group->GetBaseDirName())
, mGroupSetName(group->GetGroupSetName())
, mGroupSetTok(group) {}

CAudioGroupSet::~CAudioGroupSet() {}

void CAudioGroupSet::Reload() {}

void CAudioGroupSet::FreeSampleBuffer() { mGroupSetTok.data()->FreeSampleBuffer(); }

CAudioGrpSetLoc::CAudioGrpSetLoc(const rstl::auto_ptr< uchar >& data, int length)
: mData(data.release())
, mAramSize(0)
, mPool(nullptr)
, mProject(nullptr)
, mSampleDir(nullptr)
, mSamples(nullptr) {
  uint readPosition;
  const uint poolSize = ReadHeader(data.get(), length, readPosition);
  CAudioSys::GetVerbose();

  const uint projectOffset = readPosition + poolSize;
#if TARGET_LITTLE_ENDIAN
  const uint projectSize = CBasics::SwapBytes(*reinterpret_cast< uint* >(data.get() + projectOffset));
#else
  const uint projectSize = *reinterpret_cast< uint* >(data.get() + projectOffset);
#endif
  CAudioSys::GetVerbose();

  const uint sampOffset = 4 + projectSize + projectOffset;
#if TARGET_LITTLE_ENDIAN
  const uint sampSize = CBasics::SwapBytes(*reinterpret_cast< uint* >(data.get() + sampOffset));
#else
  const uint sampSize = *reinterpret_cast< uint* >(data.get() + sampOffset);
#endif
  CAudioSys::GetVerbose();
  mAramSize = sampSize;

  const uint sdirOffset = 4 + sampOffset + sampSize;
#if TARGET_LITTLE_ENDIAN
  const uint sdirSize = CBasics::SwapBytes(*reinterpret_cast< uint* >(data.get() + sdirOffset));
#else
  const uint sdirSize = *reinterpret_cast< uint* >(data.get() + sdirOffset);
#endif
  CAudioSys::GetVerbose();

  mGroupData = rstl::auto_ptr< uchar >(static_cast< uchar* >(
      CMemory::Alloc(poolSize + projectSize + sdirSize + 8, IAllocator::kHI_RoundUpLen)));
  uchar* ptr = mData.get();
  mPool = mGroupData.get();
  memcpy(mPool, ptr + readPosition, poolSize);

  uint roundedPoolSize = ((poolSize + 3) & ~3);
  mProject = mGroupData.get() + roundedPoolSize;
  memcpy(mProject, ptr + (projectOffset + 4), projectSize);

  uint roundedProjectSize = ((projectSize + 3) & ~3);
  roundedProjectSize = roundedPoolSize + roundedProjectSize;
  mSampleDir = mGroupData.get() + roundedProjectSize;
  memcpy(mSampleDir, ptr + (sdirOffset + 4), sdirSize);
  mSamples = &ptr[sampOffset + 4];
}

void CAudioGrpSetLoc::FreeSampleBuffer() {
  mData = nullptr;
  mSamples = nullptr;
}

template <>
CFactoryFnReturn::CFactoryFnReturn(CAudioGrpSetLoc* ptr)
: obj(TToken< CAudioGrpSetLoc >::GetIObjObjectFor(rstl::auto_ptr< CAudioGrpSetLoc >(ptr))
          .release()) {}

const CFactoryFnReturn FAudioGroupSetLocDataFactory(const SObjectTag& tag,
                                                    const rstl::auto_ptr< uchar >& data, int length,
                                                    const CVParamTransfer& xfer) {
  return rs_new CAudioGrpSetLoc(data, length);
}
