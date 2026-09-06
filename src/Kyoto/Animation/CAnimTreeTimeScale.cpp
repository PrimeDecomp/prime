#include "Kyoto/Animation/CAnimTreeTimeScale.hpp"

#include "Kyoto/Animation/CBoolPOINode.hpp"
#include "Kyoto/Animation/CInt32POINode.hpp"
#include "Kyoto/Animation/CParticlePOINode.hpp"
#include "Kyoto/Animation/CSoundPOINode.hpp"

SAdvancementResults CAnimTreeTimeScale::VAdvanceView(const CCharAnimTime& dt) {
  if (dt.EqualsZero() && dt > CCharAnimTime::ZeroFlat())
    return x14_child->AdvanceView(dt);

  CCharAnimTime origAccelTime = x20_curAccelTime;
  CCharAnimTime newTime = x20_curAccelTime + dt;
  if (newTime < x28_targetAccelTime) {
    CCharAnimTime integral = x18_timeScale->TimeScaleIntegral(origAccelTime, newTime);
    SAdvancementResults res = x14_child->AdvanceView(integral);
    if (res.x0_remTime.EqualsZero()) {
      x20_curAccelTime = newTime;
      return SAdvancementResults(CCharAnimTime::ZeroFlat(), res.x8_deltas);
    } else {
      x20_curAccelTime = x18_timeScale->FindUpperLimit(origAccelTime, integral - res.x0_remTime);
      CCharAnimTime elapsed = x20_curAccelTime - origAccelTime;
      CCharAnimTime remaining = dt - elapsed;
      return SAdvancementResults(remaining, res.x8_deltas);
    }
  } else {
    CCharAnimTime newDt = x18_timeScale->TimeScaleIntegral(origAccelTime, x28_targetAccelTime);
    SAdvancementResults res(CCharAnimTime(0.f), SAdvancementDeltas());
    if (newDt.GreaterThanZero())
      res = x14_child->AdvanceView(newDt);
    CCharAnimTime remTime = res.x0_remTime + (newTime - x28_targetAccelTime);
    x20_curAccelTime = x28_targetAccelTime;
    return SAdvancementResults(remTime, res.x8_deltas);
  }
}

CCharAnimTime CAnimTreeTimeScale::VGetTimeRemaining() const {
  CCharAnimTime timeRem = x14_child->GetTimeRemaining();
  if (x28_targetAccelTime == CCharAnimTime::Infinity()) {
    CCharAnimTime remaining =
        x18_timeScale->FindUpperLimit(x20_curAccelTime, timeRem) - x20_curAccelTime;
    return remaining;
  }
  return GetRealLifeTime(timeRem);
}

CSteadyStateAnimInfo CAnimTreeTimeScale::VGetSteadyStateAnimInfo() const {
  CSteadyStateAnimInfo info = x14_child->GetSteadyStateAnimInfo();
  CCharAnimTime originalDuration = info.GetDuration();
  if (x28_targetAccelTime == CCharAnimTime::Infinity()) {
    const CCharAnimTime duration =
        x18_timeScale->FindUpperLimit(CCharAnimTime::ZeroFlat(), originalDuration);
    return CSteadyStateAnimInfo(info.IsLooping(), duration, info.GetOffset());
  } else {
    CCharAnimTime time =
        x20_curAccelTime.GreaterThanZero()
            ? x18_timeScale->TimeScaleIntegral(CCharAnimTime::ZeroFlat(), x20_curAccelTime)
            : CCharAnimTime::ZeroFlat();
    CCharAnimTime remaining = GetTimeRemaining();
    CCharAnimTime duration = x30_initialTime + time + remaining;
    return CSteadyStateAnimInfo(info.IsLooping(), duration, info.GetOffset());
  }
}

rstl::ownership_transfer< IAnimReader > CAnimTreeTimeScale::VClone() const {
  return rs_new CAnimTreeTimeScale(Cast(x14_child->Clone()), x18_timeScale->Clone(),
                                   x20_curAccelTime, x28_targetAccelTime, x30_initialTime, x4_name);
}

rstl::rc_ptr< CAnimTreeNode > CAnimTreeTimeScale::VGetBestUnblendedChild() const {
  rstl::rc_ptr< CAnimTreeNode > child = x14_child->GetBestUnblendedChild();
  if (child)
    return rs_new CAnimTreeTimeScale(Cast(child->Clone()), x18_timeScale->Clone(), x20_curAccelTime,
                                     x28_targetAccelTime, x30_initialTime, x4_name);
  return child;
}

CAnimTreeEffectiveContribution CAnimTreeTimeScale::VGetContributionOfHighestInfluence() const {
  CAnimTreeEffectiveContribution contribution = x14_child->GetContributionOfHighestInfluence();
  float weight = contribution.GetContributionWeight();
  rstl::string name = contribution.GetPrimitiveName();
  CSteadyStateAnimInfo info = GetSteadyStateAnimInfo();
  CCharAnimTime time = GetTimeRemaining();
  return CAnimTreeEffectiveContribution(weight, name, info, time,
                                        contribution.GetAnimDatabaseIndex());
}

