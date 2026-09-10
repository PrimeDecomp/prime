#ifndef _BYTEORDER
#define _BYTEORDER

#if defined(__BYTE_ORDER__) && defined(__ORDER_BIG_ENDIAN__) && defined(__ORDER_LITTLE_ENDIAN__)
#if __BYTE_ORDER__ == __ORDER_BIG_ENDIAN__
#define TARGET_BIG_ENDIAN 1
#elif __BYTE_ORDER__ == __ORDER_LITTLE_ENDIAN__
#define TARGET_BIG_ENDIAN 0
#else
#error Unsupported target byte order
#endif
#elif defined(__BIG_ENDIAN__) && __BIG_ENDIAN__
// CodeWarrior exposes this instead of __BYTE_ORDER__.
#define TARGET_BIG_ENDIAN 1
#elif defined(__PPCGEKKO__)
// Older SDK compilers expose only the Gekko target, which is big-endian.
#define TARGET_BIG_ENDIAN 1
#elif (defined(__LITTLE_ENDIAN__) && __LITTLE_ENDIAN__) || defined(_WIN32)
#define TARGET_BIG_ENDIAN 0
#else
#error Target byte order is unknown
#endif

#define TARGET_LITTLE_ENDIAN (!TARGET_BIG_ENDIAN)

#endif // _BYTEORDER
