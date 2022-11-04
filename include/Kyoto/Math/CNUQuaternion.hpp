#ifndef _CNUQUATERNION
#define _CNUQUATERNION

#include "types.h"

class CMatrix3f;
class CVector3f;
class CQuaternion;

class CNUQuaternion {
public:
  CNUQuaternion(float w, float x, float y, float z) : w(w), x(x), y(y), z(z) {}
  CNUQuaternion(float, const CVector3f&);

  static CNUQuaternion BuildFromMatrix3f(const CMatrix3f& matrix);
  static CNUQuaternion BuildFromQuaternion(const CQuaternion& quat);

  CNUQuaternion& operator+=(const CNUQuaternion&);
  CNUQuaternion operator*(const CNUQuaternion&) const;

private:
  float w;
  float x;
  float y;
  float z;
};

CNUQuaternion operator*(float f, const CNUQuaternion&);
CNUQuaternion operator*(const CNUQuaternion&, float f);

#endif // _CNUQUATERNION
