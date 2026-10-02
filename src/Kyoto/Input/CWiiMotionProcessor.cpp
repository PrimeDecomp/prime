#include "Kyoto/Input/CWiiMotionProcessor.hpp"

#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Math/CloseEnough.hpp"

#include <dolphin/os/OSFastCast.h>
#include <math.h>

CMotionSampleHistory::CMotionSampleHistory() : x0_writeIndex(0), x4_samples(CVector3f::Zero()) {}

void CMotionSampleHistory::AddSample(const CVector3f& acceleration, const CVector3f& gravityUnits,
                                     float deadzone) {
  x4_samples[x0_writeIndex] = CWiiMotionProcessor::NormalizeAcceleration(
      CWiiMotionProcessor::ApplyAccelerationDeadzone(acceleration, gravityUnits, deadzone),
      gravityUnits);
  x0_writeIndex = (x0_writeIndex + 1) % 30;
}

uint CMotionDeviceTracker::GetSwingMask() const {
  uint maximumIndex;
  uint minimumIndex;
  uint result = 0;
  {
    float maximum = 0.f;
    float minimum = 0.f;
    maximumIndex = 0;
    minimumIndex = 0;
    float upper = 0.3f;
    float lower = -0.2f;
    uint index = xdc_history.GetWriteIndex() == 0 ? 29 : xdc_history.GetWriteIndex() - 1;
    for (int i = 0; i < xdc_history.GetSampleCount(); ++i) {
      const CVector3f& sample = xdc_history.GetSample(index);
      if (sample.GetY() > maximum) {
        maximum = sample.GetY();
        maximumIndex = index;
      }
      if (sample.GetY() < minimum) {
        minimum = sample.GetY();
        minimumIndex = index;
      }
      index = index == 0 ? 29 : index - 1;
    }
    if (maximum > upper && minimum < lower && maximumIndex < minimumIndex) {
      result |= 2;
    } else if (maximum > upper && minimum < lower && minimumIndex < maximumIndex) {
      result |= 1;
    }
  }

  {
    float maximum = 0.f;
    float minimum = 0.f;
    maximumIndex = 0;
    minimumIndex = 0;
    float upper = 0.2f;
    float lower = -0.1f;
    uint index = xdc_history.GetWriteIndex() == 0 ? 29 : xdc_history.GetWriteIndex() - 1;
    for (int i = 0; i < xdc_history.GetSampleCount(); ++i) {
      const CVector3f& sample = xdc_history.GetSample(index);
      if (sample.GetX() > maximum) {
        maximum = sample.GetX();
        maximumIndex = index;
      }
      if (sample.GetX() < minimum) {
        minimum = sample.GetX();
        minimumIndex = index;
      }
      index = index == 0 ? 29 : index - 1;
    }
    if (maximum > upper && minimum < lower && maximumIndex < minimumIndex) {
      result |= 8;
    } else if (maximum > upper && minimum < lower && minimumIndex < maximumIndex) {
      result |= 4;
    }
  }

  {
    float maximum = 0.f;
    float minimum = 0.f;
    maximumIndex = 0;
    minimumIndex = 0;
    float upper = 0.1f;
    float lower = 0.f;
    uint index = xdc_history.GetWriteIndex() == 0 ? 29 : xdc_history.GetWriteIndex() - 1;
    for (int i = 0; i < xdc_history.GetSampleCount(); ++i) {
      const CVector3f& sample = xdc_history.GetSample(index);
      if (sample.GetZ() > maximum) {
        maximum = sample.GetZ();
        maximumIndex = index;
      }
      if (sample.GetZ() < minimum) {
        minimum = sample.GetZ();
        minimumIndex = index;
      }
      index = index == 0 ? 29 : index - 1;
    }
    if (maximum > upper && minimum < lower && maximumIndex < minimumIndex) {
      result |= 16;
    } else if (maximum > upper && minimum < lower && minimumIndex < maximumIndex) {
      result |= 32;
    }
  }
  return result;
}

CMotionDeviceTracker::CMotionDeviceTracker(int device, int channel, int orientationMode, int mode,
                                           int fullAngleMode, float motionThreshold)
