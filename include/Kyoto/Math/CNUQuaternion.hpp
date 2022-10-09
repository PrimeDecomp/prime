#ifndef _CNUQUATERNION
#define _CNUQUATERNION

#include "types.h"

class CMatrix3f;
class CNUQuaternion {
public:
  CNUQuaternion(f32 w, f32 x, f32 y, f32 z) : w(w), x(x), y(y), z(z) {}

  static CNUQuaternion BuildFromMatrix3f(const CMatrix3f& matrix);
  static CNUQuaternion BuildFromQuaternion(const CQuaternion& quat);

private:
  f32 w;
  f32 x;
  f32 y;
  f32 z;
};

#endif // _CNUQUATERNION
