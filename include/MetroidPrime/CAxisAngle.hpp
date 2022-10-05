#ifndef _CAXISANGLE_HPP
#define _CAXISANGLE_HPP

#include "types.h"

#include <math.h>
#include "Kyoto/Math/CVector3f.hpp"

class CAxisAngle : protected CVector3f {
public:
  CAxisAngle(f32 x, f32 y, f32 z) : CVector3f(x, y, z) {}
  //CAxisAngle(const CAxisAngle& other) : CVector3f(other) {}

  static const CAxisAngle& Identity();
  
  const CVector3f& GetVector() const;
/*
  CAxisAngle& operator=(const CAxisAngle& other) {
    int otherX = __HI(other.mX);
    __HI(mX) = otherX;
      int otherY = __HI(other.mY);
    __HI(mY) = otherY;
    int otherZ = __HI(other.mZ);
    __HI(mZ) = otherZ;
    return *this;
  }
  */
};

CAxisAngle operator+(const CAxisAngle& lhs, const CAxisAngle& rhs);
CHECK_SIZEOF(CAxisAngle, 0xc)

#endif
