#ifndef _WCHAR_H_
#define _WCHAR_H_

#include <stdio.h>

#ifdef __cplusplus
extern "C" {
#endif

int fwide(FILE* stream, int mode);

#ifdef __cplusplus
}
#endif

#endif
