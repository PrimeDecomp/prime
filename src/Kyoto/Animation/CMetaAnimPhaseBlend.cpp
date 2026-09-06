#include "Kyoto/Animation/CMetaAnimPhaseBlend.hpp"
#include "Kyoto/Animation/CAnimTreeBlend.hpp"
#include "Kyoto/Animation/CAnimTreeTimeScale.hpp"
#include "Kyoto/Animation/CMetaAnimFactory.hpp"
#include "Kyoto/Streams/CInputStream.hpp"
#include "Kyoto/Streams/COutputStream.hpp"

CMetaAnimPhaseBlend::CMetaAnimPhaseBlend(CInputStream& in)
: x4_animA(CMetaAnimFactory::CreateMetaAnim(in))
, x8_animB(CMetaAnimFactory::CreateMetaAnim(in))
, xc_blend(in.ReadFloat())
, x10_characterSpaceBlend(in.ReadBool()) {}

rstl::ncrc_ptr< CAnimTreeNode >
CMetaAnimPhaseBlend::VGetAnimationTree(const CAnimSysContext& animSys,
                                       const CMetaAnimTreeBuildOrders& orders) const {
  if (orders.x0_recursiveAdvance) {
    return GetAnimationTree(
        animSys, CMetaAnimTreeBuildOrders::PreAdvanceForAll(*orders.x0_recursiveAdvance));
  }

  rstl::ncrc_ptr< CAnimTreeNode > a =
      x4_animA->GetAnimationTree(animSys, CMetaAnimTreeBuildOrders::NoSpecialOrders());
  rstl::ncrc_ptr< CAnimTreeNode > b =
      x8_animB->GetAnimationTree(animSys, CMetaAnimTreeBuildOrders::NoSpecialOrders());
  const CSteadyStateAnimInfo& infoA =
      a->GetContributionOfHighestInfluence().GetSteadyStateAnimInfo();
  CCharAnimTime durationA = infoA.GetDuration();
  const CSteadyStateAnimInfo& infoB =
      b->GetContributionOfHighestInfluence().GetSteadyStateAnimInfo();
  CCharAnimTime durationB = infoB.GetDuration();
  CCharAnimTime duration = durationA + (durationB - durationA) * xc_blend;
  float scaleA = durationA / duration;
  float scaleB = durationB / duration;
  rstl::ncrc_ptr< CAnimTreeNode > scaledA = rs_new CAnimTreeTimeScale(
      a, scaleA,
      CAnimTreeTimeScale::CreatePrimitiveName(a, scaleA, CCharAnimTime::Infinity(), -1.f));
  rstl::ncrc_ptr< CAnimTreeNode > scaledB = rs_new CAnimTreeTimeScale(
      b, scaleB,
      CAnimTreeTimeScale::CreatePrimitiveName(b, scaleB, CCharAnimTime::Infinity(), -1.f));
  return rs_new CAnimTreeBlend(x10_characterSpaceBlend, scaledA, scaledB, xc_blend,
                               CAnimTreeBlend::CreatePrimitiveName(scaledA, scaledB, xc_blend));
}

void CMetaAnimPhaseBlend::GetUniquePrimitives(rstl::set< CPrimitive >& primsOut) const {
  x4_animA->GetUniquePrimitives(primsOut);
  x8_animB->GetUniquePrimitives(primsOut);
}

void CMetaAnimPhaseBlend::WriteAnimData(COutputStream& out) const {
  x4_animA->PutTo(out);
  x8_animB->PutTo(out);
  out.WriteReal32(xc_blend);
  out.WriteChar(bool(x10_characterSpaceBlend));
}
