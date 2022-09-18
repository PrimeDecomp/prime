#ifndef _CAREAFOG_HPP
#define _CAREAFOG_HPP

#include "types.h"

#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Math/CVector2f.hpp"

enum ERglFogMode {
  // TODO
};

class CAreaFog {
private:
  ERglFogMode x0_fogMode;
  CVector2f x4_rangeCur;
  CVector2f xc_rangeTarget;
  CVector2f x14_rangeDelta;
  CColor x1c_colorCur;
  unkptr x20_;
  unkptr x24_;
  CColor x28_colorTarget;
  unkptr x2c_;
  unkptr x30_;
  f32 x34_colorDelta;
};
CHECK_SIZEOF(CAreaFog, 0x38)

#endif
