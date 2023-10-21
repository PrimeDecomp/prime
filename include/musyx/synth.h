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
void synthKeyStateUpdate(SYNTH_VOICE* svoice);
bool synthFXSetCtrl(SND_VOICEID vid, u8 ctrl, u8 value);
bool synthFXSetCtrl14(SND_VOICEID vid, u8 ctrl, u16 value);
bool synthSendKeyOff(SND_VOICEID vid);
SND_VOICEID synthFXStart(u16 fid, u8 vol, u8 pan, u8 studio, u32 itd);
void synthVolume(u8 volume, u16 time, u8 vGroup, u8 seqMode, u32 seqId);
u32 synthStartSound(u16 id, u8 prio, u8 max,
#if MUSY_VERSION >= MUSY_VERSION_CHECK(2, 0, 1)
                    u32 sourceID,
#endif
                    u8 key, u8 vol, u8 panning, u8 midi, u8 midiSet, u8 section, u16 step,
                    u16 trackid, u8 vGroup, s16 prioOffset, u8 studio, u32 itd);
bool synthIsFadeOutActive(u8 vGroup);

/* TODO: Move this where it belongs */
void hwSetAUXProcessingCallbacks(u8 studio, SND_AUX_CALLBACK auxA, void* userA,
                                 SND_AUX_CALLBACK auxB, void* userB);
u32 voiceBlock(u8 prio);
MSTEP* dataGetMacro(u16 mid);

u32 voiceAllocate(u8 priority, u8 maxVoices, u16 allocId, u8 fxFlag);

#if MUSY_VERSION >= MUSY_VERSION_CHECK(2, 0, 3)
int voiceAllocatePeek(u8 priority, u8 maxVoices, u32 allocId, u8 fxFlag, u32 * currentAllocId);
#endif

void voiceFree(SYNTH_VOICE* svoice);
void synthActivateStudio(u8 studio, u32 isMaster, SND_STUDIO_TYPE type);
void synthDeactivateStudio(u8 studio);
u8 synthFXGetMaxVoices(u16 fid);
void synthPauseVolume(u8 volume, u16 time, u8 vGroup);
bool dataRemoveFX(u16 gid);
void voiceUnblock(u32 voice);
void voiceRemovePriority(const SYNTH_VOICE* svoice);
#ifdef __cplusplus
}
#endif

#endif // _MUSYX_SYNTH
