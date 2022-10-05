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
  const CVector3f& GetVector() const;
  
private:
  CVector3f mVector;
};

CAxisAngle operator+(const CAxisAngle& lhs, const CAxisAngle& rhs);
CHECK_SIZEOF(CAxisAngle, 0xc)

#endif
