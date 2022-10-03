#ifndef _CAXISANGLE_HPP
#define _CAXISANGLE_HPP

#include "types.h"

#include "Kyoto/Math/CVector3f.hpp"

class CAxisAngle : CVector3f {
public:
  CAxisAngle(f32 x, f32 y, f32 z) : CVector3f(x, y, z) {}
  CAxisAngle(const CAxisAngle& other) : CVector3f(other) {}

  static const CAxisAngle& Identity();
  
  const CVector3f& GetVector() const;

};
CHECK_SIZEOF(CAxisAngle, 0xc)

#endif
