#include "Kyoto/Animation/CAdditiveAnimPlayback.hpp"

#include "Kyoto/Animation/CAnimTreeNode.hpp"
#include "Kyoto/Animation/CSegIdList.hpp"
#include "Kyoto/Animation/CSegStatementSet.hpp"
#include "Kyoto/Math/CloseEnough.hpp"
#include "rstl/math.hpp"

CAdditiveAnimPlayback::CAdditiveAnimPlayback(const rstl::ncrc_ptr< CAnimTreeNode >& anim,
                                             float weight, bool loop,
                                             const CAdditiveAnimationInfo& info, bool fadeOut)
: x0_info(info)
, x8_anim(anim)
, xc_targetWeight(rstl::max_val(0.f, rstl::min_val(weight, 1.f)))
, x10_curWeight(0.f)
, x14_active(loop)
, x18_weightTimer(0.f)
, x1c_phase(kPP_FadingIn)
, x20_needsFadeOut(!loop && fadeOut) {}

void CAdditiveAnimPlayback::SetWeight(float weight) {
  xc_targetWeight = rstl::max_val(0.f, rstl::min_val(weight, 1.f));

  if (x1c_phase == kPP_FadingIn) {
    x10_curWeight = x0_info.GetFadeInTime() > 0.f
                        ? xc_targetWeight * (x18_weightTimer / x0_info.GetFadeInTime())
                        : xc_targetWeight;
    return;
  }
  if (x1c_phase == kPP_FadingOut) {
    x10_curWeight = x0_info.GetFadeOutTime() > 0.f
                        ? xc_targetWeight * (x18_weightTimer / x0_info.GetFadeOutTime())
                        : xc_targetWeight;
    return;
  }
  x10_curWeight = xc_targetWeight;
}

void CAdditiveAnimPlayback::FadeOut() {
  if (x1c_phase == kPP_FadedOut || x1c_phase == kPP_FadedIn) {
    x18_weightTimer = x0_info.GetFadeOutTime();
  } else if (x1c_phase == kPP_FadingIn) {
    x18_weightTimer = (x18_weightTimer / x0_info.GetFadeInTime()) * x0_info.GetFadeOutTime();
  }

  if (x0_info.GetFadeOutTime() > 0.f) {
    x1c_phase = kPP_FadingOut;
    return;
  }

  x1c_phase = kPP_FadedOut;
  x10_curWeight = 0.f;
}

void CAdditiveAnimPlayback::Update(float dt) {
  if (x1c_phase == kPP_FadingIn) {
    const float time = x0_info.GetFadeInTime();
    x18_weightTimer = rstl::min_val(time, x18_weightTimer + dt);
    x10_curWeight = time > 0.f ? xc_targetWeight * (x18_weightTimer / time) : xc_targetWeight;

    if (close_enough(x10_curWeight, xc_targetWeight)) {
      x1c_phase = kPP_FadedIn;
    }
  } else if (x1c_phase == kPP_FadingOut) {
    const float time = x0_info.GetFadeOutTime();
    x18_weightTimer = rstl::max_val(0.f, x18_weightTimer - dt);
    x10_curWeight = time > 0.f ? xc_targetWeight * (x18_weightTimer / time) : 0.f;
    if (close_enough(x10_curWeight, 0.f)) {
      x1c_phase = kPP_FadedOut;
    }
  }
}

void CAdditiveAnimPlayback::AddToSegStatementSet(const CSegIdList& list,
                                                 const CCharLayoutInfo& charInfo,
                                                 CSegStatementSet& set) const {
  CStackSegStatementSet stackSegSet;

  x8_anim->VGetSegStatementSet(list, stackSegSet);

  const size_t count = list.Size();
  for (size_t i = 0; i < count; ++i) {
    const CSegId seg = list[i];
    stackSegSet.Set(list[i], charInfo.GetFromParentUnrotated(seg));
  }

  set.Add(list, charInfo, stackSegSet, x10_curWeight);
}