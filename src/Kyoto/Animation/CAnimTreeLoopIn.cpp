#include "Kyoto/Animation/CAnimTreeLoopIn.hpp"

#include "Kyoto/Animation/CSequenceHelper.hpp"
#include "Kyoto/Animation/CTreeUtils.hpp"
#include "Kyoto/Math/CloseEnough.hpp"

template < class T >
uint _getPOIList(const CCharAnimTime& time, T* listOut, uint capacity, uint iterator, int additive,
                 const rstl::vector< T >& stream, const CCharAnimTime& curTime) {
  uint ret = 0;
  CCharAnimTime curTimeCopy(curTime);
  uint count = stream.size();
  CCharAnimTime tmpTime = curTime + time;
  uint it = iterator;
  while (it < count) {
    T node(stream[it]);
    if (node.GetTime() > tmpTime)
      break;
    if (node.GetTime() >= curTimeCopy) {
      if (iterator + ret < capacity) {
        T adjustedNode = T::CopyNodeMinusStartTime(node, curTimeCopy);
        listOut[iterator + ret] = adjustedNode;
        ++ret;
      }
    }
    ++it;
  }
  return ret;
}

CAnimTreeLoopIn::CAnimTreeLoopIn(const rstl::ncrc_ptr< CAnimTreeNode >& a,
                                 const rstl::ncrc_ptr< CAnimTreeNode >& b,
                                 const rstl::ncrc_ptr< CAnimTreeNode >& c,
                                 const CAnimSysContext& animCtx, const rstl::string& name)
: CAnimTreeSingleChild(CTreeUtils::GetTransitionTree(a, c, animCtx), name)
, x18_nextAnim(b)
, x1c_didLoopIn(false)
, x20_animCtx(animCtx)
, x30_fundamentals(CSequenceHelper(x14_child, x18_nextAnim, animCtx).ComputeSequenceFundamentals())
, x88_curTime(0.f) {}

CAnimTreeLoopIn::CAnimTreeLoopIn(const rstl::ncrc_ptr< CAnimTreeNode >& a,
                                 const rstl::ncrc_ptr< CAnimTreeNode >& b, bool didLoopIn,
                                 const CAnimSysContext& animCtx, const rstl::string& name,
                                 const CSequenceFundamentals& fundamentals,
                                 const CCharAnimTime& time)
: CAnimTreeSingleChild(a, name)
, x18_nextAnim(b)
, x1c_didLoopIn(didLoopIn)
, x20_animCtx(animCtx)
, x30_fundamentals(fundamentals)
, x88_curTime(time) {}

CAdvancementResults CAnimTreeLoopIn::VAdvanceView(const CCharAnimTime& dt) {
  rstl::ncrc_ptr< CAnimTreeNode > origChild = x14_child;
  CAdvancementResults res = origChild->AdvanceView(dt);
  CCharAnimTime remainder = res.GetRemainder();
  x88_curTime += dt - remainder;
  CCharAnimTime remTime = origChild->GetTimeRemaining();
  if ((close_enough(remTime.GetSeconds(), 0.f) ||
       close_enough(dt.GetSeconds() - remainder.GetSeconds(), 0.f)) &&
      !x1c_didLoopIn) {
    rstl::ncrc_ptr< CAnimTreeNode > newChild =
        CTreeUtils::GetTransitionTree(origChild, x18_nextAnim, x20_animCtx);
    ReplaceChild(newChild);
    x1c_didLoopIn = true;
  }
  return res;
}

CCharAnimTime CAnimTreeLoopIn::VGetTimeRemaining() const {
  CCharAnimTime duration = x30_fundamentals.GetSteadyStateAnimInfo().GetDuration();
  return duration - x88_curTime;
}

CSteadyStateAnimInfo CAnimTreeLoopIn::VGetSteadyStateAnimInfo() const {
  return x30_fundamentals.GetSteadyStateAnimInfo();
}

uint CAnimTreeLoopIn::VGetBoolPOIList(const CCharAnimTime& time, CBoolPOINode* listOut,
                                      uint capacity, uint iterator, int unk) const {
  return _getPOIList(time, listOut, capacity, iterator, unk,
                     x30_fundamentals.GetBoolPointsOfInterest(), x88_curTime);
}

uint CAnimTreeLoopIn::VGetInt32POIList(const CCharAnimTime& time, CInt32POINode* listOut,
                                       uint capacity, uint iterator, int unk) const {
  return _getPOIList(time, listOut, capacity, iterator, unk,
                     x30_fundamentals.GetInt32PointsOfInterest(), x88_curTime);
}

uint CAnimTreeLoopIn::VGetParticlePOIList(const CCharAnimTime& time, CParticlePOINode* listOut,
                                          uint capacity, uint iterator, int unk) const {
  return _getPOIList(time, listOut, capacity, iterator, unk,
                     x30_fundamentals.GetParticlePointsOfInterest(), x88_curTime);
}

uint CAnimTreeLoopIn::VGetSoundPOIList(const CCharAnimTime& time, CSoundPOINode* listOut,
                                       uint capacity, uint iterator, int unk) const {
  return _getPOIList(time, listOut, capacity, iterator, unk,
                     x30_fundamentals.GetSoundPointsOfInterest(), x88_curTime);
}

rstl::ownership_transfer< IAnimReader > CAnimTreeLoopIn::VClone() const {
  return rs_new CAnimTreeLoopIn(Cast(x14_child->Clone()), x18_nextAnim, x1c_didLoopIn, x20_animCtx,
                                x4_name, x30_fundamentals, x88_curTime);
}

rstl::rc_ptr< CAnimTreeNode > CAnimTreeLoopIn::VGetBestUnblendedChild() const {
  rstl::rc_ptr< CAnimTreeNode > child = x14_child->GetBestUnblendedChild();
  if (child)
    return rs_new CAnimTreeLoopIn(Cast(child->Clone()), x18_nextAnim, x1c_didLoopIn, x20_animCtx,
                                  x4_name, x30_fundamentals, x88_curTime);
  return child;
}

rstl::optional_object< rstl::ownership_transfer< IAnimReader > > CAnimTreeLoopIn::VSimplified() {
  CCharAnimTime remTime = x14_child->GetTimeRemaining();
  if (remTime.GreaterThanZero() && !close_enough(remTime.GetSeconds(), 0.f)) {
    rstl::ncrc_ptr< CAnimTreeNode > child = x14_child;
    rstl::optional_object< rstl::ownership_transfer< IAnimReader > > simp = child->Simplified();
    if (simp)
      ReplaceChild(Cast(*simp));
  } else if (x1c_didLoopIn && x14_child->GetTimeRemaining().EqualsZero()) {
    return x14_child->Clone();
  }
  return rstl::optional_object_null();
}

bool CAnimTreeLoopIn::VSupportsReverseView() const { return false; }

CAnimTreeEffectiveContribution CAnimTreeLoopIn::VGetContributionOfHighestInfluence() const {
  return x14_child->GetContributionOfHighestInfluence();
}

rstl::string CAnimTreeLoopIn::CreatePrimitiveName(const rstl::ncrc_ptr< CAnimTreeNode >& a,
                                                  const rstl::ncrc_ptr< CAnimTreeNode >& b,
                                                  const rstl::ncrc_ptr< CAnimTreeNode >& c) {
  return rstl::string_l("");
}

CAnimTreeLoopIn::~CAnimTreeLoopIn() {}
