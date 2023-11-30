/* ---------------------------------------








   ---------------------------------------
*/

#include "musyx/musyx.h"

#include "musyx/assert.h"

// TODO: Cleanup and move externs to header
extern bool ReverbSTDCreate(_SND_REVSTD_WORK* rv, f32 coloration, f32 time, f32 mix, f32 damping,
                            f32 preDelay);
extern void ReverbSTDFree(_SND_REVSTD_WORK* rev);
extern void ReverbSTDCallback(s32* left, s32* right, s32* surround, _SND_REVSTD_WORK* rv);
extern unsigned long ReverbSTDModify(_SND_REVSTD_WORK* rv, float coloration, float time, float mix,
                                     float damping, float predelay);

void sndAuxCallbackReverbSTD(u8 reason, SND_AUX_INFO* info, void* user) {
  switch (reason) {
  case SND_AUX_REASON_BUFFERUPDATE:
    if ((u8)((SND_AUX_REVERBSTD*)user)->tempDisableFX == 0) {
      ReverbSTDCallback(info->data.bufferUpdate.left, info->data.bufferUpdate.right,
                        info->data.bufferUpdate.surround, &((SND_AUX_REVERBSTD*)user)->rv);
    }
    break;
  case SND_AUX_REASON_PARAMETERUPDATE:
    // UNIMPLEMENTED
    break;
  default:
    MUSY_ASSERT(FALSE);
    break;
  }
}
bool sndAuxCallbackUpdateSettingsReverbSTD(SND_AUX_REVERBSTD* rev) {
  rev->tempDisableFX = TRUE;
  ReverbSTDModify(&rev->rv, rev->coloration, rev->time, rev->mix, rev->damping, rev->preDelay);
  rev->tempDisableFX = FALSE;
  return TRUE;
}

bool sndAuxCallbackPrepareReverbSTD(SND_AUX_REVERBSTD* rev) {
  rev->tempDisableFX = 0;
  return ReverbSTDCreate(&rev->rv, rev->coloration, rev->time, rev->mix, rev->damping,
                         rev->preDelay);
}
bool sndAuxCallbackShutdownReverbSTD(SND_AUX_REVERBSTD* rev) {
  ReverbSTDFree(&rev->rv);
  return TRUE;
}
