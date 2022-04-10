#ifndef _CPAKFILE_HPP
#define _CPAKFILE_HPP

#include "types.h"

#include "CDvdFile.hpp"

class CPakFile : CDvdFile {
public:
  bool IsWorldPak() const { return x28_26_worldPak; }
  void EnsureWorldPakReady();

private:
  bool x28_24_buildDepList : 1;
  bool x28_25_aramFile : 1;
  bool x28_26_worldPak : 1;
  bool x28_27_stashedInARAM : 1;
  // TODO
};

#endif
