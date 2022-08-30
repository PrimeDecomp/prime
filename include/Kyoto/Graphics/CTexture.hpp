#ifndef _CTEXTURE_HPP
#define _CTEXTURE_HPP

#include "types.h"

#include <dolphin/gx/GXEnum.h>

class CTexture {
public:
  enum EClampMode {
    Clamp,
    Repeat,
    Mirror,
  };

  void Load(GXTexMapID texMapId, EClampMode clampMode) const;

  static void InvalidateTexmap(GXTexMapID id);
};

#endif