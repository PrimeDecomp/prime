#include "MetroidPrime/Cameras/CCameraShakeData.hpp"

#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"

#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Math/CloseEnough.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

#include <math.h>

extern uint LoadParameterFlags(CInputStream& in);

static const SCameraShakePoint skRecoilAM(0, 0.f, 0.f, 0.3f, -1.f);
static const SCameraShakePoint skHeavyRecoilAM(0, 0.f, 0.f, 0.3f, -2.f);
static const SCameraShakePoint skRecoilFM(1, 0.f, 0.f, 0.05f, 0.3f);
static const SCameraShakePoint skHeavyRecoilFM(1, 0.f, 0.f, 0.05f, 0.5f);

CCameraShakeData CCameraShakeData::skSoftRecoil(0.3f, 100.f, 0, CVector3f::Zero(),
                                                CCameraShakerComponent::NoMotion(),
                                                CCameraShakerComponent(1, skRecoilAM, skRecoilFM),
                                                CCameraShakerComponent::NoMotion());

CCameraShakeData CCameraShakeData::skHardRecoil(0.3f, 100.f, 0, CVector3f::Zero(),
                                                CCameraShakerComponent::NoMotion(),
                                                CCameraShakerComponent(1, skHeavyRecoilAM,
                                                                       skHeavyRecoilFM),
                                                CCameraShakerComponent::NoMotion());

CCameraShakeData CCameraShakeData::SoftHorizShake(float duration, float magnitude) {
  const SCameraShakePoint amX(0, 0.f, 0.f, duration, magnitude);
  const SCameraShakePoint fmX(1, 0.f, 0.f, 0.5f * duration, 3.f);
  const CCameraShakerComponent shakerX(1, amX, fmX);

  return CCameraShakeData(duration, 100.f, 0, CVector3f::Zero(), shakerX,
                          CCameraShakerComponent::NoMotion(), CCameraShakerComponent::NoMotion());
}

CCameraShakeData CCameraShakeData::SoftBothAxesShake(float duration, float magnitude) {
  const SCameraShakePoint amX(0, 0.15f * duration, 0.f, 0.25f * duration, magnitude);
  const SCameraShakePoint fmX(1, 0.f, 0.f, 0.4f * duration, 0.3f);
  const CCameraShakerComponent shakerX(1, amX, fmX);
  const SCameraShakePoint amZ(0, 0.25f * duration, 0.f, 0.25f * duration, magnitude);
  const SCameraShakePoint fmZ(1, 0.f, 0.f, 0.5f * duration, 0.5f);
  const CCameraShakerComponent shakerZ(1, amZ, fmZ);

  return CCameraShakeData(duration, 100.f, 0, CVector3f::Zero(), shakerX,
                          CCameraShakerComponent::NoMotion(), shakerZ);
}

CCameraShakeData CCameraShakeData::HardHorizShake(float duration, float magnitude) {
  const SCameraShakePoint amX(0, 0.25f * duration, 0.f, 0.75f * duration, magnitude);
  const SCameraShakePoint fmX(1, 0.f, 0.f, 0.5f * duration, 2.f);
  const CCameraShakerComponent shakerX(1, amX, fmX);

  return CCameraShakeData(duration, 100.f, 0, CVector3f::Zero(), shakerX,
                          CCameraShakerComponent::NoMotion(), CCameraShakerComponent::NoMotion());
}

CCameraShakeData CCameraShakeData::HardVertShake(float duration, float magnitude) {
  const SCameraShakePoint amZ(0, 0.25f * duration, 0.f, 0.75f * duration, magnitude);
  const SCameraShakePoint fmZ(1, 0.f, 0.f, 0.5f * duration, 2.f);
  const CCameraShakerComponent shakerZ(1, amZ, fmZ);

  return CCameraShakeData(duration, 100.f, 0, CVector3f::Zero(), CCameraShakerComponent::NoMotion(),
                          CCameraShakerComponent::NoMotion(), shakerZ);
}

