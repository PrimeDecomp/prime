#ifndef _CPAKFILE_HPP
#define _CPAKFILE_HPP

#include "types.h"

#include "rstl/auto_ptr.hpp"
#include "rstl/string.hpp"

#include "CDvdFile.hpp"
#include "CResLoader.hpp"
#include "IObjectStore.hpp"

class CPakFile : CDvdFile {
public:
  bool IsWorldPak() const { return x28_26_worldPak; }
  void EnsureWorldPakReady();
  void sub_8036742c();

  rstl::vector< rstl::pair< rstl::string, SObjectTag > >& NameList() { return x54_nameList; }

private:
  bool x28_24_buildDepList : 1;
  bool x28_25_aramFile : 1;
  bool x28_26_worldPak : 1;
  bool x28_27_stashedInARAM : 1;
  int x2c_asyncLoadPhase;            // EAsyncPhase
  rstl::auto_ptr< void > x30_dvdReq; // IDvdRequest
  rstl::vector< u8 > x38_headerData;
  u32 x48_resTableOffset;
  u32 x4c_resTableCount;
  s32 x50_aramBase;
  rstl::vector< rstl::pair< rstl::string, SObjectTag > > x54_nameList;
  rstl::vector< CAssetId > x64_depList;
  rstl::vector< SResInfo > x74_resList;
  mutable s32 x84_currentSeek;
};

#endif
