#include "MetroidPrime/CEulerAngles.hpp"

#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Math/CMatrix3f.hpp"
#include "Kyoto/Math/CQuaternion.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Math/CloseEnough.hpp"

CEulerAngles CEulerAngles::sIdentity(0.f, 0.f, 0.f);

CEulerAngles CEulerAngles::FromTransform(const CTransform4f& xf) {
  const CMatrix3f& mtx = CMatrix3f::FromTransform(xf);
  const float sq = sqrt(mtx.Get11() * mtx.Get11() + mtx.Get01() * mtx.Get01());
  if (!close_enough(sq, 0.f)) {
    double roll;
    double pitch;
    double yaw;
    yaw = -atan2(mtx.Get01(), mtx.Get11());
    pitch = -atan2(mtx.Get20(), mtx.Get22());
    roll = -atan2(-mtx.Get21(), sq);
    return CEulerAngles(roll, pitch, yaw);
  }
  double pitch = -atan2(-mtx.Get02(), mtx.Get00());
  double roll = -atan2(-mtx.Get21(), sq);
  return CEulerAngles(roll, pitch, 0.f);
}

CEulerAngles CEulerAngles::FromQuaternion(const CQuaternion& quat) {}
