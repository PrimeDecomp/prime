#ifndef _CDVDFILE
#define _CDVDFILE

#include "types.h"

class CDvdFile {
public:
  static bool FileExists(const char*);

private:
  u8 pad[0x28];
};

#endif // _CDVDFILE
