#ifndef _MUSYX_MACROS
#define _MUSYX_MACROS

#include "musyx/musyx.h"
#include "musyx/synth.h"

#ifdef __cplusplus
extern "C" {
#endif

void macInit();
bool macPostMessage(SND_VOICEID vid, s32 mesg);
u32 macStart(u16 macid, u8 priority, u8 maxVoices, u16 allocId, u8 key, u8 vol, u8 panning, u8 midi,
             u8 midiSet, u8 section, u16 step, u16 trackid, u8 new_vid, u8 vGroup, u8 studio,
             u32 itd);
void macHandle(u32 deltaTime);
void macMakeInactive(SYNTH_VOICE* svoice, MAC_STATE);
void macSetPedalState(SYNTH_VOICE* svoice, u32 state);
void macSetExternalKeyoff(SYNTH_VOICE* svoice);
void macSampleEndNotify(SYNTH_VOICE* sv);

#ifdef __cplusplus
}
#endif

#endif