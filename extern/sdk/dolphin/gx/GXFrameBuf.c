#include "dolphin/gx.h"

#include "dolphin/gx/GXPriv.h"

// clang-format off
GXRenderModeObj GXNtsc480IntDf = {
    VI_TVMODE_NTSC_INT, 640, 480, 480, 40, 0, 640, 480, VI_XFBMODE_DF, GX_FALSE, GX_FALSE,
    6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
    8, 8, 10, 12, 10, 8, 8,
};

GXRenderModeObj GXNtsc480Prog = {
    VI_TVMODE_NTSC_PROG, 640, 480, 480, 40, 0, 640, 480, VI_XFBMODE_SF, GX_FALSE, GX_FALSE,
    6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
    0, 0, 21, 22, 21, 0, 0,
};

GXRenderModeObj GXMpal480IntDf = {
    VI_TVMODE_MPAL_INT, 640, 480, 480, 40, 0, 640, 480, VI_XFBMODE_DF, GX_FALSE, GX_FALSE,
    6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
    8, 8, 10, 12, 10, 8, 8,
};

GXRenderModeObj GXPal528IntDf = {
    VI_TVMODE_PAL_INT, 640, 528, 528, 40, 23, 640, 528, VI_XFBMODE_DF, GX_FALSE, GX_FALSE,
    6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
    8, 8, 10, 12, 10, 8, 8,
};

GXRenderModeObj GXEurgb60Hz480IntDf = {
    VI_TVMODE_EURGB60_INT, 640, 480, 480, 40, 0, 640, 480, VI_XFBMODE_DF, GX_FALSE, GX_FALSE,
    6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
    8, 8, 10, 12, 10, 8, 8,
};
// clang-format on

void GXAdjustForOverscan(const GXRenderModeObj *rIn, GXRenderModeObj *rOut, u16 horiz, u16 vert) {
  u16 hor2 = horiz * 2;
  u16 ver2 = vert * 2;
  u32 verf;

  if (rIn != rOut) {
    *rOut = *rIn;
  }

  rOut->fbWidth = rIn->fbWidth - hor2;
  verf = rIn->efbHeight;
  rOut->efbHeight = verf - ((ver2 * verf) / rIn->xfbHeight);

  if (rIn->xFBmode == VI_XFBMODE_SF && (rIn->viTVmode & 2) != 2) {
    rOut->xfbHeight = rIn->xfbHeight - vert;
  } else {
    rOut->xfbHeight = rIn->xfbHeight - ver2;
  }

  rOut->viWidth = rIn->viWidth - hor2;

  rOut->viHeight = rIn->viHeight - ver2;

  rOut->viXOrigin = rIn->viXOrigin + horiz;
  rOut->viYOrigin = rIn->viYOrigin + vert;
}

void GXSetDispCopySrc(u16 left, u16 top, u16 wd, u16 ht) {

  __GXData->cpDispSrc = 0;
  SET_REG_FIELD(__GXData->cpDispSrc, 10, 0, left);
  SET_REG_FIELD(__GXData->cpDispSrc, 10, 10, top);
  SET_REG_FIELD(__GXData->cpDispSrc, 8, 24, 0x49);

  __GXData->cpDispSize = 0;
  SET_REG_FIELD(__GXData->cpDispSize, 10, 0, wd - 1);
  SET_REG_FIELD(__GXData->cpDispSize, 10, 10, ht - 1);
  SET_REG_FIELD(__GXData->cpDispSize, 8, 24, 0x4A);
}

void GXSetTexCopySrc(u16 left, u16 top, u16 wd, u16 ht) {

  __GXData->cpTexSrc = 0;
  SET_REG_FIELD(__GXData->cpTexSrc, 10, 0, left);
  SET_REG_FIELD(__GXData->cpTexSrc, 10, 10, top);
  SET_REG_FIELD(__GXData->cpTexSrc, 8, 24, 0x49);

  __GXData->cpTexSize = 0;
  SET_REG_FIELD(__GXData->cpTexSize, 10, 0, wd - 1);
  SET_REG_FIELD(__GXData->cpTexSize, 10, 10, ht - 1);
  SET_REG_FIELD(__GXData->cpTexSize, 8, 24, 0x4A);
}

