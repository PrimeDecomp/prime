#include "Kyoto/Text/CStringTable.hpp"

#include <Kyoto/Streams/CInputStream.hpp>
#if TARGET_LITTLE_ENDIAN || WCHAR_MAX > 0xffff
#include "Kyoto/Basics/CBasics.hpp"
#include "Kyoto/Streams/CMemoryInStream.hpp"
#include <string.h>
#endif

#include <rstl/pair.hpp>
#include <rstl/vector.hpp>

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
#if TARGET_LITTLE_ENDIAN || WCHAR_MAX > 0xffff
  rstl::vector< uchar > data(dataLen, uchar(0));
  in.ReadBytes(data.data(), dataLen);
  if (x0_stringCount < 0 || static_cast< uint >(x0_stringCount) > dataLen / sizeof(uint)) {
    x0_stringCount = 0;
    return;
  }

  CMemoryInStream offsets(data.data(), x0_stringCount * sizeof(uint));
  mNativeStrings.reserve(x0_stringCount);
  for (int i = 0; i < x0_stringCount; ++i) {
    uint pos = offsets.ReadLong();
    rstl::vector< wchar_t > text;
    bool terminated = false;
    while (pos <= dataLen && dataLen - pos >= sizeof(ushort)) {
      ushort unit;
      memcpy(&unit, data.data() + pos, sizeof(unit));
      uint codepoint = CBasics::SwapBytes(unit);
      pos += sizeof(unit);
      if (codepoint == 0) {
        terminated = true;
        break;
      }

      // Preserve UTF-16 on 16-bit wchar_t hosts; combine surrogate pairs on
      // hosts whose wide characters can hold a complete Unicode code point.
      if (sizeof(wchar_t) > sizeof(ushort) && codepoint >= 0xd800 && codepoint <= 0xdbff &&
          dataLen - pos >= sizeof(ushort)) {
        memcpy(&unit, data.data() + pos, sizeof(unit));
        const ushort low = CBasics::SwapBytes(unit);
        if (low >= 0xdc00 && low <= 0xdfff) {
          codepoint = 0x10000 + ((codepoint - 0xd800) << 10) + low - 0xdc00;
          pos += sizeof(unit);
        }
      }
      text.push_back(static_cast< wchar_t >(codepoint));
    }
    if (!terminated) {
      text.clear();
      for (const wchar_t* c = skInvalidString; *c; ++c) {
        text.push_back(*c);
      }
    }
    text.push_back(0);
    mNativeStrings.push_back(text);
  }
#else
  x4_data = rs_new uchar[dataLen];
  in.ReadBytes(x4_data.get(), dataLen);
#endif
}

const wchar_t* CStringTable::GetString(int idx) const {
  if (idx < 0 || idx >= x0_stringCount) {
    return skInvalidString;
  }
#if TARGET_LITTLE_ENDIAN || WCHAR_MAX > 0xffff
  return mNativeStrings[idx].data();
#else
  int offset = *(reinterpret_cast< const int* >(x4_data.get()) + idx);
  return reinterpret_cast< const wchar_t* >(x4_data.get() + offset);
#endif
}

const CFactoryFnReturn FStringTableFactory(const SObjectTag& tag, CInputStream& in,
                                     const CVParamTransfer& xfer) {
  return rs_new CStringTable(in);
}
