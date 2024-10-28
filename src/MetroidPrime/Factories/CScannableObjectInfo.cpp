#include "MetroidPrime/Factories/CScannableObjectInfo.hpp"

#include "Kyoto/Basics/CBasics.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

const char* PaneSufixes[] = {"0", "1", "2", "3", "01", "12", "23", "012", "123", "0123",
                             "4", "5", "6", "7", "45", "56", "67", "456", "567", "4567"};
const char* CScannableObjectInfo::GetImagePaneName(uint pane) {

  return CBasics::Stringize("%s%s", "image_pane", PaneSufixes[pane]);
}

CScannableObjectInfo::CScannableObjectInfo(CInputStream& in, uint version) {}

template <>
inline CFactoryFnReturn::CFactoryFnReturn(CScannableObjectInfo* ptr)
: obj(TToken< CScannableObjectInfo >::GetIObjObjectFor(rstl::auto_ptr< CScannableObjectInfo >(ptr))
          .release()) {}

CFactoryFnReturn FScannableObjectInfoFactory(const SObjectTag& tag, CInputStream& in,
                                             const CVParamTransfer& xfer) {
  return rs_new CScannableObjectInfo(in, in.GetBlockOffset());
}
