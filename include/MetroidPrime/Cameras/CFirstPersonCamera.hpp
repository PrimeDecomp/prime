#ifndef _CFIRSTPERSONCAMERA
#define _CFIRSTPERSONCAMERA

#include "MetroidPrime/Cameras/CGameCamera.hpp"

class CFirstPersonCamera : public CGameCamera {
public:
  void SetScriptPitchId(TUniqueId uid) { x1c4_pitchId = uid; }

private:
  float x188_orbitCameraSpeed;
  bool x18c_lockCamera;
  CTransform4f x190_gunFollowXf;
  float x1c0_pitch;
  TUniqueId x1c4_pitchId;
  bool x1c6_24_deferBallTransitionProcessing : 1;
  CVector3f x1c8_closeInVec;
  float x1d4_closeInTimer;
};

#endif // _CFIRSTPERSONCAMERA
