#ifndef _CPVSVISSET
#define _CPVSVISSET

#include "rstl/auto_ptr.hpp"

class CPVSVisSet {
public:
  CPVSVisSet(int);
  // TODO: real? see CPVSAreaSet::GetLightSet
  CPVSVisSet(int numBits, int numLights, const char* leafPtr);

  void SetFromMemory(int numBits, int numLights, const char* leafPtr);

  static CPVSVisSet Reset(int);

private:
  int x0_state;
  uint x4_numBits;
  uint x8_numLights;
  rstl::auto_ptr< u8 > x10_ptr;
};
CHECK_SIZEOF(CPVSVisSet, 0x14);

#endif // _CPVSVISSET
