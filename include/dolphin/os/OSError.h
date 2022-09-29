#ifndef __OSERROR_H__
#define __OSERROR_H__

#include <types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef short OSError;
typedef void OSErrorHandler(OSError, OSContext* context, ...);

void OSSetErrorHandler(OSError code, OSErrorHandler* handler);

#ifdef __cplusplus
}
#endif

#endif
