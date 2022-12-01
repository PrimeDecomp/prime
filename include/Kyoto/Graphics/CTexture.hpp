#ifndef _CTEXTURE
#define _CTEXTURE

#include "types.h"

#include <dolphin/gx/GXEnum.h>

class CInputStream;

enum ETexelFormat {
  kTF_Invalid = -1,
  kTF_I4 = 0,
  kTF_I8 = 1,
  kTF_IA4 = 2,
  kTF_IA8 = 3,
  kTF_C4 = 4,
  kTF_C8 = 5,
  kTF_C14X2 = 6,
  kTF_RGB565 = 7,
  kTF_RGB5A3 = 8,
  kTF_RGBA8 = 9,
  kTF_CMPR = 10,
};

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

  CTexture(ETexelFormat fmt, short w, short h, int mips);
  CTexture(CInputStream& stream, EAutoMipmap mip, EBlackKey bk);
  ~CTexture();
  
  // Used in certain destructors
  void sub_8030e10c();

  void Load(GXTexMapID texMapId, EClampMode clampMode) const;
  void UnLock();

  void* GetBitMapData(int);

  static void InvalidateTexmap(GXTexMapID id);

  uint GetTexelFormat() const { return mTexelFormat; }
  short GetWidth() const { return mWidth; }
  short GetHeight() const { return mHeight; }
  
  void SetFlag1(bool b) { mFlag1 = b; }

private:
  uint mTexelFormat; // TODO: Enum
  short mWidth;
  short mHeight;
  uchar mNumMips;
  uchar mBitsPerPixel;
  uchar mFlag1 : 1;
  uchar pad[0x57];
};
// CHECK_SIZEOF(CTexture, )

#endif // _CTEXTURE
