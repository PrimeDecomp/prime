#ifndef _MUSYX_ASSERT
#define _MUSYX_ASSERT

extern void OSPanic(const char* file, int line, const char* msg, ...);
extern void OSReport(const char* msg, ...);

static inline unsigned  __SOME_ASSERT_DERP1() {
  return 0;
}

static inline unsigned __SOME_ASSERT_DERP2() {
  return __SOME_ASSERT_DERP1();
}

static inline void __SOME_ASSERT_DERP() {
    __SOME_ASSERT_DERP2() != 0;
}

#ifndef ASSERT
#ifdef _DEBUG
#define MUSY_ASSERT(cond) \
  do { \
    if (!(cond)) { \
      OSPanic(__FILE__, __LINE__, "Failed assertion " #cond); \
    } \
    __SOME_ASSERT_DERP(); \
  } while(0)
#else
#define MUSY_ASSERT(cond)
#endif
#endif

#ifndef MUSY_ASSERT_MSG
#ifdef _DEBUG
#define MUSY_ASSERT_MSG(cond, msg) \
  do { \
    if (!(cond)) { \
      OSPanic(__FILE__, __LINE__, msg); \
    } \
  } while(0)
#else
#define MUSY_ASSERT_MSG(cond, msg)
#endif
#endif

#ifndef MUSY_DEBUG
#ifdef _DEBUG
#define MUSY_DEBUG OSReport
#else 
#define MUSY_DEBUG
#endif
#endif

#endif // _MUSYX_ASSERT
