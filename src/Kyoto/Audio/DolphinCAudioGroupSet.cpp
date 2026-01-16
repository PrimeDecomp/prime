#include "Kyoto/Audio/CAudioGroupSet.hpp"

#include "Kyoto/Audio/CAudioSys.hpp"

#include "Kyoto/Alloc/CMemory.hpp"
#include "rstl/auto_ptr.hpp"
#include <string.h>

CAudioGroupSet::CAudioGroupSet(const TLockedToken< CAudioGrpSetLoc >& group)
: x0_baseDir(group->GetBaseDirName())
, x10_groupSetName(group->GetGroupSetName())
, x20_groupSetTok(group) {}

CAudioGroupSet::~CAudioGroupSet() {}

void CAudioGroupSet::Reload() {}

void CAudioGroupSet::FreeSampleBuffer() { x20_groupSetTok.data()->FreeSampleBuffer(); }
CAudioGrpSetLoc::CAudioGrpSetLoc(const rstl::auto_ptr< uchar >& data, const int length)
: x0_data(data.release()), x30_aramSize(0), x34_(0), x38_(0), x3c_(0), x40_(0) {
  uint readPosition;
  const uint poolSize = ReadHeader(data.get(), length, readPosition);
  CAudioSys::GetVerbose();
  const uint projectOffset = readPosition + poolSize;
  const uint projectSize = *reinterpret_cast< uint* >(data.get() + projectOffset);
  CAudioSys::GetVerbose();
  const uint sampOffset = projectOffset + projectSize;
  const uint sampSize = *reinterpret_cast< uint* >(data.get() + sampOffset + 4);
  CAudioSys::GetVerbose();
  x30_aramSize = sampSize;
  const uint sdirOffset = sampOffset + sampSize;
  const uint sdirSize = *reinterpret_cast< uint* >(data.get() + sampOffset);
  CAudioSys::GetVerbose();

  x8_ = rstl::auto_ptr< uchar >(static_cast< uchar* >(
      CMemory::Alloc(poolSize + projectSize + sdirSize + 8, IAllocator::kHI_RoundUpLen)));
  uchar* ptr = x0_data.get();
  x34_ = x8_.get();
  memcpy(x34_, ptr + readPosition, poolSize);
  uint roundedPoolSize = ((poolSize + 3) & ~3);
  x38_ = x8_.get() + roundedPoolSize;
  memcpy(x38_, ptr + (projectOffset + 4), projectSize);
  uint roundedProjectSize = ((projectSize + 3) & ~3);
  roundedProjectSize += roundedPoolSize;
  x3c_ = x8_.get() + roundedProjectSize;
  memcpy(x3c_, ptr + (sdirOffset + 4), sdirSize);
  ptr += (projectOffset + projectSize);
  ptr += 4;
  x40_ = ptr;
}

void CAudioGrpSetLoc::FreeSampleBuffer() {
  x0_data = nullptr;
  x40_ = 0;
}

template <>
CFactoryFnReturn::CFactoryFnReturn(CAudioGrpSetLoc* ptr)
: obj(TToken< CAudioGrpSetLoc >::GetIObjObjectFor(rstl::auto_ptr< CAudioGrpSetLoc >(ptr))
          .release()) {}

CFactoryFnReturn FAudioGroupSetLocDataFactory(const SObjectTag& tag,
                                              const rstl::auto_ptr< uchar >& data, int length,
                                              const CVParamTransfer& xfer) {
  return rs_new CAudioGrpSetLoc(data, length);
}
