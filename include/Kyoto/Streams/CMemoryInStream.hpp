#ifndef _CMEMORYINSTREAM
#define _CMEMORYINSTREAM

#include "Kyoto/Streams/CInputStream.hpp"

class CMemoryInStream : public CInputStream {
public:
  enum EOwnerShip {
    kOS_Owned,
    kOS_NotOwned,
  };

  CMemoryInStream(const void* ptr, unsigned long len);
  CMemoryInStream(const void* ptr, unsigned long len, EOwnerShip ownership);
  virtual ~CMemoryInStream() override {}
  virtual uint Read(void* dest, uint len) override;
};

#endif // _CMEMORYINSTREAM
