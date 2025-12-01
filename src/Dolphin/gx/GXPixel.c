#include "dolphin/gx.h"
#include "dolphin/gx/GXPriv.h"

void GXSetFog(GXFogType type, f32 startz, f32 endz, f32 nearz, f32 farz, GXColor color);
void GXSetFogColor(GXColor color);
// ? GXSetFogRangeAdj();
void GXSetBlendMode(GXBlendMode type, GXBlendFactor src_factor, GXBlendFactor dst_factor,
                    GXLogicOp op);
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
void GXSetZMode(GXBool compare_enable, GXCompare func, GXBool update_enable);
void GXSetZCompLoc(GXBool before_tex) {
  GXData* gxdata = gx;
  gxdata->peCtrl = gxdata->peCtrl & 0xffffffbf | (u32)before_tex << 6;

  GX_WRITE_RA_REG(gxdata->peCtrl);

  gxdata->bpSentNot = GX_FALSE;
};
void GXSetPixelFmt(GXPixelFmt pix_fmt, GXZFmt16 z_fmt);
void GXSetDither(GXBool dither);
void GXSetDstAlpha(GXBool enable, u8 alpha);
// ? GXSetFieldMask();
void GXSetFieldMode(u8 field_mode, u8 half_aspect_ratio);
