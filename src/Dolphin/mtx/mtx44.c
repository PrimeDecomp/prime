#include "dolphin/mtx/mtx44ext.h"
#include "dolphin/os.h"
#include <math.h>

static f32 mtxUnit[] = {0.0f, 1.0f, 0.5f, 3.0f};

void C_MTXFrustum(Mtx44 m, f32 t, f32 b, f32 l, f32 r, f32 n, f32 f) {
  f32 tmp;

#line 0x69
  ASSERTMSG((m != 0), "MTXFrustum():  NULL Mtx44Ptr 'm' ");
  ASSERTMSG((t != b), "MTXFrustum():  't' and 'b' clipping planes are equal ");
  ASSERTMSG((l != r), "MTXFrustum():  'l' and 'r' clipping planes are equal ");
  ASSERTMSG((n != f), "MTXFrustum():  'n' and 'f' clipping planes are equal ");

  tmp = 1.0f / (r - l);
  m[0][0] = (2 * n) * tmp;
  m[0][1] = 0.0f;
  m[0][2] = (r + l) * tmp;
  m[0][3] = 0.0f;

  tmp = 1.0f / (t - b);
  m[1][0] = 0.0f;
  m[1][1] = (2 * n) * tmp;
  m[1][2] = (t + b) * tmp;
  m[1][3] = 0.0f;

  m[2][0] = 0.0f;
  m[2][1] = 0.0f;

  tmp = 1.0f / (f - n);
  m[2][2] = -(n)*tmp;
  m[2][3] = -(f * n) * tmp;
  m[3][0] = 0.0f;
  m[3][1] = 0.0f;
  m[3][2] = -1.0f;
  m[3][3] = 0.0f;
}

void C_MTXPerspective(Mtx44 m, f32 fovY, f32 aspect, f32 n, f32 f) {
  f32 angle;
  f32 cot;
  f32 tmp;

#line 0xb3
  ASSERTMSG((m != 0), "MTXPerspective():  NULL Mtx44Ptr 'm' ");
  ASSERTMSG(((fovY > 0.0) && (fovY < 180.0)), "MTXPerspective():  'fovY' out of range ");
  ASSERTMSG((aspect != 0), "MTXPerspective():  'aspect' is 0 ");

  angle = fovY * 0.5f;
  angle = MTXDegToRad(angle);

  cot = 1.0f / tanf(angle);

  m[0][0] = cot / aspect;
  m[0][1] = 0.0f;
  m[0][2] = 0.0f;
  m[0][3] = 0.0f;

  m[1][0] = 0.0f;
  m[1][1] = cot;
  m[1][2] = 0.0f;
  m[1][3] = 0.0f;

  m[2][0] = 0.0f;
  m[2][1] = 0.0f;

  tmp = 1.0f / (f - n);
  m[2][2] = -(n)*tmp;
  m[2][3] = -(f * n) * tmp;

  m[3][0] = 0.0f;
  m[3][1] = 0.0f;
  m[3][2] = -1.0f;
  m[3][3] = 0.0f;
}

void C_MTXOrtho(Mtx44 m, f32 t, f32 b, f32 l, f32 r, f32 n, f32 f) {
  f32 tmp;
#line 0xfe
  ASSERTMSG((m != 0), "MTXOrtho():  NULL Mtx44Ptr 'm' ");
  ASSERTMSG((t != b), "MTXOrtho():  't' and 'b' clipping planes are equal ");
  ASSERTMSG((l != r), "MTXOrtho():  'l' and 'r' clipping planes are equal ");
  ASSERTMSG((n != f), "MTXOrtho():  'n' and 'f' clipping planes are equal ");

  tmp = 1.0f / (r - l);
  m[0][0] = 2.0f * tmp;
  m[0][1] = 0.0f;
  m[0][2] = 0.0f;
  m[0][3] = -(r + l) * tmp;

  tmp = 1.0f / (t - b);
  m[1][0] = 0.0f;
  m[1][1] = 2.0f * tmp;
  m[1][2] = 0.0f;
  m[1][3] = -(t + b) * tmp;

  m[2][0] = 0.0f;
  m[2][1] = 0.0f;

  tmp = 1.0f / (f - n);
  m[2][2] = -(1.0f) * tmp;
  m[2][3] = -(f)*tmp;
  m[3][0] = 0.0f;
  m[3][1] = 0.0f;
  m[3][2] = 0.0f;
  m[3][3] = 1.0f;
}

void C_MTX44Identity(Mtx44 m) {
#line 0x144
  ASSERTMSG((m != 0), "MTX44Identity():  NULL Mtx44 'm' ");

  m[0][0] = 1.0f;
  m[0][1] = 0.0f;
  m[0][2] = 0.0f;
  m[0][3] = 0.0f;

  m[1][0] = 0.0f;
  m[1][1] = 1.0f;
  m[1][2] = 0.0f;
  m[1][3] = 0.0f;

  m[2][0] = 0.0f;
  m[2][1] = 0.0f;
  m[2][2] = 1.0f;
  m[2][3] = 0.0f;

  m[3][0] = 0.0f;
  m[3][1] = 0.0f;
  m[3][2] = 0.0f;
  m[3][3] = 1.0f;
}

