#include "Kyoto/Animation/CMetaTransTrans.hpp"
#include "Kyoto/Streams/CInputStream.hpp"
#include "Kyoto/Streams/COutputStream.hpp"

CMetaTransTrans::CMetaTransTrans(CInputStream& in)
: x4_transDur(CCharAnimTime(in))
, xc_(in.ReadBool())
, xd_runA(in.ReadBool())
, x10_flags(in.ReadLong()) {}

rstl::rc_ptr< CAnimTreeNode >
CMetaTransTrans::VGetTransitionTree(const rstl::ncrc_ptr< CAnimTreeNode >& a,
                                    const rstl::ncrc_ptr< CAnimTreeNode >& b,
                                    const CAnimSysContext& animSys) const {}

void CMetaTransTrans::WriteTransData(COutputStream& out) const {
  x4_transDur.PutTo(out);
  out.WriteChar(bool(xc_));
  out.WriteChar(bool(xd_runA));
  out.WriteLong(x10_flags);
}
