#ifndef __CCAST_HPP__
#define __CCAST_HPP__

#include "types.h"
#include "Dolphin/os/OSFastCast.h"

namespace CCast {
inline u8 ToUint8(register f32 in) {
  u8 a;
  register u8* ptr = &a;
  register u8 r;

  asm {
            psq_st  in, 0(ptr), 1, OS_FASTCAST_U8
            lbz     r, 0(ptr)
  }
  return r;
}

inline f32 ToReal32(register const u8& in) {
  register f32 r;
  asm {
            psq_l r, 0(in), 1, 2
  }
  return r;
}
} // namespace CCast

#endif
