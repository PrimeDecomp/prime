#ifndef _DOLPHIN_OSFONT
#define _DOLPHIN_OSFONT

#include <types.h>

#ifdef __cplusplus
extern "C" {
#endif

#define OS_FONT_ENCODE_ANSI 0u
#define OS_FONT_ENCODE_SJIS 1u
#define OS_FONT_ENCODE_UTF8 3u  // UTF-8 [RFC 3629]
#define OS_FONT_ENCODE_UTF16 4u // UTF-16BE [RFC 2781]
#define OS_FONT_ENCODE_UTF32 5u // UTF-32
#define OS_FONT_ENCODE_MAX 5u
#define OS_FONT_ENCODE_VOID 0xffffu

#define OS_FONT_PROPORTIONAL FALSE
#define OS_FONT_FIXED TRUE

u16 OSGetFontEncode(void);
u16 OSSetFontEncode(u16 encode);

#ifdef __cplusplus
}
#endif

#endif // _DOLPHIN_OSFONT
