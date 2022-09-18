#ifndef _CPLANE_HPP
#define _CPLANE_HPP

#include "types.h"

class CPlane {
public:
  // TODO

private:
  f32 x;
  f32 y;
  f32 z;
  f32 w;
};
CHECK_SIZEOF(CPlane, 0x10)

#endif