: x0_device(device)
, x4_channel(channel)
, x8_motionMagnitude(0.f)
, xc_normalizedAcceleration(CVector3f::Zero())
, x18_filteredAcceleration(CVector3f::Zero())
, x24_motionThreshold(motionThreshold)
, x28_motionIntegral(0.f)
, x2c_positiveAxisIntegrals(CVector3f::Zero())
, x38_roll(0.f)
, x3c_wrappedRoll(0.f)
, x40_continuousRoll(0.f)
, x44_previousRoll(0.f)
, x48_rollWrapOffset(0.f)
, x4c_pitch(0.f)
, x50_wrappedPitch(0.f)
, x54_continuousPitch(0.f)
, x58_previousPitch(0.f)
, x5c_pitchWrapOffset(0.f)
, x60_orientationMode(orientationMode)
, x64_mode(mode)
, x68_fullAngleMode(fullAngleMode)
, x6c_positiveZ(2, 0, 1.2f, 0.4f)
, x88_negativeZ(2, 1, 1.6f, 0.2f)
, xa4_negativeX(0, 1, 1.6f, 0.2f)
, xc0_positiveX(0, 0, 1.6f, 0.2f) {
  for (int i = 0; i < 10; ++i) {
    x24c_filters.push_back(CAdaptiveInputFilter(1, 0, 0, 0.1f));
  }
}

float CBiquadFilter::ProcessSample(float value, float b0, float b1, float b2, float a1, float a2) {
  const float result = b0 * value + b1 * x0_previousInput + b2 * x4_olderInput -
                       a1 * x8_previousOutput - a2 * xc_olderOutput;
  x4_olderInput = x0_previousInput;
  x0_previousInput = value;
  xc_olderOutput = x8_previousOutput;
  x8_previousOutput = result;
  return result;
}

float CBiquadFilter::Filter(float value, float b0, float b1, float b2, float a1, float a2) {
  if (!x10_initialized) {
    for (int i = 0; i < 100; ++i) {
      ProcessSample(value, b0, b1, b2, a1, a2);
    }
    x10_initialized = true;
  }
  return ProcessSample(value, b0, b1, b2, a1, a2);
}

void CVectorBiquadFilter::SetCoefficients(float b0, float b1, float b2, float a1, float a2) {
  x50_feedforward[0] = b0;
  x50_feedforward[1] = b1;
  x50_feedforward[2] = b2;
  x5c_feedback[0] = a1;
  x5c_feedback[1] = a2;
}

void CVectorBiquadFilter::Update(const CVector3f& value, float magnitude) {
  x64_filteredVector.SetX(x0_xFilter.Filter(value.GetX(), x50_feedforward[0], x50_feedforward[1],
                                            x50_feedforward[2], x5c_feedback[0], x5c_feedback[1]));
  x64_filteredVector.SetY(x14_yFilter.Filter(value.GetY(), x50_feedforward[0], x50_feedforward[1],
                                             x50_feedforward[2], x5c_feedback[0], x5c_feedback[1]));
  x64_filteredVector.SetZ(x28_zFilter.Filter(value.GetZ(), x50_feedforward[0], x50_feedforward[1],
                                             x50_feedforward[2], x5c_feedback[0], x5c_feedback[1]));
  x70_filteredMagnitude =
      x3c_magnitudeFilter.Filter(magnitude, x50_feedforward[0], x50_feedforward[1],
                                 x50_feedforward[2], x5c_feedback[0], x5c_feedback[1]);
}

void CWiiMotionProcessor::SPairedSample::Update(CWiiMotionProcessor& processor,
                                                const WPADFSStatus& status) {
  UpdateDeviceSample(processor.xd950_wiimoteLowPass, processor.xd9c4_wiimoteHighPass, status,
                     x0_wiimote, 0);
  UpdateDeviceSample(processor.xda38_nunchukLowPass, processor.xdaac_nunchukHighPass, status,
                     x5c_nunchuk, 1);
}

void CWiiMotionProcessor::SPairedSample::UpdateDeviceSample(CVectorBiquadFilter& lowPass,
                                                            CVectorBiquadFilter& highPass,
                                                            const WPADFSStatus& status,
                                                            SDeviceSample& result, int device) {
  result.x0_acceleration = GetAcceleration(status, device);
  const float magnitude = CMath::FastSqrtF(result.x0_acceleration.MagSquared());
  lowPass.Update(result.x0_acceleration, magnitude);
  result.xc_lowPassAcceleration = lowPass.GetFilteredVector();
  result.x18_lowPassMagnitude = lowPass.GetFilteredMagnitude();
  highPass.Update(result.x0_acceleration, magnitude);
  result.x1c_highPassAcceleration = highPass.GetFilteredVector();
  result.x28_highPassMagnitude = highPass.GetFilteredMagnitude();
  result.x2c_basisZ =
      CVector3f(result.x38_basis.Get02(), result.x38_basis.Get12(), result.x38_basis.Get22());
}

