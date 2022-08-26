#ifndef _ERRNO_H_
#define _ERRNO_H_

#ifdef __cplusplus
extern "C" {
#endif

extern int errno;

#define ENOERR 0
#define EDOM 33
#define ERANGE 34
#define EFPOS 35
#define ESIGPARM 36

#ifdef __cplusplus
}
#endif

#endif
