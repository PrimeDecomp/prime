#include "Kyoto/Graphics/CGraphics.hpp"

#include "Kyoto/Basics/COsContext.hpp"
#include "Kyoto/Basics/CStopwatch.hpp"
#include "Kyoto/Graphics/CGX.hpp"
#include "Kyoto/Graphics/CGraphicsSys.hpp"

#include "dolphin/vi.h"

bool CGraphicsSys::mGraphicsInitialized;
static CStopwatch sFPSTimer;
static uchar sSpareFrameBuffer[640 * 448];

// clang-format off
CTevCombiners::CTevPass CGraphics::kEnvModulateConstColor(
  CTevCombiners::ColorPass(
    CTevCombiners::kCS_Zero,
    CTevCombiners::kCS_RasterColor,
    CTevCombiners::kCS_RegisterC0,
    CTevCombiners::kCS_Zero
  ),
  CTevCombiners::AlphaPass(
    CTevCombiners::kAS_Zero,
    CTevCombiners::kAS_RasterAlpha,
    CTevCombiners::kAS_RegisterA0,
    CTevCombiners::kAS_Zero
  )
);
CTevCombiners::CTevPass CGraphics::kEnvConstColor(
  CTevCombiners::ColorPass(
    CTevCombiners::kCS_Zero,
    CTevCombiners::kCS_Zero,
    CTevCombiners::kCS_Zero,
    CTevCombiners::kCS_RegisterC0
  ),
  CTevCombiners::AlphaPass(
    CTevCombiners::kAS_Zero,
    CTevCombiners::kAS_Zero,
    CTevCombiners::kAS_Zero,
    CTevCombiners::kAS_RegisterA0
  )
);
CTevCombiners::CTevPass CGraphics::kEnvModulate(
  CTevCombiners::ColorPass(
    CTevCombiners::kCS_Zero,
    CTevCombiners::kCS_RasterColor,
    CTevCombiners::kCS_TextureColor,
    CTevCombiners::kCS_Zero
  ),
  CTevCombiners::AlphaPass(
    CTevCombiners::kAS_Zero,
    CTevCombiners::kAS_RasterAlpha,
    CTevCombiners::kAS_TextureAlpha,
    CTevCombiners::kAS_Zero
  )
);
CTevCombiners::CTevPass CGraphics::kEnvDecal(
  CTevCombiners::ColorPass(
    CTevCombiners::kCS_RasterColor,
    CTevCombiners::kCS_TextureColor,
    CTevCombiners::kCS_TextureAlpha,
    CTevCombiners::kCS_Zero
  ),
  CTevCombiners::AlphaPass(
    CTevCombiners::kAS_Zero,
    CTevCombiners::kAS_Zero,
    CTevCombiners::kAS_Zero,
    CTevCombiners::kAS_RasterAlpha
  )
);
CTevCombiners::CTevPass CGraphics::kEnvBlend(
  CTevCombiners::ColorPass(
    CTevCombiners::kCS_RasterColor,
    CTevCombiners::kCS_One,
    CTevCombiners::kCS_TextureColor,
    CTevCombiners::kCS_Zero
  ),
  CTevCombiners::AlphaPass(
    CTevCombiners::kAS_Zero,
    CTevCombiners::kAS_TextureAlpha,
    CTevCombiners::kAS_RasterAlpha,
    CTevCombiners::kAS_Zero
  )
);
CTevCombiners::CTevPass CGraphics::kEnvReplace(
  CTevCombiners::ColorPass(
    CTevCombiners::kCS_Zero,
    CTevCombiners::kCS_Zero,
    CTevCombiners::kCS_Zero,
    CTevCombiners::kCS_TextureColor
  ),
  CTevCombiners::AlphaPass(
    CTevCombiners::kAS_Zero,
    CTevCombiners::kAS_Zero,
    CTevCombiners::kAS_Zero,
    CTevCombiners::kAS_TextureAlpha
  )
);
static CTevCombiners::CTevPass kEnvBlendCTandCConCF(
  CTevCombiners::ColorPass(
    CTevCombiners::kCS_RegisterC0,
    CTevCombiners::kCS_TextureColor,
    CTevCombiners::kCS_RasterColor,
    CTevCombiners::kCS_Zero
  ),
  CTevCombiners::AlphaPass(
    CTevCombiners::kAS_Zero,
    CTevCombiners::kAS_Zero,
    CTevCombiners::kAS_Zero,
    CTevCombiners::kAS_RasterAlpha
  )  
);
CTevCombiners::CTevPass CGraphics::kEnvModulateAlpha(
  CTevCombiners::ColorPass(
    CTevCombiners::kCS_Zero,
    CTevCombiners::kCS_Zero,
    CTevCombiners::kCS_Zero,
    CTevCombiners::kCS_RasterColor
  ),
  CTevCombiners::AlphaPass(
    CTevCombiners::kAS_Zero,
    CTevCombiners::kAS_TextureAlpha,
    CTevCombiners::kAS_RasterAlpha,
    CTevCombiners::kAS_Zero
  )
);
CTevCombiners::CTevPass CGraphics::kEnvModulateColor(
  CTevCombiners::ColorPass(
    CTevCombiners::kCS_Zero,
    CTevCombiners::kCS_TextureColor,
    CTevCombiners::kCS_RasterColor,
    CTevCombiners::kCS_Zero
  ),
  CTevCombiners::AlphaPass(
    CTevCombiners::kAS_Zero,
    CTevCombiners::kAS_Konst,
    CTevCombiners::kAS_RasterAlpha,
    CTevCombiners::kAS_Zero
  )
);
CTevCombiners::CTevPass CGraphics::kEnvModulateColorByAlpha(
  CTevCombiners::ColorPass(
    CTevCombiners::kCS_Zero,
    CTevCombiners::kCS_PreviousColor,
    CTevCombiners::kCS_PreviousAlpha,
    CTevCombiners::kCS_Zero
  ),
  CTevCombiners::AlphaPass(
    CTevCombiners::kAS_Zero,
    CTevCombiners::kAS_Zero,
    CTevCombiners::kAS_Zero,
    CTevCombiners::kAS_PreviousAlpha
  )
);
// clang-format on

