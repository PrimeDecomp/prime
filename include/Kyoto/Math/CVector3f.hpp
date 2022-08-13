#ifndef __CVECTOR3F_HPP__
#define __CVECTOR3F_HPP__

#include "types.h"

class CVector3f {
public:
  CVector3f() : mX(0.f), mY(0.f), mZ(0.f) {}
  explicit CVector3f(f32 x, f32 y, f32 z) : mX(x), mY(y), mZ(z) {}

  f32 GetX() const { return mX; }
  f32 GetY() const { return mY; }
  f32 GetZ() const { return mZ; }

// private:
  f32 mX;
  f32 mY;
  f32 mZ;
};

#endif // __CVECTOR3F_HPP__
