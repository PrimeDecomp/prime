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

  static const CVector2f& Zero() { return skZeroVector; }

  static CVector2f Lerp(const CVector2f& a, const CVector2f& b, const float t) {
    const float negT = 1.f - t;
    const float aX = a.GetX();
    const float bX = b.GetX();
    const float aY = a.GetY();
    const float bY = b.GetY();
    return CVector2f(aX * negT + bX * t, aY * negT + bY * t);
  }

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
