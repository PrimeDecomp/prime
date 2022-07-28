/* ---------------------------------------








   ---------------------------------------
*/

#include "musyx/musyx_priv.h"
  

  
  


extern bool8 ReverbHICreate(_SND_REVHI_WORK* rev, f32 coloration, f32 time, f32 mix, f32 damping, f32 preDelay, f32 crosstalk);
extern void ReverbHIFree(_SND_REVHI_WORK* rev);

void sndAuxCallbackReverbHI(u8 reason, SND_AUX_INFO* info, void* user) {
    switch (reason) {
    case SND_AUX_REASON_BUFFERUPDATE:
        if (((SND_AUX_REVERBHI*)user)->tempDisableFX == 0) {
            ReverbHICallback(info->data.bufferUpdate.left, 
                             info->data.bufferUpdate.right, 
                             info->data.bufferUpdate.surround, user);
        }
    case SND_AUX_REASON_PARAMETERUPDATE:
        break;
    default:
        //ASSERT_MSG(FALSE);
        break;
    }
}

bool8 sndAuxCallbackPrepareReverbHI(SND_AUX_REVERBHI *rev) {
    rev->tempDisableFX = 0;
    return ReverbHICreate(&rev->rv, rev->coloration, rev->time, rev->mix, rev->damping, rev->preDelay, rev->crosstalk);
}

bool8 sndAuxCallbackShutdownReverbHI(SND_AUX_REVERBHI* rev) {
    ReverbHIFree(&rev->rv);
    return 1;
}
