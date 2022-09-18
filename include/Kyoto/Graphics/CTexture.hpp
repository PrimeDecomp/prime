#ifndef _CTEXTURE_HPP
#define _CTEXTURE_HPP

#include "types.h"

#include <dolphin/gx/GXEnum.h>

class CInputStream;

class CTexture {
public:
  enum EClampMode {
    Clamp,
    Repeat,
    Mirror,
  };
  enum EAutoMipmap {
    kAM_Zero,
  };
  enum EBlackKey {
    kBK_Zero,
  };

  CTexture(CInputStream& stream, EAutoMipmap mip, EBlackKey bk);

  void Load(GXTexMapID texMapId, EClampMode clampMode) const;

  static void InvalidateTexmap(GXTexMapID id);

private:
  u8 pad[0x68];
};

#endif
