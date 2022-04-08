#include "musyx/musyx.h"

#ifdef __cplusplus
extern "C" {
#endif
s8 s3dCallCnt;
s32 s3dDoorRoot;
s32 s3dEmitterRoot;
s32 s3dListenerRoot;
s32 s3dRoomRoot;
s8 s3dUseMaxVoices;
s8 snd_base_studio;
s8 snd_max_studios;
s32 snd_used_studios;
    

void s3dInit(s32 flags) {
    s3dEmitterRoot = 0;
    s3dListenerRoot = 0;
    s3dRoomRoot = 0;
    s3dDoorRoot = 0;
    snd_used_studios = 0;
    snd_base_studio = 1;
    snd_max_studios = 3;
    s3dCallCnt = 0;
    s3dUseMaxVoices = (flags >> 1) & 1;
}


void s3dExit() {
    
}

#ifdef __cplusplus
extern "C" {
#endif
