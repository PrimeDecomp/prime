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
  CPVSVisSet(int numBits, int numLights, const rstl::auto_ptr< uchar >& leafPtr);
  void Reset(EPVSVisSetState state);

  EPVSVisSetState GetVisible(int index) const;

  void SetTestPoint(CPVSVisOctree& octree, const CVector3f& point);

private:
  EPVSVisSetState x0_state;
  int x4_numBits;
  int x8_numLights;
  rstl::auto_ptr< uchar > xc_ptr;
};
CHECK_SIZEOF(CPVSVisSet, 0x14);

#endif // _CPVSVISSET
