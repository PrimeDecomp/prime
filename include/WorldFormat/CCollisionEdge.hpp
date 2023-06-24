#ifndef _CCOLLISIONEDGE
#define _CCOLLISIONEDGE

#include "types.h"

#include "Kyoto/Streams/CInputStream.hpp"

class CCollisionEdge {
public:
  CCollisionEdge(CInputStream& in){
    x0_index1 = in.Get<u16>();
    x2_index2 = in.Get<u16>();
  }

  u16 GetVertIndex1() const { return x0_index1; }
  u16 GetVertIndex2() const { return x2_index2; }
private:
  u16 x0_index1;
  u16 x2_index2;
};

#endif // _CCOLLISIONEDGE
