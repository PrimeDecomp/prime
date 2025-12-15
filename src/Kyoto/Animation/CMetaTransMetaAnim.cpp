#include "Kyoto/Animation/CMetaTransMetaAnim.hpp"
#include "Kyoto/Animation/CMetaAnimFactory.hpp"
#include "Kyoto/Animation/IMetaAnim.hpp"
#include "Kyoto/Streams/CInputStream.hpp"
#include "Kyoto/Streams/COutputStream.hpp"

CMetaTransMetaAnim::CMetaTransMetaAnim(CInputStream& in)
: x4_metaAnim(CMetaAnimFactory::CreateMetaAnim(in)) {}

rstl::rc_ptr< CAnimTreeNode >
CMetaTransMetaAnim::VGetTransitionTree(const rstl::ncrc_ptr< CAnimTreeNode >& a,
                                       const rstl::ncrc_ptr< CAnimTreeNode >& b,
                                       const CAnimSysContext& animSys) const {}

void CMetaTransMetaAnim::WriteTransData(COutputStream& out) const { x4_metaAnim->PutTo(out); }