CCameraShakeData CCameraShakeData::HardBothAxesShake(float duration, float magnitude) {
  const SCameraShakePoint amX(0, 0.15f * duration, 0.f, 0.85f * duration, magnitude);
  const SCameraShakePoint fmX(1, 0.f, 0.f, 0.4f * duration, 1.5f);
  const CCameraShakerComponent shakerX(1, amX, fmX);
  const SCameraShakePoint amZ(0, 0.25f * duration, 0.f, 0.75f * duration, magnitude);
  const SCameraShakePoint fmZ(1, 0.f, 0.f, 0.5f * duration, 2.f);
  const CCameraShakerComponent shakerZ(1, amZ, fmZ);

  return CCameraShakeData(duration, 100.f, 0, CVector3f::Zero(), shakerX,
                          CCameraShakerComponent::NoMotion(), shakerZ);
}

CCameraShakeData CCameraShakeData::HardHorizShakeDistance(CVector3f pos, float duration,
                                                          float magnitude, float maxDist) {
  CCameraShakeData data = HardHorizShake(duration, magnitude);
  data.SetSfxPositionAndDistance(maxDist, pos);
  return data;
}

CCameraShakeData CCameraShakeData::HardVertShakeDistance(float duration, float magnitude,
                                                         float distance, CVector3f origin) {
  CCameraShakeData data = HardVertShake(duration, magnitude);
  data.SetSfxPositionAndDistance(distance, origin);
  return data;
}

SCameraShakePoint::SCameraShakePoint(int flags, float attackTime, float sustainTime, float duration,
                                     float magnitude)
: x0_useEnvelope(flags)
, x4_value(0.f)
, x8_magnitude(magnitude)
, xc_attackTime(attackTime)
, x10_sustainTime(sustainTime)
, x14_duration(duration) {}

SCameraShakePoint LoadCameraShakePoint(CInputStream& in) {
  const uint flags = LoadParameterFlags(in);
  const float attackTime = in.ReadFloat();
  const float sustainTime = in.ReadFloat();
  const float duration = in.ReadFloat();
  return SCameraShakePoint(flags, attackTime, sustainTime, duration, in.ReadFloat());
}

SCameraShakePoint SCameraShakePoint::NoMotion() { return SCameraShakePoint(0, 0.f, 0.f, 0.f, 0.f); }

void SCameraShakePoint::Update(float curTime) {
  const float offTime = xc_attackTime + x10_sustainTime;
  float factor = 1.f;
  if (curTime < xc_attackTime && xc_attackTime > 0.f) {
    factor = CMath::Clamp(0.f, curTime / xc_attackTime, 1.f);
  }
  if (curTime >= offTime && x14_duration > 0.f) {
    factor = 1.f - CMath::Clamp(0.f, (curTime - offTime) / x14_duration, 1.f);
  }
  x4_value = x8_magnitude * factor;
}

float SCameraShakePoint::GetValue() const {
  if (x0_useEnvelope & 1) {
    return x8_magnitude;
  }
  return x4_value;
}

CCameraShakerComponent::CCameraShakerComponent(int flags, const SCameraShakePoint& am,
                                               const SCameraShakePoint& fm)
: x4_useModulation(flags), x8_am(am), x20_fm(fm), x38_value(0.f) {}

CCameraShakerComponent LoadNewCameraShakerComponent(CInputStream& in) {
  const uint flags = LoadParameterFlags(in);
  const SCameraShakePoint am = LoadCameraShakePoint(in);
  const SCameraShakePoint fm = LoadCameraShakePoint(in);
  return CCameraShakerComponent(flags, am, fm);
}

CCameraShakerComponent CCameraShakerComponent::NoMotion() {
  return CCameraShakerComponent(0, SCameraShakePoint::NoMotion(), SCameraShakePoint::NoMotion());
}

void CCameraShakerComponent::UpdateMotion(float curTime, float duration, float distAtt) {
  if (close_enough(duration, 0.f) || !(x4_useModulation & 1)) {
    x38_value = 0.f;
    return;
  }

  x20_fm.Update(curTime);
  const float freq = 1.f + x20_fm.GetValue();
  x8_am.Update(curTime);
  x38_value = x8_am.GetValue() * sinf(2.f * M_PIF * (duration - curTime) * freq);
  x38_value *= distAtt;
}

CCameraShakeData::CCameraShakeData(float duration, float sfxDist, int flags,
                                   const CVector3f& sfxPos, const CCameraShakerComponent& shakerX,
                                   const CCameraShakerComponent& shakerY,
                                   const CCameraShakerComponent& shakerZ)
