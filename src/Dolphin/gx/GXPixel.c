#include "dolphin/gx.h"
#include "dolphin/gx/GXPriv.h"

void GXSetFog(GXFogType type, f32 startz, f32 endz, f32 nearz, f32 farz, GXColor color);
void GXSetFogColor(GXColor color) {
  GXData* gxdata = gx;

  GX_WRITE_RA_REG(color.b | (color.g << 8) | (color.r << 16) | 0xf2000000);

  gxdata->bpSentNot = GX_FALSE;
};
// ? GXSetFogRangeAdj();
void GXSetBlendMode(GXBlendMode type, GXBlendFactor src_factor, GXBlendFactor dst_factor, GXLogicOp op) {
    GXData* gxdata = gx;
    u32 reg = gxdata->cmode0;

    GX_BITFIELD_SET(reg, 20, 1, (type == GX_BM_SUBTRACT));
    GX_BITFIELD_SET(reg, 31, 1, type);
    GX_BITFIELD_SET(reg, 30, 1, (type == GX_BM_LOGIC));
    GX_BITFIELD_SET(reg, 16, 4, op);
    GX_BITFIELD_SET(reg, 21, 3, src_factor);
    GX_BITFIELD_SET(reg, 24, 3, dst_factor);
    GX_WRITE_RA_REG(reg);

    gxdata->cmode0 = reg;
    gxdata->bpSentNot = GX_FALSE;
};
void GXSetColorUpdate(GXBool update_enable) {
  GXData* gxdata = gx;
  u32 r6 = gxdata->cmode0; 

  GX_BITFIELD_SET(r6, 28, 1, update_enable);
  GX_WRITE_RA_REG(r6);

  gxdata->cmode0 = r6;
  gxdata->bpSentNot = GX_FALSE;
};
void GXSetAlphaUpdate(GXBool update_enable) {
  GXData* gxdata = gx;
  u32 r6 = gxdata->cmode0;

  GX_BITFIELD_SET(r6, 27, 1, update_enable);
  GX_WRITE_RA_REG(r6);

  gxdata->cmode0 = r6;
  gxdata->bpSentNot = GX_FALSE;
};
void GXSetZMode(GXBool compare_enable, GXCompare func, GXBool update_enable) {
  GXData* gxdata = gx;
  u32 r6 = gxdata->zmode;

  GX_BITFIELD_SET(r6, 31, 1, compare_enable);
  GX_BITFIELD_SET(r6, 28, 3, func);
  GX_BITFIELD_SET(r6, 27, 1, update_enable);
  GX_WRITE_RA_REG(r6);

  gxdata->zmode = r6;
  gxdata->bpSentNot = GX_FALSE;
};
void GXSetZCompLoc(GXBool before_tex) {
  GXData* gxdata = gx;
  gxdata->peCtrl = gxdata->peCtrl & 0xffffffbf | (u32)before_tex << 6;

  GX_WRITE_RA_REG(gxdata->peCtrl);

  gxdata->bpSentNot = GX_FALSE;
};
void GXSetPixelFmt(GXPixelFmt pix_fmt, GXZFmt16 z_fmt);
void GXSetDither(GXBool dither) {
  GXData* gxdata = gx;
  u32 r6 = gxdata->cmode0; 

  r6 = r6 & 0xfffffffb | (u32)dither << 2;
  GX_WRITE_RA_REG(r6);

  gxdata->cmode0 = r6;
  gxdata->bpSentNot = GX_FALSE;
};
void GXSetDstAlpha(GXBool enable, u8 alpha) {
  GXData* gxdata = gx;
  u32 r6 = gxdata->cmode1; 

  GX_BITFIELD_SET(r6, 24, 8, alpha);
  GX_BITFIELD_SET(r6, 23, 1, enable);
  GX_WRITE_RA_REG(r6);

  gxdata->cmode1 = r6;
  gxdata->bpSentNot = GX_FALSE;
};
void GXSetFieldMask(GXBool odd_mask, GXBool even_mask) {
  u32 reg = 0;

  SET_REG_FIELD(reg, 1, 0, even_mask);
  SET_REG_FIELD(reg, 1, 1, odd_mask);
  SET_REG_FIELD(reg, 8, 24, 0x44);

  GX_WRITE_RA_REG(reg);

  gx->bpSentNot = GX_FALSE;
};
void GXSetFieldMode(u8 field_mode, u8 half_aspect_ratio) {
  GXData* gxdata = gx;

  SET_REG_FIELD(gxdata->lpSize, 1, 22, half_aspect_ratio);
  GX_WRITE_RA_REG(gxdata->lpSize);
  __GXFlushTextureState();
  GX_WRITE_RA_REG(field_mode | 0x68000000);
  __GXFlushTextureState();
};
