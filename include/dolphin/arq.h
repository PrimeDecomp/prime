#ifndef _DOLPHIN_ARQ
#define _DOLPHIN_ARQ

#include "types.h"

#include "dolphin/ar.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct ARQRequest ARQRequest;
typedef void (*ARQCallback)(u32 pointerToARQRequest);

struct ARQRequest {
  ARQRequest* next;
  u32 owner;
  u32 type;
  u32 priority;
  u32 source;
  u32 dest;
  u32 length;
  ARQCallback callback;
};

void ARQInit(void);

#ifdef __cplusplus
}
#endif

#endif // _DOLPHIN_ARQ
