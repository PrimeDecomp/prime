#include "Kyoto/Text/CStringTable.hpp"

#include "rstl/pair.hpp"
#include "rstl/vector.hpp"

#include "Kyoto/CFactoryMgr.hpp"

static FourCC mCurrentLanguage = 'ENGL';
static const wchar_t skInvalidString[] = L"Invalid";

CStringTable::CStringTable(CInputStream& in) : x0_stringCount(0), x4_data(NULL) {
  in.ReadLong();
  in.ReadLong();
  int langCount = in.Get(TType< int >());
  x0_stringCount = in.Get(TType< uint >());
  rstl::vector< rstl::pair< FourCC, uint > > langOffsets(langCount);
  for (int i = 0; i < langCount; ++i) {
    langOffsets.push_back(in.Get(TType< rstl::pair< FourCC, uint > >()));
  }

  int offset = langOffsets.front().second;
  for (int i = 0; i < langCount; ++i) {
    if (langOffsets[i].first == mCurrentLanguage) {
      offset = langOffsets[i].second;
      break;
    }
  }
  for (uint i = 0; i < offset; ++i) {
    in.ReadChar();
  }

  uint dataLen = in.Get(TType< uint >());
  x4_data = rs_new uchar[dataLen];
  in.ReadBytes(x4_data.get(), dataLen);
}

const wchar_t* CStringTable::GetString(int idx) const {
  if (idx < 0 || idx >= x0_stringCount) {
    return skInvalidString;
  }
  int offset = *(reinterpret_cast< const int* >(x4_data.get()) + idx);
  return reinterpret_cast< const wchar_t* >(x4_data.get() + offset);
}

template <>
CFactoryFnReturn::CFactoryFnReturn(CStringTable* ptr)
: obj(TToken< CStringTable >::GetIObjObjectFor(rstl::auto_ptr< CStringTable >(ptr)).release()) {}

CFactoryFnReturn FStringTableFactory(const SObjectTag& tag, CInputStream& in,
                                     const CVParamTransfer& xfer) {
  return rs_new CStringTable(in);
}
