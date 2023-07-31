#ifndef _CRESLOADER
#define _CRESLOADER

#include "types.h"

#include "rstl/list.hpp"
#include "rstl/string.hpp"

#include "Kyoto/IObjectStore.hpp"

class CPakFile;
class CARAMDvdRequest;

struct SResInfo {
  CAssetId x0_id;
  bool x4_compressed : 1;
  int x4_typeIdx; // CFactoryMgr::ETypeTable
  uint x5_offsetDiv32 : 27;
  uint x7_sizeDiv32 : 27;
};

class CResLoader {
public:
  int GetPakCount() const;
  CPakFile& GetPakFile(int idx) const;
  void AddPakFileAsync(const rstl::string&, bool, bool);
  void AsyncIdlePakLoading();
  bool AreAllPaksLoaded() const;
  CInputStream* LoadNewResourceSync(const SObjectTag& tag, char* extBuf);
  CInputStream* LoadNewResourceSync(const SObjectTag& tag, int, int, char* extBuf);
  CARAMDvdRequest* LoadResourcePartAsync(const SObjectTag& tag, int, int, char*);

  FourCC GetResourceTypeById(CAssetId) const;
  uint ResourceSize(const SObjectTag& tag) const;

private:
  rstl::list< unkptr > x0_aramList;
  rstl::list< unkptr > x18_pakLoadedList;
  rstl::list< unkptr > x30_pakLoadingList;
  unkptr x48_curPak;
  CAssetId x4c_cachedResId;
  SResInfo* x50_cachedResInfo;
  bool x54_forwardSeek;
};

#endif // _CRESLOADER
