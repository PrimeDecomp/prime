#ifndef _CVECTOR3F
#define _CVECTOR3F

#include "types.h"

#include "Kyoto/Math/CVector2f.hpp"

#include "float.h"

class CInputStream;
class COutputStream;
class CRelAngle;

enum EDimX { kDX };
enum EDimY { kDY };
enum EDimZ { kDZ };

class CVector3f {
public:
  CVector3f() {}
  explicit CVector3f(float x, float y, float z) : mX(x), mY(y), mZ(z) {}
  CVector3f(const CVector2f& v, float z) : mX(v.GetX()), mY(v.GetY()), mZ(z) {}

  CVector3f(CInputStream& in);
  void PutTo(COutputStream& out) const;

  float GetX() const { return mX; }
  float GetY() const { return mY; }
  float GetZ() const { return mZ; }

  void SetX(float x) { mX = x; }
  void SetY(float y) { mY = y; }
  void SetZ(float z) { mZ = z; }

  static CVector3f ByElementMultiply(const CVector3f& lhs, const CVector3f& rhs) {
    return CVector3f(lhs.GetX() * rhs.GetX(), lhs.GetY() * rhs.GetY(), lhs.GetZ() * rhs.GetZ());
  }

  // ByElementMultiply__9CVector3fFRC9CVector3fRC9CVector3f
  static CVector3f Slerp(const CVector3f& a, const CVector3f& b, const CRelAngle& angle);
  CVector3f& Normalize();
  float Magnitude() const;
  CVector3f AsNormalized() const;
  bool IsNotInf() const;
  bool IsMagnitudeSafe() const;
  bool CanBeNormalized() const;
  static float GetAngleDiff(const CVector3f& a, const CVector3f& b);
  bool IsEqu(const CVector3f& other, float epsilon = FLT_EPSILON) const;
  static CVector3f Lerp(const CVector3f& a, const CVector3f& b, float v) {
    float inv = 1.f - v;
    float x = inv * a.GetX() + v * b.GetX();
    float y = inv * a.GetY() + v * b.GetY();
    float z = inv * a.GetZ() + v * b.GetZ();
    return CVector3f(x, y, z);
  }
  inline float MagSquared() const { return GetX() * GetX() + GetY() * GetY() + GetZ() * GetZ(); }
  static CVector3f Cross(const CVector3f& lhs, const CVector3f& rhs) {
    const float x = (lhs.GetY() * rhs.GetZ()) - (rhs.GetY() * lhs.GetZ());
    const float y = (lhs.GetZ() * rhs.GetX()) - (rhs.GetZ() * lhs.GetX());
    const float z = (lhs.GetX() * rhs.GetY()) - (rhs.GetX() * lhs.GetY());
    return CVector3f(x, y, z);
  }

  float& operator[](EDimX dim) { return mX; }
  float& operator[](EDimY dim) { return mY; }
  float& operator[](EDimZ dim) { return mZ; }
  const float& operator[](EDimX) const { return mX; }
  const float& operator[](EDimY) const { return mY; }
  const float& operator[](EDimZ) const { return mZ; }

  float& operator[](int i) { return (&mX)[i]; }
  float operator[](int i) const { return (&mX)[i]; }
  bool IsNonZero() const { return mX != 0.f || mY != 0.f || mZ != 0.f; }

  CVector3f DropZ() const { return CVector3f(mX, mY, 0.f); }

  CVector3f& operator+=(const CVector3f& other) {
    mX += other.mX;
    mY += other.mY;
    mZ += other.mZ;
    return *this;
  }
  CVector3f& operator-=(const CVector3f& other) {
    mX -= other.mX;
    mY -= other.mY;
    mZ -= other.mZ;
    return *this;
  }
  CVector3f& operator*=(const float v) {
    mX *= v;
    mY *= v;
    mZ *= v;
    return *this;
  }
  CVector3f& operator/=(const float v) {
    mX /= v;
    mY /= v;
    mZ /= v;
    return *this;
  }

  CVector2f ToVec2f() const {
    return CVector2f(mX, mY);
  }

  static float Dot(const CVector3f& a, const CVector3f& b) {
    return (a.GetX() * b.GetX()) + (a.GetY() * b.GetY()) + (a.GetZ() * b.GetZ());
  }

  static const CVector3f& Zero() { return sZeroVector; }
  static const CVector3f& Up() { return sUpVector; }
  static const CVector3f& Down() { return sDownVector; }
  static const CVector3f& Left() { return sLeftVector; }
  static const CVector3f& Right() { return sRightVector; }
  static const CVector3f& Forward() { return sForwardVector; }
  static const CVector3f& Back() { return sBackVector; }

protected:
  float mX;
  float mY;
  float mZ;

  static CVector3f sZeroVector;
  static CVector3f sUpVector;
  static CVector3f sDownVector;
  static CVector3f sLeftVector;
  static CVector3f sRightVector;
  static CVector3f sForwardVector;
  static CVector3f sBackVector;
};
CHECK_SIZEOF(CVector3f, 0xc)

// ClassifyVector__FRC9CVector3f
// TGetType<9CVector3f>__FRC9CVector3f
// close_enough__FRC9CVector3fRC9CVector3ff in CloseEnough.cpp

inline bool operator==(const CVector3f& lhs, const CVector3f& rhs) {
  return lhs.GetX() == rhs.GetX() && lhs.GetY() == rhs.GetY() && lhs.GetZ() == rhs.GetZ();
}
inline bool operator!=(const CVector3f& lhs, const CVector3f& rhs) {
  return lhs.GetX() != rhs.GetX() || lhs.GetY() != rhs.GetY() || lhs.GetZ() != rhs.GetZ();
}
inline CVector3f operator-(const CVector3f& lhs, const CVector3f& rhs) {
  float x = lhs.GetX() - rhs.GetX();
  float y = lhs.GetY() - rhs.GetY();
  float z = lhs.GetZ() - rhs.GetZ();
  return CVector3f(x, y, z);
}
inline CVector3f operator+(const CVector3f& lhs, const CVector3f& rhs) {
  float x = lhs.GetX() + rhs.GetX();
  float y = lhs.GetY() + rhs.GetY();
  float z = lhs.GetZ() + rhs.GetZ();
  return CVector3f(x, y, z);
}

// TODO real?
inline CVector3f operator*(const CVector3f& lhs, const CVector3f& rhs) {
  float x = lhs.GetX() * rhs.GetX();
  float y = lhs.GetY() * rhs.GetY();
  float z = lhs.GetZ() * rhs.GetZ();
  return CVector3f(x, y, z);
}

inline CVector3f operator*(const CVector3f& vec, const float f) {
  float x = vec.GetX() * f;
  float y = vec.GetY() * f;
  float z = vec.GetZ() * f;
  return CVector3f(x, y, z);
}

inline CVector3f operator*(const float f, const CVector3f& vec) {
  float x = f * vec.GetX();
  float y = f * vec.GetY();
  float z = f * vec.GetZ();
  return CVector3f(x, y, z);
}

inline CVector3f operator/(const CVector3f& vec, const float f) {
  float x = vec.GetX() / f;
  float y = vec.GetY() / f;
  float z = vec.GetZ() / f;
  return CVector3f(x, y, z);
}
inline CVector3f operator-(const CVector3f& vec) {
  return CVector3f(-vec.GetX(), -vec.GetY(), -vec.GetZ());
}

#endif // _CVECTOR3F
