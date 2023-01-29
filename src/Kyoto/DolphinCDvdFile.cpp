#include "Kyoto/CDvdFile.hpp"

#include "Kyoto/CDvdRequest.hpp"

#include "Kyoto/CARAMManager.hpp"

#include "dolphin/arq.h"
#include "dolphin/dvd.h"
#include "dolphin/os.h"

#include "string.h"

const char* tmp = "??(??)";

struct SDvdFileInfo : DVDFileInfo {
  CDvdFile* x3c_file;
};

struct SAramCallback {
  char data[0x5c];
  CDvdFile* x5c_file;
};

const char* DecodeARAMFile(const char* filename) {
  if (!strncmp(filename, "aram:", 5)) {
    return filename + 5;
  }

  return filename;
}

void CDvdFile::DVDARAMXferCallback(s32 result, DVDFileInfo* info) {
  DVDClose(info);
  reinterpret_cast< SDvdFileInfo* >(info)->x3c_file->HandleDVDInterrupt();
}

void CDvdFile::ARAMARAMXferCallback(u32 addr) {
  reinterpret_cast< SAramCallback* >(addr)->x5c_file->HandleARAMInterrupt();
}

void CDvdFile::HandleARAMInterrupt() {
  BOOL enabled = OSDisableInterrupts();

  OSRestoreInterrupts(enabled);
}

void CDvdFile::HandleDVDInterrupt() {
  BOOL enabled = OSDisableInterrupts();
  OSRestoreInterrupts(enabled);
}

void CDvdFile::PingARAMTransfer() {}

void CDvdFile::TryARAMFile() {}

void CDvdFile::PushARAMFileLoad() {}

void CDvdFile::PopARAMFileLoad() {}

extern "C" void sub_8034ff7c() {}

void CDvdFile::StartARAMFileLoad() {}

void CDvdFile::StallForARAMFile() {}

CDvdFile::CDvdFile(const char* filename)
: x0_fileEntry(-1)
, x4_(0)
, x8_(0)
, x9_(0)
, xc_(nullptr)
, x10_offset(0)
, x14_size(0)
, x18_filename(filename, -1) {
  const char* decodedName = DecodeARAMFile(filename);
  x0_fileEntry = DVDConvertPathToEntrynum(const_cast< char* >(decodedName));
  DVDFileInfo fileInfo;
  if (x0_fileEntry != -1) {
    DVDFastOpen(x0_fileEntry, &fileInfo);
  }

  x14_size = fileInfo.length;
  DVDClose(&fileInfo);

  if (filename != decodedName) {
    TryARAMFile();
  }
}

CDvdFile::~CDvdFile() { CloseFile(); }

CDvdRequest* CDvdFile::SyncRead(void* dest, uint len) { AsyncSeekRead(dest, len, kSO_Cur, 0); }

CDvdRequest* CDvdFile::SyncSeekRead(void* buf, uint len, ESeekOrigin origin, int offset) {}

CDvdRequest* CDvdFile::AsyncSeekRead(void* dest, uint len, ESeekOrigin origin, int offset) {
  CDvdRequest* request;
  StallForARAMFile();
  CalcFileOffset(offset, origin);

  if (x8_) {

  } else {
    int roundedLen = (len + 31) & ~31;
    DCFlushRange(dest, roundedLen);
    request = new CARAMDvdRequest(0);
  }

  UpdateFilePos(len);

  return request;
}

void CDvdFile::CloseFile() {
  if (!x8_) {
    return;
  }

  StallForARAMFile();
  CARAMManager::Free(x4_);
}

bool CDvdFile::FileExists(const char* filename) {
  return DVDConvertPathToEntrynum(const_cast< char* >(DecodeARAMFile(filename))) != -1;
}

void CDvdFile::internalCallback(s32, DVDFileInfo*) {}

void CDvdFile::CalcFileOffset(int offset, ESeekOrigin origin) {
  switch(origin) {
    case kSO_Set: 
      x10_offset = offset;
      break;
    case kSO_Cur:
      x10_offset += offset;
      break;
    case kSO_End:
      x10_offset = offset + x14_size;
      break;
  }
}

void CDvdFile::UpdateFilePos(int pos) {
  x10_offset += (pos + 31) & ~31;
  int filesize = GetFileSize();
  if (x10_offset > filesize) {
      x10_offset = filesize;
  }
}
