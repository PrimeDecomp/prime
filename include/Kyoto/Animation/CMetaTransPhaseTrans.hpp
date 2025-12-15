#ifndef _CMETATRANSPHASETRANS
#define _CMETATRANSPHASETRANS

#include "Kyoto/Animation/CCharAnimTime.hpp"
#include "Kyoto/Animation/IMetaTrans.hpp"

class CMetaTransPhaseTrans : public IMetaTrans {
  CCharAnimTime x4_transDur;
  bool xc_;
  bool xd_runA;
  uint x10_flags;

public:
  explicit CMetaTransPhaseTrans(CInputStream& in);
  EMetaTransType GetType() const override { return kMTT_PhaseTrans; }

  rstl::rc_ptr< CAnimTreeNode > VGetTransitionTree(const rstl::ncrc_ptr< CAnimTreeNode >& a,
                                                   const rstl::ncrc_ptr< CAnimTreeNode >& b,
                                                   const CAnimSysContext& animSys) const override;

  void WriteTransData(COutputStream&) const override;
};

#endif // _CMETATRANSPHASETRANS