void GXSetDispCopyDst(u16 wd, u16 ht) {
  u16 stride;

  stride = (int)wd * 2;
  __GXData->cpDispStride = 0;
  SET_REG_FIELD(__GXData->cpDispStride, 10, 0, (stride >> 5));
  SET_REG_FIELD(__GXData->cpDispStride, 8, 24, 0x4D);
}

void GXSetTexCopyDst(u16 wd, u16 ht, GXTexFmt fmt, GXBool mipmap) {
  u32 rowTiles;
  u32 colTiles;
  u32 cmpTiles;
  u32 peTexFmt;
  u32 peTexFmtH;

  __GXData->cpTexZ = 0;
  peTexFmt = fmt & 0xF;

  if (fmt == GX_TF_Z16) {
    peTexFmt = 0xB;
  }

  switch (fmt) {
  case GX_TF_I4:
  case GX_TF_I8:
  case GX_TF_IA4:
  case GX_TF_IA8:
  case GX_CTF_YUVA8:
    SET_REG_FIELD(__GXData->cpTex, 2, 15, 3);
    break;
  default:
    SET_REG_FIELD(__GXData->cpTex, 2, 15, 2);
    break;
  }

  __GXData->cpTexZ = (fmt & _GX_TF_ZTF) == _GX_TF_ZTF;
  peTexFmtH = (peTexFmt & 8) >> 3;
  SET_REG_FIELD(__GXData->cpTex, 1, 3, peTexFmtH);
  peTexFmt = peTexFmt & 7;
  __GetImageTileCount(fmt, wd, ht, &rowTiles, &colTiles, &cmpTiles);

  __GXData->cpTexStride = 0;
  SET_REG_FIELD(__GXData->cpTexStride, 10, 0, rowTiles * cmpTiles);
  SET_REG_FIELD(__GXData->cpTexStride, 8, 24, 0x4D);
  SET_REG_FIELD(__GXData->cpTex, 1, 9, mipmap);
  SET_REG_FIELD(__GXData->cpTex, 3, 4, peTexFmt);
}

void GXSetDispCopyFrame2Field(GXCopyMode mode) {

  SET_REG_FIELD(__GXData->cpDisp, 2, 12, mode);
  SET_REG_FIELD(__GXData->cpTex, 2, 12, 0);
}

void GXSetCopyClamp(GXFBClamp clamp) {
  u8 clmpB;
  u8 clmpT;

  clmpT = (clamp & GX_CLAMP_TOP) == 1;
  clmpB = (clamp & GX_CLAMP_BOTTOM) == 2;

  SET_REG_FIELD(__GXData->cpDisp, 1, 0, clmpT);
  SET_REG_FIELD(__GXData->cpDisp, 1, 1, clmpB);

  SET_REG_FIELD(__GXData->cpTex, 1, 0, clmpT);
  SET_REG_FIELD(__GXData->cpTex, 1, 1, clmpB);
}

static u32 __GXGetNumXfbLines(u32 efbHt, u32 iScale) {
  u32 count;
  u32 realHt;
  u32 iScaleD;

  count = (efbHt - 1) * 0x100;
  realHt = (count / iScale) + 1;

  iScaleD = iScale;

  if (iScaleD > 0x80 && iScaleD < 0x100) {
    while (iScaleD % 2 == 0) {
      iScaleD /= 2;
    }

    if (efbHt % iScaleD == 0) {
      realHt++;
    }
  }

  if (realHt > 0x400) {
    realHt = 0x400;
  }

  return realHt;
}

u16 GXGetNumXfbLines(u16 efbHeight, f32 yScale) {
  u32 iScale;

  iScale = (u32)(256.0f / yScale) & 0x1FF;
  return __GXGetNumXfbLines(efbHeight, iScale);
}

