#ifndef _CPLAYERSTATE_HPP
#define _CPLAYERSTATE_HPP

#include "types.h"

class CPlayerState {
public:
  void SetIsFusionEnabled(bool v);

private:
  u8 pad[0x198];
};

#endif
