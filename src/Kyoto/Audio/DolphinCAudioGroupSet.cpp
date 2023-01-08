#include "Kyoto/Audio/CAudioGroupSet.hpp"

#include "Kyoto/Audio/CAudioSys.hpp"
#include "Kyoto/Streams/CMemoryInStream.hpp"

#include "Kyoto/CFactoryMgr.hpp"

CAudioGroupSet::CAudioGroupSet(const TLockedToken< CAudioGrpSetLoc >& group)
: x0_baseDir(group->GetBaseDirName())
, x10_groupSetName(group->GetGroupSetName())
, x10_groupSetTok(group) {}

CAudioGroupSet::~CAudioGroupSet() {}

void CAudioGroupSet::Reload() {}

void CAudioGroupSet::FreeSampleBuffer() {}

CAudioGrpSetLoc::CAudioGrpSetLoc(const rstl::auto_ptr< uchar >& data, int length)
: x0_data(data.get()), x30_(0), x34_(0), x38_(0), x3c_(0), x40_(0) {
  int __n;
  {
    CMemoryInStream in(x0_data.get(), length);
    x10_baseDirName = rstl::string(in);
    x20_groupSetName = rstl::string(in);
    __n = in.ReadLong();
  }
  CAudioSys::GetVerbose();
}

template <>
CFactoryFnReturn::CFactoryFnReturn(CAudioGrpSetLoc* ptr)
: obj(TToken< CAudioGrpSetLoc >::GetIObjObjectFor(rstl::auto_ptr< CAudioGrpSetLoc >(ptr))
          .release()) {}

CFactoryFnReturn FAudioGroupSetLocDataFactory(const SObjectTag& tag,
                                              const rstl::auto_ptr< uchar >& data, int length,
                                              const CVParamTransfer& xfer) {
  return new CAudioGrpSetLoc(data, length);
}
