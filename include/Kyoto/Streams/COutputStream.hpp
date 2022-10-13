#ifndef _COUTPUTSTREAM
#define _COUTPUTSTREAM

#include "types.h"


class COutputStream;

template < typename T >
void coutput_stream_helper(const T& t, COutputStream& out);

class COutputStream {
  void DoPut(const void* ptr, size_t len);
  void DoFlush();

public:
  COutputStream(int len);
  virtual ~COutputStream();
  virtual void Write(const void* ptr, size_t len) = 0;
  void WriteBits(uint val, uint bitCount);

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

  void WriteReal32(float t) { Put(t); }

  void WriteUint32(uint t) { Put(t); }
  void WriteInt32(int t) { Put(t); }

  void WriteLong(int t) { Put(&t, sizeof(int)); }

  void WriteChar(u8 c) {
    FlushShiftRegister();
    if (mUnwrittenLen >= mBufLen) {
      DoFlush();
    }
    ++mNumWrites;
    *(reinterpret_cast< u8* >(mBufPtr) + mUnwrittenLen++) = c;
  }


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
  int tmp = *(int*)&t;
  out.Put(&tmp, sizeof(float));
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

#endif // _COUTPUTSTREAM
