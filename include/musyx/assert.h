#ifndef _ASSERT
#define _ASSERT
#include "musyx/version.h"
#include "musyx/platform.h"

#if MUSY_TARGET == MUSY_TARGET_DOLPHIN
extern void OSPanic(const char* file, int line, const char* msg, ...);
extern void OSReport(const char* msg, ...);

#ifndef MUSY_PANIC
#define MUSY_PANIC OSPanic
#endif
#ifndef MUSY_REPORT
#define MUSY_REPORT OSReport
#endif
#elif MUSY_TARGET == MUSY_TARGET_PC
#include <assert.h>

#ifndef MUSY_PANIC
#define MUSY_PANIC assert
#endif
#ifndef MUSY_REPORT
#define MUSY_REPORT printf
#endif
#endif

// TODO: Cleanup
static inline unsigned __SOME_ASSERT_DERP1() { return 0; }

static inline unsigned __SOME_ASSERT_DERP2() { return __SOME_ASSERT_DERP1(); }

static inline void __SOME_ASSERT_DERP() { __SOME_ASSERT_DERP2() != 0; }

#ifndef MUSY_ASSERT
#ifdef _DEBUG
#define MUSY_ASSERT(cond)                                                                          \
  do {                                                                                             \
    if (!(cond)) {                                                                                 \
      MUSY_PANIC(__FILE__, __LINE__, "Failed assertion " #cond);                                      \
    }                                                                                              \
    __SOME_ASSERT_DERP();                                                                          \
  } while (0)
#else
#define MUSY_ASSERT(cond)
#endif
#endif

#ifndef MUSY_ASSERT_MSG
#ifdef _DEBUG
#if MUSY_VERSION >= MUSY_VERSION_CHECK(2, 0, 0)
#define MUSY_ASSERT_MSG(cond, msg)                                                                 \
  do {                                                                                             \
    s32 tmp = 1;                                                                                   \
    s32 tmp2;                                                                                      \
    if (!(cond)) {                                                                                 \
      MUSY_PANIC(__FILE__, __LINE__, msg);                                                            \
      tmp2 = 0;                                                                                    \
      if (tmp2 == 0) {                                                                             \
        tmp = 0;                                                                                   \
      }                                                                                            \
    }                                                                                              \
  } while (0)
#else
#define MUSY_ASSERT_MSG(cond, msg)                                                                 \
  do {                                                                                             \
    if (!(cond)) {                                                                                 \
      MUSY_PANIC(__FILE__, __LINE__, msg);                                                            \
    }                                                                                              \
  } while (0)
#endif
#else
#define MUSY_ASSERT_MSG(cond, msg)
#endif
#endif

#ifndef MUSY_DEBUG
#ifdef _DEBUG
#define MUSY_DEBUG MUSY_REPORT
#else
#define MUSY_DEBUG
#endif
#endif

#ifndef MUSY_FATAL
#ifdef _DEBUG
#define MUSY_FATAL(msg) MUSY_PANIC(__FILE__, __LINE__, msg)
#else
#define MUSY_FATAL
#endif
#endif

#endif // _ASSERT
