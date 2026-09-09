#include "dolphin/gx.h"
#include "dolphin/mtx.h"

#include "dolphin/gx/GXPriv.h"

inline void WriteProjPS(const register f32 src[6], register volatile void *dst) {
  register f32 ps_0, ps_1, ps_2;

  asm {
        psq_l  ps_0,  0(src), 0, 0
        psq_l  ps_1,  8(src), 0, 0
        psq_l  ps_2, 16(src), 0, 0
        psq_st ps_0,  0(dst), 0, 0
        psq_st ps_1,  0(dst), 0, 0
        psq_st ps_2,  0(dst), 0, 0
  }
}

inline void Copy6Floats(const register f32 src[6], register f32 dst[6]) {
  register f32 ps_0, ps_1, ps_2;

  asm {
        psq_l  ps_0,  0(src), 0, 0
        psq_l  ps_1,  8(src), 0, 0
        psq_l  ps_2, 16(src), 0, 0
        psq_st ps_0,  0(dst), 0, 0
        psq_st ps_1,  8(dst), 0, 0
        psq_st ps_2, 16(dst), 0, 0
  }
}

inline void __GXSetProjection(void) {
  u32 reg = 0x00061020;

  GX_WRITE_U8(0x10);
  GX_WRITE_U32(reg);
  GX_WRITE_F32(__GXData->projMtx[0]);
  GX_WRITE_F32(__GXData->projMtx[1]);
  GX_WRITE_F32(__GXData->projMtx[2]);
  GX_WRITE_F32(__GXData->projMtx[3]);
  GX_WRITE_F32(__GXData->projMtx[4]);
  GX_WRITE_F32(__GXData->projMtx[5]);
  GX_WRITE_U32(__GXData->projType);
}

void GXSetProjection(const Mtx44 proj, GXProjectionType type) {
  __GXData->projType = type;

  __GXData->projMtx[0] = proj[0][0];
  __GXData->projMtx[2] = proj[1][1];
  __GXData->projMtx[4] = proj[2][2];
  __GXData->projMtx[5] = proj[2][3];

  if (type == GX_ORTHOGRAPHIC) {
    __GXData->projMtx[1] = proj[0][3];
    __GXData->projMtx[3] = proj[1][3];
  } else {
    __GXData->projMtx[1] = proj[0][2];
    __GXData->projMtx[3] = proj[1][2];
  }

  __GXSetProjection();

  __GXData->bpSentNot = GX_TRUE;
}

void GXSetProjectionv(const f32 *proj) {
  __GXData->projType = proj[0];
  __GXData->projMtx[0] = proj[1];
  __GXData->projMtx[1] = proj[2];
  __GXData->projMtx[2] = proj[3];
  __GXData->projMtx[3] = proj[4];
  __GXData->projMtx[4] = proj[5];
  __GXData->projMtx[5] = proj[6];

  __GXSetProjection();
  __GXData->bpSentNot = GX_TRUE;
}

inline void WriteMTXPS4x3(register volatile void *dst, register const Mtx src) {
  register f32 ps_0, ps_1, ps_2, ps_3, ps_4, ps_5;

  asm {
        psq_l  ps_0,  0(src), 0, 0
        psq_l  ps_1,  8(src), 0, 0
        psq_l  ps_2, 16(src), 0, 0
        psq_l  ps_3, 24(src), 0, 0
        psq_l  ps_4, 32(src), 0, 0
        psq_l  ps_5, 40(src), 0, 0

        psq_st ps_0, 0(dst),  0, 0
        psq_st ps_1, 0(dst),  0, 0
        psq_st ps_2, 0(dst),  0, 0
        psq_st ps_3, 0(dst),  0, 0
        psq_st ps_4, 0(dst),  0, 0
        psq_st ps_5, 0(dst),  0, 0
  }
}

inline void WriteMTXPS3x3from3x4(register volatile void *dst, register const Mtx src) {
  register f32 ps_0, ps_1, ps_2, ps_3, ps_4, ps_5;

  asm {
        psq_l  ps_0,  0(src), 0, 0
        lfs    ps_1,  8(src)
        psq_l  ps_2, 16(src), 0, 0
        lfs    ps_3, 24(src)
        psq_l  ps_4, 32(src), 0, 0
        lfs    ps_5, 40(src)

        psq_st ps_0, 0(dst),  0, 0
        stfs   ps_1, 0(dst)
        psq_st ps_2, 0(dst),  0, 0
        stfs   ps_3, 0(dst)
        psq_st ps_4, 0(dst),  0, 0
        stfs   ps_5, 0(dst)
  }
}

inline void WriteMTXPS4x2(register volatile void *dst, register const Mtx src) {
  register f32 ps_0, ps_1, ps_2, ps_3;

  asm {
        psq_l  ps_0,  0(src), 0, 0
        psq_l  ps_1,  8(src), 0, 0
        psq_l  ps_2, 16(src), 0, 0
        psq_l  ps_3, 24(src), 0, 0

        psq_st ps_0, 0(dst),  0, 0
        psq_st ps_1, 0(dst),  0, 0
        psq_st ps_2, 0(dst),  0, 0
        psq_st ps_3, 0(dst),  0, 0
  }
}

void GXLoadPosMtxImm(const Mtx mtx, u32 id) {
  u32 reg;
  u32 addr;

  addr = id * 4;
  reg = addr | 0xB0000;

  GX_WRITE_U8(0x10);
  GX_WRITE_U32(reg);
  WriteMTXPS4x3(&__GXWGFifo.f32, mtx);
}

