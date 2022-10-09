
#ifndef _DOLPHIN_OSEXCEPTION
#define _DOLPHIN_OSEXCEPTION

#include <dolphin/os/OSContext.h>
#include <dolphin/types.h>

#ifdef __cplusplus
extern "C" {
#endif
typedef u8 __OSException;
typedef void (*__OSExceptionHandler)(__OSException exception, OSContext* context);

#ifdef __cplusplus
}
#endif

#endif // _DOLPHIN_OSEXCEPTION
