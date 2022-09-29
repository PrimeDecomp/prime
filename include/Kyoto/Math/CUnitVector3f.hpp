#ifndef _CUNITVECTOR3F_HPP
#define _CUNITVECTOR3F_HPP

#include "types.h"

#include "Kyoto/Math/CVector3f.hpp"

class CUnitVector3f : public CVector3f {
public:
  enum ENormalize {
    // TODO
  };
  CUnitVector3f(f32 x, f32 y, f32 z);
  CUnitVector3f(const CVector3f& vec);
  // TODO
};
CHECK_SIZEOF(CUnitVector3f, 0xc)

#endif
