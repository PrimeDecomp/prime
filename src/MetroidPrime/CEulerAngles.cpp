#include "MetroidPrime/CEulerAngles.hpp"

#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Math/CQuaternion.hpp"
#include "Kyoto/Math/CloseEnough.hpp"

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
