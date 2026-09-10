#ifndef _CPFBITSET
#define _CPFBITSET

#include "types.h"

class CPFBitSet {
public:
  CPFBitSet() { Clear(); }
  void Clear() {
    for (int i = 0; i < 16; ++i) {
      mBits[i] = 0;
    }
  }
  void Add(int bit) { mBits[bit / 32] |= 1 << (bit & 31); }
  bool Test(int bit) { return (mBits[bit / 32] & (1 << (bit & 31))) != 0; }
  void Rmv(int bit) { mBits[bit / 32] &= ~(1 << (bit & 31)); }

private:
  uint mBits[16];
};
CHECK_SIZEOF(CPFBitSet, 0x40)

#endif // _CPFBITSET
