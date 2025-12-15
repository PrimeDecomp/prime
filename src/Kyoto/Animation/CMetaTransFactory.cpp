#include "Kyoto/Animation/CMetaTransFactory.hpp"
#include "Kyoto/Alloc/CMemory.hpp"
#include "Kyoto/Animation/CMetaTransMetaAnim.hpp"
#include "Kyoto/Animation/CMetaTransPhaseTrans.hpp"
#include "Kyoto/Animation/CMetaTransSnap.hpp"
#include "Kyoto/Animation/CMetaTransTrans.hpp"
#include "Kyoto/Animation/IMetaTrans.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

rstl::rc_ptr< IMetaTrans > CMetaTransFactory::CreateMetaTrans(CInputStream& in) {
  EMetaTransType type = static_cast< EMetaTransType >(in.ReadLong());
  switch (type) {
  case kMTT_MetaAnim:
    return rs_new CMetaTransMetaAnim(in);
  case kMTT_Trans:
    return rs_new CMetaTransTrans(in);
  case kMTT_PhaseTrans:
    return rs_new CMetaTransPhaseTrans(in);
  case kMTT_Snap:
    return rs_new CMetaTransSnap;
  default:
    return rstl::rc_ptr< IMetaTrans >();
  }
}
