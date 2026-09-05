#include "dolphin/gx.h"
#include "dolphin/gx/GXPriv.h"
#include <math.h>

extern float cosf(float x);
extern float sqrtf(float x);

#define GX_LARGE_NUMBER 1.0e+18f;

void GXInitLightAttn(GXLightObj* lt_obj, f32 a0, f32 a1, f32 a2, f32 k0, f32 k1, f32 k2) {
  GXLightObjInt* obj = (GXLightObjInt*)lt_obj;
  obj->a0 = a0;
  obj->a1 = a1;
  obj->a2 = a2;
  obj->k0 = k0;
  obj->k1 = k1;
  obj->k2 = k2;
}

void GXInitLightAttnA(GXLightObj* lt_obj, f32 a0, f32 a1, f32 a2) {
  GXLightObjInt* obj = (GXLightObjInt*)lt_obj;
  obj->a0 = a0;
  obj->a1 = a1;
  obj->a2 = a2;
}

void GXGetLightAttnA(const GXLightObj* lt_obj, f32* a0, f32* a1, f32* a2) {
  GXLightObjInt* obj = (GXLightObjInt*)lt_obj;
  *a0 = obj->a0;
  *a1 = obj->a1;
  *a2 = obj->a2;
}

void GXInitLightAttnK(GXLightObj* lt_obj, f32 k0, f32 k1, f32 k2) {
  GXLightObjInt* obj = (GXLightObjInt*)lt_obj;
  obj->k0 = k0;
  obj->k1 = k1;
  obj->k2 = k2;
}

void GXGetLightAttnK(const GXLightObj* lt_obj, f32* k0, f32* k1, f32* k2) {
  GXLightObjInt* obj = (GXLightObjInt*)lt_obj;
  *k0 = obj->k0;
  *k1 = obj->k1;
  *k2 = obj->k2;
}

#define PI 3.14159265358979323846F

void GXInitLightSpot(GXLightObj* lt_obj, f32 cutoff, GXSpotFn spot_func) {
  f32 a0, a1, a2, r, d, cr;
  GXLightObjInt* obj = (GXLightObjInt*)lt_obj;

  if (cutoff <= 0.0f || cutoff > 90.0f) {
    spot_func = GX_SP_OFF;
  }

  r = cutoff * PI / 180.0f;
  cr = cosf(r);

  switch (spot_func) {
  case GX_SP_FLAT:
    a0 = -1000.0f * cr;
    a1 = 1000.0f;
    a2 = 0.0f;
    break;
  case GX_SP_COS:
    a1 = 1.0f / (1.0f - cr);
    a0 = -cr * a1;
    a2 = 0.0f;
    break;
  case GX_SP_COS2:
    a2 = 1.0f / (1.0f - cr);
    a0 = 0.0f;
    a1 = -cr * a2;
    break;
  case GX_SP_SHARP:
    d = 1.0F / ((1.0F - cr) * (1.0F - cr));
    a0 = cr * (cr - 2.0F) * d;
    a1 = 2.0F * d;
    a2 = -d;
    break;
  case GX_SP_RING1:
    d = 1.0f / ((1.0f - cr) * (1.0F - cr));
    a2 = -4.0f * d;
    a0 = a2 * cr;
    a1 = 4.0f * (1.0f + cr) * d;
    break;
  case GX_SP_RING2:
    d = 1.0f / ((1.0f - cr) * (1.0F - cr));
    a0 = 1.0f - 2.0f * cr * cr * d;
    a1 = 4.0f * cr * d;
    a2 = -2.0f * d;
    break;
  case GX_SP_OFF:
  default:
    a0 = 1.0f;
    a1 = 0.0f;
    a2 = 0.0f;
    break;
  }

  obj->a0 = a0;
  obj->a1 = a1;
  obj->a2 = a2;
}

void GXInitLightDistAttn(GXLightObj* lt_obj, f32 ref_dist, f32 ref_br, GXDistAttnFn dist_func) {
  f32 k0, k1, k2;
  GXLightObjInt* obj = (GXLightObjInt*)lt_obj;

  if (ref_dist < 0.0F) {
    dist_func = GX_DA_OFF;
  }

  if (ref_br <= 0.0F || ref_br >= 1.0F) {
    dist_func = GX_DA_OFF;
  }

  switch (dist_func) {
  case GX_DA_GENTLE:
    k0 = 1.0F;
    k1 = (1.0F - ref_br) / (ref_br * ref_dist);
    k2 = 0.0F;
    break;
  case GX_DA_MEDIUM:
    k0 = 1.0f;
    k1 = 0.5f * (1.0f - ref_br) / (ref_br * ref_dist);
    k2 = 0.5f * (1.0f - ref_br) / (ref_br * ref_dist * ref_dist);
    break;
  case GX_DA_STEEP:
    k0 = 1.0f;
    k1 = 0.0f;
    k2 = (1.0f - ref_br) / (ref_br * ref_dist * ref_dist);
    break;
  case GX_DA_OFF:
  default:
    k0 = 1.0f;
    k1 = 0.0f;
    k2 = 0.0f;
    break;
  }

  obj->k0 = k0;
  obj->k1 = k1;
  obj->k2 = k2;
}

