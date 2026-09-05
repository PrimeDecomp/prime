#include "dolphin/gx.h"
#include "dolphin/gx/GXPriv.h"
#include "dolphin/gx/GXVerify.h"
#include "dolphin/os.h"

extern void __GXFifoInit();
extern void __GXPEInit();

static GXData gxData;
GXData* gx = &gxData;

extern GXVerifyData* __gxVerif;

GXFifoObj FifoObj;

#ifdef _DEBUG
GXBool __GXinBegin = FALSE;
#endif

volatile void* __piReg = NULL;
volatile void* __cpReg = NULL;
volatile void* __peReg = NULL;
volatile void* __memReg = NULL;

asm BOOL IsWriteGatherBufferEmpty(void) {
  // clang-format off
  nofralloc;
  sync;

  mfspr r3, WPAR;
  andi. r3, r3, 1;
  blr;
  // clang-format on
}

static void EnableWriteGatherPipe() {
  u32 hid2; // r31
  hid2 = PPCMfhid2();
  PPCMtwpar(OSUncachedToPhysical((void*)GXFIFO_ADDR));
  hid2 |= 0x40000000;
  PPCMthid2(hid2);
}

static void DisableWriteGatherPipe() {
  u32 hid2;
  hid2 = PPCMfhid2();
  hid2 &= ~0x40000000;
  PPCMthid2(hid2);
}

static GXTexRegion* __GXDefaultTexRegionCallback(const GXTexObj* t_obj, GXTexMapID) {
  GXTexFmt fmt; // r31

  fmt = GXGetTexObjFmt(t_obj);

  if (fmt != GX_TF_C4 && fmt != GX_TF_C8 && fmt != GX_TF_C14X2) {
    return &gx->TexRegions[(gx->nextTexRgn++) & 7];
  }

  return &gx->TexRegionsCI[(gx->nextTexRgnCI++) & 3];
}

static GXTlutRegion* __GXDefaultTlutRegionCallback(u32 idx) {
  if (idx >= 20) {
    return 0;
  }

  return &gx->TlutRegions[idx];
}

void __GXDefaultVerifyCallback(GXWarningLevel level, u32 id, const char* msg) {
  OSReport("Level %1d, Warning %3d: %s\n", level, id, msg);
}

