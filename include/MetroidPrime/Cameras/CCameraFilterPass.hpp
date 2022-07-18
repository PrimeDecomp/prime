#ifndef _CCAMERAFILTERPASS_HPP
#define _CCAMERAFILTERPASS_HPP

#include "types.h"

#include "Kyoto/Math/CColor.hpp"

#include "CTexture.hpp"

class CCameraFilterPass {
public:
  static void DrawWideScreen(const CColor& color, const CTexture* tex, f32 v);
};

#endif
