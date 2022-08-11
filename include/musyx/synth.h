#ifndef __SYNTH_H__
#define __SYNTH_H__

#include "musyx/musyx_priv.h"
#ifndef __cplusplus
extern "C" {
#endif 
    
typedef struct SynthVoice {
    char data1[0xf4];
    u32 _f4;
    VoiceID* voiceId;
    char data2[0x18];
    u32 _114[2];
    u8 _11c;
    u8 _11d;
    u8 _11e;
    u8 studio;
    char data3[0x404 - 0x120];
} SynthVoice;

typedef void (*SND_AUX_CALLBACK)(u8 reason, SND_AUX_INFO * info, void * user);

extern SND_AUX_CALLBACK synthAuxACallback[8];
extern u8 synthAuxAMIDI[8];
extern u8 synthAuxAMIDISet[8];
extern void* synthAuxAUser[8];
extern SND_AUX_CALLBACK synthAuxBCallback[8];
extern u8 synthAuxBMIDI[8];
extern u8 synthAuxBMIDISet[8];
extern void* synthAuxBUser[8];

s32 vidGetInternalId(SND_VOICEID id);
bool synthFXSetCtrl(SND_VOICEID vid, u8 ctrl, u8 value);
bool synthFXSetCtrl14(SND_VOICEID vid, u8 ctrl, u16 value);
bool synthSendKeyOff(SND_VOICEID vid);
SND_VOICEID synthFXStart(SND_FXID fid, u8 vol, u8 pan, u8 studio, u8); 
void synthVolume(u8 volume, u16 time, u8 volgroup2, s32, s32); 


/* TODO: Move this where it belongs */
void hwSetAUXProcessingCallbacks(u8 studio, 
                                 SND_AUX_CALLBACK auxA, void * userA, 
                                 SND_AUX_CALLBACK auxB, void * userB);
#ifndef __cplusplus
}
#endif 
    
#endif // __SYNTH_H__
    
