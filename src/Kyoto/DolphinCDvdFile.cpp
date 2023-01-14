#include "Kyoto/CDvdFile.hpp"
#include "dolphin/dvd.h"
#include "dolphin/arq.h"
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
