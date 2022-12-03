#ifndef _CDVDFILE
#define _CDVDFILE

#include "types.h"

#include "Kyoto/IDvdRequest.hpp"

class CDvdFile {
public:
  CDvdFile(const char* name);
  ~CDvdFile();
  uint Length() { return x14_size; }

  IDvdRequest* SyncRead(void* buf, uint len);

  static bool FileExists(const char*);

private:
  uchar pad[0x14];
  uint x14_size;
  uchar pad2[0x10];
};
CHECK_SIZEOF(CDvdFile, 0x28)

#endif // _CDVDFILE
