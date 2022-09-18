#ifndef _CZIPINPUTSTREAM_HPP
#define _CZIPINPUTSTREAM_HPP

#include "types.h"

#include "Kyoto/Streams/CInputStream.hpp"

#include "rstl/auto_ptr.hpp"

class CZipInputStream : public CInputStream {
public:
  CZipInputStream(rstl::auto_ptr< CInputStream > in);
  ~CZipInputStream() override;
  uint Read(void* dest, uint len) override;

private:
  u8* x24_compBuf;
  rstl::auto_ptr< CInputStream > x28_stream;
  unkptr x30_zstream;
};

#endif
