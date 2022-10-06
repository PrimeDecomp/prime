#ifndef _CGSFREELOOK_HPP
#define _CGSFREELOOK_HPP

#include "types.h"

class CAnimData;
class CStateManager;

class CGSFreeLook {
  float x0_delay;
  int x4_cueAnimId;
  int x8_loopState; // In, loop, out
  int xc_gunId;
  int x10_setId;
  bool x14_idle;

public:
  CGSFreeLook();

  int GetSetId() const { return x10_setId; }
  void SetLoopState(int l) { x8_loopState = l; }
  int GetLoopState() const { return x8_loopState; }
  void SetIdle(bool l) { x14_idle = l; }
  int GetGunId() const { return xc_gunId; }
  bool Update(CAnimData& data, float dt, CStateManager& mgr);
  int SetAnim(CAnimData& data, int gunId, int setId, int loopState, CStateManager& mgr, float delay);
};
CHECK_SIZEOF(CGSFreeLook, 0x18)

#endif // _CGSFREELOOK_HPP
