#ifndef _IMETATRANS
#define _IMETATRANS

#include "rstl/rc_ptr.hpp"

class CAnimTreeNode;
class CAnimSysContext;
class COutputStream;

enum EMetaTransType { kMTT_MetaAnim, kMTT_Trans, kMTT_PhaseTrans, kMTT_Snap };

class IMetaTrans {
public:
  virtual ~IMetaTrans() {}
  virtual rstl::rc_ptr< CAnimTreeNode >
  VGetTransitionTree(const rstl::ncrc_ptr< CAnimTreeNode >& a,
                     const rstl::ncrc_ptr< CAnimTreeNode >& b,
                     const CAnimSysContext& animSys) const = 0;
  virtual EMetaTransType GetType() const = 0;

  virtual void WriteTransData(COutputStream&) const;

  rstl::rc_ptr< CAnimTreeNode > GetTransitionTree(const rstl::ncrc_ptr< CAnimTreeNode >& a,
                                                  const rstl::ncrc_ptr< CAnimTreeNode >& b,
                                                  const CAnimSysContext& animSys) {
    return VGetTransitionTree(a, b, animSys);
  }
};

#endif // _IMETATRANS
