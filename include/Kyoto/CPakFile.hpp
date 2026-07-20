#ifndef _CPAKFILE
#define _CPAKFILE

#include "types.h"

#include "Kyoto/CDvdFile.hpp"
#include "Kyoto/SObjectTag.hpp"

#include "rstl/auto_ptr.hpp"
#include "rstl/string.hpp"

class CDvdRequest;

class CPakFile : public CDvdFile {
public:
  struct SResInfo {
    FourCC GetType() const;
    uint GetSize() const;
    bool IsCompressed() const;
    uint GetOffset() const;

    CAssetId x0_id;
    bool x4_compressed : 1;
    int x4_typeIdx; // CFactoryMgr::ETypeTable
    uint x5_offsetDiv32 : 27;
    uint x7_sizeDiv32 : 27;
  };
  CPakFile(const rstl::string& path, const bool a, const bool b);
  ~CPakFile();
  bool IsWorldPak() const { return x28_26_worldPak; }
  void EnsureWorldPakReady();
  void sub_8036742c();

  rstl::vector< rstl::pair< rstl::string, SObjectTag > >& NameList() { return x54_nameList; }

  void AsyncIdle();

  bool IsCompletelyLoaded() const { return x2c_asyncLoadPhase == 3; }
  bool IsARAMPak() const { return x28_25_aramFile; }
  bool IsStashedInARAM() const { return x28_27_stashedInARAM; }

  SResInfo* GetResInfo(CAssetId asset) const;
  SResInfo* GetResInfoForLoadPreferForward(const CAssetId asset) const;
  SResInfo* GetResInfoForLoadDirectionless(const CAssetId asset) const;
  CAssetId* GetResIdByName(const char* name) const;
  rstl::vector< CAssetId >* GetDepList() const;

  const rstl::vector< rstl::pair< rstl::string, SObjectTag > >& GetStringToObjectList() const {
    return x54_nameList;
  }

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
