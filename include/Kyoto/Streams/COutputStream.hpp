#ifndef _COUTPUTSTREAM
#define _COUTPUTSTREAM

#include "types.h"

#include "stddef.h"

class COutputStream;

template < typename T >
void coutput_stream_helper(const T& t, COutputStream& out);

class COutputStream {
public:
  COutputStream(int len);
  virtual ~COutputStream();
  virtual void Write(const void* ptr, size_t len) = 0;
  void WriteBits(uint val, uint bitCount);

  void DoPut(const void* ptr, size_t len);
  void DoFlush();
  void Flush();
  void FlushShiftRegister();
  void Put(const void* ptr, size_t len) {
    FlushShiftRegister();
    DoPut(ptr, len);
  }

  template < typename T >
  void Put(const T& t) {
    coutput_stream_helper(t, *this);
  }

  void WriteInt8(const schar t) { Put(t); }
  void WriteUint8(const uchar t) { Put(t); }

  void WriteInt16(const sshort t) { Put(t); }
  void WriteUint16(const ushort t) { Put(t); }

  void WriteReal32(const float t) { Put(t); }

  void WriteUint32(const uint t) { Put(t); }
  void WriteInt32(const int t) { Put(t); }

  void WriteShort(const short t) { Put(&t, sizeof(short)); }
  void WriteLong(const int t) { Put(&t, sizeof(int)); }

  void WriteChar(const uchar c) {
    FlushShiftRegister();
    if (mUnwrittenLen >= mBufLen) {
      DoFlush();
    }
    ++mNumWrites;
    *(reinterpret_cast< uchar* >(mBufPtr) + mUnwrittenLen++) = c;
  }

  uint GetWrittenBytes() const { return mNumWrites; }

private:
  uint mUnwrittenLen;
  uint mBufLen;
  void* mBufPtr;
  uint mNumWrites;
  uint mShiftRegister;
  volatile uint mShiftRegisterOffset;
  uchar mScratch[96];
};

template < typename T >
inline void coutput_stream_helper(const T& t, COutputStream& out) {
  t.PutTo(out);
}

template <>
inline void coutput_stream_helper(const float& t, COutputStream& out) {
  int i = *(int*)(&t);
  out.Put(&i, sizeof(float));
}

template <>
inline void coutput_stream_helper(const schar& t, COutputStream& out) {
  out.WriteChar(t);
}

template <>
inline void coutput_stream_helper(const uchar& t, COutputStream& out) {
  out.WriteChar(t);
}

template <>
inline void coutput_stream_helper(const sshort& t, COutputStream& out) {
  out.WriteShort(t);
}

template <>
inline void coutput_stream_helper(const ushort& t, COutputStream& out) {
  out.WriteShort(t);
}

template <>
inline void coutput_stream_helper(const int& t, COutputStream& out) {
  out.WriteLong(t);
}

template <>
inline void coutput_stream_helper(const uint& t, COutputStream& out) {
  out.WriteLong(t);
}

template <>
inline void coutput_stream_helper(const bool& t, COutputStream& out) {
  out.WriteChar(static_cast< u8 >(t));
}

#include "rstl/reserved_vector.hpp"
namespace rstl {
template < typename T, int N >
inline void reserved_vector< T, N >::PutTo(COutputStream& out) const {
  out.Put(size());
  const_iterator iter = begin();
  const_iterator iterEnd = end();
  for (; iter != iterEnd; ++iter) {
    out.Put(*iter);
  }
}
} // namespace rstl

#endif // _COUTPUTSTREAM
