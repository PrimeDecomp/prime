#ifndef _CCAST
#define _CCAST

#include "types.h"

#include "dolphin/os/OSFastCast.h"

namespace CCast {
#ifdef __MWERKS__
inline uchar ToUint8(register float in) {
  uchar a;
  register uchar* ptr = &a;

  asm {
            psq_st  in, 0(ptr), 1, OS_FASTCAST_U8
  }
  return *ptr;
}

inline uchar ToUint8(int c) { return static_cast<uchar>(c); }

inline float ToReal32(register const uchar& in) {
  register float r;
  asm {
            psq_l r, 0(in), 1, 2
  }
  return r;
}

inline short FtoS(register float in) {
  short a;
  register short* ptr = &a;

  asm {
            psq_st  in, 0(ptr), 1, OS_FASTCAST_S16
  }
  return *ptr;
}

inline ushort FtoUS(register float in) {
  ushort a;
  register ushort* ptr = &a;

  asm {
            psq_st  in, 0(ptr), 1, OS_FASTCAST_U16
  }
  return *ptr;
}

inline int FtoL(float in) { return static_cast< int >(in); }
inline float LtoF(int in) { return static_cast< float >(in); }

#else
inline uchar ToUint8(float in) { return static_cast< uchar >(in); }
inline uchar ToUint8(int c) { return static_cast<uchar>(c); }
inline float ToReal32(uchar in) { return static_cast< float >(in); }
inline short FtoS(float in) { return static_cast< short >(in); }
inline ushort FtoUS(float in) { return static_cast< ushort >(in); }
inline int FtoL(float in) { return static_cast< int >(in); }
inline float LtoF(int in) { return static_cast< float >(in); }
#endif

inline int ToInt32(float in) { return static_cast< int >(in); }
inline char ToChar(int c) { return ToUint8(c)  ; }
} // namespace CCast

#endif // _CCAST