GXFifoObj* GXInit(void* base, u32 size) {
  u32 i; // r31
  u32 reg;
  u32 freqBase;

  gx->inDispList = FALSE;
  gx->dlSaveContext = TRUE;
#ifdef _DEBUG
  __GXinBegin = FALSE;
#endif
  gx->tcsManEnab = FALSE;
  gx->tevTcEnab = FALSE;
  gx->vNum = 0;
  __piReg = (void*)OSPhysicalToUncached((void*)0xC003000);
  __cpReg = (void*)OSPhysicalToUncached((void*)0xC000000);
  __peReg = (void*)OSPhysicalToUncached((void*)0xC001000);
  __memReg = (void*)OSPhysicalToUncached((void*)0xC004000);
  __GXFifoInit();
  GXInitFifoBase(&FifoObj, base, size);
  GXSetCPUFifo(&FifoObj);
  GXSetGPFifo(&FifoObj);
  __GXPEInit();
  EnableWriteGatherPipe();
  gx->genMode = 0;
  GX_FLAG_SET(gx->genMode, GX_GENMODE_ID, GX_GENMODE_REG_ID);
  gx->bpMask = 255;
  GX_FLAG_SET(gx->bpMask, GX_BPMASK_ID, GX_BPMASK_REG_ID);
  gx->lpSize = 0;
  GX_FLAG_SET(gx->lpSize, GX_LPSIZE_ID, GX_LPSIZE_REG_ID);

  for (i = 0; i < 16; ++i) {
    gx->tevc[i] = 0;
    gx->teva[i] = 0;
    gx->tref[i / 2] = 0;
    gx->texmapId[i] = GX_TEXMAP_NULL;
    GX_FLAG_SET(gx->tevc[i], TEV_COLOR_ENV_0_ID + i * 2, TEV_COLOR_ENV_REG_ID);
    GX_FLAG_SET(gx->teva[i], TEV_ALPHA_ENV_0_ID + i * 2, TEV_ALPHA_ENV_REG_ID);
    GX_FLAG_SET(gx->tevKsel[i / 2], TEV_KSEL_0_ID + i / 2, TEV_KSEL_REG_ID);
    GX_FLAG_SET(gx->tref[i / 2], RAS_TREF0_ID + i / 2, RAS_TREF_REG_ID);
  }

  gx->iref = 0;
  GX_FLAG_SET(gx->iref, RAS_IREF_ID, RAS_IREF_REG_ID);

  for (i = 0; i < 8; ++i) {
    gx->suTs0[i] = 0;
    gx->suTs0[i] = 0;

    GX_FLAG_SET(gx->suTs0[i], SU_SSIZE0_ID + i * 2, SU_TS0_REG_ID);
    GX_FLAG_SET(gx->suTs1[i], SU_TSIZE0_ID + i * 2, SU_TS1_REG_ID);
  }

  GX_FLAG_SET(gx->suScis0, SU_SCIS0_ID, SU_SCIS0_REG_ID);
  GX_FLAG_SET(gx->suScis1, SU_SCIS1_ID, SU_SCIS1_REG_ID);

  GX_FLAG_SET(gx->cmode0, GX_CMODE0_ID, GX_CMODE0_REG_ID);
  GX_FLAG_SET(gx->cmode1, GX_CMODE1_ID, GX_CMODE1_REG_ID);

  GX_FLAG_SET(gx->zmode, GX_ZMODE_ID, GX_ZMODE_REG_ID);

  GX_FLAG_SET(gx->peCtrl, PE_CONTROL_ID, PE_CONTROL_REG_ID);

  GX_FLAG_SET(gx->cpTex, GX_GM_1_0, PE_COPY_CMD_GAMMA);
  gx->dirtyState = 0;

  gx->dirtyVAT = FALSE;

  __gxVerif->verifyLevel = GX_WARN_ALL;

  GXSetVerifyCallback(__GXDefaultVerifyCallback);
  for (i = 0; i < 256; ++i) {
    GX_FLAG_SET(__gxVerif->rasRegs[i], 0xFF, GEN_MODE_REG_ID);
  }
  memset(__gxVerif->xfRegsDirty, 0, sizeof(__gxVerif->xfRegsDirty));
  memset(__gxVerif->xfMtxDirty, 0, sizeof(__gxVerif->xfMtxDirty));
  memset(__gxVerif->xfNrmDirty, 0, sizeof(__gxVerif->xfNrmDirty));
  memset(__gxVerif->xfLightDirty, 0, sizeof(__gxVerif->xfLightDirty));

  freqBase = OS_BUS_CLOCK / 500;

  __GXFlushTextureState();
  reg = TX_REFRESH(freqBase / 2048, 1, 105);
  GX_WRITE_RA_REG(reg);
  __GXFlushTextureState();
  reg = PE_REFRESH(freqBase / 4224, 1, 70);
  GX_WRITE_RA_REG(reg);

  for (i = 0; i < GX_MAX_VTXFMT; i++) {
    GX_FLAG_SET(gx->vatA[i], 1, GX_VAT_REG_A_UNK);
    GX_FLAG_SET(gx->vatB[i], 1, GX_VAT_REG_B_UNK);
    GX_WRITE_CP_STRM_REG(8, (s32)i, gx->vatB[i]);
  }

  __GXSetTmemConfig(0);
  __GXInitGX();
  return &FifoObj;
}