CGraphics::CRenderState CGraphics::sRenderState;
VecPtr CGraphics::vtxBuffer;
VecPtr CGraphics::nrmBuffer;
Vec2Ptr CGraphics::txtBuffer0;
Vec2Ptr CGraphics::txtBuffer1;
GXColor* CGraphics::clrBuffer;
bool CGraphics::mJustReset;
ERglCullMode CGraphics::mCullMode;
int CGraphics::mNumLightsActive;
float CGraphics::mDepthNear;
VecPtr CGraphics::mpVtxBuffer;
VecPtr CGraphics::mpNrmBuffer;
Vec2Ptr CGraphics::mpTxtBuffer0;
Vec2Ptr CGraphics::mpTxtBuffer1;
GXColor* CGraphics::mpClrBuffer;

struct CGXLightParams {
  int x0_;
  int x4_;
  int x8_;
  int xc_;
  int x10_;

  CGXLightParams() : x0_(4), x4_(0), x8_(0), xc_(2), x10_(2) {}
};
CGXLightParams mLightParams[8];

struct {
  Vec vtx;
  Vec nrm;
  float uvU, uvV;
  int unk0;
  int unk1;
  GXColor color;
  short textureUsed;
  uchar streamFlags;
} vtxDescr;

CVector3f CGraphics::kDefaultPositionVector(0.f, 0.f, 0.f);
CVector3f CGraphics::kDefaultDirectionVector(0.f, 0.f, 0.f);
CGraphics::CProjectionState CGraphics::mProj(true, -1.f, 1.f, 1.f, -1.f, 1.f, 100.f);
CTransform4f CGraphics::mViewMatrix = CTransform4f::Identity();
CTransform4f CGraphics::mModelMatrix = CTransform4f::Identity();
CColor CGraphics::mClearColor = CColor::Black();
CVector3f CGraphics::mViewPoint(0.f, 0.f, 0.f);
GXLightObj CGraphics::mLightObj[8];
GXTexRegion CGraphics::mTexRegions[GX_MAX_TEXMAP];
GXTexRegion CGraphics::mTexRegionsCI[GX_MAX_TEXMAP / 2];
GXRenderModeObj CGraphics::mRenderModeObj;
Mtx CGraphics::mGXViewPointMatrix;
Mtx CGraphics::mGXModelMatrix;
Mtx CGraphics::mGxModelView;
Mtx CGraphics::mCameraMtx;

