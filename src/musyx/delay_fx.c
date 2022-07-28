/* ---------------------------------------








   ---------------------------------------
*/
#include "musyx/musyx_priv.h"

void sndAuxCallbackDelay(u8 reason, SND_AUX_INFO* info, void* user) {
  s32 curSur;
  s32 curLeft;
  s32 curRight;
  s32 i;
  s32* leftOffset;
  s32* surOffset;
  s32* rightOffset;
  s32* leftPtr;
  s32* rightPtr;
  s32* surPtr;
  SND_AUX_DELAY* delay;
  switch (reason) {
  case SND_AUX_REASON_BUFFERUPDATE:
    delay = (SND_AUX_DELAY*)user;
    leftOffset = delay->left + (delay->currentPos[0] * 160);
    leftPtr = info->data.bufferUpdate.left;
    rightPtr = info->data.bufferUpdate.right;
    rightOffset = delay->right + (delay->currentPos[1] * 160);
    surPtr = info->data.bufferUpdate.surround;
    surOffset = delay->sur + (delay->currentPos[2] * 160);
    for (i = 160; i > 0; --i) {
      curLeft = *leftOffset;
      curRight = *rightOffset;
      curSur = *surOffset;
      *leftOffset = *leftPtr + ((s32)(curLeft * delay->currentFeedback[0]) >> 7);
      ++leftOffset;
      *rightOffset = *rightPtr + ((s32)(curRight * delay->currentFeedback[1]) >> 7);
      ++rightOffset;
      *surOffset = *surPtr + ((s32)(curSur * delay->currentFeedback[2]) >> 7);
      ++surOffset;
      *leftPtr = (s32)(curLeft * delay->currentOutput[0]) >> 7;
      ++leftPtr;
      *rightPtr = (s32)(curRight * delay->currentOutput[1]) >> 7;
      ++rightPtr;
      *surPtr = (s32)(curSur * delay->currentOutput[2]) >> 7;
      ++surPtr;
    }
    delay->currentPos[0] = (delay->currentPos[0] + 1) % delay->currentSize[0];
    delay->currentPos[1] = (delay->currentPos[1] + 1) % delay->currentSize[1];
    delay->currentPos[2] = (delay->currentPos[2] + 1) % delay->currentSize[2];
  case SND_AUX_REASON_PARAMETERUPDATE: break;
  default:
    // ASSERT_MSG(FALSE);
    break;
  }
}

s32 sndAuxCallbackUpdateSettingsDelay(SND_AUX_DELAY* delay) {
  s32 i;
  s32* left;
  s32* right;
  s32* sur;
  sndAuxCallbackShutdownDelay(delay);

  for (i = 0; i < 3; ++i) {
    delay->currentSize[i] = ((delay->delay[i] - 5) * 32 + 159) / 160;
    delay->currentPos[i] = 0;
    delay->currentFeedback[i] = (delay->feedback[i] << 7) / 100;
    delay->currentOutput[i] = (delay->output[i] << 7) / 100;
  }

  delay->left = (s32*)salMalloc(delay->currentSize[0] * 160 * 4);
  delay->right = (s32*)salMalloc(delay->currentSize[1] * 160 * 4);
  delay->sur = (s32*)salMalloc(delay->currentSize[2] * 160 * 4);
  left = delay->left;
  right = delay->right;
  sur = delay->sur;
  // ASSERT_MSG(delay->left!=NULL);
  // ASSERT_MSG(delay->right!=NULL);
  // ASSERT_MSG(delay->sur!=NULL);

  for (i = 0; i < delay->currentSize[0] * 160; ++i) {
    *left = 0;
    ++left;
  }

  for (i = 0; i < delay->currentSize[1] * 160; ++i) {
    *right = 0;
    ++right;
  }
  for (i = 0; i < delay->currentSize[2] * 160; ++i) {
    *sur = 0;
    ++sur;
  }
  return 1;
}

s32 sndAuxCallbackPrepareDelay(SND_AUX_DELAY* delay) {
  delay->left = NULL;
  return sndAuxCallbackUpdateSettingsDelay(delay);
}

s32 sndAuxCallbackShutdownDelay(SND_AUX_DELAY* delay) {
  if (delay->left != NULL) {
    salFree(delay->left);
    salFree(delay->right);
    salFree(delay->sur);
  }
  return 1;
}
