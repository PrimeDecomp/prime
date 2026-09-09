#ifndef _CNUQUATERNION
#define _CNUQUATERNION

#include "types.h"

#include "Kyoto/Math/CVector3f.hpp"

class CMatrix3f;
class CQuaternion;

class CNUQuaternion {
public:
  CNUQuaternion(float w, float x, float y, float z);
  CNUQuaternion(float, const CVector3f&);

  static CNUQuaternion BuildFromMatrix3f(const CMatrix3f& matrix);
  static CNUQuaternion BuildFromQuaternion(const CQuaternion& quat);
  static CNUQuaternion BuildFromAxisAngle(const CVector3f& axis, float angle);

  CNUQuaternion& operator+=(const CNUQuaternion&);
  CNUQuaternion operator*(const CNUQuaternion&) const;
  CNUQuaternion AsNormalized() const;

  float GetScalar() const { return w; }
  const CVector3f GetVector() const { return imaginary; }

private:
  float w;
  CVector3f imaginary;
};
CHECK_SIZEOF(CNUQuaternion, 0x10)

CNUQuaternion operator*(float f, const CNUQuaternion&);
CNUQuaternion operator*(const CNUQuaternion&, float f);

#endif // _CNUQUATERNION
