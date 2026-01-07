#ifndef _CINPUTSTREAM
#define _CINPUTSTREAM

#include "types.h"

#include "stddef.h"

class CInputStream;
template < typename T >
struct TType {};
template < typename T >
T cinput_stream_helper(const TType< T >& type, CInputStream& in);

template < typename T >
inline TType< T > TGetType(const T&) {
  return TType< T >();
}

class CInputStream {
public:
  CInputStream(int len);
  CInputStream(const void* ptr, int len, bool owned);
  virtual ~CInputStream();
  virtual size_t Read(void* dest, size_t len) = 0;

  float ReadFloat();
  u64 ReadLongLong();
  uint ReadLong();
  ushort ReadShort();
  bool ReadBool();
  char ReadChar();
  uint ReadBits(uint len);
  size_t ReadBytes(void* dest, size_t len);
  void Get(void* dest, unsigned long len);

  template < typename T >
  inline T Get(const TType< T >& type = TType< T >()) {
    return cinput_stream_helper(TType< T >(), *this);
  }

  bool ReadPackedBool() { return ReadBits(1) != 0; }

  int ReadInt32() { return Get< int >(); }
  ushort ReadUint16() { return Get< ushort >(); }
  short ReadInt16() { return Get< short >(); }

  uint GetBlockOffset() const { return x4_blockOffset; }
  const uint GetReadPosition() const { return x18_readPosition; }

private:
  bool GrabAnotherBlock();
  bool InternalReadNext();

  uint x4_blockOffset;
  uint x8_blockLen;
  uint xc_len;
  uchar* x10_ptr;
  bool x14_owned;
  uint x18_readPosition;
  uint x1c_bitWord;
  uint x20_bitOffset;
};

template < typename T >
inline T cinput_stream_helper(const TType< T >& type, CInputStream& in) {
  return T(in);
}
template <>
inline bool cinput_stream_helper(const TType< bool >& type, CInputStream& in) {
  return in.ReadBool();
}
template <>
inline char cinput_stream_helper(const TType< char >& type, CInputStream& in) {
  return in.ReadChar();
}

template <>
inline unsigned char cinput_stream_helper(const TType< unsigned char >& type, CInputStream& in) {
  return in.ReadChar();
}

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
template <>
inline short cinput_stream_helper(const TType< short >& type, CInputStream& in) {
  return in.ReadShort();
}
template <>
inline ushort cinput_stream_helper(const TType< ushort >& type, CInputStream& in) {
  return in.ReadShort();
}

// rstl
#include "rstl/pair.hpp"
template < typename L, typename R >
inline rstl::pair< L, R > cinput_stream_helper(const TType< rstl::pair< L, R > >& type,
                                               CInputStream& in) {
  rstl::pair< L, R > result;
  result.first = in.Get(TType< L >());
  result.second = in.Get(TType< R >());
  return result;
}

#include "rstl/vector.hpp"
template < typename T, typename Alloc >
inline rstl::vector< T, Alloc >::vector(CInputStream& in, const Alloc& allocator)
: x4_count(0), x8_capacity(0), xc_items(nullptr) {
  int count = in.Get(TGetType(0));
  reserve(count);
  for (int i = 0; i < count; i++) {
    push_back(in.Get(TType< T >()));
  }
}

#include "rstl/reserved_vector.hpp"
template < typename T, int N >
inline rstl::reserved_vector< T, N >::reserved_vector(CInputStream& in) : x0_count(in.ReadInt32()) {
  for (int i = 0; i < x0_count; i++) {
    construct(&data()[i], in.Get(TType< T >()));
  }
}

#endif // _CINPUTSTREAM
