#include "Kyoto/Animation/CAllFormatsAnimSource.hpp"

#include "Kyoto/CVParamTransfer.hpp"
#include "Kyoto/IObjectStore.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

CAnimFormatUnion::CAnimFormatUnion(CInputStream& in, IObjectStore& store) {
  mFormatType = in.Get< uint >();
  SubConstruct(mFormatData, mFormatType, in, store);
}

CAnimFormatUnion::~CAnimFormatUnion() {
  switch (mFormatType) {
  case 0:
    reinterpret_cast< CAnimSource* >(mFormatData)->~CAnimSource();
    break;
  case 2:
    reinterpret_cast< CFBStreamedCompression* >(mFormatData)->~CFBStreamedCompression();
    break;
  default:
    break;
  }
}

void CAnimFormatUnion::SubConstruct(uchar* ptr, const uint format, CInputStream& in,
                                    IObjectStore& store) {
  switch (format) {
  case 0:
    new (ptr) CAnimSource(in, store);
    break;
  case 2:
    new (ptr) CFBStreamedCompression(in, store);
    break;
  default:
    break;
  }
}

CAllFormatsAnimSource::CAllFormatsAnimSource(CInputStream& in, IObjectStore& store,
                                             const SObjectTag& tag)
: mFormatUnion(in, store), x68_(0.f), x6c_(0.f), x70_(0.f), mTag(tag) {}

CFactoryFnReturn AnimSourceFactory(const SObjectTag& tag, CInputStream& in,
                                   const CVParamTransfer& param) {
  const rstl::rc_ptr< IVParamObj > obj = param.x0_obj;
  IObjectStore* pool = static_cast< TObjOwnerParam< IObjectStore* >* >(obj.GetPtr())->GetData();

  return rs_new CAllFormatsAnimSource(in, *pool, tag);
}