int CGraphics::mNumPrimitives;
int CGraphics::mFrameCounter;
float CGraphics::mFramesPerSecond;
float CGraphics::mLastFramesPerSecond;
int CGraphics::mNumBreakpointsWaiting;
int CGraphics::mFlippingState;
bool CGraphics::mLastFrameUsedAbove;
bool CGraphics::mInterruptLastFrameUsedAbove;
uchar CGraphics::mLightActive;
uchar CGraphics::mLightsWereOn;
void* CGraphics::mpFrameBuf1;
void* CGraphics::mpFrameBuf2;
void* CGraphics::mpCurrenFrameBuf;
int CGraphics::mSpareBufferSize;
void* CGraphics::mpSpareBuffer;
int CGraphics::mSpareBufferTexCacheSize;
GXTexRegionCallback CGraphics::mGXDefaultTexRegionCallback;
void* CGraphics::mpFifo;
GXFifoObj* CGraphics::mpFifoObj;
int CGraphics::mRenderTimings;
float CGraphics::mSecondsMod900;
CTimeProvider* CGraphics::mpExternalTimeProvider;
int lbl_805A9408;
int lbl_805A940C;
int lbl_805A9410;

CViewport CGraphics::mViewport = {0, 0, 640, 448, 320.f, 240.f};
ELightType CGraphics::mLightTypes[8] = {
    kLT_Directional, kLT_Directional, kLT_Directional, kLT_Directional,
    kLT_Directional, kLT_Directional, kLT_Directional, kLT_Directional,
};

CTevCombiners::CTevPass& CGraphics::kEnvPassthru = CTevCombiners::kEnvPassthru;
bool CGraphics::mIsBeginSceneClearFb = true;
ERglEnum CGraphics::mDepthFunc = kE_LEqual;
ERglPrimitive CGraphics::mCurrentPrimitive = kP_Points;
float CGraphics::mDepthFar = 1.f;
u32 CGraphics::mClearDepthValue = GX_MAX_Z24;
bool CGraphics::mIsGXModelMatrixIdentity = true;
bool CGraphics::mFirstFrame = true;
bool CGraphics::mUseVideoFilter = true;
float CGraphics::mBrightness = 1.f;
Vec2 CGraphics::mBrightnessRange = {0.f, 2.f};

bool CGraphics::Startup(const COsContext& osContext, uint fifoSize, void* fifoBase) {
  mpFifo = fifoBase;
  mpFifoObj = GXInit(fifoBase, fifoSize);
  GXFifoObj fifoObj;
  GXInitFifoBase(&fifoObj, mpFifo, fifoSize);
  GXSetCPUFifo(&fifoObj);
  GXSetGPFifo(&fifoObj);
  GXInitFifoLimits(mpFifoObj, fifoSize - 0x4000, fifoSize - 0x10000);
  GXSetCPUFifo(mpFifoObj);
  GXSetGPFifo(mpFifoObj);
  GXSetMisc(GX_MT_XF_FLUSH, 8);
  GXSetDither(GX_FALSE);
  CGX::ResetGXStates();
  InitGraphicsVariables();
  ConfigureFrameBuffer(osContext);
  for (int i = 0; i < ARRAY_SIZE(mTexRegions); i++) {
    GXInitTexCacheRegion(&mTexRegions[i], false, 0x8000 * i, GX_TEXCACHE_32K,
                         0x80000 + (0x8000 * i), GX_TEXCACHE_32K);
  }
  for (int i = 0; i < ARRAY_SIZE(mTexRegionsCI); i++) {
    GXInitTexCacheRegion(&mTexRegionsCI[i], false, (8 + (2 * i)) << 0xF, GX_TEXCACHE_32K,
                         (9 + (2 * i)) << 0xF, GX_TEXCACHE_32K);
  }
  mGXDefaultTexRegionCallback = GXSetTexRegionCallback(TexRegionCallback);
  mSpareBufferSize = ARRAY_SIZE(sSpareFrameBuffer);
  mpSpareBuffer = sSpareFrameBuffer;
  mSpareBufferTexCacheSize = 0x10000;
  return true;
}

GXTexRegion* CGraphics::TexRegionCallback(const GXTexObj* obj, GXTexMapID id) {
  static int nextTexRgn = 0;
  static int nextTexRgnCI = 0;
  if (id == GX_TEXMAP7) {
    return &mTexRegions[0];
  } else {
    GXTexFmt fmt = GXGetTexObjFmt(obj);
    if (fmt != GX_TF_C4 && fmt != GX_TF_C8 && fmt != GX_TF_C14X2) {
      if (nextTexRgn == 0) {
        ++nextTexRgn;
      }
      return &mTexRegions[nextTexRgn++ & 7];
    } else {
      return &mTexRegionsCI[nextTexRgnCI++ & 3];
    }
  }
}

