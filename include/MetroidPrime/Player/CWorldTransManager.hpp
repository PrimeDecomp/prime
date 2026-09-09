#ifndef _CWORLDTRANSMANAGER
#define _CWORLDTRANSMANAGER

#include "Kyoto/SObjectTag.hpp"
#include "Kyoto/Audio/CSfxHandle.hpp"
#include "Kyoto/CRandom16.hpp"
#include "Kyoto/TToken.hpp"

#include "rstl/optional_object.hpp"
#include "rstl/single_ptr.hpp"

class CAnimRes;
class CGuiTextSupport;
class CStringTable;
class CVector3f;

class CWorldTransManager {
public:
  enum ETransType { kTT_Disabled, kTT_Enabled, kTT_Text };

  CWorldTransManager();
  ~CWorldTransManager();

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
  void TouchModels();
  bool WaitForModelsAndTextures();
  bool IsTransitionFinished() const { return x44_24_transitionFinished; }

  ETransType GetTransType() const { return x30_transType; }

private:
  struct SModelDatas;

  static int GetSuitCharIdx();
  void UpdateDisabled(float dt);
  void UpdateEnabled(float dt);
  void UpdateText(float dt);
  void UpdateLights(float dt);
  void DrawAllModels() const;
  void DrawFirstPass() const;
  void DrawSecondPass() const;
  void DrawEnabled() const;
  void DrawDisabled() const;
  void DrawText() const;

  float x0_curTime;
  rstl::single_ptr< SModelDatas > x4_modelData;
  rstl::single_ptr< CGuiTextSupport > x8_textData;
  rstl::optional_object< TToken< CStringTable > > xc_strTable;
  float x18_bgOffset;
  float x1c_bgHeight;
  CRandom16 x20_random;
  ushort x24_sfx;
  CSfxHandle x28_sfxHandle;
  uchar x2c_volume;
  uchar x2d_panning;
  ETransType x30_transType;
  float x34_stopTime;
  float x38_textStartTime;
  float x3c_sfxInterval;
  int x40_strIdx;
  bool x44_24_transitionFinished : 1;
  bool x44_25_stopSoon : 1;
  bool x44_26_goingUp : 1;
  bool x44_27_fadeWhite : 1;
  bool x44_28_textDirty : 1;
};
CHECK_SIZEOF(CWorldTransManager, 0x48)

#endif // _CWORLDTRANSMANAGER
