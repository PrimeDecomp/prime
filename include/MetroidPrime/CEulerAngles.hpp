#ifndef _CEULERANGLES
#define _CEULERANGLES

#include "Kyoto/Math/CVector3f.hpp"

class CQuaternion;

class CEulerAngles : public CVector3f {
public:
  CEulerAngles(float x, float y, float z) : CVector3f(x, y, z) {}
  static CEulerAngles FromQuaternion(const CQuaternion&);
};

#endif // _CEULERANGLES
