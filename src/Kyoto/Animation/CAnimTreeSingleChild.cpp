#include "Kyoto/Animation/CAnimTreeSingleChild.hpp"
#include "Kyoto/Math/CQuaternion.hpp"

SAdvancementResults CAnimTreeSingleChild::VAdvanceView(const CCharAnimTime& dt) {
  return x14_child->VAdvanceView(dt);
}

CCharAnimTime CAnimTreeSingleChild::VGetTimeRemaining() const {
  return x14_child->VGetTimeRemaining();
}

bool CAnimTreeSingleChild::VHasOffset(const CSegId& seg) const {
  return x14_child->VHasOffset(seg);
}

CVector3f CAnimTreeSingleChild::VGetOffset(const CSegId& seg) const {
  return x14_child->VGetOffset(seg);
}

CQuaternion CAnimTreeSingleChild::VGetRotation(const CSegId& seg) const {
  return x14_child->VGetRotation(seg);
}

void CAnimTreeSingleChild::VGetSegStatementSet(const CSegIdList& list,
                                               CSegStatementSet& setOut) const {
  return x14_child->VGetSegStatementSet(list, setOut);
}

void CAnimTreeSingleChild::VGetSegStatementSet(const CSegIdList& list, CSegStatementSet& setOut,
                                               const CCharAnimTime& time) const {
  return x14_child->VGetSegStatementSet(list, setOut, time);
}

uint CAnimTreeSingleChild::VGetBoolPOIList(const CCharAnimTime& time, CBoolPOINode* listOut,
                                           uint capacity, uint iterator, int unk) const {
  return x14_child->GetBoolPOIList(time, listOut, capacity, iterator, unk);
}

uint CAnimTreeSingleChild::VGetInt32POIList(const CCharAnimTime& time, CInt32POINode* listOut,
                                            uint capacity, uint iterator, int unk) const {
  return x14_child->GetInt32POIList(time, listOut, capacity, iterator, unk);
}

uint CAnimTreeSingleChild::VGetParticlePOIList(const CCharAnimTime& time, CParticlePOINode* listOut,
                                               uint capacity, uint iterator, int unk) const {
  return x14_child->GetParticlePOIList(time, listOut, capacity, iterator, unk);
}

uint CAnimTreeSingleChild::VGetSoundPOIList(const CCharAnimTime& time, CSoundPOINode* listOut,
                                            uint capacity, uint iterator, int unk) const {
  return x14_child->GetSoundPOIList(time, listOut, capacity, iterator, unk);
}

bool CAnimTreeSingleChild::VGetBoolPOIState(const char* name) const {
  return x14_child->VGetBoolPOIState(name);
}

s32 CAnimTreeSingleChild::VGetInt32POIState(const char* name) const {
  return x14_child->VGetInt32POIState(name);
}

CParticleData::EParentedMode CAnimTreeSingleChild::VGetParticlePOIState(const char* name) const {
  return x14_child->VGetParticlePOIState(name);
}

uint CAnimTreeSingleChild::VGetNumChildren() const { return x14_child->VGetNumChildren() + 1; }

void CAnimTreeSingleChild::VSetPhase(float phase) { x14_child->VSetPhase(phase); }

SAdvancementResults CAnimTreeSingleChild::VGetAdvancementResults(const CCharAnimTime& a,
                                                                 const CCharAnimTime& b) const {
  return x14_child->VGetAdvancementResults(a, b);
}

void CAnimTreeSingleChild::VGetWeightedReaders(
    float w, rstl::reserved_vector< rstl::pair< float, IAnimReader* >, 16 >& out) const {
  return x14_child->VGetWeightedReaders(w, out);
}
