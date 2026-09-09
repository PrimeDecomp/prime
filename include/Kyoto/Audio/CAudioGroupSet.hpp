#ifndef _CAUDIOGROUPSET
#define _CAUDIOGROUPSET

#include "Kyoto/TToken.hpp"

#include "rstl/auto_ptr.hpp"
#include "rstl/optional_object.hpp"
#include "rstl/single_ptr.hpp"
#include "rstl/string.hpp"

#include "Kyoto/CResFactory.hpp"
#include "Kyoto/Streams/CMemoryInStream.hpp"

class CInputStream;
class CAudioGrpSetLoc {
public:
  CAudioGrpSetLoc(const rstl::auto_ptr< uchar >& data, int length);
  const rstl::string& GetBaseDirName() const { return x10_baseDirName; }
  const rstl::string& GetGroupSetName() const { return x20_groupSetName; }
  void FreeSampleBuffer();
  int AramUsage() const { return x30_aramSize; }
  void* GetPool() const { return x34_; }
  void* GetProject() const { return x38_; }
  void* GetSample() const { return x40_; }
  void* GetSampleDir() const { return x3c_; }

private:
  uint ReadHeader(void* ptr, uint len, uint& readPosition) {
    CMemoryInStream in(ptr, len);
    x10_baseDirName = rstl::string(in);
    x20_groupSetName = rstl::string(in);
    const uint ret = in.ReadLong();
    readPosition = in.GetReadPosition();
    return ret;
  }
  rstl::auto_ptr< uchar > x0_data;
  rstl::auto_ptr< uchar > x8_;
  rstl::string x10_baseDirName;
  rstl::string x20_groupSetName;
  int x30_aramSize;
  uchar* x34_;
  uchar* x38_;
  uchar* x3c_;
  uchar* x40_;
};

class CAudioGroupSet {
public:
  CAudioGroupSet(const TLockedToken< CAudioGrpSetLoc >& group);
  ~CAudioGroupSet();
  void Reload();
  void FreeSampleBuffer();
  void FreeAllBuffers();
  const rstl::string& GetName() const { return x10_groupSetName; }
  int AramUsage() { return x20_groupSetTok.data()->AramUsage(); }
  void* GetProjBuffer() const { return x20_groupSetTok.data()->GetProject(); }
  void* GetSampleBuffer() const { return x20_groupSetTok.data()->GetSample(); }
  void* GetSDirBuffer() const { return x20_groupSetTok.data()->GetSampleDir(); }
  void* GetPoolBuffer() const { return x20_groupSetTok.data()->GetPool(); }

private:
  rstl::string x0_baseDir;
  rstl::string x10_groupSetName;
  rstl::optional_object< TLockedToken< CAudioGrpSetLoc > > x20_groupSetTok;
};

CHECK_SIZEOF(CAudioGrpSetLoc, 0x44)
CHECK_SIZEOF(CAudioGroupSet, 0x30)

#endif // _CAUDIOGROUPSET
