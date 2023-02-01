#include "Kyoto/CARAMToken.hpp"
#include "Kyoto/CDvdFile.hpp"
#include "Kyoto/CDvdRequest.hpp"

#include "Kyoto/CARAMManager.hpp"

#include "rstl/math.hpp"

#include "dolphin/arq.h"
#include "dolphin/dvd.h"
#include "dolphin/os.h"

#include "string.h"

static CDvdFile* sFirstARAM = nullptr;

struct CDvdFileARAM {
  CDvdFileARAM()
  : x5c_file(nullptr)
  , x60_(nullptr)
  , x78_(0)
  , x79_(0)
  , x7c_(0)
  , x80_(0)
  , x84_(0)
  , x88_(0)
  , x8c_(0)
  , x90_(0) {}
  ARQRequest x0_request;
  DVDFileInfo x20_dvdFile;
  CDvdFile* x5c_file;
  CDvdFile* x60_;
  rstl::reserved_vector< rstl::auto_ptr< uchar >, 2 > x64_;
  bool x78_;
  bool x79_;
  uint x7c_;
  uint x80_;
  int x84_;
  uint x88_;
  int x8c_;
  uint x90_;
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
  struct Hack {
    DVDFileInfo info;
    CDvdFile* file;
  };

  DVDClose(info);
  reinterpret_cast<Hack*>(info)->file->HandleDVDInterrupt();
}

void CDvdFile::ARAMARAMXferCallback(u32 addr) {
  reinterpret_cast< CDvdFileARAM* >(addr)->x5c_file->HandleARAMInterrupt();
}

void CDvdFile::HandleARAMInterrupt() {
  BOOL enabled = OSDisableInterrupts();
  CDvdFileARAM* arFile = xc_.get();

  arFile->x78_ = true;

  if (arFile->x78_ && arFile->x79_) {
    PingARAMTransfer();
  }

  OSRestoreInterrupts(enabled);
}

void CDvdFile::HandleDVDInterrupt() {
  BOOL enabled = OSDisableInterrupts();
  CDvdFileARAM* arFile = xc_.get();

  arFile->x79_ = true;

  if (arFile->x78_ && arFile->x79_) {
    PingARAMTransfer();
  }

  OSRestoreInterrupts(enabled);
}

void CDvdFile::PingARAMTransfer() {
  CDvdFileARAM* aramFile = xc_.get();

  if (aramFile->x8c_ == 0) {
    PopARAMFileLoad();
    return;
  }

  int length = rstl::min_val(65536, aramFile->x8c_);
  ARQPostRequest(&aramFile->x0_request, 0, ARQ_TYPE_MRAM_TO_ARAM, ARQ_PRIORITY_HIGH,
                 reinterpret_cast< u32 >(aramFile->x64_[aramFile->x90_].get()),
                 reinterpret_cast< u32 >(x4_ + aramFile->x88_), length, ARAMARAMXferCallback);

  aramFile->x8c_ -= length;
  aramFile->x88_ += length;
  aramFile->x78_ = false;
  aramFile->x90_ ^= 1;

  if (aramFile->x84_ != 0) {
    int length2 = rstl::min_val(65536, aramFile->x84_);
    DVDFastOpen(x0_fileEntry, &aramFile->x20_dvdFile);
    DVDReadAsync(&aramFile->x20_dvdFile, aramFile->x64_[aramFile->x90_].get(), length2,
                 aramFile->x80_, DVDARAMXferCallback);
    aramFile->x80_ += length2;
    aramFile->x84_ -= length2;
    aramFile->x79_ = false;
  }
}

void CDvdFile::TryARAMFile() {
  x4_ = static_cast< uchar* >(CARAMManager::Alloc(x14_size));
  if (CARAMManager::GetInvalidAlloc() == x4_) {
    return;
  }
  xc_ = new CDvdFileARAM();
  CDvdFileARAM* arfile = xc_.get();
  arfile->x5c_file = this;
  arfile->x78_ = true;
  arfile->x7c_ = arfile->x84_ = arfile->x8c_ = GetFileSize();
  x8_ = true;
  PushARAMFileLoad();
}

void CDvdFile::PushARAMFileLoad() {
  BOOL enabled = OSDisableInterrupts();
  CDvdFile* file = sFirstARAM;
  if (file == NULL) {
    sFirstARAM = this;
    StartARAMFileLoad();
  } else {
    for (CDvdFile* p = file; p != nullptr; p = p->xc_->x60_) {
      if (p->xc_->x60_ == nullptr) {
        p->xc_->x60_ = this;
        break;
      }
    }
  }
  OSRestoreInterrupts(enabled);
}

void CDvdFile::PopARAMFileLoad() {
  BOOL enabled = OSDisableInterrupts();
  CDvdFile* file = xc_->x60_;
  x9_ = true;
  sFirstARAM = file;
  if (file != nullptr) {
    file->StartARAMFileLoad();
  }

  OSRestoreInterrupts(enabled);
}

bool CDvdFile::IsARAMFileLoaded() {
  if (!x8_) {
    return true;
  }

  if (!x9_) {
    return false;
  }

  xc_ = nullptr;

  return true;
}

void CDvdFile::StartARAMFileLoad() {
  CDvdFileARAM* aramFile = xc_.get();
  aramFile->x64_.push_back((uchar*)CMemory::Alloc(0x10000, IAllocator::kHI_RoundUpLen));
  aramFile->x64_.push_back((uchar*)CMemory::Alloc(0x10000, IAllocator::kHI_RoundUpLen));

  int len = rstl::min_val(x14_size, 65536);
  aramFile->x84_ -= len;
  aramFile->x80_ = len;
  DVDFastOpen(x0_fileEntry, &aramFile->x20_dvdFile);
  DVDReadAsync(&aramFile->x20_dvdFile, reinterpret_cast< void* >(aramFile->x64_[0].get()), len, 0,
               DVDARAMXferCallback);
}

void CDvdFile::StallForARAMFile() {
  while (xc_.get() != nullptr) {
    OSYieldThread();
  }
}

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

CDvdRequest* CDvdFile::SyncSeekRead(void* dest, uint len, ESeekOrigin origin, int offset) {
  StallForARAMFile();
  CalcFileOffset(offset, origin);

  if (x8_) {
    uint roundedLen = (len + 31) & ~31;
    DCFlushRange(dest, roundedLen);
    CARAMManager::WaitForDMACompletion(
        CARAMManager::DMAToMRAM(x4_ + x10_offset, dest, roundedLen, CARAMManager::kDMAPrio_One));
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
  if (x8_) {
    int roundedLen = (len + 31) & ~31;
    DCFlushRange(dest, roundedLen);
    request = new CARAMDvdRequest(
        CARAMManager::DMAToMRAM(x4_ + x10_offset, dest, roundedLen, CARAMManager::kDMAPrio_One));
  } else {
    CRealDvdRequest* req = new CRealDvdRequest();
    int roundedLen = (len + 31) & ~31;
    DVDFileInfo& info = req->FileInfo();
    DVDFastOpen(x0_fileEntry, &info);
    DVDReadAsync(&info, dest, roundedLen, x10_offset, internalCallback);
    request = req;
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
