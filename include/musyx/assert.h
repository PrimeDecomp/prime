#ifndef _MUSYX_ASSERT
#define _MUSYX_ASSERT

extern void OSPanic(const char* file, int line, const char* msg, ...);

#ifndef ASSERT
#ifdef _DEBUG
#define ASSERT(cond)                                                                               \
  do {                                                                                             \
    if (!cond) {                                                                                   \
      OSPanic(__FILE__, __LINE__, "Failed assertion " #cond);                                      \
    }                                                                                              \
  } while (0)
#else
#define ASSERT(cond)
#endif
#endif

#ifndef ASSERT_MSG
#ifdef _DEBUG
#define ASSERT_MSG(cond, msg)                                                                      \
  do {                                                                                             \
    if (!cond) {                                                                                   \
      OSPanic(__FILE__, __LINE__, msg);                                                            \
    }                                                                                              \
  } while (0)
#else
#define ASSERT_MSG(cond, msg)
#endif
#endif

#ifndef MUSY_DEBUG
#if _DEBUG
#define MUSY_DEBUG OSReport
#else
#define MUSY_DEBUG
#endif
#endif

#endif // _MUSYX_ASSERT
