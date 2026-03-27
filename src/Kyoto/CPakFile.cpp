#pragma inline_max_size(200)

#include "Kyoto/CPakFile.hpp"

#include "Kyoto/Alloc/CMemory.hpp"
#include "Kyoto/CARAMManager.hpp"
#include "Kyoto/CFactoryMgr.hpp"
#include "Kyoto/Streams/CMemoryInStream.hpp"
#include "rstl/StringExtras.hpp"
#include "rstl/algorithm.hpp"
#include "rstl/math.hpp"

#include <stdio.h>

extern "C" int abs(int);

static inline int round_up_32(int val) { return (val + 31) & ~31; }

static int kMinReserveBytes = 64;

// EnsureWorldPakReady
void CPakFile::EnsureWorldPakReady() {
  if (x28_26_worldPak && x28_27_stashedInARAM) {
    int reserveBytes =
        round_up_32(x4c_resTableCount * (int)sizeof(SResInfo)) + (int)sizeof(SResInfo) - 1;
    x74_resList.reserve(
        (uint)rstl::max_val(reserveBytes, kMinReserveBytes) / (uint)sizeof(SResInfo));

    for (int i = 0; i < (int)x4c_resTableCount; ++i) {
      x74_resList.push_back(SResInfo(i, 'TXTR', 0, 0, 0));
    }

    uint dmaSize = round_up_32(x4c_resTableCount * sizeof(SResInfo));
    CARAMManager::WaitForDMACompletion(CARAMManager::DMAToMRAM(
        reinterpret_cast< void* >(x50_aramBase), x74_resList.data(), dmaSize,
        CARAMManager::kDMAPrio_One));

    if (x28_24_buildDepList) {
      x64_depList.reserve(x4c_resTableCount);
      for (int i = 0; i < (int)x4c_resTableCount; ++i) {
        x64_depList.push_back(x74_resList[i].GetId());
      }
    }

    x28_27_stashedInARAM = false;
  }
}

// fn_8036742C
void CPakFile::sub_8036742c() {
  if (x28_26_worldPak) {
    x28_27_stashedInARAM = true;
    x64_depList = rstl::vector< CAssetId >();
    x74_resList = rstl::vector< SResInfo >();
  }
}

// fn_80367524

// GetDepList
const rstl::vector< CAssetId >* CPakFile::GetDepList() const {
  if (x64_depList.size() != 0)
    return &x64_depList;
  return nullptr;
}

// GetResIdByName
const SObjectTag* CPakFile::GetResIdByName(const char* name) const {
  if (!x28_27_stashedInARAM) {
    for (AUTO(it, x54_nameList.begin()); it != x54_nameList.end(); ++it) {
      int cmp = CStringExtras::CompareCaseInsensitive(it->first, rstl::string_l(name));
      if (cmp == 0) {
        return &it->second;
      }
    }
  }
  return nullptr;
}

// GetResInfoForLoadPreferForward
const CPakFile::SResInfo* CPakFile::GetResInfoForLoadPreferForward(uint id) const {
  if (x28_27_stashedInARAM)
    return nullptr;
  SResInfo key(id, 'TXTR', 0, 0, 0);
  rstl::vector< SResInfo >::const_iterator it =
      rstl::lower_bound(x74_resList.begin(), x74_resList.end(), key, rstl::less< SResInfo >());
  if (it == x74_resList.end() || it->GetId() != id)
    return nullptr;
  const SResInfo* bestInfo = &*it;
  int bestDelta = x84_currentSeek - static_cast< int >(bestInfo->GetOffset());
  ++it;
  while (it != x74_resList.end()) {
    if (it->GetId() != id)
      break;
    int thisDelta = x84_currentSeek - static_cast< int >(it->GetOffset());
    if ((bestDelta < 0 && (thisDelta > 0 || thisDelta > bestDelta)) ||
        (bestDelta >= 0 && thisDelta > 0 && thisDelta < bestDelta)) {
      bestInfo = &*it;
      bestDelta = thisDelta;
    }
    ++it;
  }
  x84_currentSeek = bestInfo->GetOffset() + bestInfo->GetSize();
  return bestInfo;
}

