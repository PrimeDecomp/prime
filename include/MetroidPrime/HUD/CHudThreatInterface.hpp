#ifndef _CHUDTHREATINTERFACE
#define _CHUDTHREATINTERFACE

#include "Kyoto/Math/CTransform4f.hpp"
#include "MetroidPrime/HUD/CHudInterface.hpp"
#include "types.h"
#include "rstl/pair.hpp"

class CGuiFrame;
class CGuiWidget;
class CGuiModel;
class CGuiTextPane;
class CGuiCamera;
class CAuiEnergyBarT01;
class CAuiMeter;
class CStateManager;

class IHudThreatInterface {
public:
  virtual void SetThreatDistance(float distance) = 0;
  virtual void Update(float dt) = 0;
  virtual void SetIsVisibleDebug(bool visible) = 0;
  virtual void SetIsVisibleGame(bool visible) = 0;
  virtual ~IHudThreatInterface() {}
};

class CHudThreatInterface : public IHudThreatInterface {
public:
  void SetThreatDistance(float distance) override;
  void Update(float dt) override;
  void SetIsVisibleDebug(bool visible) override;
  void SetIsVisibleGame(bool visible) override;
  ~CHudThreatInterface() override;
  CHudThreatInterface(CGuiFrame& hud, EHudType type, float distance);
  static rstl::pair< CVector3f, CVector3f > CombatThreatBarCoordFunc(float t);
  static rstl::pair< CVector3f, CVector3f > ThermalThreatBarCoordFunc(float t);
  static rstl::pair< CVector3f, CVector3f > XRayThreatBarCoordFunc(float t);

private:
  void UpdateVisibility();
  enum EThreatStatus { kTS_Normal, kTS_Warning, kTS_Damage };
  EHudType x4_hudType;
  float x8_damagePulseTimer;
  float xc_damagePulse;
  float x10_threatDist;
  float x14_arrowTimer;
  CTransform4f x18_threatIconXf;
  float x48_warningLerpAlpha;
  EThreatStatus x4c_threatStatus;
  float x50_warningColorLerp;
  bool x54_24_visibleDebug : 1;
  bool x54_25_visibleGame : 1;
  bool x54_26_hasArrows : 1;
  bool x54_27_notXRay : 1;
  CGuiWidget* x58_basewidget_threatstuff;
  CGuiWidget* x5c_basewidget_threaticon;
  CGuiModel* x60_model_threatarrowup;
  CGuiModel* x64_model_threatarrowdown;
  CGuiTextPane* x68_textpane_threatwarning;
  CAuiEnergyBarT01* x6c_energybart01_threatbar;
  CGuiTextPane* x70_textpane_threatdigits;
};
CHECK_SIZEOF(CHudThreatInterface, 0x74)

#endif // _CHUDTHREATINTERFACE
