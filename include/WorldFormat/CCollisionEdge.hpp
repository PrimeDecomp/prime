#ifndef _CCOLLISIONEDGE
#define _CCOLLISIONEDGE

#include "types.h"

#include "Kyoto/Streams/CInputStream.hpp"

class CCollisionEdge {
public:
  CCollisionEdge(const ushort index1, const ushort index2) : x0_index1(index1), x2_index2(index2) {}
  CCollisionEdge(CInputStream& in) {
    x0_index1 = in.Get< ushort >();
    x2_index2 = in.Get< ushort >();
  }

  const ushort GetVertIndex1() const { return x0_index1; }
  const ushort GetVertIndex2() const { return x2_index2; }

private:
  ushort x0_index1;
  ushort x2_index2;
};

CHECK_SIZEOF(CCollisionEdge, 0x4)

#endif // _CCOLLISIONEDGE
