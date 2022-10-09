#ifndef _DOLPHIN_OSRESET
#define _DOLPHIN_OSRESET

#include <types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef BOOL (*OSResetFunction)(BOOL final);
typedef struct OSResetFunctionInfo OSResetFunctionInfo;

struct OSResetFunctionInfo {
  // public
  OSResetFunction func;
  u32 priority;

  // private
  OSResetFunctionInfo* next;
  OSResetFunctionInfo* prev;
};

#ifdef __cplusplus
}
#endif

#endif // _DOLPHIN_OSRESET
