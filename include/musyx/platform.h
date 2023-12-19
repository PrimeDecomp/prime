#ifndef _MUSYX_PLATFORM
#define _MUSYX_PLATFORM


#define MUSY_TARGET_PC 0
#define MUSY_TARGET_DOLPHIN 1

#ifndef MUSY_TARGET
#define MUSY_TARGET MUSY_TARGET_PC
#endif

#ifndef ATTRIBUTE_ALIGN
#if defined(__MWERKS__) || defined(__GNUC__)
#define ATTRIBUTE_ALIGN(num) __attribute__((aligned(num)))
#elif defined(_MSC_VER)
#define ATTRIBUTE_ALIGN(num)
#else
#error unknown compiler
#endif
#endif

#if MUSY_TARGET == MUSY_TARGET_PC
#ifndef MUSY_CACHED_TO_UNCACHED_ADDR
#define MUSY_CACHED_TO_UNCACHED_ADDR(addr) addr
#endif
#elif MUSY_TARGET == MUSY_TARGET_DOLPHIN
#ifndef MUSY_CACHED_TO_UNCACHED_ADDR
#define MUSY_CACHED_TO_UNCACHED_ADDR(addr) OSCachedToUncached(addr)
#endif
#endif
#endif
