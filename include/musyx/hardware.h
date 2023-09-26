#ifndef _MUSYX_HARDWARE
#define _MUSYX_HARDWARE

#include "musyx/musyx_priv.h"

#ifdef __cplusplus
extern "C" {
#endif

bool hwIsStudioActive(u8 studio);
void* hwGetStreamPlayBuffer(u8 hwStreamHandle);
s32 hwInit(u32* frq, u16 numVoices, u16 numStudios, u32 flags); /* extern */
void hwInitSamplePlayback(u32 v, u16 smpID, void* newsmp, u32 set_defadsr, u32 prio,
                          u32 callbackUserValue, u32 setSRC, u8 itdMode);
void hwSetVolume(u32 v, u8 table, float vol, u32 pan, u32 span, float auxa, float auxb);
void hwSetPitch(u32 v, u16 speed);
void hwEnableIrq();
void hwDisableIrq();
void* hwTransAddr(void* samples);
void hwExitStream(u8 id);

#ifdef __cplusplus
}
#endif

#endif // _MUSYX_HARDWARE
