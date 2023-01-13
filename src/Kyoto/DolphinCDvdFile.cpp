#include "Kyoto/CDvdFile.hpp"
#include "dolphin/dvd.h"

#include "string.h"

const char* DecodeARAMFile(const char* filename) {
  if (!strncmp(filename, "aram:", 5)) {
    return filename + 5;
  }

  return filename;
}

void CDvdFile::DVDARAMXferCallback(s32 result, DVDFileInfo* info) {
  DVDClose(info);
  reinterpret_cast<CDvdFile*>(info->cb.userData)->HandleDVDInterrupt();
}
