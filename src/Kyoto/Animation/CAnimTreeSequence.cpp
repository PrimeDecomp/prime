#include "Kyoto/Animation/CAnimTreeSequence.hpp"

#include "Kyoto/Animation/CBoolPOINode.hpp"
#include "Kyoto/Animation/CInt32POINode.hpp"
#include "Kyoto/Animation/CParticlePOINode.hpp"
#include "Kyoto/Animation/CSoundPOINode.hpp"
#include "Kyoto/Animation/CTreeUtils.hpp"
#include "Kyoto/Animation/IMetaAnim.hpp"

rstl::ncrc_ptr< CAnimTreeNode > Cast(const rstl::ownership_transfer< IAnimReader >& ptr);

CAnimTreeSequence::CAnimTreeSequence(const rstl::vector< rstl::rc_ptr< IMetaAnim > >& seq,
                                     const CAnimSysContext& animSys, const rstl::string& name)
: CAnimTreeSingleChild(
      seq[0]->GetAnimationTree(animSys, CMetaAnimTreeBuildOrders::NoSpecialOrders()), name)
, x18_animCtx(animSys)
, x28_sequence(seq)
, x38_curIdx(0)
, x3c_fundamentals(CSequenceHelper(seq, animSys).ComputeSequenceFundamentals())
, x94_curTime(0.f) {}

CAnimTreeSequence::CAnimTreeSequence(const rstl::ncrc_ptr< CAnimTreeNode >& curNode,
                                     const rstl::vector< rstl::rc_ptr< IMetaAnim > >& metaAnims,
                                     const CAnimSysContext& animSys, int curIdx,
                                     const rstl::string& name,
                                     const CSequenceFundamentals& fundamentals,
                                     const CCharAnimTime& time)
: CAnimTreeSingleChild(curNode, name)
, x18_animCtx(animSys)
, x28_sequence(metaAnims)
, x38_curIdx(curIdx)
, x3c_fundamentals(fundamentals)
, x94_curTime(time) {
  x14_child->VGetTimeRemaining();
}

SAdvancementResults CAnimTreeSequence::VAdvanceView(const CCharAnimTime& dt) {
  CCharAnimTime totalDelta(0.f);
  CVector3f posDelta(0.f, 0.f, 0.f);
  CQuaternion rotDelta = CQuaternion::NoRotation();

  rstl::ncrc_ptr< CAnimTreeNode > curChild(x14_child);
  int seqSize = x28_sequence.size();

  if (x38_curIdx >= seqSize && curChild->VGetTimeRemaining().EqualsZero()) {
    x3c_fundamentals = CSequenceHelper(x28_sequence, x18_animCtx).ComputeSequenceFundamentals();
    x38_curIdx = 0;
    x94_curTime = CCharAnimTime::ZeroFlat();
    rstl::ncrc_ptr< CAnimTreeNode > newChild = CTreeUtils::GetTransitionTree(
        curChild,
        x28_sequence[x38_curIdx]->GetAnimationTree(x18_animCtx,
                                                    CMetaAnimTreeBuildOrders::NoSpecialOrders()),
        x18_animCtx);
    x14_child = newChild;
    curChild = x14_child;
  }

  CCharAnimTime remTime = dt;
  while (remTime.GreaterThanZero() && x38_curIdx < seqSize) {
    CCharAnimTime chRem = curChild->VGetTimeRemaining();
    if (chRem.EqualsZero()) {
      ++x38_curIdx;
      if (x38_curIdx < seqSize) {
        rstl::ncrc_ptr< CAnimTreeNode > newChild = CTreeUtils::GetTransitionTree(
            curChild,
            x28_sequence[x38_curIdx]->GetAnimationTree(
                x18_animCtx, CMetaAnimTreeBuildOrders::NoSpecialOrders()),
            x18_animCtx);
        x14_child = newChild;
      }
    }
    curChild = x14_child;
    if (x38_curIdx < seqSize) {
      SAdvancementResults res = curChild->VAdvanceView(remTime);
      rstl::optional_object< rstl::ownership_transfer< IAnimReader > > simp =
          curChild->Simplified();
      if (simp) {
        curChild = Cast(*simp);
        x14_child = curChild;
        curChild = x14_child;
      }
      CCharAnimTime prevRemTime = remTime;
      remTime = res.x0_remTime;
      totalDelta += prevRemTime - remTime;
      const SAdvancementDeltas& deltas = res.x8_deltas;
      posDelta += deltas.x0_posDelta;
      rotDelta = rotDelta * deltas.xc_rotDelta;
    }
  }

  x94_curTime += totalDelta;
  return SAdvancementResults(dt - totalDelta, SAdvancementDeltas(posDelta, rotDelta));
}

CCharAnimTime CAnimTreeSequence::VGetTimeRemaining() const {
  if (x38_curIdx == x28_sequence.size() - 1)
    return x14_child->VGetTimeRemaining();
  CCharAnimTime dur = x3c_fundamentals.GetSteadyStateAnimInfo().GetDuration();
  return dur - x94_curTime;
}

CSteadyStateAnimInfo CAnimTreeSequence::VGetSteadyStateAnimInfo() const {
  return x3c_fundamentals.GetSteadyStateAnimInfo();
}

uint CAnimTreeSequence::VGetBoolPOIList(const CCharAnimTime& time, CBoolPOINode* listOut,
                                        uint capacity, uint iterator, int additive) const {
  return _getPOIList(time, listOut, capacity, iterator, additive,
                     x3c_fundamentals.GetBoolPointsOfInterest(), x94_curTime);
}

uint CAnimTreeSequence::VGetInt32POIList(const CCharAnimTime& time, CInt32POINode* listOut,
                                         uint capacity, uint iterator, int additive) const {
  return _getPOIList(time, listOut, capacity, iterator, additive,
                     x3c_fundamentals.GetInt32PointsOfInterest(), x94_curTime);
}

uint CAnimTreeSequence::VGetParticlePOIList(const CCharAnimTime& time, CParticlePOINode* listOut,
                                            uint capacity, uint iterator, int additive) const {
  return _getPOIList(time, listOut, capacity, iterator, additive,
                     x3c_fundamentals.GetParticlePointsOfInterest(), x94_curTime);
}

uint CAnimTreeSequence::VGetSoundPOIList(const CCharAnimTime& time, CSoundPOINode* listOut,
                                         uint capacity, uint iterator, int additive) const {
  return _getPOIList(time, listOut, capacity, iterator, additive,
                     x3c_fundamentals.GetSoundPointsOfInterest(), x94_curTime);
}

rstl::ownership_transfer< IAnimReader > CAnimTreeSequence::VClone() const {
  return rs_new CAnimTreeSequence(Cast(x14_child->Clone()), x28_sequence, x18_animCtx,
                                  x38_curIdx, x4_name, x3c_fundamentals, x94_curTime);
}

rstl::rc_ptr< CAnimTreeNode > CAnimTreeSequence::VGetBestUnblendedChild() const {
  rstl::rc_ptr< CAnimTreeNode > ch = x14_child->GetBestUnblendedChild();
  if (ch)
    return rs_new CAnimTreeSequence(Cast(ch->Clone()), x28_sequence, x18_animCtx, x38_curIdx,
                                    x4_name, x3c_fundamentals, x94_curTime);
  return ch;
}

bool CAnimTreeSequence::VSupportsReverseView() const { return false; }

CAnimTreeEffectiveContribution CAnimTreeSequence::VGetContributionOfHighestInfluence() const {
  return x14_child->GetContributionOfHighestInfluence();
}

rstl::string CAnimTreeSequence::VGetNodeType() const { return rstl::string_l(""); }
