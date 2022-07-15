#ifndef _CINPUTSTREAM_HPP
#define _CINPUTSTREAM_HPP

#include "types.h"

class CInputStream;
template < typename T >
struct TType {};
template < typename T >
inline T cinput_stream_helper(TType< T > type, CInputStream& in);

class CInputStream {
public:
  CInputStream(size_t len);
  CInputStream(const void* ptr, size_t len, bool owned);
  virtual ~CInputStream();
  virtual u32 Read(void* dest, u32 len);

  s32 ReadLong();
  u8 ReadChar();
  u32 ReadBytes(void* dest, unsigned long len);
  u32 ReadBits(s32 len);
  f32 ReadFloat();
  s64 ReadLongLong();
  s16 ReadShort();
  bool ReadBool();

  void Get(void* dest, unsigned long len);
  template < typename T >
  inline T Get() {
    return cinput_stream_helper(TType< T >(), *this);
  }

private:
  bool GrabAnotherBlock();
  bool InternalReadNext();

  u32 x4_blockOffset;
  u32 x8_blockLen;
  u32 xc_len;
  u8* x10_ptr;
  bool x14_owned;
  u32 x18_readPosition;
  u32 x1c_bitWord;
  u32 x20_bitOffset;
};

template <>
inline s32 cinput_stream_helper(TType< s32 > type, CInputStream& in) {
  return in.ReadLong();
}
template <>
inline u32 cinput_stream_helper(TType< u32 > type, CInputStream& in) {
  return in.ReadLong();
}
template <>
inline unsigned long cinput_stream_helper(TType< unsigned long > type, CInputStream& in) {
  return in.ReadLong();
}

// rstl
#include "rstl/pair.hpp"
template < typename L, typename R >
inline rstl::pair< L, R > cinput_stream_helper(TType< rstl::pair< L, R > > type, CInputStream& in) {
  rstl::pair< L, R > result;
  result.first = in.Get< L >();
  result.second = in.Get< R >();
  return result;
}

#endif
