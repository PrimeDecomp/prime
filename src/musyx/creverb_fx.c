#include "musyx/musyx_priv.h"

extern s32 ReverbSTDCreate(_SND_REVSTD_WORK* rv, f32 coloration, f32 time, f32 mix, f32 damping, f32 preDelay);
extern void ReverbHIFree(_SND_REVSTD_WORK* rev);
extern void ReverbSTDCallback(s32* left, s32* right, s32* surround, _SND_REVSTD_WORK* rv);

void sndAuxCallbackReverbSTD(u8 reason, SND_AUX_INFO* info, void* user) {
  SND_AUX_REVERBSTD* rev ;
  switch (reason) {
  case SND_AUX_REASON_BUFFERUPDATE:
    rev = (SND_AUX_REVERBSTD*)user;
    if ((u8)rev->tempDisableFX == 0) {
      ReverbSTDCallback(info->data.bufferUpdate.left, info->data.bufferUpdate.right, info->data.bufferUpdate.surround,
                        &rev->rv);
    }
  case SND_AUX_REASON_PARAMETERUPDATE:
    break;
  default:
    // ASSERT_MSG(FALSE);
    break;
  }
}

s32 sndAuxCallbackPrepareReverbSTD(SND_AUX_REVERBSTD* rev) {
  rev->tempDisableFX = 0;
  return ReverbSTDCreate(&rev->rv, rev->coloration, rev->time, rev->mix, rev->damping, rev->preDelay);
}
s32 sndAuxCallbackShutdownReverbSTD(SND_AUX_REVERBSTD* rev) {
  ReverbSTDFree(&rev->rv);
  return 1;
}

s32 sndAuxCallbackUpdateSettingsReverbSTD(SND_AUX_REVERBSTD* rev) { /* not in MP */
}
