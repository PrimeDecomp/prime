#include "MetroidPrime/CEulerAngles.hpp"

#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Math/CMatrix3f.hpp"
#include "Kyoto/Math/CQuaternion.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Math/CloseEnough.hpp"

CEulerAngles CEulerAngles::sIdentity(0.f, 0.f, 0.f);

CEulerAngles CEulerAngles::FromTransform(const CTransform4f& xf) {
  // TODO: actually CMatrix3f::FromTransform and uninlined, why?
  CMatrix3f mtx(xf);
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
  float quatDot = CQuaternion::Dot(quat, quat);
  float t0 = 0.f;
  if (quatDot > 0.f)
    t0 = 2.f / quatDot;

  double t1 = 1.0 - (t0 * quat.GetX() * quat.GetX() + t0 * quat.GetZ() * quat.GetZ());
  double t2 = t0 * quat.GetY() * quat.GetX() - t0 * quat.GetZ() * quat.GetW();
  double t3 = t1 * t1 + t2 * t2;

  double t4 = 0.0;
  if (t3 > 0.0)
    t4 = CMath::SqrtD(t3);

  double t5 = t0 * quat.GetZ() * quat.GetY() + t0 * quat.GetX() * quat.GetW();

  if (close_enough(t4, 0.0)) {
    return CEulerAngles(
        -atan2(-t5, t4),
        -atan2(-(t0 * quat.GetZ() * quat.GetX() + t0 * quat.GetY() * quat.GetW()),
               1.0 - (t0 * quat.GetY() * quat.GetY() + t0 * quat.GetZ() * quat.GetZ())),
        0.0f);
  } else {
    return CEulerAngles(
        -atan2(-t5, t4),
        -atan2(t0 * quat.GetZ() * quat.GetX() - t0 * quat.GetY() * quat.GetW(),
               1.0 - (t0 * quat.GetX() * quat.GetX() + t0 * quat.GetY() * quat.GetY())),
        -atan2(t2, t1));
  }
}
