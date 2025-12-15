#include "Kyoto/Animation/CMetaTransSnap.hpp"

rstl::rc_ptr< CAnimTreeNode >
CMetaTransSnap::VGetTransitionTree(const rstl::ncrc_ptr< CAnimTreeNode >& a,
                                   const rstl::ncrc_ptr< CAnimTreeNode >& b,
                                   const CAnimSysContext& animSys) const {
  return b;
}

void CMetaTransSnap::WriteTransData(COutputStream& out) const {}
