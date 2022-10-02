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

  void DelayHint(const rstl::string& name);
  void ActivateImmediateHintTimer(const rstl::string& name);
  void ActivateContinueDelayHintTimer(const rstl::string& name);

private:
  rstl::vector< SHintState > x0_hintStates;
  int x10_nextHintIdx;
};

#endif