: x0_duration(duration)
, x4_curTime(0.f)
, x8_shakerX(shakerX)
, x44_shakerY(shakerY)
, x80_shakerZ(shakerZ)
, xbc_shakerId(0)
, xc0_flags(flags)
, xc4_sfxPos(sfxPos)
, xd0_sfxDist(sfxDist) {}

void CCameraShakeData::SetSfxPositionAndDistance(float distance, CVector3f pos) {
  xc0_flags |= 1;
  xd0_sfxDist = distance;
  xc4_sfxPos = pos;
}

void CCameraShakeData::Update(float dt, CStateManager& mgr) {
  x4_curTime += dt;
  float distAtt = 1.f;
  if (xc0_flags & 1) {
    const CVector3f playerPos = mgr.GetPlayer()->GetTranslation();
    distAtt =
        1.f - CMath::Clamp(0.f, (CVector3f(xc4_sfxPos - playerPos)).Magnitude() / xd0_sfxDist, 1.f);
  }
  x8_shakerX.UpdateMotion(x4_curTime, x0_duration, distAtt);
  x44_shakerY.UpdateMotion(x4_curTime, x0_duration, distAtt);
  x80_shakerZ.UpdateMotion(x4_curTime, x0_duration, distAtt);
}

CVector3f CCameraShakeData::GetPoint() const {
  const float x = x8_shakerX.GetValue();
  const float y = x44_shakerY.GetValue();
  const float z = x80_shakerZ.GetValue();
  return CVector3f(x, y, z);
}

CCameraShakeData LoadCameraShakeData(CInputStream& in) {
  const float xMag = in.Get< float >();
  in.ReadFloat();
  const float yMag = in.Get< float >();
  in.ReadFloat();
  const float zMag = in.Get< float >();
  in.ReadFloat();
  const float duration = in.Get< float >();

  const SCameraShakePoint xAM(0, 0.f, 0.f, duration, 2.f * xMag);
  const SCameraShakePoint yAM(0, 0.f, 0.f, duration, 2.f * yMag);
  const SCameraShakePoint zAM(0, 0.f, 0.f, duration, 2.f * zMag);
  const SCameraShakePoint xFM(0, 0.f, 0.f, 0.5f * duration, 3.f);
  const SCameraShakePoint yFM(0, 0.f, 0.f, 0.5f * duration, 0.f);
  const SCameraShakePoint zFM(0, 0.f, 0.f, 0.5f * duration, 3.f);

  const CCameraShakerComponent shakerX(1, xAM, xFM);
  const CCameraShakerComponent shakerY = CCameraShakerComponent::NoMotion();
  const CCameraShakerComponent shakerZ(1, zAM, zFM);
  return CCameraShakeData(duration, 100.f, 0, CVector3f::Zero(), shakerX, shakerY, shakerZ);
}

CCameraShakeData CCameraShakeData::EatOldCameraShakerData(CInputStream& in) {
  in.ReadLong();
  in.ReadFloat();
  in.ReadFloat();
  in.ReadFloat();
  in.ReadFloat();
  in.ReadFloat();
  in.ReadFloat();
  in.ReadFloat();
  in.ReadBool();
  return SoftHorizShake(0.5f, 0.75f);
}

float CCameraShakeData::GetMaxAmplitude() const {
  float result = 0.f;
  if (x8_shakerX.IsModulated()) {
    result = x8_shakerX.GetAmplitude();
  }
  if (x44_shakerY.IsModulated() && x44_shakerY.GetAmplitude() > result) {
    result = x44_shakerY.GetAmplitude();
  }
  if (x80_shakerZ.IsModulated() && x80_shakerZ.GetAmplitude() > result) {
    result = x80_shakerZ.GetAmplitude();
  }
  return result;
}

float CCameraShakeData::GetMaxSeverity() const {
  float result = 0.f;
  if (x8_shakerX.IsModulated()) {
    result = x8_shakerX.GetSeverity();
  }
  if (x44_shakerY.IsModulated() && x44_shakerY.GetSeverity() > result) {
    result = x44_shakerY.GetSeverity();
  }
  if (x80_shakerZ.IsModulated() && x80_shakerZ.GetSeverity() > result) {
    result = x80_shakerZ.GetSeverity();
  }
  return result;
}
