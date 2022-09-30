#ifndef _CSFXHANDLE_HPP
#define _CSFXHANDLE_HPP

#include "types.h"

class CSfxHandle {
public:
  CSfxHandle() : mID(0) {}
  CSfxHandle(uint value);

  uint GetIndex() const { return mID & 0xFFF; }
  static CSfxHandle NullHandle() { return CSfxHandle(); }
  void operator=(const CSfxHandle& other) { mID = other.mID; }
  bool operator==(const CSfxHandle& other) { return mID == other.mID; }
  bool operator!=(const CSfxHandle& other) { return mID != other.mID; }
  operator bool() const { return mID != 0; }

private:
  uint mID;
  static uint mRefCount;
};
CHECK_SIZEOF(CSfxHandle, 0x4)

#endif
