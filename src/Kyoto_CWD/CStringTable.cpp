#include "Kyoto_CWD/CStringTable.hpp"

#include "rstl/pair.hpp"
#include "rstl/vector.hpp"

#include "Kyoto_CWD/TGameTypes.hpp"

static FourCC mCurrentLanguage = 'ENGL';

CStringTable::CStringTable(CInputStream& in)
    : x0_stringCount(0), x4_data(NULL) {
  in.ReadLong();
  in.ReadLong();
  size_t langCount = in.Get< size_t >();
  x0_stringCount = in.Get< u32 >();
  rstl::vector< rstl::pair< FourCC, unsigned long > > langOffsets(langCount);
  for (size_t i = 0; i < langCount; ++i) {
    langOffsets.push_back(in.Get< rstl::pair< FourCC, unsigned long > >());
  }

  size_t offset = langOffsets.front().second;
  for (size_t i = 0; i < langCount; ++i) {
    if (langOffsets[i].first == mCurrentLanguage) {
      offset = langOffsets[i].second;
      break;
    }
  }
  for (u32 i = 0; i < offset; ++i) {
    in.ReadChar();
  }

  u32 dataLen = in.Get< u32 >();
  x4_data = new u8[dataLen];
  in.ReadBytes(x4_data.get(), dataLen);
}
