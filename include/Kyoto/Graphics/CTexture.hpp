#ifndef _CTEXTURE_HPP
#define _CTEXTURE_HPP

#include "gx_enum.h"
#include "types.h"

class CTexture {
public:
  enum EClampMode {
    Clamp,
    Repeat,
    Mirror,
  };

  void Load(GXTexMapID texMapId, EClampMode clampMode) const;
};

#endif