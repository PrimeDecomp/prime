#ifndef _CHUDRADARINTERFACE
#define _CHUDRADARINTERFACE

#include "types.h"

#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/TToken.hpp"

class CGuiCamera;
class CGuiFrame;
class CGuiWidget;
class CStateManager;
class CTexture;

class CHudRadarInterface {
public:
  CHudRadarInterface(CGuiFrame& baseHud, CStateManager& mgr);

  void SetIsVisibleGame(bool v);
  void Update(float dt, const CStateManager& mgr);
  void Draw(const CStateManager& mgr, float alpha);

private:
  TLockedToken< CTexture > x0_txtrRadarPaint;
  CTransform4f xc_radarStuffXf;
  bool x3c_24_visibleGame : 1;
  bool x3c_25_visibleDebug : 1;
  CGuiWidget* x40_basewidget;
  CGuiCamera* x44_camera;
};
CHECK_SIZEOF(CHudRadarInterface, 0x48)

#endif // _CHUDRADARINTERFACE
