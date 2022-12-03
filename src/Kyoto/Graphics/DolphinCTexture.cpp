#include "Kyoto/Graphics/CTexture.hpp"

#include "Kyoto/CDvdRequest.hpp"
#include "Kyoto/Graphics/CGraphicsPalette.hpp"
#include "Kyoto/Alloc/CMemorySys.hpp"

int CTexture::sCurrentFrameCount = 0;
int CTexture::sTotalAllocatedMemory = 0;
bool CTexture::sMangleMips = false;

static CTexture* sLoadedTextures[GX_MAX_TEXMAP];

CTexture::CTexture(ETexelFormat fmt, short w, short h, int mips)
: mTexelFormat(fmt)
, mWidth(w)
, mHeight(h)
, mNumMips(mips)
, mBitsPerPixel(TexelFormatBitsPerPixel(fmt))
, mLocked(false)
, mCanLoadPalette(false)
, mIsPowerOfTwo(false)
, mNoSwap(true)
, mCounted(false)
, mCanLoadObj(false)
, mMemoryAllocated(0)
, mFrameAllocated(sCurrentFrameCount)
, mNativeFormat(GX_TF_RGB565)
, mNativeCIFormat(GX_TF_C8)
, mClampMode(kCM_Repeat) {
  InitBitmapBuffers(fmt, w, h, mips);
  InitTextureObjects();
}

CTexture::CTexture(CInputStream& in, EAutoMipmap automip, EBlackKey blackKey) {
  
}

CTexture::~CTexture() {
  UncountMemory();
}


void CTexture::MakeSwappable() const {
  if (!mNoSwap) {
    return;
  }

  mNoSwap = false;
}
void CTexture::CountMemory() const {
  if (mCounted) {
    return;
  }

  mCounted = true;
  sTotalAllocatedMemory += mMemoryAllocated; 
}


void CTexture::UncountMemory() const {
  if (!mCounted) {
    return;
  }

  mCounted = false;
  sTotalAllocatedMemory -= mMemoryAllocated; 
}

void CTexture::InvalidateTexmap(GXTexMapID texmap) {
  sLoadedTextures[texmap] = nullptr; 
}

void CTexture::sub_8030e10c() {
  
}