void CGraphics::InitGraphicsVariables() {
  for (int i = 0; i < ARRAY_SIZE(mLightTypes); ++i) {
    mLightTypes[i] = kLT_Directional;
  }
  mLightActive = 0;
  SetDepthWriteMode(false, mDepthFunc, false);
  SetCullMode(kCM_None);
  SetAmbientColor(CColor(0.2f, 0.2f, 0.2f, 1.f));
  mIsGXModelMatrixIdentity = false;
  SetIdentityViewPointMatrix();
  SetIdentityModelMatrix();
  SetViewport(0, 0, mViewport.mWidth, mViewport.mHeight);
  SetPerspective(60.f,
                 static_cast< float >(mViewport.mWidth) / static_cast< float >(mViewport.mHeight),
                 mProj.GetNear(), mProj.GetFar());
  SetCopyClear(mClearColor, 1.f);
  const GXColor white = {0xFF, 0xFF, 0xFF, 0xFF};
  CGX::SetChanMatColor(CGX::Channel0, white);
  sRenderState.ResetFlushAll();
}

void CGraphics::Shutdown() { GXSetTexRegionCallback(mGXDefaultTexRegionCallback); }

void CGraphics::InitGraphicsDefaults() {
  SetDepthRange(0.f, 1.f);
  mIsGXModelMatrixIdentity = false;
  SetModelMatrix(mModelMatrix);
  SetViewPointMatrix(mViewMatrix);
  SetDepthWriteMode(false, mDepthFunc, false);
  SetCullMode(mCullMode);
  SetViewport(mViewport.mLeft, mViewport.mTop, mViewport.mWidth, mViewport.mHeight);
  FlushProjection();
  CTevCombiners::Init();
  DisableAllLights();
  SetDefaultVtxAttrFmt();
}

void CGraphics::ConfigureFrameBuffer(const COsContext& osContext) {
  mRenderModeObj = osContext.GetRenderModeObj();
  mpFrameBuf1 = osContext.GetFramebuf1();
  mpFrameBuf2 = osContext.GetFramebuf2();
  VIConfigure(&mRenderModeObj);
  VISetNextFrameBuffer(mpFrameBuf1);
  mpCurrenFrameBuf = mpFrameBuf2;
  GXSetViewport(0.f, 0.f, static_cast< float >(mRenderModeObj.fbWidth),
                static_cast< float >(mRenderModeObj.efbHeight), 0.f, 1.f);
  GXSetScissor(0, 0, mRenderModeObj.fbWidth, mRenderModeObj.efbHeight);
  GXSetDispCopySrc(0, 0, mRenderModeObj.fbWidth, mRenderModeObj.efbHeight);
  GXSetDispCopyDst(mRenderModeObj.fbWidth, mRenderModeObj.efbHeight);
  GXSetDispCopyYScale(static_cast< float >(mRenderModeObj.xfbHeight) /
                      static_cast< float >(mRenderModeObj.efbHeight));
  GXSetCopyFilter(mRenderModeObj.aa, mRenderModeObj.sample_pattern, GX_TRUE,
                  mRenderModeObj.vfilter);
  if (mRenderModeObj.aa) {
    GXSetPixelFmt(GX_PF_RGB565_Z16, GX_ZC_LINEAR);
  } else {
    GXSetPixelFmt(GX_PF_RGB8_Z24, GX_ZC_LINEAR);
  }
  GXSetDispCopyGamma(GX_GM_1_0);
  GXCopyDisp(mpCurrenFrameBuf, true);
  VIFlush();
  VIWaitForRetrace();
  VIWaitForRetrace();
  mViewport.mWidth = mRenderModeObj.fbWidth;
  mViewport.mHeight = mRenderModeObj.efbHeight;
  InitGraphicsDefaults();
}

void CGraphics::EnableLight(ERglLight light) {
  CGX::SetNumChans(1);
  int lightsWereOn = mLightActive;
  GXLightID lightId = static_cast< GXLightID >(1 << light);
  if ((lightsWereOn & lightId) == GX_LIGHT_NULL) {
    mLightActive |= lightId;
    CGX::SetChanCtrl(CGX::Channel0, true, GX_SRC_REG, GX_SRC_REG,
                     static_cast< GXLightID >((lightsWereOn | lightId) & (GX_MAX_LIGHT - 1)),
                     GX_DF_CLAMP, GX_AF_SPOT);
    ++mNumLightsActive;
  }
  mLightsWereOn = mLightActive;
}

