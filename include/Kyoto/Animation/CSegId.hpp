#ifndef _CSEGID
#define _CSEGID

#include <types.h>

#include "Kyoto/Streams/CInputStream.hpp"

class CSegId {
public:
  CSegId(CInputStream& in) : x0_id(in.Get<uint>()) {}
private:
  uchar x0_id;
};

#endif // _CSEGID
