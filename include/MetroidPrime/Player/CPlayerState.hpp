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
  enum EPlayerSuit {
    kPS_Invalid = -1,
    kPS_Power,
    kPS_Gravity,
    kPS_Varia,
    kPS_Phazon,
    kPS_FusionPower,
    kPS_FusionGravity,
    kPS_FusionVaria,
    kPS_FusionPhazon,
  };
  enum EBeamId {
    kBI_Invalid = -1,
    kBI_Power,
    kBI_Ice,
    kBI_Wave,
    kBI_Plasma,
    kBI_Phazon,
    kBI_Phazon2 = 27,
  };

  EPlayerVisor GetActiveVisor(const CStateManager& mgr) const;

  void SetIsFusionEnabled(bool v);

private:
  u8 pad[0x198];
};

#endif