f32 GXGetYScaleFactor(u16 efbHeight, u16 xfbHeight) {
  f32 fScale;
  f32 yScale;
  u32 iScale;
  u32 tgtHt;
  u32 realHt;

  tgtHt = xfbHeight;
  yScale = (f32)xfbHeight / (f32)efbHeight;
  iScale = (u32)(256.0f / yScale) & 0x1FF;
  realHt = __GXGetNumXfbLines(efbHeight, iScale);

  while (realHt > xfbHeight) {
    tgtHt--;
    yScale = (f32)tgtHt / (f32)efbHeight;
    iScale = (u32)(256.0f / yScale) & 0x1FF;
    realHt = __GXGetNumXfbLines(efbHeight, iScale);
  }

  fScale = yScale;
  while (realHt < xfbHeight) {
    fScale = yScale;
    tgtHt++;
    yScale = (f32)tgtHt / (f32)efbHeight;
    iScale = (u32)(256.0f / yScale) & 0x1FF;
    realHt = __GXGetNumXfbLines(efbHeight, iScale);
  }

  return fScale;
}

u32 GXSetDispCopyYScale(f32 vscale) {
  u8 enable;
  u32 iScale;
  u32 ht;
  u32 reg;

  iScale = (u32)(256.0f / vscale) & 0x1FF;
  enable = (iScale != 256);

  reg = 0;
  SET_REG_FIELD(reg, 9, 0, iScale);
  SET_REG_FIELD(reg, 8, 24, 0x4E);
  GX_WRITE_RAS_REG(reg);
  __GXData->bpSentNot = 0;
  SET_REG_FIELD(__GXData->cpDisp, 1, 10, enable);
  ht = (u32)GET_REG_FIELD(__GXData->cpDispSize, 10, 10) + 1;
  return __GXGetNumXfbLines(ht, iScale);
}

void GXSetCopyClear(GXColor clear_clr, u32 clear_z) {
  u32 reg;

  reg = 0;
  SET_REG_FIELD(reg, 8, 0, clear_clr.r);
  SET_REG_FIELD(reg, 8, 8, clear_clr.a);
  SET_REG_FIELD(reg, 8, 24, 0x4F);
  GX_WRITE_RAS_REG(reg);

  reg = 0;
  SET_REG_FIELD(reg, 8, 0, clear_clr.b);
  SET_REG_FIELD(reg, 8, 8, clear_clr.g);
  SET_REG_FIELD(reg, 8, 24, 0x50);
  GX_WRITE_RAS_REG(reg);

  reg = 0;
  SET_REG_FIELD(reg, 24, 0, clear_z);
  SET_REG_FIELD(reg, 8, 24, 0x51);
  GX_WRITE_RAS_REG(reg);
  __GXData->bpSentNot = 0;
}

