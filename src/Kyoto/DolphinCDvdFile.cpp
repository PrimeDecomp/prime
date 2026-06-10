#include "Kyoto/CARAMToken.hpp"
#include "Kyoto/CDvdFile.hpp"
#include "Kyoto/CDvdRequest.hpp"

#include "Kyoto/CARAMManager.hpp"

#include "dolphin/os/OSCache.h"
#include "rstl/math.hpp"

#include "dolphin/arq.h"
#include "dolphin/dvd.h"
#include "dolphin/os.h"

#include "string.h"

static CDvdFile* sFirstARAM = nullptr;

struct CDvdFileARAM {
  CDvdFileARAM()
  : x5c_file(nullptr)
  , x60_nextFile(nullptr)
  , x78_gotARAMInterrupt(false)
  , x79_gotDVDInterrupt(false)
  , x7c_fileSize(0)
  , x80_fileSize(0)
  , x84_curBufferLen(0)
  , x88_aramOffset(0)
  , x8c_bufferLen(0)
  , x90_bufferIndex(0) {}
  ARQRequest x0_request;
  DVDFileInfo x20_dvdFile;
  CDvdFile* x5c_file;
  CDvdFile* x60_nextFile;
  rstl::reserved_vector< rstl::auto_ptr< uchar >, 2 > x64_buffers;
  bool x78_gotARAMInterrupt;
  bool x79_gotDVDInterrupt;
  uint x7c_fileSize;
  uint x80_fileSize;
  int x84_curBufferLen;
  uint x88_aramOffset;
  int x8c_bufferLen;
  uint x90_bufferIndex;
};

const char* DecodeARAMFile(const char* filename) {
  if (!strncmp(filename, "aram:", 5)) {
    return filename + 5;
  }

  return filename;
}

void CDvdFile::DVDARAMXferCallback(s32 result, DVDFileInfo* info) {
  /* How the hell did retro do this normally?
     Somehow they manage to get CDvdFileARAM->x5c_file at offset 0x3c
     which excludes the ARQRequest class member.
   */
  struct InfoContainer {
    DVDFileInfo info;
    CDvdFile* file;
  }* ptr = reinterpret_cast< InfoContainer* >(info);
  DVDClose(&ptr->info);
  ptr->file->HandleDVDInterrupt();
}

void CDvdFile::ARAMARAMXferCallback(u32 addr) {
  reinterpret_cast< CDvdFileARAM* >(addr)->x5c_file->HandleARAMInterrupt();
}

void CDvdFile::HandleARAMInterrupt() {
  BOOL enabled = OSDisableInterrupts();
  CDvdFileARAM* arFile = xc_aramFile.get();

  arFile->x78_gotARAMInterrupt = true;

  if (arFile->x78_gotARAMInterrupt && arFile->x79_gotDVDInterrupt) {
    PingARAMTransfer();
  }

  OSRestoreInterrupts(enabled);
}

void CDvdFile::HandleDVDInterrupt() {
  BOOL enabled = OSDisableInterrupts();
  CDvdFileARAM* arFile = xc_aramFile.get();

  arFile->x79_gotDVDInterrupt = true;

  if (arFile->x78_gotARAMInterrupt && arFile->x79_gotDVDInterrupt) {
    PingARAMTransfer();
  }

  OSRestoreInterrupts(enabled);
}

void CDvdFile::PingARAMTransfer() {
  CDvdFileARAM* aramFile = xc_aramFile.get();

  if (aramFile->x8c_bufferLen == 0) {
    PopARAMFileLoad();
    return;
  }

  int length = rstl::min_val(65536, aramFile->x8c_bufferLen);
  ARQPostRequest(&aramFile->x0_request, 0, ARQ_TYPE_MRAM_TO_ARAM, ARQ_PRIORITY_HIGH,
                 reinterpret_cast< u32 >(aramFile->x64_buffers[aramFile->x90_bufferIndex].get()),
                 reinterpret_cast< u32 >(x4_aramBuffer + aramFile->x88_aramOffset), length, ARAMARAMXferCallback);

  aramFile->x8c_bufferLen -= length;
  aramFile->x88_aramOffset += length;
  aramFile->x78_gotARAMInterrupt = false;
  aramFile->x90_bufferIndex ^= 1;

  if (aramFile->x84_curBufferLen != 0) {
    int length2 = rstl::min_val(65536, aramFile->x84_curBufferLen);
    DVDFastOpen(x0_fileEntry, &aramFile->x20_dvdFile);
    DVDReadAsync(&aramFile->x20_dvdFile, aramFile->x64_buffers[aramFile->x90_bufferIndex].get(), length2,
                 aramFile->x80_fileSize, DVDARAMXferCallback);
    aramFile->x80_fileSize += length2;
    aramFile->x84_curBufferLen -= length2;
    aramFile->x79_gotDVDInterrupt = false;
  }
}

void CDvdFile::TryARAMFile() {
  x4_aramBuffer = static_cast< uchar* >(CARAMManager::Alloc(x14_size));
  if (CARAMManager::GetInvalidAlloc() == x4_aramBuffer) {
    return;
  }
  xc_aramFile = rs_new CDvdFileARAM();
  CDvdFileARAM* arfile = xc_aramFile.get();
  arfile->x5c_file = this;
  arfile->x78_gotARAMInterrupt = true;
  arfile->x7c_fileSize = arfile->x84_curBufferLen = arfile->x8c_bufferLen = GetFileSize();
  x8_aramAllocated = true;
  PushARAMFileLoad();
}

