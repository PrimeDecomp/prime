#ifndef _CMATRIX4F_HPP
#define _CMATRIX4F_HPP

#include "types.h"

class CMatrix4f {
private:
  f32 m00;
  f32 m01;
  f32 m02;
  f32 m03;
  f32 m10;
  f32 m11;
  f32 m12;
  f32 m13;
  f32 m20;
  f32 m21;
  f32 m22;
  f32 m23;
  f32 m30;
  f32 m31;
  f32 m32;
  f32 m33;
};
CHECK_SIZEOF(CMatrix4f, 0x40);

#endif