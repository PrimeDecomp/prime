#ifndef MUSYX_PRIV_H
#define MUSYX_PRIV_H

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif
    
void dataInit(u32, s32);                              /* extern */
void dataInitStack();                                 /* extern */
s32 hwInit(s32*, u8, u8, s32);                      /* extern */
void s3dInit(s32);                                     /* extern */
void seqInit();                                        /* extern */
void streamInit();                                     /* extern */
void synthInit(u32, u8);                                 /* extern */
void vsInit();                                         /* extern */
void hwExit();
void dataExit();
void s3dExit();
void synthExit();

#ifdef __cplusplus
}
#endif
#endif
