#ifndef __CCAST_HPP__
#define __CCAST_HPP__

#include "types.h"

#include "dolphin/os/OSFastCast.h"

namespace CCast {
#ifdef __MWERKS__
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

inline s16 FtoS(register f32 in) {
  s16 a;
  register s16* ptr = &a;

  asm {
            psq_st  in, 0(ptr), 1, OS_FASTCAST_S16
  }
  return *ptr;
}
#else
inline u8 ToUint8(f32 in) { return static_cast< u8 >(in); }
inline f32 ToReal32(u8 in) { return static_cast< f32 >(in); }
inline s16 FtoS(f32 in) { return static_cast< s16 >(in); }
#endif
} // namespace CCast

#endif
