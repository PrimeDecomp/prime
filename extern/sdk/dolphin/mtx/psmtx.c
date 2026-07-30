#include "dolphin/mtx.h"

#ifdef GEKKO

asm void PSMTXReorder(const register Mtx src, register ROMtx dest) {
  nofralloc;
  psq_l f0, 0(src), 0, 0;
  psq_l f2, 16(src), 0, 0;
  psq_l f4, 32(src), 0, 0;
  psq_l f1, 8(src), 0, 0;
  ps_merge00 f6, f0, f2;
  psq_l f3, 24(src), 0, 0;
  ps_merge01 f12, f4, f0;
  psq_l f5, 40(src), 0, 0;
  ps_merge11 f7, f2, f4;
  psq_st f6, 0(dest), 0, 0;
  ps_merge00 f8, f1, f3;
  psq_st f12, 8(dest), 0, 0;
  ps_merge01 f9, f5, f1;
  psq_st f7, 16(dest), 0, 0;
  ps_merge11 f10, f3, f5;
  psq_st f8, 24(dest), 0, 0;
  psq_st f9, 32(dest), 0, 0;
  psq_st f10, 40(dest), 0, 0;
  blr;
}


#endif
