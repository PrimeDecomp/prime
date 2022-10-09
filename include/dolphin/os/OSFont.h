#ifndef _DOLPHIN_OSFONT
#define _DOLPHIN_OSFONT

#include <types.h>

#ifdef __cplusplus
extern "C" {
#endif

u16 OSGetFontEncode(void);
u16 OSSetFontEncode(u16 encode);

#ifdef __cplusplus
}
#endif

#endif // _DOLPHIN_OSFONT
