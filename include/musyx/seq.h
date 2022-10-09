#ifndef _MUSYX_SEQ
#define _MUSYX_SEQ

#include "musyx/musyx_priv.h"

#ifdef __cplusplus
extern "C" {
#endif

extern u16 seqMIDIPriority[8][16];

void sndSeqStop(s32 unk);
void sndSeqSpeed(s32 unk1, s32 unk2);
void sndSeqContinue(s32 unk);
void sndSeqMute(s32 unk1, s32 unk2, s32 unk3);
void sndSeqVolume(s32 unk1, s32 unk2, s32 unk3, s32 unk4);
u16 seqGetMIDIPriority(s32 unk1, s32 unk2);

#ifdef __cplusplus
}
#endif

#endif // _MUSYX_SEQ
