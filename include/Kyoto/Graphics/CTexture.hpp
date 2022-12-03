#ifndef _CTEXTURE
#define _CTEXTURE

#include "types.h"

#include "Kyoto/CARAMToken.hpp"
#include "rstl/single_ptr.hpp"

#include <dolphin/gx.h>

class CDvdRequest;
class CInputStream;
class CGraphicsPalette;

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
  class CDumpedBitmapDataReloader {
    int x0_;
    uint x4_;
    int x8_;
    uint xc_;
    bool x10_;
    rstl::single_ptr< CDvdRequest > x14_;
    rstl::single_ptr< uchar > x18_;
  };

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

  void InitBitmapBuffers(ETexelFormat fmt, short w, short h, int mips);
  void InitTextureObjects();
  ETexelFormat GetTexelFormat() const { return mTexelFormat; }
  short GetWidth() const { return mWidth; }
  short GetHeight() const { return mHeight; }

  void* Lock() {
    mLocked = true;
    return GetBitMapData(0);
  }

  void MakeSwappable() const;
  void CountMemory() const;
  void UncountMemory() const;
  void SetFlag1(bool b) { mLocked = b; }

  static uint TexelFormatBitsPerPixel(ETexelFormat fmt);
  static void InvalidateTexmap(GXTexMapID id);

  static int sCurrentFrameCount;
  static int sTotalAllocatedMemory;
  static bool sMangleMips;

private:
  ETexelFormat mTexelFormat; // TODO: Enum
  short mWidth;
  short mHeight;
  uchar mNumMips;
  uchar mBitsPerPixel;
  bool mLocked : 1;
  bool mCanLoadPalette : 1;
  bool mIsPowerOfTwo : 1;
  mutable bool mNoSwap : 1;
  mutable bool mCounted : 1;
  uchar mCanLoadObj : 1;
  uint mMemoryAllocated;
  rstl::single_ptr< CGraphicsPalette > mGraphicsPalette;
  rstl::single_ptr< CDumpedBitmapDataReloader > mBitmapReloader;
  uint mNativeFormat;
  uint mNativeCIFormat;
  GXTexObj mTexObj;
  EClampMode mClampMode;
  CARAMToken mARAMToken;
  uint mFrameAllocated;
};
CHECK_SIZEOF(CTexture, 0x68)

#endif // _CTEXTURE
