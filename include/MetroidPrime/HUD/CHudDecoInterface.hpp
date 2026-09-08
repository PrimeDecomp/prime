#ifndef _CHUDDECOINTERFACE
#define _CHUDDECOINTERFACE

#include "Kyoto/Math/CQuaternion.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/Player/CScanDisplay.hpp"
#include "rstl/pair.hpp"
#include "rstl/vector.hpp"
#include "types.h"

class CGuiCamera;
class CGuiFrame;
class CGuiWidget;
class CGuiTextPane;
class CGuiModel;
class CAuiEnergyBarT01;
class CFinalInput;
class CStateManager;

class IHudDecoInterface {
public:
  virtual void SetIsVisibleDebug(const bool visible) = 0;
  virtual void SetIsVisibleGame(bool visible) = 0;
  virtual void SetHudRotation(const CQuaternion& rotation) = 0;
  virtual void SetHudOffset(const CVector3f& offset) = 0;
  virtual void SetReticuleTransform(const CMatrix3f& transform) {}
  virtual void SetDecoRotation(float angle) {}
  virtual void SetDamageTransform(const CMatrix3f& rotation, const CVector3f& position) = 0;
  virtual void SetFrameColorValue(float value) {}
  virtual void Update(float dt, const CStateManager& mgr) = 0;
  virtual void Draw() const {}
  virtual void ProcessInput(const CFinalInput& input) {}
  virtual void UpdateCameraDebugSettings(float fov, float y, float z) = 0;
  virtual void UpdateHudAlpha() = 0;
  virtual float GetMessageTextAlpha() const { return 1.f; }
  virtual ~IHudDecoInterface() {}
};

class CHudDecoInterfaceCombat : public IHudDecoInterface {
public:
  void SetIsVisibleDebug(const bool visible) override;
  void SetIsVisibleGame(bool visible) override;
  void SetHudRotation(const CQuaternion& rotation) override;
  void SetHudOffset(const CVector3f& offset) override;
  void SetDamageTransform(const CMatrix3f& rotation, const CVector3f& position) override;
  void SetFrameColorValue(float value) override;
  void Update(float dt, const CStateManager& mgr) override;
  void UpdateCameraDebugSettings(float fov, float y, float z) override;
  void UpdateHudAlpha() override;
  ~CHudDecoInterfaceCombat() override;
  explicit CHudDecoInterfaceCombat(CGuiFrame& hud);

private:
  CQuaternion x4_rotation;
  CVector3f x14_pivotPosition;
  CVector3f x20_offset;
  CVector3f x2c_camPos;
  CVector3f x38_basePosition;
  CMatrix3f x44_baseRotation;
  bool x68_24_visDebug : 1;
  bool x68_25_visGame : 1;
  CGuiCamera* x6c_camera;
  CGuiWidget* x70_basewidget_pivot;
  CGuiWidget* x74_basewidget_deco;
  CGuiWidget* x78_basewidget_tickdeco0;
  CGuiWidget* x7c_basewidget_frame;
};
CHECK_SIZEOF(CHudDecoInterfaceCombat, 0x80)

class CHudDecoInterfaceScan : public IHudDecoInterface {
public:
  void SetIsVisibleDebug(const bool visible) override;
  void SetIsVisibleGame(bool visible) override;
  void SetHudRotation(const CQuaternion& rotation) override;
  void SetHudOffset(const CVector3f& offset) override;
  void SetReticuleTransform(const CMatrix3f& transform) override;
  void SetDamageTransform(const CMatrix3f& rotation, const CVector3f& position) override;
  void SetFrameColorValue(float value) override;
  void Update(float dt, const CStateManager& mgr) override;
  void Draw() const override;
  void ProcessInput(const CFinalInput& input) override;
  void UpdateCameraDebugSettings(float fov, float y, float z) override;
  void UpdateHudAlpha() override;
  float GetMessageTextAlpha() const override;
  ~CHudDecoInterfaceScan() override;
  explicit CHudDecoInterfaceScan(CGuiFrame& hud);

private:
  TCachedToken< CGuiFrame > x4_scanHudFlat;
  CGuiFrame* x10_loadedScanHudFlat;
  CGuiFrame& x14_selHud;
  CScanDisplay x18_scanDisplay;
  TUniqueId x1d0_latestHudPoi;
  TUniqueId x1d2_latestScanningObject;
  CPlayer::EPlayerScanState x1d4_latestScanState;
  float x1d8_scanningTime;
  float x1dc_;
  float x1e0_;
  CQuaternion x1e4_rotation;
  CVector3f x1f4_pivotPosition;
  CVector3f x200_offset;
  CVector3f x20c_camPos;
  CVector3f x218_leftsidePosition;
  CVector3f x224_rightsidePosition;
  float x230_sidesTimer;
  float x234_sidesPositioner;
  float x238_scanningTextAlpha;
  float x23c_scanBarAlpha;
  bool x240_24_visDebug : 1;
  bool x240_25_visGame : 1;
  CGuiCamera* x244_camera;
  CGuiWidget* x248_basewidget_pivot;
  CGuiWidget* x24c_basewidget_leftside;
  CGuiWidget* x250_basewidget_rightside;
  CGuiTextPane* x254_flat_textpane_scanning;
  CGuiWidget* x258_flat_basewidget_scanguage;
  CAuiEnergyBarT01* x25c_flat_energybart01_scanbar;
  CGuiWidget* x260_flat_basewidget_textgroup;
  CGuiTextPane* x264_flat_textpane_message;
  CGuiTextPane* x268_flat_textpane_scrollmessage;
  CGuiModel* x26c_flat_model_xmark;
  CGuiModel* x270_flat_model_abutton;
  CGuiModel* x274_flat_model_dash;
};
CHECK_SIZEOF(CHudDecoInterfaceScan, 0x278)

