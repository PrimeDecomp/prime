#ifndef _CMEMORYSTREAMOUT
#define _CMEMORYSTREAMOUT

#include "Kyoto/Streams/COutputStream.hpp"

class CMemoryStreamOut : public COutputStream {
public:
  enum EOwnerShip {
    kOS_Owned,
    kOS_NotOwned,
  };

  CMemoryStreamOut(uchar* buffer, size_t len, EOwnerShip ownerShip = kOS_NotOwned, int blockLen = 4096);
  virtual ~CMemoryStreamOut();
};

#endif // _CMEMORYSTREAMOUT
