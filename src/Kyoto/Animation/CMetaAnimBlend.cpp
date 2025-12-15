#include "Kyoto/Animation/CMetaAnimBlend.hpp"
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
                                  const CMetaAnimTreeBuildOrders& orders) const {}

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
