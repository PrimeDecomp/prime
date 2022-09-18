#ifndef _CQUATERNION_HPP
#define _CQUATERNION_HPP

#include "types.h"

class CQuaternion {
public:
  CQuaternion(f32 w, f32 x, f32 y, f32 z) : w(w), x(x), y(y), z(z) {}
  // CQuaternion(const CQuaternion& other)
  // : w(other.w)
  // , x(other.x)
  // , y(other.y)
  // , z(other.z) {}

  static const CQuaternion& NoRotation() { return sNoRotation; }

private:
  f32 w;
  f32 x;
  f32 y;
  f32 z;

  static const CQuaternion sNoRotation;
};

#endif