// GetResInfoForLoadDirectionless
const CPakFile::SResInfo* CPakFile::GetResInfoForLoadDirectionless(uint id) const {
  if (x28_27_stashedInARAM)
    return nullptr;
  SResInfo key(id, 'TXTR', 0, 0, 0);
  rstl::vector< SResInfo >::const_iterator it =
      rstl::lower_bound(x74_resList.begin(), x74_resList.end(), key, rstl::less< SResInfo >());
  if (it == x74_resList.end() || it->GetId() != id) {
    return nullptr;
  }
  const SResInfo* bestInfo = &*it;
  int bestDelta = abs(static_cast< int >(bestInfo->GetOffset() - x84_currentSeek));
  ++it;
  while (it != x74_resList.end()) {
    if (it->GetId() != id)
      break;
    int thisDelta = abs(static_cast< int >(it->GetOffset() - x84_currentSeek));
    if (thisDelta < bestDelta) {
      bestInfo = &*it;
      bestDelta = thisDelta;
    }
    ++it;
  }
  x84_currentSeek = bestInfo->GetOffset() + bestInfo->GetSize();
  return bestInfo;
}

// GetResInfo
const CPakFile::SResInfo* CPakFile::GetResInfo(uint id) const {
  if (!IsCompletelyLoaded())
    return nullptr;
  if (x28_27_stashedInARAM)
    return nullptr;
  SResInfo key(id, 'TXTR', 0, 0, 0);
  rstl::vector< SResInfo >::const_iterator it =
      rstl::lower_bound(x74_resList.begin(), x74_resList.end(), key, rstl::less< SResInfo >());
  if (it == x74_resList.end() || it->GetId() != id) {
    return nullptr;
  }
  return &*it;
}

// GetFakeStaticSize
uint CPakFile::GetFakeStaticSize() const {
  return x64_depList.size() * sizeof(uint) + x74_resList.size() * sizeof(SResInfo);
}

// LoadResourceTable
void CPakFile::LoadResourceTable(CMemoryInStream& in) {
  int reserveBytes = round_up_32(x4c_resTableCount * (int)sizeof(SResInfo)) + (int)sizeof(SResInfo) - 1;
  x74_resList.reserve((uint)rstl::max_val(reserveBytes, kMinReserveBytes) / (uint)sizeof(SResInfo));

  if (x28_24_buildDepList) {
    x64_depList.reserve(x4c_resTableCount);
  }

  for (int i = 0; i < (int)x4c_resTableCount; ++i) {
    uint flags = in.Get< uint >();
    uint fourCC = in.Get< uint >();
    uint id = in.Get< uint >();
    uint size = in.Get< uint >();
    uint offset = in.Get< uint >();
    x74_resList.push_back(SResInfo(id, fourCC, offset, size, flags));
    if (x28_24_buildDepList) {
      x64_depList.push_back(id);
    }
  }

  rstl::sort(x74_resList.begin(), x74_resList.end(), rstl::less< SResInfo >());
}

// DataLoad
void CPakFile::DataLoad() {
  x30_dvdReq = rstl::auto_ptr< CDvdRequest >();
  CMemoryInStream in(&x38_headerData[x48_resTableOffset],
                     x38_headerData.size() - x48_resTableOffset);
  LoadResourceTable(in);
  x2c_asyncLoadPhase = 3;
  if (x28_26_worldPak) {
    uint size = round_up_32(x4c_resTableCount * sizeof(SResInfo));
    x50_aramBase = reinterpret_cast< int >(CARAMManager::Alloc(size));
    uint handle = CARAMManager::DMAToARAM(
        x74_resList.data(), reinterpret_cast< void* >(x50_aramBase), size,
        CARAMManager::kDMAPrio_One);
    CARAMManager::WaitForDMACompletion(handle);
  }
  x38_headerData = rstl::vector< uchar, rstl::aligned_allocator >();
  CMemory::OffsetFakeStatics(GetFakeStaticSize());
}

