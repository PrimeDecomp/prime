#ifndef _CADDITIVEANIMATIONINFO
#define _CADDITIVEANIMATIONINFO

#include "Kyoto/Streams/CInputStream.hpp"

class CAdditiveAnimationInfo {
public:
  CAdditiveAnimationInfo(const float fadeInDur, const float fadeOutDur)
  : x0_fadeInDur(fadeInDur), x4_fadeOutDur(fadeOutDur) {}
  CAdditiveAnimationInfo(CInputStream& in)
  : x0_fadeInDur(in.Get< float >()), x4_fadeOutDur(in.Get< float >()) {}

  float GetFadeInTime() const { return x0_fadeInDur; }
  float GetFadeOutTime() const { return x4_fadeOutDur; }

private:
  float x0_fadeInDur;
  float x4_fadeOutDur;
};

#endif