#ifdef GEKKO
void PSMTX44Identity(register Mtx44 m) {
  register f32 c1 = 1.0F;
  register f32 c0 = 0.0F;

  asm
  {
        stfs        c1,  0(m);
        psq_st      c0,  4(m), 0, 0;
        psq_st      c0, 12(m), 0, 0;
        stfs        c1, 20(m);
        psq_st      c0, 24(m), 0, 0;
        psq_st      c0, 32(m), 0, 0;
        stfs        c1, 40(m);
        psq_st      c0, 44(m), 0, 0;
        psq_st      c0, 52(m), 0, 0;
        stfs        c1, 60(m);
  }
}
#endif // GEKKO

void C_MTX44Copy(const Mtx44 src, Mtx44 dst) {
#line 0x17e
  ASSERTMSG((src != 0), "MTX44Copy():  NULL Mtx44Ptr 'src' ");
  ASSERTMSG((dst != 0), "MTX44Copy():  NULL Mtx44Ptr 'dst' ");

  if (src == dst) {
    return;
  }

  dst[0][0] = src[0][0];
  dst[0][1] = src[0][1];
  dst[0][2] = src[0][2];
  dst[0][3] = src[0][3];

  dst[1][0] = src[1][0];
  dst[1][1] = src[1][1];
  dst[1][2] = src[1][2];
  dst[1][3] = src[1][3];

  dst[2][0] = src[2][0];
  dst[2][1] = src[2][1];
  dst[2][2] = src[2][2];
  dst[2][3] = src[2][3];

  dst[3][0] = src[3][0];
  dst[3][1] = src[3][1];
  dst[3][2] = src[3][2];
  dst[3][3] = src[3][3];
}

#ifdef GEKKO
asm void PSMTX44Copy(const register Mtx44 src, register Mtx44 dst) {
  nofralloc;
  psq_l fp1, 0(src), 0, 0;
  psq_st fp1, 0(dst), 0, 0;
  psq_l fp1, 8(src), 0, 0;
  psq_st fp1, 8(dst), 0, 0;
  psq_l fp1, 16(src), 0, 0;
  psq_st fp1, 16(dst), 0, 0;
  psq_l fp1, 24(src), 0, 0;
  psq_st fp1, 24(dst), 0, 0;
  psq_l fp1, 32(src), 0, 0;
  psq_st fp1, 32(dst), 0, 0;
  psq_l fp1, 40(src), 0, 0;
  psq_st fp1, 40(dst), 0, 0;
  psq_l fp1, 48(src), 0, 0;
  psq_st fp1, 48(dst), 0, 0;
  psq_l fp1, 56(src), 0, 0;
  psq_st fp1, 56(dst), 0, 0;
  blr;
}
#endif

void C_MTX44Concat(const Mtx44 a, const Mtx44 b, Mtx44 ab) {
  Mtx44 mTmp;
  Mtx44Ptr m;
#line 0x1c6
  ASSERTMSG((a != 0), "MTX44Concat():  NULL Mtx44Ptr 'a'  ");
  ASSERTMSG((b != 0), "MTX44Concat():  NULL Mtx44Ptr 'b'  ");
  ASSERTMSG((ab != 0), "MTX44Concat():  NULL Mtx44Ptr 'ab' ");

  if ((ab == a) || (ab == b)) {
    m = mTmp;
  } else {
    m = ab;
  }

  m[0][0] = a[0][0] * b[0][0] + a[0][1] * b[1][0] + a[0][2] * b[2][0] + a[0][3] * b[3][0];
  m[0][1] = a[0][0] * b[0][1] + a[0][1] * b[1][1] + a[0][2] * b[2][1] + a[0][3] * b[3][1];
  m[0][2] = a[0][0] * b[0][2] + a[0][1] * b[1][2] + a[0][2] * b[2][2] + a[0][3] * b[3][2];
  m[0][3] = a[0][0] * b[0][3] + a[0][1] * b[1][3] + a[0][2] * b[2][3] + a[0][3] * b[3][3];

  m[1][0] = a[1][0] * b[0][0] + a[1][1] * b[1][0] + a[1][2] * b[2][0] + a[1][3] * b[3][0];
  m[1][1] = a[1][0] * b[0][1] + a[1][1] * b[1][1] + a[1][2] * b[2][1] + a[1][3] * b[3][1];
  m[1][2] = a[1][0] * b[0][2] + a[1][1] * b[1][2] + a[1][2] * b[2][2] + a[1][3] * b[3][2];
  m[1][3] = a[1][0] * b[0][3] + a[1][1] * b[1][3] + a[1][2] * b[2][3] + a[1][3] * b[3][3];

  m[2][0] = a[2][0] * b[0][0] + a[2][1] * b[1][0] + a[2][2] * b[2][0] + a[2][3] * b[3][0];
  m[2][1] = a[2][0] * b[0][1] + a[2][1] * b[1][1] + a[2][2] * b[2][1] + a[2][3] * b[3][1];
  m[2][2] = a[2][0] * b[0][2] + a[2][1] * b[1][2] + a[2][2] * b[2][2] + a[2][3] * b[3][2];
  m[2][3] = a[2][0] * b[0][3] + a[2][1] * b[1][3] + a[2][2] * b[2][3] + a[2][3] * b[3][3];

  m[3][0] = a[3][0] * b[0][0] + a[3][1] * b[1][0] + a[3][2] * b[2][0] + a[3][3] * b[3][0];
  m[3][1] = a[3][0] * b[0][1] + a[3][1] * b[1][1] + a[3][2] * b[2][1] + a[3][3] * b[3][1];
  m[3][2] = a[3][0] * b[0][2] + a[3][1] * b[1][2] + a[3][2] * b[2][2] + a[3][3] * b[3][2];
  m[3][3] = a[3][0] * b[0][3] + a[3][1] * b[1][3] + a[3][2] * b[2][3] + a[3][3] * b[3][3];

  if (m == mTmp) {
    C_MTX44Copy(mTmp, ab);
  }
}

