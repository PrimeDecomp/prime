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
  CInputStream(int len);
  CInputStream(const void* ptr, int len, bool owned);
  virtual ~CInputStream();
  virtual uint Read(void* dest, uint len) = 0;

  f32 ReadFloat();
  u64 ReadLongLong();
  uint ReadLong();
  u16 ReadShort();
  bool ReadBool();
  u8 ReadChar();
  uint ReadBits(uint len);
  uint ReadBytes(void* dest, unsigned long len);
  void Get(void* dest, unsigned long len);

  template < typename T >
  inline T Get(const TType<T>& type) {
    return cinput_stream_helper(type, *this);
  }

private:
  bool GrabAnotherBlock();
  bool InternalReadNext();

  uint x4_blockOffset;
  uint x8_blockLen;
  uint xc_len;
  u8* x10_ptr;
  bool x14_owned;
  uint x18_readPosition;
  uint x1c_bitWord;
  uint x20_bitOffset;
};

template <>
inline int cinput_stream_helper(const TType< int >& type, CInputStream& in) {
  return in.ReadLong();
}
template <>
inline uint cinput_stream_helper(const TType< uint >& type, CInputStream& in) {
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
