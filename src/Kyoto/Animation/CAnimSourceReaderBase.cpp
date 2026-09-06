#include "Kyoto/Animation/CAnimSourceReaderBase.hpp"

#include "Kyoto/Animation/CBoolPOINode.hpp"
#include "Kyoto/Animation/CInt32POINode.hpp"
#include "Kyoto/Animation/CParticlePOINode.hpp"
#include "Kyoto/Animation/CSoundPOINode.hpp"
#include "rstl/math.hpp"

template < class T >
uint _getPOIList(const CCharAnimTime& time, T* listOut, uint capacity, uint iterator, int additive,
                 const rstl::vector< T >& stream, const CCharAnimTime& curTime,
                 const IAnimSourceInfo& sourceInfo, int passedCount) {
  uint ret = 0;
  if (sourceInfo.HasPOIData()) {
    int count = stream.size();
    if (count > 0) {
      const CCharAnimTime& duration = sourceInfo.GetAnimationDuration();
      CCharAnimTime totalTime = curTime + time;
      CCharAnimTime endTime = rstl::min_val(duration, totalTime);
      if (passedCount < count) {
        int index = passedCount;
        const int initialIndex = index;
        CCharAnimTime nodeTime(stream[initialIndex].GetTime());
        while (index < count && nodeTime <= endTime) {
          const T& node = stream[index];
          if (ret + iterator < capacity) {
            listOut[iterator + ret] = T::CopyNodeMinusStartTime(node, curTime);
            ++ret;
          }
          ++index;
          if (index < count) {
            nodeTime = stream[index].GetTime();
          }
        }
      }
    }
  }
  return ret;
}

uint CAnimSourceReaderBase::VGetBoolPOIList(const CCharAnimTime& time, CBoolPOINode* listOut,
                                            uint capacity, uint iterator, int additive) const {
  if (x4_sourceInfo->HasPOIData()) {
    const IAnimSourceInfo& sourceInfo = AnimSource();
    const rstl::vector< CBoolPOINode >& stream = sourceInfo.GetBoolPOIStream();
    return _getPOIList(time, listOut, capacity, iterator, additive, stream, xc_curTime, sourceInfo,
                       x14_passedBoolCount);
  }
  return 0;
}

uint CAnimSourceReaderBase::VGetInt32POIList(const CCharAnimTime& time, CInt32POINode* listOut,
                                             uint capacity, uint iterator, int additive) const {
  if (x4_sourceInfo->HasPOIData()) {
    const IAnimSourceInfo& sourceInfo = AnimSource();
    const rstl::vector< CInt32POINode >& stream = sourceInfo.GetInt32POIStream();
    return _getPOIList(time, listOut, capacity, iterator, additive, stream, xc_curTime, sourceInfo,
                       x18_passedIntCount);
  }
  return 0;
}

uint CAnimSourceReaderBase::VGetParticlePOIList(const CCharAnimTime& time,
                                                CParticlePOINode* listOut, uint capacity,
                                                uint iterator, int additive) const {
  if (x4_sourceInfo->HasPOIData()) {
    const IAnimSourceInfo& sourceInfo = AnimSource();
    const rstl::vector< CParticlePOINode >& stream = sourceInfo.GetParticlePOIStream();
    return _getPOIList(time, listOut, capacity, iterator, additive, stream, xc_curTime, sourceInfo,
                       x1c_passedParticleCount);
  }
  return 0;
}

uint CAnimSourceReaderBase::VGetSoundPOIList(const CCharAnimTime& time, CSoundPOINode* listOut,
                                             uint capacity, uint iterator, int additive) const {
  if (x4_sourceInfo->HasPOIData()) {
    const IAnimSourceInfo& sourceInfo = AnimSource();
    const rstl::vector< CSoundPOINode >& stream = sourceInfo.GetSoundPOIStream();
    return _getPOIList(time, listOut, capacity, iterator, additive, stream, xc_curTime, sourceInfo,
                       x20_passedSoundCount);
  }
  return 0;
}