static inline GXLightID get_hw_light_index(ERglLight light) {
  if (light == kLight0) {
    return GX_LIGHT0;
  } else if (light == kLight1) {
    return GX_LIGHT1;
  } else if (light == kLight2) {
    return GX_LIGHT2;
  } else if (light == kLight3) {
    return GX_LIGHT3;
  } else if (light == kLight4) {
    return GX_LIGHT4;
  } else if (light == kLight5) {
    return GX_LIGHT5;
  } else if (light == kLight6) {
    return GX_LIGHT6;
  }
  // wtf?
  return static_cast< GXLightID >(light == kLight7 ? GX_LIGHT7 : 0);
}

void CGraphics::LoadLight(ERglLight light, const CLight& info) {
  GXLightID lightId = get_hw_light_index(light);
  ELightType type = info.GetType();
  CVector3f pos = info.GetPosition();
  CVector3f dir = info.GetDirection();

  switch (type) {
  case kLT_Spot: {
    MTXMultVec(mCameraMtx, reinterpret_cast< VecPtr >(&pos), reinterpret_cast< VecPtr >(&pos));
    GXLightObj* obj = &mLightObj[light];
    GXInitLightPos(obj, pos.GetX(), pos.GetY(), pos.GetZ());
    MTXMultVecSR(mCameraMtx, reinterpret_cast< VecPtr >(&dir), reinterpret_cast< VecPtr >(&dir));
    GXInitLightDir(obj, dir.GetX(), dir.GetY(), dir.GetZ());
    GXInitLightAttn(obj, 1.f, 0.f, 0.f, info.GetAttenuationConstant(), info.GetAttenuationLinear(),
                    info.GetAttenuationQuadratic());
    GXInitLightSpot(obj, info.GetSpotCutoff(), GX_SP_COS2);
    break;
  }
  case kLT_Point:
  case kLT_LocalAmbient: {
    MTXMultVec(mCameraMtx, reinterpret_cast< VecPtr >(&pos), reinterpret_cast< VecPtr >(&pos));
    GXInitLightPos(&mLightObj[light], pos.GetX(), pos.GetY(), pos.GetZ());
    GXInitLightAttn(&mLightObj[light], 1.f, 0.f, 0.f, info.GetAttenuationConstant(),
                    info.GetAttenuationLinear(), info.GetAttenuationQuadratic());
    break;
  }
  case kLT_Directional: {
    MTXMultVecSR(mCameraMtx, reinterpret_cast< VecPtr >(&dir), reinterpret_cast< VecPtr >(&dir));
    dir = -dir;
    GXInitLightPos(&mLightObj[light], dir.GetX() * 1048576.f, dir.GetY() * 1048576.f,
                   dir.GetZ() * 1048576.f);
    GXInitLightAttn(&mLightObj[light], 1.f, 0.f, 0.f, 1.f, 0.f, 0.f);
    break;
  }
  case kLT_Custom: {
    MTXMultVec(mCameraMtx, reinterpret_cast< VecPtr >(&pos), reinterpret_cast< VecPtr >(&pos));
    GXLightObj* obj = &mLightObj[light];
    GXInitLightPos(obj, pos.GetX(), pos.GetY(), pos.GetZ());
    MTXMultVecSR(mCameraMtx, reinterpret_cast< VecPtr >(&dir), reinterpret_cast< VecPtr >(&dir));
    GXInitLightDir(obj, dir.GetX(), dir.GetY(), dir.GetZ());
    GXInitLightAttn(obj, info.GetAngleAttenuationConstant(), info.GetAngleAttenuationLinear(),
                    info.GetAngleAttenuationQuadratic(), info.GetAttenuationConstant(),
                    info.GetAttenuationLinear(), info.GetAttenuationQuadratic());
    break;
  }
  default:
    break;
  }

  GXInitLightColor(&mLightObj[light], info.GetColor().GetGXColor());
  GXLoadLightObjImm(&mLightObj[light], lightId);
  mLightTypes[light] = info.GetType();
}

void CGraphics::DisableAllLights() {
  mNumLightsActive = 0;
  mLightActive = 0;
  CGX::SetChanCtrl(CGX::Channel0, false, GX_SRC_REG, GX_SRC_REG, GX_LIGHT_NULL, GX_DF_NONE,
                   GX_AF_NONE);
}
