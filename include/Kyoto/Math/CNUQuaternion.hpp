#ifndef _CNUQUATERNION_HPP
#define _CNUQUATERNION_HPP

#include "types.h"

class CNUQuaternion {
public:
  CNUQuaternion(f32 w, f32 x, f32 y, f32 z) : w(w), x(x), y(y), z(z) {}

private:
  f32 w;
  f32 x;
  f32 y;
  f32 z;
};

#endif