CVector3f CWiiMotionProcessor::GetAcceleration(const WPADFSStatus& status, int device) {
  if (device == 0) {
    float x = status.accX;
    float y = status.accY;
    float z = status.accZ;
    float scale = 1.f / 512.f;
    return CVector3f(scale * x, scale * y, scale * z);
  }
  float x = status.fsAccX;
  float y = status.fsAccY;
  float z = status.fsAccZ;
  float scale = 1.f / 512.f;
  return CVector3f(scale * x, scale * y, scale * z);
}

void CWiiMotionProcessor::UpdateAverage() {
  int sampleCount = 4;
  float weight = xeed8_sampleWeight;
  if (sampleCount < weight) {
    weight = sampleCount;
  }
  xeed8_sampleWeight = weight;
  int index = xd860_writeIndex - int(xeed8_sampleWeight) + 1;
  if (index < 0) {
    index += 301;
  }
  xee20_averageSample = SPairedSample();
  CVector3f wiimoteY = CVector3f::Zero();
  CVector3f wiimoteX = CVector3f::Zero();
  CVector3f nunchukY = CVector3f::Zero();
  CVector3f nunchukX = CVector3f::Zero();
  float count = 0.f;
  do {
    const SPairedSample& sample = x0_history[index];
    xee20_averageSample.x0_wiimote += sample.x0_wiimote;
    wiimoteY += sample.x0_wiimote.x38_basis.GetColumn(kDY);
    wiimoteX += sample.x0_wiimote.x38_basis.GetColumn(kDX);
    xee20_averageSample.x5c_nunchuk += sample.x5c_nunchuk;
    nunchukY += sample.x5c_nunchuk.x38_basis.GetColumn(kDY);
    nunchukX += sample.x5c_nunchuk.x38_basis.GetColumn(kDX);
    index = (index + 1) % 301;
    count += 1.f;
  } while (index != xd860_writeIndex);

  const float scale = 1.f / count;
  xee20_averageSample.x0_wiimote *= scale;
  wiimoteY.Normalize();
  CVector3f z = CVector3f::Cross(wiimoteX, wiimoteY);
  z.Normalize();
  wiimoteX = CVector3f::Cross(wiimoteY, z);
  const CMatrix3f wiimoteBasis(wiimoteX, wiimoteY, z);
  xee20_averageSample.x0_wiimote.x38_basis = wiimoteBasis;
  xee20_averageSample.x5c_nunchuk *= scale;
  nunchukY.Normalize();
  z = CVector3f::Cross(nunchukX, nunchukY);
  z.Normalize();
  nunchukX = CVector3f::Cross(nunchukY, z);
  const CMatrix3f nunchukBasis(nunchukX, nunchukY, z);
  xee20_averageSample.x5c_nunchuk.x38_basis = nunchukBasis;
}

void CMotionGesture::Update(const CVector3f& acceleration, float dt) {
  float axis = 0.f;
  float impulse = 0.f;
  switch (x10_axis) {
  case 0:
    axis = acceleration.GetX();
    impulse = acceleration.GetY();
    break;
  case 2:
    axis = acceleration.GetZ();
    impulse = acceleration.GetY();
    break;
  }

  if (x18_24_active) {
    if (x14_negativeDirection == 0) {
      if (axis < x4_releaseThreshold) {
        x18_25_completed = true;
        x18_24_active = false;
        x8_completedImpulse = xc_currentImpulse;
        xc_currentImpulse = 0.f;
      }
    } else if (axis > -x4_releaseThreshold) {
      x18_25_completed = true;
      x18_24_active = false;
      x8_completedImpulse = xc_currentImpulse;
      xc_currentImpulse = 0.f;
    }
  } else {
    x18_25_completed = false;
    if (impulse > 0.f) {
      xc_currentImpulse += impulse * dt;
    } else {
      xc_currentImpulse = 0.f;
    }

    if (x14_negativeDirection == 0) {
      if (axis > x0_startThreshold) {
        x18_24_active = true;
      }
    } else if (axis < -x0_startThreshold) {
      x18_24_active = true;
    }
  }
}

