#ifndef __CVECTOR2F_HPP__
#define __CVECTOR2F_HPP__

#include "types.h"

class CVector2f {
public:
  explicit CVector2f(f32 x, f32 y) : mX(x), mY(y) {}

  f32 GetX() const { return mX; }
  f32 GetY() const { return mY; }

  // private:
  f32 mX;
  f32 mY;
};

#endif // __CVECTOR3F_HPP__
