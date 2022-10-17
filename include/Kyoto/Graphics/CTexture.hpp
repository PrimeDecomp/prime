#ifndef _CTEXTURE
#define _CTEXTURE

#include "types.h"

#include <dolphin/gx/GXEnum.h>

class CInputStream;

class CTexture {
public:
  enum EClampMode {
    kCM_Clamp,
    kCM_Repeat,
    kCM_Mirror,
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

  short GetWidth() const { return mWidth; }
  short GetHeight() const { return mHeight; }

private:
  uint mTexelFormat; // TODO: Enum
  short mWidth;
  short mHeight;
  uchar pad[0x60];
};

#endif // _CTEXTURE
