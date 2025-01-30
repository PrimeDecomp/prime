#ifndef _DOLPHIN_TYPES
#define _DOLPHIN_TYPES

#include <stdint.h>

#ifdef TARGET_PC
typedef int8_t s8;
typedef int16_t s16;
typedef int32_t s32;
typedef int64_t s64;
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef signed char s8;
typedef signed short int s16;
typedef signed long s32;
typedef signed long long int s64;
typedef unsigned char u8;
typedef unsigned short int u16;
typedef unsigned long u32;
typedef unsigned long long int u64;
#endif

typedef volatile u8 vu8;
typedef volatile u16 vu16;
typedef volatile u32 vu32;
typedef volatile u64 vu64;

typedef volatile s8 vs8;
typedef volatile s16 vs16;
typedef volatile s32 vs32;
typedef volatile s64 vs64;

typedef float f32;
typedef double f64;

typedef volatile f32 vf32;
typedef volatile f64 vf64;

#if defined(TARGET_PC) && !defined(_WIN32)
#include <stdbool.h>
typedef bool BOOL;
#ifndef FALSE
#define FALSE false
#endif
#ifndef TRUE
#define TRUE true
#endif
#else
typedef int BOOL;
#ifndef FALSE
#define FALSE 0
#endif
#ifndef TRUE
#define TRUE 1
#endif
#endif

#ifdef TARGET_PC
#include <stddef.h>
#else
#ifndef NULL
#define NULL 0
#endif
#endif

#if !defined(__cplusplus) || __cplusplus < 201103L
// Define nullptr as NULL
#ifndef nullptr
#define nullptr NULL
#endif
#endif // !defined(__cplusplus) || __cplusplus < 201103L

#if defined(__cplusplus) && __cplusplus < 201103L
#if defined(__clang__)
// Allow override/final in < C++11 mode with clangd
#pragma clang diagnostic ignored "-Wc++11-extensions"
#else
// Define override as nothing
#ifndef override
#define override
#endif
// Define final as nothing
#ifndef final
#define final
#endif
#endif // defined(__clang__)
#endif // defined(__cplusplus) && __cplusplus < 201103L

#ifndef ATTRIBUTE_ALIGN
#if defined(__MWERKS__) || defined(__GNUC__)
#define ATTRIBUTE_ALIGN(num) __attribute__((aligned(num)))
#elif defined(_MSC_VER)
#define ATTRIBUTE_ALIGN(num)
#else
#error unknown compiler
#endif
#endif

#if (defined(__cplusplus) && __cplusplus >= 201103L) || defined(__clang__)
// Use C++11 auto keyword
#define AUTO(name, val) auto name = val
#else
// Use __typeof__ extension
#define AUTO(name, val) __typeof__(val) name = val
#endif

#endif // _DOLPHIN_TYPES
