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
  virtual size_t Read(void* dest, size_t len) override;
};

#endif // _CMEMORYINSTREAM