bool CAnimSourceReaderBase::VGetBoolPOIState(const char* name) const {
  int count = x24_boolStates.size();
  for (int i = 0; i < count; ++i) {
    if (x24_boolStates[i].first == name) {
      return x24_boolStates[i].second;
    }
  }
  return false;
}

s32 CAnimSourceReaderBase::VGetInt32POIState(const char* name) const {
  int count = x34_int32States.size();
  for (int i = 0; i < count; ++i) {
    if (x34_int32States[i].first == name) {
      return x34_int32States[i].second;
    }
  }
  return 0;
}

bool rstl::operator==(const rstl::string& lhs, const char* rhs) { return lhs.compare(rhs) == 0; }

CParticleData::EParentedMode CAnimSourceReaderBase::VGetParticlePOIState(const char* name) const {
  int count = x44_particleStates.size();
  for (int i = 0; i < count; ++i) {
    if (x44_particleStates[i].first == name) {
      return x44_particleStates[i].second;
    }
  }
  return CParticleData::kPM_Initial;
}

void CAnimSourceReaderBase::UpdatePOIStates() {
  const IAnimSourceInfo& sourceInfo = AnimSource();
  const rstl::vector< CBoolPOINode >& boolNodes = sourceInfo.GetBoolPOIStream();
  const rstl::vector< CInt32POINode >& int32Nodes = sourceInfo.GetInt32POIStream();
  const rstl::vector< CParticlePOINode >& particleNodes = sourceInfo.GetParticlePOIStream();
  const rstl::vector< CSoundPOINode >& soundNodes = sourceInfo.GetSoundPOIStream();
  int boolCount = boolNodes.size();
  int int32Count = int32Nodes.size();
  int particleCount = particleNodes.size();
  int soundCount = soundNodes.size();
  while (x14_passedBoolCount < boolCount &&
         boolNodes[x14_passedBoolCount].GetTime() <= xc_curTime) {
    const CBoolPOINode& node = boolNodes[x14_passedBoolCount];
    int index = node.GetIndex();
    if (index >= 0) {
      x24_boolStates[index] =
          rstl::pair< rstl::string, bool >(x24_boolStates[index].first, node.GetValue());
    }
    ++x14_passedBoolCount;
  }
  while (x18_passedIntCount < int32Count &&
         int32Nodes[x18_passedIntCount].GetTime() <= xc_curTime) {
    const CInt32POINode& node = int32Nodes[x18_passedIntCount];
    int index = node.GetIndex();
    if (index >= 0) {
      x34_int32States[index] =
          rstl::pair< rstl::string, int >(x34_int32States[index].first, node.GetValue());
    }
    ++x18_passedIntCount;
  }
  while (x1c_passedParticleCount < particleCount &&
         particleNodes[x1c_passedParticleCount].GetTime() <= xc_curTime) {
    const CParticlePOINode& node = particleNodes[x1c_passedParticleCount];
    int index = node.GetIndex();
    if (index >= 0) {
      x44_particleStates[index] = rstl::pair< rstl::string, CParticleData::EParentedMode >(
          x44_particleStates[index].first, node.GetParticleData().GetParentedMode());
    }
    ++x1c_passedParticleCount;
  }
  while (x20_passedSoundCount < soundCount &&
         soundNodes[x20_passedSoundCount].GetTime() <= xc_curTime) {
    ++x20_passedSoundCount;
  }
}

rstl::set< rstl::pair< rstl::string, int > > CAnimSourceReaderBase::GetUniqueBoolPOIs() const {
  const rstl::vector< CBoolPOINode >& nodes = x4_sourceInfo->GetBoolPOIStream();
  int count = nodes.size();
  rstl::set< rstl::pair< rstl::string, int > > ret;
  for (int i = 0; i < count; ++i) {
    const CBoolPOINode& node = nodes[i];
    if (node.GetSaveState()) {
      ret.insert(rstl::pair< rstl::string, int >(node.GetString(), node.GetIndex()));
    }
  }
  return ret;
}

