#ifndef _CVECTOR2F
#define _CVECTOR2F

#include "types.h"

class CVector2f {
  static const CVector2f skZeroVector;

public:
  CVector2f(f32 x, f32 y);
  f32 GetX() const { return mX; }
  f32 GetY() const { return mY; }

  CVector2f& operator+=(const CVector2f& rhs);
  CVector2f& operator-=(const CVector2f& rhs);
  CVector2f& operator*=(float rhs);
  CVector2f& operator/=(float rhs);

  CVector2f& Normalize();

  f32 Magnitude() const;
  f32 MagSquared() const;
  CVector2f AsNormalized() const;

  static float GetAngleDiff(const CVector2f& a, const CVector2f& b);
  static float Dot(const CVector2f& a, const CVector2f& b);

private:
  f32 mX;
  f32 mY;
};

CVector2f operator+(const CVector2f& lhs, const CVector2f& rhs);
CVector2f operator-(const CVector2f& lhs, const CVector2f& rhs);
bool operator==(const CVector2f& lhs, const CVector2f& rhs);
CVector2f operator*(const CVector2f& lhs, const float& rhs);
CVector2f operator*(const float& lhs, const CVector2f& rhs);
CVector2f operator/(const CVector2f& lhs, const float& rhs);

#endif // _CVECTOR2F
