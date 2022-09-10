#ifndef __OSFONT_H__
#define __OSFONT_H__

#include <types.h>

#ifdef __cplusplus
extern "C" {
#endif

u16 OSGetFontEncode(void);
u16 OSSetFontEncode(u16 encode);

#ifdef __cplusplus
}
#endif

#endif
