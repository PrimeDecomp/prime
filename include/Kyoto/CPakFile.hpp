#ifndef _CPAKFILE
#define _CPAKFILE

#include "types.h"

#include "Kyoto/CDvdFile.hpp"
#include "Kyoto/SObjectTag.hpp"

#include "rstl/auto_ptr.hpp"
#include "rstl/pair.hpp"
#include "rstl/string.hpp"
#include "rstl/vector.hpp"
#include "rstl/aligned_allocator.hpp"

class CDvdRequest;
class CMemoryInStream;

class CPakFile : public CDvdFile {
public:
#pragma pack(push, 2)
  struct SResInfo {
    CAssetId x0_id;
    uchar x4_typeFlags; // bit7=compressed, bits0-6=typeIdx
    uchar x5_offsetLo;
    uchar x6_offsetMid;
    uchar x7_mixed; // bits0-6=offset high, bit7=size bit0
    uchar x8_sizeLo;
    uchar x9_sizeHi;

    SResInfo(const SResInfo& other) : x0_id(other.x0_id) {
      *reinterpret_cast< uint* >(&x4_typeFlags) = *reinterpret_cast< const uint* >(&other.x4_typeFlags);
      *reinterpret_cast< ushort* >(&x8_sizeLo) = *reinterpret_cast< const ushort* >(&other.x8_sizeLo);
    }
    SResInfo& operator=(const SResInfo& other) {
      x0_id = other.x0_id;
      *reinterpret_cast< uint* >(&x4_typeFlags) = *reinterpret_cast< const uint* >(&other.x4_typeFlags);
      *reinterpret_cast< ushort* >(&x8_sizeLo) = *reinterpret_cast< const ushort* >(&other.x8_sizeLo);
      return *this;
    }
    SResInfo(uint id, uint fourCC, uint offset, uint size, uint flags);

    uint GetType() const;
    uint GetOffset() const;
    uint GetSize() const;
    bool IsCompressed() const;

    CAssetId GetId() const { return x0_id; }
    bool operator<(const SResInfo& other) const { return x0_id < other.x0_id; }
  };
#pragma pack(pop)

  CPakFile(const rstl::string& filename, bool buildDepList, bool worldPak);
  ~CPakFile();

  void AsyncIdle();
  bool IsWorldPak() const { return x28_26_worldPak; }
  bool IsCompletelyLoaded() const { return x2c_asyncLoadPhase == 3; }
  void EnsureWorldPakReady();
  void sub_8036742c();

  rstl::vector< rstl::pair< rstl::string, SObjectTag > >& NameList() { return x54_nameList; }
  const rstl::vector< CAssetId >* GetDepList() const;
  const SObjectTag* GetResIdByName(const char* name) const;
  const SResInfo* GetResInfo(uint id) const;
  const SResInfo* GetResInfoForLoadDirectionless(uint id) const;
  const SResInfo* GetResInfoForLoadPreferForward(uint id) const;
  uint GetFakeStaticSize() const;

private:
  void Warmup();
  void InitialHeaderLoad();
  void DataLoad();
  void LoadResourceTable(CMemoryInStream& in);

  bool x28_24_buildDepList : 1;
  bool x28_25_aramFile : 1;
  bool x28_26_worldPak : 1;
  bool x28_27_stashedInARAM : 1;
  int x2c_asyncLoadPhase; // EAsyncPhase
  rstl::auto_ptr< CDvdRequest > x30_dvdReq;
  rstl::vector< uchar, rstl::aligned_allocator > x38_headerData;
  uint x48_resTableOffset;
  uint x4c_resTableCount;
  int x50_aramBase;
  rstl::vector< rstl::pair< rstl::string, SObjectTag > > x54_nameList;
  rstl::vector< CAssetId > x64_depList;
  rstl::vector< SResInfo > x74_resList;
  mutable int x84_currentSeek;
};
CHECK_SIZEOF(CPakFile, 0x88)

#endif // _CPAKFILE
