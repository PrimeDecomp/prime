#ifndef _CUNITVECTOR3F
#define _CUNITVECTOR3F

#include "types.h"

#include "Kyoto/Math/CVector3f.hpp"

class CUnitVector3f : public CVector3f {
public:
  enum EDontNormalize {
    kN_No,
  };
  
  enum ENormalize {
    kN_Yes,
  };

  CUnitVector3f(const float x, const float y, const float z) : CVector3f(x, y, z) {}
  CUnitVector3f(const float x, const float y, const float z, const ENormalize)
  : CVector3f(x, y, z) {
    Normalize();
  }
  CUnitVector3f(const float x, const float y, const float z, const EDontNormalize)
  : CVector3f(x, y, z) {}

  CUnitVector3f(const CVector3f& vec, const ENormalize) : CVector3f(vec) { Normalize(); }

  CUnitVector3f(const CVector3f& vec, const EDontNormalize) : CVector3f(vec) {}

  CUnitVector3f(const CVector3f& vec);
  CUnitVector3f operator-() const { return CUnitVector3f(-GetX(), -GetY(), -GetZ()); }
};
CHECK_SIZEOF(CUnitVector3f, 0xc)

inline const CUnitVector3f& CVector3f::Up() { return sUpVector; }
inline const CUnitVector3f& CVector3f::Down() { return sDownVector; }
inline const CUnitVector3f& CVector3f::Left() { return sLeftVector; }
inline const CUnitVector3f& CVector3f::Right() { return sRightVector; }
inline const CUnitVector3f& CVector3f::Forward() { return sForwardVector; }
inline const CUnitVector3f& CVector3f::Back() { return sBackVector; }

#endif // _CUNITVECTOR3F