void GXSetCopyFilter(GXBool aa, const u8 sample_pattern[12][2], GXBool vf, const u8 vfilter[7]) {
  u32 msLoc[4];
  u32 coeff0;
  u32 coeff1;

  if (aa != 0) {
    msLoc[0] = 0;
    SET_REG_FIELD(msLoc[0], 4, 0, sample_pattern[0][0]);
    SET_REG_FIELD(msLoc[0], 4, 4, sample_pattern[0][1]);
    SET_REG_FIELD(msLoc[0], 4, 8, sample_pattern[1][0]);
    SET_REG_FIELD(msLoc[0], 4, 12, sample_pattern[1][1]);
    SET_REG_FIELD(msLoc[0], 4, 16, sample_pattern[2][0]);
    SET_REG_FIELD(msLoc[0], 4, 20, sample_pattern[2][1]);
    SET_REG_FIELD(msLoc[0], 8, 24, 1);

    msLoc[1] = 0;
    SET_REG_FIELD(msLoc[1], 4, 0, sample_pattern[3][0]);
    SET_REG_FIELD(msLoc[1], 4, 4, sample_pattern[3][1]);
    SET_REG_FIELD(msLoc[1], 4, 8, sample_pattern[4][0]);
    SET_REG_FIELD(msLoc[1], 4, 12, sample_pattern[4][1]);
    SET_REG_FIELD(msLoc[1], 4, 16, sample_pattern[5][0]);
    SET_REG_FIELD(msLoc[1], 4, 20, sample_pattern[5][1]);
    SET_REG_FIELD(msLoc[1], 8, 24, 2);

    msLoc[2] = 0;
    SET_REG_FIELD(msLoc[2], 4, 0, sample_pattern[6][0]);
    SET_REG_FIELD(msLoc[2], 4, 4, sample_pattern[6][1]);
    SET_REG_FIELD(msLoc[2], 4, 8, sample_pattern[7][0]);
    SET_REG_FIELD(msLoc[2], 4, 12, sample_pattern[7][1]);
    SET_REG_FIELD(msLoc[2], 4, 16, sample_pattern[8][0]);
    SET_REG_FIELD(msLoc[2], 4, 20, sample_pattern[8][1]);
    SET_REG_FIELD(msLoc[2], 8, 24, 3);

    msLoc[3] = 0;
    SET_REG_FIELD(msLoc[3], 4, 0, sample_pattern[9][0]);
    SET_REG_FIELD(msLoc[3], 4, 4, sample_pattern[9][1]);
    SET_REG_FIELD(msLoc[3], 4, 8, sample_pattern[10][0]);
    SET_REG_FIELD(msLoc[3], 4, 12, sample_pattern[10][1]);
    SET_REG_FIELD(msLoc[3], 4, 16, sample_pattern[11][0]);
    SET_REG_FIELD(msLoc[3], 4, 20, sample_pattern[11][1]);
    SET_REG_FIELD(msLoc[3], 8, 24, 4);
  } else {
    msLoc[0] = 0x01666666;
    msLoc[1] = 0x02666666;
    msLoc[2] = 0x03666666;
    msLoc[3] = 0x04666666;
  }

  GX_WRITE_RAS_REG(msLoc[0]);
  GX_WRITE_RAS_REG(msLoc[1]);
  GX_WRITE_RAS_REG(msLoc[2]);
  GX_WRITE_RAS_REG(msLoc[3]);

  coeff0 = 0;
  SET_REG_FIELD(coeff0, 8, 24, 0x53);
  coeff1 = 0;
  SET_REG_FIELD(coeff1, 8, 24, 0x54);

  if (vf != 0) {
    SET_REG_FIELD(coeff0, 6, 0, vfilter[0]);
    SET_REG_FIELD(coeff0, 6, 6, vfilter[1]);
    SET_REG_FIELD(coeff0, 6, 12, vfilter[2]);
    SET_REG_FIELD(coeff0, 6, 18, vfilter[3]);
    SET_REG_FIELD(coeff1, 6, 0, vfilter[4]);
    SET_REG_FIELD(coeff1, 6, 6, vfilter[5]);
    SET_REG_FIELD(coeff1, 6, 12, vfilter[6]);
  } else {
    SET_REG_FIELD(coeff0, 6, 0, 0);
    SET_REG_FIELD(coeff0, 6, 6, 0);
    SET_REG_FIELD(coeff0, 6, 12, 21);
    SET_REG_FIELD(coeff0, 6, 18, 22);
    SET_REG_FIELD(coeff1, 6, 0, 21);
    SET_REG_FIELD(coeff1, 6, 6, 0);
    SET_REG_FIELD(coeff1, 6, 12, 0);
  }

  GX_WRITE_RAS_REG(coeff0);
  GX_WRITE_RAS_REG(coeff1);
  __GXData->bpSentNot = 0;
}

void GXSetDispCopyGamma(GXGamma gamma) { SET_REG_FIELD(__GXData->cpDisp, 2, 7, gamma); }

