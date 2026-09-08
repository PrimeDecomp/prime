#ifndef _CHUDFREELOOKINTERFACE
#define _CHUDFREELOOKINTERFACE

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

class IHudFreeLookInterface {
public:
  virtual void SetFreeLookState(bool freeLook, bool controlHeld, bool lockedOn, float angle) = 0;
  virtual void SetIsVisibleDebug(bool visible) = 0;
  virtual void SetIsVisibleGame(bool visible) = 0;
  virtual void Update(float dt) = 0;
  virtual ~IHudFreeLookInterface() {}
};

class CHudFreeLookInterface : public IHudFreeLookInterface {
public:
  void SetFreeLookState(bool freeLook, bool controlHeld, bool lockedOn, float angle) override;
  void SetIsVisibleDebug(bool visible) override;
  void SetIsVisibleGame(bool visible) override;
  void Update(float dt) override;
  ~CHudFreeLookInterface() override;
  CHudFreeLookInterface(CGuiFrame& hud, EHudType type, bool freeLook, bool controlHeld,
                        bool lockedOn);

private:
  void UpdateVisibility();

  EHudType x4_hudType;
  CTransform4f x8_freeLookLeftXf;
  CTransform4f x38_freeLookRightXf;
  float x68_freeLookInterp;
  float x6c_lockOnInterp;
  bool x70_24_inFreeLook : 1;
  bool x70_25_lookControlHeld : 1;
  bool x70_26_lockedOnObj : 1;
  bool x70_27_visibleDebug : 1;
  bool x70_28_visibleGame : 1;
  CGuiWidget* x74_basewidget_freelookleft;
  CGuiModel* x78_model_shieldleft;
  CGuiModel* x7c_model_freelookleft;
  CGuiWidget* x80_basewidget_freelookright;
  CGuiModel* x84_model_shieldright;
  CGuiModel* x88_model_freelookright;
  CGuiWidget* x8c_basewidget_outlinesb;
};
CHECK_SIZEOF(CHudFreeLookInterface, 0x90)

class CHudFreeLookInterfaceXRay : public IHudFreeLookInterface {
public:
  void SetFreeLookState(bool freeLook, bool controlHeld, bool lockedOn, float angle) override;
  void SetIsVisibleDebug(bool visible) override;
  void SetIsVisibleGame(bool visible) override;
  void Update(float dt) override;
  ~CHudFreeLookInterfaceXRay() override;
  CHudFreeLookInterfaceXRay(CGuiFrame& hud, bool freeLook, bool controlHeld, bool lockedOn);

private:
  void UpdateVisibility();

  CVector3f x4_freeLookLeftPos;
  CVector3f x10_freeLookRightPos;
  float x1c_freeLookInterp;
  bool x20_inFreeLook;
  bool x21_lookControlHeld;
  bool x22_24_visibleDebug : 1;
  bool x22_25_visibleGame : 1;
  CGuiWidget* x24_basewidget_freelook;
  CGuiModel* x28_model_shield;
  CGuiModel* x2c_model_freelookleft;
  CGuiModel* x30_model_freelookright;
};
CHECK_SIZEOF(CHudFreeLookInterfaceXRay, 0x34)

#endif // _CHUDFREELOOKINTERFACE