#ifdef GEKKO
asm void PSMTX44Concat(const register Mtx44 a, const register Mtx44 b, register Mtx44 ab) {
  nofralloc;
  psq_l fp0, 0(a), 0, 0;
  psq_l fp2, 0(b), 0, 0;
  ps_muls0 fp6, fp2, fp0;
  psq_l fp3, 16(b), 0, 0;
  psq_l fp4, 32(b), 0, 0;
  ps_madds1 fp6, fp3, fp0, fp6;
  psq_l fp1, 8(a), 0, 0;
  psq_l fp5, 48(b), 0, 0;
  ps_madds0 fp6, fp4, fp1, fp6;
  psq_l fp0, 16(a), 0, 0;
  ps_madds1 fp6, fp5, fp1, fp6;
  psq_l fp1, 24(a), 0, 0;
  ps_muls0 fp8, fp2, fp0;
  ps_madds1 fp8, fp3, fp0, fp8;
  psq_l fp0, 32(a), 0, 0;
  ps_madds0 fp8, fp4, fp1, fp8;
  ps_madds1 fp8, fp5, fp1, fp8;
  psq_l fp1, 40(a), 0, 0;
  ps_muls0 fp10, fp2, fp0;
  ps_madds1 fp10, fp3, fp0, fp10;
  psq_l fp0, 48(a), 0, 0;
  ps_madds0 fp10, fp4, fp1, fp10;
  ps_madds1 fp10, fp5, fp1, fp10;
  psq_l fp1, 56(a), 0, 0;
  ps_muls0 fp12, fp2, fp0;
  psq_l fp2, 8(b), 0, 0;
  ps_madds1 fp12, fp3, fp0, fp12;
  psq_l fp0, 0(a), 0, 0;
  ps_madds0 fp12, fp4, fp1, fp12;
  psq_l fp3, 24(b), 0, 0;
  ps_madds1 fp12, fp5, fp1, fp12;
  psq_l fp1, 8(a), 0, 0;
  ps_muls0 fp7, fp2, fp0;
  psq_l fp4, 40(b), 0, 0;
  ps_madds1 fp7, fp3, fp0, fp7;
  psq_l fp5, 56(b), 0, 0;
  ps_madds0 fp7, fp4, fp1, fp7;
  psq_l fp0, 16(a), 0, 0;
  ps_madds1 fp7, fp5, fp1, fp7;
  psq_l fp1, 24(a), 0, 0;
  ps_muls0 fp9, fp2, fp0;
  psq_st fp6, 0(ab), 0, 0;
  ps_madds1 fp9, fp3, fp0, fp9;
  psq_l fp0, 32(a), 0, 0;
  ps_madds0 fp9, fp4, fp1, fp9;
  psq_st fp8, 16(ab), 0, 0;
  ps_madds1 fp9, fp5, fp1, fp9;
  psq_l fp1, 40(a), 0, 0;
  ps_muls0 fp11, fp2, fp0;
  psq_st fp10, 32(ab), 0, 0;
  ps_madds1 fp11, fp3, fp0, fp11;
  psq_l fp0, 48(a), 0, 0;
  ps_madds0 fp11, fp4, fp1, fp11;
  psq_st fp12, 48(ab), 0, 0;
  ps_madds1 fp11, fp5, fp1, fp11;
  psq_l fp1, 56(a), 0, 0;
  ps_muls0 fp13, fp2, fp0;
  psq_st fp7, 8(ab), 0, 0;
  ps_madds1 fp13, fp3, fp0, fp13;
  psq_st fp9, 24(ab), 0, 0;
  ps_madds0 fp13, fp4, fp1, fp13;
  psq_st fp11, 40(ab), 0, 0;
  ps_madds1 fp13, fp5, fp1, fp13;
  psq_st fp13, 56(ab), 0, 0;
  blr
}
#endif

