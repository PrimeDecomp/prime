
#ifndef __OSEXCEPTION_H__
#define __OSEXCEPTION_H__

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

#endif // __OSEXCEPTION_H__
