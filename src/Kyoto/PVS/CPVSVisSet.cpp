#include "Kyoto/PVS/CPVSVisSet.hpp"

CPVSVisSet::CPVSVisSet(int numBits, int numLights, const rstl::auto_ptr< uchar >& leafPtr)
: x0_state(kVSS_NodeFound), x4_numBits(numBits), x8_numLights(numLights), xc_ptr(leafPtr) {}

void CPVSVisSet::Reset(EPVSVisSetState state) {
  x0_state = state;
  x4_numBits = 0;
  x8_numLights = 0;
  xc_ptr.reset();
}

EPVSVisSetState CPVSVisSet::GetVisible(int idx) const {
  if (x0_state != kVSS_NodeFound)
    return x0_state;

  int numFeatures = x4_numBits - x8_numLights;
  if (idx < numFeatures) {
    /* This is a feature lookup */
    u8 flag = xc_ptr.get()[idx / 8];
    return flag & (1 << (idx & 7)) ? kVSS_OutOfBounds : kVSS_EndOfTree;
  }

  /* This is a light lookup */
  int lightTest = idx - numFeatures + idx;
  const uchar* ptr = &xc_ptr.get()[lightTest / 8];
  lightTest &= 0x7;
  if (lightTest < 0x7) {
    return static_cast< EPVSVisSetState >((ptr[0] & (0x3 << lightTest)) >> lightTest);
  }
  return static_cast< EPVSVisSetState >(((ptr[0] >> 7) & 1) | ((ptr[1] & 0x1) << 1));
}
