#include "Kyoto/Streams/CZipOutputStream.hpp"

#include "rstl/math.hpp"

#include "Kyoto/Streams/CZipSupport.hpp"
#include "Kyoto/Alloc/CMemory.hpp"

CZipOutputStream::CZipOutputStream(COutputStream* out, int level)
: COutputStream(1024)
, mOutput(out)
, mCompressedBytesWritten(0)
, mZStream(rs_new z_stream)
, mUnk(0) {
  mZStream->zalloc = CZipSupport::Alloc;
  mZStream->zfree = CZipSupport::Free;
  mZStream->opaque = nullptr;

  int useLevel = 9;
  if (level < 10) {
    useLevel = level;
  }
  deflateInit(mZStream.get(), level);
}

CZipOutputStream::~CZipOutputStream() {
  DoFlush();
  while (!Process(true))
    ;
}

void CZipOutputStream::Write(const void* buf, size_t len) {
  mZStream->next_in = (Bytef*)buf;
  mZStream->avail_in = len;

  while (mZStream->avail_in != 0) {
    Process(false);
  }
}


bool CZipOutputStream::Process(bool flush) {
  Bytef outBuf[1024];
  mZStream->avail_out = 1024;
  mZStream->next_out = outBuf;
  int ret = deflate(mZStream.get(), flush);
  /* assertion failure logic */

  if (mZStream->avail_out != 1024) {
    mOutput->DoPut(outBuf, 1024 - mZStream->avail_out);
    mCompressedBytesWritten += 1024 - mZStream->avail_out;
  }

  return ret == Z_STREAM_END;
}
