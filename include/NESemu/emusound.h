#ifndef _NES_EMUSOUND
#define _NES_EMUSOUND

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

void EmuSound_Start(u8* noiseData);
void EmuSound_Exit();
u32 ksNesGetAudioStream();
void Sound_Reset();
int Sound_ReadSample(s16* sample);
void Sound_Write(u16 address, u8 value, u16 frames);
u8 Sound_Read(u16 address);
void Sound_SetC000(u8* romTop);
void Sound_SetE000(u8* romTop);
void Sound_SetMMC(u8 mode);

#ifdef __cplusplus
}
#endif

#endif
