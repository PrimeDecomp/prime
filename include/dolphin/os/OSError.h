#ifndef _DOLPHIN_OSERROR
#define _DOLPHIN_OSERROR

#include <types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef u16 OSError;
typedef void OSErrorHandler(OSError, OSContext* context, ...);

void OSSetErrorHandler(OSError code, OSErrorHandler* handler);

#ifdef __cplusplus
}
#endif

#endif // _DOLPHIN_OSERROR
