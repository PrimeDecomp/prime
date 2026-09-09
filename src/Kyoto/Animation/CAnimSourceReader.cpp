#include "Kyoto/Animation/CAnimSourceReader.hpp"

#include "Kyoto/Animation/CCharAnimTime.hpp"

CAnimSourceReader::CAnimSourceReader(const TSubAnimTypeToken< CAnimSource >& source,
                                     const CCharAnimTime& time)
: CAnimSourceReaderBase(rs_new CAnimSourceInfo(source))
, x54_source(source)
, x64_steadyStateInfo(x54_source->GetSteadyStateAnimInfo(time)) {
  PostConstruct(time);
}

CAdvancementResults CAnimSourceReader::VAdvanceView(const CCharAnimTime& dt) {
  const CCharAnimTime previousTime = xc_curTime;
  const CCharAnimTime& duration = x54_source->GetAnimationDuration();
  if (previousTime == duration) {
    xc_curTime = CCharAnimTime::ZeroFlat();
    x14_passedBoolCount = 0;
    x18_passedIntCount = 0;
    x1c_passedParticleCount = 0;
    x20_passedSoundCount = 0;
    return CAdvancementResults(dt, CAdvancementDeltas());
  }
  if (dt.EqualsZero()) {
    return CAdvancementResults(CCharAnimTime::ZeroFlat(), CAdvancementDeltas());
  }

  xc_curTime += dt;
  CCharAnimTime remainingTime = CCharAnimTime::ZeroFlat();
  if (xc_curTime > duration) {
    remainingTime = xc_curTime - duration;
    xc_curTime = duration;
  }
  if (x54_source->HasPOIData()) {
    UpdatePOIStates();
  }

  const CSegId root = CSegId::Root();
  const CQuaternion oldRotation = x54_source->GetRotation(root, previousTime);
  const CQuaternion newRotation = x54_source->GetRotation(root, xc_curTime);
  const CQuaternion inverseOldRotation = oldRotation.BuildInverted();
  CVector3f offset(0.f, 0.f, 0.f);
  if (x54_source->HasOffset(root)) {
    const CVector3f oldOffset = x54_source->GetOffset(root, previousTime);
    const CVector3f newOffset = x54_source->GetOffset(root, xc_curTime);
    offset = newOffset - oldOffset;
    const CQuaternion inverseNewRotation = newRotation.BuildInverted();
    const CMatrix3f inverseRotation = inverseNewRotation.BuildTransform();
    offset = inverseRotation * offset;
  }
  return CAdvancementResults(remainingTime,
                             CAdvancementDeltas(offset, newRotation * inverseOldRotation));
}

CCharAnimTime CAnimSourceReader::VGetTimeRemaining() const {
  return x54_source->GetAnimationDuration() - xc_curTime;
}

CSteadyStateAnimInfo CAnimSourceReader::VGetSteadyStateAnimInfo() const {
  return x64_steadyStateInfo;
}

bool CAnimSourceReader::VHasOffset(const CSegId& seg) const { return x54_source->HasOffset(seg); }

CVector3f CAnimSourceReader::VGetOffset(const CSegId& seg) const {
  return x54_source->GetOffset(seg, xc_curTime);
}

CVector3f CAnimSourceReader::VGetOffset(const CSegId& seg, const CCharAnimTime& time) const {
  return x54_source->GetOffset(seg, time);
}

CQuaternion CAnimSourceReader::VGetRotation(const CSegId& seg) const {
  return x54_source->GetRotation(seg, xc_curTime);
}

void CAnimSourceReader::VGetSegStatementSet(const CSegIdList& list,
                                            CSegStatementSet& setOut) const {
  x54_source->GetSegStatementSet(list, setOut, xc_curTime);
}

void CAnimSourceReader::VGetSegStatementSet(const CSegIdList& list, CSegStatementSet& setOut,
                                            const CCharAnimTime& time) const {
  x54_source->GetSegStatementSet(list, setOut, time);
}

rstl::ownership_transfer< IAnimReader > CAnimSourceReader::VClone() const {
  return rstl::ownership_transfer< IAnimReader >(
      rs_new CAnimSourceReader(x54_source, xc_curTime, x64_steadyStateInfo, x14_passedBoolCount,
                               x18_passedIntCount, x1c_passedParticleCount, x20_passedSoundCount,
                               x24_boolStates, x34_int32States, x44_particleStates));
}