// InitialHeaderLoad
void CPakFile::InitialHeaderLoad() {
  CMemoryInStream in(&x38_headerData[0], x38_headerData.size());
  x30_dvdReq = rstl::auto_ptr< CDvdRequest >();

  int version = in.ReadInt32();
  if (version != 0x00030005) {
    char buf[248];
    sprintf(buf, "%s: Incompatible pak file version -- Current version is %x, you're using %x",
            GetFilename().data(), 0x00030005, version);
    return;
  }

  in.ReadInt32();
  int nameCount = in.ReadInt32();
  x54_nameList.reserve(nameCount);

  for (int i = 0; i < nameCount; ++i) {
    int type = in.ReadInt32();
    int id = in.ReadInt32();
    rstl::string name = CStringExtras::ReadString(in);
    x54_nameList.push_back(rstl::pair< rstl::string, SObjectTag >(name, SObjectTag(type, id)));
  }

  x4c_resTableCount = in.ReadInt32();
  x48_resTableOffset = in.GetReadPosition();
  x2c_asyncLoadPhase = 2;

  int origSize = x38_headerData.size();
  uint resDataSize = x4c_resTableCount * 20;
  int newSize = (resDataSize + x48_resTableOffset + 31) & ~31;
  if (newSize > origSize) {
    x38_headerData.resize(newSize);
    x30_dvdReq = rstl::auto_ptr< CDvdRequest >(
        AsyncSeekRead(&x38_headerData[0] + origSize, x38_headerData.size() - origSize,
                      kSO_Set, origSize));
  } else {
    DataLoad();
  }
}

// fn_80368184

// Warmup
void CPakFile::Warmup() {
  int length = rstl::min_val< int >(Length(), 8192);
  x38_headerData.resize(length);
  x30_dvdReq = rstl::auto_ptr< CDvdRequest >(SyncRead(&x38_headerData[0], length));
  x2c_asyncLoadPhase = 1;
}

// AsyncIdle
void CPakFile::AsyncIdle() {
  if (x2c_asyncLoadPhase == 3)
    return;
  if (!IsARAMFileLoaded())
    return;
  if (!x30_dvdReq.null() && !x30_dvdReq->IsComplete())
    return;
  switch (x2c_asyncLoadPhase) {
  case 0:
    Warmup();
    break;
  case 1:
    InitialHeaderLoad();
    break;
  case 2:
    DataLoad();
    break;
  default:
    break;
  }
}

// Destructor
CPakFile::~CPakFile() {
  while (x2c_asyncLoadPhase != 3) {
    AsyncIdle();
  }

  CMemory::OffsetFakeStatics(-static_cast< int >(GetFakeStaticSize()));
  CARAMManager::Free(reinterpret_cast< const void* >(x50_aramBase));
}

// Constructor
CPakFile::CPakFile(const rstl::string& filename, bool buildDepList, bool worldPak)
: CDvdFile(filename.data())
, x28_24_buildDepList(buildDepList)
, x28_25_aramFile(IsARAMFile())
, x28_26_worldPak(worldPak)
, x28_27_stashedInARAM(false)
, x2c_asyncLoadPhase(0)
, x48_resTableOffset(0)
, x4c_resTableCount(0)
, x50_aramBase(reinterpret_cast< int >(CARAMManager::GetInvalidAlloc()))
, x84_currentSeek(-1) {}

// SResInfo getters
uint CPakFile::SResInfo::GetType() const {
  return CFactoryMgr::TypeIdxToFourCC(x4_typeFlags & 0x7f);
}

uint CPakFile::SResInfo::GetOffset() const {
  return ((x5_offsetLo | (x6_offsetMid << 8) | (x7_mixed << 16)) & 0x7FFFFF) << 5;
}

uint CPakFile::SResInfo::GetSize() const {
  return ((x7_mixed >> 7) | (x8_sizeLo << 1) | (x9_sizeHi << 9)) << 5;
}

bool CPakFile::SResInfo::IsCompressed() const {
  return (x4_typeFlags & ~0x7F) != 0;
}

// SResInfo constructor
CPakFile::SResInfo::SResInfo(uint id, uint fourCC, uint offset, uint size, uint flags) : x0_id(id) {
  uint typeIdx = CFactoryMgr::FourCCToTypeIdx(fourCC);
  x4_typeFlags = static_cast< uchar >(typeIdx | (flags != 0 ? 0x80 : 0));
  x5_offsetLo = static_cast< uchar >(offset >> 5);
  x6_offsetMid = static_cast< uchar >(offset >> 13);
  x7_mixed = static_cast< uchar >((offset >> 21) | ((size << 2) & 0x80));
  x8_sizeLo = static_cast< uchar >(size >> 6);
  x9_sizeHi = static_cast< uchar >(size >> 14);
}
