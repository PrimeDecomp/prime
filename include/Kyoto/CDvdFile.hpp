#ifndef _CDVDFILE
#define _CDVDFILE

#include "Kyoto/CDvdRequest.hpp"
#include "types.h"

#include "rstl/auto_ptr.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/single_ptr.hpp"
#include "rstl/string.hpp"

enum ESeekOrigin { kSO_Set, kSO_Cur, kSO_End };


class CDvdFile;
struct CDvdFileARAM;
struct DVDFileInfo;
class CDvdFile {
public:
  CDvdFile(const char* name);
  ~CDvdFile();
  uint Length() { return x14_size; }
  void HandleDVDInterrupt();
  void HandleARAMInterrupt();
  void PingARAMTransfer();
  void TryARAMFile();
  void PushARAMFileLoad();
  void PopARAMFileLoad();
  bool IsARAMFileLoaded();
  void StartARAMFileLoad();
  void StallForARAMFile();
  CDvdRequest* SyncRead(void* buf, uint len);
  CDvdRequest* SyncSeekRead(void* buf, uint len, ESeekOrigin, int offset);
  CDvdRequest* AsyncSeekRead(void* buf, uint len, ESeekOrigin, int offset);
  void CloseFile();
  void CalcFileOffset(int offset, ESeekOrigin origin);
  void UpdateFilePos(int pos);
  const int GetFileSize() const { return x14_size; }

  static bool FileExists(const char*);
  static void DVDARAMXferCallback(long, DVDFileInfo*);
  static void ARAMARAMXferCallback(u32 addr);
  static void internalCallback(s32, DVDFileInfo*);

private:
  int x0_fileEntry;
  uchar* x4_;
  bool x8_;
  bool x9_;
  rstl::single_ptr< CDvdFileARAM > xc_;
  int x10_offset;
  int x14_size;
  rstl::string x18_filename;
};
CHECK_SIZEOF(CDvdFile, 0x28)

#endif // _CDVDFILE
