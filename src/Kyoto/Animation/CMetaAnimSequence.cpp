#include "Kyoto/Animation/CMetaAnimSequence.hpp"
#include "Kyoto/Animation/CMetaAnimFactory.hpp"
#include "Kyoto/Streams/CInputStream.hpp"
#include "Kyoto/Streams/COutputStream.hpp"

CMetaAnimSequence::CMetaAnimSequence(CInputStream& in)
: x4_sequence(CMetaAnimSequence::CreateSequence(in)) {}

rstl::rc_ptr< CAnimTreeNode >
CMetaAnimSequence::VGetAnimationTree(const CAnimSysContext&,
                                     const CMetaAnimTreeBuildOrders&) const {}

void CMetaAnimSequence::GetUniquePrimitives(rstl::set< CPrimitive >& primsOut) const {
  rstl::vector< rstl::rc_ptr< IMetaAnim > >::const_iterator it = x4_sequence.begin();
  rstl::vector< rstl::rc_ptr< IMetaAnim > >::const_iterator end = x4_sequence.end();
  while (it != end) {
    it->GetPtr()->GetUniquePrimitives(primsOut);
    ++it;
  }
}

void CMetaAnimSequence::WriteAnimData(COutputStream& out) const {
  rstl::vector< rstl::rc_ptr< IMetaAnim > >::const_iterator it = x4_sequence.begin();
  rstl::vector< rstl::rc_ptr< IMetaAnim > >::const_iterator end = x4_sequence.end();
  out.WriteLong(x4_sequence.size());
  while (it != end) {
    it->GetPtr()->PutTo(out);
    ++it;
  }
}

rstl::vector< rstl::rc_ptr< IMetaAnim > > CMetaAnimSequence::CreateSequence(CInputStream& in) {
  rstl::vector< rstl::rc_ptr< IMetaAnim > > sequence;
  int size = in.ReadLong();
  sequence.reserve(size);
  for (int i = 0; i < size; i++) {
    rstl::rc_ptr< IMetaAnim > anim = CMetaAnimFactory::CreateMetaAnim(in);
    sequence.push_back(anim);
  }
  return sequence;
}