uint CAnimTreeTimeScale::VGetBoolPOIList(const CCharAnimTime& time, CBoolPOINode* listOut,
                                         uint capacity, uint iterator, int unk) const {
  const CCharAnimTime useTime =
      time == CCharAnimTime::Infinity() ? x14_child->GetTimeRemaining() : GetRealLifeTime(time);
  const uint ret = x14_child->GetBoolPOIList(useTime, listOut, capacity, iterator, unk);
  if (x28_targetAccelTime > CCharAnimTime::ZeroFlat()) {
    for (uint i = 0; i < ret; ++i) {
      CCharAnimTime realTime = GetRealLifeTime(listOut[i].GetTime());
      listOut[iterator + i].SetTime(realTime);
    }
  }
  return ret;
}

uint CAnimTreeTimeScale::VGetInt32POIList(const CCharAnimTime& time, CInt32POINode* listOut,
                                          uint capacity, uint iterator, int unk) const {
  const CCharAnimTime useTime =
      time == CCharAnimTime::Infinity() ? x14_child->GetTimeRemaining() : GetRealLifeTime(time);
  const uint ret = x14_child->GetInt32POIList(useTime, listOut, capacity, iterator, unk);
  if (x28_targetAccelTime > CCharAnimTime::ZeroFlat()) {
    for (uint i = 0; i < ret; ++i) {
      CCharAnimTime realTime = GetRealLifeTime(listOut[i].GetTime());
      listOut[i + iterator].SetTime(realTime);
    }
  }
  return ret;
}

uint CAnimTreeTimeScale::VGetParticlePOIList(const CCharAnimTime& time, CParticlePOINode* listOut,
                                             uint capacity, uint iterator, int unk) const {
  const CCharAnimTime useTime =
      time == CCharAnimTime::Infinity() ? x14_child->GetTimeRemaining() : GetRealLifeTime(time);
  const uint ret = x14_child->GetParticlePOIList(useTime, listOut, capacity, iterator, unk);
  if (x28_targetAccelTime > CCharAnimTime::ZeroFlat()) {
    for (uint i = 0; i < ret; ++i) {
      CCharAnimTime realTime = GetRealLifeTime(listOut[i].GetTime());
      listOut[i + iterator].SetTime(realTime);
    }
  }
  return ret;
}

uint CAnimTreeTimeScale::VGetSoundPOIList(const CCharAnimTime& time, CSoundPOINode* listOut,
                                          uint capacity, uint iterator, int unk) const {
  const CCharAnimTime useTime =
      time == CCharAnimTime::Infinity() ? x14_child->GetTimeRemaining() : GetRealLifeTime(time);
  const uint ret = x14_child->GetSoundPOIList(useTime, listOut, capacity, iterator, unk);
  if (x28_targetAccelTime > CCharAnimTime::ZeroFlat()) {
    for (uint i = 0; i < ret; ++i) {
      CCharAnimTime realTime = GetRealLifeTime(listOut[i].GetTime());
      listOut[i + iterator].SetTime(realTime);
    }
  }
  return ret;
}

bool CAnimTreeTimeScale::VGetBoolPOIState(const char* name) const {
  return x14_child->GetBoolPOIState(name);
}
s32 CAnimTreeTimeScale::VGetInt32POIState(const char* name) const {
  return x14_child->GetInt32POIState(name);
}
CParticleData::EParentedMode CAnimTreeTimeScale::VGetParticlePOIState(const char* name) const {
  return x14_child->GetParticlePOIState(name);
}

rstl::optional_object< rstl::ownership_transfer< IAnimReader > > CAnimTreeTimeScale::VSimplified() {
  rstl::optional_object< rstl::ownership_transfer< IAnimReader > > simp = x14_child->Simplified();
  if (simp)
    return rstl::ownership_transfer< IAnimReader >(
        rs_new CAnimTreeTimeScale(Cast(*simp), x18_timeScale->Clone(), x20_curAccelTime,
                                  x28_targetAccelTime, x30_initialTime, x4_name));
  if (x20_curAccelTime == x28_targetAccelTime)
    return x14_child->Clone();
  return rstl::optional_object_null();
}

void CAnimTreeTimeScale::VSetPhase(float phase) { x14_child->SetPhase(phase); }

CCharAnimTime CAnimTreeTimeScale::GetRealLifeTime(const CCharAnimTime& time) const {
  CCharAnimTime timeRem = x14_child->GetTimeRemaining();
  CCharAnimTime ret(rstl::min_val(time.GetSeconds(), timeRem.GetSeconds()));
  if (x28_targetAccelTime > CCharAnimTime::ZeroFlat()) {
    CCharAnimTime accelRemaining = x28_targetAccelTime - x20_curAccelTime;
    if (ret < accelRemaining) {
      return x18_timeScale->TimeScaleIntegral(x20_curAccelTime, x20_curAccelTime + ret);
    } else {
      CCharAnimTime integral =
          x18_timeScale->TimeScaleIntegral(x20_curAccelTime, x28_targetAccelTime);
      if (integral > ret) {
        CCharAnimTime upper = x18_timeScale->FindUpperLimit(x20_curAccelTime, ret);
        return upper - x20_curAccelTime;
      } else {
        return integral + (ret - integral);
      }
    }
  }
  return ret;
}

rstl::string CAnimTreeTimeScale::CreatePrimitiveName(const rstl::ncrc_ptr< CAnimTreeNode >& node,
                                                     float scaleA, const CCharAnimTime& time,
                                                     float scaleB) {
  return rstl::string("");
}
