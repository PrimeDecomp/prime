#ifndef _MUSYX_SYNTH
#define _MUSYX_SYNTH

#include "musyx/musyx_priv.h"
#ifdef __cplusplus
extern "C" {
#endif

extern SND_AUX_CALLBACK synthAuxACallback[8];
extern u8 synthAuxAMIDI[8];
extern u8 synthAuxAMIDISet[8];
extern void* synthAuxAUser[8];
extern SND_AUX_CALLBACK synthAuxBCallback[8];
extern u8 synthAuxBMIDI[8];
extern u8 synthAuxBMIDISet[8];
extern void* synthAuxBUser[8];

extern synthITDInfo synthITDDefault[8];
extern u32 synthFlags;

u32 vidGetInternalId(SND_VOICEID id);
bool synthFXSetCtrl(SND_VOICEID vid, u8 ctrl, u8 value);
bool synthFXSetCtrl14(SND_VOICEID vid, u8 ctrl, u16 value);
bool synthSendKeyOff(SND_VOICEID vid);
SND_VOICEID synthFXStart(u16 fid, u8 vol, u8 pan, u8 studio, u32 itd);
void synthVolume(unsigned char volume, unsigned short time, unsigned char vGroup,
                 unsigned char seqMode, unsigned long seqId);

/* TODO: Move this where it belongs */
void hwSetAUXProcessingCallbacks(u8 studio, SND_AUX_CALLBACK auxA, void* userA,
                                 SND_AUX_CALLBACK auxB, void* userB);
#ifdef __cplusplus
}
#endif

#endif // _MUSYX_SYNTH
