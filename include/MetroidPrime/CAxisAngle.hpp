#ifndef _CAXISANGLE_HPP
#define _CAXISANGLE_HPP

#include "types.h"

#include <math.h>
#include "Kyoto/Math/CVector3f.hpp"

class CAxisAngle {
public:
  CAxisAngle(f32 x, f32 y, f32 z) : mVector(x, y, z) {}
  explicit CAxisAngle(const CVector3f& vec);
  static const CAxisAngle& Identity();
  
  float GetAngle() const;
  const CVector3f& GetVector() const;

  const CAxisAngle& operator+=(const CAxisAngle& rhs);
private:
  CVector3f mVector;
};

CAxisAngle operator+(const CAxisAngle& lhs, const CAxisAngle& rhs);
CHECK_SIZEOF(CAxisAngle, 0xc)

#endif