void CMotionGesture::Reset() {
  x0_startThreshold = 0.f;
  x4_releaseThreshold = 0.f;
  xc_currentImpulse = 0.f;
  x18_24_active = false;
  x18_25_completed = false;
}

float CMotionDeviceTracker::Filter(int filter, float value) {
  return x24c_filters[filter].Filter(value);
}

void CMotionDeviceTracker::Reset() {
  x8_motionMagnitude = 0.f;
  xc_normalizedAcceleration = CVector3f::Zero();
  x18_filteredAcceleration = CVector3f::Zero();
  x2c_positiveAxisIntegrals = CVector3f::Zero();
  x38_roll = 0.f;
  x3c_wrappedRoll = 0.f;
  x40_continuousRoll = 0.f;
  x44_previousRoll = 0.f;
  x48_rollWrapOffset = 0.f;
  x4c_pitch = 0.f;
  x50_wrappedPitch = 0.f;
  x54_continuousPitch = 0.f;
  x58_previousPitch = 0.f;
  x5c_pitchWrapOffset = 0.f;
  x88_negativeZ.Reset();
  x6c_positiveZ.Reset();
  xa4_negativeX.Reset();
  xc0_positiveX.Reset();
}

void CMotionDeviceTracker::Update(const WPADFSStatus& status, const CVector3f& gravityUnits,
                                  float dt) {
  float deadzone;
  switch (x0_device) {
  case 0:
    xc_normalizedAcceleration[kDX] = status.accX;
    xc_normalizedAcceleration[kDY] = status.accY;
    xc_normalizedAcceleration[kDZ] = status.accZ;
    deadzone = 90.f;
    break;
  case 1:
    xc_normalizedAcceleration[kDX] = status.fsAccX;
    xc_normalizedAcceleration[kDY] = status.fsAccY;
    xc_normalizedAcceleration[kDZ] = status.fsAccZ;
    deadzone = 50.f;
    break;
  default:
    return;
  }
  const CVector3f rawAcceleration = xc_normalizedAcceleration;
  xdc_history.AddSample(xc_normalizedAcceleration, gravityUnits, deadzone);
  xc_normalizedAcceleration =
      CWiiMotionProcessor::NormalizeAcceleration(xc_normalizedAcceleration, gravityUnits);
  {
    const float& limit = 1.f;
    xc_normalizedAcceleration.SetX(
        CMath::FastMin(CMath::FastMax(-limit, xc_normalizedAcceleration.GetX()), limit));
    xc_normalizedAcceleration.SetY(
        CMath::FastMin(CMath::FastMax(-limit, xc_normalizedAcceleration.GetY()), limit));
    xc_normalizedAcceleration.SetZ(
        CMath::FastMin(CMath::FastMax(-limit, xc_normalizedAcceleration.GetZ()), limit));
  }
  switch (x0_device) {
  case 0:
    x18_filteredAcceleration.SetX(Filter(0, xc_normalizedAcceleration.GetX()));
    x18_filteredAcceleration.SetY(Filter(1, xc_normalizedAcceleration.GetY()));
    x18_filteredAcceleration.SetZ(Filter(2, xc_normalizedAcceleration.GetZ()));
    break;
  case 1:
    x18_filteredAcceleration.SetX(Filter(5, xc_normalizedAcceleration.GetX()));
    x18_filteredAcceleration.SetY(Filter(6, xc_normalizedAcceleration.GetY()));
    x18_filteredAcceleration.SetZ(Filter(7, xc_normalizedAcceleration.GetZ()));
    break;
  default:
    return;
  }
  if (x60_orientationMode == 1) {
    const float y = xc_normalizedAcceleration.GetY();
    xc_normalizedAcceleration.SetY(xc_normalizedAcceleration.GetX());
    xc_normalizedAcceleration.SetX(-y);
  }
  if (x68_fullAngleMode == 1) {
    const float z = xc_normalizedAcceleration.GetZ();
    float magnitude =
        sqrtf(xc_normalizedAcceleration.GetX() * xc_normalizedAcceleration.GetX() + z * z);
    if (CMath::IsEpsilon(magnitude, 0.f, 0.00001f)) {
      magnitude = 1.f;
    }
    if (xc_normalizedAcceleration.GetX() >= 0.f) {
      const float& limit = 1.f;
      x38_roll = static_cast< float >(asin(CMath::FastMin(
          CMath::FastMax(-limit, xc_normalizedAcceleration.GetX() / magnitude), limit)));
    } else {
      const float& limit = 1.f;
      x38_roll = -static_cast< float >(asin(CMath::FastMin(
          CMath::FastMax(-limit, -xc_normalizedAcceleration.GetX() / magnitude), limit)));
    }
    if (x0_device == 1) {
      x38_roll = Filter(8, x38_roll);
    } else {
      x38_roll = Filter(3, x38_roll);
    }
    x3c_wrappedRoll = x38_roll;
    if (z < 0.f) {
      if (xc_normalizedAcceleration.GetX() < 0.f) {
        x3c_wrappedRoll = -M_PIF - x38_roll;
      } else {
        x3c_wrappedRoll = M_PIF - x38_roll;
      }
    }
    if (x44_previousRoll > M_PIF / 2.f && x3c_wrappedRoll < -M_PIF / 2.f) {
      x48_rollWrapOffset += M_2PIF;
    } else if (x44_previousRoll < -M_PIF / 2.f && x3c_wrappedRoll > M_PIF / 2.f) {
      x48_rollWrapOffset -= M_2PIF;
    }
    x44_previousRoll = x3c_wrappedRoll;
    x40_continuousRoll = x3c_wrappedRoll + x48_rollWrapOffset;

    const float pitchZ = xc_normalizedAcceleration.GetZ();
    magnitude = sqrtf(pitchZ * pitchZ +
                      xc_normalizedAcceleration.GetY() * xc_normalizedAcceleration.GetY());
    magnitude = CMath::FastMin(CMath::FastMax(0.f, magnitude), 1.f);
    if (CMath::IsEpsilon(magnitude, 0.f, 0.00001f)) {
      magnitude = 1.f;
    }
    if (xc_normalizedAcceleration.GetZ() >= 0.f) {
      x4c_pitch = static_cast< float >(asin(xc_normalizedAcceleration.GetY() / magnitude));
    } else {
      x4c_pitch = -static_cast< float >(asin(-xc_normalizedAcceleration.GetY() / magnitude));
    }
    if (x0_device == 1) {
      x4c_pitch = Filter(9, x4c_pitch);
    } else {
      x4c_pitch = Filter(4, x4c_pitch);
    }
    x50_wrappedPitch = x4c_pitch;
    if (pitchZ < 0.f) {
      if (xc_normalizedAcceleration.GetY() < 0.f) {
        x50_wrappedPitch = -M_PIF - x4c_pitch;
      } else {
        x50_wrappedPitch = M_PIF - x4c_pitch;
      }
    }
    if (x58_previousPitch > M_PIF / 2.f && x50_wrappedPitch < -M_PIF / 2.f) {
      x5c_pitchWrapOffset += M_2PIF;
    } else if (x58_previousPitch < -M_PIF / 2.f && x50_wrappedPitch > M_PIF / 2.f) {
      x5c_pitchWrapOffset -= M_2PIF;
    }
    x58_previousPitch = x50_wrappedPitch;
    x54_continuousPitch = x50_wrappedPitch + x5c_pitchWrapOffset;

    CVector3f motion = rawAcceleration;
    motion = CWiiMotionProcessor::ApplyAccelerationDeadzone(motion, gravityUnits, deadzone);
    motion = CWiiMotionProcessor::NormalizeAcceleration(motion, gravityUnits);
    if (x60_orientationMode == 1) {
      x8_motionMagnitude = sqrtf(motion.GetX() * motion.GetX() + motion.GetZ() * motion.GetZ());
    } else {
      x8_motionMagnitude = sqrtf(motion.GetY() * motion.GetY() + motion.GetZ() * motion.GetZ());
    }
  } else {
    {
      const float& limit = 1.f;
      xc_normalizedAcceleration.SetX(
          CMath::FastMin(CMath::FastMax(-limit, xc_normalizedAcceleration.GetX()), limit));
    }
    float roll;
    if (xc_normalizedAcceleration.GetX() >= 0.f) {
      roll = static_cast< float >(asin(xc_normalizedAcceleration.GetX()));
    } else {
      roll = -static_cast< float >(asin(-xc_normalizedAcceleration.GetX()));
    }
    int rollFilter = 0;
    if (x0_device == 1) {
      rollFilter = 5;
    }
    x38_roll = Filter(rollFilter, roll);
    {
      const float& limit = 1.f;
      xc_normalizedAcceleration.SetY(
          CMath::FastMin(CMath::FastMax(-limit, xc_normalizedAcceleration.GetY()), limit));
    }
    float pitch;
    if (xc_normalizedAcceleration.GetY() >= 0.f) {
      pitch = static_cast< float >(asin(xc_normalizedAcceleration.GetY()));
    } else {
      pitch = -static_cast< float >(asin(-xc_normalizedAcceleration.GetY()));
    }
    int pitchFilter = 1;
    if (x0_device == 1) {
      pitchFilter = 6;
    }
    x4c_pitch = Filter(pitchFilter, pitch);
  }

  const float& magnitudeRef = x8_motionMagnitude;
  const float motionMagnitude = CMath::AbsF(magnitudeRef);
  x28_motionIntegral += x8_motionMagnitude * dt;
  if (motionMagnitude < 0.1f) {
    x28_motionIntegral = 0.f;
  }
  CVector3f motion = rawAcceleration;
  motion = CWiiMotionProcessor::ApplyAccelerationDeadzone(motion, gravityUnits, deadzone);
  if (motion.GetX() > 0.1f * dt) {
    x2c_positiveAxisIntegrals[kDX] += dt * motion.GetX();
  } else {
    x2c_positiveAxisIntegrals.SetX(0.f);
  }
  if (motion.GetY() > 0.1f * dt) {
    x2c_positiveAxisIntegrals[kDY] += dt * motion.GetY();
  } else {
    x2c_positiveAxisIntegrals.SetY(0.f);
  }
  if (motion.GetZ() > 0.1f * dt) {
    x2c_positiveAxisIntegrals[kDZ] += dt * motion.GetZ();
  } else {
    x2c_positiveAxisIntegrals.SetZ(0.f);
  }
}

