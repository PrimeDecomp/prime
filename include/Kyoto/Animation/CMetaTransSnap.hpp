#ifndef _CMETATRANSSNAP
#define _CMETATRANSSNAP

#include "Kyoto/Animation/IMetaTrans.hpp"

class CMetaTransSnap : public IMetaTrans {
public:
  EMetaTransType GetType() const override { return kMTT_Snap; }

  rstl::rc_ptr< CAnimTreeNode > VGetTransitionTree(const rstl::ncrc_ptr< CAnimTreeNode >& a,
                                                   const rstl::ncrc_ptr< CAnimTreeNode >& b,
                                                   const CAnimSysContext& animSys) const override;

  void WriteTransData(COutputStream&) const override;
};

#endif // _CMETATRANSSNAP
