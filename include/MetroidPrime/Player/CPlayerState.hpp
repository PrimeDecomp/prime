#ifndef _CPLAYERSTATE_HPP
#define _CPLAYERSTATE_HPP

#include "types.h"

class CStateManager;

class CPlayerState {
public:
  enum EPlayerVisor {
    kPV_Combat,
    kPV_XRay,
    kPV_Scan,
    kPV_Thermal,
  };

  EPlayerVisor GetActiveVisor(const CStateManager& mgr) const;

  void SetIsFusionEnabled(bool v);

private:
  u8 pad[0x198];
};

#endif
