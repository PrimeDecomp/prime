#ifndef _CHUDHELMETINTERFACE
#define _CHUDHELMETINTERFACE

#include "Kyoto/Math/CMatrix3f.hpp"
#include "types.h"

class CGuiFrame;
class CGuiWidget;
class CGuiModel;
class CGuiTextPane;
class CGuiCamera;
class CAuiEnergyBarT01;
class CAuiMeter;
class CStateManager;

class CHudHelmetInterface {
public:
  explicit CHudHelmetInterface(CGuiFrame& frame);
  void Update(float dt);
  void SetHudLagOffset(const CVector3f& offset);
  void SetHudLagRotation(const CMatrix3f& rotation);
  void AddHelmetLightValue(float value);
  void UpdateCameraDebugSettings(float fov, float y, float z);
  void UpdateHelmetAlpha();
  void SetIsVisibleDebug(const bool helmet, const bool glow);

private:
  void UpdateVisibility();

  CMatrix3f x0_hudLagRotation;
  CVector3f x24_pivotPosition;
  CVector3f x30_hudLagPosition;
  bool x3c_24_helmetVisibleDebug : 1;
  bool x3c_25_helmetVisibleGame : 1;
  bool x3c_26_glowVisibleDebug : 1;
  bool x3c_27_glowVisibleGame : 1;
  bool x3c_28_hudLagDirty : 1;
  CGuiCamera* x40_camera;
  CGuiWidget* x44_BaseWidget_Pivot;
  CGuiWidget* x48_BaseWidget_Helmet;
  CGuiWidget* x4c_BaseWidget_Glow;
  CGuiWidget* x50_BaseWidget_HelmetLight;
};
CHECK_SIZEOF(CHudHelmetInterface, 0x54)

#endif // _CHUDHELMETINTERFACE
