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

inline float StoF(register const short& in) {
  register float r;
  asm {
    psq_l r, 0(in), 1, OS_FASTCAST_S16
  }
  return r;
}

#else
namespace detail {
template < typename T >
inline T Quantize(float value, int minimum, int maximum) {
  if (!(value >= minimum)) {
    return static_cast< T >(minimum);
  }
  if (value > maximum) {
    return static_cast< T >(maximum);
  }
  return static_cast< T >(value);
}
} // namespace detail

inline uchar ToUint8(float in) { return detail::Quantize< uchar >(in, 0, 255); }
inline char ToInt8(float in) { return detail::Quantize< signed char >(in, -128, 127); }
inline float ToReal32(uchar in) { return static_cast< float >(in); }
inline short FtoS(float in) { return detail::Quantize< short >(in, -32768, 32767); }
inline ushort FtoUS(float in) { return detail::Quantize< ushort >(in, 0, 65535); }
inline float StoF(const short& in) { return static_cast< float >(in); }
#endif

inline uchar ToUint8(int c) { return static_cast< uchar >(c); }
#ifdef __MWERKS__
inline int FtoL(float in) { return static_cast< int >(in); }
#else
inline int FtoL(float in) {
  // Match fctiwz overflow and NaN results before converting to an integer.
  if (!(in >= -2147483648.0)) {
    return -2147483647 - 1;
  }
  if (in >= 2147483648.0) {
    return 2147483647;
  }
  return static_cast< int >(in);
}
#endif
inline uint ToUint32(float in) { return static_cast< uint >(in); }
inline uint ToUint32(uint in) { return in; }
inline float ToReal32(uint in) { return static_cast< float >(in); }
inline float ToReal32(const short& in) { return StoF(in); }
inline float LtoF(int in) { return static_cast< float >(in); }
inline float ToReal32(int in) { return static_cast< float >(in); }
inline float ToReal32(double in) { return static_cast< float >(in); }
inline int ToInt32(float in) { return static_cast< int >(in); }
inline int ToInt(float in) { return ToInt32(in); }
inline int ToInt32(double in) { return static_cast< int >(in); }
inline float QtoF(long long in) { return static_cast< float >(in); }
inline unsigned short ToUint16(short in) { return static_cast< unsigned short >(in); }
inline char ToChar(int c) { return ToUint8(c); }
inline short ToInt16(const s64 v) { return v % 4096; }

inline short ToInt16(int in) { return in; }
} // namespace CCast

#endif // _CCAST