CAdvancementResults CAnimSourceReader::VReverseView(const CCharAnimTime& dt) {
  const CCharAnimTime previousTime = xc_curTime;
  const CCharAnimTime& duration = x54_source->GetAnimationDuration();
  if (previousTime.EqualsZero()) {
    xc_curTime = duration;
    return CAdvancementResults(dt, CAdvancementDeltas());
  }
  if (dt.EqualsZero()) {
    return CAdvancementResults(CCharAnimTime::ZeroFlat(), CAdvancementDeltas());
  }

  xc_curTime -= dt;
  CCharAnimTime remainingTime = CCharAnimTime::ZeroFlat();
  if (xc_curTime < CCharAnimTime()) {
    remainingTime = CCharAnimTime() - xc_curTime;
    xc_curTime = CCharAnimTime();
  }

  const CSegId root = CSegId::Root();
  const CQuaternion oldRotation = x54_source->GetRotation(root, previousTime);
  const CQuaternion newRotation = x54_source->GetRotation(root, xc_curTime);
  const CQuaternion inverseOldRotation = oldRotation.BuildInverted();
  CVector3f offset(0.f, 0.f, 0.f);
  if (x54_source->HasOffset(root)) {
    const CVector3f oldOffset = x54_source->GetOffset(root, previousTime);
    const CVector3f newOffset = x54_source->GetOffset(root, xc_curTime);
    offset = newOffset - oldOffset;
    const CQuaternion inverseNewRotation = newRotation.BuildInverted();
    const CMatrix3f inverseRotation = inverseNewRotation.BuildTransform();
    offset = inverseRotation * offset;
  }
  return CAdvancementResults(remainingTime,
                             CAdvancementDeltas(offset, newRotation * inverseOldRotation));
}

void CAnimSourceReader::VSetPhase(float phase) {
  xc_curTime = CCharAnimTime(
      phase * x54_source->GetSteadyStateAnimInfo(xc_curTime).GetDuration().GetSeconds());
  if (x54_source->HasPOIData()) {
    UpdatePOIStates();
    if (!xc_curTime.GreaterThanZero()) {
      x14_passedBoolCount = 0;
      x18_passedIntCount = 0;
      x1c_passedParticleCount = 0;
      x20_passedSoundCount = 0;
    }
  }
}

bool CAnimSourceReader::VSupportsReverseView() const { return true; }

CAdvancementResults
CAnimSourceReader::VGetAdvancementResults(const CCharAnimTime& dt,
                                          const CCharAnimTime& startOffset) const {
  const CCharAnimTime previousTime = xc_curTime + startOffset;
  CCharAnimTime currentTime = xc_curTime + startOffset;
  const CCharAnimTime& duration = x54_source->GetAnimationDuration();
  if (previousTime >= duration) {
    return CAdvancementResults(dt, CAdvancementDeltas());
  }
  if (dt.EqualsZero()) {
    return CAdvancementResults(CCharAnimTime::ZeroFlat(), CAdvancementDeltas());
  }

  currentTime += dt;
  CCharAnimTime remainingTime = CCharAnimTime::ZeroFlat();
  if (currentTime > duration) {
    remainingTime = currentTime - duration;
    currentTime = duration;
  }

  const CSegId root = CSegId::Root();
  CVector3f offset(0.f, 0.f, 0.f);
  const CQuaternion oldRotation = x54_source->GetRotation(root, previousTime);
  const CQuaternion newRotation = x54_source->GetRotation(root, currentTime);
  const CQuaternion inverseOldRotation = oldRotation.BuildInverted();
  if (x54_source->HasOffset(root)) {
    const CVector3f oldOffset = x54_source->GetOffset(root, previousTime);
    const CVector3f newOffset = x54_source->GetOffset(root, currentTime);
    offset = newOffset - oldOffset;
    const CQuaternion inverseNewRotation = newRotation.BuildInverted();
    const CMatrix3f inverseRotation = inverseNewRotation.BuildTransform();
    offset = inverseRotation * offset;
  }
  return CAdvancementResults(remainingTime,
                             CAdvancementDeltas(offset, newRotation * inverseOldRotation));
}
