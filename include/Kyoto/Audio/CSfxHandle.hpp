#ifndef _CSFXHANDLE
#define _CSFXHANDLE

#include "types.h"

class CSfxHandle {
public:
  CSfxHandle() : mID(0) {}
  CSfxHandle(uint value);

  int GetIndex() const { return mID & 0xFFF; }
  static CSfxHandle NullHandle() { return CSfxHandle(); }
  void operator=(const CSfxHandle& other) { mID = other.mID; }
  const bool operator==(const CSfxHandle& other) const { return mID == other.mID; }
  const bool operator!=(const CSfxHandle& other) const { return mID != other.mID; }
  operator bool() const { return mID != 0; }
  void Clear() { mID = 0; }

private:
  uint mID;
  static uint mRefCount;
};
CHECK_SIZEOF(CSfxHandle, 0x4)

#endif // _CSFXHANDLE
