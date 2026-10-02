#ifndef _CWIIMOTIONPROCESSOR
#define _CWIIMOTIONPROCESSOR

#include "types.h"

#include "Kyoto/Input/CInputFilter.hpp"
#include "Kyoto/Math/CMatrix3f.hpp"
#include "Kyoto/Math/CVector3f.hpp"

#include "rstl/reserved_vector.hpp"

#include <revolution/wpad.h>

CHECK_SIZEOF(WPADFSStatus, 0x32)

// Motion class and method names are inferred from the Trilogy implementation.
class CBiquadFilter {
public:
  CBiquadFilter()
  : x0_previousInput(0.f)
  , x4_olderInput(0.f)
  , x8_previousOutput(0.f)
  , xc_olderOutput(0.f)
  , x10_initialized(false) {}

  float Filter(float value, float b0, float b1, float b2, float a1, float a2);

private:
  float ProcessSample(float value, float b0, float b1, float b2, float a1, float a2);

  float x0_previousInput;
  float x4_olderInput;
  float x8_previousOutput;
  float xc_olderOutput;
  bool x10_initialized;
};
CHECK_SIZEOF(CBiquadFilter, 0x14)

class CVectorBiquadFilter {
public:
  CVectorBiquadFilter() : x64_filteredVector(CVector3f::Zero()), x70_filteredMagnitude(0.f) {}

  void Update(const CVector3f& value, float magnitude);
  void SetCoefficients(float b0, float b1, float b2, float a1, float a2);
  const CVector3f& GetFilteredVector() const { return x64_filteredVector; }
  float GetFilteredMagnitude() const { return x70_filteredMagnitude; }

private:
  CBiquadFilter x0_xFilter;
  CBiquadFilter x14_yFilter;
  CBiquadFilter x28_zFilter;
  CBiquadFilter x3c_magnitudeFilter;
  float x50_feedforward[3];
  float x5c_feedback[2];
  CVector3f x64_filteredVector;
  float x70_filteredMagnitude;
};
CHECK_SIZEOF(CVectorBiquadFilter, 0x74)

class CMotionSampleHistory {
public:
  CMotionSampleHistory();
  void AddSample(const CVector3f& acceleration, const CVector3f& gravityUnits, float deadzone);
  int GetSampleCount() const { return x4_samples.size(); }
  const CVector3f& GetSample(uint index) const { return x4_samples[index]; }
  uint GetWriteIndex() const { return x0_writeIndex; }

private:
  uint x0_writeIndex;
  rstl::reserved_vector< CVector3f, 30 > x4_samples;
};
CHECK_SIZEOF(CMotionSampleHistory, 0x170)

class CMotionGesture {
public:
  CMotionGesture(int axis, int negativeDirection, float startThreshold, float releaseThreshold)
  : x0_startThreshold(startThreshold)
  , x4_releaseThreshold(releaseThreshold)
  , x8_completedImpulse(0.f)
  , xc_currentImpulse(0.f)
  , x10_axis(axis)
  , x14_negativeDirection(negativeDirection)
  , x18_24_active(false)
  , x18_25_completed(false) {}

  void Reset();
  void Update(const CVector3f& acceleration, float dt);
  bool IsCompleted() const { return x18_25_completed; }
  float GetCompletedImpulse() const { return x8_completedImpulse; }

private:
  float x0_startThreshold;
  float x4_releaseThreshold;
  float x8_completedImpulse;
  float xc_currentImpulse;
  int x10_axis;
  int x14_negativeDirection;
  bool x18_24_active : 1;
  bool x18_25_completed : 1;
};
CHECK_SIZEOF(CMotionGesture, 0x1c)

class CMotionDeviceTracker {
public:
  CMotionDeviceTracker(int device, int channel, int orientationMode, int mode, int fullAngleMode,
                       float motionThreshold);
  void Reset();
  void Update(const WPADFSStatus& status, const CVector3f& gravityUnits, float dt);
  float Filter(int filter, float value);
  CMotionGesture& PositiveZ() { return x6c_positiveZ; }
  CMotionGesture& NegativeZ() { return x88_negativeZ; }
  CMotionGesture& NegativeX() { return xa4_negativeX; }
  CMotionGesture& PositiveX() { return xc0_positiveX; }
  uint GetSwingMask() const;
  float GetMotionIntegral() const { return x28_motionIntegral; }
  float GetWrappedRoll() const { return x3c_wrappedRoll; }
  float GetWrappedPitch() const { return x50_wrappedPitch; }
  float GetContinuousRoll() const { return x40_continuousRoll; }
  float GetContinuousPitch() const { return x54_continuousPitch; }

private:
  int x0_device;
  int x4_channel;
  float x8_motionMagnitude;
  CVector3f xc_normalizedAcceleration;
  CVector3f x18_filteredAcceleration;
  float x24_motionThreshold;
  float x28_motionIntegral;
  CVector3f x2c_positiveAxisIntegrals;
  float x38_roll;
  float x3c_wrappedRoll;
  float x40_continuousRoll;
  float x44_previousRoll;
  float x48_rollWrapOffset;
  float x4c_pitch;
  float x50_wrappedPitch;
  float x54_continuousPitch;
  float x58_previousPitch;
  float x5c_pitchWrapOffset;
  int x60_orientationMode;
  int x64_mode;
  int x68_fullAngleMode;
  CMotionGesture x6c_positiveZ;
  CMotionGesture x88_negativeZ;
  CMotionGesture xa4_negativeX;
  CMotionGesture xc0_positiveX;
  CMotionSampleHistory xdc_history;
  rstl::reserved_vector< CAdaptiveInputFilter, 10 > x24c_filters;
};
CHECK_SIZEOF(CMotionDeviceTracker, 0x980)

