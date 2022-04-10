#ifndef _CRESLOADER_HPP
#define _CRESLOADER_HPP

#include "types.h"

#include "rstl/list.hpp"
#include "rstl/string.hpp"

#include "CPakFile.hpp"
#include "TGameTypes.hpp"

struct SResInfo {
  CAssetId x0_id;
  bool x4_compressed : 1;
  int x4_typeIdx; // CFactoryMgr::ETypeTable
  u32 x5_offsetDiv32 : 27;
  u32 x7_sizeDiv32 : 27;
};

class CResLoader {
public:
  s32 GetPakCount();
  CPakFile& GetPakFile(s32 idx);
  void AddPakFileAsync(rstl::string&, bool, bool);
  void AsyncIdlePakLoading();
  bool AreAllPaksLoaded() const;

private:
  rstl::list< void > x0_aramList;
  rstl::list< void > x18_pakLoadedList;
  rstl::list< void > x30_pakLoadingList;
  unkptr x48_curPak;
  CAssetId x4c_cachedResId;
  SResInfo* x50_cachedResInfo;
  bool x54_forwardSeek;
};

#endif
