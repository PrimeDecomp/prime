#ifndef _CNUQUATERNION
#define _CNUQUATERNION

#include "types.h"

class CMatrix3f;
class CNUQuaternion {
public:
  CNUQuaternion(float w, float x, float y, float z) : w(w), x(x), y(y), z(z) {}

  static CNUQuaternion BuildFromMatrix3f(const CMatrix3f& matrix);
  static CNUQuaternion BuildFromQuaternion(const CQuaternion& quat);

private:
  float w;
  float x;
  float y;
  float z;
};

#endif // _CNUQUATERNION
