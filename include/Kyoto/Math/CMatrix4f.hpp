#ifndef _CMATRIX4F
#define _CMATRIX4F

#include "types.h"

class CMatrix4f {
private:
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
