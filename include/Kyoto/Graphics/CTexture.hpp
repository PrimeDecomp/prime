#ifndef _CTEXTURE
#define _CTEXTURE

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

  s16 GetWidth() const { return mWidth; }
  s16 GetHeight() const { return mHeight; }

private:
  u32 mTexelFormat; // TODO: Enum
  s16 mWidth;
  s16 mHeight;
  u8 pad[0x60];
};

#endif // _CTEXTURE
