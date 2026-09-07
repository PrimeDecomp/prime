#include "Kyoto/Animation/CAnimTreeDoubleChild.hpp"
#include "Kyoto/Animation/CAnimTreeNode.hpp"
#include "Kyoto/Animation/CBoolPOINode.hpp"
#include "Kyoto/Animation/CCharAnimMemoryMetrics.hpp"
#include "Kyoto/Animation/CInt32POINode.hpp"
#include "Kyoto/Animation/CPOINode.hpp"
#include "Kyoto/Animation/CParticlePOINode.hpp"
#include "Kyoto/Animation/CSoundPOINode.hpp"
#include "Kyoto/Animation/IAnimReader.hpp"
#include "Kyoto/Math/CloseEnough.hpp"
#include <stdlib.h>

CAnimTreeDoubleChild::CAnimTreeDoubleChild(const rstl::ncrc_ptr< CAnimTreeNode >& a,
                                           const rstl::ncrc_ptr< CAnimTreeNode >& b,
                                           const rstl::string& name)
: CAnimTreeNode(name), x14_a(a), x18_b(b) {
  CCharAnimMemoryMetrics::AddToTotalSize(8, CCharAnimMemoryMetrics::kASS_Two);
}

CAdvancementResults CAnimTreeDoubleChild::VAdvanceView(const CCharAnimTime& dt) {
  CAdvancementResults resA = x14_a->AdvanceView(dt);
  CAdvancementResults resB = x18_b->AdvanceView(dt);
  return resA.GetRemainder() > resB.GetRemainder() ? resA : resB;
}

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

CAnimTreeEffectiveContribution CAnimTreeDoubleChild::VGetContributionOfHighestInfluence() const {
  CAnimTreeEffectiveContribution a = x14_a->GetContributionOfHighestInfluence();
  CAnimTreeEffectiveContribution b = x18_b->GetContributionOfHighestInfluence();
  float leftWeight = a.GetContributionWeight() * GetLeftChildWeight();
  float rightWeight = b.GetContributionWeight() * GetRightChildWeight();
  return leftWeight > rightWeight
             ? CAnimTreeEffectiveContribution(leftWeight, a.GetPrimitiveName(),
                                              a.GetSteadyStateAnimInfo(), a.GetTimeRemaining(),
                                              a.GetAnimDatabaseIndex())
             : CAnimTreeEffectiveContribution(rightWeight, b.GetPrimitiveName(),
                                              b.GetSteadyStateAnimInfo(), b.GetTimeRemaining(),
                                              b.GetAnimDatabaseIndex());
}

uint CAnimTreeDoubleChild::VGetNumChildren() const {
  int num_children = x18_b->VGetNumChildren();
  num_children += x14_a->VGetNumChildren() + 2;
  return num_children;
}

CAnimTreeDoubleChild::CDoubleChildAdvancementResult::CDoubleChildAdvancementResult(
    const CCharAnimTime& trueAdvancement, const CAdvancementDeltas& leftDeltas,
    const CAdvancementDeltas& rightDeltas)
: x0_trueAdvancement(trueAdvancement), x8_leftDeltas(leftDeltas), x24_rightDeltas(rightDeltas) {}

CAnimTreeDoubleChild::CDoubleChildAdvancementResult
CAnimTreeDoubleChild::AdvanceViewBothChildren(const CCharAnimTime& time, bool runLeft,
                                              bool loopLeft) {
  CCharAnimTime leftRemaining = time;
  CCharAnimTime totalTime = !runLeft   ? CCharAnimTime::ZeroFlat()
                            : loopLeft ? CCharAnimTime::Infinity()
                                       : x14_a->GetTimeRemaining();
  CVector3f leftOffset(0.f, 0.f, 0.f);
  CQuaternion leftRotation = CQuaternion::NoRotation();
  CCharAnimTime rightRemaining = time;
  CVector3f rightOffset(0.f, 0.f, 0.f);
  CQuaternion rightRotation = CQuaternion::NoRotation();
  if (time.GreaterThanZero()) {
    while (leftRemaining.GreaterThanZero() && !close_enough(leftRemaining.GetSeconds(), 0.f) &&
           totalTime.GreaterThanZero() &&
           (loopLeft || !close_enough(totalTime.GetSeconds(), 0.f))) {
      CAdvancementResults result = x14_a->AdvanceView(leftRemaining);
      rstl::optional_object< rstl::ownership_transfer< IAnimReader > > simplified =
          x14_a->Simplified();
      if (simplified.valid())
        x14_a = Cast(*simplified);
      CAdvancementDeltas deltas = result.GetAdvancementDeltas();
      leftOffset += deltas.GetOffsetDelta();
      CQuaternion rotation = deltas.GetOrientationDelta();
      leftRotation *= rotation;
      if (!loopLeft)
        totalTime = x14_a->GetTimeRemaining();
      leftRemaining = result.GetRemainder();
    }
    while (rightRemaining.GreaterThanZero() && !close_enough(rightRemaining.GetSeconds(), 0.f)) {
      CAdvancementResults result = x18_b->AdvanceView(rightRemaining);
      rstl::optional_object< rstl::ownership_transfer< IAnimReader > > simplified =
          x18_b->Simplified();
      if (simplified.valid())
        x18_b = Cast(*simplified);
      CAdvancementDeltas deltas = result.GetAdvancementDeltas();
      rightOffset += deltas.GetOffsetDelta();
      CQuaternion rotation = deltas.GetOrientationDelta();
      rightRotation *= rotation;
      rightRemaining = result.GetRemainder();
    }
  }
  return CDoubleChildAdvancementResult(time, CAdvancementDeltas(leftOffset, leftRotation),
                                       CAdvancementDeltas(rightOffset, rightRotation));
}

void CAnimTreeDoubleChild::VSetPhase(float phase) {
  x14_a->VSetPhase(phase);
  x18_b->VSetPhase(phase);
}

CAdvancementResults CAnimTreeDoubleChild::VGetAdvancementResults(const CCharAnimTime& a,
                                                                 const CCharAnimTime& b) const {
  CAdvancementResults resA = x14_a->GetAdvancementResults(a, b);
  CAdvancementResults resB = x18_b->GetAdvancementResults(a, b);
  return resA.GetRemainder() > resB.GetRemainder() ? resA : resB;
}

rstl::rc_ptr< CAnimTreeNode > CAnimTreeDoubleChild::VGetBestUnblendedChild() const {
  rstl::rc_ptr< CAnimTreeNode > child = GetRightChildWeight() > 0.5f ? x18_b : x14_a;
  if (!child)
    return child;
  rstl::rc_ptr< CAnimTreeNode > best = child->GetBestUnblendedChild();
  if (!best)
    return child;
  return best;
}

void CAnimTreeDoubleChild::VGetWeightedReaders(
    float w, rstl::reserved_vector< rstl::pair< float, IAnimReader* >, 16 >& out) const {
  x14_a->VGetWeightedReaders(w, out);
  x18_b->VGetWeightedReaders(w, out);
}
