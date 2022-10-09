#ifndef _CADDITIVEANIMPLAYBACK
#define _CADDITIVEANIMPLAYBACK

#include "types.h"

#include "rstl/rc_ptr.hpp"

class CAnimTreeNode;

class CAdditiveAnimationInfo {
private:
  float x0_fadeInDur;
  float x4_fadeOutDur;
};

class CAdditiveAnimPlayback {
public:
  enum EPlaybackPhase {
    kPP_None,
    kPP_FadingIn,
    kPP_FadingOut,
    kPP_FadedIn,
    kPP_FadedOut,
  };

private:
  CAdditiveAnimationInfo x0_info;
  rstl::ncrc_ptr< CAnimTreeNode > x8_anim;
  float xc_targetWeight;
  float x10_curWeight;
  bool x14_active;
  float x18_weightTimer;
  EPlaybackPhase x1c_phase;
  bool x20_needsFadeOut;
};
CHECK_SIZEOF(CAdditiveAnimPlayback, 0x24)

#endif // _CADDITIVEANIMPLAYBACK
