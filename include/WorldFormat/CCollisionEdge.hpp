#ifndef _CCOLLISIONEDGE
#define _CCOLLISIONEDGE

#include "types.h"

#include "Kyoto/Streams/CInputStream.hpp"

class CCollisionEdge {
public:
  CCollisionEdge(CInputStream& in) {
    x0_index1 = in.Get< u16 >();
    x2_index2 = in.Get< u16 >();
  }

  const ushort GetVertIndex1() const { return x0_index1; }
  const ushort GetVertIndex2() const { return x2_index2; }

private:
  ushort x0_index1;
  ushort x2_index2;
};

#endif // _CCOLLISIONEDGE
