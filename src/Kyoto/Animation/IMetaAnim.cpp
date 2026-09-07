#include "Kyoto/Animation/IMetaAnim.hpp"

#include "Kyoto/Animation/CAnimTreeNode.hpp"
#include "Kyoto/Animation/CBoolPOINode.hpp"
#include "Kyoto/Streams/COutputStream.hpp"
#include <string.h>

bool CPreAdvanceIndicator::IsTime() const { return x0_isTime; }

const CCharAnimTime& CPreAdvanceIndicator::GetTime() const { return x4_time; }

bool CPreAdvanceIndicator::IsString() const { return !IsTime(); }

const char* CPreAdvanceIndicator::GetString() const { return xc_string; }

CMetaAnimTreeBuildOrders CMetaAnimTreeBuildOrders::NoSpecialOrders() {
  return CMetaAnimTreeBuildOrders();
}
CMetaAnimTreeBuildOrders
CMetaAnimTreeBuildOrders::PreAdvanceForAll(const CPreAdvanceIndicator& ind) {
  CMetaAnimTreeBuildOrders ret;
  ret.x44_singleAdvance = ind;
  return ret;
}

rstl::ncrc_ptr< CAnimTreeNode >
IMetaAnim::GetAnimationTree(const CAnimSysContext& animSys,
                            const CMetaAnimTreeBuildOrders& orders) const {
  if (orders.x44_singleAdvance) {
    rstl::ncrc_ptr< CAnimTreeNode > tree =
        VGetAnimationTree(animSys, CMetaAnimTreeBuildOrders::NoSpecialOrders());
    if (orders.x44_singleAdvance->IsTime() || orders.x44_singleAdvance->IsString()) {
      AdvanceAnim(*tree, GetTime(*orders.x44_singleAdvance, *tree));
    }
    return tree;
  }
  if (orders.x0_recursiveAdvance) {
    rstl::ncrc_ptr< CAnimTreeNode > tree =
        VGetAnimationTree(animSys, CMetaAnimTreeBuildOrders::NoSpecialOrders());
    if (orders.x0_recursiveAdvance->IsTime() || orders.x0_recursiveAdvance->IsString()) {
      AdvanceAnim(*tree, GetTime(*orders.x0_recursiveAdvance, *tree));
    }
    return tree;
  }
  return VGetAnimationTree(animSys, CMetaAnimTreeBuildOrders::NoSpecialOrders());
}

void IMetaAnim::PutTo(COutputStream& out) const {
  out.WriteInt32(GetType());
  WriteAnimData(out);
}

CCharAnimTime IMetaAnim::GetTime(const CPreAdvanceIndicator& ind, const IAnimReader& anim) {
  if (ind.IsTime())
    return ind.GetTime();

  CBoolPOINode nodes[64];
  const char* name = ind.GetString();
  const uint count = anim.GetBoolPOIList(anim.GetTimeRemaining(), nodes, 64, 0, 0);
  for (uint i = 0; i < count; ++i) {
    const CBoolPOINode& node = nodes[i];
    if (strcmp(node.GetString().data(), name) == 0 && node.GetValue())
      return node.GetTime();
  }
  return CCharAnimTime::ZeroFlat();
}

void IMetaAnim::AdvanceAnim(IAnimReader& anim, const CCharAnimTime& dt) {
  CCharAnimTime remaining = dt;
  while (remaining > CCharAnimTime::ZeroFlat()) {
    CAdvancementResults result = anim.AdvanceView(remaining);
    remaining = result.GetRemainder();
  }
}
