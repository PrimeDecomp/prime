#ifndef _CAXISANGLE
#define _CAXISANGLE

#include "types.h"

#include "Kyoto/Math/CUnitVector3f.hpp"
#include "Kyoto/Math/CVector3f.hpp"

#include <math.h>

class CAxisAngle {
  static const CAxisAngle sIdentity;
  friend CAxisAngle operator+(const CAxisAngle&, const CAxisAngle&);
  friend CAxisAngle operator*(const CAxisAngle&, const float&);
  friend CAxisAngle operator*(const float&, const CAxisAngle&);

public:
  CAxisAngle() : mVector(CVector3f::Zero()) {}
  explicit CAxisAngle(const CVector3f& vec);
  explicit CAxisAngle(const CUnitVector3f& vec, float);
  CAxisAngle(float x, float y, float z) : mVector(x, y, z) {}
  void FromVector(const CVector3f& angle);

  static const CAxisAngle& Identity();
  float GetAngle() const;
  const CVector3f& GetVector() const;

  const CAxisAngle& operator*=(const float& rhs);
  const CAxisAngle& operator+=(const CAxisAngle& rhs);

private:
  CVector3f mVector;
};

CAxisAngle operator+(const CAxisAngle& lhs, const CAxisAngle& rhs);
CAxisAngle operator*(const CAxisAngle& lhs, const float& rhs);
CAxisAngle operator*(const float& rhs, const CAxisAngle& lhs);

CHECK_SIZEOF(CAxisAngle, 0xc)

#endif // _CAXISANGLE