void C_MTX44Transpose(const Mtx44 src, Mtx44 xPose) {
  Mtx44 mTmp;
  Mtx44Ptr m;

#line 0x27d
  ASSERTMSG((src != 0), "MTX44Transpose():  NULL Mtx44Ptr 'src' ");
  ASSERTMSG((xPose != 0), "MTX44Transpose():  NULL Mtx44Ptr 'xPose' ");

  if (src == xPose) {
    m = mTmp;
  } else {
    m = xPose;
  }

  m[0][0] = src[0][0];
  m[0][1] = src[1][0];
  m[0][2] = src[2][0];
  m[0][3] = src[3][0];
  m[1][0] = src[0][1];
  m[1][1] = src[1][1];
  m[1][2] = src[2][1];
  m[1][3] = src[3][1];
  m[2][0] = src[0][2];
  m[2][1] = src[1][2];
  m[2][2] = src[2][2];
  m[2][3] = src[3][2];
  m[3][0] = src[0][3];
  m[3][1] = src[1][3];
  m[3][2] = src[2][3];
  m[3][3] = src[3][3];

  if (m == mTmp) {
    MTX44Copy(mTmp, xPose);
  }
}

#ifdef GEKKO
asm void PSMTX44Transpose(const register Mtx44 src, register Mtx44 xPose) {
  nofralloc;
  psq_l fp0, 0(src), 0, 0;
  psq_l fp1, 16(src), 0, 0;
  ps_merge00 fp4, fp0, fp1;
  psq_l fp2, 8(src), 0, 0;
  psq_st fp4, 0(xPose), 0, 0;
  ps_merge11 fp5, fp0, fp1;
  psq_l fp3, 24(src), 0, 0;
  psq_st fp5, 16(xPose), 0, 0;
  ps_merge00 fp4, fp2, fp3;
  psq_l fp0, 32(src), 0, 0;
  psq_st fp4, 32(xPose), 0, 0;
  ps_merge11 fp5, fp2, fp3;
  psq_l fp1, 48(src), 0, 0;
  psq_st fp5, 48(xPose), 0, 0;
  ps_merge00 fp4, fp0, fp1;
  psq_l fp2, 40(src), 0, 0;
  psq_st fp4, 8(xPose), 0, 0;
  ps_merge11 fp5, fp0, fp1;
  psq_l fp3, 56(src), 0, 0;
  psq_st fp5, 24(xPose), 0, 0;
  ps_merge00 fp4, fp2, fp3;
  psq_st fp4, 40(xPose), 0, 0;
  ps_merge11 fp5, fp2, fp3;
  psq_st fp5, 56(xPose), 0, 0;
  blr;
}
#endif

#define SWAP(a, b)                                                                                 \
  {                                                                                                \
    f32 tmp;                                                                                       \
    tmp = (a);                                                                                     \
    (a) = (b);                                                                                     \
    (b) = tmp;                                                                                     \
  }

u32 C_MTX44Inverse(const Mtx44 src, Mtx44 inv) {
  Mtx44 gjm;
  s32 i, j, k;
  f32 w;
#line 0x2de
  ASSERTMSG((src != 0), "MTX44Inverse():  NULL Mtx44Ptr 'src' ");
  ASSERTMSG((inv != 0), "MTX44Inverse():  NULL Mtx44Ptr 'inv' ");

  MTX44Copy(src, gjm);
  MTX44Identity(inv);

  for (i = 0; i < 4; ++i) {
    f32 max = 0.0f;
    s32 swp = i;

    for (k = i; k < 4; k++) {
      f32 ftmp;
      ftmp = fabsf(gjm[k][i]);
      if (ftmp > max) {
        max = ftmp;
        swp = k;
      }
    }
    if (max == 0.0f) {
      return 0;
    }

    if (swp != i) {
      for (k = 0; k < 4; k++) {
        SWAP(gjm[i][k], gjm[swp][k]);
        SWAP(inv[i][k], inv[swp][k]);
      }
    }

    w = 1.0F / gjm[i][i];
    for (j = 0; j < 4; ++j) {
      gjm[i][j] *= w;
      inv[i][j] *= w;
    }

    for (k = 0; k < 4; ++k) {
      if (k == i)
        continue;

      w = gjm[k][i];
      for (j = 0; j < 4; ++j) {
        gjm[k][j] -= gjm[i][j] * w;
        inv[k][j] -= inv[i][j] * w;
      }
    }
  }

  return 1;
}

