#ifndef _CMEMORYINSTREAM_HPP
#define _CMEMORYINSTREAM_HPP

#include "CInputStream.hpp"

class CMemoryInStream : public CInputStream {
public:
  enum EOwnerShip {
    NotOwned,
    Owned,
  };

  CMemoryInStream(const void* ptr, unsigned long len);
  CMemoryInStream(const void* ptr, unsigned long len, EOwnerShip ownership);
  virtual ~CMemoryInStream() override {}
  virtual u32 Read(void* dest, u32 len) override;
};

#endif