struct KPADStatus;

class CWiiMotionProcessor {
public:
  struct SDeviceSample {
    SDeviceSample()
    : x0_acceleration(CVector3f::Zero())
    , xc_lowPassAcceleration(CVector3f::Zero())
    , x18_lowPassMagnitude(0.f)
    , x1c_highPassAcceleration(CVector3f::Zero())
    , x28_highPassMagnitude(0.f)
    , x2c_basisZ(CVector3f::Zero())
    , x38_basis(CMatrix3f::Identity()) {}

    SDeviceSample& operator+=(const SDeviceSample& other) {
      x0_acceleration += other.x0_acceleration;
      xc_lowPassAcceleration += other.xc_lowPassAcceleration;
      x18_lowPassMagnitude += other.x18_lowPassMagnitude;
      x1c_highPassAcceleration += other.x1c_highPassAcceleration;
      x28_highPassMagnitude += other.x28_highPassMagnitude;
      x2c_basisZ += other.x2c_basisZ;
      return *this;
    }

    SDeviceSample& operator*=(float scale) {
      x0_acceleration *= scale;
      xc_lowPassAcceleration *= scale;
      x18_lowPassMagnitude *= scale;
      x1c_highPassAcceleration *= scale;
      x28_highPassMagnitude *= scale;
      x2c_basisZ *= scale;
      return *this;
    }

    CVector3f x0_acceleration;
    CVector3f xc_lowPassAcceleration;
    float x18_lowPassMagnitude;
    CVector3f x1c_highPassAcceleration;
    float x28_highPassMagnitude;
    CVector3f x2c_basisZ;
    CMatrix3f x38_basis;
  };

  struct SPairedSample {
    void Update(CWiiMotionProcessor& processor, const WPADFSStatus& status);

    SDeviceSample x0_wiimote;
    SDeviceSample x5c_nunchuk;

  private:
    void UpdateDeviceSample(CVectorBiquadFilter& lowPass, CVectorBiquadFilter& highPass,
                            const WPADFSStatus& status, SDeviceSample& result, int device);
  };

  struct SMotionPulseState {
    SMotionPulseState() : x0_impulseTime(0.f), x4_shakeTime(0.f), x8_shakeMask(0) {}

    float x0_impulseTime;
    float x4_shakeTime;
    uint x8_shakeMask;
  };

  CWiiMotionProcessor(int channel, int unused);
  void Update(const WPADFSStatus& status, const KPADStatus& kpadStatus, float dt);
  void UpdateAverage();
  uint UpdateDirectionalGestures(CMotionDeviceTracker& tracker, const WPADFSStatus& status,
                                 int device, float dt);
  uint UpdatePulseGestures(const SDeviceSample& sample, SMotionPulseState& state, int device,
                           float dt);
  void ConfigureFiltersAndCalibration(int channel);
  uint GetSwingMask(int device) const;
  uint GetMotionIntegralMask(const CMotionDeviceTracker& tracker, int device, float dt) const;
  const CMotionDeviceTracker& GetWiimoteTracker() const { return xdb20_wiimote; }
  const CMotionDeviceTracker& GetNunchukTracker() const { return xe4a0_nunchuk; }
  uint GetMotionMask() const { return xeefc_motionMask; }
  uint GetSwingMask() const { return xef00_swingMask; }
  static CVector3f GetAcceleration(const WPADFSStatus& status, int device);
  static CVector3f ApplyAccelerationDeadzone(const CVector3f& acceleration,
                                             const CVector3f& gravityUnits, float deadzone);
  static CVector3f NormalizeAcceleration(const CVector3f& acceleration,
                                         const CVector3f& gravityUnits);

private:
  friend struct SPairedSample;

  rstl::reserved_vector< SPairedSample, 301 > x0_history;
  int xd85c_previousIndex;
  int xd860_writeIndex;
  WPADFSStatus xd864_status;
  SPairedSample xd898_latestSample;
  CVectorBiquadFilter xd950_wiimoteLowPass;
  CVectorBiquadFilter xd9c4_wiimoteHighPass;
  CVectorBiquadFilter xda38_nunchukLowPass;
  CVectorBiquadFilter xdaac_nunchukHighPass;
  CMotionDeviceTracker xdb20_wiimote;
  CMotionDeviceTracker xe4a0_nunchuk;
  SPairedSample xee20_averageSample;
  float xeed8_sampleWeight;
  bool xeedc_flag;
  float xeee0_;
  SMotionPulseState xeee4_wiimotePulses;
  SMotionPulseState xeef0_nunchukPulses;
  uint xeefc_motionMask;
  uint xef00_swingMask;
  CVector3f xef04_wiimoteGravityUnits;
  CVector3f xef10_nunchukGravityUnits;
};
CHECK_SIZEOF(CWiiMotionProcessor, 0xef1c)
NESTED_CHECK_SIZEOF(CWiiMotionProcessor, SDeviceSample, 0x5c)
NESTED_CHECK_SIZEOF(CWiiMotionProcessor, SPairedSample, 0xb8)
NESTED_CHECK_SIZEOF(CWiiMotionProcessor, SMotionPulseState, 0xc)

#endif // _CWIIMOTIONPROCESSOR
