#ifndef __CVECTOR2F_HPP__
#define __CVECTOR2F_HPP__

#include "types.h"

class CVector2f {
public:
  CVector2f(f32 x, f32 y); // : mX(x), mY(y) {}

  f32 GetX() const { return mX; }
  f32 GetY() const { return mY; }

  f32 Magnitude() const;

  // private:
  f32 mX;
  f32 mY;
};

CVector2f operator-(const CVector2f& lhs, const CVector2f& rhs); /* {
   f32 x = lhs.GetX() - rhs.GetX();
   f32 y = lhs.GetY() - rhs.GetY();
   return CVector2f(x, y);
 }*/
CVector2f operator+(const CVector2f& lhs, const CVector2f& rhs); /* {
   f32 x = lhs.GetX() + rhs.GetX();
   f32 y = lhs.GetY() + rhs.GetY();
   return CVector2f(x, y);
 }*/

#endif // __CVECTOR3F_HPP__
