#ifndef _CEULERANGLES
#define _CEULERANGLES

#include "Kyoto/Math/CVector3f.hpp"

class CTransform4f;
class CQuaternion;

class CEulerAngles : public CVector3f {
public:
  CEulerAngles(const float roll, const float pitch, const float yaw)
  : CVector3f(roll, pitch, yaw) {}

  static CEulerAngles FromTransform(const CTransform4f&);
  static CEulerAngles FromQuaternion(const CQuaternion&);
  float GetYaw() const { return GetZ(); }

private:
  static CEulerAngles sIdentity;
};
CHECK_SIZEOF(CEulerAngles, 0xc)

#endif // _CEULERANGLES