rstl::set< rstl::pair< rstl::string, int > > CAnimSourceReaderBase::GetUniqueInt32POIs() const {
  const rstl::vector< CInt32POINode >& nodes = x4_sourceInfo->GetInt32POIStream();
  int count = nodes.size();
  rstl::set< rstl::pair< rstl::string, int > > ret;
  for (int i = 0; i < count; ++i) {
    const CInt32POINode& node = nodes[i];
    if (node.GetSaveState()) {
      ret.insert(rstl::pair< rstl::string, int >(node.GetString(), node.GetIndex()));
    }
  }
  return ret;
}

rstl::set< rstl::pair< rstl::string, int > > CAnimSourceReaderBase::GetUniqueParticlePOIs() const {
  const rstl::vector< CParticlePOINode >& nodes = x4_sourceInfo->GetParticlePOIStream();
  int count = nodes.size();
  rstl::set< rstl::pair< rstl::string, int > > ret;
  for (int i = 0; i < count; ++i) {
    const CParticlePOINode& node = nodes[i];
    if (node.GetSaveState()) {
      ret.insert(rstl::pair< rstl::string, int >(node.GetString(), node.GetIndex()));
    }
  }
  return ret;
}

void CAnimSourceReaderBase::PostConstruct(const CCharAnimTime& time) {
  x14_passedBoolCount = 0;
  x18_passedIntCount = 0;
  x1c_passedParticleCount = 0;
  x20_passedSoundCount = 0;
  const IAnimSourceInfo& sourceInfo = AnimSource();
  if (sourceInfo.HasPOIData()) {
    const rstl::set< rstl::pair< rstl::string, int > > boolPOIs = GetUniqueBoolPOIs();
    const rstl::set< rstl::pair< rstl::string, int > > int32POIs = GetUniqueInt32POIs();
    const rstl::set< rstl::pair< rstl::string, int > > particlePOIs = GetUniqueParticlePOIs();
    int boolCount = boolPOIs.size();
    int int32Count = int32POIs.size();
    int particleCount = particlePOIs.size();
    x24_boolStates.resize(boolCount, rstl::pair< rstl::string, bool >(rstl::string_l(""), false));
    x34_int32States.resize(int32Count, rstl::pair< rstl::string, int >(rstl::string_l(""), 0));
    x44_particleStates.resize(particleCount,
                              rstl::pair< rstl::string, CParticleData::EParentedMode >(
                                  rstl::string_l(""), CParticleData::kPM_Initial));
    for (AUTO(it, boolPOIs.begin()); it != boolPOIs.end();) {
      rstl::string name = it->first;
      int index = it->second;
      x24_boolStates[index] = rstl::pair< rstl::string, bool >(name, false);
      ++it;
    }
    for (AUTO(it, int32POIs.begin()); it != int32POIs.end();) {
      rstl::string name = it->first;
      int index = it->second;
      x34_int32States[index] = rstl::pair< rstl::string, int >(name, 0);
      ++it;
    }
    for (AUTO(it, particlePOIs.begin()); it != particlePOIs.end();) {
      rstl::string name = it->first;
      int index = it->second;
      x44_particleStates[index] = rstl::pair< rstl::string, CParticleData::EParentedMode >(
          name, CParticleData::kPM_Initial);
      ++it;
    }
  }
  CCharAnimTime remaining = time;
  if (remaining.GreaterThanZero()) {
    while (remaining.GreaterThanZero()) {
      remaining = VAdvanceView(remaining).GetRemainder();
    }
  } else if (sourceInfo.HasPOIData()) {
    UpdatePOIStates();
    if (!time.GreaterThanZero()) {
      x14_passedBoolCount = 0;
      x18_passedIntCount = 0;
      x1c_passedParticleCount = 0;
      x20_passedSoundCount = 0;
    }
  }
}
