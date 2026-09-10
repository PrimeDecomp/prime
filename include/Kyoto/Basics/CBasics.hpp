#ifndef _CBASICS
#define _CBASICS

#include "types.h"

namespace CBasics {
bool Init();
char* Stringize(const char* fmt, ...);

#ifndef __MWERKS__
namespace detail {
template < typename T >
inline T SwapBytes(T value) {
  const ushort endian = 1;
  if (*reinterpret_cast< const uchar* >(&endian) != 0) {
    uchar* bytes = reinterpret_cast< uchar* >(&value);
    for (uint i = 0; i < sizeof(T) / 2; ++i) {
      const uchar byte = bytes[i];
      bytes[i] = bytes[sizeof(T) - 1 - i];
      bytes[sizeof(T) - 1 - i] = byte;
    }
  }
  return value;
}
} // namespace detail
#endif

// Convert between serialized big-endian values and host byte order.
inline const int SwapBytes(int x) {
#ifdef __MWERKS__
  return x;
#else
  return detail::SwapBytes(x);
#endif
}

inline const uint SwapBytes(uint x) {
#ifdef __MWERKS__
  return x;
#else
  return detail::SwapBytes(x);
#endif
}

inline const float SwapBytes(float x) {
#ifdef __MWERKS__
  return x;
#else
  return detail::SwapBytes(x);
#endif
}

inline const short SwapBytes(const short x) {
#ifdef __MWERKS__
  return x;
#else
  return detail::SwapBytes(x);
#endif
}

inline const ushort SwapBytes(const ushort x) {
#ifdef __MWERKS__
  return x;
#else
  return detail::SwapBytes(x);
#endif
}

inline const u64 SwapBytes(u64 x) {
#ifdef __MWERKS__
  return x;
#else
  return detail::SwapBytes(x);
#endif
}

} // namespace CBasics

#endif // _CBASICS
