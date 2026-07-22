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
  CUnitVector3f(const float x, const float y, const float z, ENormalize)
  : CVector3f(x, y, z) {}
  CUnitVector3f(const CVector3f& vec, const ENormalize normalize) : CVector3f(vec) {
    if (normalize == kN_Yes) {
      Normalize();
    }
  }
  CUnitVector3f(const CVector3f& vec);
};
CHECK_SIZEOF(CUnitVector3f, 0xc)

inline CUnitVector3f operator-(const CUnitVector3f& vec) {
  return CUnitVector3f(-vec.GetX(), -vec.GetY(), -vec.GetZ());
}

inline const CUnitVector3f& CVector3f::Up() { return sUpVector; }
inline const CUnitVector3f& CVector3f::Down() { return sDownVector; }
inline const CUnitVector3f& CVector3f::Left() { return sLeftVector; }
inline const CUnitVector3f& CVector3f::Right() { return sRightVector; }
inline const CUnitVector3f& CVector3f::Forward() { return sForwardVector; }
inline const CUnitVector3f& CVector3f::Back() { return sBackVector; }

#endif // _CUNITVECTOR3F