void CWiiMotionProcessor::Update(const WPADFSStatus& status, const KPADStatus& kpadStatus,
                                 float dt) {
  xd85c_previousIndex = xd860_writeIndex;
  ++xd860_writeIndex;
  if (xd860_writeIndex >= 301) {
    xd860_writeIndex = 0;
  }
  int remaining = xd860_writeIndex - xd85c_previousIndex;
  if (xd85c_previousIndex > xd860_writeIndex) {
    remaining = xd860_writeIndex + 301 - xd85c_previousIndex;
  }
  int index = xd85c_previousIndex;
  SPairedSample* sample = &x0_history[index];
  for (; remaining != 0;) {
    ++index;
    --remaining;
    xeed8_sampleWeight += 0.1f;
    index %= 301;
    sample = &x0_history[index];
    sample->Update(*this, status);
  }
  xdb20_wiimote.Update(status, xef04_wiimoteGravityUnits, dt);
  xe4a0_nunchuk.Update(status, xef10_nunchukGravityUnits, dt);
  uint motionMask = UpdatePulseGestures(sample->x0_wiimote, xeee4_wiimotePulses, 0, dt);
  motionMask |= UpdatePulseGestures(sample->x5c_nunchuk, xeef0_nunchukPulses, 1, dt);
  motionMask |= UpdateDirectionalGestures(xdb20_wiimote, status, 0, dt);
  motionMask |= UpdateDirectionalGestures(xe4a0_nunchuk, status, 1, dt);
  motionMask |= GetMotionIntegralMask(xdb20_wiimote, 0, dt);
  motionMask |= GetMotionIntegralMask(xe4a0_nunchuk, 1, dt);
  xd864_status = status;
  xd898_latestSample = x0_history[xd860_writeIndex];
  xeefc_motionMask = motionMask;
  xef00_swingMask = GetSwingMask(0) | GetSwingMask(1);
  UpdateAverage();
}

