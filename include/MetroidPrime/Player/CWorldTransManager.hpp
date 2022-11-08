#ifndef _CWORLDTRANSMANAGER
#define _CWORLDTRANSMANAGER

#include "types.h"

class CAnimRes;
class CVector3f;

class CWorldTransManager {
public:
  enum ETransType { kTT_Disabled, kTT_Enabled, kTT_Text };

  void SetSfx(ushort, uchar, uchar);
  void SfxStart();
  void SfxStop();

  void EnableTransition(const CAnimRes&, unsigned int, const CVector3f&, unsigned int, const CVector3f&, bool);
  void EnableTransition(int fontId, int stringId, int stringIdx, bool fadeWhite, float chFadeTime, float chFadeRate, float textStartTime);
  void DisableTransition();

  ETransType GetTransType() const { return x30_transType; }

private:
  uchar x0_pad[0x30];
  ETransType x30_transType;
  uchar x34_pad[0x14];
};

#endif // _CWORLDTRANSMANAGER
