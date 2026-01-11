#ifndef _CSEGID
#define _CSEGID

#include <types.h>

#include "Kyoto/Streams/CInputStream.hpp"

class CSegId {
public:
  CSegId() : x0_id(-1) {}
  CSegId(CInputStream& in) : x0_id(in.ReadInt32()) {}

  int val() const { return x0_id; }

private:
  uchar x0_id;
};

#endif // _CSEGID