uint CWiiMotionProcessor::UpdateDirectionalGestures(CMotionDeviceTracker& tracker,
                                                    const WPADFSStatus& status, int device,
                                                    float dt) {
  uint result = 0;
  if (device == 1) {
    CVector3f acceleration(status.fsAccX, status.fsAccY, status.fsAccZ);
    acceleration = ApplyAccelerationDeadzone(acceleration, xef10_nunchukGravityUnits, 50.f);
    acceleration = NormalizeAcceleration(acceleration, xef10_nunchukGravityUnits);
    const float& limit = 1.f;
    acceleration.SetX(CMath::FastMin(CMath::FastMax(-limit, acceleration.GetX()), limit));
    acceleration.SetY(CMath::FastMin(CMath::FastMax(-limit, acceleration.GetY()), limit));
    acceleration.SetZ(CMath::FastMin(CMath::FastMax(-limit, acceleration.GetZ()), limit));
    tracker.NegativeZ().Update(acceleration, dt);
    tracker.PositiveZ().Update(acceleration, dt);
    tracker.NegativeX().Update(acceleration, dt);
    tracker.PositiveX().Update(acceleration, dt);
    if (tracker.PositiveZ().IsCompleted() && tracker.PositiveZ().GetCompletedImpulse() < -0.05f) {
      result |= 0x100000;
    }
    if (tracker.NegativeZ().IsCompleted() && tracker.NegativeZ().GetCompletedImpulse() > 0.05f) {
      result |= 0x80000;
    }
    if (tracker.NegativeX().IsCompleted() && tracker.NegativeX().GetCompletedImpulse() > 0.05f) {
      result |= 0x200000;
    }
    if (tracker.PositiveX().IsCompleted() && tracker.PositiveX().GetCompletedImpulse() > 0.05f) {
      result |= 0x400000;
    }
  } else {
    CVector3f acceleration(status.accX, status.accY, status.accZ);
    acceleration = ApplyAccelerationDeadzone(acceleration, xef04_wiimoteGravityUnits, 90.f);
    const float& limit = 1.f;
    acceleration.SetX(CMath::FastMin(CMath::FastMax(-limit, acceleration.GetX()), limit));
    acceleration.SetY(CMath::FastMin(CMath::FastMax(-limit, acceleration.GetY()), limit));
    acceleration.SetZ(CMath::FastMin(CMath::FastMax(-limit, acceleration.GetZ()), limit));
    tracker.NegativeZ().Update(acceleration, dt);
    tracker.PositiveZ().Update(acceleration, dt);
    tracker.NegativeX().Update(acceleration, dt);
    tracker.PositiveX().Update(acceleration, dt);
    if (tracker.PositiveZ().IsCompleted() && tracker.PositiveZ().GetCompletedImpulse() > 0.05f) {
      result |= 0x10;
    }
    if (tracker.NegativeZ().IsCompleted() && tracker.NegativeZ().GetCompletedImpulse() > 0.05f) {
      result |= 8;
    }
    if (tracker.NegativeX().IsCompleted()) {
      result |= 0x20;
    }
    if (tracker.PositiveX().IsCompleted()) {
      result |= 0x40;
    }
  }
  return result;
}

