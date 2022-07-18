#ifndef _CDVDFILE_HPP
#define _CDVDFILE_HPP

#include "types.h"

class CDvdFile {
public:
  static bool FileExists(const char*);

private:
  u8 pad[0x28];
};

#endif
