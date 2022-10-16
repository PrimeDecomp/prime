#ifndef _CDVDFILE
#define _CDVDFILE

#include "types.h"

class IDvdRequest {
public:
  virtual void PostCancelRequest(bool) = 0; // 8
  virtual void Unknown1(bool) = 0; // c
  virtual bool IsComplete() = 0; // 10
};

class CDvdFile {
public:
  CDvdFile(const char* name);
  ~CDvdFile();
  uint Length() { return x14_size; }

  IDvdRequest* SyncRead(uchar* buf, uint len);

  static bool FileExists(const char*);

private:
  uchar pad[0x14];
  uint x14_size;
  uchar pad2[0x10];
};
CHECK_SIZEOF(CDvdFile, 0x28)

#endif // _CDVDFILE
