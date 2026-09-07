#ifndef _CWORLDTRANSMANAGER
#define _CWORLDTRANSMANAGER

#include "Kyoto/SObjectTag.hpp"

class CAnimRes;
class CVector3f;

class CWorldTransManager {
public:
  enum ETransType { kTT_Disabled, kTT_Enabled, kTT_Text };

  CWorldTransManager();

  void SetSfx(ushort, uchar, uchar);
  void SfxStart();
  void SfxStop();

  void EnableTransition(const CAnimRes&, const CAssetId, const CVector3f&, const CAssetId, const CVector3f&, bool);
  void EnableTransition(int fontId, int stringId, int stringIdx, bool fadeWhite, float chFadeTime, float chFadeRate, float textStartTime);
  void DisableTransition();
  void StartTransition();
  void EndTransition();
  void StartTextFadeOut();
  void Update(float dt);
  void Draw() const;
  void WaitForModelsAndTextures();
  bool IsTransitionFinished() const { return x44_24_transitionFinished; }

  ETransType GetTransType() const { return x30_transType; }

private:
  uchar x0_pad[0x30];
  ETransType x30_transType;
  uchar x34_pad[0x10];
  bool x44_24_transitionFinished : 1;
};
CHECK_SIZEOF(CWorldTransManager, 0x48)

#endif // _CWORLDTRANSMANAGER