void GXCopyDisp(void *dest, GXBool clear) {
  u32 reg;
  u32 tempPeCtrl;
  u32 phyAddr;
  u8 changePeCtrl;

  if (clear) {
    reg = __GXData->zmode;
    SET_REG_FIELD(reg, 1, 0, 1);
    SET_REG_FIELD(reg, 3, 1, 7);
    GX_WRITE_RAS_REG(reg);

    reg = __GXData->cmode0;
    SET_REG_FIELD(reg, 1, 0, 0);
    SET_REG_FIELD(reg, 1, 1, 0);
    GX_WRITE_RAS_REG(reg);
  }

  changePeCtrl = FALSE;

  if ((clear || (u32)GET_REG_FIELD(__GXData->peCtrl, 3, 0) == 3) &&
      (u32)GET_REG_FIELD(__GXData->peCtrl, 1, 6) == 1) {
    changePeCtrl = TRUE;
    tempPeCtrl = __GXData->peCtrl;
    SET_REG_FIELD(tempPeCtrl, 1, 6, 0);
    GX_WRITE_RAS_REG(tempPeCtrl);
  }

  GX_WRITE_RAS_REG(__GXData->cpDispSrc);
  GX_WRITE_RAS_REG(__GXData->cpDispSize);
  GX_WRITE_RAS_REG(__GXData->cpDispStride);

  phyAddr = (u32)dest & 0x3FFFFFFF;
  reg = 0;
  SET_REG_FIELD(reg, 21, 0, phyAddr >> 5);
  SET_REG_FIELD(reg, 8, 24, 0x4B);
  GX_WRITE_RAS_REG(reg);

  SET_REG_FIELD(__GXData->cpDisp, 1, 11, clear);
  SET_REG_FIELD(__GXData->cpDisp, 1, 14, 1);
  SET_REG_FIELD(__GXData->cpDisp, 8, 24, 0x52);
  GX_WRITE_RAS_REG(__GXData->cpDisp);

  if (clear) {
    GX_WRITE_RAS_REG(__GXData->zmode);
    GX_WRITE_RAS_REG(__GXData->cmode0);
  }

  if (changePeCtrl) {
    GX_WRITE_RAS_REG(__GXData->peCtrl);
  }

  __GXData->bpSentNot = 0;
}

void GXCopyTex(void *dest, GXBool clear) {
  u32 reg;
  u32 tempPeCtrl;
  u32 phyAddr;
  u8 changePeCtrl;

  if (clear) {
    reg = __GXData->zmode;
    SET_REG_FIELD(reg, 1, 0, 1);
    SET_REG_FIELD(reg, 3, 1, 7);
    GX_WRITE_RAS_REG(reg);

    reg = __GXData->cmode0;
    SET_REG_FIELD(reg, 1, 0, 0);
    SET_REG_FIELD(reg, 1, 1, 0);
    GX_WRITE_RAS_REG(reg);
  }

  changePeCtrl = 0;
  tempPeCtrl = __GXData->peCtrl;

  if (__GXData->cpTexZ && ((tempPeCtrl & 7) != 3)) {
    changePeCtrl = 1;
    SET_REG_FIELD(tempPeCtrl, 3, 0, 3);
  }

  if ((clear || ((u32)(tempPeCtrl & 7) == 3)) && ((u32)((tempPeCtrl >> 6) & 1) == 1)) {
    changePeCtrl = 1;
    SET_REG_FIELD(tempPeCtrl, 1, 6, 0);
  }

  if (changePeCtrl) {
    GX_WRITE_RAS_REG(tempPeCtrl);
  }

  GX_WRITE_RAS_REG(__GXData->cpTexSrc);
  GX_WRITE_RAS_REG(__GXData->cpTexSize);
  GX_WRITE_RAS_REG(__GXData->cpTexStride);

  phyAddr = (u32)dest & 0x3FFFFFFF;
  reg = 0;
  SET_REG_FIELD(reg, 21, 0, phyAddr >> 5);
  SET_REG_FIELD(reg, 8, 24, 0x4B);
  GX_WRITE_RAS_REG(reg);

  SET_REG_FIELD(__GXData->cpTex, 1, 11, clear);
  SET_REG_FIELD(__GXData->cpTex, 1, 14, 0);
  SET_REG_FIELD(__GXData->cpTex, 8, 24, 0x52);
  GX_WRITE_RAS_REG(__GXData->cpTex);

  if (clear) {
    GX_WRITE_RAS_REG(__GXData->zmode);
    GX_WRITE_RAS_REG(__GXData->cmode0);
  }

  if (changePeCtrl) {
    GX_WRITE_RAS_REG(__GXData->peCtrl);
  }

  __GXData->bpSentNot = 0;
}

void GXClearBoundingBox(void) {
  u32 reg;

  reg = 0x550003FF;
  GX_WRITE_RAS_REG(reg);
  reg = 0x560003FF;
  GX_WRITE_RAS_REG(reg);
  __GXData->bpSentNot = 0;
}
