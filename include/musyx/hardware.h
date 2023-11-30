#ifndef _MUSYX_HARDWARE
#define _MUSYX_HARDWARE

#include "musyx/musyx.h"

#ifdef __cplusplus
extern "C" {
#endif
typedef void* (*ARAMUploadCallback)(u32, u32);
typedef u32 (*SND_MESSAGE_CALLBACK)(u32, u32);

extern SND_MESSAGE_CALLBACK salMessageCallback;
extern SND_HOOKS salHooks;

extern u32 dspHRTFOn;

extern u16* dspCmdList;
extern u16 dspCmdFirstSize;
extern u8 dspScale2IndexTab[1024];


u32 hwFrq2Pitch(u32 frq);
void hwOff(s32 vid);
bool hwIsStudioActive(u8 studio);
void* hwGetStreamPlayBuffer(u8 hwStreamHandle);
s32 hwInit(u32* frq, u16 numVoices, u16 numStudios, u32 flags); /* extern */
void hwExit();
void hwInitSamplePlayback(u32 v, u16 smpID, void* newsmp, u32 set_defadsr, u32 prio,
                          u32 callbackUserValue, u32 setSRC, u8 itdMode);
void hwSetVolume(u32 v, u8 table, float vol, u32 pan, u32 span, float auxa, float auxb);
void hwSetPitch(u32 v, u16 speed);
void hwEnableIrq();
void hwDisableIrq();
void* hwTransAddr(void* samples);
void hwExitStream(u8 id);
void hwSaveSample(void* header, void* data);
void hwRemoveSample(void* header, void* data);
u32 hwGetVirtualSampleState(u32 voice);
bool hwVoiceInStartup(u32 v);
void hwBreak(s32 vid);
u32 hwGetPos(u32 v);
void hwInitSampleMem(u32 baseAddr, u32 length);
void hwExitSampleMem();
void hwSetVirtualSampleLoopBuffer(u32 voice, void* addr, u32 len);
u16 hwGetSampleID(u32 voice);
u8 hwGetSampleType(u32 voice);
void hwChangeStudioMix(u8 studio, u32 isMaster);
void hwSetStreamLoopPS(u32 voice, u8 ps);
void hwFlushStream(void* base, u32 offset, u32 bytes, unsigned char hwStreamHandle,
                   void (*callback)(u32), u32 user);
void hwSetSaveSampleCallback(ARAMUploadCallback callback, unsigned long chunckSize);
void hwSyncSampleMem();
void hwSetAUXProcessingCallbacks(u8 studio, SND_AUX_CALLBACK auxA, void* userA,
                                 SND_AUX_CALLBACK auxB, void* userB);
void hwSetMesgCallback(SND_MESSAGE_CALLBACK callback);
#if MUSY_VERSION >= MUSY_VERSION_CHECK(2, 0, 3)
void hwSetFilter(u32 v, unsigned char mode, unsigned short coefA, unsigned short coefB);
void hwLowPassFrqToCoef(u32 frq, unsigned short* _a0, unsigned short* _b1);
#endif
void hwSetSRCType(u32 v, u8 salSRCType);
void hwSetITDMode(u32 v, u8 mode);
void hwSetPolyPhaseFilter(u32 v, u8 salCoefSel);
bool hwAddInput(u8 studio, SND_STUDIO_INPUT* in_desc);
bool hwRemoveInput(u8 studio, SND_STUDIO_INPUT* in_desc);
void hwChangeStudio(u32 v, u8 studio);
void hwDisableHRTF();
void hwStart(u32 v, u8 studio);
void hwKeyOff(u32 v);
void hwFrameDone();
void hwActivateStudio(u8 studio, u32 isMaster, SND_STUDIO_TYPE type);
void hwDeactivateStudio(u8);
void hwSetPriority(u32 v, u32 prio);
u32 hwIsActive(u32);
u32 hwGlobalActivity();
void hwSetAUXProcessingCallbacks(u8 studio, SND_AUX_CALLBACK auxA, void* userA,
                                 SND_AUX_CALLBACK auxB, void* userB);
u8 hwInitStream(u32 len);
u8 hwGetTimeOffset();
u32 hwGetVirtualSampleID(u32 v);
void hwIRQEnterCritical();
void hwIRQLeaveCritical();

extern u32 aramSize;
extern u8* aramBase;
unsigned long aramGetStreamBufferAddress(unsigned char id, unsigned long* len);
u32 aramGetStreamBufferAddress(u8 id, u32* len);
void aramUploadData(void* mram, u32 aram, u32 len, u32 highPrio, void (*callback)(u32), u32 user);
void aramFreeStreamBuffer(u8 id);
void* aramStoreData(void* src, u32 len);
void aramRemoveData(void* aram, u32 len);
u8 aramAllocateStreamBuffer(u32 len);

#ifdef __cplusplus
}
#endif

#endif // _MUSYX_HARDWARE
