#ifndef _CHINTOPTIONS_HPP
#define _CHINTOPTIONS_HPP

#include "types.h"

#include "rstl/vector.hpp"

enum EHintState { kHS_Zero, kHS_Waiting, kHS_Displaying, kHS_Delayed };

struct SHintState {
  EHintState x0_state;
  f32 x4_time;
  bool x8_dismissed;
};

class CHintOptions {
public:
  void SetHintNextTime();

private:
  rstl::vector< SHintState > x0_hintStates;
  int x10_nextHintIdx;
};

#endif
