#ifndef __CVECTOR3F_HPP__
#define __CVECTOR3F_HPP__

#include "types.h"

#include "Kyoto/Math/CVector2f.hpp"

#include "float.h"

class CInputStream;
class COutputStream;

enum EDimX { kDX };
enum EDimY { kDY };
enum EDimZ { kDZ };

class CVector3f {
public:
  explicit CVector3f(f32 x, f32 y, f32 z) : mX(x), mY(y), mZ(z) {}
  CVector3f(const CVector2f& v, f32 z) : mX(v.GetX()), mY(v.GetY()), mZ(z) {}

  CVector3f(CInputStream& in);
  void PutTo(COutputStream& out) const;

  f32 GetX() const { return mX; }
  f32 GetY() const { return mY; }
  f32 GetZ() const { return mZ; }

  void SetX(f32 x) { mX = x; }
  void SetY(f32 y) { mY = y; }
  void SetZ(f32 z) { mZ = z; }

  // ByElementMultiply__9CVector3fFRC9CVector3fRC9CVector3f
  // Slerp__9CVector3fFRC9CVector3fRC9CVector3fRC9CRelAngle
  void Normalize();
  f32 Magnitude() const;
  CVector3f AsNormalized() const;
  bool CanBeNormalized() const;
  // GetAngleDiff__9CVector3fFRC9CVector3fRC9CVector3f
  // IsEqu__9CVector3fCFRC9CVector3ff
  bool IsEqu(const CVector3f& other, f32 epsilon = FLT_EPSILON) const;
  // Lerp__9CVector3fFRC9CVector3fRC9CVector3ff
  // MagSquared__9CVector3fCFv weak
  // Cross__9CVector3fFRC9CVector3fRC9CVector3f weak

  f32& operator[](EDimX dim) { return mX; }
  f32& operator[](EDimY dim) { return mY; }
  f32& operator[](EDimZ dim) { return mZ; }
  f32 operator[](EDimX) const { return mX; }
  f32 operator[](EDimY) const { return mY; }
  f32 operator[](EDimZ) const { return mZ; }

  f32& operator[](int i) { return (&mX)[i]; }
  f32 operator[](int i) const { return (&mX)[i]; }
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
  CVector3f& operator*=(f32 v) {
    mX *= v;
    mY *= v;
    mZ *= v;
    return *this;
  }
  CVector3f& operator/=(f32 v) {
    mX /= v;
    mY /= v;
    mZ /= v;
    return *this;
  }

  static f32 Dot(const CVector3f& a, const CVector3f& b) {
    return (a.GetX() * b.GetX()) + (a.GetY() * b.GetY()) + (a.GetZ() * b.GetZ());
  }

  static const CVector3f& Zero() { return sZeroVector; }
  static const CVector3f& Up() { return sUpVector; }
  static const CVector3f& Down() { return sDownVector; }
  static const CVector3f& Left() { return sLeftVector; }
  static const CVector3f& Right() { return sRightVector; }
  static const CVector3f& Forward() { return sForwardVector; }
  static const CVector3f& Back() { return sBackVector; }

private:
  f32 mX;
  f32 mY;
  f32 mZ;

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
  f32 x = lhs.GetX() - rhs.GetX();
  f32 y = lhs.GetY() - rhs.GetY();
  f32 z = lhs.GetZ() - rhs.GetZ();
  return CVector3f(x, y, z);
}
inline CVector3f operator+(const CVector3f& lhs, const CVector3f& rhs) {
  f32 x = lhs.GetX() + rhs.GetX();
  f32 y = lhs.GetY() + rhs.GetY();
  f32 z = lhs.GetZ() + rhs.GetZ();
  return CVector3f(x, y, z);
}
inline CVector3f operator*(const CVector3f& vec, f32 f) {
  f32 x = vec.GetX() * f;
  f32 y = vec.GetY() * f;
  f32 z = vec.GetZ() * f;
  return CVector3f(x, y, z);
}
inline CVector3f operator/(const CVector3f& vec, f32 f) {
  f32 x = vec.GetX() / f;
  f32 y = vec.GetY() / f;
  f32 z = vec.GetZ() / f;
  return CVector3f(x, y, z);
}
inline CVector3f operator-(const CVector3f& vec) {
  f32 x = -vec.GetX();
  f32 y = -vec.GetY();
  f32 z = -vec.GetZ();
  return CVector3f(x, y, z);
}

#endif // __CVECTOR3F_HPP__
