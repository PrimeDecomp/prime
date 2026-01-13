#ifndef _CUNITVECTOR3F
#define _CUNITVECTOR3F

#include "types.h"

#include "Kyoto/Math/CVector3f.hpp"

class CUnitVector3f : public CVector3f {
public:
  enum ENormalize {
    kN_No,
    kN_Yes,
  };
  CUnitVector3f(const float x, const float y, const float z) : CVector3f(x, y, z) {}
  CUnitVector3f(const CVector3f& vec, const ENormalize normalize) : CVector3f(vec.GetX(), vec.GetY(), vec.GetZ()) {
    if (normalize == kN_Yes) {
      Normalize();
    }
  }
  CUnitVector3f(const CVector3f& vec); // real? see CPlane::CPlane
  // TODO

  static CUnitVector3f Forward() {
    return CUnitVector3f(CVector3f::Forward().GetX(), CVector3f::Forward().GetY(),
                         CVector3f::Forward().GetZ());
  }
};
CHECK_SIZEOF(CUnitVector3f, 0xc)

inline CUnitVector3f operator-(const CUnitVector3f& vec) {
  return CUnitVector3f(-vec.GetX(), -vec.GetY(), -vec.GetZ());
}

#endif // _CUNITVECTOR3F
