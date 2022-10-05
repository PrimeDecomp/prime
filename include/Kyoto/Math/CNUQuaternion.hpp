#ifndef _CNUQUATERNION_HPP
#define _CNUQUATERNION_HPP

#include "types.h"

class CMatrix3f;
class CNUQuaternion {
public:
  CNUQuaternion(f32 w, f32 x, f32 y, f32 z) : w(w), x(x), y(y), z(z) {}

  static CNUQuaternion BuildFromMatrix3f(const CMatrix3f& matrix);
private:
  f32 w;
  f32 x;
  f32 y;
  f32 z;
};

#endif
