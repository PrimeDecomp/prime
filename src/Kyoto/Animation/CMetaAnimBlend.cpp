#include "Kyoto/Animation/CMetaAnimBlend.hpp"
#include "Kyoto/Animation/CAnimTreeBlend.hpp"
#include "Kyoto/Animation/CMetaAnimFactory.hpp"
#include "Kyoto/Streams/CInputStream.hpp"
#include "Kyoto/Streams/COutputStream.hpp"

CMetaAnimBlend::CMetaAnimBlend(CInputStream& in)
: x4_animA(CMetaAnimFactory::CreateMetaAnim(in))
, x8_animB(CMetaAnimFactory::CreateMetaAnim(in))
, xc_blend(in.ReadFloat())
, x10_(in.ReadBool()) {}

rstl::rc_ptr< CAnimTreeNode >
CMetaAnimBlend::VGetAnimationTree(const CAnimSysContext& animSys,
                                  const CMetaAnimTreeBuildOrders& orders) const {
  CMetaAnimTreeBuildOrders ordersA = CMetaAnimTreeBuildOrders::NoSpecialOrders();
  CMetaAnimTreeBuildOrders ordersB = CMetaAnimTreeBuildOrders::NoSpecialOrders();

  if (orders.mRecursiveAdvance) {
    ordersA = CMetaAnimTreeBuildOrders::PreAdvanceForAll(*orders.mRecursiveAdvance);
  }

  if (orders.mSingleAdvance) {
    ordersB = CMetaAnimTreeBuildOrders::PreAdvanceForAll(*orders.mSingleAdvance);
  }

  rstl::rc_ptr< CAnimTreeNode > treeA = x4_animA->GetAnimationTree(animSys, ordersA);
  rstl::rc_ptr< CAnimTreeNode > treeB = x8_animB->GetAnimationTree(animSys, ordersB);

  CAnimTreeBlend* blend = new CAnimTreeBlend(x10_, treeA, treeB, 0, rstl::string_l("??(??)")
  );
  blend->SetBlendingWeight(xc_blend);
  return rstl::rc_ptr< CAnimTreeNode >(blend);
}

void CMetaAnimBlend::GetUniquePrimitives(rstl::set< CPrimitive >& primsOut) const {
  x4_animA->GetUniquePrimitives(primsOut);
  x8_animB->GetUniquePrimitives(primsOut);
}

void CMetaAnimBlend::WriteAnimData(COutputStream& out) const {
  x4_animA->PutTo(out);
  x8_animB->PutTo(out);
  out.WriteReal32(xc_blend);
  out.WriteChar(bool(x10_));
}