#ifndef _CPVSVISSET
#define _CPVSVISSET

#include "rstl/auto_ptr.hpp"

class CPVSVisSet {
public:
  static CPVSVisSet Reset(int);

private:
  int x0_state;
  uint x4_numBits;
  uint x8_numLights;
  rstl::auto_ptr< u8 > x10_ptr;
};

#endif // _CPVSVISSET
