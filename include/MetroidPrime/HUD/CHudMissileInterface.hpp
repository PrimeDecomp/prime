#ifndef _CHUDMISSILEINTERFACE
#define _CHUDMISSILEINTERFACE

#include "Kyoto/Math/CTransform4f.hpp"
#include "MetroidPrime/HUD/CHudInterface.hpp"
#include "types.h"

class CGuiFrame;
class CGuiWidget;
class CGuiModel;
class CGuiTextPane;
class CGuiCamera;
class CAuiEnergyBarT01;
class CAuiMeter;
class CStateManager;

class CHudMissileInterface {
public:
  CHudMissileInterface(CGuiFrame& hud, int capacity, int missiles, float chargeFactor, bool active,
                       EHudType type, const CStateManager& mgr);
  void Update(float dt, const CStateManager& mgr);
  void SetIsVisibleGame(bool visible, const CStateManager& mgr);
  void SetIsMissilesActive(bool active);
  void SetChargeBeamFactor(float factor);
  void SetNumMissiles(int missiles, const CStateManager& mgr);
  void SetMissileCapacity(int capacity);

private:
  enum EInventoryStatus { kIS_Normal, kIS_Warning, kIS_Depleted };
  EHudType x0_hudType;
  int x4_missileCapacity;
  int x8_numMissiles;
  float xc_arrowTimer;
  CTransform4f x10_missileIconXf;
  float x40_missileWarningAlpha;
  EInventoryStatus x44_latestStatus;
  float x48_missileWarningPulse;
  float x4c_chargeBeamFactor;
  float x50_missileIconAltDeplete;
  float x54_missileIconIncrement;
  bool x58_24_missilesActive : 1;
  bool x58_25_visibleDebug : 1;
  bool x58_26_visibleGame : 1;
  bool x58_27_hasArrows : 1;
  bool x58_28_notXRay : 1;
  CGuiWidget* x5c_basewidget_missileicon;
  CGuiTextPane* x60_textpane_missiledigits;
  CAuiEnergyBarT01* x64_energybart01_missilebar;
  CGuiTextPane* x68_textpane_missilewarning;
  CGuiModel* x6c_model_missilearrowup;
  CGuiModel* x70_model_missilearrowdown;
  CGuiWidget* x74_basewidget_missileicon;
};
CHECK_SIZEOF(CHudMissileInterface, 0x78)

#endif // _CHUDMISSILEINTERFACE