#undef SWAPF
#undef NUM
void C_MTX44Trans(Mtx44 m, f32 xT, f32 yT, f32 zT) {
#line 0x343
  ASSERTMSG((m != 0), "MTX44Trans():  NULL Mtx44Ptr 'm' ");

  m[0][0] = 1.0f;
  m[0][1] = 0.0f;
  m[0][2] = 0.0f;
  m[0][3] = xT;
  m[1][0] = 0.0f;
  m[1][1] = 1.0f;
  m[1][2] = 0.0f;
  m[1][3] = yT;
  m[2][0] = 0.0f;
  m[2][1] = 0.0f;
  m[2][2] = 1.0f;
  m[2][3] = zT;
  m[3][0] = 0.0f;
  m[3][1] = 0.0f;
  m[3][2] = 0.0f;
  m[3][3] = 1.0f;
}

#ifdef GEKKO
void PSMTX44Trans(register Mtx44 m, register f32 xT, register f32 yT, register f32 zT) {
  register f32 c_zero = 0.0f;
  register f32 c_one = 1.0f;
  register f32 c_01;

  asm
  {
        stfs        xT,     12(m); 
        stfs        yT,     28(m); 
        ps_merge00  c_01,   c_zero, c_one; 
        stfs        zT,     44(m); 
        psq_st      c_one,   0(m), 1, 0;
        psq_st      c_zero,  4(m), 0, 0;
        psq_st      c_01,   16(m), 0, 0;
        psq_st      c_zero, 24(m), 1, 0;
        psq_st      c_zero, 32(m), 0, 0;
        psq_st      c_one,  40(m), 1, 0;
        psq_st      c_zero, 48(m), 0, 0;
        psq_st      c_01,   56(m), 0, 0;
  }
}
#endif

void C_MTX44TransApply(const Mtx44 src, Mtx44 dst, f32 xT, f32 yT, f32 zT) {
#line 0x383
  ASSERTMSG((src != 0), "MTX44TransApply(): NULL Mtx44Ptr 'src' ");
  ASSERTMSG((dst != 0), "MTX44TransApply(): NULL Mtx44Ptr 'dst' ");

  if (src != dst) {
    dst[0][0] = src[0][0];
    dst[0][1] = src[0][1];
    dst[0][2] = src[0][2];
    dst[1][0] = src[1][0];
    dst[1][1] = src[1][1];
    dst[1][2] = src[1][2];
    dst[2][0] = src[2][0];
    dst[2][1] = src[2][1];
    dst[2][2] = src[2][2];
    dst[3][0] = src[3][0];
    dst[3][1] = src[3][1];
    dst[3][2] = src[3][2];
    dst[3][3] = src[3][3];
  }

  dst[0][3] = src[0][3] + xT;
  dst[1][3] = src[1][3] + yT;
  dst[2][3] = src[2][3] + zT;
}

#ifdef GEKKO
asm void PSMTX44TransApply(const register Mtx44 src, register Mtx44 dst, register f32 xT,
                           register f32 yT, register f32 zT) {
  nofralloc;
  psq_l fp4, 0(src), 0, 0;
  frsp xT, xT;
  psq_l fp5, 8(src), 0, 0;
  frsp yT, yT;
  psq_l fp6, 16(src), 0, 0;
  frsp zT, zT;
  psq_l fp7, 24(src), 0, 0;
  psq_st fp4, 0(dst), 0, 0;
  ps_sum1 fp5, xT, fp5, fp5;
  psq_l fp4, 40(src), 0, 0;
  psq_st fp6, 16(dst), 0, 0;
  ps_sum1 fp7, yT, fp7, fp7;
  psq_l fp8, 32(src), 0, 0;
  psq_st fp5, 8(dst), 0, 0;
  ps_sum1 fp4, zT, fp4, fp4;
  psq_st fp7, 24(dst), 0, 0;
  psq_st fp8, 32(dst), 0, 0;
  psq_l fp5, 48(src), 0, 0;
  psq_l fp6, 56(src), 0, 0;
  psq_st fp4, 40(dst), 0, 0;
  psq_st fp5, 48(dst), 0, 0;
  psq_st fp6, 56(dst), 0, 0;
  blr;
}
#endif // GEKKO

void C_MTX44Scale(Mtx44 m, f32 xS, f32 yS, f32 zS) {
#line 0x3d0
  ASSERTMSG((m != 0), "MTX44Scale():  NULL Mtx44Ptr 'm' ");

  m[0][0] = xS;
  m[0][1] = 0.0f;
  m[0][2] = 0.0f;
  m[0][3] = 0.0f;
  m[1][0] = 0.0f;
  m[1][1] = yS;
  m[1][2] = 0.0f;
  m[1][3] = 0.0f;
  m[2][0] = 0.0f;
  m[2][1] = 0.0f;
  m[2][2] = zS;
  m[2][3] = 0.0f;
  m[3][0] = 0.0f;
  m[3][1] = 0.0f;
  m[3][2] = 0.0f;
  m[3][3] = 1.0f;
}

