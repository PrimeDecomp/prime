#ifndef _CPAKFILE
#define _CPAKFILE

#include "types.h"

#include "rstl/auto_ptr.hpp"
#include "rstl/string.hpp"

#include "Kyoto/CDvdFile.hpp"
#include "Kyoto/CResLoader.hpp"
#include "Kyoto/IObjectStore.hpp"

class CDvdRequest;

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
  int x2c_asyncLoadPhase; // EAsyncPhase
  rstl::auto_ptr< CDvdRequest > x30_dvdReq;
  rstl::vector< uchar > x38_headerData;
  uint x48_resTableOffset;
  uint x4c_resTableCount;
  int x50_aramBase;
  rstl::vector< rstl::pair< rstl::string, SObjectTag > > x54_nameList;
  rstl::vector< CAssetId > x64_depList;
  rstl::vector< SResInfo > x74_resList;
  mutable int x84_currentSeek;
};

#endif // _CPAKFILE