uint CWiiMotionProcessor::GetMotionIntegralMask(const CMotionDeviceTracker& tracker, int device,
                                                float dt) const {
  uint result = 0;
  if (tracker.GetMotionIntegral() > 0.01f) {
    if (device == 0) {
      result |= 0x80;
    } else {
      result |= 0x800000;
    }
  }
  return result;
}

uint CWiiMotionProcessor::UpdatePulseGestures(const SDeviceSample& sample, SMotionPulseState& state,
                                              int device, float dt) {
  uint result = 0;
  if (state.x0_impulseTime <= 0.f) {
    if (CMath::AbsF(sample.x1c_highPassAcceleration.GetX()) > 0.02f) {
      state.x0_impulseTime = 5.f / 12.f;
      if (device == 0) {
        result |= 1;
      } else {
        result |= 0x10000;
      }
    }
  } else {
    state.x0_impulseTime -= dt;
    if (state.x0_impulseTime > 0.f) {
      if (device == 0) {
        result |= 1;
      } else {
        result |= 0x10000;
      }
    } else {
      if (device == 0) {
        result &= ~1;
      } else {
        result &= ~0x10000;
      }
    }
  }

  if (state.x4_shakeTime <= 0.f) {
    float x;
    float z;
    float threshold = 0.25f;
    if (device == 1) {
      threshold = 0.45f;
    }
    const int count = x0_history.size();
    if (count >= 15) {
      int index = xd860_writeIndex - 15;
      if (index < 0) {
        index += count;
      }
      float minX = 1000.f;
      float maxX = -1000.f;
      float minZ = 1000.f;
      float maxZ = -1000.f;
      for (; index != xd860_writeIndex; index = (index + 1) % count) {
        if (device == 0) {
          x = x0_history[index].x0_wiimote.xc_lowPassAcceleration.GetX();
          z = x0_history[index].x0_wiimote.xc_lowPassAcceleration.GetZ();
        } else {
          x = x0_history[index].x5c_nunchuk.xc_lowPassAcceleration.GetX();
          z = x0_history[index].x5c_nunchuk.xc_lowPassAcceleration.GetZ();
        }
        if (x < minX) {
          minX = x;
        }
        if (x > maxX) {
          maxX = x;
        }
        if (z < minZ) {
          minZ = z;
        }
        if (z > maxZ) {
          maxZ = z;
        }
      }
      if (maxX - minX > threshold) {
        state.x4_shakeTime = 0.25f;
        if (device == 0) {
          state.x8_shakeMask = 2;
        } else {
          state.x8_shakeMask = 0x20000;
        }
        result |= state.x8_shakeMask;
      }
      if (maxZ - minZ > threshold) {
        state.x4_shakeTime = 0.25f;
        if (device == 0) {
          state.x8_shakeMask = 4;
        } else {
          state.x8_shakeMask = 0x40000;
        }
        result |= state.x8_shakeMask;
      }
    }
  } else {
    state.x4_shakeTime -= dt;
    if (state.x4_shakeTime > 0.f) {
      result |= state.x8_shakeMask;
    } else {
      result &= ~state.x8_shakeMask;
    }
  }
  return result;
}

