#ifndef _CINPUTSTREAM_HPP
#define _CINPUTSTREAM_HPP

#include "types.h"

class CInputStream;
template < typename T >
struct TType {};
template < typename T >
inline T cinput_stream_helper(const TType< T >& type, CInputStream& in);

class CInputStream {
public:
  CInputStream(size_t len);
  CInputStream(const void* ptr, size_t len, bool owned);
  virtual ~CInputStream();
  virtual u32 Read(void* dest, u32 len) = 0;

  f32 ReadFloat();
  u64 ReadLongLong();
  u32 ReadLong();
  u16 ReadShort();
  bool ReadBool();
  u8 ReadChar();
  u32 ReadBits(u32 len);
  u32 ReadBytes(void* dest, unsigned long len);
  void Get(void* dest, unsigned long len);

  template < typename T >
  inline T Get(const TType<T>& type) {
    return cinput_stream_helper(type, *this);
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
inline s32 cinput_stream_helper(const TType< s32 >& type, CInputStream& in) {
  return in.ReadLong();
}
template <>
inline u32 cinput_stream_helper(const TType< u32 >& type, CInputStream& in) {
  return in.ReadLong();
}
template <>
inline unsigned long cinput_stream_helper(const TType< unsigned long >& type, CInputStream& in) {
  return in.ReadLong();
}
template <>
inline float cinput_stream_helper(const TType< float >& type, CInputStream& in) {
  return in.ReadFloat();
}

// rstl
#include "rstl/pair.hpp"
template < typename L, typename R >
inline rstl::pair< L, R > cinput_stream_helper(const TType< rstl::pair< L, R > >& type, CInputStream& in) {
  rstl::pair< L, R > result;
  result.first = in.Get(TType< L >());
  result.second = in.Get(TType< R >());
  return result;
}

#endif
