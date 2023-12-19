#ifndef _MUSYX_S3D
#define _MUSYX_S3D

#include "musyx/musyx.h"

#include "musyx/synthdata.h"

#ifdef __cplusplus
extern "C" {
#endif

void s3dKillAllEmitter();
void s3dInit(u32); /* extern */
void s3dKillEmitterByFXID(FX_TAB* fxTab, u32 num);
void s3dExit();
void s3dHandle();

#ifdef __cplusplus
}
#endif

#endif