class CHudDecoInterfaceXRay : public IHudDecoInterface {
public:
  void SetIsVisibleDebug(const bool visible) override;
  void SetIsVisibleGame(bool visible) override;
  void SetHudRotation(const CQuaternion& rotation) override;
  void SetHudOffset(const CVector3f& offset) override;
  void SetReticuleTransform(const CMatrix3f& transform) override;
  void SetDecoRotation(float angle) override;
  void SetDamageTransform(const CMatrix3f& rotation, const CVector3f& position) override;
  void SetFrameColorValue(float value) override;
  void Update(float dt, const CStateManager& mgr) override;
  void UpdateCameraDebugSettings(float fov, float y, float z) override;
  void UpdateHudAlpha() override;
  ~CHudDecoInterfaceXRay() override;
  explicit CHudDecoInterfaceXRay(CGuiFrame& hud);

private:
  float x4_seekerScale;
  CQuaternion x8_rotation;
  CVector3f x18_pivotPosition;
  CVector3f x24_offset;
  CVector3f x30_camPos;
  CMatrix3f x3c_reticuleXf;
  CVector3f x60_seekerPosition;
  CVector3f x6c_;
  CMatrix3f x78_;
  bool x9c_24_visDebug : 1;
  bool x9c_25_visGame : 1;
  CGuiCamera* xa0_camera;
  CGuiWidget* xa4_basewidget_pivot;
  CGuiWidget* xa8_basewidget_seeker;
  CGuiWidget* xac_basewidget_rotate;
};
CHECK_SIZEOF(CHudDecoInterfaceXRay, 0xb0)

class CHudDecoInterfaceThermal : public IHudDecoInterface {
public:
  void SetIsVisibleDebug(const bool visible) override;
  void SetIsVisibleGame(bool visible) override;
  void SetHudRotation(const CQuaternion& rotation) override;
  void SetHudOffset(const CVector3f& offset) override;
  void SetReticuleTransform(const CMatrix3f& transform) override;
  void SetDamageTransform(const CMatrix3f& rotation, const CVector3f& position) override;
  void Update(float dt, const CStateManager& mgr) override;
  void UpdateCameraDebugSettings(float fov, float y, float z) override;
  void UpdateHudAlpha() override;
  ~CHudDecoInterfaceThermal() override;
  explicit CHudDecoInterfaceThermal(CGuiFrame& hud);

private:
  CQuaternion x4_rotation;
  CVector3f x14_pivotPosition;
  CVector3f x20_offset;
  CVector3f x2c_camPos;
  CMatrix3f x38_reticuleXf;
  CVector3f x5c_reticulePosition;
  float x68_lockonScale;
  float x6c_retflashTimer;
  bool x70_24_visDebug : 1;
  bool x70_25_visGame : 1;
  CGuiCamera* x74_camera;
  CGuiWidget* x78_basewidget_pivot;
  CGuiWidget* x7c_basewidget_reticle;
  CGuiModel* x80_model_retflash;
  rstl::vector< rstl::pair< CGuiWidget*, CTransform4f > > x84_lockonWidgets;
};
CHECK_SIZEOF(CHudDecoInterfaceThermal, 0x94)

#endif // _CHUDDECOINTERFACE
