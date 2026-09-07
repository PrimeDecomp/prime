#include "Kyoto/Animation/CAnimTreeAnimReaderContainer.hpp"

CAdvancementResults CAnimTreeAnimReaderContainer::VAdvanceView(const CCharAnimTime& time) {
  return x14_reader->AdvanceView(time);
}

CCharAnimTime CAnimTreeAnimReaderContainer::VGetTimeRemaining() const {
  return x14_reader->GetTimeRemaining();
}

CSteadyStateAnimInfo CAnimTreeAnimReaderContainer::VGetSteadyStateAnimInfo() const {
  return x14_reader->GetSteadyStateAnimInfo();
}

bool CAnimTreeAnimReaderContainer::VHasOffset(const CSegId& seg) const {
  return x14_reader->HasOffset(seg);
}

CVector3f CAnimTreeAnimReaderContainer::VGetOffset(const CSegId& seg) const {
  return x14_reader->GetOffset(seg);
}

CQuaternion CAnimTreeAnimReaderContainer::VGetRotation(const CSegId& seg) const {
  return x14_reader->GetRotation(seg);
}

uint CAnimTreeAnimReaderContainer::VGetBoolPOIList(const CCharAnimTime& time, CBoolPOINode* listOut,
                                                   uint capacity, uint iterator, int unk) const {
  return x14_reader->GetBoolPOIList(time, listOut, capacity, iterator, unk);
}

uint CAnimTreeAnimReaderContainer::VGetInt32POIList(const CCharAnimTime& time,
                                                    CInt32POINode* listOut, uint capacity,
                                                    uint iterator, int unk) const {
  return x14_reader->GetInt32POIList(time, listOut, capacity, iterator, unk);
}

uint CAnimTreeAnimReaderContainer::VGetParticlePOIList(const CCharAnimTime& time,
                                                       CParticlePOINode* listOut, uint capacity,
                                                       uint iterator, int unk) const {
  return x14_reader->GetParticlePOIList(time, listOut, capacity, iterator, unk);
}

uint CAnimTreeAnimReaderContainer::VGetSoundPOIList(const CCharAnimTime& time,
                                                    CSoundPOINode* listOut, uint capacity,
                                                    uint iterator, int unk) const {
  return x14_reader->GetSoundPOIList(time, listOut, capacity, iterator, unk);
}

bool CAnimTreeAnimReaderContainer::VGetBoolPOIState(const char* name) const {
  return x14_reader->GetBoolPOIState(name);
}

s32 CAnimTreeAnimReaderContainer::VGetInt32POIState(const char* name) const {
  return x14_reader->GetInt32POIState(name);
}

CParticleData::EParentedMode
CAnimTreeAnimReaderContainer::VGetParticlePOIState(const char* name) const {
  return x14_reader->GetParticlePOIState(name);
}

void CAnimTreeAnimReaderContainer::VGetSegStatementSet(const CSegIdList& list,
                                                       CSegStatementSet& setOut) const {
  x14_reader->GetSegStatementSet(list, setOut);
}

void CAnimTreeAnimReaderContainer::VGetSegStatementSet(const CSegIdList& list,
                                                       CSegStatementSet& setOut,
                                                       const CCharAnimTime& time) const {
  x14_reader->GetSegStatementSet(list, setOut, time);
}

rstl::ownership_transfer< IAnimReader > CAnimTreeAnimReaderContainer::VClone() const {
  return rs_new CAnimTreeAnimReaderContainer(x14_reader->Clone(), x4_name, x1c_animDbIdx);
}

CAnimTreeEffectiveContribution
CAnimTreeAnimReaderContainer::VGetContributionOfHighestInfluence() const {
  return CAnimTreeEffectiveContribution(1.f, x4_name, x14_reader->GetSteadyStateAnimInfo(),
                                        x14_reader->GetTimeRemaining(), x1c_animDbIdx);
}

rstl::optional_object< rstl::ownership_transfer< IAnimReader > >
CAnimTreeAnimReaderContainer::VSimplified() {
  return rstl::optional_object_null();
}

void CAnimTreeAnimReaderContainer::VSetPhase(float phase) { x14_reader->SetPhase(phase); }

CAdvancementResults
CAnimTreeAnimReaderContainer::VGetAdvancementResults(const CCharAnimTime& a,
                                                     const CCharAnimTime& b) const {
  return x14_reader->GetAdvancementResults(a, b);
}

rstl::rc_ptr< CAnimTreeNode > CAnimTreeAnimReaderContainer::VGetBestUnblendedChild() const {
  return rstl::rc_ptr< CAnimTreeNode >();
}

void CAnimTreeAnimReaderContainer::VGetWeightedReaders(
    float w, rstl::reserved_vector< rstl::pair< float, IAnimReader* >, 16 >& out) const {
  out.push_back(rstl::pair< float, IAnimReader* >(w, const_cast< IAnimReader* >(&*x14_reader)));
}
