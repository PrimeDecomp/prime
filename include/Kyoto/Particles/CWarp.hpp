#ifndef _CWARP
#define _CWARP

#include "Kyoto/SObjectTag.hpp"

#include "rstl/vector.hpp"

class CParticle;
class CColor;
class CVector3f;

class CWarp {
public:
  virtual ~CWarp();
  virtual bool UpdateWarp() = 0;
  virtual void ModifyParticles(int particleCount, int stripe, int*, CVector3f* particlePos,
                               CVector3f* particlePrevPos, CVector3f* particleVelocity,
                               CColor* color, float* lineLengthOrSize, float* lineWidthOrRota) = 0;
  virtual void Activate(bool) = 0;
  virtual bool IsActivated() = 0;
  virtual FourCC Get4CharID() = 0;
};

#endif // _CWARP
