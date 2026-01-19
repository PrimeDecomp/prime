#include "MetroidPrime/CEulerAngles.hpp"

#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Math/CMatrix3f.hpp"
#include "Kyoto/Math/CQuaternion.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Math/CloseEnough.hpp"

CEulerAngles CEulerAngles::sIdentity(0.f, 0.f, 0.f);

CEulerAngles CEulerAngles::FromTransform(const CTransform4f& xf) {
  const CMatrix3f& mtx = CMatrix3f::FromTransform(xf);
  float sq = sqrt(mtx.Get11() * mtx.Get11() + mtx.Get01() * mtx.Get01());
  if (!close_enough(sq, 0.f)) {
    double yaw = -atan2(mtx.Get01(), mtx.Get11());
    double pitch = -atan2(mtx.Get20(), mtx.Get22());
    double roll = -atan2(-mtx.Get21(), sq);
    return CEulerAngles(roll, pitch, yaw);
  } else {
    double pitch = -atan2(-mtx.Get02(), mtx.Get00());
    double roll = -atan2(-mtx.Get21(), sq);
    return CEulerAngles(roll, pitch, 0.f);
  }
}

CEulerAngles CEulerAngles::FromQuaternion(const CQuaternion& quat) {
  return FromTransform(quat.BuildTransform4f());
}