void GXLoadNrmMtxImm(const Mtx mtx, u32 id) {
  u32 reg;
  u32 addr;

  addr = id * 3 + 0x400;
  reg = addr | 0x80000;

  GX_WRITE_U8(0x10);
  GX_WRITE_U32(reg);
  WriteMTXPS3x3from3x4(&__GXWGFifo.f32, (void *)mtx);
}

void GXSetCurrentMtx(u32 id) {

  SET_REG_FIELD(__GXData->matIdxA, 6, 0, id);
  __GXSetMatrixIndex(GX_VA_PNMTXIDX);
}

void GXLoadTexMtxImm(const f32 mtx[][4], u32 id, GXTexMtxType type) {
  u32 reg;
  u32 addr;
  u32 count;

  if (id >= GX_PTTEXMTX0) {
    addr = (id - GX_PTTEXMTX0) * 4 + 0x500;
  } else {
    addr = id * 4;
  }
  count = (type == GX_MTX2x4) ? 8 : 12;
  reg = addr | ((count - 1) << 16);

  GX_WRITE_U8(0x10);
  GX_WRITE_U32(reg);

  if (type == GX_MTX3x4) {
    WriteMTXPS4x3(&__GXWGFifo.f32, mtx);
  } else {
    WriteMTXPS4x2(&__GXWGFifo.f32, mtx);
  }
}

void GXSetViewportJitter(f32 left, f32 top, f32 wd, f32 ht, f32 nearz, f32 farz, u32 field) {
  f32 sx;
  f32 sy;
  f32 sz;
  f32 ox;
  f32 oy;
  f32 oz;
  f32 zmin;
  f32 zmax;
  u32 reg;

  if (field == 0) {
    top -= 0.5f;
  }

  sx = wd / 2.0f;
  sy = -ht / 2.0f;
  ox = 342.0f + (left + (wd / 2.0f));
  oy = 342.0f + (top + (ht / 2.0f));
  zmin = 1.6777215e7f * nearz;
  zmax = 1.6777215e7f * farz;
  sz = zmax - zmin;
  oz = zmax;

  __GXData->vpLeft = left;
  __GXData->vpTop = top;
  __GXData->vpWd = wd;
  __GXData->vpHt = ht;
  __GXData->vpNearz = nearz;
  __GXData->vpFarz = farz;

  if (__GXData->fgRange != 0) {
    __GXSetRange(nearz, __GXData->fgSideX);
  }

  reg = 0x5101A;
  GX_WRITE_U8(0x10);
  GX_WRITE_U32(reg);
  GX_WRITE_F32(sx);
  GX_WRITE_F32(sy);
  GX_WRITE_F32(sz);
  GX_WRITE_F32(ox);
  GX_WRITE_F32(oy);
  GX_WRITE_F32(oz);

  __GXData->bpSentNot = GX_TRUE;
}

void GXSetViewport(f32 left, f32 top, f32 width, f32 height, f32 nearZ, f32 farZ) {
  GXSetViewportJitter(left, top, width, height, nearZ, farZ, 1);
}

void GXSetScissor(u32 left, u32 top, u32 wd, u32 ht) {
  u32 tp;
  u32 lf;
  u32 bm;
  u32 rt;

  tp = top + 342;
  lf = left + 342;
  bm = tp + ht - 1;
  rt = lf + wd - 1;

  SET_REG_FIELD(__GXData->suScis0, 11, 0, tp);
  SET_REG_FIELD(__GXData->suScis0, 11, 12, lf);
  SET_REG_FIELD(__GXData->suScis1, 11, 0, bm);
  SET_REG_FIELD(__GXData->suScis1, 11, 12, rt);

  GX_WRITE_RAS_REG(__GXData->suScis0);
  GX_WRITE_RAS_REG(__GXData->suScis1);
  __GXData->bpSentNot = 0;
}

void GXGetScissor(u32 *left, u32 *top, u32 *width, u32 *height) {
  u32 y1 = (__GXData->suScis0 & 0x0007FF) >> 0;
  u32 x1 = (__GXData->suScis0 & 0x7FF000) >> 12;
  u32 y2 = (__GXData->suScis1 & 0x0007FF) >> 0;
  u32 x2 = (__GXData->suScis1 & 0x7FF000) >> 12;

  *left = x1 - 0x156;
  *top = y1 - 0x156;
  *width = (x2 - x1) + 1;
  *height = (y2 - y1) + 1;
}

void GXSetScissorBoxOffset(s32 x_off, s32 y_off) {
  u32 reg = 0;
  u32 hx;
  u32 hy;

  hx = (u32)(x_off + 342) >> 1;
  hy = (u32)(y_off + 342) >> 1;

  SET_REG_FIELD(reg, 10, 0, hx);
  SET_REG_FIELD(reg, 10, 10, hy);
  SET_REG_FIELD(reg, 8, 24, 0x59);
  GX_WRITE_RAS_REG(reg);
  __GXData->bpSentNot = 0;
}

void GXSetClipMode(GXClipMode mode) {

  GX_WRITE_XF_REG(5, mode);
  __GXData->bpSentNot = 1;
}

void __GXSetMatrixIndex(GXAttr matIdxAttr) {
  if (matIdxAttr < GX_VA_TEX4MTXIDX) {
    GX_WRITE_SOME_REG4(8, 0x30, __GXData->matIdxA, -12);
    GX_WRITE_XF_REG(24, __GXData->matIdxA);
  } else {
    GX_WRITE_SOME_REG4(8, 0x40, __GXData->matIdxB, -12);
    GX_WRITE_XF_REG(25, __GXData->matIdxB);
  }
  __GXData->bpSentNot = 1;
}
