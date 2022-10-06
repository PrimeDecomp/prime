#ifndef _CGRAPPLEARM_HPP_
#define _CGRAPPLEARM_HPP_

#include "types.h"

class CVector3f;

class CGrappleArm {
public:
  CGrappleArm(const CVector3f& scale);
  ~CGrappleArm();

  void PreRender(CStateManager& mgr, const CFrustumPlanes& frustum, const CVector3f& camPos);
  
  bool GetActive() const { return x3b2_24_active; }

private:
  u8 x0_pad[0x3b0];
  s16 x3b0_rumbleHandle;
  bool x3b2_24_active : 1; 
  bool x3b2_25_beamActive : 1;
  bool x3b2_26_grappleHit : 1;
  bool x3b2_27_armMoving : 1;
  bool x3b2_28_isGrappling : 1;
  bool x3b2_29_suitLoading : 1;
};
CHECK_SIZEOF(CGrappleArm, 0x3b4)

#endif // _CGRAPPLEARM_HPP_
