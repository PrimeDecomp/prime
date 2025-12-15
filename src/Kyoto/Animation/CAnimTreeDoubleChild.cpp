#include "Kyoto/Animation/CAnimTreeDoubleChild.hpp"
#include "Kyoto/Animation/CAnimTreeNode.hpp"
#include "Kyoto/Animation/CBoolPOINode.hpp"
#include "Kyoto/Animation/CCharAnimMemoryMetrics.hpp"
#include "Kyoto/Animation/CInt32POINode.hpp"
#include "Kyoto/Animation/CPOINode.hpp"
#include "Kyoto/Animation/CParticlePOINode.hpp"
#include "Kyoto/Animation/CSoundPOINode.hpp"
#include "Kyoto/Animation/IAnimReader.hpp"
#include <stdlib.h>

CAnimTreeDoubleChild::CAnimTreeDoubleChild(const rstl::ncrc_ptr< CAnimTreeNode >& a,
                                           const rstl::ncrc_ptr< CAnimTreeNode >& b,
                                           const rstl::string& name)
: CAnimTreeNode(name), x14_a(a), x18_b(b) {
  CCharAnimMemoryMetrics::AddToTotalSize(8, CCharAnimMemoryMetrics::kASS_Two);
}

SAdvancementResults CAnimTreeDoubleChild::VAdvanceView(const CCharAnimTime& dt) {}

CAnimTreeDoubleChild::~CAnimTreeDoubleChild() {
  CCharAnimMemoryMetrics::SubtractFromTotalSize(8, CCharAnimMemoryMetrics::kASS_Two);
}

uint CAnimTreeDoubleChild::VGetBoolPOIList(const CCharAnimTime& time, CBoolPOINode* listOut,
                                           uint capacity, uint iterator, int unk) const {
  int x = x14_a->GetBoolPOIList(time, listOut, capacity, iterator, unk);
  x += x18_b->GetBoolPOIList(time, listOut, capacity, x + iterator, unk);
  if (x > capacity)
    x = capacity;
  qsort(listOut, x, sizeof(CBoolPOINode), CPOINode::compare);
  return x;
}

uint CAnimTreeDoubleChild::VGetInt32POIList(const CCharAnimTime& time, CInt32POINode* listOut,
                                            uint capacity, uint iterator, int unk) const {
  int x = x14_a->GetInt32POIList(time, listOut, capacity, iterator, unk);
  x += x18_b->GetInt32POIList(time, listOut, capacity, x + iterator, unk);
  if (x > capacity)
    x = capacity;
  qsort(listOut, x, sizeof(CInt32POINode), CPOINode::compare);
  return x;
}

uint CAnimTreeDoubleChild::VGetParticlePOIList(const CCharAnimTime& time, CParticlePOINode* listOut,
                                               uint capacity, uint iterator, int unk) const {
  int x = x14_a->GetParticlePOIList(time, listOut, capacity, iterator, unk);
  x += x18_b->GetParticlePOIList(time, listOut, capacity, x + iterator, unk);
  if (x > capacity)
    x = capacity;
  qsort(listOut, x, sizeof(CParticlePOINode), CPOINode::compare);
  return x;
}

uint CAnimTreeDoubleChild::VGetSoundPOIList(const CCharAnimTime& time, CSoundPOINode* listOut,
                                            uint capacity, uint iterator, int unk) const {
  int x = x14_a->GetSoundPOIList(time, listOut, capacity, iterator, unk);
  x += x18_b->GetSoundPOIList(time, listOut, capacity, x + iterator, unk);
  if (x > capacity)
    x = capacity;
  qsort(listOut, x, sizeof(CSoundPOINode), CPOINode::compare);
  return x;
}

bool CAnimTreeDoubleChild::VGetBoolPOIState(const char* name) const {
  return x18_b->VGetBoolPOIState(name);
}

s32 CAnimTreeDoubleChild::VGetInt32POIState(const char* name) const {
  return x18_b->VGetInt32POIState(name);
}

CParticleData::EParentedMode CAnimTreeDoubleChild::VGetParticlePOIState(const char* name) const {
  return x18_b->VGetParticlePOIState(name);
}

CAnimTreeEffectiveContribution CAnimTreeDoubleChild::VGetContributionOfHighestInfluence() const {}

uint CAnimTreeDoubleChild::VGetNumChildren() const {
  int num_children = x18_b->VGetNumChildren();
  num_children += x14_a->VGetNumChildren() + 2;
  return num_children;
}

CAnimTreeDoubleChild::CDoubleChildAdvancementResult::CDoubleChildAdvancementResult(
    const CCharAnimTime& trueAdvancement, const SAdvancementDeltas& leftDeltas,
    const SAdvancementDeltas& rightDeltas)
: x0_trueAdvancement(trueAdvancement), x8_leftDeltas(leftDeltas), x24_rightDeltas(rightDeltas) {}

CAnimTreeDoubleChild::CDoubleChildAdvancementResult
CAnimTreeDoubleChild::AdvanceViewBothChildren(const CCharAnimTime&, bool, bool) {}

void CAnimTreeDoubleChild::VSetPhase(float phase) {
  x14_a->VSetPhase(phase);
  x18_b->VSetPhase(phase);
}

SAdvancementResults CAnimTreeDoubleChild::VGetAdvancementResults(const CCharAnimTime& a,
                                                                 const CCharAnimTime& b) const {}

rstl::rc_ptr< IAnimReader > CAnimTreeDoubleChild::VGetBestUnblendedChild() const {}

void CAnimTreeDoubleChild::VGetWeightedReaders(
    float w, rstl::reserved_vector< rstl::pair< float, IAnimReader* >, 16 >& out) const {
  x14_a->VGetWeightedReaders(w, out);
  x18_b->VGetWeightedReaders(w, out);
}