uint CWiiMotionProcessor::GetSwingMask(int device) const {
  uint result = 0;
  switch (device) {
  case 0:
    result = xdb20_wiimote.GetSwingMask();
    break;
  case 1:
    result = xe4a0_nunchuk.GetSwingMask() << 16;
    break;
  }
  return result;
}

CWiiMotionProcessor::CWiiMotionProcessor(int channel, int unused)
: x0_history(SPairedSample())
, xd85c_previousIndex(0)
, xd860_writeIndex(0)
, xdb20_wiimote(0, channel, 0, 0, 1, 0.5f)
, xe4a0_nunchuk(1, channel, 0, 0, 1, 0.5f)
, xeed8_sampleWeight(0.f)
, xeedc_flag(true)
, xeefc_motionMask(0)
, xef00_swingMask(0)
, xef04_wiimoteGravityUnits(CVector3f::One())
, xef10_nunchukGravityUnits(CVector3f::One()) {
  ConfigureFiltersAndCalibration(channel);
}

void CWiiMotionProcessor::ConfigureFiltersAndCalibration(int channel) {
  const float sqrt2 = CMath::SqrtF(2.f);
  const float lowCutoff = 1.f / static_cast< float >(tan(0.05f * M_PIF));
  float lowB1;
  const float lowB0 = 1.f / (1.f + sqrt2 * lowCutoff + lowCutoff * lowCutoff);
  lowB1 = 2.f * lowB0;
  const float lowA1 = lowB0 * (2.f * (1.f - lowCutoff * lowCutoff));
  const float lowA2 = lowB0 * (1.f - sqrt2 * lowCutoff + lowCutoff * lowCutoff);
  xd950_wiimoteLowPass.SetCoefficients(lowB0, lowB1, lowB0, lowA1, lowA2);
  xda38_nunchukLowPass.SetCoefficients(lowB0, lowB1, lowB0, lowA1, lowA2);

  const float highCutoff = static_cast< float >(tan(0.25f * M_PIF));
  float highB1;
  const float highB0 = 1.f / (1.f + sqrt2 * highCutoff + highCutoff * highCutoff);
  highB1 = -2.f * highB0;
  const float highA1 = highB0 * (-2.f * (1.f - highCutoff * highCutoff));
  const float highA2 = highB0 * (1.f - sqrt2 * highCutoff + highCutoff * highCutoff);
  xd9c4_wiimoteHighPass.SetCoefficients(highB0, highB1, highB0, highA1, highA2);
  xdaac_nunchukHighPass.SetCoefficients(highB0, highB1, highB0, highA1, highA2);

  WPADAcc gravity;
  WPADGetAccGravityUnit(channel, 0, &gravity);
  const float wx = __OSs16tof32(&gravity.x);
  const float wy = __OSs16tof32(&gravity.y);
  const float wz = __OSs16tof32(&gravity.z);
  xef04_wiimoteGravityUnits = CVector3f(wx, wy, wz);
  WPADGetAccGravityUnit(channel, 1, &gravity);
  const float nx = __OSs16tof32(&gravity.x);
  const float ny = __OSs16tof32(&gravity.y);
  const float nz = __OSs16tof32(&gravity.z);
  xef10_nunchukGravityUnits = CVector3f(nx, ny, nz);
  xdb20_wiimote.Reset();
  xe4a0_nunchuk.Reset();
}
