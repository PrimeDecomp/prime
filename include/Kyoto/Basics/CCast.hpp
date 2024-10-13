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

inline char ToInt8(register float in) {
  char a;
  register char* ptr = &a;

  asm {
            psq_st  in, 0(ptr), 1, OS_FASTCAST_S8
  }
  return *ptr;
}

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

#else
inline uchar ToUint8(float in) { return static_cast< uchar >(in); }
inline char ToInt8(float in) { return static_cast< char >(in); }
inline float ToReal32(uchar in) { return static_cast< float >(in); }
inline short FtoS(float in) { return static_cast< short >(in); }
inline ushort FtoUS(float in) { return static_cast< ushort >(in); }
#endif

inline uchar ToUint8(int c) { return static_cast< uchar >(c); }
inline int FtoL(float in) { return static_cast< int >(in); }
inline float LtoF(int in) { return static_cast< float >(in); }
inline float ToReal32(int in) { return static_cast< float >(in); }
inline int ToInt32(float in) { return static_cast< int >(in); }
inline unsigned short ToUint16(short in) { return static_cast<unsigned short >(in); }
inline char ToChar(int c) { return ToUint8(c); }
} // namespace CCast

#endif // _CCAST
