#ifndef _CWIIINPUT
#define _CWIIINPUT

#include "Kyoto/Input/IController.hpp"

#include "rstl/reserved_vector.hpp"
#include "rstl/single_ptr.hpp"

#include <revolution/kpad.h>

class CScalarInputFilter;
class CWiiMotionProcessor;

// Inferred class and method names; the layout and virtual order come from Trilogy.
class CWiiInput : public IController {
public:
  ~CWiiInput() override;
  void Poll() override;
  void Update(float dt) override;
  uint GetDeviceCount() const override;
  CControllerData& GetInput(uint channel) override;
  void SetInput(const CControllerData& input, int channel) override;
  EDeviceType GetControllerType(int channel) const override;
  void SetMotorEnabled(int channel, bool enabled) override;
  void SetMotorState(int channel, EMotorState state) override;
  void SetAcceptAdditionalConnections(bool accept) override;
  CControllerData::EPointerState GetPointerState(int channel) const override;
  uint GetPointerValidFrameCount(int channel) const override;
  uint GetPointerInvalidFrameCount(int channel) const override;
  CVector2f GetPointerPosition(int channel) const override;
  void SetPointerRecenterMode(uint channel, EPointerRecenterMode mode) override;
  bool HasMotionActivity(uint channel) const override;
  virtual float GetMotionIdleTime(uint channel) const;
  virtual bool HasButtonActivity(uint channel) const;
  virtual float GetButtonIdleTime(uint channel) const;
  virtual bool IsControllerIdle(uint channel) const;

  CWiiInput();
  bool Initialize();
  bool IsPointerValid(int channel) const;
  bool IsPointerDevicePresent(int channel) const;
  WPADInfo GetWpadInfo(int channel) const;
  const KPADStatus& GetKpadStatus(int channel) const;

private:
  // Event names inferred from callback writes and deferred dispatch.
  enum EConnectionEvent { kCE_None, kCE_Connected, kCE_Disconnected, kCE_Rejected };
  enum EExtensionEvent { kEE_None, kEE_Wiimote, kEE_Nunchuk, kEE_Classic, kEE_Unsupported };

  // Only construction and copying are observed for this 0x21-byte record.
  struct SUnknownInputData {
    uchar x0_data[32];
    bool x20_24_flag1 : 1;
    bool x20_25_flag2 : 1;
    bool x20_26_flag3 : 1;

    SUnknownInputData() : x20_24_flag1(false), x20_25_flag2(false), x20_26_flag3(false) {}
  };

  static void* AllocateWpadMemory(u32 size);
  static int FreeWpadMemory(void* memory);
  static void WpadInfoCallback(s32 channel, s32 result);
  static void WpadConnectCallback(s32 channel, s32 result);
  static void WpadExtensionCallback(s32 channel, s32 extension);

  void QueueConnectionEvent(int channel, EConnectionEvent event);
  void QueueExtensionEvent(int channel, EExtensionEvent event);
  void ProcessConnectionEvents();
  void ApplyPointerDistanceScale(int channel);
  void UpdatePointerState(int channel);
  void ProcessControllerInput(int channel);
  void UpdateAnalogInput(float threshold, int channel, int axis, CControllerButton& negativeButton,
                         CControllerButton& positiveButton);
  void UpdateContinuousAngleAxis(int channel, int axis);
  void ClearButtonEvents(int channel);
  void UpdateDigitalInput(int channel);
  void UpdateButton(uint heldMask, CControllerButton& button, uint mask);
  void UpdateMotionButton(int channel, CControllerButton& button, uint mask);
  void UpdateMotionButtons(int channel);
  void UpdateSwingButton(int channel, CControllerButton& button, uint mask);
  void UpdateSwingButtons(int channel);
  void UpdateIdleTimes(uint channel, float dt);
  void InitializeController(uint channel);
  void SetControllerType(int channel, EDeviceType type);
  void CopyWpadInfo(int channel);

  rstl::reserved_vector< KPADStatus, 4 > x4_status;
  rstl::reserved_vector< EDeviceType, 4 > x218_controllerTypes;
  rstl::reserved_vector< CControllerData, 4 > x22c_input;
  rstl::reserved_vector< EPointerRecenterMode, 4 > xa60_pointerRecenterMode;
  rstl::reserved_vector< int, 4 > xa74_pointerReacquireFrames;
  rstl::reserved_vector< rstl::single_ptr< CWiiMotionProcessor >, 4 > xa88_motionProcessors;
  rstl::reserved_vector< SUnknownInputData, 4 > xa9c_unknownInputData;
  rstl::reserved_vector< WPADInfo, 4 > xb24_wpadInfo;
  rstl::reserved_vector< WPADInfo, 4 > xb88_wpadInfoBuf;
  rstl::reserved_vector< float, 4 > xbec_infoPollTimers;
  rstl::reserved_vector< float, 4 > xc00_motionIdleTimes;
  rstl::reserved_vector< float, 4 > xc14_buttonIdleTimes;
  rstl::reserved_vector< EConnectionEvent, 4 > xc28_pendingConnectionEvents;
  rstl::reserved_vector< EExtensionEvent, 4 > xc3c_pendingExtensionEvents;
  rstl::reserved_vector< rstl::single_ptr< CScalarInputFilter >, 4 > xc50_pointerFilterX;
  rstl::reserved_vector< rstl::single_ptr< CScalarInputFilter >, 4 > xc64_pointerFilterY;
  uint xc78_motorEnabledFlags : 4;
  float xc7c_pointerMinDistance;
  float xc80_pointerMaxDistance;
  float xc84_pointerMinScale;
  float xc88_pointerMaxScale;
  bool xc8c_acceptAdditionalConnections;
};
CHECK_SIZEOF(CWiiInput, 0xc90)

#endif // _CWIIINPUT