#ifdef GEKKO
void PSMTX44Scale(register Mtx44 m, register f32 xS, register f32 yS, register f32 zS) {
  register f32 c_zero = 0.0F;
  register f32 c_one = 1.0F;

  asm
  {
        stfs        xS,      0(m);
        psq_st      c_zero,  4(m), 0, 0;
        psq_st      c_zero, 12(m), 0, 0;
        stfs        yS,     20(m);
        psq_st      c_zero, 24(m), 0, 0;
        psq_st      c_zero, 32(m), 0, 0;
        stfs        zS,     40(m); 
        psq_st      c_zero, 44(m), 0, 0;
        psq_st      c_zero, 52(m), 0, 0;
        stfs        c_one,  60(m);
  }
}
#endif // GEKKO

void C_MTX44ScaleApply(const Mtx44 src, Mtx44 dst, f32 xS, f32 yS, f32 zS) {
#line 0x40c
  ASSERTMSG((src != 0), "MTX44ScaleApply(): NULL Mtx44Ptr 'src' ");
  ASSERTMSG((dst != 0), "MTX44ScaleApply(): NULL Mtx44Ptr 'dst' ");

  dst[0][0] = src[0][0] * xS;
  dst[0][1] = src[0][1] * xS;
  dst[0][2] = src[0][2] * xS;
  dst[0][3] = src[0][3] * xS;

  dst[1][0] = src[1][0] * yS;
  dst[1][1] = src[1][1] * yS;
  dst[1][2] = src[1][2] * yS;
  dst[1][3] = src[1][3] * yS;

  dst[2][0] = src[2][0] * zS;
  dst[2][1] = src[2][1] * zS;
  dst[2][2] = src[2][2] * zS;
  dst[2][3] = src[2][3] * zS;

  dst[3][0] = src[3][0];
  dst[3][1] = src[3][1];
  dst[3][2] = src[3][2];
  dst[3][3] = src[3][3];
}

#ifdef GEKKO
asm void PSMTX44ScaleApply(const register Mtx44 src, register Mtx44 dst, register f32 xS,
                           register f32 yS, register f32 zS) {
  nofralloc;
  psq_l fp4, 0(src), 0, 0;
  frsp xS, xS;
  psq_l fp5, 8(src), 0, 0;
  frsp yS, yS;
  psq_l fp6, 16(src), 0, 0;
  ps_muls0 fp4, fp4, xS;
  psq_l fp7, 24(src), 0, 0;
  ps_muls0 fp5, fp5, xS;
  psq_l fp8, 32(src), 0, 0;
  frsp zS, zS;
  psq_st fp4, 0(dst), 0, 0;
  ps_muls0 fp6, fp6, yS;
  psq_l fp9, 40(src), 0, 0;
  psq_st fp5, 8(dst), 0, 0;
  ps_muls0 fp7, fp7, yS;
  psq_l fp10, 48(src), 0, 0;
  psq_st fp6, 16(dst), 0, 0;
  ps_muls0 fp8, fp8, zS;
  psq_l fp11, 56(src), 0, 0;
  psq_st fp7, 24(dst), 0, 0;
  ps_muls0 fp9, fp9, zS;
  psq_st fp8, 32(dst), 0, 0;
  psq_st fp9, 40(dst), 0, 0;
  psq_st fp10, 48(dst), 0, 0;
  psq_st fp11, 56(dst), 0, 0;
  blr;
}
#endif // GEKKO

void C_MTX44RotRad(Mtx44 m, char axis, f32 rad) {
  f32 sinA, cosA;
#line 0x45e
  ASSERTMSG((m != 0), "MTX44RotRad():  NULL Mtx44Ptr 'm' ");

  sinA = sinf(rad);
  cosA = cosf(rad);

  C_MTX44RotTrig(m, axis, sinA, cosA);
}

#ifdef GEKKO
void PSMTX44RotRad(Mtx44 m, char axis, f32 rad) {
  f32 sinA, cosA;

  sinA = sinf(rad);
  cosA = cosf(rad);

  PSMTX44RotTrig(m, axis, sinA, cosA);
}
#endif

