#ifndef _CPVSVISSET
#define _CPVSVISSET

#include "rstl/auto_ptr.hpp"

enum EPVSVisSetState {
  kVSS_EndOfTree,
  kVSS_NodeFound,
  kVSS_OutOfBounds,
};

class CPVSVisOctree;
class CVector3f;
class CPVSVisSet {
public:
  CPVSVisSet(int numBits, int numLights, const rstl::auto_ptr< const char >& leafPtr);
  CPVSVisSet(EPVSVisSetState state);

  EPVSVisSetState GetVisible(int index) const;

  static inline CPVSVisSet MakeFromMemory(const int numBits, const int numLights,
                                          const rstl::auto_ptr< const char >& leafPtr) {
    return CPVSVisSet(numBits, numLights, leafPtr);
  }

private:
  EPVSVisSetState x0_state;
  int x4_numBits;
  int x8_numLights;
  rstl::auto_ptr< const char > xc_ptr;
};
CHECK_SIZEOF(CPVSVisSet, 0x14);

#endif // _CPVSVISSET
