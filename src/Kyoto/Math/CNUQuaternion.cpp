#include "Kyoto/Math/CNUQuaternion.hpp"

#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Math/CQuaternion.hpp"

CNUQuaternion::CNUQuaternion(float w, const CVector3f& imaginary) : w(w), imaginary(imaginary) {}

CNUQuaternion::CNUQuaternion(float w, float x, float y, float z) : w(w), imaginary(x, y, z) {}

CNUQuaternion CNUQuaternion::operator*(const CNUQuaternion& rhs) const {
  return CNUQuaternion(w * rhs.w - CVector3f::Dot(imaginary, rhs.imaginary),
                       w * rhs.imaginary + rhs.w * imaginary +
                           CVector3f::Cross(imaginary, rhs.imaginary));
}

CNUQuaternion& CNUQuaternion::operator+=(const CNUQuaternion& rhs) {
  w += rhs.w;
  imaginary += rhs.imaginary;
  return *this;
}

CNUQuaternion CNUQuaternion::AsNormalized() const {
  const float scale = CMath::InvSqrtF(w * w + imaginary.MagSquared());
  return CNUQuaternion(scale * w, scale * GetVector());
}

CNUQuaternion CNUQuaternion::BuildFromAxisAngle(const CVector3f& axis, float angle) {
  const float halfAngle = angle / 2.f;
  const float sineAngle = CMath::SlowSineR(halfAngle);
  return CNUQuaternion(CMath::SlowCosineR(halfAngle), sineAngle * axis.AsNormalized());
}

CNUQuaternion CNUQuaternion::BuildFromQuaternion(const CQuaternion& quat) {
  return CNUQuaternion(quat.GetScalar(), quat.GetVector());
}

CNUQuaternion CNUQuaternion::BuildFromMatrix3f(const CMatrix3f& matrix) {
  const float trace = matrix.Get00() + matrix.Get11() + matrix.Get22();
  if (trace >= 0.f) {
    float size = CMath::SqrtF(trace + 1.f);
    const float scale = 0.5f / size;
    size = 0.5f * size;
    return CNUQuaternion(size, scale * (matrix.Get21() - matrix.Get12()),
                         scale * (matrix.Get02() - matrix.Get20()),
                         scale * (matrix.Get10() - matrix.Get01()));
  }

  uint axis = 0;
  if (matrix.Get11() > matrix.Get00()) {
    axis = 1;
    if (matrix.Get22() > matrix.Get11()) {
      axis = 2;
    }
  } else if (matrix.Get22() > matrix.Get00()) {
    axis = 2;
  }
  switch (axis) {
  case 0: {
    float size = CMath::SqrtF(matrix.Get00() - (matrix.Get11() + matrix.Get22()) + 1.f);
    const float scale = 0.5f / size;
    size = 0.5f * size;
    return CNUQuaternion(scale * (matrix.Get21() - matrix.Get12()), size,
                         scale * (matrix.Get01() + matrix.Get10()),
                         scale * (matrix.Get20() + matrix.Get02()));
  }
  case 1: {
    float size = CMath::SqrtF(matrix.Get11() - (matrix.Get22() + matrix.Get00()) + 1.f);
    const float scale = 0.5f / size;
    size = 0.5f * size;
    return CNUQuaternion(scale * (matrix.Get02() - matrix.Get20()),
                         scale * (matrix.Get01() + matrix.Get10()), size,
                         scale * (matrix.Get12() + matrix.Get21()));
  }
  case 2: {
    float size = CMath::SqrtF(matrix.Get22() - (matrix.Get00() + matrix.Get11()) + 1.f);
    const float scale = 0.5f / size;
    size = 0.5f * size;
    return CNUQuaternion(scale * (matrix.Get10() - matrix.Get01()),
                         scale * (matrix.Get20() + matrix.Get02()),
                         scale * (matrix.Get12() + matrix.Get21()), size);
  }
  default:
    return CNUQuaternion(0.f, 0.f, 0.f, 0.f);
  }
}

CNUQuaternion operator*(const CNUQuaternion& quat, float scale) {
  return CNUQuaternion(scale * quat.GetScalar(), scale * quat.GetVector());
}

CNUQuaternion operator*(float scale, const CNUQuaternion& quat) {
  return CNUQuaternion(scale * quat.GetScalar(), scale * quat.GetVector());
}

CQuaternion CQuaternion::FromNUQuaternion(const CNUQuaternion& quat) {
  const CNUQuaternion& normalized = quat.AsNormalized();
  return CQuaternion(normalized.GetScalar(), normalized.GetVector());
}
