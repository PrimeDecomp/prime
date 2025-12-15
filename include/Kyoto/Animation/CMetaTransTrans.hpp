#ifndef _CMETATRANSTRANS
#define _CMETATRANSTRANS

#include "Kyoto/Animation/CCharAnimTime.hpp"
#include "Kyoto/Animation/IMetaTrans.hpp"
#include "rstl/rc_ptr.hpp"
class IMetaAnim;
class CInputStream;
class COutputStream;

class CMetaTransTrans : public IMetaTrans {
  CCharAnimTime x4_transDur;
  bool xc_;
  bool xd_runA;
  u32 x10_flags;

public:
  explicit CMetaTransTrans(CInputStream& in);
  EMetaTransType GetType() const override { return kMTT_Trans; }

  rstl::rc_ptr< CAnimTreeNode > VGetTransitionTree(const rstl::ncrc_ptr< CAnimTreeNode >& a,
                                                   const rstl::ncrc_ptr< CAnimTreeNode >& b,
                                                   const CAnimSysContext& animSys) const override;

  void WriteTransData(COutputStream&) const override;
};

#endif // _CMETATRANSTRANS
