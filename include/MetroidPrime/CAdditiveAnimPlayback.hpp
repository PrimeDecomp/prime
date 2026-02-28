#ifndef _CADDITIVEANIMPLAYBACK
#define _CADDITIVEANIMPLAYBACK

#include "types.h"

#include "Kyoto/Animation/CAdditiveAnimationInfo.hpp"

#include "rstl/rc_ptr.hpp"

class CAnimData;
class CAnimTreeNode;
class CCharLayoutInfo;
class CSegIdList;
class CSegStatementSet;

class CAdditiveAnimPlayback {
  friend class CAnimData;

public:
  enum EPlaybackPhase {
    kPP_None,
    kPP_FadingIn,
    kPP_FadingOut,
    kPP_FadedIn,
    kPP_FadedOut,
  };

  CAdditiveAnimPlayback(const rstl::ncrc_ptr< CAnimTreeNode >& anim, float weight, bool loop,
                        const CAdditiveAnimationInfo& info, bool fadeOut);

  const rstl::rc_ptr< CAnimTreeNode >& GetAnimationTree() const;
  rstl::ncrc_ptr< CAnimTreeNode >& AnimationTree() { return x8_anim; }

  float GetWeight() const;
  void SetWeight(float weight);

  EPlaybackPhase GetFadingMode() const;
  bool IsLoop() const { return x14_active; }
  void SetLoop(bool loop) { x14_active = loop; }

  bool IsFadeOutWhenAnimOver() const { return x20_needsFadeOut; }
  void SetFadeOutWhenAnimOver(bool fadeOut) { x20_needsFadeOut = fadeOut; }

  void FadeOut();
  void Update(float);
  void AddToSegStatementSet(const CSegIdList&, const CCharLayoutInfo&, CSegStatementSet&) const;

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
