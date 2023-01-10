#ifndef _CMATRIX4F
#define _CMATRIX4F

#include "types.h"

#include "Kyoto/Math/CVector3f.hpp"

class CMatrix4f {
public:
  CMatrix4f(float, float, float, float, float, float, float, float, float, float, float, float,
            float, float, float, float);

  CVector3f operator*(const CVector3f& vec) const;

  CVector3f MultiplyOneOverW(const CVector3f& vec) const;
  float MultiplyGetW(const CVector3f& vec) const;

  static const CMatrix4f& Identity() { return sIdentity; }
  
private:
  static const CMatrix4f sIdentity;
  float m00;
  float m01;
  float m02;
  float m03;
  float m10;
  float m11;
  float m12;
  float m13;
  float m20;
  float m21;
  float m22;
  float m23;
  float m30;
  float m31;
  float m32;
  float m33;
};
CHECK_SIZEOF(CMatrix4f, 0x40);

#endif // _CMATRIX4F
