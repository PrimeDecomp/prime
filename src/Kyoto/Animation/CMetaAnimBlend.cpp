#include "Kyoto/Animation/CMetaAnimBlend.hpp"
#include "Kyoto/Animation/CAnimTreeBlend.hpp"
#include "Kyoto/Animation/CMetaAnimFactory.hpp"
#include "Kyoto/Streams/CInputStream.hpp"
#include "Kyoto/Streams/COutputStream.hpp"

CMetaAnimBlend::CMetaAnimBlend(CInputStream& in)
: x4_animA(CMetaAnimFactory::CreateMetaAnim(in))
, x8_animB(CMetaAnimFactory::CreateMetaAnim(in))
, xc_blend(in.ReadFloat())
, x10_characterSpaceBlend(in.ReadBool()) {}

rstl::ncrc_ptr< CAnimTreeNode >
CMetaAnimBlend::VGetAnimationTree(const CAnimSysContext& animSys,
                                  const CMetaAnimTreeBuildOrders& orders) const {
  CMetaAnimTreeBuildOrders oa = CMetaAnimTreeBuildOrders::NoSpecialOrders();
  CMetaAnimTreeBuildOrders ob =
      orders.x0_recursiveAdvance
          ? CMetaAnimTreeBuildOrders::PreAdvanceForAll(*orders.x0_recursiveAdvance)
          : CMetaAnimTreeBuildOrders::NoSpecialOrders();
  rstl::ncrc_ptr< CAnimTreeNode > a = x4_animA->GetAnimationTree(animSys, oa);
  rstl::ncrc_ptr< CAnimTreeNode > b = x8_animB->GetAnimationTree(animSys, ob);
  return rs_new CAnimTreeBlend(x10_characterSpaceBlend, a, b, xc_blend,
                               CAnimTreeBlend::CreatePrimitiveName(a, b, xc_blend));
}

void CMetaAnimBlend::GetUniquePrimitives(rstl::set< CPrimitive >& primsOut) const {
  x4_animA->GetUniquePrimitives(primsOut);
  x8_animB->GetUniquePrimitives(primsOut);
}

void CMetaAnimBlend::WriteAnimData(COutputStream& out) const {
  x4_animA->PutTo(out);
  x8_animB->PutTo(out);
  out.WriteReal32(xc_blend);
  out.WriteBool(x10_characterSpaceBlend);
}
