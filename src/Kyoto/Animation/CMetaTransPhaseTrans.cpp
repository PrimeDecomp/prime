#include "Kyoto/Animation/CMetaTransPhaseTrans.hpp"
#include "Kyoto/Animation/CAnimTreeTimeScale.hpp"
#include "Kyoto/Animation/CAnimTreeTransition.hpp"
#include "Kyoto/Streams/CInputStream.hpp"
#include "Kyoto/Streams/COutputStream.hpp"

CAnimTreeTimeScale::CAnimTreeTimeScale(
    const rstl::ncrc_ptr< CAnimTreeNode >& node,
    const rstl::ownership_transfer< IVaryingAnimationTimeScale >& timeScale,
    const CCharAnimTime& time, const rstl::string& name)
: CAnimTreeSingleChild(node, name)
, x18_timeScale(timeScale)
, x20_curAccelTime(0.f)
, x28_targetAccelTime(time)
, x30_initialTime(node->GetSteadyStateAnimInfo().GetDuration() - node->GetTimeRemaining()) {}

CMetaTransPhaseTrans::CMetaTransPhaseTrans(CInputStream& in)
: x4_transDur(CCharAnimTime(in))
, xc_(in.ReadBool())
, xd_runA(in.ReadBool())
, x10_flags(in.ReadLong()) {}

rstl::ncrc_ptr< CAnimTreeNode >
CMetaTransPhaseTrans::VGetTransitionTree(const rstl::ncrc_ptr< CAnimTreeNode >& a,
                                         const rstl::ncrc_ptr< CAnimTreeNode >& b,
                                         const CAnimSysContext& animSys) const {
  CSteadyStateAnimInfo infoA = a->GetContributionOfHighestInfluence().GetSteadyStateAnimInfo();
  CCharAnimTime durationA = infoA.GetDuration();
  CSteadyStateAnimInfo infoB = b->GetContributionOfHighestInfluence().GetSteadyStateAnimInfo();
  CCharAnimTime durationB = infoB.GetDuration();
  float scaleA = durationA / durationB;
  float scaleB = durationB / durationA;
  CAnimTreeEffectiveContribution contribution = a->GetContributionOfHighestInfluence();
  rstl::optional_object< float > phase = contribution.GetPhase();
  b->SetPhase(*phase);

  rstl::ownership_transfer< IVaryingAnimationTimeScale > timeScaleA =
      rs_new CLinearAnimationTimeScale(CCharAnimTime::ZeroFlat(), 1.f, x4_transDur, scaleA);
  rstl::ownership_transfer< IVaryingAnimationTimeScale > timeScaleB =
      rs_new CLinearAnimationTimeScale(CCharAnimTime::ZeroFlat(), scaleB, x4_transDur, 1.f);
  rstl::ncrc_ptr< CAnimTreeNode > treeA = rs_new CAnimTreeTimeScale(
      a, timeScaleA, x4_transDur,
      CAnimTreeTimeScale::CreatePrimitiveName(a, 1.f, x4_transDur, scaleA));
  rstl::ncrc_ptr< CAnimTreeNode > treeB = rs_new CAnimTreeTimeScale(
      b, timeScaleB, x4_transDur,
      CAnimTreeTimeScale::CreatePrimitiveName(b, scaleB, x4_transDur, 1.f));
  return rs_new CAnimTreeTransition(
      xc_, treeA, treeB, x4_transDur, xd_runA, x10_flags,
      CAnimTreeTransition::CreatePrimitiveName(treeA, treeB, x4_transDur.GetSeconds()));
}

void CMetaTransPhaseTrans::WriteTransData(COutputStream& out) const {
  x4_transDur.PutTo(out);
  out.WriteChar(bool(xc_));
  out.WriteChar(bool(xd_runA));
  out.WriteLong(x10_flags);
}
