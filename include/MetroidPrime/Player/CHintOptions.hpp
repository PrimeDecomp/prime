#ifndef _CHINTOPTIONS
#define _CHINTOPTIONS

#include "types.h"

#include "rstl/vector.hpp"
#include "rstl/string.hpp"

enum EHintState { kHS_Zero, kHS_Waiting, kHS_Displaying, kHS_Delayed };

class CStateManager;

class CHintOptions {
public:
  struct SHintState {
    EHintState x0_state;
    float x4_time;
    bool x8_dismissed;

    bool CanContinue();
  };

  void SetHintNextTime();
  void Update(float dt, const CStateManager& mgr);

  void DelayHint(const rstl::string& name);
  void ActivateImmediateHintTimer(const rstl::string& name);
  void ActivateContinueDelayHintTimer(const rstl::string& name);

  const SHintState* GetCurrentDisplayedHint() const;
  int GetNextHintIdx();
  const rstl::vector< SHintState >& GetHintStates() const { return x0_hintStates; }

private:
  rstl::vector< SHintState > x0_hintStates;
  int x10_nextHintIdx;
};

typedef CHintOptions::SHintState SHintState;

#endif // _CHINTOPTIONS