void C_MTX44RotTrig(Mtx44 m, char axis, f32 sinA, f32 cosA) {
#line 0x48b
  ASSERTMSG((m != 0), "MTX44RotTrig():  NULL Mtx44Ptr 'm' ");

  axis |= 0x20;
  switch (axis) {

  case 'x':
    m[0][0] = 1.0f;
    m[0][1] = 0.0f;
    m[0][2] = 0.0f;
    m[0][3] = 0.0f;
    m[1][0] = 0.0f;
    m[1][1] = cosA;
    m[1][2] = -sinA;
    m[1][3] = 0.0f;
    m[2][0] = 0.0f;
    m[2][1] = sinA;
    m[2][2] = cosA;
    m[2][3] = 0.0f;
    m[3][0] = 0.0f;
    m[3][1] = 0.0f;
    m[3][2] = 0.0f;
    m[3][3] = 1.0f;
    break;

  case 'y':
    m[0][0] = cosA;
    m[0][1] = 0.0f;
    m[0][2] = sinA;
    m[0][3] = 0.0f;
    m[1][0] = 0.0f;
    m[1][1] = 1.0f;
    m[1][2] = 0.0f;
    m[1][3] = 0.0f;
    m[2][0] = -sinA;
    m[2][1] = 0.0f;
    m[2][2] = cosA;
    m[2][3] = 0.0f;
    m[3][0] = 0.0f;
    m[3][1] = 0.0f;
    m[3][2] = 0.0f;
    m[3][3] = 1.0f;
    break;

  case 'z':
    m[0][0] = cosA;
    m[0][1] = -sinA;
    m[0][2] = 0.0f;
    m[0][3] = 0.0f;
    m[1][0] = sinA;
    m[1][1] = cosA;
    m[1][2] = 0.0f;
    m[1][3] = 0.0f;
    m[2][0] = 0.0f;
    m[2][1] = 0.0f;
    m[2][2] = 1.0f;
    m[2][3] = 0.0f;
    m[3][0] = 0.0f;
    m[3][1] = 0.0f;
    m[3][2] = 0.0f;
    m[3][3] = 1.0f;
    break;

  default:
#line 0x4a7
    ASSERTMSG(0, "MTX44RotTrig():  invalid 'axis' value ");
    break;
  }
}

#ifdef GEKKO
void PSMTX44RotTrig(register Mtx44 m, register char axis, register f32 sinA, register f32 cosA) {
  register f32 ftmp0, ftmp1, ftmp2, ftmp3, ftmp4;
  register f32 c_zero, c_one;

  c_zero = 0.0F;
  c_one = 1.0F;

  asm
  {
        frsp        sinA, sinA
        ori         axis, axis, 0x20
        frsp        cosA, cosA 
        cmplwi      axis, 'x'; // if 'x'
        beq         _x;
        cmplwi      axis, 'y'; // if 'y'
        beq         _y;
        cmplwi      axis, 'z'; // if 'z'
        beq         _z;
        b           _break;

    _x:
        psq_st      c_one,   0(m), 1, 0; 
        psq_st      c_zero,  4(m), 0, 0; 
        ps_neg      ftmp0, sinA;
        psq_st      c_zero, 12(m), 0, 0;
        ps_merge00  ftmp1, sinA, cosA;
        psq_st      c_zero, 28(m), 0, 0;
        ps_merge00  ftmp0, cosA, ftmp0; 
        psq_st      c_zero, 44(m), 0, 0;
        psq_st      c_zero, 52(m), 0, 0;
        psq_st      ftmp1,  36(m), 0, 0;
        psq_st      ftmp0,  20(m), 0, 0;
        psq_st      c_one,  60(m), 1, 0;
        b           _break;

    _y:
        ps_merge00  ftmp1, cosA, c_zero;
        psq_st      c_zero, 48(m), 0, 0;
        ps_neg      ftmp0, sinA; 
        psq_st      c_zero, 24(m), 0, 0;
        ps_merge00  ftmp3, c_zero, c_one;
        psq_st      ftmp1,   0(m), 0, 0; 
        ps_merge00  ftmp4, ftmp0, c_zero;
        ps_merge00  ftmp2, sinA,  c_zero;
        psq_st      ftmp3,  16(m), 0, 0; 
        psq_st      ftmp2,   8(m), 0, 0; 
        psq_st      ftmp4,  32(m), 0, 0; 
        psq_st      ftmp1,  40(m), 0, 0; 
        psq_st      ftmp3,  56(m), 0, 0; 
        b           _break;
    _z:
        psq_st      c_zero,  8(m), 0, 0;
        ps_neg      ftmp0, sinA;
        psq_st      c_zero, 24(m), 0, 0;
        ps_merge00  ftmp1, sinA, cosA; 
        psq_st      c_zero, 32(m), 0, 0;
        ps_merge00  ftmp2, c_one, c_zero;
        psq_st      c_zero, 48(m), 0, 0; 
        ps_merge00  ftmp3, c_zero, c_one;
        psq_st      ftmp1,  16(m), 0, 0;
        ps_merge00  ftmp4, cosA, ftmp0; 
        psq_st      ftmp2,  40(m), 0, 0; 
        psq_st      ftmp3,  56(m), 0, 0; 
        psq_st      ftmp4,   0(m), 0, 0; 

    _break:

  }
}
#endif // GEKKO

