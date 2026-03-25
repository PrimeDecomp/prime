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

CEulerAngles CEulerAngles::FromQuaternion(const CQuaternion& quat) {
  const CVector3f& v = quat.GetVector();
  float quatDot = v.GetX() * v.GetX() + v.GetY() * v.GetY() + v.GetZ() * v.GetZ() +
                  quat.GetScalar() * quat.GetScalar();
  float t0 = quatDot > 0.f ? 2.f / quatDot : 0.f;

  float t0_z_z = t0 * v.GetZ() * v.GetZ();
  float t0_y_x = t0 * v.GetY() * v.GetX();
  float t0_x_x = t0 * v.GetX() * v.GetX();
  float t0_z_w = t0 * v.GetZ() * quat.GetScalar();
  float t0_y_y = t0 * v.GetY() * v.GetY();

  float t1 = 1.f - (t0_x_x + t0_z_z);
  float t2 = t0_y_x - t0_z_w;
  float t3 = t1 * t1 + t2 * t2;

  float t0_y_w = t0 * v.GetY() * quat.GetScalar();
  float t0_z_x = t0 * v.GetZ() * v.GetX();
  float t0_z_y = t0 * v.GetZ() * v.GetY();
  float t0_x_w = t0 * v.GetX() * quat.GetScalar();

  float one_minus_yy_zz = 1.f - (t0_y_y + t0_z_z);
  float zx_plus_yw = t0_z_x + t0_y_w;
  float zx_minus_yw = t0_z_x - t0_y_w;
  float t5 = t0_z_y + t0_x_w;
  float one_minus_xx_yy = 1.f - (t0_x_x + t0_y_y);

  float t4 = sqrt(t3);

  if (!close_enough(t4, 0.f)) {
    double yaw = -atan2(t2, t1);
    double pitch = -atan2(zx_minus_yw, one_minus_xx_yy);
    double roll = -atan2(-t5, t4);
    return CEulerAngles(roll, pitch, yaw);
  }
  double pitch = -atan2(-zx_plus_yw, one_minus_yy_zz);
  double roll = -atan2(-t5, t4);
  return CEulerAngles(roll, pitch, 0.f);
}
