#ifndef _CINTERPOLATIONCAMERA
#define _CINTERPOLATIONCAMERA

#include "MetroidPrime/Cameras/CGameCamera.hpp"

class CInterpolationCamera : public CGameCamera {
public:
  CInterpolationCamera(TUniqueId uid, const CTransform4f& xf);
  // CGameCamera
  void ProcessInput(const CFinalInput&, CStateManager& mgr);
  void Reset(const CTransform4f&, CStateManager& mgr);
private:
  TUniqueId x188_targetId;
  float x18c_time;
  float x190_maxTime;
  CTransform4f x194_;
  CVector3f x1c4_lookPos;
  float x1d0_positionSpeed;
  float x1d4_rotationSpeed;
  bool x1d8_24_sinusoidal : 1;
  float x1dc_closeInAngle;
};

#endif // _CINTERPOLATIONCAMERA