void __GXInitGX() {
  GXRenderModeObj* rmode;               // r31
  float identity_mtx[3][4];             // r1+0x2C
  GXColor clear = {64, 64, 64, 255};    // r1+0x28
  GXColor black = {0, 0, 0, 0};         // r1+0x24
  GXColor white = {255, 255, 255, 255}; // r1+0x20
  u32 i;                                // r30

  switch (VIGetTvFormat()) {
  case VI_NTSC:
    rmode = &GXNtsc480IntDf;
    break;
  case VI_PAL:
    rmode = &GXPal528IntDf;
    break;
  case VI_EURGB60:
    rmode = &GXEurgb60Hz480IntDf;
    break;
  case VI_MPAL:
    rmode = &GXMpal480IntDf;
    break;
  default:
#line 0x415
    ASSERTMSG(0, "GXInit: invalid TV format");
    rmode = &GXNtsc480IntDf;
    break;
  }

  GXSetCopyClear(clear, GX_MAX_Z24);

  GXSetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY);
  GXSetTexCoordGen(GX_TEXCOORD1, GX_TG_MTX2x4, GX_TG_TEX1, GX_IDENTITY);
  GXSetTexCoordGen(GX_TEXCOORD2, GX_TG_MTX2x4, GX_TG_TEX2, GX_IDENTITY);
  GXSetTexCoordGen(GX_TEXCOORD3, GX_TG_MTX2x4, GX_TG_TEX3, GX_IDENTITY);
  GXSetTexCoordGen(GX_TEXCOORD4, GX_TG_MTX2x4, GX_TG_TEX4, GX_IDENTITY);
  GXSetTexCoordGen(GX_TEXCOORD5, GX_TG_MTX2x4, GX_TG_TEX5, GX_IDENTITY);
  GXSetTexCoordGen(GX_TEXCOORD6, GX_TG_MTX2x4, GX_TG_TEX6, GX_IDENTITY);
  GXSetTexCoordGen(GX_TEXCOORD7, GX_TG_MTX2x4, GX_TG_TEX7, GX_IDENTITY);
  GXSetNumTexGens(1);
  GXClearVtxDesc();
  GXInvalidateVtxCache();

  for (i = GX_VA_POS; i <= GX_LIGHT_ARRAY; i++) {
    GXSetArray((GXAttr)i, (void*)gx, 0);
  }

  GXSetLineWidth(6, GX_TO_ZERO);
  GXSetPointSize(6, GX_TO_ZERO);
  GXEnableTexOffsets(GX_TEXCOORD0, GX_DISABLE, GX_DISABLE);
  GXEnableTexOffsets(GX_TEXCOORD1, GX_DISABLE, GX_DISABLE);
  GXEnableTexOffsets(GX_TEXCOORD2, GX_DISABLE, GX_DISABLE);
  GXEnableTexOffsets(GX_TEXCOORD3, GX_DISABLE, GX_DISABLE);
  GXEnableTexOffsets(GX_TEXCOORD4, GX_DISABLE, GX_DISABLE);
  GXEnableTexOffsets(GX_TEXCOORD5, GX_DISABLE, GX_DISABLE);
  GXEnableTexOffsets(GX_TEXCOORD6, GX_DISABLE, GX_DISABLE);
  GXEnableTexOffsets(GX_TEXCOORD7, GX_DISABLE, GX_DISABLE);
  identity_mtx[0][0] = 1.0f;
  identity_mtx[0][1] = 0.0f;
  identity_mtx[0][2] = 0.0f;
  identity_mtx[0][3] = 0.0f;
  identity_mtx[1][0] = 0.0f;
  identity_mtx[1][1] = 1.0f;
  identity_mtx[1][2] = 0.0f;
  identity_mtx[1][3] = 0.0f;
  identity_mtx[2][0] = 0.0f;
  identity_mtx[2][1] = 0.0f;
  identity_mtx[2][2] = 1.0f;
  identity_mtx[2][3] = 0.0f;

  GXLoadPosMtxImm(identity_mtx, GX_PNMTX0);
  GXLoadNrmMtxImm(identity_mtx, GX_PNMTX0);
  GXSetCurrentMtx(GX_PNMTX0);
  GXLoadTexMtxImm(identity_mtx, GX_IDENTITY, GX_MTX3x4);
  GXLoadTexMtxImm(identity_mtx, GX_PTIDENTITY, GX_MTX3x4);
  GXSetViewport(0.0f, 0.0f, rmode->fbWidth, rmode->xfbHeight, 0.0f, 1.0f);
  GXSetCoPlanar(GX_DISABLE);
  GXSetCullMode(GX_CULL_BACK);
  GXSetClipMode(GX_CLIP_ENABLE);
  GXSetScissor(0, 0, rmode->fbWidth, rmode->efbHeight);
  GXSetScissorBoxOffset(0, 0);
  GXSetNumChans(0);
  GXSetChanCtrl(GX_COLOR0A0, GX_DISABLE, GX_SRC_REG, GX_SRC_VTX, GX_LIGHT_NULL, GX_DF_NONE,
                GX_AF_NONE);
  GXSetChanAmbColor(GX_COLOR0A0, black);
  GXSetChanMatColor(GX_COLOR0A0, white);

  GXSetChanCtrl(GX_COLOR1A1, GX_DISABLE, GX_SRC_REG, GX_SRC_VTX, GX_LIGHT_NULL, GX_DF_NONE,
                GX_AF_NONE);
  GXSetChanAmbColor(GX_COLOR1A1, black);
  GXSetChanMatColor(GX_COLOR1A1, white);

  GXInvalidateTexAll();

  gx->nextTexRgn = 0;
  gx->nextTexRgnCI = 0;

  GXSetTexRegionCallback(__GXDefaultTexRegionCallback);
  GXSetTlutRegionCallback(__GXDefaultTlutRegionCallback);

  GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
  GXSetTevOrder(GX_TEVSTAGE1, GX_TEXCOORD1, GX_TEXMAP1, GX_COLOR0A0);
  GXSetTevOrder(GX_TEVSTAGE2, GX_TEXCOORD2, GX_TEXMAP2, GX_COLOR0A0);
  GXSetTevOrder(GX_TEVSTAGE3, GX_TEXCOORD3, GX_TEXMAP3, GX_COLOR0A0);
  GXSetTevOrder(GX_TEVSTAGE4, GX_TEXCOORD4, GX_TEXMAP4, GX_COLOR0A0);
  GXSetTevOrder(GX_TEVSTAGE5, GX_TEXCOORD5, GX_TEXMAP5, GX_COLOR0A0);
  GXSetTevOrder(GX_TEVSTAGE6, GX_TEXCOORD6, GX_TEXMAP6, GX_COLOR0A0);
  GXSetTevOrder(GX_TEVSTAGE7, GX_TEXCOORD7, GX_TEXMAP7, GX_COLOR0A0);
  GXSetTevOrder(GX_TEVSTAGE8, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
  GXSetTevOrder(GX_TEVSTAGE9, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
  GXSetTevOrder(GX_TEVSTAGE10, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
  GXSetTevOrder(GX_TEVSTAGE11, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
  GXSetTevOrder(GX_TEVSTAGE12, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
  GXSetTevOrder(GX_TEVSTAGE13, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
  GXSetTevOrder(GX_TEVSTAGE14, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
  GXSetTevOrder(GX_TEVSTAGE15, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);

  GXSetNumTevStages(1);
  GXSetTevOp(GX_TEVSTAGE0, GX_REPLACE);
  GXSetAlphaCompare(GX_ALWAYS, 0, GX_AOP_AND, GX_ALWAYS, 0);
  GXSetZTexture(GX_ZT_DISABLE, GX_TF_Z8, 0);
  for (i = GX_TEVSTAGE0; i < GX_MAX_TEVSTAGE; i++) {
    GXSetTevKColorSel((GXTevStageID)i, GX_TEV_KCSEL_1_4);
    GXSetTevKAlphaSel((GXTevStageID)i, GX_TEV_KASEL_1);
    GXSetTevSwapMode((GXTevStageID)i, GX_TEV_SWAP0, GX_TEV_SWAP0);
  }
  GXSetTevSwapModeTable(GX_TEV_SWAP0, GX_CH_RED, GX_CH_GREEN, GX_CH_BLUE, GX_CH_ALPHA);
  GXSetTevSwapModeTable(GX_TEV_SWAP1, GX_CH_RED, GX_CH_RED, GX_CH_RED, GX_CH_ALPHA);
  GXSetTevSwapModeTable(GX_TEV_SWAP2, GX_CH_GREEN, GX_CH_GREEN, GX_CH_GREEN, GX_CH_ALPHA);
  GXSetTevSwapModeTable(GX_TEV_SWAP3, GX_CH_BLUE, GX_CH_BLUE, GX_CH_BLUE, GX_CH_ALPHA);

  for (i = GX_TEVSTAGE0; i < GX_MAX_TEVSTAGE; i++) {
    GXSetTevDirect((GXTevStageID)i);
  }
  GXSetNumIndStages(0);
  GXSetIndTexCoordScale(GX_INDTEXSTAGE0, GX_ITS_1, GX_ITS_1);
  GXSetIndTexCoordScale(GX_INDTEXSTAGE1, GX_ITS_1, GX_ITS_1);
  GXSetIndTexCoordScale(GX_INDTEXSTAGE2, GX_ITS_1, GX_ITS_1);
  GXSetIndTexCoordScale(GX_INDTEXSTAGE3, GX_ITS_1, GX_ITS_1);

  GXSetFog(GX_FOG_NONE, 0.0f, 1.0f, 0.1f, 1.0f, black);
  GXSetFogRangeAdj(GX_DISABLE, 0, 0);
  GXSetBlendMode(GX_BM_NONE, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_CLEAR);
  GXSetColorUpdate(GX_ENABLE);
  GXSetAlphaUpdate(GX_ENABLE);
  GXSetZMode(GX_TRUE, GX_LEQUAL, GX_TRUE);
  GXSetZCompLoc(GX_TRUE);
  GXSetDither(GX_ENABLE);
  GXSetDstAlpha(GX_DISABLE, 0);
  GXSetPixelFmt(GX_PF_RGB8_Z24, GX_ZC_LINEAR);
  GXSetFieldMask(GX_ENABLE, GX_ENABLE);
  GXSetFieldMode((GXBool)(rmode->field_rendering),
                 ((rmode->viHeight == 2 * rmode->xfbHeight) ? GX_ENABLE : GX_DISABLE));

  GXSetDispCopySrc(0, 0, rmode->fbWidth, rmode->efbHeight);
  GXSetDispCopyDst(rmode->fbWidth, rmode->efbHeight);
  GXSetDispCopyYScale((f32)(rmode->xfbHeight) / (f32)(rmode->efbHeight));
  GXSetCopyClamp((GXFBClamp)(GX_CLAMP_TOP | GX_CLAMP_BOTTOM));
  GXSetCopyFilter(rmode->aa, rmode->sample_pattern, GX_TRUE, rmode->vfilter);
  GXSetDispCopyGamma(GX_GM_1_0);
  GXSetDispCopyFrame2Field(GX_COPY_PROGRESSIVE);
  GXClearBoundingBox();

  GXPokeColorUpdate(GX_TRUE);
  GXPokeAlphaUpdate(GX_TRUE);
  GXPokeDither(GX_FALSE);
  GXPokeBlendMode(GX_BM_NONE, GX_BL_ZERO, GX_BL_ONE, GX_LO_SET);
  GXPokeAlphaMode(GX_ALWAYS, 0);
  GXPokeAlphaRead(GX_READ_FF);
  GXPokeDstAlpha(GX_DISABLE, 0);
  GXPokeZMode(GX_TRUE, GX_ALWAYS, GX_TRUE);

  GXSetGPMetric(GX_PERF0_NONE, GX_PERF1_NONE);
  GXClearGPMetric();
}
