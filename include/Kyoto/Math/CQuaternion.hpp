#ifndef _CQUATERNION_HPP
#define _CQUATERNION_HPP

#include "types.h"

class CQuaternion {
public:
  CQuaternion(f32 w, f32 x, f32 y, f32 z) : w(w), x(x), y(y), z(z) {}

private:
  f32 w;
  f32 x;
  f32 y;
  f32 z;
};

#endif