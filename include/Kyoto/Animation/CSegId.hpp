#ifndef _CSEGID
#define _CSEGID

#include <types.h>

#include "Kyoto/Streams/CInputStream.hpp"

class CSegId {
public:
  CSegId(const char& id) : x0_id(id) {}
  // CSegId(uint id) : x0_id(id) {}
  CSegId(CInputStream& in) : x0_id(in.ReadInt32()) {}

  const uchar val() const { return x0_id; }

  static CSegId Null() { return CSegId(0); }
  static CSegId Invalid() { return CSegId(-1); }

  bool operator==(const CSegId& rhs) const { return x0_id == rhs.x0_id; }
  bool operator!=(const CSegId& rhs) const { return x0_id != rhs.x0_id; }

private:
  char x0_id;
};

#endif // _CSEGID
