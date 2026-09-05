#ifndef _ASSERT_H_
#define _ASSERT_H_

#ifdef __cplusplus
extern "C" {
#endif

#if __STDC_VERSION__ >= 201112L
// The C11 way
#define static_assert(cond, msg) _Static_assert(cond, #msg)
#else
// The old, hacky way
#define static_assert(cond, msg) typedef char static_assertion_##msg[(cond) ? 1 : -1]
#endif

#ifdef __cplusplus
}
#endif

#endif
