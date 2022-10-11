#ifndef _CMEMORYSTREAMOUT
#define _CMEMORYSTREAMOUT

#include "Kyoto/Streams/COutputStream.hpp"

class CMemoryStreamOut : public COutputStream {
public:
  enum EOwnerShip {
    kOS_Owned,
    kOS_NotOwned,
  };

  CMemoryStreamOut(void* buffer, size_t len, EOwnerShip ownerShip = kOS_NotOwned, int blockLen = 4096);
  virtual ~CMemoryStreamOut();

private:
  u8* x7c_ptr;
  u32 x80_len;
  u32 x84_position;
  bool x88_owned;
};

#endif // _CMEMORYSTREAMOUT