void C_MTX44RotAxisRad(Mtx44 m, const Vec* axis, f32 rad) {
  Vec vN;
  f32 s, c;
  f32 t;
  f32 x, y, z;
  f32 xSq, ySq, zSq;

#line 0x514
  ASSERTMSG((m != 0), "MTX44RotAxisRad():  NULL Mtx44Ptr 'm' ");
  ASSERTMSG((axis != 0), "MTX44RotAxisRad():  NULL VecPtr 'axis' ");

  s = sinf(rad);
  c = cosf(rad);
  t = 1.0f - c;

  C_VECNormalize(axis, &vN);

  x = vN.x;
  y = vN.y;
  z = vN.z;

  xSq = x * x;
  ySq = y * y;
  zSq = z * z;

  m[0][0] = (t * xSq) + (c);
  m[0][1] = (t * x * y) - (s * z);
  m[0][2] = (t * x * z) + (s * y);
  m[0][3] = 0.0f;

  m[1][0] = (t * x * y) + (s * z);
  m[1][1] = (t * ySq) + (c);
  m[1][2] = (t * y * z) - (s * x);
  m[1][3] = 0.0f;

  m[2][0] = (t * x * z) - (s * y);
  m[2][1] = (t * y * z) + (s * x);
  m[2][2] = (t * zSq) + (c);
  m[2][3] = 0.0f;

  m[3][0] = 0.0f;
  m[3][1] = 0.0f;
  m[3][2] = 0.0f;
  m[3][3] = 1.0f;
}

#ifdef GEKKO

static void __PSMTX44RotAxisRadInternal(register Mtx44 m, const register Vec* axis, register f32 sT,
                                        register f32 cT) {
  register f32 tT, fc0;
  register f32 tmp0, tmp1, tmp2, tmp3, tmp4;
  register f32 tmp5, tmp6, tmp7, tmp8, tmp9;

  tmp9 = 0.5F;
  tmp8 = 3.0F;
  asm {
    frsp cT, cT;
    psq_l tmp0, 0(axis), 0, 0;
    frsp sT, sT;
    lfs tmp1, 8(axis);
    ps_mul tmp2, tmp0, tmp0;
    fadds tmp7, tmp9, tmp9;
    ps_madd tmp3, tmp1, tmp1, tmp2;
    fsubs fc0, tmp9, tmp9;
    ps_sum0 tmp4, tmp3, tmp1, tmp2;
    fsubs tT, tmp7, cT;
    frsqrte tmp5, tmp4;
    ps_merge00 tmp7, fc0, tmp7;
    fmuls tmp2, tmp5, tmp5;
    fmuls tmp3, tmp5, tmp9;
    psq_st fc0, 48(m), 0, 0;
    fnmsubs tmp2, tmp2, tmp4, tmp8;
    fmuls tmp5, tmp2, tmp3;
    psq_st tmp7, 56(m), 0, 0;
    ps_merge00 cT, cT, cT;
    ps_muls0 tmp0, tmp0, tmp5;
    ps_muls0 tmp1, tmp1, tmp5;
    ps_muls0 tmp4, tmp0, tT;
    ps_muls0 tmp9, tmp0, sT;
    ps_muls0 tmp5, tmp1, tT;
    ps_muls1 tmp3, tmp4, tmp0;
    ps_muls0 tmp2, tmp4, tmp0;
    ps_muls0 tmp4, tmp4, tmp1;
    fnmsubs tmp6, tmp1, sT, tmp3;
    fmadds tmp7, tmp1, sT, tmp3;
    ps_neg tmp0, tmp9;
    ps_sum0 tmp8, tmp4, fc0, tmp9;
    ps_sum0 tmp2, tmp2, tmp6, cT;
    ps_sum1 tmp3, cT, tmp7, tmp3;
    ps_sum0 tmp6, tmp0, fc0, tmp4;
    psq_st tmp8, 8(m), 0, 0;
    ps_sum0 tmp0, tmp4, tmp4, tmp0;
    psq_st tmp2, 0(m), 0, 0;
    ps_muls0 tmp5, tmp5, tmp1;
    psq_st tmp3, 16(m), 0, 0;
    ps_sum1 tmp4, tmp9, tmp0, tmp4;
    psq_st tmp6, 24(m), 0, 0;
    ps_sum0 tmp5, tmp5, fc0, cT;
    psq_st tmp4, 32(m), 0, 0;
    psq_st tmp5, 40(m), 0, 0;
  }
}

void PSMTX44RotAxisRad(Mtx44 m, const Vec* axis, f32 rad) {
  f32 sinT, cosT;

  sinT = sinf(rad);
  cosT = cosf(rad);

  __PSMTX44RotAxisRadInternal(m, axis, sinT, cosT);
}

#endif // GEKKO