void GXInitLightPos(GXLightObj* lt_obj, f32 x, f32 y, f32 z) {
  GXLightObjInt* obj = (GXLightObjInt*)lt_obj;

  obj->px = x;
  obj->py = y;
  obj->pz = z;
}

void GXGetLightPos(const GXLightObj* lt_obj, f32* x, f32* y, f32* z) {
  GXLightObjInt* obj = (GXLightObjInt*)lt_obj;
  *x = obj->px;
  *y = obj->py;
  *z = obj->pz;
}

void GXInitLightDir(GXLightObj* lt_obj, f32 nx, f32 ny, f32 nz) {
  GXLightObjInt* obj = (GXLightObjInt*)lt_obj;

  obj->nx = -nx;
  obj->ny = -ny;
  obj->nz = -nz;
}

void GXGetLightDir(const GXLightObj* lt_obj, f32* nx, f32* ny, f32* nz) {
  GXLightObjInt* obj = (GXLightObjInt*)lt_obj;
  *nx = -(obj->nx);
  *ny = -(obj->ny);
  *nz = -(obj->nz);
}

void GXInitSpecularDir(GXLightObj* lt_obj, f32 nx, f32 ny, f32 nz) {
  f32 mag;
  f32 vx, vy, vz;
  GXLightObjInt* obj = (GXLightObjInt*)lt_obj;

  vx = -nx;
  vy = -ny;
  vz = (-nz + 1.0F);
  mag = vx * vx + vy * vy + vz * vz;

  if (mag != 0.0f) {
    mag = 1.0f / sqrtf(mag);
  }

  obj->px = vx * mag;
  obj->py = vy * mag;
  obj->pz = vz * mag;

  obj->nx = nx * -GX_LARGE_NUMBER;
  obj->ny = ny * -GX_LARGE_NUMBER;
  obj->nz = nz * -GX_LARGE_NUMBER;
}

void GXInitSpecularDirHA(GXLightObj* lt_obj, f32 nx, f32 ny, f32 nz, f32 hx, f32 hy, f32 hz) {
  GXLightObjInt* obj = (GXLightObjInt*)lt_obj;

  obj->nx = hx;
  obj->ny = hy;
  obj->nz = hz;

  obj->px = nx * -GX_LARGE_NUMBER;
  obj->py = ny * -GX_LARGE_NUMBER;
  obj->pz = nz * -GX_LARGE_NUMBER;
}

void GXInitLightColor(GXLightObj* lt_obj, GXColor color) {
  GXLightObjInt* obj = (GXLightObjInt*)lt_obj;
  obj->color = *(u32*)(&color);
}

void GXGetLightColor(const GXLightObj* lt_obj, GXColor* color) {
  GXLightObjInt* obj = (GXLightObjInt*)lt_obj;
  *(u32*)color = obj->color;
}

static inline void PushLight(const register GXLightObjInt* lt_obj, register void* dest) {
  register u32 zero, color;
  register f32 a0_a1, a2_k0, k1_k2;
  register f32 px_py, pz_dx, dy_dz;

  asm
  {
        lwz     color, 12(lt_obj)
        xor     zero, zero, zero
        psq_l   a0_a1, 16(lt_obj), 0, 0
        psq_l   a2_k0, 24(lt_obj), 0, 0
        psq_l   k1_k2, 32(lt_obj), 0, 0
        psq_l   px_py, 40(lt_obj), 0, 0
        psq_l   pz_dx, 48(lt_obj), 0, 0
        psq_l   dy_dz, 56(lt_obj), 0, 0
        
        stw     zero,  0(dest)
        stw     zero,  0(dest)
        stw     zero,  0(dest)
        stw     color, 0(dest)
        psq_st  a0_a1, 0(dest), 0, 0
        psq_st  a2_k0, 0(dest), 0, 0
        psq_st  k1_k2, 0(dest), 0, 0
        psq_st  px_py, 0(dest), 0, 0
        psq_st  pz_dx, 0(dest), 0, 0
        psq_st  dy_dz, 0(dest), 0, 0
  }
}

void GXLoadLightObjImm(GXLightObj* lt_obj, GXLightID light) {
  u32 addr;
  u32 idx;
  GXLightObjInt* obj;
  obj = (GXLightObjInt*)lt_obj;

  idx = 31 - __cntlzw(light);
  idx &= 7;

  addr = XF_LIGHT_BASE + idx * XF_LIGHT_SIZE;

  GX_WRITE_U8(16);
  GX_WRITE_U32(addr | (XF_LIGHT_SIZE - 1) << 16);
  PushLight(obj, (void*)GX_FIFO_ADDR);
  gx->bpSentNot = 1;
}

void GXSetChanAmbColor(GXChannelID chan, GXColor color) {}
