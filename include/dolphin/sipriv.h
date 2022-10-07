#ifndef __SIPRIV_H__
#define __SIPRIV_H__
#include "dolphin/os.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef void (*SICallback)(s32 chan, u32 sr, OSContext* context);
typedef void (*SITypeAndStatusCallback)(s32 chan, u32 type);

BOOL SIGetResponse(s32 chan, void* data);
void SISetCommand(s32 chan, u32 cmd);
BOOL SITransfer(s32 chan, void* output, u32 outputBytes, void* input, u32 inputBytes,
                SICallback callback, OSTime delay);
void SIEnablePolling(s32 bits);
void SIDisablePolling(s32 bits);

#ifdef __cplusplus
}
#endif

#endif // __SIPRIV_H__
