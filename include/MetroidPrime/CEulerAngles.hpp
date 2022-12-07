#ifndef _CEULERANGLES
#define _CEULERANGLES

#include "Kyoto/Math/CVector3f.hpp"

class CTransform4f;
class CQuaternion;

class CEulerAngles : public CVector3f {
public:
  CEulerAngles(float roll, float pitch, float yaw) : CVector3f(roll, pitch, yaw) {}

  static CEulerAngles FromTransform(const CTransform4f&);
  static CEulerAngles FromQuaternion(const CQuaternion&);

private:
  static CEulerAngles sIdentity;
};

#endif // _CEULERANGLES