void CDvdFile::PushARAMFileLoad() {
  BOOL enabled = OSDisableInterrupts();
  CDvdFile* file = sFirstARAM;
  if (file == NULL) {
    sFirstARAM = this;
    StartARAMFileLoad();
  } else {
    for (CDvdFile* p = file; p != nullptr; p = p->xc_aramFile->x60_nextFile) {
      if (p->xc_aramFile->x60_nextFile == nullptr) {
        p->xc_aramFile->x60_nextFile = this;
        break;
      }
    }
  }
  OSRestoreInterrupts(enabled);
}

void CDvdFile::PopARAMFileLoad() {
  BOOL enabled = OSDisableInterrupts();
  CDvdFile* file = xc_aramFile->x60_nextFile;
  x9_aramPopped = true;
  sFirstARAM = file;
  if (file != nullptr) {
    file->StartARAMFileLoad();
  }

  OSRestoreInterrupts(enabled);
}

bool CDvdFile::IsARAMFileLoaded() {
  if (!x8_aramAllocated) {
    return true;
  }

  if (!x9_aramPopped) {
    return false;
  }

  xc_aramFile = nullptr;

  return true;
}

void CDvdFile::StartARAMFileLoad() {
  CDvdFileARAM* aramFile = xc_aramFile.get();
  aramFile->x64_buffers.push_back(
      static_cast< uchar* >(CMemory::Alloc(0x10000, IAllocator::kHI_RoundUpLen)));
  aramFile->x64_buffers.push_back(
      static_cast< uchar* >(CMemory::Alloc(0x10000, IAllocator::kHI_RoundUpLen)));

  int len = rstl::min_val(x14_size, 65536);
  aramFile->x84_curBufferLen -= len;
  aramFile->x80_fileSize = len;
  DVDFastOpen(x0_fileEntry, &aramFile->x20_dvdFile);
  DVDReadAsync(&aramFile->x20_dvdFile, aramFile->x64_buffers[0].get(), len, 0, DVDARAMXferCallback);
}

void CDvdFile::StallForARAMFile() {
  while (xc_aramFile.get() != nullptr) {
    OSYieldThread();
  }
}

CDvdFile::CDvdFile(const char* filename)
: x0_fileEntry(-1)
, x4_aramBuffer(0)
, x8_aramAllocated(false)
, x9_aramPopped(false)
, xc_aramFile(nullptr)
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

CDvdRequest* CDvdFile::SyncRead(void* dest, uint len) {
  return AsyncSeekRead(dest, len, kSO_Cur, 0);
}

void CDvdFile::SyncSeekRead(void* dest, uint len, ESeekOrigin origin, int offset) {
  StallForARAMFile();
  CalcFileOffset(offset, origin);

  if (x8_aramAllocated) {
    uint roundedLen = (len + 31) & ~31;
    DCFlushRange(dest, roundedLen);
    CARAMManager::WaitForDMACompletion(
        CARAMManager::DMAToMRAM(x4_aramBuffer + x10_offset, dest, roundedLen, CARAMManager::kDMAPrio_One));
  } else {
    DVDFileInfo info;
    DVDFastOpen(x0_fileEntry, &info);
    DVDReadAsync(&info, dest, (len + 31) & ~31, x10_offset, internalCallback);
    while (DVDGetCommandBlockStatus(&info.cb) != DVD_STATE_END) {
    }
    DVDClose(&info);
  }

  UpdateFilePos(len);
}

CDvdRequest* CDvdFile::AsyncSeekRead(void* dest, uint len, ESeekOrigin origin, int offset) {
  StallForARAMFile();
  CalcFileOffset(offset, origin);
  CDvdRequest* request;
  if (x8_aramAllocated) {
    const int roundedLen = (len + 31) & ~31;
    DCFlushRange(dest, roundedLen);
    request = rs_new CARAMDvdRequest(
        CARAMManager::DMAToMRAM(x4_aramBuffer + x10_offset, dest, roundedLen, CARAMManager::kDMAPrio_One));
  } else {
    CRealDvdRequest* req = rs_new CRealDvdRequest();
    DVDFileInfo* info = req->FileInfo();
    DVDFastOpen(x0_fileEntry, info);
    DVDReadAsync(info, dest, (len + 31) & ~31, x10_offset, internalCallback);
    request = req;
  }

  UpdateFilePos(len);

  return request;
}

void CDvdFile::CloseFile() {
  if (!x8_aramAllocated) {
    return;
  }

  StallForARAMFile();
  CARAMManager::Free(x4_aramBuffer);
}

bool CDvdFile::FileExists(const char* filename) {
  return DVDConvertPathToEntrynum(const_cast< char* >(DecodeARAMFile(filename))) != -1;
}

void CDvdFile::internalCallback(s32 res, DVDFileInfo* info) {
#if VERSION >= 1
  DCInvalidateRange((void*)info->cb.addr, info->cb.length);
#endif
}

void CDvdFile::CalcFileOffset(int offset, ESeekOrigin origin) {
  switch (origin) {
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
