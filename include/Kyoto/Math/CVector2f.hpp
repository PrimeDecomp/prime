#ifndef _CVECTOR2F
#define _CVECTOR2F

#include "types.h"

class CVector2f {
  static const CVector2f skZeroVector;

public:
  CVector2f(float x, float y);

  float GetX() const { return mX; }
  float GetY() const { return mY; }

  CVector2f& operator+=(const CVector2f& rhs);
  CVector2f& operator-=(const CVector2f& rhs);
  CVector2f& operator*=(float rhs);
  CVector2f& operator/=(float rhs);

  CVector2f& Normalize();

  float Magnitude() const;
  float MagSquared() const;
  CVector2f AsNormalized() const;

  static float GetAngleDiff(const CVector2f& a, const CVector2f& b);
  static float Dot(const CVector2f& a, const CVector2f& b);

private:
  float mX;
  float mY;
};

CVector2f operator+(const CVector2f& lhs, const CVector2f& rhs);
CVector2f operator-(const CVector2f& lhs, const CVector2f& rhs);
bool operator==(const CVector2f& lhs, const CVector2f& rhs);
CVector2f operator*(const CVector2f& lhs, const float& rhs);
CVector2f operator*(const float& lhs, const CVector2f& rhs);
CVector2f operator/(const CVector2f& lhs, const float& rhs);

#endif // _CVECTOR2F
